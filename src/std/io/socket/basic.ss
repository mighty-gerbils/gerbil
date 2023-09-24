;;; -*- Gerbil -*-
;;; © vyzo
;;; basic socket functionality
(import :std/sugar
        :std/error
        :std/os/socket
        :std/misc/rwlock
        :std/event
        ./types)
(export #t)

(defrule (with-basic-socket-read-lock bsock body ...)
  (with-read-lock (&basic-socket-lock bsock)
    (lambda () body ...)))

(defrule (with-basic-socket-write-lock bsock body ...)
  (with-write-lock (&basic-socket-lock bsock)
    (lambda () body ...)))

(defrule (basic-socket-get-address bsock where getf setf getname)
  (cond
   ((getf bsock))
   (else
    (with-basic-socket-read-lock bsock
      (when (&basic-socket-closed? bsock)
        (raise-io-error where "socket is closed"))
      (let* ((sockaddr
              (getname (&basic-socket-sock bsock)
                       (make-socket-address (&basic-socket-domain bsock))))
             (addr (socket-address->address sockaddr)))
        (setf bsock addr)
        addr)))))

(def (basic-socket-wait-io! bsock io timeo)
  ;; relinquish read lock before waiting for io so that another thread can close the socket
  ;; precondition: caller holds a read lock
  (let (rw (&basic-socket-lock bsock))
    (rwlock-read-unlock! rw)
    (let (result
          (with-catch (lambda (e) (rwlock-read-lock! rw) (raise e))
            (cut &wait-io! io timeo)))
      (rwlock-read-lock! rw)
      result)))

(def (basic-socket-local-address bsock)
  (basic-socket-get-address bsock basic-socket-local-address
                            &basic-socket-laddr
                            &basic-socket-laddr-set!
                            socket-getsockname))

(def (basic-socket-peer-address bsock)
  (basic-socket-get-address bsock basic-socket-peer-address
                            &basic-socket-raddr
                            &basic-socket-raddr-set!
                            socket-getpeername))

(def (basic-socket-getsockopt bsock level opt)
  (with-basic-socket-read-lock bsock
    (when (&basic-socket-closed? bsock)
      (raise-io-error basic-socket-getsockopt "socket is closed"))
    (socket-getsockopt (&basic-socket-sock bsock) level opt)))

(def (basic-socket-setsockopt bsock level opt val)
  (with-basic-socket-read-lock bsock
    (when (&basic-socket-closed? bsock)
      (raise-io-error basic-socket-setsockopt "socket is closed"))
    (socket-setsockopt (&basic-socket-sock bsock) level opt val)))

(def (basic-socket-close bsock)
  (with-basic-socket-write-lock bsock
    (basic-socket-close/lock bsock)))

(def (basic-socket-close/lock bsock)
  (unless (&basic-socket-closed? bsock)
    (set! (&basic-socket-closed? bsock) #t)
    (socket-close (&basic-socket-sock bsock))))
