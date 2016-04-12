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

#define CHAR_BIT  8
#define CHAR_MAX  UCHAR_MAX
#define UCHAR_MAX ((unsigned char)(~0U))
#define SCHAR_MAX ((signed char)(UCHAR_MAX>>1))
#define SCHAR_MIN (-SCHAR_MAX - 1)
#define USHRT_MAX ((unsigned short)(~0U))
#define SHRT_MAX  ((signed short)(USHRT_MAX>>1))
#define SHRT_MIN  (-SHRT_MAX - 1)
#define UINT_MAX  ((unsigned int)(~0U))
#define INT_MAX   ((signed int)(UINT_MAX>>1))
#define INT_MIN   (-INT_MAX - 1)
#define ULONG_MAX ((unsigned long)(~0UL))
#define LONG_MAX  ((signed long)(ULONG_MAX>>1))
#define LONG_MIN  (-LONG_MAX - 1)

#define UPTR_MAX  UINT_MAX
