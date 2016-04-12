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

#include "types.h"

/*
 * A Weenix "device identifier" is the concatenation of:
 *     - a "driver number" or "device type" (major number)
 *     - a "device number" (minor number)
 *
 * The device identifiers for block devices and character devices are
 * independent. That is, you could have both a block device and a char device
 * with major 3, minor 5 (for example). They would be distinct.
 *
 * Weenix's device number allocation/assignment scheme is as follows:
 *
 *     - major 0 (byte or block), minor 0: reserved as an analogue of NULL
 *       for device id's
 *
 *     - char major 1:         Memory devices (mem)
 *         - minor 0:          /dev/null       The null device
 *         - minor 1:          /dev/zero       The zero device
 *
 *     - char major 2:         TTY devices (tty)
 *         - minor 0:          /dev/tty0       First TTY device
 *         - minor 1:          /dev/tty1       Second TTY device
 *         - and so on...
 *
 *     - block major 1:        Disk devices
 *         - minor 0:          first disk device
 *         - minor 1:          second disk device
 *         - and so on...
 */

#define MINOR_BITS              8
#define MINOR_MASK              ((1U << MINOR_BITS) - 1)
#define MAJOR(devid)            ((unsigned) ((devid) >> MINOR_BITS))
#define MINOR(devid)            ((unsigned) ((devid) & MINOR_MASK))
#define MKDEVID(major, minor)   (((major) << MINOR_BITS) | (minor))

/* convenience definition: the NULL device id: */
#define NULL_DEVID              (MKDEVID(0, 0))
#define MEM_NULL_DEVID          (MKDEVID(1, 0))
#define MEM_ZERO_DEVID          (MKDEVID(1, 1))

#define DISK_MAJOR 1

#define MEM_MAJOR       1
#define MEM_NULL_MINOR  0
#define MEM_ZERO_MINOR  1
