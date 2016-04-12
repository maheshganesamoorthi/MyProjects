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
 *       FILE: dev_byte.h
 *      DESCR: device management: block-oriented devices
 */

#pragma once

#include "types.h"

#include "drivers/dev.h"
#include "util/list.h"

#include "mm/page.h"
#include "mm/mmobj.h"

#define BLOCK_SIZE PAGE_SIZE

struct blockdev_ops;

/*
 * Represents a Weenix block device.
 */
typedef struct blockdev {
        /* Fields that should be initialized by drivers: */
        devid_t bd_id;

        struct blockdev_ops  *bd_ops;

        /* Fields that should be ignored by drivers: */
        struct mmobj bd_mmobj;

        /* Link on the list of block-oriented devices */
        list_link_t bd_link;
} blockdev_t;

typedef struct blockdev_ops {
        /**
         * Reads a block from the block device. This call will block.
         *
         * @param bdev the block device
         * @param buf the memory into which to read the block (must be
         *      page-aligned)
         * @param loc the number of the block to start reading from
         * @param count the number of blocks to read
         * @return 0 on success, -errno on failure
         */
        int (*read_block)(blockdev_t *bdev, char *buf,
                          blocknum_t loc, size_t count);

        /**
         * Writes a block to the block device. This call will block.
         *
         * @param bdev the block device
         * @param buf the memory from which to write the block (must be
         *      page-aligned)
         * @param loc the number of the block to start writing at
         * @param count the number of blocks to write
         * @return 0 on success, -errno on failure
         */
        int (*write_block)(blockdev_t *bdev, const char *buf,
                           blocknum_t loc, size_t count);
} blockdev_ops_t;

/**
 * Initializes the block device subsystem.
 */
void blockdev_init(void);

/**
 * Registers a given block device.
 *
 * @param dev the block device to register
 */
int blockdev_register(blockdev_t *dev);

/**
 * Finds a block device with a given device id.
 *
 * @param id the device id of the block device to find
 * @return the block device with the given id if it exists, or NULL if
 * it cannot be found
 */
blockdev_t *blockdev_lookup(devid_t id);

/**
 * Cleans and frees all resident pages belonging to a given block
 * device.
 *
 * @param dev the block device to flush
 */
void blockdev_flush_all(blockdev_t *dev);
