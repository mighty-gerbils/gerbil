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

(defrule (basic-socket-get-address sock where getf setf getname)
  (let (bsock sock)
    (using (bsock :- basic-socket)
      (cond
       ((getf bsock))
       (else
        (with-basic-socket-read-lock bsock
          (when bsock.closed?
            (raise-io-error where "socket is closed"))
          (let* ((sockaddr (getname bsock.sock (make-socket-address bsock.domain)))
                 (addr (socket-address->address sockaddr)))
            (setf bsock addr)
            addr)))))))

(def (basic-socket-wait-io! bsock io timeo)
  ;; relinquish read lock before waiting for io so that another thread can close the socket
  ;; precondition: caller holds a read lock
  (using (bsock :- basic-socket)
    (let (rw bsock.lock)
      (rwlock-read-unlock! rw)
      (let (result
            (with-catch (lambda (e) (rwlock-read-lock! rw) (raise e))
                        (cut &wait-io! io timeo)))
        (rwlock-read-lock! rw)
        result))))

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
  (using (bsock :- basic-socket)
    (with-basic-socket-read-lock bsock
      (when bsock.closed?
        (raise-io-closed basic-socket-getsockopt "socket is closed"))
      (socket-getsockopt bsock.sock level opt))))

(def (basic-socket-setsockopt bsock level opt val)
  (using (bsock :- basic-socket)
    (with-basic-socket-read-lock bsock
      (when bsock.closed?
        (raise-io-closed basic-socket-setsockopt "socket is closed"))
      (socket-setsockopt bsock.sock level opt val))))

(def (basic-socket-close bsock)
  (with-basic-socket-write-lock bsock
    (basic-socket-close/lock bsock)))

(def (basic-socket-close/lock bsock)
  (using (bsock :- basic-socket)
    (unless bsock.closed?
      (set! bsock.closed? #t)
      (socket-close bsock.sock))))
