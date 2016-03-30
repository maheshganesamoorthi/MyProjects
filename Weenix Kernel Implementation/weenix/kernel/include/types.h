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

/* Kernel and user header (via symlink) */

#define NULL 0

typedef signed char        int8_t;
typedef unsigned char      uint8_t;
typedef signed short       int16_t;
typedef unsigned short     uint16_t;
typedef signed int         int32_t;
typedef unsigned int       uint32_t;
#if defined(__i386__)
typedef signed long long   int64_t;
typedef unsigned long long uint64_t;
typedef signed int         intptr_t;
typedef unsigned int       uintptr_t;
#elif defined(__x86_64__) || defined(__ia64__)
typedef signed long        int64_t;
typedef unsigned long      uint64_t;
typedef signed long        intptr_t;
typedef unsigned long      uintptr_t;
#endif

typedef uint32_t           size_t;
typedef int32_t            ssize_t;
typedef int32_t            off_t;
typedef int64_t            off64_t;
typedef int32_t            pid_t;
typedef uint16_t           mode_t;
typedef uint32_t           blocknum_t;
typedef uint32_t           ino_t;
typedef uint32_t           devid_t;
