;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Client
(export #t)
(import :std/error
        :std/ffi
        :std/os/device
        :std/io/interface
        :std/io/socket/types
        :std/io/socket/basic
        :std/io/socket/api
        :std/net/address
        :std/time/timeout
        :std/sync/rwlock
        ./interface
        ./libssl
        ./socket
        ./error)

(def (ssl-connect (addr : Address)
                  timeout: (timeo   : IOTimeout := default-connect-timeout)
                  context: (context :~ SSL_CTX? :- :foreign := (default-client-ssl-context))
                  host:    (host    : :string := (resolve->host addr)))
  (let* ((deadline (timeout->deadline timeo))
         (sock (tcp-connect (resolve->endpoint addr) deadline)))
    (try
     (ssl-client-upgrade sock timeout: deadline context: context host: host)
     (catch (e)
       (StreamSocket-close sock)
       (raise e)))))

(def (ssl-client-upgrade (ssock : StreamSocket)
                         timeout: (timeo : IOTimeout := default-connect-timeout)
                         context: (ctx    :~ SSL_CTX? :- :foreign := (default-client-ssl-context))
                         host:    (host  : :string))
  (let* ((deadline (timeout->deadline timeo))
         (ssl (check-pointer ssl-client-upgrade (SSL_new ctx))))
    (using (sslsock (__ssl-socket-from-stream-socket
                     (&interface-instance-object ssock)
                     ssl)
                    : ssl-socket)
      (with-ssl-result (SSL_set_fd ssl sslsock.dev.fd))
      (with-ssl-result (SSL_set_host ssl host))
      (set! sslsock.timeo-in deadline)
      (set! sslsock.timeo-out deadline)
      (try
       (ssl-client-handshake sslsock)
       (catch (e)
         (foreign-release! ssl)
         (raise e)))
      (set! sslsock.timeo-in #f)
      (set! sslsock.timeo-out #f)
      (StreamSocket sslsock))))

(def (ssl-client-handshake (sock : ssl-socket))
  (do-with-read-lock sock.lock
    (let loop ()
      (do-check-device-direction ssl-client-handshake sock.dev DIRECTION-INOUT
        (let (result (SSL_connect sock.ssl))
          (cond
           ((and (fixnum? result) (fx> result 0)) (void))
           ((eq? result SSL_ERROR_WANT_READ)
            (if (__basic-socket-wait-input! sock)
              (loop)
              (raise-timeout ssl-connect "receive timeout")))
           ((eq? result SSL_ERROR_WANT_WRITE)
            (if (__basic-socket-wait-output! sock)
              (loop)
              (raise-timeout ssl-connect "send timeout")))
           (else
            (raise-ssl-error ssl-connect result))))))))

(def (default-client-ssl-context)
  (force __default-client-ssl-context))

(def (insecure-client-ssl-context)
  (force __insecure-client-ssl-context))

(def __default-client-ssl-context
  (delay
    (check-pointer default-client-ssl-context (make-client-ssl-context))))

(def __insecure-client-ssl-context
  (delay
    (check-pointer insecure-client-ssl-context (make-insecure-client-ssl-context))))
