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

#include "types.h"
#include "kernel.h"

#include "mm/phys.h"

#include "boot/config.h"

#include "util/debug.h"

struct mmap_entry {
        uint32_t me_baselo;
        uint32_t me_basehi;
        uint32_t me_lenlo;
        uint32_t me_lenhi;
        uint32_t me_type;
        uint32_t me_reserved;
};

struct mmap_def {
        uint32_t           md_count;
        struct mmap_entry  md_ents[];
};

static char *type_strings[] = {
        "ERROR: type = 0",
        "Usable",
        "Reserved",
        "ACPI Reclaimable",
        "ACPI NVS"
};
static size_t type_count = sizeof(type_strings) / sizeof(char *);

uintptr_t
phys_detect_highmem(void)
{
        uint32_t i;
        struct mmap_def *mmap = (struct mmap_def *)MEMORY_MAP_BASE;
        dbgq(DBG_MM, "Physical Memory Map:\n");
        for (i = 0; i < mmap->md_count; ++i) {
                uint32_t base = mmap->md_ents[i].me_baselo;
                uint32_t length = mmap->md_ents[i].me_lenlo;
                uint32_t type = mmap->md_ents[i].me_type;
                dbgq(DBG_MM, "    0x%.8x-0x%.8x: %s\n", base, base + length,
                     (type < type_count) ? type_strings[type] : "UNDEF");

                if (1 /* Usable */ == type && KERNEL_PHYS_BASE >= base && KERNEL_PHYS_BASE < base + length) {
                        return (uintptr_t)(base + length);
                }
        }
        KASSERT(0 && "Failed to detect correct physical addresses.");
        return 0;
}

