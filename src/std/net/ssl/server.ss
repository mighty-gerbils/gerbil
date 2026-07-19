;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Server
(export #t)
(import :std/error
        :std/interface
        :std/ffi
        :std/io/interface
        :std/io/socket/types
        :std/io/socket/server
        :std/io/socket/basic
        :std/io/socket/api
        :std/os/device
        :std/net/address/types
        :std/time/timeout
        :std/sync/rwlock
        ./interface
        ./libssl
        ./error
        ./socket)

(def (ssl-listen (addr  : InetAddress)
                 (ctx   :~ SSL_CTX? :- :foreign)
                 backlog:  (backlog  : :fixnum := default-listen-backlog)
                 sockopts: (sockopts : :list := default-listen-sockopts))
  => ServerSocket
  (let* ((srvsock (tcp-listen addr backlog: backlog sockopts: sockopts))
         (sslsock (__ssl-socket-from-server-socket
                   (&interface-instance-object srvsock)
                   ctx)))
    (ServerSocket sslsock)))

(implement ServerSocket ssl-server-socket
  (accept
   (lambda (self)
     (let (clisock (server-socket-accept self))
       (ssl-server-upgrade clisock self.ctx)))))

(def (ssl-server-upgrade (clisock : StreamSocket)
                         (ctx      :~ SSL_CTX? :- :foreign))
  => StreamSocket
  (let* ((deadline (timeout->deadline default-connect-timeout))
         (ssl (check-pointer ssl-server-upgrade (SSL_new ctx))))
    (using (sslsock (__ssl-socket-from-stream-socket
                     (&interface-instance-object clisock)
                     ssl)
                    : ssl-socket)
      (with-ssl-result (SSL_set_fd ssl sslsock.dev.fd))
      (set! sslsock.timeo-in deadline)
      (set! sslsock.timeo-out deadline)
      (try
       (ssl-server-handshake sslsock)
       (catch (e)
         (foreign-release! ssl)
         (clisock.close)
         (raise e)))
      (set! sslsock.timeo-in #f)
      (set! sslsock.timeo-out #f)
      (StreamSocket sslsock))))

(def (ssl-server-handshake (sock : ssl-socket))
  (do-with-read-lock sock.lock
    (let loop ()
      (do-check-device-direction ssl-server-handshake sock.dev DIRECTION-INOUT
        (let (result (SSL_accept sock.ssl))
          (cond
           ((and (fixnum? result) (fx> result 0)) (void))
           ((eq? result SSL_ERROR_WANT_READ)
            (if (__basic-socket-wait-input! sock)
              (loop)
              (raise-timeout ssl-accept "receive timeout")))
           ((eq? result SSL_ERROR_WANT_WRITE)
            (if (__basic-socket-wait-output! sock)
              (loop)
              (raise-timeout ssl-accept "send timeout")))
           (else
            (raise-ssl-error ssl-accept result))))))))
