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

#pragma once

#include "util/list.h"

struct kthread;
typedef struct ktqueue {
        list_t          tq_list;
        int             tq_size;
} ktqueue_t;

/**
 * Switches execution between kernel threads.
 */
void sched_switch(void);

/**
 * Marks the given thread as runnable, and adds it to the run queue.
 *
 * @param thr the thread to make runnable
 */
void sched_make_runnable(struct kthread *kt);

/**
 * Initializes a queue.
 *
 * @param q the queue
 */
void sched_queue_init(ktqueue_t *q);

/**
 * Returns true if the queue is empty.
 *
 * @param q the queue
 * @return true if the queue is empty
 */
int sched_queue_empty(ktqueue_t *q);

/**
 * Causes the current thread to enter into an uncancellable sleep on
 * the given queue.
 *
 * @param q the queue to sleep on
 */
void sched_sleep_on(ktqueue_t *q);

/**
 * Causes the current thread to enter into a cancellable sleep on the
 * given queue.
 *
 * @param q the queue to sleep on
 * @return -EINTR if the thread was cancelled and 0 otherwise
 */
int sched_cancellable_sleep_on(ktqueue_t *q);

/**
 * Wakes a single thread from sleep if there are any waiting on the
 * queue.
 *
 * @param q the q to wakeup a thread from
 * @return NULL if q is empty and a thread waiting on the q otherwise
 */
struct kthread *sched_wakeup_on(ktqueue_t *q);

/**
 * Wake up all threads running on the queue.
 *
 * @param q the queue to wake up threads from
 */
void sched_broadcast_on(ktqueue_t *q);

/**
 * Cancel the given thread from the queue it sleeps on.
 *
 * @param the thread to cancel sleep from
 */
void sched_cancel(struct kthread *kthr);
