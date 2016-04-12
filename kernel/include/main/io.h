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

static inline void outb(uint16_t port, uint8_t val)
{
        __asm__ volatile("outb %0,%1" :: "a"(val), "Nd"(port));
}

static inline uint8_t inb(uint16_t port)
{
        uint8_t ret;
        __asm__ volatile("inb %1,%0" : "=a"(ret) : "Nd"(port));
        return ret;
}

static inline void outw(uint16_t port, uint16_t val)
{
        __asm__ volatile("outw %0,%1" :: "a"(val), "Nd"(port));
}

static inline uint16_t inw(uint16_t port)
{
        uint16_t ret;
        __asm__ volatile("inw %1,%0" : "=a"(ret) : "Nd"(port));
        return ret;
}

static inline void outl(uint16_t port, uint32_t val)
{
        __asm__ volatile("outl %0,%1" :: "a"(val), "Nd"(port));
}

static inline uint32_t inl(uint16_t port)
{
        uint32_t ret;
        __asm__ volatile("inl %1,%0" : "=a"(ret) : "Nd"(port));
        return ret;
}

