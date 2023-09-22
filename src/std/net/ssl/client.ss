;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL Client
(export #t)
(import :gerbil/gambit
        :std/error
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
                 (raise-bad-argument 'ssl-connect "hostname" host))))
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
  (let* ((deadline (make-timeout timeo #f))
         (bsock (&interface-instance-object sock))
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
               (foreign-release! ssl)
               (raise e))))
         (_ (set! (&basic-socket-timeo-in sslsock) #f))
         (_ (set! (&basic-socket-timeo-out  sslsock) #f)))
    (StreamSocket sslsock)))

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
