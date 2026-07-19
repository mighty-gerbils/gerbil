;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api
(import :std/interface
        :std/error
        :std/os/error
        :std/os/device
        :std/os/socket
        :std/os/sockopt
        :std/net/address
        :std/sync/rwlock
        :std/time/timeout
        ../interface
        ./types
        ./sockaddr
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
        udp-socket
        udp-multicast-socket
        default-connect-timeout
        default-listen-backlog
        default-listen-sockopts)

(def default-listen-sockopts
  [[SOL_SOCKET.SO_REUSEADDR . 1]])
(def default-listen-backlog 5)
(def default-connect-timeout
  (IOTimeout 5))

(def (tcp-connect (addr  : InetAddress)
                  (timeo : IOTimeout := default-connect-timeout))
  => StreamSocket
  (let (sock (socket-connect addr SOCK_STREAM IPPROTO_TCP timeo))
    (with-error-device-close sock
     (socket-device-setsockopt sock IPPROTO_TCP.TCP_NODELAY 1))
    (using (stream-sock (make-stream-socket sock) : stream-socket)
      (set! stream-sock.remote addr)
      (StreamSocket stream-sock))))

(def (tcp-listen (addr : InetAddress)
                 backlog:  (backlog  : :fixnum := default-listen-backlog)
                 sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (let (sock (socket-listen addr SOCK_STREAM IPPROTO_TCP backlog sockopts))
    (using (server-sock (make-basic-server-socket sock) : basic-server-socket)
      (ServerSocket server-sock))))

(def (unix-connect (addr  : UnixAddress)
                   (timeo : IOTimeout := !NoTimeout))
  => StreamSocket
  (let (sock (socket-connect addr SOCK_STREAM 0 timeo))
    (using (stream-sock (make-stream-socket sock) : stream-socket)
      (set! stream-sock.remote addr)
      (StreamSocket stream-sock))))

(def (unix-listen (addr : UnixAddress)
                  backlog:  (backlog  : :fixnum := default-listen-backlog)
                  sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (let (sock (socket-listen addr SOCK_STREAM 0 backlog sockopts))
    (using (server-sock (make-basic-server-socket sock) : basic-server-socket)
      (ServerSocket server-sock))))

(def (stream-connect (addr  : Address)
                     (timeo : IOTimeout := default-connect-timeout))
  => StreamSocket
  (using (addr (resolve->endpoint addr) :- EndpointAddress)
    (case addr.domain
      ((inet4 inet6)
       (tcp-connect addr timeo))
      ((unix)
       (unix-connect addr timeo))
      (else
       (raise-bad-argument stream-connect "unknown endpoint address" address: addr)))))

(def (stream-listen (addr : Address)
                    backlog:  (backlog  : :fixnum := default-listen-backlog)
                    sockopts: (sockopts : :list   := default-listen-sockopts))
  => ServerSocket
  (using (addr (resolve->endpoint addr) :- EndpointAddress)
    (case addr.domain
      ((ip4 ip6)
       (tcp-listen addr backlog: backlog sockopts: sockopts))
      ((unix)
       (unix-listen addr backlog: backlog sockopts: sockopts))
      (else
       (raise-bad-argument stream-listen "unknown endpoint address" address: addr)))))

(def (udp-socket (address :? InetAddress := #f))
  => DatagramSocket
  (let* ((domain
          (if address
            (address->socket-domain address)
            AF_INET))
         (sock (open-client-socket-device domain SOCK_DGRAM IPPROTO_UDP)))
    (when address
      (with-error-device-close sock
        (socket-device-setsockopt sock SOL_SOCKET.SO_REUSEADDR 1)
        (socket-device-bind sock (address->sockaddr address))))
    (DatagramSocket (make-datagram-socket sock))))

(def (udp-multicast-socket (group-ip-address : IPAddress)
                           (local-address    : InetAddress)
                           interface: (ifindex   : :fixnum := 0)
                           loopback:  (loopback? : :boolean := #f))
  (unless (eq? (address->socket-domain group-ip-address)
               (address->socket-domain local-address.net))
    (raise-bad-argument udp-multicast-socket "address: domain mismatch" group-ip-address local-address))
  (let* ((domain   (address->socket-domain local-address))
         (sock     (open-client-socket-device domain SOCK_DGRAM IPPROTO_UDP))
         (loopback (if loopback? 1 0)))
    (with-error-device-close sock
      (socket-device-setsockopt sock SOL_SOCKET.SO_REUSEADDR 1)
      (socket-device-bind sock (address->sockaddr local-address))
      (case group-ip-address.domain
        ((ip4)
         (let (mreq (ip_mreq))
           (set! (ip_mreq-imr_multiaddr mreq)
             group-ip-address.bytes)
           #;(set! (ip_mreq-imr_interface mreq)
             local-address.net.bytes)
           (socket-device-setsockopt sock IPPROTO_IP.IP_ADD_MEMBERSHIP mreq))
         (socket-device-setsockopt sock IPPROTO_IP.IP_MULTICAST_LOOP loopback))
        ((ip6)
         (let (mreq (ipv6_mreq))
           (set! (ipv6_mreq-ipv6mr_multiaddr mreq)
             group-ip-address.bytes)
           (set! (ipv6_mreq-ipv6mr_interface mreq)
             ifindex)
           (socket-device-setsockopt sock IPPROTO_IPV6.IPV6_ADD_MEMBERSHIP mreq))
         (socket-device-setsockopt sock IPPROTO_IPV6.IPV6_MULTICAST_LOOP loopback))
        (else
         (BUG udp-multicast-socket "unexpected address domain" group-ip-address.domain))))
    (DatagramSocket (make-datagram-socket sock))))

;;; Interface
(implement
  (Closer
   (basic-socket
    (close
     __basic-socket-close)))
  (Socket
   (basic-socket
    (domain
     (lambda (self)
       self.dev.domain))
    (address
     __basic-socket-local-address)
    (peer-address
     __basic-socket-peer-address)
    (getsockopt
     __basic-socket-getsockopt)
    (setsockopt
     __basic-socket-setsockopt)
    (set-input-timeout!
     __basic-socket-set-input-timeout!)
    (set-output-timeout!
     __basic-socket-set-output-timeout!)))
  (ClientSocket
   (basic-client-socket
    (recv
     __client-socket-recv)
    (send
     __client-socket-send)))
  (StreamSocket
   (stream-socket
    (reader
     __stream-socket-get-reader)
    (writer
     __stream-socket-get-writer)
    (shutdown
     __stream-socket-shutdown)))
  (Closer
   (stream-socket-reader
    (close
     __stream-socket-close-reader)))
  (Reader
   (stream-socket-reader
    (read
     __stream-socket-read)))
  (Closer
   (stream-socket-writer
    (close
     __stream-socket-close-writer)))
  (Writer
   (stream-socket-writer
    (write
     __stream-socket-write)))
  (ServerSocket
   (basic-server-socket
    (accept
     __server-socket-accept)))
  (DatagramSocket
   (datagram-socket
    (recvfrom
     __datagram-socket-recvfrom)
    (sendto
     __datagram-socket-sendto)
    (connect
     __datagram-socket-connect))))
