;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api
(import :std/net/address
        :std/error
        :std/os/error
        :std/os/socket
        :std/net/address
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

(def (address-domain addr)
  (with ([host . _ ] addr)
    (ip-address-domain host)))

(def (ip-address-domain host)
  (case (u8vector-length host)
    ((4) AF_INET)
    ((6) AF_INET6)
    (else
     (BUG 'ip-address-domain "unknown address domain" host))))

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
    (raise-bad-argument unix-connect "string" path))
  (let (sock (connect path timeo))
    (StreamSocket (make-stream-socket sock AF_UNIX #f #f #f #f (make-rwlock 'socket) #f 0))))

(def (unix-listen path
                  backlog: (backlog default-backlog)
                  sockopts: (sockopts default-listen-sockopts))
  (unless (string? path)
    (raise-bad-argument unix-listen "expected string" path))
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
              (raise-bad-argument udp-multicast-socket "address: domain mismatch" group-ip-address local-address)))
         (sock (udp-new-multicast domain group-ip-address local-address ifindex)))
    (DatagramSocket (make-datagram-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))

;;; Interface
;; basic-socket Socket implementation
(defmethod {domain basic-socket}
  &basic-socket-domain
  interface: Socket)
(defmethod {address basic-socket}
  basic-socket-local-address
  interface: Socket)
(defmethod {peer-address basic-socket}
  basic-socket-peer-address
  interface: Socket)
(defmethod {getsockopt basic-socket}
  basic-socket-getsockopt
  interface: Socket)
(defmethod {setsockopt basic-socket}
  basic-socket-setsockopt
  interface: Socket)
(defmethod {set-input-timeout! basic-socket}
  &basic-socket-timeo-in-set!
  interface: Socket)
(defmethod {set-output-timeout! basic-socket}
  &basic-socket-timeo-out-set!
  interface: Socket)
(defmethod {close basic-socket}
  basic-socket-close
  interface: Closer)

;; stream-socket StreamSocket implementation
(defmethod {recv stream-socket}
  stream-socket-recv
  interface: StreamSocket)
(defmethod {send stream-socket}
  stream-socket-send
  interface: StreamSocket)
(defmethod {reader stream-socket}
  stream-socket-get-reader
  interface: StreamSocket)
(defmethod {writer stream-socket}
  stream-socket-get-writer
  interface: StreamSocket)
(defmethod {shutdown stream-socket}
  stream-socket-shutdown
  interface: StreamSocket)
(defmethod {close stream-socket}
  stream-socket-close
  interface: Closer)

;; stream-socket-reader Reader implementation
(defmethod {read stream-socket-reader}
  stream-socket-read
  interface: Reader)
(defmethod {close stream-socket-reader}
  stream-socket-close-reader
  interface: Closer)

;; stream-socket-writer Writer implementation
(defmethod {write stream-socket-writer}
  stream-socket-write
  interface: Writer)
(defmethod {close stream-socket-writer}
  stream-socket-close-writer
  interface: Closer)

;; basic-server-socket ServerSocket implementation
(defmethod {accept basic-server-socket}
  server-socket-accept
  interface: ServerSocket)

;; datagram-socket DatagramSocket implementation
(defmethod {recvfrom datagram-socket}
  datagram-socket-recvfrom
  interface: DatagramSocket)
(defmethod {sendto datagram-socket}
  datagram-socket-sendto
  interface: DatagramSocket)
(defmethod {connect datagram-socket}
  datagram-socket-connect
  interface: DatagramSocket)
(defmethod {recv datagram-socket}
  datagram-socket-recv
  interface: DatagramSocket)
(defmethod {send datagram-socket}
  datagram-socket-send
  interface: DatagramSocket)
