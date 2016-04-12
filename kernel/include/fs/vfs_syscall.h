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

#include "dirent.h"

#include "types.h"

#include "fs/open.h"
#include "fs/stat.h"

int do_close(int fd);
int do_read(int fd, void *buf, size_t nbytes);
int do_write(int fd, const void *buf, size_t nbytes);
int do_dup(int fd);
int do_dup2(int ofd, int nfd);
int do_mknod(const char *path, int mode, unsigned devid);
int do_mkdir(const char *path);
int do_rmdir(const char *path);
int do_unlink(const char *path);
int do_link(const char *from, const char *to);
int do_rename(const char *oldname, const char *newname);
int do_chdir(const char *path);
int do_getdent(int fd, struct dirent *dirp);
int do_lseek(int fd, int offset, int whence);
int do_stat(const char *path, struct stat *uf);

#ifdef __MOUNTING__
/* for mounting implementations only, not required */
int do_mount(const char *source, const char *target, const char *type);
int do_umount(const char *target);
#endif
