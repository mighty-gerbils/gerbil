;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 client functionality
(import :std/io
        :std/net/address
        :std/text/utf8
        ./interface)
(export #t)
(declare (not safe))

;;; SOCKS5; rfc1928
;;  Handshake:
;;   client -> server:
;;   +----+----------+----------+
;;   |VER | NMETHODS | METHODS  |
;;   +----+----------+----------+
;;   | 1  |    1     | 1 to 255 |
;;   +----+----------+----------+
;;   server -> client
;;   +----+--------+
;;   |VER | METHOD |
;;   +----+--------+
;;   | 1  |   1    |
;;   +----+--------+
;;
;; VER = X'05'
;; Methods:
;;  o  X'00' NO AUTHENTICATION REQUIRED
;;  o  X'01' GSSAPI
;;  o  X'02' USERNAME/PASSWORD
;;  o  X'03' to X'7F' IANA ASSIGNED
;;  o  X'80' to X'FE' RESERVED FOR PRIVATE METHODS
;;  o  X'FF' NO ACCEPTABLE METHODS
;;
;; Request:
;;   +----+-----+-------+------+----------+----------+
;;   |VER | CMD |  RSV  | ATYP | DST.ADDR | DST.PORT |
;;   +----+-----+-------+------+----------+----------+
;;   | 1  |  1  | X'00' |  1   | Variable |    2     |
;;   +----+-----+-------+------+----------+----------+
;; Fields:
;;   o  VER    protocol version: X'05'
;;   o  CMD
;;   o  CONNECT X'01'
;;   o  BIND X'02'
;;   o  UDP ASSOCIATE X'03'
;;   o  RSV    RESERVED
;;   o  ATYP   address type of following address
;;   o  IP V4 address: X'01'
;;   o  DOMAINNAME: X'03'
;;   o  IP V6 address: X'04'
;;   o  DST.ADDR       desired destination address
;;   o  DST.PORT desired destination port in network octet order
;; ATYP:
;;   o  X'01'  IPv4       -- 4 octets
;;   o  X'03'  DOMAINNAME -- length in first byte, no NUL terminator
;;   o  X'04'  IPv6       -- 16 octets
;;
;; Reply:
;;   +----+-----+-------+------+----------+----------+
;;   |VER | REP |  RSV  | ATYP | BND.ADDR | BND.PORT |
;;   +----+-----+-------+------+----------+----------+
;;   | 1  |  1  | X'00' |  1   | Variable |    2     |
;;   +----+-----+-------+------+----------+----------+
;; Fields:
;;   o  VER    protocol version: X'05'
;;   o  REP    Reply field:
;;      o  X'00' succeeded
;;      o  X'01' general SOCKS server failure
;;      o  X'02' connection not allowed by ruleset
;;      o  X'03' Network unreachable
;;      o  X'04' Host unreachable
;;      o  X'05' Connection refused
;;      o  X'06' TTL expired
;;      o  X'07' Command not supported
;;      o  X'08' Address type not supported
;;      o  X'09' to X'FF' unassigned
;;   o  RSV    RESERVED
;;   o  ATYP   address type of following address
;;      o  IP V4 address: X'01'
;;      o  DOMAINNAME: X'03'
;;      o  IP V6 address: X'04'
;;   o  BND.ADDR       server bound address
;;   o  BND.PORT       server bound port in network octet order

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
;;
;; SOCKS4a
;;  DSTIP = 0.0.0.x
;;  Following the NULL byte of user id, domain name (NULL-terminated)
;;

(defstruct socks-proxy (sock address protocol) unchecked: #t)
(defstruct (socks4-proxy socks-proxy) () unchecked: #t final: #t
  constructor: :init!)
(defstruct (socks4a-proxy socks-proxy) () unchecked: #t final: #t
  constructor: :init!)
(defstruct (socks5-proxy socks-proxy) () unchecked: #t final: #t
  constructor: :init!)

(defmethod {:init! socks4-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS4))

(defmethod {:init! socks4a-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS4a))

(defmethod {:init! socks5-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS5))

(def (socks-proxy-init! self sock address proto)
  (set! (&socks-proxy-sock self) sock)
  (set! (&socks-proxy-address self) address)
  (set! (&socks-proxy-protocol self) proto))

(def (socks-open proxy handshake)
  (let (sock (tcp-connect proxy))
    (with-catch
     (lambda (e)
       (with-catch void (cut StreamSocket-close sock))
       (raise e))
     (lambda ()
       (handshake sock)
       sock))))

(def (socks4-open proxy)
  (let (sock (socks-open proxy void))
    (SOCKS (make-socks4-proxy sock proxy))))

(def (socks4a-open proxy)
  (let (sock (socks-open proxy void))
    (SOCKS (make-socks4a-proxy sock proxy))))

;; TODO support authentication
(def (socks5-open proxy)
  (let (sock (socks-open proxy socks5-handshake))
    (SOCKS (make-socks5-proxy sock proxy))))

(def (socks5-handshake sock)
  (&Socket-send sock '#u8(5 1 0))
  (let* ((response (make-u8vector 2 0))
         (rd (&Socket-recv sock response)))
    (unless (fx= rd 2)
      (raise-io-error socks5-handshake "incomplete handshake"))
    (unless (fx= (u8vector-ref response 0) 5)
      (raise-io-error socks5-handshake "bad protocol version" (u8vector-ref response 0)))
    (unless (fx= (u8vector-ref response 1) 0)
      (raise-io-error socks5-handshake "handshake failed" (u8vector-ref response 1)))))

(def (socks4-connect sock address)
  (socks-connect sock socks4-send-request socks4-recv-reply (resolve-address address) #f))

(def (socks4a-connect sock address)
  (socks-connect sock socks4-send-request socks4-recv-reply (inet-address address) #t))

(def (socks5-connect sock address)
  (socks-connect sock socks5-send-request socks5-recv-reply (inet-address address)))

(def (socks4-bind sock address)
  (socks-bind sock socks4-send-request socks4-recv-reply (and address (inet-address address))))

(def (socks5-bind sock address)
  (socks-bind sock socks5-send-request socks5-recv-reply (and address (inet-address address))))

(defrule (socks-connect sock send-request recv-reply address arg ...)
  (with ([host . port] address)
    (send-request sock #x01 host port arg ...)
    (recv-reply sock)))

(defrule (socks-bind sock send-request recv-reply maybe-address)
  (match maybe-address
    ([host . port]
     (send-request sock #x02 host port)
     (recv-reply sock))
    (else
     (if (fx= (StreamSocket-domain sock) AF_INET)
       (send-request sock #x02 inaddr-any4 0)
       (send-request sock #x02 inaddr-any6 0))
     (recv-reply sock))))

(def (socks4-send-request sock cmd host port 4a?)
  (let (pkt (open-buffered-writer #f 64))
    (&BufferedWriter-write-u8 pkt #x04) ; VERSION
    (&BufferedWriter-write-u8 pkt cmd)  ; CMD
    (&BufferedWriter-write-u16 pkt port); PORT
    (cond
     ((and 4a? (string? host))
      (&BufferedWriter-write pkt '#u8(0 0 0 1)) ; SOCKS4a bit
      (&BufferedWriter-write-u8 pkt 0)          ; userid NULL terminator
      (&BufferedWriter-write-string pkt host)   ; hostname
      (&BufferedWriter-write-u8 pkt 0))         ; hostname NULL terminator
     ((ip4-address? host)
      (&BufferedWriter-write pkt host)          ; host ip4
      (&BufferedWriter-write-u8 pkt 0))         ; userid NULL terminator
     (else
      (raise-bad-argument socks4-send-request "bad host address" host)))
    (let (msg (get-buffer-output-u8vector pkt))
      (&StreamSocket-send sock msg))))

(def (socks4-recv-reply sock)
  (let (msg (make-u8vector 8 0))
    (&StreamSocket-recv sock msg)
    (let (vn (u8vector-ref msg 0))
      (unless (fx= vn 0)
        (raise-io-error socks4-recv-reply "version mismatch" vn)))
    (let (res (u8vector-ref msg 1))
      (unless (fx= res 90)
        (raise-io-error socks4-recv-reply "request rejected" res)))
    (cons (subu8vector msg 4 8)
          (fxior (fxarithmetic-shift (u8vector-ref buf 2) 8)
                 (u8vector-ref buf 3)))))

(def (socks5-send-request sock cmd host port)
  XXX
  )
