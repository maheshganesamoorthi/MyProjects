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

#ifndef __A20_H__
#define __A20_H__

		/* checks if the A20 line is enabled, sets
		 * ax to 0 if disabled, or 1 otherwise */
 
check_a20:
		pushf
		push	%ds
		push	%es
		push	%di
		push	%si
 
		cli
 
		xor		%ax, %ax /* ax = 0 */
		mov		%ax, %es
 
		not		%ax /* ax = 0xFFFF */
		mov		%ax, %ds
 
		mov		$0x0500, %di
		mov		$0x0510, %si
 
		movb	%es:(%di), %al
		push	%ax
 
		movb	%ds:(%si), %al
		push	%ax
 
		movb 	$0x00, %es:(%di)
		movb	$0xFF, %ds:(%si)
 
		cmpb	$0xFF, %es:(%di)
 
		pop		%ax
		movb	%al, %ds:(%si)
 
		pop		%ax
		movb	%al, %es:(%di)
 
		mov		$0x00, %ax
		je		1f
 
		mov		$0x01, %ax
 
1:
		pop		%si
		pop		%di
		pop		%es
		pop		%ds
		popf
 
		ret

#endif /* __A20_H__ */
