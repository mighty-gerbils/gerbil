# Raw Socket Devices

Gerbil provides raw socket devices to support network programming with
sockets.  See the [tutorial](/tutorials/proxy.md) for an example
program that utilizes raw socket devices.

::: tip usage
(import :std/os/socket)
:::

## socket
```
(socket domain type (proto 0))
```

Please document me!

## server-socket
```
(server-socket domain type (proto 0))
```

Please document me!

## socket?
```
(socket? obj)
```

Please document me!

## socket-bind
```
(socket-bind sock addr)
```

Please document me!

## socket-listen
```
(socket-listen sock (backlog 10))
```

Please document me!

## socket-accept
```
(socket-accept sock (sa #f))
```

Please document me!

## socket-connect
```
(socket-connect sock sa)
```

Please document me!

## socket-shutdown
```
(socket-shutdown sock how)
```

Please document me!

## socket-close
```
(socket-close sock)
```

Please document me!

## socket-send
```
(socket-send sock bytes (start 0) (end (u8vector-length bytes)) (flags 0))
```

Please document me!

## socket-sendto
```
(socket-sendto sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0))
```

Please document me!

## socket-sendmsg
```
(socket-sendmsg sock name-bytes io-bytes ctl-bytes flags)
```

Please document me!

## socket-recv
```
(socket-recv sock bytes (start 0) (end (u8vector-length bytes)) (flags 0))
```

Please document me!

## socket-recvfrom
```
(socket-recvfrom sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0))
```

Please document me!

## socket-recvmsg
```
(socket-recvmsg sock name io ctl flags)
```

Please document me!

## socket-recvmsg*
```
(socket-recvmsg* sock name-bytes rname io-bytes ctl-bytes rctl flags rflags)
```

Please document me!

## socket-getpeername
```
(socket-getpeername sock (sa #f))
```

Please document me!

## socket-getsockname
```
(socket-getsockname sock (sa #f))
```

Please document me!

## socket-getsockopt socket-setsockopt
```
(socket-getsockopt sock level opt)
(socket-setsockopt sock level opt val)

;;          level      opt                      get    set?
(defsockopt SOL_SOCKET SO_ACCEPTCONN            int    #f)
(defsockopt SOL_SOCKET SO_BINDTODEVICE          bytes  bytes)
(defsockopt SOL_SOCKET SO_BROADCAST             int    int)
(defsockopt SOL_SOCKET SO_DEBUG                 int    int)
(defsockopt SOL_SOCKET SO_DOMAIN                int    #f)
(defsockopt SOL_SOCKET SO_DONTROUTE             int    int)
(defsockopt SOL_SOCKET SO_ERROR                 int    #f)
(defsockopt SOL_SOCKET SO_KEEPALIVE             int    int)
(defsockopt SOL_SOCKET SO_LINGER                linger linger)
(defsockopt SOL_SOCKET SO_OOBLINE               int    int)
(defsockopt SOL_SOCKET SO_PASSCRED              int    int)
(defsockopt SOL_SOCKET SO_PEERCRED              bytes  bytes)
(defsockopt SOL_SOCKET SO_PEEK_OFF              int    int)
(defsockopt SOL_SOCKET SO_PROTOCOL              int    int)
(defsockopt SOL_SOCKET SO_RCVBUF                int    int)
(defsockopt SOL_SOCKET SO_SNDBUF                int    int)
(defsockopt SOL_SOCKET SO_RCVLOWAT              int    int)
(defsockopt SOL_SOCKET SO_SNDLOWAT              int    int)
(defsockopt SOL_SOCKET SO_RCVTIMEO              tv     tv)
(defsockopt SOL_SOCKET SO_SNDTIMEO              tv     tv)
(defsockopt SOL_SOCKET SO_REUSEADDR             int    int)
(defsockopt SOL_SOCKET SO_REUSEPORT             int    int)
(defsockopt SOL_SOCKET SO_TYPE                  int    int)
(defsockopt SOL_SOCKET SO_TIMESTAMP             int    int)
(defsockopt SOL_SOCKET SO_USELOOPBACK           int    int)

(defsockopt IPPROTO_IP IP_ADD_MEMBERSHIP         #f     mreq)
(defsockopt IPPROTO_IP IP_DROP_MEMBERSHIP        #f     mreq)
(defsockopt IPPROTO_IP IP_ADD_SOURCE_MEMBERSHIP  #f     mreq-src)
(defsockopt IPPROTO_IP IP_DROP_SOURCE_MEMBERSHIP #f     mreq-src)
(defsockopt IPPROTO_IP IP_BLOCK_SOURCE           #f     mreq-src)
(defsockopt IPPROTO_IP IP_UNBLOCK_SOURCE         #f     mreq-src)
(defsockopt IPPROTO_IP IP_FREEBIND               int    int)
(defsockopt IPPROTO_IP IP_HDRINCL                int    int)
(defsockopt IPPROTO_IP IP_MTU                    int    #f)
(defsockopt IPPROTO_IP IP_MTU_DISCOVER           int    int)
(defsockopt IPPROTO_IP IP_MULTICAST_ALL          int    int)
(defsockopt IPPROTO_IP IP_MULTICAST_IF           #f     mreq)
(defsockopt IPPROTO_IP IP_MULTICAST_LOOP         int    int)
(defsockopt IPPROTO_IP IP_MULTICAST_TTL          int    int)
(defsockopt IPPROTO_IP IP_NODEFRAG               int    int)
(defsockopt IPPROTO_IP IP_OPTIONS                bytes  bytes)
(defsockopt IPPROTO_IP IP_PKTINFO                bytes  bytes)
(defsockopt IPPROTO_IP IP_RECVERR                int    int)
(defsockopt IPPROTO_IP IP_RECVORIGDSTADDR        int    int)
(defsockopt IPPROTO_IP IP_RECVOPTS               int    int)
(defsockopt IPPROTO_IP IP_RECVTOS                int    int)
(defsockopt IPPROTO_IP IP_RECVTTL                int    int)
(defsockopt IPPROTO_IP IP_RETOPTS                int    int)
(defsockopt IPPROTO_IP IP_ROUTER_ALERT           int    int)
(defsockopt IPPROTO_IP IP_TOS                    int    int)
(defsockopt IPPROTO_IP IP_TTL                    int    int)

(defsockopt IPPROTO_IPV6 IPV6_ADDRFORM           #f     int)
(defsockopt IPPROTO_IPV6 IPV6_ADD_MEMBERSHIP     #f     mreq6)
(defsockopt IPPROTO_IPV6 IPV6_DROP_MEMBERSHIP    #f     mreq6)
(defsockopt IPPROTO_IPV6 IPV6_MTU                int    int)
(defsockopt IPPROTO_IPV6 IPV6_MTU_DISCOVER       int    int)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_HOPS     int    int)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_IF       int    int)
(defsockopt IPPROTO_IPV6 IPV6_MULTICAST_LOOP     int    int)
(defsockopt IPPROTO_IPV6 IPV6_RECVPKTINFO        int    int)
(defsockopt IPPROTO_IPV6 IPV6_RTHDR              int    int)
(defsockopt IPPROTO_IPV6 IPV6_AUTHHDR            int    int)
(defsockopt IPPROTO_IPV6 IPV6_DSTOPTS            int    int)
(defsockopt IPPROTO_IPV6 IPV6_HOPOPTS            int    int)
(defsockopt IPPROTO_IPV6 IPV6_FLOWINFO           int    int)
(defsockopt IPPROTO_IPV6 IPV6_HOPLIMIT           int    int)
(defsockopt IPPROTO_IPV6 IPV6_ROUTER_ALERT       int    int)
(defsockopt IPPROTO_IPV6 IPV6_UNICAST_HOPS       int    int)
(defsockopt IPPROTO_IPV6 IPV6_V6ONLY             int    int)

(defsockopt IPPROTO_TCP TCP_CONGESTION           #f     bytes)
(defsockopt IPPROTO_TCP TCP_CORK                 int    int)
(defsockopt IPPROTO_TCP TCP_DEFER_ACCEPT         int    int)
(defsockopt IPPROTO_TCP TCP_KEEPCNT              int    int)
(defsockopt IPPROTO_TCP TCP_KEEPIDLE             int    int)
(defsockopt IPPROTO_TCP TCP_KEEPINTVL            int    int)
(defsockopt IPPROTO_TCP TCP_MAXSEG               int    int)
(defsockopt IPPROTO_TCP TCP_NODELAY              int    int)
(defsockopt IPPROTO_TCP TCP_SYNCNT               int    int)

```

Please document me!

## socket-domain
```
(socket-domain sock)
```

Please document me!

## socket-address?
```
(socket-address? obj)
```

Please document me!

## make-socket-address make-socket-address-in make-socket-address-in6 make-socket-address-un
```
(make-socket-address af)
(make-socket-address-in)
=>  (make-socket-address AF_INET)
(make-socket-address-in6)
=>  (make-socket-address AF_INET6)
(make-socket-address-un)
=>  (make-socket-address AF_UNIX)
```

Please document me!

## socket-address socket-address-in socket-address-in6 socket-address-un
```
(socket-address addr)
(socket-address-in host port)
(socket-address-in6 host port)
(socket-address-un path)
```

Please document me!

## socket-address->address
```
(socket-address->address sa)
```

Please document me!

## socket-address->string
```
(socket-address->string sa)
```

Please document me!

## socket-address-family
```
(socket-address-family sa)
```

Please document me!


## Constants
```
AF_UNSPEC
AF_INET
AF_INET6
AF_UNIX
AF_LOCAL
AF_NETLINK
AF_PACKET
AF_ALG
SOCK_STREAM
SOCK_DGRAM
SOCK_RAW
SOCK_SEQPACKET
SOCK_RDM
SHUT_RD
SHUT_WR
SHUT_RDWR
UNIX_MAX_PATH
SOL_SOCKET
SO_ACCEPTCONN
SO_BINDTODEVICE
SO_BROADCAST
SO_DEBUG
SO_DOMAIN
SO_DONTROUTE
SO_ERROR
SO_KEEPALIVE
SO_LINGER
SO_OOBLINE
SO_PASSCRED
SO_PEERCRED
SO_PEEK_OFF
SO_PROTOCOL
SO_RCVBUF
SO_SNDBUF
SO_RCVLOWAT
SO_SNDLOWAT
SO_RCVTIMEO
SO_SNDTIMEO
SO_REUSEADDR
SO_REUSEPORT
SO_TYPE
SO_TIMESTAMP
SO_USELOOPBACK
IPPROTO_IPV6
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
IPV6_ROUTER_ALERT
IPV6_UNICAST_HOPS
IPV6_V6ONLY
IPPROTO_TCP
TCP_CONGESTION
TCP_CORK
TCP_DEFER_ACCEPT
TCP_KEEPCNT
TCP_KEEPIDLE
TCP_KEEPINTVL
TCP_MAXSEG
TCP_NODELAY
TCP_SYNCNT
IP_PMTUDISC_WANT
IP_PMTUDISC_DONT
IP_PMTUDISC_DO
IP_PMTUDISC_PROBE
IPTOS_LOWDELAY
IPTOS_THROUGHPUT
IPTOS_RELIABILITY
IPTOS_MINCOST
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
```
