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

#include "command.h"

#include "mm/kmalloc.h"

#include "util/debug.h"
#include "util/list.h"
#include "util/string.h"

kshell_command_t *kshell_command_create(const char *name,
                                        kshell_cmd_func_t cmd_func,
                                        const char *desc)
{
        kshell_command_t *cmd;
        size_t len;

        KASSERT(NULL != name);
        KASSERT(NULL != cmd_func);

        cmd = (kshell_command_t *)kmalloc(sizeof(kshell_command_t));
        if (NULL == cmd) {
                return NULL;
        }

        len = strnlen(name, KSH_CMD_NAME_LEN);
        strncpy(cmd->kc_name, name, len);
        cmd->kc_name[len] = '\0';

        cmd->kc_cmd_func = cmd_func;

        if (NULL != desc) {
                len = strnlen(desc, KSH_DESC_LEN);
                strncpy(cmd->kc_desc, desc, len);
                cmd->kc_desc[len] = '\0';
        } else {
                cmd->kc_desc[0] = '\0';
        }

        list_link_init(&cmd->kc_commands_link);

        return cmd;
}

void kshell_command_destroy(kshell_command_t *cmd)
{
        kfree(cmd);
}
