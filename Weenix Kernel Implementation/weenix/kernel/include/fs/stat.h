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

/*
 *  FILE: stat.h
 *  AUTH: mcc
 *  DESC:
 *  DATE: Fri Mar 13 23:10:46 1998
 */

#pragma once

/* Kernel and user header (via symlink) */

struct stat {
        int st_mode;
        int st_ino;
        int st_dev;
        int st_rdev;
        int st_nlink;
        int st_uid;
        int st_gid;
        int st_size;
        int st_atime;
        int st_mtime;
        int st_ctime;
        int st_blksize;
        int st_blocks;
};

/* vnode vn_mode masks */

#define S_IFCHR         0x0100  /* character special */
#define S_IFDIR         0x0200 /* directory */
#define S_IFBLK         0x0400 /* block special */
#define S_IFREG         0x0800 /* regular */
#define S_IFLNK         0x1000 /* symlink */

#define _S_TYPE(m)      ((m) & 0xFF00)
#define S_ISCHR(m)      (_S_TYPE(m) == S_IFCHR)
#define S_ISDIR(m)      (_S_TYPE(m) == S_IFDIR)
#define S_ISBLK(m)      (_S_TYPE(m) == S_IFBLK)
#define S_ISREG(m)      (_S_TYPE(m) == S_IFREG)
#define S_ISLNK(m)      (_S_TYPE(m) == S_IFLNK)
