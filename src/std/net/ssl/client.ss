;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Client
(export #t)
(import :gerbil/gambit
        :std/error
        :std/contract
        :std/sugar
        :std/interface
        :std/io
        :std/io/socket/types
        :std/io/socket/basic
        :std/os/fd
        :std/net/address
        :std/misc/timeout
        ./interface
        ./libssl
        ./socket
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
                 (raise-bad-argument ssl-connect "hostname" host))))
         (deadline (make-timeout timeo #f))
         (sock (tcp-connect addr deadline)))
    (try
     (ssl-client-upgrade sock deadline context: context host: host)
     (catch (e)
       (Socket-close sock)
       (raise e)))))

(def (ssl-client-upgrade sock (timeo #f)
                         context: (context (default-client-ssl-context))
                         host: host)
  (let (deadline (make-timeout timeo #f))
    (using (bsock (&interface-instance-object sock) :- basic-socket)
      (let* ((rsock bsock.sock)
             (ssl (check-ptr (SSL_new context)))
             (_ (with-ssl-result (SSL_set_fd ssl (fd-e rsock))))
             (_ (with-ssl-result (SSL_set_host ssl host)))
             (sslsock (make-ssl-socket bsock ssl)))
        (using (sslsock :- ssl-socket)
          (set! sslsock.timeo-in deadline)
          (set! sslsock.timeo-out deadline)
          (try
           (ssl-client-handshake sslsock)
           (catch (e)
             (foreign-release! ssl)
             (raise e)))
          (set! sslsock.timeo-in #f)
          (set! sslsock.timeo-out #f)
          (StreamSocket sslsock))))))

(def (ssl-client-handshake sock)
  (using (sock :- ssl-socket)
    (let ((rsock sock.sock)
          (ssl sock.ssl))
      (with-basic-socket-read-lock sock
        (let lp ()
          (let (result (SSL_connect ssl))
            (cond
             ((and (fixnum? result) (fx> result 0)) (void))
             ((eqv? result SSL_ERROR_WANT_READ)
              (let (wait-result
                    (basic-socket-wait-io! sock (fd-io-in rsock) sock.timeo-in))
                (if wait-result
                  (lp)
                  (raise-timeout ssl-connect "receive timeout"))))
             ((eqv? result SSL_ERROR_WANT_WRITE)
              (let (wait-result
                    (basic-socket-wait-io! sock (fd-io-out rsock) sock.timeo-out))
                (if wait-result
                  (lp)
                  (raise-timeout ssl-connect "receive timeout"))))
             (else
              (raise-ssl-error ssl-connect result)))))))))

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
