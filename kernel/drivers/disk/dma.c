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

#include "main/io.h"

#include "util/debug.h"
#include "util/string.h"
#include "util/delay.h"

#include "drivers/disk/dma.h"

#include "mm/pagetable.h"
#include "mm/page.h"

typedef struct {
        uint32_t prd_addr;
        uint16_t prd_count;
        uint16_t prd_last;
} prd_t;

static prd_t prd_table[2] __attribute__((aligned(32)));

static prd_t *DMA_PRDS[2];

void
dma_init()
{
  /* Clear the table */
  memset(prd_table, 0, sizeof(prd_t) * 2);
  /* Set pointers to it; note each channel only needs one PRD entry */
  DMA_PRDS[0] = prd_table;
  DMA_PRDS[1] = prd_table + 1;
}

void dma_load(uint8_t channel, void *start, int count) {
	KASSERT(PAGE_ALIGNED(start));
	prd_t* table = DMA_PRDS[channel];
	memset(table, 0, sizeof(prd_t));
	/* set up the PRD for this operation */
	table->prd_addr = pt_virt_to_phys((uintptr_t) start);
	table->prd_count = count;
	table->prd_last = 0x8000;
	return;
}

void dma_start(uint8_t channel, uint16_t busmaster_addr, int write) {
	uint8_t cmd = 0;
	/* first we need to set the read/write bit */
	if (write == 0) {
		cmd = (1 << 3);
	}
	/* then set the address of the prd */
	outl(busmaster_addr + DMA_PRD, pt_virt_to_phys((uintptr_t)DMA_PRDS[channel]));
	/* then allow all channels of DMA on this busmaster by setting that status register */
	outb(busmaster_addr + DMA_STATUS, inb(busmaster_addr + DMA_STATUS) | 0x60);
	/* then we need to set the start/stop bit */
	cmd |= 0x01;
	outb(busmaster_addr + DMA_COMMAND, cmd);
}

void dma_reset(uint16_t busmaster_addr) {
	/* to acknowledge the interrupt we need to both
	 * read the status register and write 0x64 to it.
	 * the 0x64 resets the interrupts somehow while
	 * keeping DMA enabled
	 */
	inb(busmaster_addr + DMA_STATUS);
	outb(busmaster_addr + DMA_STATUS, 0x64);
	/* we also should clear the start bit of the command register */
	outb(busmaster_addr + DMA_COMMAND, 0x00);
}
