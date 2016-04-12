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

#include "test/kshell/kshell.h"

/*
 * When writing a kernel shell command, make sure to use the following
 * I/O functions.
 *
 * Before VFS is not enabled, the kernel shell will use functions from
 * bytedev.h to get a pointer the the bytedev_t struct for the TTY.
 *
 * When VFS is enabled, the kernel shell will use the functions from
 * vfs_syscall.h to open and close the TTY and perform I/O operations
 * on the TTY.
 *
 * If you use the functions below, this process will be completely
 * transparent.
 */

/**
 * Replacement for do_write.
 *
 * @param ksh the kshell to write to
 * @param buf the buffer to write out to the kshell
 * @param nbytes the maximum number of bytes to write
 * @return number of bytes written on sucess and <0 on error
 */
int kshell_write(kshell_t *ksh, const void *buf, size_t nbytes);

/**
 * Replacement for do_read.
 *
 * @param ksh the kshell to read from
 * @param buf the buffer to store data read from the kshell
 * @param nbytes the maximum number of bytes to read
 * @param number of bytes read on success and <0 on error
 */
int kshell_read(kshell_t *ksh, void *buf, size_t nbytes);

/* Unless an error occurs, guarantees that all of buf will be
 * written */
/**
 * Writes a specified number of bytes from a buffer to the
 * kshell. Unlike kshell_write, this function guarantees it will write
 * out the desired number of bytes.
 *
 * @param ksh the kshell to write to
 * @param buf the buffer to write out to the kshell
 * @param nbytes the number of bytes to write
 * @return number of bytes written on success and <0 on error
 */
int kshell_write_all(kshell_t *ksh, void *buf, size_t nbytes);

/* Replacement for printf */
/**
 * Write output to a kshell according to a format string.
 *
 * @param ksh the kshell to write to
 * @param fmt the format string
 */
void kprintf(kshell_t *ksh, const char *fmt, ...);
