;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket implementation
(export #t)
(import :gerbil/gambit
        :std/error
        :std/contract
        :std/sugar
        :std/iter
        :std/io
        :std/io/socket/types
        :std/io/socket/basic
        :std/os/fd
        ./libssl
        ./error)

(defstruct (ssl-socket basic-socket) (ssl peer-cert)
  final: #t 
  constructor: :init!)

(defstruct ssl-socket-reader (sock)
  final: #t )

(defstruct ssl-socket-writer (sock)
  final: #t )

(defmethod {:init! ssl-socket}
  (lambda (self bsock ssl)
    (using (self :-  ssl-socket)
      (let (fields (##structure-length bsock))
        (for (i (in-range 1 (1- fields)))
          (##unchecked-structure-set!
           self
           (##unchecked-structure-ref bsock i stream-socket::t  #f)
           i ssl-socket::t #f)))
      (set! self.ssl ssl))))

(defmethod {shutdown ssl-socket}
  (lambda (self dir)
    ;; there is no unidirectional shutdown in ssl sockets
    (ssl-socket::close self)))

(defmethod {close ssl-socket}
  (lambda (self)
    (using (self :-  ssl-socket)
      (with-basic-socket-write-lock self
        (unless self.closed?
          (try
           (let ((rsock self.sock)
                 (ssl self.ssl))
             (let lp ()
               (let (result (SSL_shutdown ssl))
                 (cond
                  ((and (fixnum? result) (fx> result 0)) (void))
                  ((eqv? result SSL_ERROR_WANT_READ)
                   (basic-socket-wait-io! self (fd-io-in rsock) #f)
                   (lp))
                  ((eqv? result SSL_ERROR_WANT_WRITE)
                   (basic-socket-wait-io! self (fd-io-out rsock) #f)
                   (lp))))))
           (catch (e) (void)))
          (basic-socket-close/lock self)
          (foreign-release! self.ssl)
          (set! self.ssl #f))))))

(defmethod {peer-certificate ssl-socket}
  (lambda (self)
    (using (self :-  ssl-socket)
      (or self.peer-cert
          (let* ((ssl self.ssl)
                 (cert (SSL_get_peer_certificate ssl)))
            (set! self.peer-cert cert)
            cert)))))

(defmethod {recv ssl-socket}
  (lambda (self output output-start output-end _)
    (using (self :-  ssl-socket)
      (with-basic-socket-read-lock self
        (let ((rsock self.sock)
              (ssl self.ssl))
          (let lp ()
            (when self.closed?
              (raise-io-closed ssl-socket-recv "socket input has been shutdown"))
            (let (result (SSL_read ssl output output-start output-end))
              (cond
               ((and (fixnum? result) (fx>= result 0)) result)
               ((eqv? result SSL_ERROR_WANT_READ)
                (let (wait-result
                      (basic-socket-wait-io! self (fd-io-in rsock) self.timeo-in))
                  (if wait-result
                    (lp)
                    (raise-timeout ssl-socket-recv "receive timeout"))))
               ((eqv? result SSL_ERROR_WANT_WRITE)
                (let (wait-result
                      (basic-socket-wait-io! self (fd-io-out rsock) self.timeo-out))
                  (if wait-result
                    (lp)
                    (raise-timeout ssl-socket-recv "receive timeout"))))
               (else
                (raise-ssl-error ssl-socket-recv result))))))))))

(defmethod {send ssl-socket}
  (lambda (self input input-start input-end _)
    (using (self :-  ssl-socket)
      (with-basic-socket-read-lock self
        (let ((rsock self.sock)
              (ssl   self.ssl))
          (let lp ()
            (when self.closed?
              (raise-io-closed ssl-socket-send "socket output has been shutdown"))
            (let (result (SSL_write ssl input input-start input-end))
              (cond
               ((and (fixnum? result) (fx> result 0)) result)
               ((eqv? result SSL_ERROR_WANT_READ)
                (let (wait-result (basic-socket-wait-io! self (fd-io-in rsock) self.timeo-in))
                  (if wait-result
                    (lp)
                    (raise-timeout ssl-socket-send "receive timeout"))))
               ((eqv? result SSL_ERROR_WANT_WRITE)
                (let (wait-result (basic-socket-wait-io! self (fd-io-out rsock) self.timeo-out))
                  (if wait-result
                    (lp)
                    (raise-timeout ssl-socket-send "receive timeout"))))
               (else
                (raise-ssl-error ssl-socket-send result))))))))))


(defmethod {reader ssl-socket}
  (lambda (self)
    (Reader (make-ssl-socket-reader self))))

(defmethod {writer ssl-socket}
  (lambda (self)
    (Writer (make-ssl-socket-writer self))))

(defmethod {read ssl-socket-reader}
  (lambda (self output output-start output-end input-need)
    (using (self :- ssl-socket-reader)
      (let (sock self.sock)
        (let lp ((output-start output-start) (input-need input-need) (result 0))
          (if (fx< output-start output-end)
            (let (read (ssl-socket::recv sock output output-start output-end 0))
              (cond
               ((fx= read 0)
                (if (fx> input-need result)
                  (raise-premature-end-of-input ssl-socket-read input-need)
                  result))
               ((fx> read input-need)
                (fx+ result read))
               (else
                (lp (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
            result))))))

(defmethod {close ssl-socket-reader}
  (lambda (self)
    (using (self :- ssl-socket-reader)
      (ssl-socket::shutdown self.sock 'in))))

(defmethod {write ssl-socket-writer}
  (lambda (self input input-start input-end)
    (using (self :- ssl-socket-writer)
      (let (sock self.sock)
        (let lp ((input-start input-start) (result 0))
          (if (fx< input-start input-end)
            (let (wrote (ssl-socket::send sock input input-start input-end 0))
              (lp (fx+ input-start wrote) (fx+ result wrote)))
            result))))))

(defmethod {close ssl-socket-writer}
  (lambda (self)
    (using (self :- ssl-socket-writer)
      (ssl-socket::shutdown self.sock 'out))))
