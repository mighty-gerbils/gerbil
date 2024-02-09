;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Server
(export #t)
(import :gerbil/gambit
        :std/error
        :std/contract
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
  final: #t 
  constructor: :init!)

(defmethod {:init! ssl-server-socket}
  (lambda (self bsock ctx)
    (using (self :- ssl-server-socket)
      (let (fields (##structure-length bsock))
        (for (i (in-range 1 fields))
          (##unchecked-structure-set!
           self
           (##unchecked-structure-ref bsock i basic-server-socket::t  #f)
           i ssl-server-socket::t #f)))
      (set! self.ctx ctx))))

(defmethod {accept ssl-server-socket}
  (lambda (self)
    (using ((self :- ssl-server-socket)
            (clisock (server-socket-accept self) :- StreamSocket))
      (try
       (ssl-server-upgrade clisock self.ctx)
       (catch (e)
         (clisock.close)
         (raise e))))))

(def (ssl-server-upgrade clisock ctx)
  (using (bsock (&interface-instance-object clisock) :- basic-socket)
    (let* ((rsock bsock.sock)
           (ssl (check-ptr (SSL_new ctx)))
           (_ (with-ssl-result (SSL_set_fd ssl (fd-e rsock))))
           (sslsock (make-ssl-socket bsock ssl))
           (deadline (make-timeout ssl-server-handshake-timeout #f)))
      (using (sslsock :- ssl-socket)
        (set! sslsock.timeo-in deadline)
        (set! sslsock.timeo-out deadline)
        (try
         (ssl-server-handshake sslsock)
         (catch (e)
           (foreign-release! ssl)
           (raise e)))
        (set! sslsock.timeo-in #f)
        (set! sslsock.timeo-out #f)
        (StreamSocket sslsock)))))

(def (ssl-server-handshake sock)
  (using (sock :- ssl-socket)
    (let ((rsock sock.sock)
          (ssl sock.ssl))
    (with-basic-socket-read-lock sock
      (let lp ()
        (let (result (SSL_accept ssl))
          (cond
           ((and (fixnum? result) (fx> result 0)) (void))
           ((eqv? result SSL_ERROR_WANT_READ)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-in rsock) sock.timeo-in))
              (if wait-result
                (lp)
                (raise-timeout ssl-accept "receive timeout"))))
           ((eqv? result SSL_ERROR_WANT_WRITE)
            (let (wait-result
                  (basic-socket-wait-io! sock (fd-io-out rsock) sock.timeo-out))
              (if wait-result
                (lp)
                (raise-timeout ssl-accept "receive timeout"))))
           (else
            (raise-ssl-error ssl-accept result)))))))))
