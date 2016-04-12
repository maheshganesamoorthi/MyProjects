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

/* Page protection flags.
*/
#define PROT_NONE       0x0     /* No access. */
#define PROT_READ       0x1     /* Pages can be read. */
#define PROT_WRITE      0x2     /* Pages can be written. */
#define PROT_EXEC       0x4     /* Pages can be executed. */

/* Return value for mmap() on failure.
*/
#define MAP_FAILED      ((void*)-1)

/* Mapping type - shared or private.
*/
#define MAP_SHARED      1
#define MAP_PRIVATE     2
#define MAP_TYPE        3     /* mask for above types */

/* Mapping flags.
*/
#define MAP_FIXED       4
#define MAP_ANON        8
