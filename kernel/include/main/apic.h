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

/* Initializes the APIC using data from the ACPI tables.
 * ACPI handlers must be initialized before calling this
 * function. */
void apic_init();

/* Maps the given IRQ to the given interrupt number. */
void apic_setredir(uint32_t irq, uint8_t intr);

/* Starts the APIC timer */
void apic_enable_periodic_timer(uint32_t freq);

/* Stops the APIC timer */
void apic_disable_periodic_timer();

/* Sets the interrupt to raise when a spurious
 * interrupt occurs. */
void apic_setspur(uint8_t intr);

/* Sets the interrupt priority level. This function should
 * be accessed via wrappers in the interrupt subsystem. */
void apic_setipl(uint8_t ipl);

/* Gets the interrupt priority level. This function should
 * be accessed via wrappers in the interrupt subsystem. */
uint8_t apic_getipl();

/* Writes to the APIC's memory mapped end-of-interrupt
 * register to indicate that the handling of an interrupt
 * originating from the APIC has been finished. This function
 * should only be called from the interrupt subsystem. */
void apic_eoi();
