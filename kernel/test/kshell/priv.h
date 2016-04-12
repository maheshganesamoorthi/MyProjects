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

#include "util/list.h"

#define dprintf(x, args...) dbg(DBG_TEST, x, ## args)

#define KSH_BUF_SIZE 1024 /* This really just needs to be as large as
* the line discipline buffer */
#define KSH_CMD_NAME_LEN 16
#define KSH_MAX_ARGS 128
#define KSH_DESC_LEN 64

struct bytedev;
struct kshell_command;

struct kshell {
        /* If we have a filesystem, we can write to the file
         * descriptor. Otherwise, we need to write to a byte device */
#ifdef __VFS__
        int ksh_fd;

        /* Used for redirection */
        int ksh_out_fd;
        int ksh_in_fd;
#else
        struct bytedev *ksh_bd;
#endif
};

list_t kshell_commands_list;

/**
 * Searches for a shell command with a specified name.
 *
 * @param name name of the command to search for
 * @param namelen length of name
 * @return the command, if it exists, or NULL
 */
struct kshell_command *kshell_lookup_command(const char *name, size_t namelen);
