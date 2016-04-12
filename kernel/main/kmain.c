/******************************************************************************/
/* Important Spring 2016 CSCI 402 usage information:                          */
/*                                                                            */
/* This fils is part of CSCI 402 kernel programming assignments at USC.       */
/*         53616c7465645f5f2e8d450c0c5851acd538befe33744efca0f1c4f9fb5f       */
/*         3c8feabc561a99e53d4d21951738da923cd1c7bbd11b30a1afb11172f80b       */
/*         984b1acfbbf8fae6ea57e0583d2610a618379293cb1de8e1e9d07e6287e8       */
/*         de7e82f3d48866aa2009b599e92c852f7dbf7a6e573f1c7228ca34b9f368       */
/*         faaef0c0fcf294cb                                                   */
/* Please understand that you are NOT permitted to distribute or publically   */
/*         display a copy of this file (or ANY PART of it) for any reason.    */
/* If anyone (including your prospective employer) asks you to post the code, */
/*         you must inform them that you do NOT have permissions to do so.    */
/* You are also NOT permitted to remove or alter this comment block.          */
/* If this comment block is removed or altered in a submitted file, 20 points */
/*         will be deducted.                                                  */
/******************************************************************************/

#include "types.h"
#include "globals.h"
#include "kernel.h"

#include "util/gdb.h"
#include "util/init.h"
#include "util/debug.h"
#include "util/string.h"
#include "util/printf.h"

#include "mm/mm.h"
#include "mm/page.h"
#include "mm/pagetable.h"
#include "mm/pframe.h"

#include "vm/vmmap.h"
#include "vm/shadowd.h"
#include "vm/shadow.h"
#include "vm/anon.h"

#include "main/acpi.h"
#include "main/apic.h"
#include "main/interrupt.h"
#include "main/gdt.h"

#include "proc/sched.h"
#include "proc/proc.h"
#include "proc/kthread.h"

#include "drivers/dev.h"
#include "drivers/blockdev.h"
#include "drivers/disk/ata.h"
#include "drivers/tty/virtterm.h"
#include "drivers/pci.h"

#include "api/exec.h"
#include "api/syscall.h"

#include "fs/vfs.h"
#include "fs/vnode.h"
#include "fs/vfs_syscall.h"
#include "fs/fcntl.h"
#include "fs/stat.h"

#include "test/kshell/kshell.h"
#include "errno.h"

GDB_DEFINE_HOOK(boot)
GDB_DEFINE_HOOK(initialized)
GDB_DEFINE_HOOK(shutdown)

static void       hard_shutdown(void);
static void      *bootstrap(int arg1, void *arg2);
static void      *idleproc_run(int arg1, void *arg2);
static kthread_t *initproc_create(void);
static void      *initproc_run(int arg1, void *arg2);

extern void *sunghan_test(int, void*);
extern void *sunghan_deadlock_test(int, void*);
extern void *faber_thread_test(int, void*);
extern void *vfstest_main(int, void*);
extern int faber_fs_thread_test(kshell_t *ksh, int argc, char **argv);
extern int faber_directory_test(kshell_t *ksh, int argc, char **argv);

static context_t bootstrap_context;
extern int gdb_wait;

/**
 * This is the first real C function ever called. It performs a lot of
 * hardware-specific initialization, then creates a pseudo-context to
 * execute the bootstrap function in.
 */
void
kmain()
{
        GDB_CALL_HOOK(boot);

        dbg_init();
        dbgq(DBG_CORE, "Kernel binary:\n");
        dbgq(DBG_CORE, "  text: 0x%p-0x%p\n", &kernel_start_text, &kernel_end_text);
        dbgq(DBG_CORE, "  data: 0x%p-0x%p\n", &kernel_start_data, &kernel_end_data);
        dbgq(DBG_CORE, "  bss:  0x%p-0x%p\n", &kernel_start_bss, &kernel_end_bss);

        page_init();

        pt_init();
        slab_init();
        pframe_init();

        acpi_init();
        apic_init();
        pci_init();
        intr_init();

        gdt_init();

        /* initialize slab allocators */
#ifdef __VM__
        anon_init();
        shadow_init();
#endif
        vmmap_init();
        proc_init();
        kthread_init();

#ifdef __DRIVERS__
        bytedev_init();
        blockdev_init();
#endif

        void *bstack = page_alloc();
        pagedir_t *bpdir = pt_get();
        KASSERT(NULL != bstack && "Ran out of memory while booting.");
        /* This little loop gives gdb a place to synch up with weenix.  In the
         * past the weenix command started qemu was started with -S which
         * allowed gdb to connect and start before the boot loader ran, but
         * since then a bug has appeared where breakpoints fail if gdb connects
         * before the boot loader runs.  See
         *
         * https://bugs.launchpad.net/qemu/+bug/526653
         *
         * This loop (along with an additional command in init.gdb setting
         * gdb_wait to 0) sticks weenix at a known place so gdb can join a
         * running weenix, set gdb_wait to zero  and catch the breakpoint in
         * bootstrap below.  See Config.mk for how to set GDBWAIT correctly.
         *
         * DANGER: if GDBWAIT != 0, and gdb is not running, this loop will never
         * exit and weenix will not run.  Make SURE the GDBWAIT is set the way
         * you expect.
         */
        while (gdb_wait) ;
        context_setup(&bootstrap_context, bootstrap, 0, NULL, bstack, PAGE_SIZE, bpdir);
        context_make_active(&bootstrap_context);

        panic("\nReturned to kmain()!!!\n");
}

/**
 * Clears all interrupts and halts, meaning that we will never run
 * again.
 */
static void
hard_shutdown()
{
#ifdef __DRIVERS__
        vt_print_shutdown();
#endif
        __asm__ volatile("cli; hlt");
}

/**
 * This function is called from kmain, however it is not running in a
 * thread context yet. It should create the idle process which will
 * start executing idleproc_run() in a real thread context.  To start
 * executing in the new process's context call context_make_active(),
 * passing in the appropriate context. This function should _NOT_
 * return.
 *
 * Note: Don't forget to set curproc and curthr appropriately.
 *
 * @param arg1 the first argument (unused)
 * @param arg2 the second argument (unused)
 */
static void *
bootstrap(int arg1, void *arg2)
{
        /* If the next line is removed/altered in your submission, 20 points will be deducted. */
        dbgq(DBG_CORE, "SIGNATURE: 53616c7465645f5f919f8a08e8a4ba50187807637fbb475b4b0f8f62eafafcc1d59d9d9f48cfd14852ff75efa3c1e24a\n");
        /* necessary to finalize page table information */
        pt_template_init();

		proc_t *idle_process = proc_create("idle");
                curproc = idle_process;

                KASSERT(NULL != curproc);
                dbg(DBG_PRINT, "(GRADING1A 1.a): Idle process has been created successfully\n");


                KASSERT(PID_IDLE == curproc->p_pid);
                dbg(DBG_PRINT, "(GRADING1A 1.a): PID of the created process is PID_IDLE)\n");


                kthread_t *idle_procthread = kthread_create(idle_process,idleproc_run,0,NULL);
                curthr = idle_procthread;
                KASSERT(curthr != NULL);
                dbg(DBG_PRINT, "(GRADING1A 1.a): Thread for the idle process has been created successfully)\n");

                context_make_active(&curthr->kt_ctx);

        /*NOT_YET_IMPLEMENTED("PROCS: bootstrap");*/

        panic("weenix returned to bootstrap()!!! BAD!!!\n");
        return NULL;
}

/**
 * Once we're inside of idleproc_run(), we are executing in the context of the
 * first process-- a real context, so we can finally begin running
 * meaningful code.
 *
 * This is the body of process 0. It should initialize all that we didn't
 * already initialize in kmain(), launch the init process (initproc_run),
 * wait for the init process to exit, then halt the machine.
 *
 * @param arg1 the first argument (unused)
 * @param arg2 the second argument (unused)
 */
static void *
idleproc_run(int arg1, void *arg2)
{
        int status;
        pid_t child;

        /* create init proc */
        kthread_t *initthr = initproc_create();
        init_call_all();
        GDB_CALL_HOOK(initialized);

        /* Create other kernel threads (in order) */

#ifdef __VFS__
        /* Once you have VFS remember to set the current working directory
         * of the idle and init processes */
        /*NOT_YET_IMPLEMENTED("VFS: idleproc_run");*/

        curproc->p_cwd=vfs_root_vn;
        vref(vfs_root_vn);
        initthr->kt_proc->p_cwd=vfs_root_vn;
        vref( vfs_root_vn);
        /* Here you need to make the null, zero, and tty devices using mknod */
        /* You can't do this until you have VFS, check the include/drivers/dev.h
         * file for macros with the device ID's you will need to pass to mknod */
        /*NOT_YET_IMPLEMENTED("VFS: idleproc_run");*/
        
        do_mkdir("/dev");
        do_mknod("/dev/null",S_IFCHR,MEM_NULL_DEVID);
 
        do_mknod("/dev/zero",S_IFCHR,MEM_ZERO_DEVID);
     
        do_mknod("/dev/tty0",S_IFCHR,(MKDEVID(2, 0)));
        
       /* do_mknod("/dev/tty1",S_IFCHR,(MKDEVID(2, 1)));

        do_mknod("/dev/tty2",S_IFCHR,(MKDEVID(2, 2)));*/

#endif

        /* Finally, enable interrupts (we want to make sure interrupts
         * are enabled AFTER all drivers are initialized) */
        intr_enable();

        /* Run initproc */
        sched_make_runnable(initthr);
        /* Now wait for it */
        child = do_waitpid(-1, 0, &status);
        KASSERT(PID_INIT == child);

#ifdef __MTP__
        kthread_reapd_shutdown();
#endif


#ifdef __SHADOWD__
        /* wait for shadowd to shutdown */
        shadowd_shutdown();
#endif

#ifdef __VFS__
        /* Shutdown the vfs: */
        dbg_print("weenix: vfs shutdown...\n");
        vput(curproc->p_cwd);
        if (vfs_shutdown())
                panic("vfs shutdown FAILED!!\n");

#endif

        /* Shutdown the pframe system */
#ifdef __S5FS__
        pframe_shutdown();
#endif

        dbg_print("\nweenix: halted cleanly!\n");
        GDB_CALL_HOOK(shutdown);
        hard_shutdown();
        return NULL;
}

/**
 * This function, called by the idle process (within 'idleproc_run'), creates the
 * process commonly refered to as the "init" process, which should have PID 1.
 *
 * The init process should contain a thread which begins execution in
 * initproc_run().
 *
 * @return a pointer to a newly created thread which will execute
 * initproc_run when it begins executing
 */
static kthread_t *
initproc_create(void)
{
            proc_t *init_proc_create = proc_create("init");
            KASSERT(init_proc_create != NULL);
            dbg(DBG_PRINT, "(GRADING1A 1.b): Init process has been created successfully\n");

            KASSERT(PID_INIT == init_proc_create->p_pid);
            dbg(DBG_PRINT, "(GRADING1A 1.b): PID of the created process is PID_INIT)\n");

            kthread_t *init_kthread = kthread_create(init_proc_create,initproc_run,0,NULL);
            KASSERT(init_kthread !=  NULL);
            dbg(DBG_PRINT, "(GRADING1A 1.b): Thread for the init process has been created successfully)\n");
            return init_kthread;
}

	#ifdef __DRIVERS__

                int my_sunghan_test(kshell_t *kshell, int argc, char **argv)
                {
                    KASSERT(kshell != NULL);
                    int status_sunghan;
                    proc_t *sunghan1 = proc_create("sunghan_test");
                    kthread_t *sunghanthread = kthread_create(sunghan1,sunghan_test,0,NULL);
                    sched_make_runnable(sunghanthread);
                    while(!list_empty(&curproc->p_children))
                    {
                        do_waitpid(-1,0,&status_sunghan);
                    }
                    dbg(DBG_PRINT, "(GRADING#X Y.Z): my_sunghan_test() is invoked, argc = %d, argv = 0x%08x\n",
                            argc, (unsigned int)argv);
                    /*
                     * Shouldn't call a test function directly.
                     * It's best to invoke it in a separate kernel process.
                     */
                    return 0;
                }



        int my_sunghan_deadlock_test(kshell_t *kshell, int argc, char **argv)
                {
                    KASSERT(kshell != NULL);
                    int status_sunghandeadlock;

                    proc_t *sunghan2 = proc_create("sunghan_deadlock_test");
                    kthread_t *sunghandeadlockthread = kthread_create(sunghan2,sunghan_deadlock_test,0,NULL);
                    sched_make_runnable(sunghandeadlockthread);
                     while(!list_empty(&curproc->p_children))
                     {
                     do_waitpid(-1,0,&status_sunghandeadlock);
                   }
                        dbg(DBG_PRINT, "(GRADING#X Y.Z): my_sunghan_deadlock_test() is invoked, argc = %d, argv = 0x%08x\n",
                            argc, (unsigned int)argv);
                    /*
                     * Shouldn't call a test function directly.
                     * It's best to invoke it in a separate kernel process.
                     */
                    return 0;
                }

        int my_faber_thread_test(kshell_t *kshell, int argc, char **argv)
                {
                    KASSERT(kshell != NULL);
                    int status_faber;

                    proc_t *sunghan3 = proc_create("faber_thread_test");
                    kthread_t *faberthread = kthread_create(sunghan3,faber_thread_test,0,NULL);
                    sched_make_runnable(faberthread);
                     while(!list_empty(&curproc->p_children))
                     {
                     do_waitpid(-1,0,&status_faber);
                 }
                    dbg(DBG_PRINT, "(GRADING#X Y.Z): my_faber_thread_test() is invoked, argc = %d, argv = 0x%08x\n",
                            argc, (unsigned int)argv);
                    /*
                     * Shouldn't call a test function directly.
                     * It's best to invoke it in a separate kernel process.
                     */
                    return 0;
                }

       /* void *callvthreadmain(int argc, void *argv){
            vfstest_main(1,NULL);
            return 0;
        }*/
        
        #endif /* __DRIVERS__ */

        #ifdef __VFS__

        int my_vfs_test(kshell_t *kshell, int argc, char **argv)
        {
                    KASSERT(kshell != NULL);
                    proc_t *vfsprocess;
                    int vfs_test_status;
                    kthread_t *vfsthread;

                    vfsprocess = proc_create("vfstest");
                    vfsthread = kthread_create(vfsprocess,vfstest_main,1, NULL);
                    sched_make_runnable(vfsthread);
                    /*while(!list_empty(&curproc->p_children)){
                    do_waitpid(-1,0,&vfs_test_status);
                    }*/
                    do_waitpid(vfsprocess->p_pid,0,NULL);
                    return 0;
        }

        int my_faber_fs_thread_test(kshell_t *kshell, int argc, char **argv)
        {
                faber_fs_thread_test(kshell,argc,argv);
                    return 0;
        }

        int my_faber_directory_test(kshell_t *kshell, int argc, char **argv)
        {
                    faber_directory_test(kshell,argc,argv);
                    return 0; 
        }
        #endif

/**
 * The init thread's function changes depending on how far along your Weenix is
 * developed. Before VM/FI, you'll probably just want to have this run whatever
 * tests you've written (possibly in a new process). After VM/FI, you'll just
 * exec "/sbin/init".
 *
 * Both arguments are unused.
 *
 * @param arg1 the first argument (unused)
 * @param arg2 the second argument (unused)
 */
static void *
initproc_run(int arg1, void *arg2)
{
                
               
                /*proc_t *faberPr = proc_create("FaberTest");
                kthread_t *faberThr = kthread_create(faberPr,vfstest_main,1,NULL);
                sched_make_runnable(faberThr);
                int i = NULL;
                do_waitpid(-1,0,&i);*/
            
                
                #ifdef __DRIVERS__

                kshell_add_command("sunghan", my_sunghan_test, "Run sunghan_test().");
                kshell_add_command("deadlock", my_sunghan_deadlock_test, "Run sunghan_deadlock_test().");
                kshell_add_command("faber", my_faber_thread_test, "Run faber_thread_test().");
               #ifdef __VFS__

                kshell_add_command("vfstest", my_vfs_test, "Run vfstest_main().");
                kshell_add_command("thrtest", faber_fs_thread_test, "Run faber_fs_thread_test().");
                kshell_add_command("dirtest", faber_directory_test, "Run faber_directory_test().");

                #endif
                kshell_t *kshell = kshell_create(0);
                if (NULL == kshell) panic("init: Couldn't create kernel shell\n");

                while (kshell_execute_next(kshell));
                kshell_destroy(kshell);

                #endif /* __DRIVERS__ */
                
                int status_test;
                while(!list_empty(&curproc->p_children))
                {
                    do_waitpid(-1,0,&status_test);
                }

                return NULL;
}

