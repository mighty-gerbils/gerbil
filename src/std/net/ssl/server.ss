;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Server
(export #t)
(import :gerbil/gambit/foreign
        :std/error
        :std/sugar
        :std/iter
        :std/interface
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
         (sslsock (make-ssl-server-socket (&interface-instance-object bsock) context)))
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
         (##unchecked-structure-ref bsock i basic-server-socket::t  #f)
         i ssl-server-socket::t #f)))
    (set! (&ssl-server-socket-ctx self) ctx)))

(defmethod {accept ssl-server-socket}
  (lambda (self)
    (let (clisock (server-socket-accept self))
      (try
       (ssl-server-upgrade clisock (&ssl-server-socket-ctx self))
       (catch (e)
         (StreamSocket-close clisock)
         (raise e))))))

(def (ssl-server-upgrade clisock ctx)
  (let* ((bsock (&interface-instance-object clisock))
         (rsock (&basic-socket-sock bsock))
         (ssl (check-ptr (SSL_new ctx)))
         (_ (with-ssl-result (SSL_set_fd ssl (fd-e rsock))))
         (sslsock (make-ssl-socket bsock ssl))
         (deadline (make-timeout ssl-server-handshake-timeout #f))
         (_ (set! (&basic-socket-timeo-in sslsock) deadline))
         (_ (set! (&basic-socket-timeo-out sslsock) deadline)))
    (try
     (ssl-server-handshake sslsock)
     (catch (e)
       (foreign-release! ssl)
       (raise e)))
    (set! (&basic-socket-timeo-in sslsock) #f)
    (set! (&basic-socket-timeo-out sslsock) #f)
    (StreamSocket sslsock)))

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
