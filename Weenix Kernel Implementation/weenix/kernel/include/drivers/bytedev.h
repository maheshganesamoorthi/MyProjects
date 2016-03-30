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

#include "drivers/dev.h"
#include "util/list.h"

struct vnode;
struct pframe;

struct bytedev_ops;
struct vmarea;
struct mmobj;

typedef struct bytedev {
        devid_t             cd_id;
        struct bytedev_ops *cd_ops;
        list_link_t         cd_link;
} bytedev_t;

typedef struct bytedev_ops {
        int (*read)(bytedev_t *dev, int offset, void *buf, int count);
        int (*write)(bytedev_t *dev, int offset, const void *buf, int count);
        int (*mmap)(struct vnode *file, struct vmarea *vma, struct mmobj **ret);
        int (*fillpage)(struct vnode *file, off_t offset, void *pagebuf);
        int (*dirtypage)(struct vnode *file, off_t offset);
        int (*cleanpage)(struct vnode *file, off_t offset, void *pagebuf);
} bytedev_ops_t;

/**
 * Initializes the byte device subsystem.
 */
void bytedev_init(void);

/**
 * Registers the given byte device.
 *
 * @param dev the byte device to register
 */
int bytedev_register(bytedev_t *dev);

/**
 * Finds a byte device with a given device id.
 *
 * @param id the device id of the byte device to find
 * @return the byte device with the given id if it exists, or NULL if
 * it cannot be found
 */
bytedev_t *bytedev_lookup(devid_t id);
