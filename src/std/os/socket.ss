;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS socket interface
package: std/os

(import :std/os/_socket
        :std/os/error
        :std/os/fd
        :std/os/fcntl
        :std/net/address
        (only-in :gerbil/gambit/ports close-port))

(export #t)

(def (open-socket domain type proto)
  (let (fd (check-os-error (_socket domain type proto)
             (socket domain type proto)))
    (fdopen fd 'inout 'socket)))

(def (socket domain type (proto 0))
  (let (raw (open-socket domain type proto))
    (fd-set-nonblock raw)
    (fd-set-closeonexec raw)
    raw))

(def (socket? obj)
  (fd-type? obj 'socket))

(def (socket-bind sock addr)
  (check-os-error (_bind (fd-e sock) (socket-address addr))
    (socket-bind sock addr)))

(def (socket-listen sock (backlog 10))
  (check-os-error (_listen (fd-e sock) backlog)
    (socket-listen sock backlog)))

(def (socket-accept sock (sa #f))
  (alet (fd (do-retry-nonblock (_accept (fd-e sock) sa)
             (_accept sock sa)))
    (let (raw (fdopen fd 'inout 'socket))
      (fd-set-nonblock raw)
      (fd-set-closeonexec raw)
      raw)))

(def (socket-connect sock sa)
  (let (sa (socket-address sa))
    (do-retry-nonblock (_connect (fd-e sock) sa)
      (socket-connect sock sa))))

(def (socket-shutdown sock how)
  (check-os-error (_shutdown (fd-e sock) how)
    (socket-shutdown sock how))
  (cond
   ((eq? how SHUT_RD)
    (close-input-port sock))
   ((eq? how SHUT_WR)
    (close-output-port sock))
   ((eq? how SHUT_RDWR)
    (close-port sock))))

(def (socket-close sock)
  (with-catch void (cut close-port sock)))

(def (socket-send sock bytes (start 0) (end (u8vector-length bytes)) (flags 0))
  (do-retry-nonblock (_send (fd-e sock) bytes start end flags)
    (socket-send sock bytes start end flags)))

(def (socket-sendto sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0))
  (let (sa (and sa (socket-address sa)))
    (do-retry-nonblock (_sendto (fd-e sock) bytes start end flags sa)
      (socket-sendto sock bytes sa start end flags))))

;; TODO socket-sendmsg

(def (socket-recv sock bytes (start 0) (end (u8vector-length bytes)) (flags 0))
  (do-retry-nonblock (_recv (fd-e sock) bytes start end flags)
    (socket-recv sock bytes start end flags)))

(def (socket-recvfrom sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0))
  (do-retry-nonblock (_recvfrom (fd-e sock) bytes start end flags sa)
    (socket-recvfrom sock bytes sa start end flags)))

;; TODO socket-recvmsg

(def (socket-getpeername sock)
  (let* ((af (socket-getsockopt sock SOL_SOCKET SO_DOMAIN))
         (sa (make-socket-address af)))
    (check-os-error (_getpeername (fd-e sock) sa)
      (socket-getpeername sock))
    sa))

(def (socket-getsockname sock)
  (let* ((af (socket-getsockopt sock SOL_SOCKET SO_DOMAIN))
         (sa (make-socket-address af)))
    (check-os-error (_getsockname (fd-e sock) sa)
      (socket-getsockname sock))
    sa))

;;; Socket addresses
(def (socket-address? obj)
  (_sockaddr? obj))

(def (make-socket-address af)
  (cond
   ((eq? af AF_INET)
    (make-socket-address-in))
   ((eq? af AF_INET6)
    (make-socket-address-in6))
   ((eq? af AF_UNIX)
    (make-socket-address-un))
   (else
    (error "Unknown address family" af))))

(def (make-socket-address-in)
  (_make_sockaddr_in))

(def (make-socket-address-in6)
  (_make_sockaddr_in6))

(def (make-socket-address-un)
  (_make_sockaddr_un))

(def (socket-address-in host port)
  (let (ip4 (ip4-address host))
    (_sockaddr_in ip4 port)))

(def (socket-address-in6 host port)
  (let (ip6 (ip6-address host))
    (_sockaddr_in6 ip6 port)))

(def (socket-address-un path)
  (path->socket-address path))

(def (socket-address addr)
  (cond
   ((socket-address? addr) addr)
   ((or (inet-address? addr)
        (inet-address-string? addr))
    (inet-address->socket-address addr))
   (else
    (path->socket-address addr))))

(def (inet-address->socket-address addr)
  (let lp ((addr (inet-address addr)))
    (with ([ip . port] addr)
      (cond
       ((ip4-address? ip)
        (_sockaddr_in ip port))
       ((ip6-address? ip)
        (_sockaddr_in6 ip port))
       (else
        (error "Bad address; expected resolved inet-address" addr))))))

(def (path->socket-address path)
  (let (pathlen (u8vector-length (string->bytes path)))
    (if (fx< pathlen UNIX_MAX_PATH)
      (_sockaddr_un path)
      (error "Malformed address; path is too long"))))

(def (socket-address->address sa)
  (let (saf (_sockaddr_fam sa))
    (cond
     ((eq? saf AF_INET)
      (let* ((ip4 (make-u8vector 4))
             (_ (_sockaddr_in_addr sa ip4))
             (port (_sockaddr_in_port sa)))
        (cons ip4 port)))
     ((eq? saf AF_INET6)
      (let* ((ip6 (make-u8vector 16))
             (_ (_sockaddr_in6_addr sa ip6))
             (port (_sockaddr_in6_port sa)))
        (cons ip6 port)))
     ((eq? saf AF_UNIX)
      (_sockaddr_un_path sa))
     (else
      (error "Unknown address family" sa saf)))))

(def (socket-address->string sa)
  (let (saf (_sockaddr_fam sa))
    (cond
     ((eq? saf AF_INET)
      (let* ((ip4 (make-u8vector 4))
             (_ (_sockaddr_in_addr sa ip4))
             (port (_sockaddr_in_port sa)))
        (string-append (ip4-address->string ip4) ":" (number->string port))))
     ((eq? saf AF_INET6)
      (let* ((ip6 (make-u8vector 16))
             (_ (_sockaddr_in6_addr sa ip6))
             (port (_sockaddr_in6_port sa)))
        (string-append (ip6-address->string ip6) ":" (number->string port))))
     ((eq? saf AF_UNIX)
      (_sockaddr_un_path sa))
     (else
      (error "Unknown address family" sa saf)))))

;;; sockopts
(def (socket-getsockopt sock level opt)
  (error "XXX Implement me!")
  )

(def (socket-setsockopt sock level opt val)
  (error "XXX Implement me!")
  )
