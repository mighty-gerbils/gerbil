;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Devices
(import :std/error
        :std/ffi
        :std/time/timeout
        ./error)
(export #t)

;; _gambit#.scm
(extern namespace: #f
  macro-direction-in macro-direction-out macro-direction-inout
  macro-port-name
  macro-raw-device-port?
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-raw-device-port-specific
  macro-raw-device-port-id
  macro-raw-device-port-type)

(def DIRECTION-IN    #b01)
(def DIRECTION-OUT   #b10)
(def DIRECTION-INOUT #b11)

(defstruct OSDevice
  ((raw     :- :raw-device-port)
   ;; Note: a file descriptor is represented as a fixnum for the
   ;;       simple reason that it is physically impossible to overflow
   ;;       as you would run out of memory with that many file descriptors
   (fd      :- :fixnum)
   (dir     :- :fixnum))
  print: (fd))

(def (__open-raw-device (id        :- :symbol)
                        (fd        :- :fixnum)
                        (direction :- :fixnum))
  => :raw-device-port
  (: (##make-psettings
      direction '() '()
      (lambda ()
        (##fail-check-settings 1 __open-raw-device direction id fd))
      (lambda (psettings)
        (let (device
              (##os-device-open-raw-from-fd fd (##psettings->device-flags psettings)))
          (if (##fixnum? device)
            (##raise-os-exception #f device __open-raw-device direction id fd)
            (##make-raw-device-port direction device id [id fd] fd)))))
     :raw-device-port))

(defsyntax-case do-check-device-open ()
  ((_ where dev expr)
   (identifier? #'dev)
   (with-identifier (dev.dir #'dev #'dev ".dir")
     #'(if (fx= dev.dir 0)
         (raise-io-closed where "device closed")
         expr)))
  ((_ where dev expr rest ...)
   #'(do-check-device-open where dev (begin expr rest ...))))

(defsyntax-case do-check-device-direction ()
  ((_ where dev direction expr)
   (identifier? #'dev)
   (with-identifier (dev.dir #'dev #'dev ".dir")
     #'(if (fx= (fxand dev.dir direction)
                direction)
         expr
         (raise-io-closed where "device does not allow io" device: dev direction: dev.dir))))
  ((_ where dev direction expr rest ...)
   #'(do-check-device-direction where dev direction (begin expr rest ...))))

(defrule (do-check-device-input where dev expr rest ...)
  (do-check-device-direction where dev DIRECTION-IN expr rest ...))
(defrule (do-check-device-output where dev expr rest ...)
  (do-check-device-direction where dev DIRECTION-OUT expr rest ...))

;; TODO safer output range interface
(def (device-read (dev          : OSDevice)
                  (output       : :u8vector)
                  (output-start : :fixnum)
                  (output-end   : :fixnum))
  => :fixnum
  (do-check-device-input device-read dev
    (do-syscall
      (__read dev.fd output output-start (fx- output-end output-start))
      EAGAIN EWOULDBLOCK)))

;; TODO safer input range interface
(def (device-write (dev         : OSDevice)
                   (input       : :u8vector)
                   (input-start : :fixnum)
                   (input-end   : :fixnum))
  => :fixnum
  (do-check-device-output device-write dev
    (do-syscall
     (__write dev.fd input input-start (fx- input-end input-start))
     EAGAIN EWOULDBLOCK)))

(def (device-close (dev : OSDevice) (direction : :fixnum := DIRECTION-INOUT))
  => :void
  (unless (fx= (fxand dev.dir direction) 0)
    (set! dev.dir
      (fxand dev.dir (fxnot direction)))
    (when (fx= dev.dir 0)
      (unwind-protect
        (close-port dev.raw)
        (set! dev.raw #f)))))

(defrule (with-error-device-close dev body rest ...)
  (with-error (device-close dev)
    body rest ...))

(def (device-closed? (dev : OSDevice))
  => :boolean
  (fx= dev.dir 0))

(def (device-wait-input! (dev : OSDevice) (timeo : IOTimeout))
  (do-check-device-input device-wait-input! dev
    (let (ioc (macro-raw-device-port-rdevice-condvar dev.raw))
      (##wait-for-io! ioc (device-timeout timeo)))))

(def (device-wait-output! (dev : OSDevice) (timeo : IOTimeout))
  (do-check-device-output device-wait-output! dev
    (let (ioc (macro-raw-device-port-wdevice-condvar dev.raw))
      (##wait-for-io! ioc (device-timeout timeo)))))

(def (device-timeout (timeo : IOTimeout))
  (timeout->abs-timeout timeo #t))

(def (__close-fd (fd :- :fixnum))
  => :fixnum
  (do-syscall (__close fd)))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<unistd.h>")

(def-C-syscall (__read (fd    :- :fixnum)
                       (buf   :- :u8vector)
                       (start :- :fixnum)
                       (count :- :fixnum))
  "read(___arg1, (void*)(___arg2 + ___arg3), ___arg4)")

(def-C-syscall (__write (fd    :- :fixnum)
                        (buf   :- :u8vector)
                        (start :- :fixnum)
                        (count :- :fixnum))
  "write(___arg1, (void*)(___arg2 + ___arg3), ___arg4)")

(def-C-syscall (__close (fd    :- :fixnum))
  "close(___arg1)")
