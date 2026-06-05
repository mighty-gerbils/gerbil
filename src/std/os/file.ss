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
  ((path :- :string))
  print: (path))

(def (open-file-device (path  : :string)
                       (flags : :fixnum)
                       (mode  : :fixnum))
  => FileDevice
  (let* ((flags
          (cond-expand
            (linux (fxior flags O_NONBLOCK O_CLOEXEC O_NOATIME))
            (else flags)))
         (fd (do-syscall (__open (string->c-string path) flags mode)))
         (_
          (cond-expand
            ((not linux)
             (with-error (__close-fd fd)
               (fcntl-setfl! fd O_NONBLOCK)
               (fcntl-setfd! fd FD_CLOEXEC)))
            (else (void))))
         (dir (file-raw-device-direction flags))
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'file fd dir))))
    (FileDevice raw fd dir path)))

(def (file-device-seek (dev : FileDevice) (pos : :integer) (whence : :fixnum))
  => :integer
  (do-check-device-open file-device-seek dev
    (: (do-syscall64 (__lseek dev.fd pos whence))
       :integer)))

(def (file-device-sync (dev : FileDevice))
  => :fixnum
  (do-check-device-open file-device-sync dev
    (do-syscall (__fsync dev.fd))))

(def (file-raw-device-direction (flags : :fixnum))
  => :fixnum
  (let (dir (fxand flags #b11))
    (cond
     ((fx= dir O_RDWR)
      DIRECTION-INOUT)
     ((fx= dir O_RDONLY)
      DIRECTION-IN)
     ((fx= dir O_WRONLY)
      DIRECTION-OUT)
     (else
      (raise-bad-argument file-raw-device-direction "direction control flags" flags)))))

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/stat.h>"
           "<unistd.h>"
           "<fcntl.h>"
           "<errno.h>")

(def-C-const*
  O_RDONLY
  O_WRONLY
  O_RDWR
  SEEK_SET
  SEEK_CUR
  SEEK_END)

(cond-expand
  (linux
   (def-C-const*
     SEEK_DATA
     SEEK_HOLE)))

(def-C-syscall (__open (path  :- :u8vector)
                       (flags :- :fixnum)
                       (mode  :- :fixnum))
  "open(___arg1, ___arg2, ___arg3)")

(def-C-lambda (__lseek (fd     : int)
                  (offset : int64)
                  (whence : int))
  => int64
  "___result = ({off_t _r = lseek(___arg1, ___arg2, ___arg3); (_r<0) ? (-errno) : _r;});")

(def-C-syscall (__fsync (fd :- :fixnum))
  "fsync(___arg1)")
