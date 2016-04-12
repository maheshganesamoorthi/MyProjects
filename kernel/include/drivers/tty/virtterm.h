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

struct tty_driver;

/* The width of the virtual terminal display */
#define DISPLAY_WIDTH 80

/* The height of the virtual terminal display */
#define DISPLAY_HEIGHT 25

/* The size of the virtual terminal display */
#define DISPLAY_SIZE (DISPLAY_WIDTH * DISPLAY_HEIGHT)

/**
 * Initializes the virtual terminal subsystem
 */
void vt_init(void);

/**
 * Returns the number of virtual terminals available to the system.
 *
 * @return the number of virtual terminals
 */
int vt_num_terminals();

/**
 * Returns a pointer to the tty_driver_T for the virtual terminal with
 * a given id. The terminals are numbered 0 through vt_num_terminals()
 * - 1.
 *
 * @param id the id of the virtual terminal to get the driver for
 * @return a pointer to the driver for the specified virtual terminal
 */
struct tty_driver *vt_get_tty_driver(int id);

/**
 * Scrolls the current terminal either up or down by a given number of
 * lines.
 *
 * @param lines the number of lines to scroll
 * @param scroll_up if true, scrolls up, otherwise, scrolls down
 */
void vt_scroll(int lines, int scroll_up);

/**
 * Switches to the virtual terminal with the given id.
 *
 * @param id the id of the virtual terminal to switch to
 * @return 0 on success and <0 on error
 */
int vt_switch(int id);

/**
 * Prints a shutdown message to the screen.
 */
void vt_print_shutdown(void);
