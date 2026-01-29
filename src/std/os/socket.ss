;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Socket Devices
(import :std/ffi
        :std/net/address/address
        :std/net/address/inet
        ./error
        ./device
        ./fcntl)
(export #t)

(defstruct (SocketDevice OSDevice)
  ((domain :- :fixnum)
   (type   :- :fixnum)
   (proto  :- :fixnum)
   (addr   :? Address)
   (peer   :? Address)))

(def (open-socket-device (domain    : :fixnum)
                         (type      : :fixnum)
                         (proto     : :fixnum)
                         (direction : :fixnum))
  => SocketDevice
  (let* ((type
          (cond-expand
            (linux
             (fxior type SOCK_NONBLOCK SOCK_CLOEXEC))
            (else type)))
         (fd  (do-syscall (__socket domain type proto)))
         (_
          (cond-expand
            ((not linux)
             (with-error (__close-fd fd)
               (fcntl-setfl! fd O_NONBLOCK)
               (fcntl-setfd! fd FD_CLOEXEC)))
            (else (void))))
         (raw (__open-raw-device 'socket fd direction)))
    (SocketDevice raw fd direction domain type proto #f #f)))

(def (open-client-socket-device (domain    : :fixnum)
                                (type      : :fixnum)
                                (proto     : :fixnum := 0))
  => SocketDevice
  (open-socket-device domain type proto DIRECTION-INOUT))

(def (open-server-socket-device (domain    : :fixnum)
                                (type      : :fixnum)
                                (proto     : :fixnum := 0))
  => SocketDevice
  (open-socket-device domain type proto DIRECTION-IN))

(def (socket-device-shutdown (sock : SocketDevice) (how : :fixnum))
  => :void
  (do-check-device-open socket-shutdown sock
    (__shutdown sock.fd how)
    (set! sock.dir
      (fxand sock.dir (fxnot how)))
    (when (fx= sock.dir 0)
      (device-close sock))))

(def (socket-device-bind (sock : SocketDevice) (addr : Address))
  => :void
  (do-check-device-open socket-device-bind sock
    (let (sa (socket-device-address->sockaddr addr))
      (do-syscall (__bind sock.fd sa)))))

(def (socket-device-listen (sock : SocketDevice) (backlog : :fixnuim := 10))
  => :void
  (do-check-device-input socket-device-listen sock
    (do-syscall (__listen sock.fd backlog))))

(def (socket-device-accept (sock : SocketDevice))
  => SocketDevice
  XXX)

(def (socket-device-connect (sock : SocketDevice) (addr : Address))
  => :fixnum
  (do-check-device-output socket-connect sock
    (let (sa (socket-device-address->sockaddr addr))
      (do-syscall (__connect sock.fd sa)
        EINPROGRESS EAGAIN EWOULDBLOCK ))))

;; TODO safer input/output range interface
(def (socket-device-send (sock        : SocketDevice)
                         (input       : :u8vector)
                         (input-start : :fixnum)
                         (input-end   : :fixnum)
                         (flags       : :fixnum := 0))
  => :fixnum
  XXX)

(def (socket-device-recv (sock         : SocketDevice)
                         (output       : :u8vector)
                         (output-start : :fixnum)
                         (output-end   : :fixnum)
                         (flags        : :fixnum := 0))
  => :fixnum
  XXX)

(def (socket-device-sendto (sock        : SocketDevice)
                           (peer        : Address)
                           (input       : :u8vector)
                           (input-start : :fixnum)
                           (input-end   : :fixnum)
                           (flags       : :fixnum := 0))
  => :fixnum
  XXX)

(def (socket-device-recvfrom (sock         : SocketDevice)
                             (output       : :u8vector)
                             (output-start : :fixnum)
                             (output-end   : :fixnum)
                             (flags        : :fixnum := 0))
  => :values
  XXX)

(def (socket-device-sendmsg (sock  : SocketDevice)
                            (name  : :u8vector)
                            (io    : :u8vector)
                            (ctl   : :u8vector)
                            (flags : :fixnum))
  => :fixnum
  XXX)

(def (socket-device-recvmsg (sock  : SocketDevice)
                            (name  : :u8vector)
                            (io    : :u8vector)
                            (ctl   : :u8vector)
                            (flags : :fixnum))
  => :values
  XXX)

(def (socket-device-getpeername (sock : SocketDevice))
  => Address
  XXX
  )

(def (socket-device-getsockname (sock : SocketDevice))
  => Address
  XXX
  )

;;; utilities
(def (socket-device-address->sockaddr (sock : SocketDevice) (addr : Address))
  => sockaddr
  XXX)

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/socket.h>"
           "<netinet/in.h>"
           "<netinet/ip.h>"
           "<netinet/tcp.h>"
           "<arpa/inet.h>"
           "<sys/un.h>")

(def-C-union sockaddr
  (struct sockaddr_in
          ((family    sin_family     :uint)
           (port      sin_port       :u16)
           (addr      sin_addr       [:u8 4])))
  (struct sockaddr_in6
          ((family    sin6_family    :uint)
           (port      sin6_port      :u16)
           (flowinfo  sing6_flowinfo :u32)
           (addr      sin6_addr      [:u8 16])
           (scope-id  sin6_scope_id  :u32)))
  (struct sockaddr_un
          ((family    sun_family     :uint)
           (path      sun_path       [:u8 108]))))

(def-C-syscall (__socket (domain :- :fixnum)
                         (type   :- :fixnum)
                         (proto  :- :fixnum))
  "socket(___arg1, ___arg2, __arg3)")

(def-C-syscall (__shutdown (fd  :- :fixnum)
                           (how :- :fixnum))
  "shutdown(___arg1, ___arg2)")

(def-C-syscall (__bind (fd   :- :fixnum)
                       (addr :- sockaddr))
  "bind(___arg1, ___arg2, ___U8VECTORSIZE(___ARG2))")

(def-C-syscalll (__connect (fd   :- :fixnum)
                           (addr :- sockaddr))
  "connect(___arg1, ___arg2, ___U8VECTORSIZE(___ARG2))")

(def-C-syscall (__listen (fd      :- :fixnum)
                         (backlog :- :fixnum))
  "listen(___arg1, ___arg2)")

#;(def-C-union sockaddr
  (struct sockaddr_in
          ((family    sin_family     uint       :- :fixnum)
           (port      sin_port       uint16     :- :fixnum)
           (addr      sin_addr       [uint8 4]  :- :u8vector)))
  (struct sockaddr_in6
          ((family    sin6_family    uint       :- :fixnum)
           (port      sin6_port      uint16     :- :fixnum)
           (flowinfo  sing6_flowinfo uint32     :- :integer)
           (addr      sin6_addr      [uint8 16] :- :u8vector)
           (scope-id  sin6_scope_id  uint32     :- :integer)))
  (struct sockaddr_un
          ((family    sun_family     uint       :- :fixnum)
           (path      sun_path       [char 108] :- :u8vector))))


#;(def-C-code (__socket (domain :- :fixnum)
                      (type   :- :fixnum)
                      (proto  :- :fixnum))
  => :fixnum
  "___TRAP_ERRNO(socket(___INT(___ARG1), ___INT(___ARG2), ___INT(___ARG3))")

#;(def-C-code (__bind (fd   :- :fixnum)
                    (addr :- :u8vector))
  => :fixnum
  "__TRAP_ERRNO(bind(___INT(___ARG1), ___U8VECTOR_AS(struct sockaddr *, ___ARG2), ___U8VECTORSIZE(___ARG2)))")

(def-C-const
  SHUT_RD
  SHUT_WR
  SHUT_RDWR

  AF_UNIX
  AF_LOCAL
  AF_INET
  AF_AX25
  AF_IPX
  AF_APPLETALK
  AF_X25
  AF_INET6
  AF_DECnet
  AF_KEY
  AF_NETLINK
  AF_PACKET
  AF_RDS
  AF_PPPOX
  AF_LLC
  AF_IB
  AF_MPLS
  AF_CAN
  AF_TIPC
  AF_BLUETOOTH
  AF_ALG
  AF_VSOCK
  AF_KCM
  AF_XDP

  IPPROTO_IP
  IPPROTO_IPV6
  IPPROTO_TCP
  IPPROTO_UDP
  IPPROTO_SCTP
  IPPROTO_UDPLITE

  SOCK_STREAM
  SOCK_DGRAM
  SOCK_SEQPACKET
  SOCK_RAW
  SOCK_RDM

  SOCK_NONBLOCK
  SOCK_CLOEXEC

  SO_ACCEPTCONN
  SO_ATTACH_FILTER
  SO_ATTACH_BPF
  SO_ATTACH_REUSEPORT_CBPF
  SO_ATTACH_REUSEPORT_EBPF
  SO_BINDTODEVICE
  SO_BROADCAST
  SO_DEBUG
  SO_DETACH_FILTER
  SO_DETACH_BPF
  SO_DOMAIN
  SO_ERROR
  SO_DONTROUTE
  SO_INCOMING_CPU
  SO_INCOMING_NAPI_ID
  SO_KEEPALIVE
  SO_LINGER
  SO_LOCK_FILTER
  SO_MARK
  SO_OOBINLINE
  SO_PASSCRED
  SO_PASSSEC
  SO_PEEK_OFF
  SO_PEERCRED
  SO_PEERSEC
  SO_PRIORITY
  SO_PROTOCOL
  SO_RCVBUF
  SO_RCVLOWAT
  SO_SNDLOWAT
  SO_RCVTIMEO
  SO_SNDTIMEO
  SO_REUSEADDR
  SO_REUSEPORT
  SO_RXQ_OVFL
  SO_SELECT_ERR_QUEUE
  SO_SNDBUF
  SO_SNDBUFFORCE
  SO_TIMESTAMP
  SO_TIMESTAMPNS
  SO_TYPE
  SO_BUSY_POLL
  SO_PEERSEC

  IP_ADD_MEMBERSHIP
  IP_ADD_SOURCE_MEMBERSHIP
  IP_BIND_ADDRESS_NO_PORT
  IP_BLOCK_SOURCE
  IP_DROP_MEMBERSHIP
  IP_DROP_SOURCE_MEMBERSHIP
  IP_FREEBIND
  IP_HDRINCL
  IP_MSFILTER
  IP_MTU
  IP_MTU_DISCOVER
  IP_MULTICAST_ALL
  IP_MULTICAST_IF
  IP_MULTICAST_LOOP
  IP_MULTICAST_TTL
  IP_NODEFRAG
  IP_OPTIONS
  IP_PASSSEC
  IP_PKTINFO
  IP_RECVERR
  IP_RECVOPTS
  IP_RECVORIGDSTADDR
  IP_RECVTOS
  IP_RECVTTL
  IP_RETOPTS
  IP_ROUTER_ALERT
  IP_TOS
  IP_TRANSPARENT
  IP_TTL
  IP_UNBLOCK_SOURCE

  IPTOS_LOWDELAY
  IPTOS_THROUGHPUT
  IPTOS_RELIABILITY
  IPTOS_MINCOST

  IPV6_ADDRFORM
  IPV6_ADD_MEMBERSHIP
  IPV6_DROP_MEMBERSHIP
  IPV6_MTU
  IPV6_MTU_DISCOVER
  IPV6_MULTICAST_HOPS
  IPV6_MULTICAST_IF
  IPV6_MULTICAST_LOOP
  IPV6_RECVPKTINFO
  IPV6_RTHDR
  IPV6_AUTHHDR
  IPV6_DSTOPTS
  IPV6_HOPOPTS
  IPV6_FLOWINFO
  IPV6_HOPLIMIT
  IPV6_RECVERR
  IPV6_ROUTER_ALERT
  IPV6_UNICAST_HOPS
  IPV6_V6ONLY

  TCP_CONGESTION
  TCP_CORK
  TCP_DEFER_ACCEPT
  TCP_INFO
  TCP_KEEPCNT
  TCP_KEEPIDLE
  TCP_KEEPINTVL
  TCP_LINGER2
  TCP_MAXSEG
  TCP_NODELAY
  TCP_QUICKACK
  TCP_SYNCNT
  TCP_USER_TIMEOUT
  TCP_WINDOW_CLAMP

  UDP_CORK

  MSG_CONFIRM
  MSG_CTRUNC
  MSG_DONTROUTE
  MSG_DONTWAIT
  MSG_EOR
  MSG_ERRQUEUE
  MSG_MORE
  MSG_NOSIGNAL
  MSG_OOB
  MSG_PEEK
  MSG_TRUNC
  MSG_WAITALL


  SIOCATMARK
  SIOCINQ
  SIOCOUTQ
  FIONREAD
  TIOCOUTQ
  )
