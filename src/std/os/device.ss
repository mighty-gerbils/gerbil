;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Devices
(import :std/ffi
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
  (def (fail)
    (##fail-check-settings 1 __open-raw-device direction id fd))
  (: (##make-psettings
      direction '() '() fail
      (lambda (psettings)
        (let (device
              (##os-device-open-raw-from-fd fd (##psettings->device-flags psettings)))
          (if (##fixnum? device)
            (##raise-os-exception #f device open-raw-device direction id fd)
            (##make-raw-device-port direction device id [id fd] fd)))))
     :raw-device-port))

(defsyntax-case do-check-device-open ()
  ((_ where dev expr)
   (identifier? #'dev)
   (with-identifier (dev.dir #'dev #'dev ".dir")
     #'(if (fx= dev.dir 0)
         (raise-io-closed where "OS device closed")
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
      (fxand dev.dir (fxnot how)))
    (when (fx= dev.dir 0)
      (unwind-protect
        (close-port dev.raw)
        (set! dev.raw #f)))))

(defrule (with-error-device-close sock body rest ...)
  (with-error (device-close body)
    body rest ...))

(def (device-closed? (dev : OSDevice))
  => :boolean
  (fx= dev.dir 0))

(def (device-wait-input! (dev : OSDevice) (timeo : Timeout))
  (do-check-device-input device-wait-input! dev
    (let (ioc (macro-raw-device-port-rdevice-condvar dev.raw))
      (##wait-for-io! ioc (__device-timeout timeo)))))

(def (device-wait-output! (dev : OSDevice) (timeo : Timeout))
  (do-check-device-output device-wait-output! dev
    (let (ioc (macro-raw-device-port-wdevice-condvar dev.raw))
      (##wait-for-io! ioc (__device-timeout timeo)))))

(def (__device-timout timeo)
  (if timeo
    (timeout->abs-timeout->seconds timeo)
    #t))

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
  "read(___arg1, (void*)(___arg2 + ___arg3 ), ___arg4)")

(def-C (__write (fd    :- :fixnum)
                (buf   :- :u8vector)
                (start :- :fixnum)
                (count :- :fixnum))
  => :fixnum
  "write(___arg1, (void*)(___arg2 + ___arg3), ___arg4)")

(def-C (__close (fd    :- :fixnum))
  => :fixnum
  "close(___arg1)")

#;(def-C-code (__read (fd    :- :fixnum)
                    (buf   :- :u8vector)
                    (start :- :fixnum)
                    (count :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(read(___INT(___ARG1), __U8VECTOR_AS(void*, ___ARG2) + ___INT(___ARG3), ___INT(___ARG4)))")

#;(def-C-code (__write (fd    :- :u)
                     (buf   :- :u8vector)
                     (start :- :fixnum)
                     (count :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(write(___INT(___ARG1), __U8VECTOR_AS(void*, ___ARG2) + ___INT(___ARG3), ___INT(___ARG4)))")

#;(def-C-code (__close (fd    :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(close(___INT(___ARG1)))")
