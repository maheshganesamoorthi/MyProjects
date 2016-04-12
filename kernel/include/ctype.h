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

#ifdef __KERNEL__
#include "kernel.h"
#include "types.h"
#else
#include "stddef.h"
#include "sys/types.h"
#endif

/* the original implementation for the following functions
 * was ported from the old Weenix on Xen architecture which
 * used the mini-os functions */
/*
 * NOTE! This ctype does not handle EOF like the standard C
 * library is required to.
 */

#define _U      0x01    /* upper */
#define _L      0x02    /* lower */
#define _D      0x04    /* digit */
#define _C      0x08    /* cntrl */
#define _P      0x10    /* punct */
#define _S      0x20    /* white space (space/lf/tab) */
#define _X      0x40    /* hex digit */
#define _SP     0x80    /* hard space (0x20) */


static unsigned char _ctype[] = {
        _C, _C, _C, _C, _C, _C, _C, _C,                 /* 0-7 */
        _C, _C | _S, _C | _S, _C | _S, _C | _S, _C | _S, _C, _C, /* 8-15 */
        _C, _C, _C, _C, _C, _C, _C, _C,                 /* 16-23 */
        _C, _C, _C, _C, _C, _C, _C, _C,                 /* 24-31 */
        _S | _SP, _P, _P, _P, _P, _P, _P, _P,           /* 32-39 */
        _P, _P, _P, _P, _P, _P, _P, _P,                 /* 40-47 */
        _D, _D, _D, _D, _D, _D, _D, _D,                 /* 48-55 */
        _D, _D, _P, _P, _P, _P, _P, _P,                 /* 56-63 */
        _P, _U | _X, _U | _X, _U | _X, _U | _X, _U | _X, _U | _X, _U, /* 64-71 */
        _U, _U, _U, _U, _U, _U, _U, _U,                 /* 72-79 */
        _U, _U, _U, _U, _U, _U, _U, _U,                 /* 80-87 */
        _U, _U, _U, _P, _P, _P, _P, _P,                 /* 88-95 */
        _P, _L | _X, _L | _X, _L | _X, _L | _X, _L | _X, _L | _X, _L, /* 96-103 */
        _L, _L, _L, _L, _L, _L, _L, _L,                 /* 104-111 */
        _L, _L, _L, _L, _L, _L, _L, _L,                 /* 112-119 */
        _L, _L, _L, _P, _P, _P, _P, _C,                 /* 120-127 */
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 128-143 */
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 144-159 */
        _S | _SP, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, /* 160-175 */
        _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, _P, /* 176-191 */
        _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, _U, /* 192-207 */
        _U, _U, _U, _U, _U, _U, _U, _P, _U, _U, _U, _U, _U, _U, _U, _L, /* 208-223 */
        _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, _L, /* 224-239 */
        _L, _L, _L, _L, _L, _L, _L, _P, _L, _L, _L, _L, _L, _L, _L, _L
};      /* 240-255 */

#define __ismask(x) (_ctype[(int)(unsigned char)(x)])

#define isalnum(c)      ((__ismask(c)&(_U|_L|_D)) != 0)
#define isalpha(c)      ((__ismask(c)&(_U|_L)) != 0)
#define iscntrl(c)      ((__ismask(c)&(_C)) != 0)
#define isdigit(c)      ((__ismask(c)&(_D)) != 0)
#define isgraph(c)      ((__ismask(c)&(_P|_U|_L|_D)) != 0)
#define islower(c)      ((__ismask(c)&(_L)) != 0)
#define isprint(c)      ((__ismask(c)&(_P|_U|_L|_D|_SP)) != 0)
#define ispunct(c)      ((__ismask(c)&(_P)) != 0)
#define isspace(c)      ((__ismask(c)&(_S)) != 0)
#define isupper(c)      ((__ismask(c)&(_U)) != 0)
#define isxdigit(c)     ((__ismask(c)&(_D|_X)) != 0)

#define isascii(c) (((unsigned char)(c))<=0x7f)
#define toascii(c) (((unsigned char)(c))&0x7f)

static inline unsigned char __tolower(unsigned char c)
{
        if (isupper(c))
                c -= 'A' - 'a';
        return c;
}

static inline unsigned char __toupper(unsigned char c)
{
        if (islower(c))
                c -= 'a' - 'A';
        return c;
}

#define tolower(c) __tolower(c)
#define toupper(c) __toupper(c)

