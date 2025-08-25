;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL socket implementation
(export #t)
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/iter
        :std/io
        :std/io/socket/types
        :std/io/socket/basic
        :std/os/fd
        ./libssl
        ./error
        ./interface)

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
    (ssl-socket::__close self))
  interface: StreamSocket)

(defmethod {__close ssl-socket}
  (lambda (self)
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
        (set! self.ssl #f)))))

(defmethod {close ssl-socket}
  ssl-socket::__close
  interface: Closer)

(defmethod {peer-certificate ssl-socket}
  (lambda (self)
    (or self.peer-cert
        (let* ((ssl self.ssl)
               (cert (SSL_get_peer_certificate ssl)))
          (set! self.peer-cert cert)
          cert)))
  interface: TLS)

(defmethod {__recv ssl-socket}
  (lambda (self output output-start output-end _)
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
              (raise-ssl-error ssl-socket-recv result)))))))))

(defmethod {recv ssl-socket}
  ssl-socket::__recv
  interface: StreamSocket)

(defmethod {__send ssl-socket}
  (lambda (self input input-start input-end _)
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
              (raise-ssl-error ssl-socket-send result)))))))))

(defmethod {send ssl-socket}
  ssl-socket::__send
  interface: StreamSocket)

(defmethod {reader ssl-socket}
  (lambda (self)
    (Reader (make-ssl-socket-reader self)))
  interface: StreamSocket)

(defmethod {writer ssl-socket}
  (lambda (self)
    (Writer (make-ssl-socket-writer self)))
  interface: StreamSocket)

(defmethod {read ssl-socket-reader}
  (lambda (self output output-start output-end input-need)
    (let (sock self.sock)
      (let lp ((output-start output-start) (input-need input-need) ((result :- :fixnum) 0))
        => :fixnum
        (if (fx< output-start output-end)
          (let (read (ssl-socket::__recv sock output output-start output-end 0))
            (cond
             ((fx= read 0)
              (if (fx> input-need result)
                (raise-premature-end-of-input ssl-socket-read input-need)
                result))
             ((fx> read input-need)
              (fx+ result read))
             (else
              (lp (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
          result))))
  interface: Reader)

(defmethod {close ssl-socket-reader}
  (lambda (self)
    (ssl-socket::__close self.sock))
  interface: Closer)

(defmethod {write ssl-socket-writer}
  (lambda (self input input-start input-end)
    (let (sock self.sock)
      (let lp ((input-start input-start) ((result :- :fixnum) 0))
        => :fixnum
        (if (fx< input-start input-end)
          (let (wrote (ssl-socket::__send sock input input-start input-end 0))
            (lp (fx+ input-start wrote) (fx+ result wrote)))
          result))))
  interface: Writer)

(defmethod {close ssl-socket-writer}
  (lambda (self)
    (ssl-socket::__close self.sock))
  interface: Closer)
