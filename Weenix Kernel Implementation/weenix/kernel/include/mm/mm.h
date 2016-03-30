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

#define MM_POISON             1
#define MM_POISON_ALLOC       0xBB
#define MM_POISON_FREE        0xDD

#define USER_MEM_LOW          0x00400000 /* inclusive */
#define USER_MEM_HIGH         0xc0000000 /* exclusive */

#define PTR_SIZE (sizeof(void *))
#define PTR_MASK (PTR_SIZE - 1)

/* Performs all initialization necessary for the
 * page allocation system. This should be called
 * only once at boot time before any other functions
 * in this header are called. */
void page_init();

/* This is the first step of initializing the page table system. It
 * replaces the temporary page table set up by the boot loader with
 * the page directory and first 2 page tables of the permenant page
 * table mappings for the kernel. One page table identity maps the
 * first 1mb of physical memory. The other maps the 4mb of physical
 * memory starting with the kernel text at 0xc0000000. */
void pt_init();

/* Called from the bootstrap context in order to set up the template
 * page directory used by all future threads. This cannot be set up
 * prior to this because the stack is mapped in to the first 4mb
 * of memory. Page faults are not handled until this function is
 * called. */
void pt_template_init();

/* Initializes the slab allocator subsystem. This should be done
 * only after the page subsystem has been initialized. Slab allocators
 * and kmalloc will not work until this funciton has been called. */
void slab_init();
