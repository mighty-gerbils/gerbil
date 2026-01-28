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

(def DIRECTION-IN
  (: (macro-direction-in)
     :fixnum))
(def DIRECTION-OUT
  (: (macro-direction-out)
     :fixnum))
(def DIRECTION-INOUT
  (: (macro-direction-inout)
     :fixnum))

(defstruct OSDevice ((raw       :- :raw-device-port)
                     (fd        :- :fixnum)
                     (direction :- :fixnum)
                     (closed?   :- :boolean))
  print: (fd))

(def (__open-raw-device (fd        :- :fixnum)
                        (direction :- :fixnum)
                        (closed?   :- :boolean))
  => :raw-device-port
  (def (fail)
    (##fail-check-settings 1 open-raw-device direction id fd))
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
   (with-identifier (dev.closed? #'dev #'dev ".closed?")
     #'(if dev.closed?
         (raise-io-closed device-wait-input! "OS device closed")
         expr)))
  ((_ where dev expr rest ...)
   (do-check-device-open where dev (begin expr rest ...))))

;; TODO safer output range interface
(def (device-read (dev          : OSDevice)
                  (output       : :u8vector)
                  (output-start : :fixnum)
                  (output-end   : :fixnum))
  (do-check-device-open device-read dev
    (do-retry-nonblock
     (__read dev.fd output output-start (fx- output-end output-start))
     EAGAIN EWOULDBLOCK)))

;; TODO safer input range interface
(def (device-write (dev         : OSDevice)
                   (input       : :u8vector)
                   (input-start : :fixnum)
                   (input-end   : :fixnum))
  (do-check-device-open devic e-write dev
    (do-retry-nonblock
     (__write dev.fd input input-start (fx- input-end input-start))
     EAGAIN EWOULDBLOCK)))

(def (device-close (dev : OSDevice))
  => :void
  (unless dev.closed?
    (unwind-protect
      (close-port dev.raw)
      (set! dev.raw #f)
      (set! dev.closed? #t))))

(def (device-wait-input! (dev : OSDevice) (timeo #f))
  (do-check-device-open device-waite-input! dev
    (let (ioc (macro-raw-device-port-rdevice-condvar dev.raw))
      (##wait-for-io! ioc (__device-timeout timeo)))))

(def (device-wait-output! (dev : OSDevice) (timeo #f))
  (do-check-device-open device-wait-output! dev
    (let (ioc (macro-raw-device-port-wdevice-condvar dev.raw))
      (##wait-for-io! ioc (__device-timeout timeo)))))

(def (__device-timout timeo)
  (if timeo
    (timeout->abs-timeout->seconds timeo)
    #t))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<unistd.h>")

(def-C (__read (fd    :- :fixnum)
               (buf   :- :u8vector)
               (start :- :fixnum)
               (count :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(read(___INT(___ARG1), __U8VECTOR_AS(void*, ___ARG2) + ___INT(___ARG3), ___INT(___ARG4)))")

(def-C (__write (fd    :- :fixnum)
                (buf   :- :u8vector)
                (start :- :fixnum)
                (count :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(write(___INT(___ARG1), __U8VECTOR_AS(void*, ___ARG2) + ___INT(___ARG3), ___INT(___ARG4)))")
