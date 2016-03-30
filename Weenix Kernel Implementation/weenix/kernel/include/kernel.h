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

#include "types.h"

/* The linker script will initialize these symbols. Note
 * that the linker does not actually allocate any space
 * for these variables (thus the void type) it only sets
 * the address that the symbol points to. So for example
 * the address where the kernel ends is &kernel_end,
 * NOT kernel_end.
 */
extern void *kernel_start;
extern void *kernel_start_text;
extern void *kernel_start_data;
extern void *kernel_start_bss;
extern void *kernel_end;
extern void *kernel_end_text;
extern void *kernel_end_data;
extern void *kernel_end_bss;
extern void *kernel_start_init;
extern void *kernel_end_init;

#define inline __attribute__ ((always_inline,used))
#define unlikely(x) __builtin_expect((x), 0)
#define likely(x) __builtin_expect((x), 1)

#define offsetof(type, member) \
        ((uint32_t)((char*)&((type *)(0))->member - (char*)0))

#define NOT_YET_IMPLEMENTED(f) \
        (dbg_print("Not yet implemented: %s, file %s, line %d\n", \
                   f, __FILE__, __LINE__))

#ifndef MIN
#define MIN(a,b)  ((a) < (b) ? (a) : (b))
#endif
#ifndef MAX
#define MAX(a,b)  ((a) > (b) ? (a) : (b))
#endif

#define CONTAINER_OF(obj, type, member) \
        ((type *)((char *)(obj) - offsetof(type, member)))

/* This truly atrocious macro hack taken from the wikipedia article on the C
 * preprocessor, use to "quote" the value (or name) of another macro:
 * QUOTE_BY_NAME(NTERMS) -> "NTERMS"
 * QUOTE(NTERMS) -> "3"
 *
 * These macros even made more atrocious by searching for "stringizing operator
 * comma".  The variable length macros account for comma separated symbols.
 */
#define QUOTE_BY_NAME(...) #__VA_ARGS__
#define QUOTE_BY_VALUE(x) QUOTE_BY_NAME(x)
/* By default, we quote by value */
#define QUOTE(...) QUOTE_BY_NAME(__VA_ARGS__)

