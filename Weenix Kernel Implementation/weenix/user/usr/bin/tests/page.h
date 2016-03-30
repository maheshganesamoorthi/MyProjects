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

/* This header file contains the functions for allocating
 * and freeing page-aligned chunks of data which are a
 * multiple of a page in size. These are the lowest level
 * memory allocation functions. In general code should
 * use the slab allocator functions in mm/alloc.h unless
 * they require page-aligned buffers. */

#define PAGE_SHIFT         12
#define PAGE_SIZE          ((uint32_t)(1UL<<PAGE_SHIFT))
#define PAGE_MASK          (0xffffffff<<PAGE_SHIFT)

#define PAGE_ALIGN_DOWN(x) ((void*)(((uintptr_t)(x))&PAGE_MASK))
#define PAGE_ALIGN_UP(x)   ((void*)(((((uintptr_t)(x))-1)&PAGE_MASK)+PAGE_SIZE))
#define PAGE_OFFSET(x)     ((uintptr_t)(x)&~PAGE_MASK)

#define PN_TO_ADDR(x) ((void *)(((uint32_t)(x)) << PAGE_SHIFT))
#define ADDR_TO_PN(x) (((uint32_t)(x)) >> PAGE_SHIFT)

#define PAGE_ALIGNED(x) (0 == ((uintptr_t)(x)) % PAGE_SIZE)

#define PAGE_NSIZES  8

#define PAGE_SAME(addr1, addr2) (PAGE_ALIGN_DOWN(addr1) == PAGE_ALIGN_DOWN(addr2))

/* Adds the virtual pages [start,end) to those that
 * may be allocated by the page allocator, this should
 * only be called once for any given page (no overlaps). */
void page_add_range(uintptr_t start, uintptr_t end);

/* These functions allocate and free one page-aligned,
 * page-sized block of memory. Values passed to
 * page_free MUST have been returned by page_alloc
 * at some previous point. There should be only one
 * call to page_free for each value returned by
 * page_alloc. If the system is out of memory page_alloc
 * will return NULL. */
void *page_alloc(void);
void  page_free(void *addr);

/* These functions allocate and free a page-aligned
 * block of memory which are npages pages in length.
 * A call to page_alloc_n will allocate a block, to free
 * that block a call should be made to page_free_n with
 * npages set to the same as it was when the block was
 * allocated */
void *page_alloc_n(uint32_t npages);
void  page_free_n(void *start, uint32_t npages);

/* Returns the number of free pages remaining in the
 * system. Note that calls to page_alloc_n(npages) may
 * fail even if page_free_count() >= npages. */
uint32_t page_free_count();
