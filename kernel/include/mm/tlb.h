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

#include "kernel.h"
#include "types.h"

#include "mm/page.h"

/* Invalidates any entries from the TLB which contain
 * mappings for the given virtual address. */
static inline void tlb_flush(uintptr_t vaddr)
{
        __asm__ volatile("invlpg (%0)" :: "r"(vaddr));
}

/* Invalidates any entries for the count virtual addresses
 * starting at vaddr from the TLB. If this range is very
 * large it may be more efficient to call tlb_flush_all
 * to invalidate the entire TLB. */
static inline void tlb_flush_range(uintptr_t vaddr, uint32_t count)
{
        uint32_t i;
        for (i = 0; i < count; ++i, vaddr += PAGE_SIZE) {
                tlb_flush(vaddr);
        }
}

/* Invalidates the entire TLB. */
static inline void tlb_flush_all()
{
        uintptr_t pdir;
        __asm__ volatile("movl %%cr3, %0" : "=r"(pdir));
        __asm__ volatile("movl %0, %%cr3" :: "r"(pdir) : "memory");
}
