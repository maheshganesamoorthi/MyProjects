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

#define PAGE_DIRECTORY_BASE 0x2000

install_page_table:
		pusha
		mov		%es, %bx
		
/* first we zero 3 pages to be used as our
 * initial page tables and page directory */
		mov		$0, %ax
		mov		%ax, %es
		mov		$0, %eax
		mov		$0x3000, %ecx
		mov		$PAGE_DIRECTORY_BASE, %edi
		cld     /* Make sure direction is forwards */
		rep stosb

/* identity map the first 1mb of memory using
 * one of the page tables we just zeroed */
		mov		$PAGE_DIRECTORY_BASE, %edi
		add		$0x1000, %edi /* calculate the location of the page table */
		mov		$0x400, %ecx /* we will fill this many entries (whole table) */
		mov		$0x103, %eax /* start by mapping 0x0 => 0x0, the flags are
								priviledged only, global, and present */
1:		
		mov		%eax, (%edi) /* store the pte */
		add		$4, %edi	 /* move to the next entry */
		add		$0x1000, %eax /* increment the mapping to the next memory area */
		dec		%ecx         /* decrement our counter */
		jnz		1b           /* if counter reaches 0 we are done */

/* map 1mb of memory for the kernel text, starting
 * with the mapping 0xc0000000 => KERNEL_PHYS_BASE */
		mov		$PAGE_DIRECTORY_BASE, %edi
		add		$0x2000, %edi /* calculate the location of the page table */
		mov		$0x400, %ecx /* we will fill this many entries (whole table) */
		mov		$KERNEL_PHYS_BASE, %eax
		xor		$0x103, %eax /* start by mapping 0xc0000000 => KERNEL_PHYS_BASE, the flags are
								   priviledged only, global, and present */
1:		
		mov		%eax, (%edi) /* store the pte */
		add		$4, %edi	 /* move to the next entry */
		add		$0x1000, %eax /* increment the mapping to the next memory area */
		dec		%ecx         /* decrement our counter */
		jnz		1b           /* if counter reaches 0 we are done */

/* put entries for these two page tables into the
 * page directory */
		mov		$PAGE_DIRECTORY_BASE, %edi
		
		mov		%edi, %eax
		add		$0x1000, %eax /* calculate the location of the first page table */
		or		$0x103, %eax /* add the flags for privileged, global and present */
		mov		%eax, (%edi)

		add		$0x1000, %eax /* calculate the location of the second page table */
		mov		$kernel_start, %ecx
		shr		$20, %ecx
		mov		%eax, (%ecx, %edi, 1)

		mov		$PAGE_DIRECTORY_BASE, %eax
		mov		%eax, %cr3
		
		mov		%bx, %es
		popa
		ret
