;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Server
(export #t)
(import :gerbil/gambit/foreign
        :std/error
        :std/sugar
        :std/iter
        :std/io
        :std/io/socket/types
        :std/io/socket/server
        :std/io/socket/basic
        :std/os/fd
        :std/misc/timeout
        ./interface
        ./libssl
        ./error
        ./socket)

(def ssl-server-handshake-timeout 60)

(def (ssl-listen addr
                 context: context ; SSL_CTX; see make-server-ssl-context in ./libssl
                 backlog: (backlog default-server-backlog)
                 sockopts: (sockopts default-server-sockopts))
  (let* ((bsock (tcp-listen addr backlog: backlog sockopts: sockopts))
         (sslsock (make-ssl-server-socket bsock context)))
    (ServerSocket sslsock)))

(defstruct (ssl-server-socket basic-server-socket) (ctx)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! ssl-server-socket}
  (lambda (self bsock ctx)
    (let (fields (##structure-length bsock))
      (for (i (in-range 1 fields))
        (##unchecked-structure-set!
         self
         (##unchecked-structure-ref bsock i stream-socket::t  #f)
         i ssl-socket::t #f)))
    (set! (&ssl-server-socket-ctx self) ctx)))

(defmethod {accept ssl-server-socket}
  (lambda (self)
    (let (bsock (server-socket-accept self))
      (try
       (let* ((rsock (&basic-socket-sock bsock))
              (ctx (&ssl-server-socket-ctx self))
              (ssl (SSL_new ctx)))
         (try
          (let* ((_ (with-ssl-result (SSL_set_fd ssl (fd-e rsock))))
                 (sslsock (make-ssl-socket bsock ssl))
                 (deadline (make-timeout ssl-server-handshake-timeout #f))
                 (_ (set! (&basic-socket-timeo-in sslsock) deadline))
                 (_ (set! (&basic-socket-timeo-out sslsock) deadline)))
            (ssl-server-handshake sslsock)
            (SSLSocket sslsock))
          (catch (e)
            (foreign-release! ssl)
            (raise e))))
       (catch (e)
         (StreamSocket-close bsock)
         (raise e))))))

(def (ssl-server-handshake sock)
  (let ((rsock (&basic-socket-sock sock))
        (ssl (&ssl-socket-ssl sock)))
    (with-basic-socket-read-lock sock
      (let lp ()
        (let (result (SSL_accept ssl))
          (cond
           ((and (fixnum? result) (fx> result 0)) (void))
           ((eqv? result SSL_ERROR_WANT_READ)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-in rsock) (&basic-socket-timeo-in sock)))
              (if wait-result
                (lp)
                (raise-timeout 'ssl-accept "receive timeout"))))
           ((eqv? result SSL_ERROR_WANT_WRITE)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-out rsock) (&basic-socket-timeo-out sock)))
              (if wait-result
                (lp)
                (raise-timeout 'ssl-accept "receive timeout"))))
           (else
            (raise-ssl-error 'ssl-accept result))))))))
