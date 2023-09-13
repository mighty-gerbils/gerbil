;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api
(import :std/net/address
        :std/os/error
        :std/os/socket
        :std/misc/rwlock
        ../interface
        ./types
        ./socket
        ./basic
        ./stream
        ./server
        ./datagram)
(export tcp-connect
        tcp-listen
        unix-connect
        unix-listen
        udp-socket
        udp-multicast-socket
        inaddr-any4
        inaddr-any6
        localhost4
        localhost6
        (rename: default-listen-sockopts default-server-sockopts)
        (rename: default-backlog default-server-backlog))

(def default-listen-sockopts
  [SO_REUSEADDR])

(def default-backlog 10)

(def inaddr-any4
  (make-u8vector 4 0))

(def inaddr-any6
  (make-u8vector 16 0))

(def localhost4
  (let (addr (make-u8vector 4 0))
    (u8vector-set! addr 0 127)
    (u8vector-set! addr 3 1)
    addr))

(def localhost6
  (let (addr (make-u8vector 16 0))
    (u8vector-set! addr 15 1)
    addr))

(def (address-domain addr)
  (with ([host . _ ] addr)
    (ip-address-domain host)))

(def (ip-address-domain host)
  (case (u8vector-length host)
    ((4) AF_INET)
    ((6) AF_INET6)
    (else
     (error "unknown address domain" host))))

(def (tcp-connect address (timeo #f))
  (let* ((address (resolve-address address))
         (domain (address-domain address))
         (sock (connect address timeo)))
    (with-error-close sock
      (socket-setsockopt sock IPPROTO_TCP TCP_NODELAY 1))
    (StreamSocket (make-stream-socket sock domain #f #f #f #f (make-rwlock 'socket) #f 0))))

(def (tcp-listen address
                 backlog: (backlog default-backlog)
                 sockopts: (sockopts default-listen-sockopts))
  (let* ((address (inet-address address))
         (domain (address-domain address))
         (sock (listen address backlog sockopts)))
    (ServerSocket (make-basic-server-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))

(def (unix-connect path (timeo #f))
  (unless (string? path)
    (error "Bad argument; expected string" path))
  (let (sock (connect path timeo))
    (StreamSocket (make-stream-socket sock AF_UNIX #f #f #f #f (make-rwlock 'socket) #f 0))))

(def (unix-listen path
                  backlog: (backlog default-backlog)
                  sockopts: (sockopts default-listen-sockopts))
  (unless (string? path)
    (error "Bad argument; expected string" path))
  (let (sock (listen path backlog sockopts))
    (ServerSocket (make-basic-server-socket sock AF_UNIX #f #f #f #f (make-rwlock 'socket) #f))))

(def (udp-socket (address #f))
  (let* ((address (and address (inet-address address)))
         (domain (if address (address-domain address) AF_INET))
         (sock (udp-new domain)))
    (when address
      (udp-bind sock address))
    (DatagramSocket (make-datagram-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))

(def (udp-multicast-socket group-ip-address local-address (ifindex 0))
  (let* ((group-ip-address (ip-address group-ip-address))
         (local-address (inet-address local-address))
         (domain (ip-address-domain group-ip-address))
         (_ (unless (fx= domain (address-domain local-address))
              (error "Bad address; domain mismatch" group-ip-address local-address)))
         (sock (udp-new-multicast domain group-ip-address local-address ifindex)))
    (DatagramSocket (make-datagram-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))

;;; Interface
;; basic-socket Socket implementation
(defmethod {domain basic-socket}
  &basic-socket-domain)
(defmethod {address basic-socket}
  basic-socket-local-address)
(defmethod {peer-address basic-socket}
  basic-socket-peer-address)
(defmethod {getsockopt basic-socket}
  basic-socket-getsockopt)
(defmethod {setsockopt basic-socket}
  basic-socket-setsockopt)
(defmethod {set-input-timeout! basic-socket}
  &basic-socket-timeo-in-set!)
(defmethod {set-output-timeout! basic-socket}
  &basic-socket-timeo-out-set!)
(defmethod {close basic-socket}
  basic-socket-close)

;; stream-socket StreamSocket implementation
(defmethod {recv stream-socket}
  stream-socket-recv)
(defmethod {send stream-socket}
  stream-socket-send)
(defmethod {reader stream-socket}
  stream-socket-get-reader)
(defmethod {writer stream-socket}
  stream-socket-get-writer)
(defmethod {shutdown stream-socket}
  stream-socket-shutdown)
(defmethod {close stream-socket}
  stream-socket-close)

;; stream-socket-reader Reader implementation
(defmethod {read stream-socket-reader}
  stream-socket-read)
(defmethod {close stream-socket-reader}
  stream-socket-close-reader)

;; stream-socket-writer Writer implementation
(defmethod {write stream-socket-writer}
  stream-socket-write)
(defmethod {close stream-socket-writer}
  stream-socket-close-writer)

;; basic-server-socket ServerSocket implementation
(defmethod {accept basic-server-socket}
  server-socket-accept)

;; datagram-socket DatagramSocket implementation
(defmethod {recvfrom datagram-socket}
  datagram-socket-recvfrom)
(defmethod {sendto datagram-socket}
  datagram-socket-sendto)
(defmethod {connect datagram-socket}
  datagram-socket-connect)
(defmethod {recv datagram-socket}
  datagram-socket-recv)
(defmethod {send datagram-socket}
  datagram-socket-send)
