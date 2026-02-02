;;; -*- Gerbil -*-
;;; © vyzo
;;; OS File Devices
(import :std/error
        :std/ffi
        ./error
        ./device
        ./fcntl)
(export #t)

(defstruct (FileDevice OSDevice)
  ((path :- :string)))

(def (open-file-device (path  : :string)
                       (flags : :fixnum)
                       (mode  : :fixnum))
  => FileDevice
  (let* ((flags
          (cond-expand
            (linux (fxior flags O_NONBLOCK O_CLOEXEC O_NOATIME))
            (else flags)))
         (fd (do-syscall (__open path flags mode)))
         (_
          (cond-expand
            ((not linux)
             (with-error (__close-fd fd)
               (fcntl-setfl! fd O_NONBLOCK)
               (fcntl-setfd! fd FD_CLOEXEC)))
            (else (void))))
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'file fd (file-raw-device-direction flags)))))
    (FileDevice raw fd direction path)))

(def (file-device-seek (dev : FileDevice) (pos : :integer) (whence : :fixnum))
  => :void
  (do-check-device-open file-device-seek dev
    (do-syscall (__lseek dev.fd pos whence))))

(def (file-device-sync (dev : FileDevice))
  => :void
  (do-check-device-open file-device-sync dev
    (do-syscall (__fsync dev.fd))))

(def (file-raw-device-direction (flags : :fixnum)) => :fixnum
  (cond
   ((fx= (fxand flags O_RDWR)   O_RDWR)
    DIRECTION-INOUT)
   ((fx= (fxand flags O_RDONLY) O_RDONLY)
    DIRECTION-IN)
   ((fx= (fxand flags O_WRONLY) O_WRONLY)
    DIRECTION-OUT)
   (else
    (raise-bad-argument file-raw-device-direction "direction control flags" flags))))

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/stat.h>"
           "<unistd.h>")
(C-declare ##<END-C
#ifndef _LARGEFILE64_SOURCE
#define _LARGEFILE64_SOURCE
#endif
END-C
)

(def-C-const
  SEEK_SET
  SEEK_CUR
  SEEK_END
  SEEK_DATA
  SEEK_HOLE)

(cond-expand
  (linux
   (def-C-const
     SEEK_DATA
     SEEK_HOLE)))

(def-C-syscall (__open (path  :- :string)
                       (flags :- :fixnum)
                       (mode  :- :fixnum))
  "open(___arg1, ___arg2, ___arg3)")

(def-C-syscall (__lseek (fd     :- :fixnum)
                        (offset :- :int64)
                        (whence :- :fixnum))
  "lseek(___arg1, ___arg2, ___arg3)")

(def-C-syscall (__fsync (fd : :- :fixnum))
  "fsync(___arg1)")
