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

#include "globals.h"
#include "errno.h"

#include "main/interrupt.h"

#include "proc/sched.h"
#include "proc/kthread.h"

#include "util/init.h"
#include "util/debug.h"

static ktqueue_t kt_runq;

static __attribute__((unused)) void
sched_init(void)
{
        sched_queue_init(&kt_runq);
}
init_func(sched_init);



/*** PRIVATE KTQUEUE MANIPULATION FUNCTIONS ***/
/**
 * Enqueues a thread onto a queue.
 *
 * @param q the queue to enqueue the thread onto
 * @param thr the thread to enqueue onto the queue
 */
static void
ktqueue_enqueue(ktqueue_t *q, kthread_t *thr)
{
        KASSERT(!thr->kt_wchan);
        list_insert_head(&q->tq_list, &thr->kt_qlink);
        thr->kt_wchan = q;
        q->tq_size++;
}

/**
 * Dequeues a thread from the queue.
 *
 * @param q the queue to dequeue a thread from
 * @return the thread dequeued from the queue
 */
static kthread_t *
ktqueue_dequeue(ktqueue_t *q)
{
        kthread_t *thr;
        list_link_t *link;

        if (list_empty(&q->tq_list))
                return NULL;

        link = q->tq_list.l_prev;
        thr = list_item(link, kthread_t, kt_qlink);
        list_remove(link);
        thr->kt_wchan = NULL;

        q->tq_size--;

        return thr;
}

/**
 * Removes a given thread from a queue.
 *
 * @param q the queue to remove the thread from
 * @param thr the thread to remove from the queue
 */
static void
ktqueue_remove(ktqueue_t *q, kthread_t *thr)
{
        KASSERT(thr->kt_qlink.l_next && thr->kt_qlink.l_prev);
        list_remove(&thr->kt_qlink);
        thr->kt_wchan = NULL;
        q->tq_size--;
}

/*** PUBLIC KTQUEUE MANIPULATION FUNCTIONS ***/
void
sched_queue_init(ktqueue_t *q)
{
        list_init(&q->tq_list);
        q->tq_size = 0;
}

int
sched_queue_empty(ktqueue_t *q)
{
        return list_empty(&q->tq_list);
}

/*
 * Updates the thread's state and enqueues it on the given
 * queue. Returns when the thread has been woken up with wakeup_on or
 * broadcast_on.
 *
 * Use the private queue manipulation functions above.
 */
void
sched_sleep_on(ktqueue_t *q)
{
       dbg(DBG_PRINT, "(GRADING1C)\n");
       curthr->kt_state = KT_SLEEP;
       ktqueue_enqueue(q,curthr);
       sched_switch();
}


/*
 * Similar to sleep on, but the sleep can be cancelled.
 *
 * Don't forget to check the kt_cancelled flag at the correct times.
 *
 * Use the private queue manipulation functions above.
 */
int
sched_cancellable_sleep_on(ktqueue_t *q)
{
         if(curthr->kt_cancelled == 1)
        {
            dbg(DBG_PRINT, "(GRADING1C)\n");
            return -EINTR;
        }
        dbg(DBG_PRINT, "(GRADING1C)\n");
        curthr->kt_state = KT_SLEEP_CANCELLABLE;
        ktqueue_enqueue(q,curthr);
        sched_switch();
       	if(curthr->kt_cancelled == 1)
        {
            dbg(DBG_PRINT, "(GRADING1C)\n");
            return -EINTR;
        }
        return 0;
}

kthread_t *
sched_wakeup_on(ktqueue_t *q)
{
        kthread_t *kk=ktqueue_dequeue(q);
        if(kk!=NULL)
        {
            KASSERT((kk->kt_state == KT_SLEEP) || (kk->kt_state == KT_SLEEP_CANCELLABLE));
            dbg(DBG_PRINT, "(GRADING1A 4.a): the thread can be waken up only if the current state of the thread is KT_SLEEP or KT_SLEEP_CANCELLABLE\n");
            sched_make_runnable(kk);
        }
        return kk;
}

void
sched_broadcast_on(ktqueue_t *q)
{
         while(q->tq_size)
        {
                dbg(DBG_PRINT, "(GRADING1C)\n");
                sched_wakeup_on(q);
        }
}

/*
 * If the thread's sleep is cancellable, we set the kt_cancelled
 * flag and remove it from the queue. Otherwise, we just set the
 * kt_cancelled flag and leave the thread on the queue.
 *
 * Remember, unless the thread is in the KT_NO_STATE or KT_EXITED
 * state, it should be on some queue. Otherwise, it will never be run
 * again.
 */
void
sched_cancel(struct kthread *kthr)
{
        kthr->kt_cancelled=1;
        if(kthr->kt_state == KT_SLEEP_CANCELLABLE)
        {
            if(kthr->kt_wchan!=NULL)
                {
                        dbg(DBG_PRINT, "(GRADING1C)\n");
                        ktqueue_remove(kthr->kt_wchan,kthr);
                }
                sched_make_runnable(kthr);
                dbg(DBG_PRINT, "(GRADING1C)\n");
        }
}

/*
 * In this function, you will be modifying the run queue, which can
 * also be modified from an interrupt context. In order for thread
 * contexts and interrupt contexts to play nicely, you need to mask
 * all interrupts before reading or modifying the run queue and
 * re-enable interrupts when you are done. This is analagous to
 * locking a mutex before modifying a data structure shared between
 * threads. Masking interrupts is accomplished by setting the IPL to
 * high.
 *
 * Once you have masked interrupts, you need to remove a thread from
 * the run queue and switch into its context from the currently
 * executing context.
 *
 * If there are no threads on the run queue (assuming you do not have
 * any bugs), then all kernel threads are waiting for an interrupt
 * (for example, when reading from a block device, a kernel thread
 * will wait while the block device seeks). You will need to re-enable
 * interrupts and wait for one to occur in the hopes that a thread
 * gets put on the run queue from the interrupt context.
 *
 * The proper way to do this is with the intr_wait call. See
 * interrupt.h for more details on intr_wait.
 *
 * Note: When waiting for an interrupt, don't forget to modify the
 * IPL. If the IPL of the currently executing thread masks the
 * interrupt you are waiting for, the interrupt will never happen, and
 * your run queue will remain empty. This is very subtle, but
 * _EXTREMELY_ important.
 *
 * Note: Don't forget to set curproc and curthr. When sched_switch
 * returns, a different thread should be executing than the thread
 * which was executing when sched_switch was called.
 *
 * Note: The IPL is process specific.
 */
void
sched_switch(void)
{
        /* if(kt_runq.tq_size == 0)
        // {
        //         intr_wait();
        // }*/
        dbg(DBG_PRINT, "(GRADING1C)\n");
        kthread_t *OldThread;
        uint8_t oldIPL;

        oldIPL = apic_getipl();
        intr_setipl(IPL_HIGH);
        while(kt_runq.tq_size == 0)
        {
                intr_disable();
                intr_setipl(0);

                intr_wait();
                intr_setipl(IPL_HIGH);
        }
        OldThread = curthr;
        curthr = ktqueue_dequeue(&kt_runq);
        curproc = curthr->kt_proc;
        /*ktqueue_enqueue(&kt_runq,curthr);*/
        context_switch(&OldThread->kt_ctx, &curthr->kt_ctx);
        intr_setipl(oldIPL);
}

/*
 * Since we are modifying the run queue, we _MUST_ set the IPL to high
 * so that no interrupts happen at an inopportune moment.

 * Remember to restore the original IPL before you return from this
 * function. Otherwise, we will not get any interrupts after returning
 * from this function.
 *
 * Using intr_disable/intr_enable would be equally as effective as
 * modifying the IPL in this case. However, in some cases, we may want
 * more fine grained control, making modifying the IPL more
 * suitable. We modify the IPL here for consistency.
 */
void
sched_make_runnable(kthread_t *thr)
{
        uint8_t oldIPL= intr_getipl();
        intr_setipl(IPL_HIGH);
        KASSERT(&kt_runq != thr->kt_wchan);
        dbg(DBG_PRINT, "(GRADING1A 4.b): thread can be made runnable only if it is not in the runq\n");
        thr->kt_state = KT_RUN;


        ktqueue_enqueue(&kt_runq,thr);
        intr_setipl(oldIPL);
}
