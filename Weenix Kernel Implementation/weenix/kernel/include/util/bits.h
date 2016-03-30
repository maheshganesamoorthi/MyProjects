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
#include "kernel.h"

#define BIT(n) (1<<(n))

static inline void
bit_flip(void *addr, uintptr_t bit)
{
        uint32_t *map = (uint32_t *)addr;
        map += (bit >> 5);
        *map ^= (uint32_t)(1 << (bit & 0x1f));
}

static inline int
bit_check(const void *addr, uintptr_t bit)
{
        const uint32_t *map = (const uint32_t *)addr;
        map += (bit >> 5);
        return (*map & (1 << (bit & 0x1f)));
}

