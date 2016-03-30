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

#include "test/kshell/io.h"

#include "priv.h"

#ifndef __VFS__
#include "drivers/bytedev.h"
#endif

#ifdef __VFS__
#include "fs/vfs_syscall.h"
#endif

#include "util/debug.h"
#include "util/printf.h"
#include "util/string.h"

/*
 * If VFS is enabled, we can just use the syscalls.
 *
 * If VFS is not enabled, then we need to explicitly call the byte
 * device.
 */

#ifdef __VFS__
int kshell_write(kshell_t *ksh, const void *buf, size_t nbytes)
{
        int retval;

        if ((size_t)(retval = do_write(ksh->ksh_out_fd, buf, nbytes)) != nbytes) {
                /*
                 * In general, do_write does not necessarily have to
                 * write the entire buffer. However, with our
                 * implementation of Weenix and S5FS, this should
                 * ALWAYS work. If it doesn't, it means that something
                 * is wrong.
                 *
                 * Note that we can still receive an error, for
                 * example if we try to write to an invalid file
                 * descriptor. We only panic if some bytes, but not
                 * all of them, are written.
                 */
                if (retval >= 0) {
                        panic("kshell: Write unsuccessfull. Expected %u, got %d\n",
                              nbytes, retval);
                }
        }

        return retval;
}

int kshell_read(kshell_t *ksh, void *buf, size_t nbytes)
{
        return do_read(ksh->ksh_in_fd, buf, nbytes);
}

int kshell_write_all(kshell_t *ksh, void *buf, size_t nbytes)
{
        /* See comment in kshell_write */
        return kshell_write(ksh, buf, nbytes);
}
#else
int kshell_read(kshell_t *ksh, void *buf, size_t nbytes)
{
        return ksh->ksh_bd->cd_ops->read(ksh->ksh_bd, 0, buf, nbytes);
}

int kshell_write(kshell_t *ksh, const void *buf, size_t nbytes)
{
        return ksh->ksh_bd->cd_ops->write(ksh->ksh_bd, 0, buf, nbytes);
}
#endif

void kprint(kshell_t *ksh, const char *fmt, va_list args)
{
        char buf[KSH_BUF_SIZE];
        int count;

        vsnprintf(buf, sizeof(buf), fmt, args);
        count = strnlen(buf, sizeof(buf));
        kshell_write(ksh, buf, count);
}

void kprintf(kshell_t *ksh, const char *fmt, ...)
{
        va_list args;
        va_start(args, fmt);
        kprint(ksh, fmt, args);
        va_end(args);
}
