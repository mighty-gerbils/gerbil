;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Client
(export #t)
(import :gerbil/gambit/foreign
        :std/error
        :std/sugar
        :std/iter
        :std/interface
        :std/io
        :std/io/socket/types
        :std/io/socket/basic
        :std/os/fd
        :std/net/address
        :std/misc/timeout
        ./interface
        ./libssl
        ./error)

(def (ssl-connect addr (timeo #f)
                  context: (context (default-client-ssl-context))
                  host: (host #f))
  (let* ((addr (inet-address addr))
         (host (or host (car addr)))
         (host (cond
                ((string? host)
                 host)
                ((ip4-address? host)
                 (ip4-address->string host))
                ((ip6-address? host)
                 (ip6-address->string host))
                (else
                 (error "unexpected host" host))))
         (deadline (make-timeout timeo #f))
         (sock (tcp-connect addr timeo))
         (bsock (interface-instance-object sock))
         (rsock (&basic-socket-sock bsock))
         (ssl (check-ptr (SSL_new context)))
         (_ (with-ssl-result (SSL_set_fd ssl (fd-e rsock))))
         (_ (with-ssl-result (SSL_set_host ssl host)))
         (sslsock (make-ssl-socket bsock ssl))
         (_ (set! (&basic-socket-timeo-in sslsock) deadline))
         (_ (set! (&basic-socket-timeo-out sslsock) deadline))
         (_ (try
             (ssl-client-handshake sslsock)
             (catch (e)
               (basic-socket-close  sslsock)
               (foreign-release! ssl)
               (raise e))))
         (_ (set! (&basic-socket-timeo-in sslsock) #f))
         (_ (set! (&basic-socket-timeo-out  sslsock) #f)))
    (SSLSocket sslsock)))

(def (ssl-client-handshake sock)
  (let ((rsock (&basic-socket-sock sock))
        (ssl (&ssl-socket-ssl sock)))
    (with-basic-socket-read-lock sock
      (let lp ()
        (let (result (SSL_connect ssl))
          (cond
           ((and (fixnum? result) (fx> result 0)) (void))
           ((eqv? result SSL_ERROR_WANT_READ)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-in rsock) (&basic-socket-timeo-in sock)))
              (if wait-result
                (lp)
                (raise-timeout 'ssl-connect "receive timeout"))))
           ((eqv? result SSL_ERROR_WANT_WRITE)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-out rsock) (&basic-socket-timeo-out sock)))
              (if wait-result
                (lp)
                (raise-timeout 'ssl-connect "receive timeout"))))
           (else
            (raise-ssl-error 'ssl-connect result))))))))

(def (default-client-ssl-context)
  (force +default-client-ssl-context+))

(def (insecure-client-ssl-context)
  (force +insecure-client-ssl-context+))

(def +default-client-ssl-context+
  (delay
    (check-ptr (make-client-ssl-context))))

(def +insecure-client-ssl-context+
  (delay
    (check-ptr (make-insecure-client-ssl-context))))

;;; Implementation
(defstruct (ssl-socket basic-socket) (ssl peer-cert)
  final: #t unchecked: #t
  constructor: :init!)

(defstruct ssl-socket-reader (sock)
  final: #t unchecked: #t)

(defstruct ssl-socket-writer (sock)
  final: #t unchecked: #t)

(defmethod {:init! ssl-socket}
  (lambda (self bsock ssl)
    (let (fields (##structure-length bsock))
      (for (i (in-range 1 (1- fields)))
        (##unchecked-structure-set!
         self
         (##unchecked-structure-ref bsock i stream-socket::t  #f)
         i ssl-socket::t #f)))
    (set! (&ssl-socket-ssl self) ssl)))

(defmethod {shutdown ssl-socket}
  (lambda (self dir)
    ;; there is no unidirectional shutdown in ssl sockets
    (ssl-socket::close self)))

(defmethod {close ssl-socket}
  (lambda (self)
    (with-basic-socket-write-lock self
      (unless (&basic-socket-closed? self)
        (let ((rsock (&basic-socket-sock self))
              (ssl (&ssl-socket-ssl self)))
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
        (basic-socket-close/lock self)))))

(defmethod {peer-certificate ssl-socket}
  (lambda (self)
    (or (&ssl-socket-peer-cert self)
        (let* ((ssl (&ssl-socket-ssl self))
               (cert (SSL_get_peer_certificate ssl)))
          (set! (&ssl-socket-peer-cert self) cert)
          cert))))

(defmethod {recv ssl-socket}
  (lambda (self output output-start output-end _)
    (with-basic-socket-read-lock self
      (when (&basic-socket-closed? self)
        (raise-io-closed-error 'ssl-socket-recv "socket input has been shutdown"))
      (let ((rsock (&basic-socket-sock self))
            (ssl (&ssl-socket-ssl self)))
        (let lp ()
          (let (result (SSL_read ssl output output-start output-end))
            (cond
             ((and (fixnum? result) (fx>= result 0)) result)
             ((eqv? result SSL_ERROR_WANT_READ)
              (let (wait-result
                    (basic-socket-wait-io! self (fd-io-in rsock) (&basic-socket-timeo-in self)))
                (if wait-result
                  (begin
                    (when (&basic-socket-closed? self)
                      (raise-io-closed-error 'ssl-socket-recv "socket input has been shutdown"))
                    (lp))
                  (raise-timeout 'ssl-socket-recv "receive timeout"))))
             ((eqv? result SSL_ERROR_WANT_WRITE)
              (let (wait-result
                    (basic-socket-wait-io! self (fd-io-out rsock) (&basic-socket-timeo-out self)))
                (if wait-result
                  (begin
                    (when (&basic-socket-closed? self)
                      (raise-io-closed-error 'ssl-socket-recv "socket input has been shutdown"))
                    (lp))
                  (raise-timeout 'ssl-socket-recv "receive timeout"))))
             (else
              (raise-ssl-error 'ssl-socket-recv result)))))))))

(defmethod {send ssl-socket}
  (lambda (self input input-start input-end _)
    (with-basic-socket-read-lock self
      (when (&basic-socket-closed? self)
        (raise-io-closed-error 'ssl-socket-send "socket output has been shutdown"))
      (let ((rsock (&basic-socket-sock self))
            (ssl   (&ssl-socket-ssl self)))
        (let lp ()
          (let (result (SSL_write ssl input input-start input-end))
            (cond
             ((and (fixnum? result) (fx> result 0)) result)
             ((eqv? result SSL_ERROR_WANT_READ)
              (let (wait-result
                    (basic-socket-wait-io! self (fd-io-in rsock) (&basic-socket-timeo-in self)))
                (if wait-result
                  (begin
                    (when (&basic-socket-closed? self)
                      (raise-io-closed-error 'ssl-socket-send "socket input has been shutdown"))
                    (lp))
                  (raise-timeout 'ssl-socket-send "receive timeout"))))
             ((eqv? result SSL_ERROR_WANT_WRITE)
              (let (wait-result
                    (basic-socket-wait-io! self (fd-io-out rsock) (&basic-socket-timeo-out self)))
                (if wait-result
                  (begin
                    (when (&basic-socket-closed? self)
                      (raise-io-closed-error 'ssl-socket-send "socket input has been shutdown"))
                    (lp))
                  (raise-timeout 'ssl-socket-send "receive timeout"))))
             (else
              (raise-ssl-error 'ssl-socket-send result)))))))))


(defmethod {reader ssl-socket}
  (lambda (self)
    (Reader (make-ssl-socket-reader self))))

(defmethod {writer ssl-socket}
  (lambda (self)
    (Writer (make-ssl-socket-writer self))))

(defmethod {read ssl-socket-reader}
  (lambda (self output output-start output-end input-need)
    (let (sock (&ssl-socket-reader-sock self))
      (let lp ((output-start output-start) (input-need input-need) (result 0))
        (if (fx< output-start output-end)
          (let (read (ssl-socket::recv sock output output-start output-end 0))
            (cond
             ((fx= read 0)
              (if (fx> input-need result)
                (raise-io-error 'ssl-socket-read "premature end of input" input-need)
                result))
             ((fx> read input-need)
              (fx+ result read))
             (else
              (lp (fx+ output-start read) (fx- input-need read) (fx+ result read)))))
          result)))))

(defmethod {close ssl-socket-reader}
  (lambda (self)
    (ssl-socket::shutdown (&ssl-socket-reader-sock self) 'in)))

(defmethod {write ssl-socket-writer}
  (lambda (self input input-start input-end)
    (let (sock (&ssl-socket-writer-sock self))
      (let lp ((input-start input-start) (result 0))
        (if (fx< input-start input-end)
          (let (wrote (ssl-socket::send sock input input-start input-end 0))
            (lp (fx+ input-start wrote) (fx+ result wrote)))
          result)))))

(defmethod {close ssl-socket-writer}
  (lambda (self)
    (ssl-socket::shutdown (&ssl-socket-writer-sock self) 'out)))
