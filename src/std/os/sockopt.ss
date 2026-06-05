;;; -*- Gerbil -*-
;;; © vyzo
;;; OS Socket Devices
(import :std/ffi
        :std/error
        ./error
        ./device
        ./socket
        ./time)
(export #t)

(defclass SockOpt
  ((level :  :fixnum)
   (name  :  :fixnum)
   (size  :  :fixnum)
   (getf  :? :procedure)
   (setf  :? :procedure))
  final: #t
  print: (level name))

(def (socket-device-getsockopt (dev : SocketDevice)
                               (opt : SockOpt))
  (do-check-device-open getsockopt dev
    (cond
     (opt.getf
      (let (buf (make-u8vector opt.size))
        (do-syscall (__getsockopt dev.fd opt.level opt.name buf))
        (opt.getf buf)))
     (else
      (raise-contract-violation getsockopt "gettable sockopt" opt
                                device: dev)))))

(def (socket-device-setsockopt (dev : SocketDevice)
                               (opt : SockOpt)
                               value)
  (do-check-device-open getsockopt dev
    (cond
     (opt.setf
      (let (buf (make-u8vector opt.size))
        (opt.setf buf value)
        (do-syscall (__setsockopt dev.fd opt.level opt.name buf))))
     (else
      (raise-contract-violation getsockopt "settable sockopt" opt
                                device: dev)))))

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<sys/socket.h>"
           "<netinet/in.h>"
           "<netinet/ip.h>"
           "<netinet/tcp.h>"
           "<arpa/inet.h>"
           "<sys/un.h>"
           "<errno.h>")

(def-C-syscall (__getsockopt (fd    : :fixnum)
                             (level : :fixnum)
                             (name  : :fixnum)
                             (value : :u8vector))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG4); getsockopt(___arg1, ___arg2, ___arg3, ___arg4, &len);})")

(def-C-syscall (__setsockopt (fd    : :fixnum)
                             (level : :fixnum)
                             (name  : :fixnum)
                             (value : :u8vector))
  "({socklen_t len = (socklen_t)___U8VECTORSIZE(___ARG4); setsockopt(___arg1, ___arg2, ___arg3, ___arg4, len);})")

(def-C-const*
  SOL_SOCKET

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
  SO_USELOOPBACK

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
  TIOCOUTQ)

(defsyntax-case defsockopt ()
  ((_ level name type get set)
   (with-identifiers ((opt #'name #'level "." #'name)
                      (type::size #'type "sockopt::" #'type "::size")
                      (type::get  #'type "sockopt::" #'type "::get")
                      (type::set  #'type "sockopt::" #'type "::set"))
     (with-syntax* ((getf (and (stx-e #'get) #'type::get))
                    (setf (and (stx-e #'set) #'type::set)))
       #'(def opt
           (SockOpt level: level
                    name:  name
                    size:  type::size
                    getf:  getf
                    setf:  setf))))))

(def sockopt::int::size
  (##c-code "___RESULT = ___FIX(sizeof(int));"))

(def-C-lambda (sockopt::int::get (val : scheme-object))
  => int
  "___result = *___U8VECTOR_AS(int*,___ARG1);")

(def-C-lambda (sockopt::int::set (val : scheme-object) (arg : int))
  => void
  "*___U8VECTOR_AS(int*,___ARG1) = ___arg2;")

;; TODO accessors/mutators
(def-C-struct linger)

(def sockopt::linger::size
  linger::size)

(def (sockopt::linger::get (val :- :u8vector))
  => linger
  (linger val))

(def (sockopt::linger::set (val :- :u8vector)
                           (arg :  linger))
  => :void
  (subu8vector-move! arg.body 0 linger::size val 0))

(def sockopt::timeval::size
  timeval::size)

(def (sockopt::timeval::get (val :- :u8vector))
  => timeval
  (timeval val))

(def (sockopt::timeval::set (val :- :u8vector)
                            (arg :  timeval))
  => :void
  (subu8vector-move! arg.body 0 timeval::size val 0))

(def-C-struct ip_mreq)

(def sockopt::ip_mreq::size
  ip_mreq::size)

(def (sockopt::ip_mreq::get (val :- :u8vector))
  => ip_mreq
  (ip_mreq val))

(def (sockopt::ip_mreq::set (val :- :u8vector)
                            (arg :  ip_mreq))
  => :void
  (subu8vector-move! arg.body 0 ip_mreq::size val 0))

(def-C-struct ip_mreq_source)

(def-C (ip_mreq-imr_multiaddr-set! (mreq : ip_mreq)
                                   (addr : :u8vector))
  => :void
  "memcpy(&___arg1->imr_multiaddr, ___arg2, 4)")

(def-C (ip_mreq-imr_interface-set! (mreq : ip_mreq)
                                   (addr : :u8vector))
  => :void
  "memcpy(&___arg1->imr_interface, ___arg2, 4)")

(def sockopt::ip_mreq_source::size
  ip_mreq_source::size)

(def (sockopt::ip_mreq_source::get (val :- :u8vector))
  => ip_mreq_source
  (ip_mreq_source val))

(def (sockopt::ip_mreq_source::set (val :- :u8vector)
                                   (arg :  ip_mreq_source))
  => :void
  (subu8vector-move! arg.body 0 ip_mreq_source::size val 0))

(def-C-struct ipv6_mreq)

(def-C (ipv6_mreq-ipv6mr_multiaddr-set! (mreq : ipv6_mreq)
                                        (addr : :u8vector))
  => :void
  "memcpy(&___arg1->ipv6mr_multiaddr, ___arg2, 16)")

(def-C (ipv6_mreq-ipv6mr_interface-set! (mreq  : ipv6_mreq)
                                        (iface : :fixnum))
  => :void
  "___arg1->ipv6mr_interface = ___arg2")

(def sockopt::ipv6_mreq::size
  ipv6_mreq::size)

(def (sockopt::ipv6_mreq::get (val :- :u8vector))
  => ipv6_mreq
  (ipv6_mreq val))

(def (sockopt::ipv6_mreq::set (val :- :u8vector)
                              (arg :  ipv6_mreq))
  => :void
  (subu8vector-move! arg.body 0 ipv6_mreq::size val 0))

(defsockopt SOL_SOCKET SO_BROADCAST             int    #t #t)
(defsockopt SOL_SOCKET SO_DEBUG                 int    #t #t)
(defsockopt SOL_SOCKET SO_DOMAIN                int    #t #f)
(defsockopt SOL_SOCKET SO_DONTROUTE             int    #t #t)
(defsockopt SOL_SOCKET SO_ERROR                 int    #t #f)
(defsockopt SOL_SOCKET SO_KEEPALIVE             int    #t #t)
(defsockopt SOL_SOCKET SO_LINGER                linger #t #t)
(defsockopt SOL_SOCKET SO_PROTOCOL              int    #t #t)
(defsockopt SOL_SOCKET SO_RCVBUF                int    #t #t)
(defsockopt SOL_SOCKET SO_SNDBUF                int    #t #t)
(defsockopt SOL_SOCKET SO_RCVLOWAT              int    #t #t)
(defsockopt SOL_SOCKET SO_SNDLOWAT              int    #t #t)
(defsockopt SOL_SOCKET SO_RCVTIMEO              timeval #t #t)
(defsockopt SOL_SOCKET SO_SNDTIMEO              timeval #t #t)
(defsockopt SOL_SOCKET SO_REUSEADDR             int    #t #t)
(defsockopt SOL_SOCKET SO_REUSEPORT             int    #t #t)
(defsockopt SOL_SOCKET SO_TYPE                  int    #t #t)
(defsockopt SOL_SOCKET SO_TIMESTAMP             int    #t #t)
(defsockopt SOL_SOCKET SO_USELOOPBACK           int    #t #t)

(defsockopt IPPROTO_IP IP_ADD_MEMBERSHIP         ip_mreq #f #t)
(defsockopt IPPROTO_IP IP_DROP_MEMBERSHIP        ip_mreq #f #t)
(defsockopt IPPROTO_IP IP_ADD_SOURCE_MEMBERSHIP  ip_mreq_source  #f #t)
(defsockopt IPPROTO_IP IP_DROP_SOURCE_MEMBERSHIP ip_mreq_source  #f #t)
(defsockopt IPPROTO_IP IP_BLOCK_SOURCE           ip_mreq_source  #f #t)
(defsockopt IPPROTO_IP IP_UNBLOCK_SOURCE         ip_mreq_source  #f #t)
(defsockopt IPPROTO_IP IP_FREEBIND               int    #t #t)
(defsockopt IPPROTO_IP IP_HDRINCL                int    #t #t)
(defsockopt IPPROTO_IP IP_MTU                    int    #t #f)
(defsockopt IPPROTO_IP IP_MTU_DISCOVER           int    #t #t)
(defsockopt IPPROTO_IP IP_MULTICAST_ALL          int    #t #t)
(defsockopt IPPROTO_IP IP_MULTICAST_IF           ip_mreq #f #t)
(defsockopt IPPROTO_IP IP_MULTICAST_LOOP         int    #t #t)
(defsockopt IPPROTO_IP IP_MULTICAST_TTL          int    #t #t)
(defsockopt IPPROTO_IP IP_NODEFRAG               int    #t #t)
(defsockopt IPPROTO_IP IP_RECVERR                int    #t #t)
(defsockopt IPPROTO_IP IP_RECVORIGDSTADDR        int    #t #t)
(defsockopt IPPROTO_IP IP_RECVOPTS               int    #t #t)
(defsockopt IPPROTO_IP IP_RECVTOS                int    #t #t)
(defsockopt IPPROTO_IP IP_RECVTTL                int    #t #t)
(defsockopt IPPROTO_IP IP_RETOPTS                int    #t #t)
(defsockopt IPPROTO_IP IP_ROUTER_ALERT           int    #t #t)
(defsockopt IPPROTO_IP IP_TOS                    int    #t #t)
(defsockopt IPPROTO_IP IP_TTL                    int    #t #t)

(defsockopt IPPROTO_IPV6 IPV6_ADDRFORM           int    #f #t)
(defsockopt IPPROTO_IPV6 IPV6_ADD_MEMBERSHIP     ipv6_mreq #f #t)
(defsockopt IPPROTO_IPV6 IPV6_DROP_MEMBERSHIP    ipv6_mreq #f #t)
(defsockopt IPPROTO_IPV6 IPV6_MTU                int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_MTU_DISCOVER       int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_HOPS     int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_IF       int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_LOOP     int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_RECVPKTINFO        int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_RTHDR              int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_AUTHHDR            int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_DSTOPTS            int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_HOPOPTS            int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_FLOWINFO           int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_HOPLIMIT           int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_ROUTER_ALERT       int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_UNICAST_HOPS       int    #t #t)
(defsockopt IPPROTO_IPV6 IPV6_V6ONLY             int    #t #t)

(defsockopt IPPROTO_TCP TCP_CORK                 int    #t #t)
(defsockopt IPPROTO_TCP TCP_DEFER_ACCEPT         int    #t #t)
(defsockopt IPPROTO_TCP TCP_KEEPCNT              int    #t #t)
(defsockopt IPPROTO_TCP TCP_KEEPIDLE             int    #t #t)
(defsockopt IPPROTO_TCP TCP_KEEPINTVL            int    #t #t)
(defsockopt IPPROTO_TCP TCP_MAXSEG               int    #t #t)
(defsockopt IPPROTO_TCP TCP_NODELAY              int    #t #t)
(defsockopt IPPROTO_TCP TCP_SYNCNT               int    #t #t)
