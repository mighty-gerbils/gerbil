;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api
(import :std/interface
        :std/error
        :std/os/error
        :std/os/device
        :std/os/socket
        :std/os/sockopt
        :std/net/address/types
        :std/net/address/resolver
        :std/sync/rwlock
        :std/time/timeout
        ../interface
        ./types
        ./socket
        ./basic
        ./client
        ./stream
        ./server
        ./datagram)
(export tcp-connect
        tcp-listen
        unix-connect
        unix-listen
        stream-connect
        stream-listen
        ;; TODO UDP
        ;; udp-socket
        ;; udp-multicast-socket
        (rename: default-listen-sockopts default-server-sockopts)
        (rename: default-backlog default-server-backlog))

(def default-listen-sockopts
  [SO_REUSEADDR])
(def default-backlog 10)

(def (tcp-connect (addr  : InetAddress)
                  (timeo : IOTimeout := !NoTimeout))
  => StreamSocket
  (let (sock (connect addr SOCK_STREAM IPPROTO_TCP timeo))
    (with-error-device-close
     (socket-device-setsockopt IPPROTO_TCP TCP_NODELAY 1))
    (using (stream-sock (make-stream-socket sock) : stream-socket)
      (set! stream-sock.remote addr)
      (StreamSocket stream-sock))))

(def (tcp-listen (addr : InetAddress)
                 backlog:  (backlog  : :fixnum := default-backlog)
                 sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (let (sock (listen addr SOCK_STREAM IPPROTO_TCP backlog sockopts))
    (using (server-sock (make-basic-server-socket sock) : basic-server-socket)
      (set! server-sock.local addr)
      (ServerSocket server-sock))))

(def (unix-connect (addr  : UnixAddress)
                   (timeo : IOTimeout := !NoTimeout))
  => StreamSocket
  (let (sock (connect addr SOCK_STREAM 0 timeo))
    (using (stream-sock (make-stream-socket sock) : stream-socket)
      (set! stream-sock.remote addr)
      (StreamSocket stream-sock))))

(def (unix-listen (addr : UnixAddress)
                  backlog:  (backlog  : :fixnum := default-backlog)
                  sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (let (sock (listen addr SOCK_STREAM 0 backlog sockopts))
    (using (server-sock (make-basic-server-socket sock) : basic-server-socket)
      (set! server-sock.local addr)
      (ServerSocket server-sock))))

(def (stream-connect (addr : Address) (timeo : IOTimeout := !NoTimeout))
  => StreamSocket
  (using (addr (resolve-address->endpoint addr) :- EndpointAddress)
    (case addr.domain
      ((IP4 IP6)
       (__tcp-connect addr timeo))
      ((UNIX)
       (__unix-connect addr timeo))
      (else
       (raise-bad-argument stream-connect "unknown endpoint address" address: addr)))))

(def (stream-listen (addr : Address)
                    backlog:  (backlog  : :fixnum := default-backlog)
                    sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (using (addr (resolve-address->endpoint addr) :- EndpointAddress)
    (case addr.domain
      ((IP IP6)
       (__tcp-listen addr backlog sockopts))
      ((UNIX)
       (__unix-listen addr backlog sockopts))
      (else
       (raise-bad-argument stream-listen "unknown endpoint address" address: addr)))))

;;;; XXX
;;;; TODO UDP
;; (def (udp-socket (address #f))
;;   (let* ((address (and address (inet-address address)))
;;          (domain (if address (address-domain address) AF_INET))
;;          (sock (udp-new domain)))
;;     (when address
;;       (udp-bind sock address))
;;     (DatagramSocket (make-datagram-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))

;; (def (udp-multicast-socket group-ip-address local-address (ifindex 0))
;;   (let* ((group-ip-address (ip-address group-ip-address))
;;          (local-address (inet-address local-address))
;;          (domain (ip-address-domain group-ip-address))
;;          (_ (unless (fx= domain (address-domain local-address))
;;               (raise-bad-argument udp-multicast-socket "address: domain mismatch" group-ip-address local-address)))
;;          (sock (udp-new-multicast domain group-ip-address local-address ifindex)))
;;     (DatagramSocket (make-datagram-socket sock domain #f #f #f #f (make-rwlock 'socket) #f))))


;;; Interface
;; basic-socket Socket implementation
(defmethod {domain basic-socket}
  (lambda (self)
    self.dev.domain)
  interface: Socket)
(defmethod {address basic-socket}
  __basic-socket-local-address
  interface: Socket)
(defmethod {peer-address basic-socket}
  __basic-socket-peer-address
  interface: Socket)
(defmethod {getsockopt basic-socket}
  __basic-socket-getsockopt
  interface: Socket)
(defmethod {setsockopt basic-socket}
  __basic-socket-setsockopt
  interface: Socket)
(defmethod {set-input-timeout! basic-socket}
  __basic-socket-set-input-timeout!
  interface: Socket)
(defmethod {set-output-timeout! basic-socket}
  __basic-socket-set-output-timeout!
  interface: Socket)
(defmethod {close basic-socket}
  __basic-socket-close
  interface: Closer)

(@implement Socket basic-socket)

(defmethod {recv basic-client-socket}
  __client-socket-recv
  interface: ClientSocket)
(defmethod {send basic-client-socket}
  __client-socket-send
  interface: ClientSocket)

(@implement ClientSocket basic-client-socket)

;; stream-socket StreamSocket implementation
(defmethod {reader stream-socket}
  __stream-socket-get-reader
  interface: StreamSocket)
(defmethod {writer stream-socket}
  __stream-socket-get-writer
  interface: StreamSocket)
(defmethod {shutdown stream-socket}
  __stream-socket-shutdown
  interface: StreamSocket)

(@implement StreamSocket stream-socket)

;; stream-socket-reader Reader implementation
(defmethod {read stream-socket-reader}
  __stream-socket-read
  interface: Reader)
(defmethod {close stream-socket-reader}
  __stream-socket-close-reader
  interface: Closer)

(@implement Reader stream-socket-reader)

;; stream-socket-writer Writer implementation
(defmethod {write stream-socket-writer}
  __stream-socket-write
  interface: Writer)
(defmethod {close stream-socket-writer}
  __stream-socket-close-writer
  interface: Closer)

(@implement Writer stream-socket-writer)

;; basic-server-socket ServerSocket implementation
(defmethod {accept basic-server-socket}
  __server-socket-accept
  interface: ServerSocket)

(@implement ServerSocket basic-server-socket)

;; datagram-socket DatagramSocket implementation
(defmethod {recvfrom datagram-socket}
  __datagram-socket-recvfrom
  interface: DatagramSocket)
(defmethod {sendto datagram-socket}
  __datagram-socket-sendto
  interface: DatagramSocket)
(defmethod {connect datagram-socket}
  __datagram-socket-connect
  interface: DatagramSocket)

(@implement DatagramSocket datagram-socket)
