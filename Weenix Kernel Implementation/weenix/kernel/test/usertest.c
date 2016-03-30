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

#include "errno.h"
#include "stdarg.h"
#include "kernel.h"

#include "test/usertest.h"

#include "util/string.h"
#include "util/printf.h"
#include "util/debug.h"


typedef struct test_data {
        int td_passed;
        int td_failed;
} test_data_t;

static void _default_test_fail(const char *file, int line, const char *name, const char *fmt, va_list args);
static void _default_test_pass(int val, const char *file, int line, const char *name, const char *fmt, va_list args);

static test_data_t _test_data;
static test_pass_func_t _pass_func = _default_test_pass;
static test_fail_func_t _fail_func = _default_test_fail;

void
test_init(void)
{
        _test_data.td_passed = 0;
        _test_data.td_failed = 0;
}

void
test_fini(void)
{
        dbgq(DBG_TEST, "tests completed:\n");
        dbgq(DBG_TEST, "\t\t%d passed\n", _test_data.td_passed);
        dbgq(DBG_TEST, "\t\t%d failed\n", _test_data.td_failed);
}


const char *
test_errstr(int err)
{
        switch (err) {
                case 1:
                        return "EPERM";
                case 2:
                        return "ENOENT";
                case 3:
                        return "ESRCH";
                case 4:
                        return "EINTR";
                case 5:
                        return "EIO";
                case 6:
                        return "ENXIO";
                case 7:
                        return "E2BIG";
                case 8:
                        return "ENOEXEC";
                case 9:
                        return "EBADF";
                case 10:
                        return "ECHILD";
                case 11:
                        return "EAGAIN";
                case 12:
                        return "ENOMEM";
                case 13:
                        return "EACCES";
                case 14:
                        return "EFAULT";
                case 15:
                        return "ENOTBLK";
                case 16:
                        return "EBUSY";
                case 17:
                        return "EEXIST";
                case 18:
                        return "EXDEV";
                case 19:
                        return "ENODEV";
                case 20:
                        return "ENOTDIR";
                case 21:
                        return "EISDIR";
                case 22:
                        return "EINVAL";
                case 23:
                        return "ENFILE";
                case 24:
                        return "EMFILE";
                case 25:
                        return "ENOTTY";
                case 26:
                        return "ETXTBSY";
                case 27:
                        return "EFBIG";
                case 28:
                        return "ENOSPC";
                case 29:
                        return "ESPIPE";
                case 30:
                        return "EROFS";
                case 31:
                        return "EMLINK";
                case 32:
                        return "EPIPE";
                case 33:
                        return "EDOM";
                case 34:
                        return "ERANGE";
                case 35:
                        return "EDEADLK";
                case 36:
                        return "ENAMETOOLONG";
                case 37:
                        return "ENOLCK";
                case 38:
                        return "ENOSYS";
                case 39:
                        return "ENOTEMPTY";
                case 40:
                        return "ELOOP";
                default:
                        return "UNKNOWN";
        }
}

static void
_default_test_fail(const char *file, int line, const char *name, const char *fmt, va_list args)
{
        _test_data.td_failed++;
        if (NULL == fmt) {
                dbgq(DBG_TEST, "FAILED: %s(%d): %s\n", file, line, name);
        } else {
                char buf[2048];
                vsnprintf(buf, 2048, fmt, args);
                buf[2047] = '\0';
                dbgq(DBG_TEST, "FAILED: %s(%d): %s: %s\n", file, line, name, buf);
        }
}

static void
_default_test_pass(int val, const char *file, int line, const char *name, const char *fmt, va_list args)
{
        _test_data.td_passed++;
}

int
_test_assert(int val, const char *file, int line, const char *name, const char *fmt, ...)
{
        va_list args;
        va_start(args, fmt);

        if (0 == val) {
                if (NULL != _fail_func) {
                        _fail_func(file, line, name, fmt, args);
                }
        } else {
                if (NULL != _pass_func) {
                        _pass_func(val, file, line, name, fmt, args);
                }
        }

        va_end(args);
        return val;
}
