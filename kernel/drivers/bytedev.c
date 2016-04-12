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

#include "kernel.h"
#include "types.h"
#include "util/debug.h"
#include "drivers/bytedev.h"
#include "util/list.h"
#include "drivers/tty/tty.h"
#include "drivers/memdevs.h"

static list_t bytedevs;

void
bytedev_init()
{
        list_init(&bytedevs);
        /* Initialize all subsystems */
        tty_init();
        memdevs_init();
}

int
bytedev_register(bytedev_t *dev)
{
        bytedev_t *cd;

        /* Make sure dev, dev ops, and dev id not null */
        if (!dev
            || (NULL_DEVID == dev->cd_id)
            || !(dev->cd_ops))
                return -1;

        /* we should not have already seen dev->cd_id. */
        list_iterate_begin(&bytedevs, cd, bytedev_t, cd_link) {
                if (dev->cd_id == cd->cd_id)
                        return -1;
        } list_iterate_end();

        /* initialize portions of structure ignored by device drivers: */

        list_insert_tail(&bytedevs, &dev->cd_link);
        return 0;
}

bytedev_t *
bytedev_lookup(devid_t id)
{
        bytedev_t *cd;

        list_iterate_begin(&bytedevs, cd, bytedev_t, cd_link) {
                KASSERT(NULL_DEVID != cd->cd_id);
                if (id == cd->cd_id)
                        return cd;
        } list_iterate_end();

        return NULL;
}
