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

#include "util/debug.h"

#include "proc/kthread.h"
#include "proc/kmutex.h"

/*
 * IMPORTANT: Mutexes can _NEVER_ be locked or unlocked from an
 * interrupt context. Mutexes are _ONLY_ lock or unlocked from a
 * thread context.
 */

void
kmutex_init(kmutex_t *mtx)
{
        dbg(DBG_PRINT, "(GRADING1C)\n");
	sched_queue_init(&(mtx->km_waitq));
        mtx-> km_holder = NULL;
}

/*
 * This should block the current thread (by sleeping on the mutex's
 * wait queue) if the mutex is already taken.
 *
 * No thread should ever try to lock a mutex it already has locked.
 */
void
kmutex_lock(kmutex_t *mtx)
{
        KASSERT(curthr && (curthr != mtx->km_holder));
	dbg(DBG_PRINT, "(GRADING1A 5.a): curthr is not null and curthr is not holding the mutex\n");
	if(mtx->km_holder ==NULL)
	{
		dbg(DBG_PRINT, "(GRADING1C)\n");
		mtx->km_holder = curthr;
	}
	if(mtx->km_holder != curthr)
	{
		/*ktqueue_enqueue(mtx->km_waitq, curthr); */
		dbg(DBG_PRINT, "(GRADING1C)\n");
		sched_sleep_on(&mtx->km_waitq);
	}
}

/*
 * This should do the same as kmutex_lock, but use a cancellable sleep
 * instead.
 */
int
kmutex_lock_cancellable(kmutex_t *mtx)
{
       KASSERT(curthr && (curthr != mtx->km_holder));
	dbg(DBG_PRINT, "(GRADING1A 5.b): curthr is not null and curthr is not holding the mutex\n");
	dbg(DBG_PRINT, "(GRADING1A 5.b): curthr is not null and curthr is not holding the mutex\n");
	if(mtx->km_holder ==NULL)
	{
		dbg(DBG_PRINT, "(GRADING1C)\n");
		mtx->km_holder = curthr;
		return 0;
	}
	if(mtx->km_holder != curthr)
	{
		/*ktqueue_enqueue(mtx->km_waitq, curthr); */
		dbg(DBG_PRINT, "(GRADING1C)\n");
		return sched_cancellable_sleep_on(&(mtx->km_waitq));
	}
     	return 0;
}

/*
 * If there are any threads waiting to take a lock on the mutex, one
 * should be woken up and given the lock.
 *
 * Note: This should _NOT_ be a blocking operation!
 *
 * Note: Don't forget to add the new owner of the mutex back to the
 * run queue.
 *
 * Note: Make sure that the thread on the head of the mutex's wait
 * queue becomes the new owner of the mutex.
 *
 * @param mtx the mutex to unlock
 */
void
kmutex_unlock(kmutex_t *mtx)
{
        /* Wake up and create a lock */
	if(mtx->km_waitq.tq_size == 0)
	{
		dbg(DBG_PRINT, "(GRADING1C)\n");
		mtx->km_holder = NULL;
	}
	else
	{
		KASSERT(curthr && (curthr == mtx->km_holder));
		dbg(DBG_PRINT, "(GRADING1A 5.c): curthr is not null and curthr is holding the mutex\n");
		mtx->km_holder = sched_wakeup_on(&mtx->km_waitq);
		KASSERT(curthr != mtx->km_holder);
		dbg(DBG_PRINT, "(GRADING1A 5.c): curthr is not holding the mutex\n");
		/*ktqueue_enqueue( runq,mtx->km_holder); */
	}
}
