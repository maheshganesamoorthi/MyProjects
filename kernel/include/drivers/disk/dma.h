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

/* Linux kernel: drivers/ata/libata-sff.c */
#define DMA_COMMAND 0x00
#define DMA_STATUS  0x02
#define DMA_PRD     0x04 /* dword register */

/**
 * Initializes the DMA subsystem.
 */
void dma_init(void);

/**
 * Return the DMA status.
 *
 * @param channel the disk channel
 */
void dma_status(uint16_t busmaster_addr);

/**
 * Resets DMA for its next operation by acknowledging an interrupt,
 * clearing all interrupts and errors.
 *
 * @param channel the disk channel
 */
void dma_reset(uint16_t busmaster_addr);

/**
 * Initialize DMA for an operation
 *
 * @param channel the channel on which to perform the operation
 * @param start the beginning of the buffer in memory
 * @param count the number of bytes to read/write
 * @param write true if writing, false if reading
 */
void dma_load(uint8_t channel, void* start, int count);

/* 1/24/13 Commented this out for now, it isn't used anyway */
/**
 * Cancel the current DMA operation.
 *
 * @param channel the disk channel
 */
/*void dma_stop(uint8_t channel);*/

/**
 * Execute a DMA operation.
 *
 * @param channel the disk channel
 */
void dma_start(uint8_t channel, uint16_t busmaster_addr, int write);
