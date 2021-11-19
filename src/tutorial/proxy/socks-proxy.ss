;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SOCKS4 proxy
(import :gerbil/gambit/threads
        :std/net/socket
        :std/net/address
        :std/os/socket
        :std/getopt
        :std/logger
        :std/sugar)
(export main)

(def (run address)
  (let* ((sa (socket-address address))
         (ssock (ssocket-listen sa)))
    (while #t
      (try
       (let (cli (ssocket-accept ssock sa))
         (debug "Accepted connection from ~a" (socket-address->string sa))
         (spawn proxy cli))
       (catch (e)
         (errorf "Error accepting connection ~a" e))))))

(def (proxy clisock)
  (try
   (let (srvsock (proxy-handshake clisock))
     (spawn proxy-io clisock srvsock)
     (spawn proxy-io srvsock clisock))
   (catch (e)
     (errorf "Error creating proxy ~a" e))))

;;; SOCKS4
;; Request:
;;   +----+----+----+----+----+----+----+----+----+----+....+----+
;;   | VN | CD | DSTPORT |      DSTIP        | USERID       |NULL|
;;   +----+----+----+----+----+----+----+----+----+----+....+----+
;;  VN = 4
;;  CD = 1  CONNECT
;;       2  BIND
;;
;; Reply:
;;   +----+----+----+----+----+----+----+----+
;;   | VN | CD | DSTPORT |      DSTIP        |
;;   +----+----+----+----+----+----+----+----+
;;  VN = 0
;;  CD:
;;   90: request granted
;;   91: request rejected or failed
;;   92: request rejected becasue SOCKS server cannot connect to
;;   identd on the client
;;   93: request rejected because the client program and identd
;;   report different user-ids.

(def (proxy-handshake clisock)
  (try
   (let* ((hdr (make-u8vector 1024))
          (rd (ssocket-recv clisock hdr)))
     (if (fx< rd 9)                  ; header + NUL userid terminator
       (error "Incomplete request" hdr)
       (let* ((vn (u8vector-ref hdr 0))
              (cd (u8vector-ref hdr 1))
              (dstport (fxior (fxshift (u8vector-ref hdr 2) 8)
                              (u8vector-ref hdr 3)))
              (dstip (subu8vector hdr 4 8)))
         (if (fx= vn 4)
           (case cd
             ((1)                       ; CONNECT
              (proxy-connect clisock (cons dstip dstport)))
             ((2)                       ; BIND
              (proxy-bind clisock))
             (else
              (proxy-handshake-reject clisock (cons dstip dstport))
              (error "Uknown command" cd)))
           (begin
             (proxy-handshake-reject clisock (cons dstip dstport))
             (error "Uknown protocol version" vn))))))
   (catch (e)
     (ssocket-close clisock)
     (raise e))))

(def (proxy-connect clisock addr)
  (let (srvsock (ssocket-connect addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (ssocket-close srvsock)
       (raise e)))))

(def (proxy-bind clisock)
  (let* ((srvsock (ssocket-listen ":0"))
         (srvaddr (socket-address->address
                   (socket-getsockname
                    (ssocket-socket srvsock)
                    (make-socket-address-in)))))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (ssocket-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (socket-address->address
              (socket-getpeername
               (ssocket-socket newcli)
               (make-socket-address-in)))))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (ssocket-close newcli)
          (raise e))))
     (finally
      (ssocket-close srvsock)))))

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
    (ssocket-send-all clisock resp)))

(def (proxy-io isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (ssocket-recv isock buf))
       (cond
        ((fxzero? rd)
         (ssocket-close-input isock)
         (ssocket-close-output osock #t))
        (else
         (ssocket-send-all osock buf 0 rd)
         (lp)))))
   (catch (e)
     (errorf "Error proxying connection ~a" e)
     (ssocket-close-input isock)
     (ssocket-close-output osock #t))))

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
