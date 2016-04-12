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

#include "globals.h"

#include "main/io.h"
#include "main/interrupt.h"
#include "util/delay.h"
#include "main/apic.h"

#include "proc/sched.h"
#include "proc/kthread.h"

#define APIC_TIMER_IRQ 32 /* Map interrupt 32 */

/* IRQ */
/*#define PIT_IRQ 0*/

/* I/O ports */
/*#define PIT_DATA0 0x40
#define PIT_DATA1 0x41
#define PIT_DATA2 0x42
#define PIT_CMD   0x43

#define CLOCK_TICK_RATE 1193182
#undef HZ
#define HZ 1000

#define LATCH (CLOCK_TICK_RATE / HZ)*/
static unsigned int ms = 0;

void pit_handler(regs_t* regs) {
}

void pit_init(uint8_t intr) {
}
