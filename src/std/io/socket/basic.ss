;;; -*- Gerbil -*-
;;; © vyzo
;;; basic socket functionality
(import :std/error
        :std/os/device
        :std/os/socket
        :std/os/sockaddr
        :std/os/sockopt
        :std/net/address/types
        :std/sync/rwlock
        ./types)
(export #t)

;; PRECONDITION: caller holds read lock
;; relinquish read lock before waiting for io
;; so that another thread can close the socket
(defsyntax-case do-basic-socket-wait-io! ()
  ((_ sock mode)
   (with-identifiers ((sock.dev   #'sock #'sock ".dev")
                      (sock.timeo #'sock #'sock ".timeo-" #'mode)
                      (sock.lock  #'sock #'sock ".lock")
                      (wait-io!   #'sock "device-wait-" #'mode "put!"))
     #'(do-with-rwlock sock.lock
         (wait-io! sock.dev sock.timeo)
         rwlock-read-unlock!
         rwlock-read-lock!))))

;; PRECONDITION: caller holds read lock
(def (__basic-socket-wait-input! (sock :- basic-socket))
  (do-basic-socket-wait-io! sock in))

;; PRECONDITION: caller holds read lock
(def (__basic-socket-wait-output! (sock :- basic-socket))
  (do-basic-socket-wait-io! sock out))

(def (basic-socket-local-address (sock : basic-socket))
  => Address
  (do-with-write-lock sock.lock
    (cond
     (sock.local)
     (else
      (let (addr (sockaddr->address (socket-device-getsockname sock.dev)))
        (set! sock.local addr)
        addr)))))

(def (basic-socket-peer-address (sock : basic-socket))
  (do-with-write-lock sock.lock
    (cond
     (sock.remote)
     (else
      (let (addr (sockaddr->address (socket-device-getpeername sock.dev)))
        (set! sock.remote addr)
        addr)))))

(def (basic-socket-getsockopt (sock : basic-socket) (level : :fixnum) (opt : :fixnum))
  (do-with-read-lock sock.lock
    (socket-device-getsockopt sock.dev level opt)))

(def (basic-socket-setsockopt (sock : basic-socket) (level : :fixnum) (opt : :fixnum) val)
  (do-with-write-lock sock.lock
    (socket-device-setsockopt sock.dev level opt val)))

(def (basic-socket-set-input-timeout! (sock : basic-socket) (timeo : Timeout))
  (do-with-write-lock sock.lock
    (do-check-device-input sock.dev
      (set! sock.timeo-in timeo))))

(def (basic-socket-set-output-timeout! (sock : basic-socket) (timeo : Timeout))
  (do-with-write-lock sock.lock
    (do-check-device-output sock.dev
      (set! sock.timeo-out timeo))))

(def (basic-socket-close (sock : basic-socket))
  (do-with-write-lock sock.lock
    (when sock.local
      (address-discard! sock.local)
      (set! sock.local #f))
    (when sock.remote
      (address-discard! sock.remote)
      (set! sock.remote #f))
    (device-close sock.dev)))
