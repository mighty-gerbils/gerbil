;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS4 proxy
(import :std/sugar
        :std/logger
        :std/getopt
        :std/net/address
        :std/io)
(export main)

(deflogger socks-proxy)

(def (run address)
  (let* ((address (resolve-address address))
         (sock (tcp-listen address)))
    (while #t
      (try
       (let (cli (ServerSocket-accept sock))
         (debugf "Accepted connection from ~a" (StreamSocket-peer-address cli))
         (spawn proxy cli))
       (catch (e)
         (errorf "Error accepting connection ~a" e))))))

(def (proxy clisock)
  (try
   (let (srvsock (proxy-handshake clisock))
     (spawn proxy-io! (StreamSocket-reader clisock) (StreamSocket-writer srvsock))
     (spawn proxy-io! (StreamSocket-reader srvsock) (StreamSocket-writer clisock)))
   (catch (e)
     (errorf "Error creating proxy: ~a" e))))

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
   (let* ((hdr (make-u8vector 128))
          (rd (StreamSocket-recv clisock hdr)))
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
     (StreamSocket-close clisock)
     (raise e))))

(def (proxy-connect clisock addr)
  (let (srvsock (tcp-connect addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (StreamSocket-close srvsock)
       (raise e)))))

(def (proxy-bind clisock)
  (let* ((srvsock (tcp-listen (cons inaddr-any4 0)))
         (srvaddr (ServerSocket-address srvsock)))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (ServerSocket-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (StreamSocket-peer-address newcli)))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (StreamSocket-close newcli)
          (raise e))))
     (finally
      (ServerSocket-close srvsock)))))

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
    (StreamSocket-send clisock resp)))

(def (proxy-io! reader writer)
  (io-copy! reader writer)
  (Writer-close writer)
  (Reader-close reader))

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
