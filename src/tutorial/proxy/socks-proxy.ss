;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SOCKS4 proxy
package: tutorial/proxy

(import :gerbil/gambit/threads
        :std/net/server
        :std/net/address
        :std/os/socket
        :std/getopt
        :std/logger
        :std/sugar)
(export main)

(def (run address)
  (def srv (start-socket-server!))

  (let* ((sa (socket-address address))
         (ssock (server-listen srv sa)))
    (while #t
      (try
       (let (cli (server-accept ssock sa))
         (debug "Accepted connection from ~a" (socket-address->string sa))
         (spawn proxy srv cli))
       (catch (e)
         (log-error "Error accepting connection" e))))))

(def (proxy srv clisock)
  (try
   (let (srvsock (proxy-handshake srv clisock))
     (spawn proxy-io clisock srvsock)
     (spawn proxy-io srvsock clisock))
   (catch (e)
     (log-error "Error creating proxy" e))))

(def (proxy-handshake srv clisock)
  (try
   (let* ((hdr (make-u8vector 8))
          (rd (server-recv-all clisock hdr)))
     (if (fx< rd 8)
       (error "Incomplete request" hdr)
       (let* ((vn (u8vector-ref hdr 0))
              (cd (u8vector-ref hdr 1))
              (dstport (fxior (fxshift (u8vector-ref hdr 2) 8)
                              (u8vector-ref hdr 3)))
              (dstip (subu8vector hdr 4 8))
              (nulbuf (make-u8vector 1024))
              (rd (server-recv clisock nulbuf)) ; read userid, ignored
              (_ (unless (fx< rd 1024)
                   (error "Request buffer overflow"))))
         (if (fx= vn 4)
           (case cd
             ((1)                       ; CONNECT
              (proxy-connect srv clisock (cons dstip dstport)))
             ((2)                       ; BIND
              (proxy-bind srv clisock))
             (else
              (proxy-handshake-reject clisock (cons dstip dstport))
              (error "Uknown command" cd)))
           (begin
             (proxy-handshake-reject clisock (cons dstip dstport))
             (error "Uknown protocol version" vn))))))
   (catch (e)
     (server-close clisock)
     (raise e))))

(def (proxy-connect srv clisock addr)
  (let (srvsock (server-connect srv addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (server-close srvsock)
       (raise e)))))

(def (proxy-bind srv clisock)
  (let* ((srvsock (server-listen srv ":0"))
         (srvaddr (socket-address->address
                   (socket-getsockname
                    (server-socket-e srvsock)
                    (make-socket-address-in)))))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (server-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (socket-address->address
              (socket-getpeername
               (server-socket-e newcli)
               (make-socket-address-in)))))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (server-close newcli)
          (raise e))))
     (finally
      (server-close srvsock)))))

(def (proxy-handshake-accept clisock addr)
  (proxy-handshake-reply 90 clisock addr))

(def (proxy-handshake-reject clisock addr)
  (proxy-handshake-reply 91 clisock addr))

(def (proxy-handshake-reply code clisock addr)
  (let (resp (make-u8vector 8))
    (u8vector-set! resp 0 0)
    (u8vector-set! resp 1 code)
    (with ([ip . port] addr)
      (u8vector-set! resp 2 (fxand (fxshift port -8) #xff))
      (u8vector-set! resp 3 (fxand port #xff))
      (subu8vector-move! ip 0 4 resp 4))
    (server-send-all clisock resp)))

(def (proxy-io isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (server-recv isock buf))
       (cond
        ((fxzero? rd)
         (server-close-input isock)
         (server-close-output osock #t))
        (else
         (server-send-all osock buf 0 rd)
         (lp)))))
   (catch (e)
     (log-error "Error proxying connection" e)
     (server-close-input isock)
     (server-close-output osock #t))))

(def (main . args)
  (def gopt
    (getopt (argument 'address help: "local address to bind")))
  (try
   (let (opt (getopt-parse gopt args))
     (start-logger!)
     (run (hash-get opt 'address)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "tcp-proxy" (current-error-port))
     (exit 1))))
