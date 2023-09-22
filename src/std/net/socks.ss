;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SOCKS 4/5 support

;;; --- TO BE REWRITTEN ---

(import :gerbil/gambit
        :std/pregexp
        :std/error
        :std/text/utf8
        :std/net/address)
(export open-socks5-client open-socks4-client
        socks5-open socks5-connect socks5-bind socks5-accept
        socks4-connect socks4-bind socks4-accept
        socks5-send-request socks5-recv-reply
        socks4-send-request socks4-recv-reply)

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

;; main interface: client functionality
(def (open-socks-client proxy server open connect)
  (let (sock (open-tcp-client (inet-address->string (inet-address proxy))))
    (with-catch
     (lambda (e)
       (with-catch void (cut close-port sock))
       (raise e))
     (lambda ()
       (open sock)
       (connect sock server)
       sock))))

(def (open-socks4-client proxy server)
  (open-socks-client proxy server void socks4-connect))

(def (open-socks5-client proxy server)
  (open-socks-client proxy server socks5-open socks5-connect))

;; protocol specifics
;; TODO: socks5 authentication
(def (socks5-open sock)
  (send-msg sock '#u8(5 1 0))
  (let (in (##make-u8vector 2 0))
    (recv-msg sock in)
    (let (proto (##u8vector-ref in 0))
      (unless (eq? proto 5)
        (raise-io-error 'socks5-open
                        "SOCKS5 handshake error; protocol version mismatch" proto)))
    (let (rep (##u8vector-ref in 1))
      (unless (eq? rep 0)
        (raise-io-error 'socks5-open
                        "SOCKS5 handshake error; negotiation failed" rep)))))

(def (socks5-connect sock address)
  (socks-connect socks5-send-request socks5-recv-reply sock address))

(def (socks5-bind sock (address #f))
  (socks-bind socks5-send-request socks5-recv-reply sock address))

(def (socks5-accept sock)
  (socks5-recv-reply sock))

(def (socks4-connect sock address (userid #f))
  (socks-connect socks4-send-request socks4-recv-reply sock address userid))

(def (socks4-bind sock (address #f) (userid #f))
  (socks-bind socks4-send-request socks4-recv-reply sock address userid))

(def (socks4-accept sock)
  (socks4-recv-reply sock))

(def (socks-connect send recv sock address . args)
  (let ((values host port) (parse-address address))
    (apply send sock #x01 host port args))
  (recv sock))

(def (socks-bind send recv sock address . args)
  (let ((values host port)
        (if address
          (parse-address address)
          (values '#u8(0 0 0 0) 0)))
    (apply send sock #x02 host port args)
    (recv sock)))

;;; utils
(def (parse-address addr)
  (with ([host . port] (inet-address addr))
    (values host port)))

;; protocolo i/o
(def (socks5-send-request sock cmd host port)
  (let* ((porthi (##fxand (##fxarithmetic-shift port -8) #xff))
         (portlo (##fxand port #xff))
         (out
          (cond
           ((string? host)
            (let* ((fqdn    (string->utf8 host))
                   (fqdnlen (##u8vector-length fqdn))
                   (_ (when (##fx> fqdnlen 255)
                        (error "Domain name too long" host fqdnlen)))
                   (len (##fx+ 7 fqdnlen))
                   (out (##make-u8vector len 0)))
              (##u8vector-set! out 3 #x03) ; ATYP: DOMAINNAME
              (##u8vector-set! out 4 fqdnlen)
              (##subu8vector-move! fqdn 0 fqdnlen out 5)
              (##u8vector-set! out (##fx+ fqdnlen 5) porthi)
              (##u8vector-set! out (##fx+ fqdnlen 6) portlo)))
           ((and (##u8vector? host) (##fx= (##u8vector-length host) 4))
            (let (out (##make-u8vector 10 0))
              (##u8vector-set! out 3 #x01) ; ATYP: IPv4
              (##subu8vector-move! host 0 4 out 4)
              (##u8vector-set! out 8 porthi)
              (##u8vector-set! out 9 portlo)))
           ((and (##u8vector? host) (##fx= (##u8vector-length host) 16))
            (let (out (##make-u8vector 22 0))
              (##u8vector-set! out 3 #x04) ; ATYP: IPv6
              (##subu8vector-move! host 0 4 out 16)
              (##u8vector-set! out 20 porthi)
              (##u8vector-set! out 21 portlo)))
           (else
            (error "Unexpected host address" host)))))
    (##u8vector-set! out 0 #x05)        ; VER
    (##u8vector-set! out 1 cmd)         ; CMD
    (send-msg sock out)))

(def (socks5-recv-reply sock)
  (def (recv-port)
    (let* ((porthi (##read-u8 sock))
           (portlo (##read-u8 sock)))
      (##fxior (##fxarithmetic-shift porthi 8) portlo)))

  (def (recv-address atype rep)
    (case atype
      ((#x01)
       (let (addr (##make-u8vector 4 0))
         (recv-msg sock addr)
         (cons addr (recv-port))))
      ((#x03)
       (let (buf (##make-u8vector (##read-u8 sock) 0))
         (recv-msg sock buf)
         (cons (utf8->string buf) (recv-port))))
      ((#x04)
       (let (addr (##make-u8vector 16 0))
         (recv-msg sock addr)
         (cons addr (recv-port))))
      (else
       (raise-io-error 'socks5-recv-reply
                       "Unexpected SOCKS5 address type" atype rep))))

  (let (hdr (##make-u8vector 4 0))
    (recv-msg sock hdr)
    (let ((proto (##u8vector-ref hdr 0))
          (rep   (##u8vector-ref hdr 1)))
      (unless (eq? proto 5)
        (raise-io-error 'socks5-recv-reply
                        "Unexpected SOCKS5 reply; protocol mismatch" proto))
      (let (addr (recv-address (##u8vector-ref hdr 3) rep))
        (if (eq? rep 0) addr
            (raise-io-error 'socks5-recv-reply
                            "SOCKS5 error response" rep))))))

(def (socks4-send-request sock cmd host port userid)
  (let* ((porthi (##fxand (##fxarithmetic-shift port -8) #xff))
         (portlo (##fxand port #xff))
         (userid (and userid (string->utf8 userid)))
         (userlen (if userid (##u8vector-length userid) 0))
         (out
          (cond
           ((string? host)
            (let* ((fqdn    (string->utf8 host))
                   (fqdnlen (##u8vector-length fqdn))
                   (len     (##fx+ 8 userlen 1 fqdnlen 1))
                   (out     (##make-u8vector len 0)))
              (##u8vector-set! out 7 #x01) ; SOCKS4a
              (##subu8vector-move! fqdn 0 fqdnlen out (##fx+ userlen 9))))
           ((and (##u8vector? host) (##fx= (##u8vector-length host) 4))
            (let* ((len (##fx+ userlen 9))
                   (out (##make-u8vector len 0)))
              (##subu8vector-move! host 0 4 out 4)))
           (else
            (error "Unexpected host address" host)))))
    (##u8vector-set! out 0 #x04)        ; VER
    (##u8vector-set! out 1 cmd)         ; CMD
    (##u8vector-set! out 2 porthi)
    (##u8vector-set! out 3 portlo)
    (when userid
      (##subu8vector-move! userid 0 userlen out 8))
    (send-msg sock out)))

(def (socks4-recv-reply sock)
  (let (buf (##make-u8vector 8 0))
    (recv-msg sock buf)
    (let (vn (##u8vector-ref buf 0))
      (unless (eq? vn 0)
        (raise-io-error 'socks4-recv-reply
                        "Unexpected SOCKS4 reply; version mismatch" vn)))
    (let (rep (##u8vector-ref buf 1))
      (unless (eq? rep 90)
        (raise-io-error 'socks4-recv-reply
                        "SOCKS4 request rejected" rep)))
    (cons (##subu8vector buf 4 8)
          (##fxior (##fxarithmetic-shift (##u8vector-ref buf 2) 8)
                   (##u8vector-ref buf 3)))))

(def (send-msg sock buf)
  (let (wr (write-u8vector buf sock))
    (unless (eq? wr (##u8vector-length buf))
      (raise-io-error 'socks-send-message
                      "Failed to send message; incomplete write" sock wr))
    (force-output sock)))

(def (recv-msg sock buf)
  (let (rd (read-u8vector buf sock))
    (unless (eq? rd (##u8vector-length buf))
      (raise-io-error 'socks-recv-message
                      "Failed to receive message; incomplete read" sock rd))))
