;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Socket Devices
(import :std/ffi
        ./error
        ./device
        ./fcntl
        ./sockaddr)
(export #t)

(defstruct (SocketDevice OSDevice)
  ((domain :- :fixnum)
   (type   :- :fixnum)
   (proto  :- :fixnum)
   (local  :? sockaddr)
   (remote :? sockaddr)))

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
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'socket fd direction))))
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

(def (socket-device-close (sock : SocketDevice))
  (when sock.local
    (sockaddr-discard! sock.local)
    (set! sock.local #f))
  (when sock.remote
    (sockaddr-discard! sock.remote)
    (set! sock.local #f))
  (device-close sock))

(def (socket-device-shutdown (sock : SocketDevice) (how : :fixnum))
  => :void
  (unless (fx= (fxand sock.dir how) 0)
    (__shutdown sock.fd how)
    (socket-device-close sock how)))

(def (socket-device-bind (sock : SocketDevice) (sa : sockaddr))
  => :void
  (do-check-device-open socket-device-bind sock
    (do-syscall (__bind sock.fd sa))))

(def (socket-device-listen (sock : SocketDevice) (backlog : :fixnum))
  => :void
  (do-check-device-input socket-device-listen sock
    (do-syscall (__listen sock.fd backlog))))

(def (socket-device-accept (sock : SocketDevice))
  => :t ;; SocketDevice or :fixnum
  (do-check-device-input socket-device-accept sock
    (let* ((sa (socket-device-sockaddr sock))
           (fd
            (cond-expand
              (linux
               (do-syscall (__accept4 sock.fd sa (fxior O_NONBLOCK O_CLOSEONEXEC))))
              (else
               (let (fd (do-syscall (__accept sock.fd sa)))
                 (with-error (__close-fd fd)
                   (fcntl-setfl! fd O_NONBLOCK)
                   (fcntl-setfd! fd FD_CLOEXEC))
                 fd))))
           (raw
            (with-error (__close-fd fd)
              (__open-raw-device 'socket fd DIRECTION-INOUT))))
      (if (fx< fd 0)
        fd
        (SocketDevice raw fd DIRECTION-INOUT
                      sock.domain sock.type sock.proto
                      #f sa)))))

(def (socket-device-connect (sock : SocketDevice) (sa : sockaddr))
  => :fixnum
  (do-check-device-output socket-device-connect sock
    (do-syscall (__connect sock.fd sa)
      EINPROGRESS EWOULDBLOCK EAGAIN)))

;; TODO safer input/output range interface
(def (socket-device-send (sock        : SocketDevice)
                         (input       : :u8vector)
                         (input-start : :fixnum)
                         (input-end   : :fixnum)
                         (flags       : :fixnum))
  => :fixnum
  (do-check-device-output socket-device-send sock
    (do-syscall (__send sock.fd input input-start (fx- input-end input-start) flags))))

(def (socket-device-recv (sock         : SocketDevice)
                         (output       : :u8vector)
                         (output-start : :fixnum)
                         (output-end   : :fixnum)
                         (flags        : :fixnum))
  => :fixnum
  (do-check-device-input socket-device-recv spck
    (do-syscall (__recv sock.fd output output-start (fx- output-end output-start) flags))))

(def (socket-device-sendto (sock        : SocketDevice)
                           (input       : :u8vector)
                           (input-start : :fixnum)
                           (input-end   : :fixnum)
                           (flags       : :fixnum)
                           (peer        : sockaddr))
  => :fixnum
  (do-check-device-output socket-device-sendto sock
    (do-syscall (__sendto sock.fd input input-start (fx- input-end input-start) flags sa))))

(def (socket-device-recvfrom (sock         : SocketDevice)
                             (output       : :u8vector)
                             (output-start : :fixnum)
                             (output-end   : :fixnum)
                             (flags        : :fixnum)
                             (peer         : sockaddr))
  => :fixnum
  (do-check-device-input socket-device-recvfrom sock
    (do-syscall (__recvfrom sock.fd output output-start (fx- output-end output-start) flags sa))))

;; TODO sendmsg recvmsg

(def (socket-device-getpeername (sock : SocketDevice))
  => sockaddr
  (cond
   (sock.remote)
   (else
    (do-check-device-open socket-device-getpeername sock
      (let (sa (socket-device-sockaddr sock))
        (do-syscall (___getpeername sock.fd sa))
        (set! sock.remote sa)
        sa)))))

(def (socket-device-getsockname (sock : SocketDevice))
  => sockaddr
  (cond
   (sock.local)
   (else
    (do-check-device-open socket-device-getsockname sock
      (let (sa (socket-device-sockaddr sock))
        (do-syscall (___getsockname sock.fd sa))
        (set! sock.local sa)
        sa)))))

(def (socket-device-sockaddr (sock : SocketDevice))
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

(def-C-syscall (__socket (domain :- :fixnum)
                         (type   :- :fixnum)
                         (proto  :- :fixnum))
  "socket(___arg1, ___arg2, __arg3)")

(def-C-syscall (__shutdown (fd  :- :fixnum)
                           (how :- :fixnum))
  "shutdown(___arg1, ___arg2)")

(def-C-syscall (__bind (fd   :- :fixnum)
                       (addr :- sockaddr))
  "bind(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(def-C-syscalll (__connect (fd   :- :fixnum)
                           (addr :- sockaddr))
  "connect(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(def-C-syscall (__listen (fd      :- :fixnum)
                         (backlog :- :fixnum))
  "listen(___arg1, ___arg2)")

(def-C-syscall (__accept (fd :- :fixnum)
                         (sa :- sockaddr))
  "accept(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(cond-expand
  (linux
   (def-C-syscall (__accept4 (fd    :- fixnum)
                             (sa    :- sockaddr)
                             (flags :- :fixnum))
     "accept4(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2), ___arg3)")))

(def-C-syscall (__send (fd      :- :fixnum)
                       (input   :- :u8vector)
                       (start   :- :fixnum)
                       (count   :- :fixnum)
                       (flags   :- :fixnum))
  "send(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5)")

(def-C-syscall (__recv (fd      :- :fixnum)
                       (ouput   :- :u8vector)
                       (start   :- :fixnum)
                       (count   :- :fixnum)
                       (flags   :- :fixnum))
  "recv(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5)")

(def-C-syscall (__sendto (fd      :- :fixnum)
                         (input   :- :u8vector)
                         (start   :- :fixnum)
                         (count   :- :fixnum)
                         (flags   :- :fixnum)
                         (dest    :- sockaddr))
  "sendto(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5, ___arg6, (socklen_t)___U8VECTORSIZE(___ARG6))")

(def-C-syscall (__sendto (fd      :- :fixnum)
                         (input   :- :u8vector)
                         (start   :- :fixnum)
                         (count   :- :fixnum)
                         (flags   :- :fixnum)
                         (src     :- sockaddr))
  "recvfrom(___arg1, (void*)(___arg2 + ___arg3), ___arg4, ___arg5, ___arg6, (socklen_t)___U8VECTORSIZE(___ARG6))")

(def-C-syscall (__getpeername (fd      :- :fixnum)
                              (sa      :- sockaddr))
  "getpeername(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

(def-C-syscall (__getsockname (fd      :- :fixnum)
                              (sa      :- sockaddr))
  "getsockname(___arg1, ___arg2, (socklen_t)___U8VECTORSIZE(___ARG2))")

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
