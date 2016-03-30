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

/* Define SLAB_REDZONE to add top and bottom redzones to every object.
 * Use kmem_check_redzones() liberally throughout your code to test
 * for memory pissing. */
#define SLAB_REDZONE            0xdeadbeef

/* Define SLAB_CHECK_FREE to add extra book keeping to make sure there
 * are no double frees. */
#define SLAB_CHECK_FREE

/*
 * The slab allocator. A "cache" is a store of objects; you create one by
 * specifying a constructor, destructor, and the size of an object. The
 * "alloc" function allocates one object, and the "free" function returns
 * it to the free list *without calling the destructor*. This lets you save
 * on destruction/construction calls; the idea is that every free object in
 * the cache is in a known state.
 */
typedef struct slab_allocator slab_allocator_t;

slab_allocator_t *slab_allocator_create(const char *name, size_t size);
int slab_allocators_reclaim(int target);

void *slab_obj_alloc(slab_allocator_t *allocator);
void slab_obj_free(slab_allocator_t *allocator, void *obj);
