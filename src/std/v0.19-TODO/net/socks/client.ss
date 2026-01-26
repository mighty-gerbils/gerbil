;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 client functionality
(import :std/error
        :std/io
        :std/io/socket/types
        (only-in :std/os/socket AF_INET AF_INET6)
        :std/net/address
        :std/text/utf8
        :std/sugar
        ./interface)
(export socks4-open
        socks4a-open
        socks5-open)

;;; SOCKS5; RFC-1928
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

(defstruct socks-proxy ((sock ::- StreamSocket) address protocol))
(defstruct (socks4-proxy socks-proxy) () final: #t
  constructor: :init!)
(defstruct (socks4a-proxy socks-proxy) () final: #t
  constructor: :init!)
(defstruct (socks5-proxy socks-proxy) ()  final: #t
  constructor: :init!)

(defstruct socks-server-socket ((sock ::- StreamSocket)))
(defstruct (socks4-server-socket socks-server-socket) () final: #t)
(defstruct (socks5-server-socket socks-server-socket) () final: #t)

(defmethod {:init! socks4-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS4))

(defmethod {:init! socks4a-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS4a))

(defmethod {:init! socks5-proxy}
  (cut socks-proxy-init! <> <> <> 'SOCKS5))

(defmethod {protocol socks-proxy}
  &socks-proxy-protocol
  interface: SOCKS)

(defmethod {proxy-address socks-proxy}
  &socks-proxy-address
  interface: SOCKS)

(defrule (defconnect-method proxy-type connect-e)
  (defmethod {connect proxy-type}
    (lambda (self address)
      (:-
       (try
        (let (address (inet-address address))
          (let (bind-address (connect-e self.sock address))
            (using (bsock (&interface-instance-object self.sock) :- basic-socket)
              (set! bsock.laddr bind-address)
              (set! bsock.raddr address))))
        self.sock
        (catch (e)
          (self.sock.close)
          (raise e)))
       StreamSocket))
    interface: SOCKS))

(defconnect-method socks4-proxy socks4-connect)
(defconnect-method socks4a-proxy socks4a-connect)
(defconnect-method socks5-proxy socks5-connect)

(defrule (defbind-method proxy-type bind-e make-server-socket)
  (defmethod {bind proxy-type}
    (lambda (self maybe-address)
      (:-
       (try
        (let (address (and maybe-address (inet-address maybe-address)))
          (let (bind-address (bind-e self.sock address))
            (using (bsock (&interface-instance-object self.sock) :- basic-socket)
              (set! bsock.laddr bind-address))))
        (ServerSocket (make-server-socket self.sock))
        (catch (e)
          (self.sock.close)
          (raise e)))
       ServerSocket))
    interface: SOCKS))

(defbind-method socks4-proxy socks4-bind make-socks4-server-socket)
(defbind-method socks4a-proxy socks4-bind make-socks4-server-socket)
(defbind-method socks5-proxy socks5-bind make-socks5-server-socket)

(defmethod {close socks-server-socket}
  (lambda (self)
    (when self.sock
      (self.sock.close)
      (set! self.sock #f)))
  interface: Closer)

(defsyntax (defserver-dispatch-method stx)
  (syntax-case stx ()
    ((_ (method arg ...))
     (with-syntax ((self (syntax-local-introduce 'self))
                   (self.sock.method
                    (syntax-local-introduce
                     (make-symbol "self.sock." (stx-e #'method)))))
       #'(defmethod {method socks-server-socket}
           (lambda (self arg ...)
             (self.sock.method arg ...))
           interface: Socket)))))

(defserver-dispatch-method (domain))
(defserver-dispatch-method (address))
(defserver-dispatch-method (getsockopt level option))
(defserver-dispatch-method (setsockopt level option val))
(defserver-dispatch-method (set-input-timeout! timeo))
(defserver-dispatch-method (set-output-timeout! timeo))

(defmethod {peer-address socks-server-socket}
  (lambda (self)
    (raise-unsupported-method peer-address))
  interface: Socket)

(defrule (defserver-accept-method server-type receive-e)
  (defmethod {accept server-type}
    (lambda (self)
      (if self.sock
        (let (peer-address (receive-e self.sock))
          (using (bsock (&interface-instance-object self.sock) :- basic-socket)
            (set! bsock.raddr peer-address))
          (let (sock self.sock)
            (set! self.sock #f)
            sock))
        (raise-context-error accept "proxy client has already accepted a connection")))
    interface: ServerSocket))

(defserver-accept-method socks4-server-socket socks4-recv-reply)
(defserver-accept-method socks5-server-socket socks5-recv-reply)

(def (socks-proxy-init! (self :- socks-proxy) (sock : StreamSocket) address proto)
  (set! self.sock sock)
  (set! self.address address)
  (set! self.protocol proto))

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
  (using (sock :- StreamSocket)
    (sock.send '#u8(5 1 0))
    (let* ((response (make-u8vector 2 0))
           (rd (sock.recv response)))
      (unless (fx= rd 2)
        (raise-io-error socks5-handshake "incomplete handshake"))
      (unless (fx= (u8vector-ref response 0) 5)
        (raise-io-error socks5-handshake "bad protocol version" (u8vector-ref response 0)))
      (unless (fx= (u8vector-ref response 1) 0)
        (raise-io-error socks5-handshake "handshake failed" (u8vector-ref response 1))))))

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

(defrule (socks-connect sock-in send-request recv-reply address arg ...)
  (let (sock sock-in)
    (with ([host . port] address)
      (send-request sock #x01 host port arg ...)
      (recv-reply sock))))

(defrule (socks-bind sock-in send-request recv-reply maybe-address-in)
  (let ((maybe-address maybe-address-in) (sock sock-in))
    (match maybe-address
      ([host . port]
       (send-request sock #x02 host port))
      (else
       (using (sock :- StreamSocket)
         (let (domain (sock.domain))
           (cond
            ((fx= domain AF_INET)
             (send-request sock #x02 inaddr-any4 0))
            ((fx= domain AF_INET6)
             (send-request sock #x02 inaddr-any6 0))
            (else
             (error "unuspoorted socket domain" domain)))))))
    (recv-reply sock)))

(def (socks4-send-request sock cmd host port (4a? #f))
  (using ((sock :- StreamSocket)
          (pkt (open-buffered-writer (sock.writer) 384) :- BufferedWriter))
    (pkt.write-u8 #x04)                 ; VERSION
    (pkt.write-u8 cmd)                  ; CMD
    (pkt.write-u16 port)                ; PORT
    (cond
     ((and 4a? (string? host))
      (pkt.write '#u8(0 0 0 1))         ; SOCKS4a bit
      (pkt.write-u8 0)                  ; userid NULL terminator
      (pkt.write-string host)           ; hostname
      (pkt.write-u8 0))                  ; hostname NULL terminator
     ((ip4-address? host)
      (pkt.write host)                  ; host ip4
      (pkt.write-u8 0))                 ; userid NULL terminator
     (else
      (raise-bad-argument socks4-send-request "bad host address" host)))
    (pkt.flush)))

(def (socks4-recv-reply sock)
  (using (sock :- StreamSocket)
    (let (msg (make-u8vector 8 0))
      (sock.recv msg)
      (let (vn (u8vector-ref msg 0))
        (unless (fx= vn 0)
          (raise-io-error socks4-recv-reply "version mismatch" vn)))
      (let (res (u8vector-ref msg 1))
        (unless (fx= res 90)
          (raise-io-error socks4-recv-reply "request rejected" res)))
      (cons (subu8vector msg 4 8)
            (fxior (fxarithmetic-shift (u8vector-ref msg 2) 8)
                   (u8vector-ref msg 3))))))

(def (socks5-send-request sock cmd host port)
  (using ((sock :- StreamSocket)
          (pkt (open-buffered-writer (sock.writer) 384) :- BufferedWriter))
    (pkt.write-u8 5)                    ; VER
    (pkt.write-u8 cmd)                  ; CMD
    (pkt.write-u8 0)                    ; RSV
    (cond
     ((string? host)
      (pkt.write-u8 3) ; ATYP: DOMAINNAME
      (let* ((fqdn (string->utf8 host))
             (len (u8vector-length fqdn)))
        (when (fx> len 255)
          (raise-bad-argument socks5-send-request "domain name: too long" host len))
        (pkt.write-u8 len)
        (pkt.write fqdn)))
     ((ip4-address? host)
      (pkt.write-u8 1) ; ATYP: IPv4
      (pkt.write host))
     ((ip6-address? host)
      (pkt.write-u8 4) ; ATYP: IPv6
      (pkt.write host))
     (else
      (raise-bad-argument socks5-send-request "host address; ip4, ip6, or domain name" host)))
    (pkt.write-u16 port)
    (pkt.flush)))

(def (socks5-recv-reply sock)
  (using (sock :- StreamSocket)
    (let* ((msg (make-u8vector 384))
           (len  (sock.recv msg)))
      (let (vn (u8vector-ref msg 0))
        (unless (fx= vn 5)
          (raise-io-error socks5-recv-reply "version mismatch" vn)))
      (let (res (u8vector-ref msg 1))
        (unless (fx= res 0)
          (raise-io-error socks5-recv-reply "request failed" (socks5-reply-text res) res)))
      (let (atyp (u8vector-ref msg 3))
        (case atyp
          ((1)                          ; IPv4
           (unless (fx= len 10)
             (raise-io-error socks5-recv-reply "bad response length" len 10))
           (let* ((host (subu8vector msg 4 8))
                  (porthi (u8vector-ref msg 8))
                  (portlo (u8vector-ref msg 9))
                  (port  (fxior (fxarithmetic-shift porthi 8) portlo)))
             (cons host port)))
          ((3)                                           ; DOMAINNAME
           (unless (fx> len 6)
             (raise-io-error socks5-recv-reply "bad response length" len '(> 6)))
           (let* ((host (subu8vector msg 4 (fx- len 3))) ; skip NUL terminator
                  (porthi (u8vector-ref msg (fx- len 2)))
                  (portlo (u8vector-ref msg (fx- len 1)))
                  (port  (fxior (fxarithmetic-shift porthi 8) portlo)))
             (cons host port)))
          ((4)                          ; IPv6
           (unless (fx= len 22)
             (raise-io-error socks5-recv-reply "bad response length" len 22))
           (let* ((host (subu8vector msg 4 20))
                  (porthi (u8vector-ref msg 20))
                  (portlo (u8vector-ref msg 21))
                  (port  (fxior (fxarithmetic-shift porthi 8) portlo)))
             (cons host port)))
          (else
           (raise-io-error socks5-recv-reply "unknown address type" atyp)))))))

(def (socks5-reply-text res)
  (hash-ref +socks5-reply-text+ res "unknown response"))

(def +socks5-reply-text+
  (hash-eqv
   (0 "succeeded")
   (1 "general SOCKS server failure")
   (2 "connection not allowed by ruleset")
   (3 "Network unreachable")
   (4 "Host unreachable")
   (5 "Connection refused")
   (6 "TTL expired")
   (7 "Command not supported")
   (8 "Address type not supported")))
