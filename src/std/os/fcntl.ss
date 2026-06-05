;;; -*- Gerbil -*-
;;; © vyzo
;;; OS File Control(import :std/ffi
(import :std/ffi
        ./error
        ./device)
(export #t)

(def (fcntl-getfl (fd : :fixnum))
  => :fixnum
  (do-syscall (__fcntl1 fd F_GETFL)))

(def (fcntl-setfl! (fd : :fixnum) (flags : :fixnum))
  => :void
  (let* ((current (fcntl-getfl fd))
         (flags   (fxior flags current)))
    (do-syscall (__fcntl2 fd F_SETFL flags))))

(def (fcntl-getfd (fd : :fixnum))
  => :fixnum
  (do-syscall (__fcntl1 fd F_GETFD)))

(def (fcntl-setfd! (fd : :fixnum) (flags : :fixnum))
  => :void
  (let* ((current (fcntl-getfd fd))
         (flags   (fxior flags current)))
    (do-syscall (__fcntl2 fd F_SETFD flags))))

(C-ffi-macrology)
(C-include  "<unistd.h>"
            "<fcntl.h>"
            "<errno.h>")

(def-C-syscall (__fcntl1 (fd  :- :fixnum)
                         (cmd :- :fixnum))
  "fcntl(___arg1, ___arg2)")

(def-C-syscall (__fcntl2 (fd  :- :fixnum)
                         (cmd :- :fixnum)
                         (arg :- :fixnum))
  "fcntl(___arg1, ___arg2, ___arg3)")

(def-C-const*
  F_GETFL
  F_SETFL
  F_GETFD
  F_SETFD
  F_DUPFD
  F_DUPFD_CLOEXEC
  F_SETLK
  F_SETLKW
  F_GETLK
  F_OFD_SETLK
  F_OFD_SETLKW
  F_OFD_GETLK
  F_GETOWN
  F_SETOWN
  F_GETOWN_EX
  F_SETOWN_EX
  F_GETSIG
  F_SETSIG
  F_SETLEASE
  F_GETLEASE
  F_NOTIFY
  F_SETPIPE_SZ
  F_GETPIPE_SZ
  F_ADD_SEALS
  F_GET_SEALS
  F_GET_RW_HINT
  F_SET_RW_HINT
  F_GET_FILE_RW_HINT
  F_SET_FILE_RW_HINT

  F_RDLCK
  F_WRLCK
  F_UNLCK

  F_OWNER_TID
  F_OWNER_PID
  F_OWNER_PGRP

  DN_ACCESS
  DN_MODIFY
  DN_CREATE
  DN_DELETE
  DN_RENAME
  DN_ATTRIB

  F_SEAL_SEAL
  F_SEAL_SHRINK
  F_SEAL_GROW
  F_SEAL_WRITE
  F_SEAL_FUTURE_WRITE

  RWH_WRITE_LIFE_NOT_SET
  RWH_WRITE_LIFE_NONE
  RWH_WRITE_LIFE_SHORT
  RWH_WRITE_LIFE_MEDIUM
  RWH_WRITE_LIFE_LONG
  RWH_WRITE_LIFE_EXTREME

  O_APPEND
  O_ASYNC
  O_CLOEXEC
  O_CREAT
  O_DIRECT
  O_DIRECTORY
  O_DSYNC
  O_EXCL
  O_LARGEFILE
  O_NOATIME
  O_NOCTTY
  O_NOFOLLOW
  O_NONBLOCK
  O_NDELAY
  O_PATH
  O_SYNC
  O_TMPFILE
  O_TRUNC

  S_IRWXU
  S_IRUSR
  S_IWUSR
  S_IXUSR
  S_IRWXG
  S_IRGRP
  S_IWGRP
  S_IXGRP
  S_IRWXO
  S_IROTH
  S_IWOTH
  S_IXOTH
  S_ISUID
  S_ISGID
  S_ISVTX)
