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

/*
 *  FILE: vfs_syscall.c
 *  AUTH: mcc | jal
 *  DESC:
 *  DATE: Wed Apr  8 02:46:19 1998
 *  $Id: vfs_syscall.c,v 1.13 2015/12/15 14:38:24 william Exp $
 */

#include "kernel.h"
#include "errno.h"
#include "globals.h"
#include "fs/vfs.h"
#include "fs/file.h"
#include "fs/vnode.h"
#include "fs/vfs_syscall.h"
#include "fs/open.h"
#include "fs/fcntl.h"
#include "fs/lseek.h"
#include "mm/kmalloc.h"
#include "util/string.h"
#include "util/printf.h"
#include "fs/stat.h"
#include "util/debug.h"

/* To read a file:
 *      o fget(fd)
 *      o call its virtual read fs_op
 *      o update f_pos
 *      o fput() it
 *      o return the number of bytes read, or an error
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        fd is not a valid file descriptor or is not open for reading.
 *      o EISDIR
 *        fd refers to a directory.
 *
 * In all cases, be sure you do not leak file refcounts by returning before
 * you fput() a file that you fget()'ed.
 */
int
do_read(int fd, void *buf, size_t nbytes)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_read");*/
        if(fd < 0 || fd >= NFILES || curproc->p_files[fd] ==NULL){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
       } 
        file_t *file_ptr = fget(fd);
        if(!(file_ptr->f_mode & FMODE_READ) && !(file_ptr->f_mode & FMODE_APPEND)){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                fput(file_ptr);
                return -EBADF;
        }
       /* if(file_ptr == NULL){
                dbg(DBG_PRINT, "(GRADING:74,do_read*)\n");
                return -EBADF;
        }*/
        if(S_ISDIR(file_ptr->f_vnode->vn_mode))
        {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                fput(file_ptr);
                return -EISDIR;
        }
        int transfered = file_ptr->f_vnode->vn_ops->read(file_ptr->f_vnode,file_ptr->f_pos,buf,nbytes);
        if(transfered>0)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            file_ptr->f_pos = file_ptr->f_pos + transfered;
         }
        dbg(DBG_PRINT, "(GRADING2B)\n");
        fput(file_ptr);
        return transfered;
}

/* Very similar to do_read.  Check f_mode to be sure the file is writable.  If
 * f_mode & FMODE_APPEND, do_lseek() to the end of the file, call the write
 * fs_op, and fput the file.  As always, be mindful of refcount leaks.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        fd is not a valid file descriptor or is not open for writing.
 */
int
do_write(int fd, const void *buf, size_t nbytes)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_write");*/
        if(fd < 0 || fd >= NFILES || curproc->p_files[fd] == NULL){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
        file_t *file_ptr = fget(fd);

        if(!(file_ptr->f_mode & FMODE_WRITE) && !(file_ptr->f_mode & FMODE_APPEND)){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                fput(file_ptr);
                return -EBADF;
        }
       /* if(file_ptr == NULL){
                dbg(DBG_PRINT, "(GRADING:119,do_write*)\n");
                return -EBADF;
        }*/
        
        if((file_ptr->f_mode & FMODE_APPEND)){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                do_lseek(fd,0,SEEK_END);
        }


        int transfered = file_ptr->f_vnode->vn_ops->write(file_ptr->f_vnode,file_ptr->f_pos,buf,nbytes);
        if(transfered > 0)
        {
                KASSERT((S_ISCHR(file_ptr->f_vnode->vn_mode)) || (S_ISBLK(file_ptr->f_vnode->vn_mode)) || 
                        ((S_ISREG(file_ptr->f_vnode->vn_mode)) && (file_ptr->f_pos <= file_ptr->f_vnode->vn_len)));
                dbg(DBG_PRINT,("GRADING2A 3.a)\n"));
                file_ptr->f_pos = file_ptr->f_pos + transfered;
        }

        dbg(DBG_PRINT, "(GRADING2B)\n");
        fput(file_ptr);
        return transfered;
}

/*
 * Zero curproc->p_files[fd], and fput() the file. Return 0 on success
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        fd isn't a valid open file descriptor.
 */
int
do_close(int fd)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_close");*/
        if(fd < 0 || fd >= NFILES || curproc->p_files[fd] == NULL){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
        file_t *file_ptr = curproc->p_files[fd];
        /*if(file_ptr == NULL){
                dbg(DBG_PRINT, "(GRADING:160,do_close*)\n");
                return -EBADF;
        }*/
        dbg(DBG_PRINT, "(GRADING2B)\n");
        fput(file_ptr);
        curproc->p_files[fd] = NULL;
        return 0;
}

/* To dup a file:
 *      o fget(fd) to up fd's refcount
 *      o get_empty_fd()
 *      o point the new fd to the same file_t* as the given fd
 *      o return the new file descriptor
 *
 * Don't fput() the fd unless something goes wrong.  Since we are creating
 * another reference to the file_t*, we want to up the refcount.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        fd isn't an open file descriptor.
 *      o EMFILE
 *        The process already has the maximum number of file descriptors open
 *        and tried to open a new one.
 */
int
do_dup(int fd)
{
         /*NOT_YET_IMPLEMENTED("VFS: do_dup");*/
        if(fd < 0 || fd >= NFILES || curproc->p_files[fd] == NULL){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
        file_t *file_ptr = fget(fd);
        /*if(file_ptr == NULL){
                
                dbg(DBG_PRINT, "(GRADING:196,do_dup*)\n");
                return -EBADF;
        }*/

        int empty_fd = get_empty_fd(curproc);
           /*if(empty_fd < 0)
        {
            dbg(DBG_PRINT, "(GRADING:203,do_dup*)\n");
            fput(file_ptr);
            return empty_fd;
        }*/
        dbg(DBG_PRINT, "(GRADING2B)\n");
        curproc->p_files[empty_fd] = file_ptr; 
        return empty_fd;
}

/* Same as do_dup, but insted of using get_empty_fd() to get the new fd,
 * they give it to us in 'nfd'.  If nfd is in use (and not the same as ofd)
 * do_close() it first.  Then return the new file descriptor.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        ofd isn't an open file descriptor, or nfd is out of the allowed
 *        range for file descriptors.
 */
int
do_dup2(int ofd, int nfd)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_dup2");*/
        file_t *file_ptr;
        if(ofd < 0 || ofd >= NFILES || curproc->p_files[ofd] == 0){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
        /*if(nfd < 0 || nfd >= NFILES){
            dbg(DBG_PRINT, "(GRADING:231,do_dup2*)\n");
                return -EBADF;
        }*/
        if(nfd == ofd)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
                return nfd;
        }        
     
        if(curproc->p_files[nfd] != NULL){
                dbg(DBG_PRINT, "(GRADING2B)\n");
                do_close(nfd);
        }
        
        
        file_ptr = fget(ofd);
        dbg(DBG_PRINT, "(GRADING2B)\n");  
        curproc->p_files[nfd] = file_ptr;
        return nfd;
}

/*
 * This routine creates a special file of the type specified by 'mode' at
 * the location specified by 'path'. 'mode' should be one of S_IFCHR or
 * S_IFBLK (you might note that mknod(2) normally allows one to create
 * regular files as well-- for simplicity this is not the case in Weenix).
 * 'devid', as you might expect, is the device identifier of the device
 * that the new special file should represent.
 *
 * You might use a combination of dir_namev, lookup, and the fs-specific
 * mknod (that is, the containing directory's 'mknod' vnode operation).
 * Return the result of the fs-specific mknod, or an error.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EINVAL
 *        mode requested creation of something other than a device special
 *        file.
 *      o EEXIST
 *        path already exists.
 *      o ENOENT
 *        A directory component in path does not exist.
 *      o ENOTDIR
 *        A component used as a directory in path is not, in fact, a directory.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 */

int
do_mknod(const char *path, int mode, unsigned devid)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_mknod");*/
        /*if(mode!=S_IFBLK && mode!=S_IFCHR)
        {
            dbg(DBG_PRINT, "(GRADING:284,do_mknod*)\n");
            return -EINVAL;
        }*/
        dbg(DBG_PRINT, "(GRADING2B)\n");
        size_t namelen1=0;
        const char *name1=NULL;
        vnode_t *base1=NULL;
        int k= dir_namev(path,&namelen1,&name1,NULL,&base1);
        if(k<0)
            {
                dbg(DBG_PRINT, "(GRADING:294,do_mknod*)\n");
                return k;
            }
        else
        {
            if(namelen1>STR_MAX)
                {
                    dbg(DBG_PRINT, "(GRADING:301,do_mknod*)\n");
                    vput(base1);
                    return -ENAMETOOLONG;
                }
            vnode_t *base2;
            int m =lookup(base1,name1,namelen1,&base2);
            if(m==0)
            {
                dbg(DBG_PRINT, "(GRADING:309,do_mknod*)\n");
                vput(base1);
                vput(base2);
                return -EEXIST;
            }
           /* if(!S_ISDIR(base1->vn_mode))
            {
                vput(base1);
                vput(base2);
                return ENOTDIR;
            }*/
            KASSERT(NULL != base1->vn_ops->mknod);
            dbg(DBG_PRINT,("GRADING2A 3.b)\n"));
            int result=base1->vn_ops->mknod(base1,name1,namelen1,mode,devid);
            vput(base1);    
            return result;
        }
}

/* Use dir_namev() to find the vnode of the dir we want to make the new
 * directory in.  Then use lookup() to make sure it doesn't already exist.
 * Finally call the dir's mkdir vn_ops. Return what it returns.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EEXIST
 *        path already exists.
 *      o ENOENT
 *        A directory component in path does not exist.
 *      o ENOTDIR
 *        A component used as a directory in path is not, in fact, a directory.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 */
int
do_mkdir(const char *path)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_mkdir");*/
        size_t namelen1=0;
        const char *name1=NULL;
        vnode_t *base1=NULL;
        dbg(DBG_PRINT, "(GRADING2B)\n");
        int k= dir_namev(path,&namelen1,&name1,NULL,&base1);
        if(k<0)
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return k;
            }
        else
        {    
            if(namelen1>STR_MAX)
                {
                    dbg(DBG_PRINT, "(GRADING2B)\n");
                    vput(base1);

                    return -ENAMETOOLONG;
                }
            vnode_t *base2=NULL;
            int m =lookup(base1,name1,namelen1,&base2);
            if(m!=-ENOENT)
                {
                    dbg(DBG_PRINT, "(GRADING2B)\n");
                    vput(base1);
                    vput(base2);

                    return -EEXIST;
                }
           /* if(!S_ISDIR(base1->vn_mode))
            {
                 vput(base1);
                vput(base2);
                return ENOTDIR;
            }*/

            KASSERT(NULL != base1->vn_ops->mkdir);
            dbg(DBG_PRINT, "(GRADING2A 3.c)\n");
            int result=base1->vn_ops->mkdir(base1,name1,namelen1);
            vput(base1);

            return result;
        }
}

/* Use dir_namev() to find the vnode of the directory containing the dir to be
 * removed. Then call the containing dir's rmdir v_op.  The rmdir v_op will
 * return an error if the dir to be removed does not exist or is not empty, so
 * you don't need to worry about that here. Return the value of the v_op,
 * or an error.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EINVAL
 *        path has "." as its final component.
 *      o ENOTEMPTY
 *        path has ".." as its final component.
 *      o ENOENT
 *        A directory component in path does not exist.
 *      o ENOTDIR
 *        A component used as a directory in path is not, in fact, a directory.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 */
int
do_rmdir(const char *path)
{
        /* NOT_YET_IMPLEMENTED("VFS: do_rmdir"); */
        dbg(DBG_PRINT, "(GRADING2B)\n");
        size_t namelen1=0;
        const char *name1=NULL;
        vnode_t *base1=NULL;
        int vnodeval= dir_namev(path,&namelen1,&name1,NULL,&base1);
        if(vnodeval<0)
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return vnodeval;
            }
        else
        {    
            if(!strcmp(name1, "."))
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                vput(base1);
                return -EINVAL;

            }
            if(!strcmp(name1,".."))
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                vput(base1);
                return -ENOTEMPTY;
            }
            
            /*if(namelen1>STR_MAX)
                {
                    dbg(DBG_PRINT, "(GRADING:441,do_rmdir*)\n");
                    vput(base1);
                    return -ENAMETOOLONG;
                }*/
              /*if(!S_ISDIR(base1->vn_mode))
            {
                 vput(base1);
                
                return ENOTDIR;
            }*/
            KASSERT(NULL != base1->vn_ops->rmdir);
            dbg(DBG_PRINT, "(GRADING2A 3.d)\n");
            int result=base1->vn_ops->rmdir(base1,name1,namelen1);
            vput(base1);
            return result;
        }
}

/*
 * Same as do_rmdir, but for files.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EISDIR
 *        path refers to a directory.
 *      o ENOENT
 *        A component in path does not exist.
 *      o ENOTDIR
 *        A component used as a directory in path is not, in fact, a directory.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 */
int
do_unlink(const char *path)
{
      /*  NOT_YET_IMPLEMENTED("VFS: do_unlink");*/
        dbg(DBG_PRINT, "(GRADING2B)\n");
        size_t namelen1=0;
        const char *name1=NULL;
        vnode_t *base1=NULL;
        int vnodeval= dir_namev(path,&namelen1,&name1,NULL,&base1);
        if(vnodeval<0)
            {
                dbg(DBG_PRINT, "(GRADING:483,do_unlink*)\n");   
                return vnodeval;
            }
        else
        { 
            vnode_t *base2=NULL;
            int l=lookup(base1,name1,namelen1,&base2);
            if(l<0)
            {   
                dbg(DBG_PRINT, "(GRADING2B)\n");
                vput(base1);
                return l;
            }
            if(S_ISDIR(base2->vn_mode))
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                vput(base1);
                vput(base2);
                return -EISDIR;
            }
            if(namelen1>STR_MAX)
                {
                    dbg(DBG_PRINT, "(GRADING:505,do_unlink*)\n");
                    vput(base1);
                    return -ENAMETOOLONG;
                }
            vput(base2);
            KASSERT(NULL != base1->vn_ops->unlink);
            dbg(DBG_PRINT, "(GRADING2A 3.e)\n");
            /*dbg(DBG_PRINT, "(GRADING2A 3.e)\n");*/
            int result=base1->vn_ops->unlink(base1,name1,namelen1);
            vput(base1);
            return result;
        }
}

/* To link:
 *      o open_namev(from)
 *      o dir_namev(to)
 *      o call the destination dir's (to) link vn_ops.
 *      o return the result of link, or an error
 *
 * Remember to vput the vnodes returned from open_namev and dir_namev.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EEXIST
 *        to already exists.
 *      o ENOENT
 *        A directory component in from or to does not exist.
 *      o ENOTDIR
 *        A component used as a directory in from or to is not, in fact, a
 *        directory.
 *      o ENAMETOOLONG
 *        A component of from or to was too long.
 *      o EISDIR
 *        from is a directory.
 */
int
do_link(const char *from, const char *to)
{
     /*   NOT_YET_IMPLEMENTED("VFS: do_link"); 
     DO LINK NOT GETTING CALLED ANYWHERE IN KERNEL 2 TESTS*/

        /*int flag1=0;
        vnode_t *base1=NULL;
        vnode_t *base2=NULL;
        int o=open_namev(from,flag1,&base2,NULL); 

        if(S_ISDIR(base2->vn_mode))
        {
            vput(base2);
            vput(base1);
            return -EISDIR;
        }
        size_t namelen1;
        const char *name1;
        int d=dir_namev(to,&namelen1,&name1,NULL,&base1);
        if(d<0)
            {           
                return d;
            }
        else
        {    
            if(namelen1>STR_MAX)
                    {
                        vput(base1);
                        return -ENAMETOOLONG;
                    }
            int m =lookup(base1,name1,namelen1,&base2);
            if(m==0)
                {
                    vput(base1);
                    vput(base2);
                    return -EEXIST;
                }
            int result=base1->vn_ops->link(base2,base1,name1,namelen1);

            vput(base1);
            vput(base2);


        return result;
        }*/
        return 0;
}

/*      o link newname to oldname
 *      o unlink oldname
 *      o return the value of unlink, or an error
 *
 * Note that this does not provide the same behavior as the
 * Linux system call (if unlink fails then two links to the
 * file could exist).
 */
int
do_rename(const char *oldname, const char *newname)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_rename");
        DO RENAME NOT GETTING CALLED ANYWHERE IN KERNEL 2 TESTS*/
        /*int l=do_link(oldname,newname);
        int result=do_unlink(oldname);
        dbg(DBG_PRINT, "(GRADING:603,do_rename)\n");
        return result;*/
        return 0;
}

/* Make the named directory the current process's cwd (current working
 * directory).  Don't forget to down the refcount to the old cwd (vput()) and
 * up the refcount to the new cwd (open_namev() or vget()). Return 0 on
 * success.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o ENOENT
 *        path does not exist.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 *      o ENOTDIR
 *        A component of path is not a directory.
 */
int
do_chdir(const char *path)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_chdir");*/
        dbg(DBG_PRINT, "(GRADING2B)\n");
        size_t namelen1=0;
        const char *name1=NULL;
        vnode_t *base2=NULL;
        int flag1=0;
        int o=open_namev(path,flag1,&base2,NULL);
            if(o<0)
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return o;
            }
            else
            {
                if(!S_ISDIR(base2->vn_mode))
                {
                    vput(base2);
                    dbg(DBG_PRINT, "(GRADING2B)\n");
                    return -ENOTDIR;
                }    
            }
            vnode_t *base1=curproc->p_cwd;
            curproc->p_cwd=base2;
            vput(base1);
            dbg(DBG_PRINT, "(GRADING2B)\n");;
            return 0;
}

/* Call the readdir fs_op on the given fd, filling in the given dirent_t*.
 * If the readdir fs_op is successful, it will return a positive value which
 * is the number of bytes copied to the dirent_t.  You need to increment the
 * file_t's f_pos by this amount.  As always, be aware of refcounts, check
 * the return value of the fget and the virtual function, and be sure the
 * virtual function exists (is not null) before calling it.
 *
 * Return either 0 or sizeof(dirent_t), or -errno.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        Invalid file descriptor fd.
 *      o ENOTDIR
 *        File descriptor does not refer to a directory.
 */
int
do_getdent(int fd, struct dirent *dirp)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_getdent");*/
        if(fd < 0 || fd >= NFILES || curproc->p_files[fd] == NULL)
        {   
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
        file_t *file_ptr = fget(fd);
        /*if(file_ptr==NULL)
        {
            dbg(DBG_PRINT, "(GRADING:544,do_getdent)\n");
            return -EBADF;
        }
        */
        if(file_ptr->f_vnode->vn_ops->readdir == NULL)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            fput(file_ptr);
            return -ENOTDIR;
        }
        int num_of_bytes_copied = file_ptr->f_vnode->vn_ops->readdir(file_ptr->f_vnode,file_ptr->f_pos,dirp);
        file_ptr->f_pos+=num_of_bytes_copied;
        /*check return value of fget & make sure virtual function exists is not full*/
        fput(file_ptr);
        if(num_of_bytes_copied>0)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            return sizeof(dirent_t);
        }
    dbg(DBG_PRINT, "(GRADING2B)\n");
    return 0;
}

/*
 * Modify f_pos according to offset and whence.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o EBADF
 *        fd is not an open file descriptor.
 *      o EINVAL
 *        whence is not one of SEEK_SET, SEEK_CUR, SEEK_END; or the resulting
 *        file offset would be negative.
 */
int
do_lseek(int fd, int offset, int whence)
{
        /*NOT_YET_IMPLEMENTED("VFS: do_lseek");*/
    if(fd < 0 || fd >= NFILES)
        {   
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return -EBADF;
        }
       file_t *file_ptr = fget(fd);
       int pos;
        if(file_ptr==NULL)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            return -EBADF;
        }
        if(whence==SEEK_SET)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            pos=offset;
        }
        else if(whence==SEEK_CUR)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            pos=file_ptr->f_pos+offset;
        }
        else if(whence==SEEK_END)
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            pos=file_ptr->f_vnode->vn_len+offset; /*file_ptr->f_vnode->vn_len*/
        }
        else
        {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            fput(file_ptr);
            return -EINVAL;
        }
         if(pos < 0) {
            dbg(DBG_PRINT, "(GRADING2B)\n");
            fput(file_ptr);
            return -EINVAL;
        }
        dbg(DBG_PRINT, "(GRADING2B)\n");
        file_ptr->f_pos=pos;
        fput(file_ptr);
        return pos;
}

/*
 * Find the vnode associated with the path, and call the stat() vnode operation.
 *
 * Error cases you must handle for this function at the VFS level:
 *      o ENOENT
 *        A component of path does not exist.
 *      o ENOTDIR
 *        A component of the path prefix of path is not a directory.
 *      o ENAMETOOLONG
 *        A component of path was too long.
 */
int
do_stat(const char *path, struct stat *buf)
{
       /* NOT_YET_IMPLEMENTED("VFS: do_stat");*/ 
        vnode_t *base1=NULL;        
        int op= open_namev(path,O_RDONLY,&base1,NULL);
         if(op<0)
            {
                dbg(DBG_PRINT, "(GRADING2B)\n");
                return op;
            }
        else
        {    
            KASSERT(NULL != base1->vn_ops->stat);
            dbg(DBG_PRINT, "(GRADING2A 3.e)\n");
                /*dbg(DBG_PRINT, "(GRADING2A 3.e)\n");*/
            int result=base1->vn_ops->stat(base1,buf);
            vput(base1);    
            return result;
        }
}  

#ifdef __MOUNTING__
/*
 * Implementing this function is not required and strongly discouraged unless
 * you are absolutely sure your Weenix is perfect.
 *
 * This is the syscall entry point into vfs for mounting. You will need to
 * create the fs_t struct and populate its fs_dev and fs_type fields before
 * calling vfs's mountfunc(). mountfunc() will use the fields you populated
 * in order to determine which underlying filesystem's mount function should
 * be run, then it will finish setting up the fs_t struct. At this point you
 * have a fully functioning file system, however it is not mounted on the
 * virtual file system, you will need to call vfs_mount to do this.
 *
 * There are lots of things which can go wrong here. Make sure you have good
 * error handling. Remember the fs_dev and fs_type buffers have limited size
 * so you should not write arbitrary length strings to them.
 */
int
do_mount(const char *source, const char *target, const char *type)
{
        NOT_YET_IMPLEMENTED("MOUNTING: do_mount");
        return -EINVAL;
}

/*
 * Implementing this function is not required and strongly discouraged unless
 * you are absolutley sure your Weenix is perfect.
 *
 * This function delegates all of the real work to vfs_umount. You should not worry
 * about freeing the fs_t struct here, that is done in vfs_umount. All this function
 * does is figure out which file system to pass to vfs_umount and do good error
 * checking.
 */
int
do_umount(const char *target)
{
        NOT_YET_IMPLEMENTED("MOUNTING: do_umount");
        return -EINVAL;
}
#endif
