# Raw Socket Devices

Gerbil provides raw socket devices to support network programming with
sockets.  See the [tutorial](/tutorials/proxy.md) for an example
program that utilizes raw socket devices.

::: tip usage
(import :std/os/socket)
:::

### socket
::: tip usage
```
(socket ...)
```
:::

Please document me!

### server-socket
::: tip usage
```
(server-socket ...)
```
:::

Please document me!

### socket?
::: tip usage
```
(socket? ...)
```
:::

Please document me!

### socket-bind
::: tip usage
```
(socket-bind ...)
```
:::

Please document me!

### socket-listen
::: tip usage
```
(socket-listen ...)
```
:::

Please document me!

### socket-accept
::: tip usage
```
(socket-accept ...)
```
:::

Please document me!

### socket-connect
::: tip usage
```
(socket-connect ...)
```
:::

Please document me!

### socket-shutdown
::: tip usage
```
(socket-shutdown ...)
```
:::

Please document me!

### socket-close
::: tip usage
```
(socket-close ...)
```
:::

Please document me!

### socket-send
::: tip usage
```
(socket-send ...)
```
:::

Please document me!

### socket-sendto
::: tip usage
```
(socket-sendto ...)
```
:::

Please document me!

### socket-sendmsg
::: tip usage
```
(socket-sendmsg ...)
```
:::

Please document me!

### socket-recv
::: tip usage
```
(socket-recv ...)
```
:::

Please document me!

### socket-recvfrom
::: tip usage
```
(socket-recvfrom ...)
```
:::

Please document me!

### socket-recvmsg
::: tip usage
```
(socket-recvmsg ...)
```
:::

Please document me!

### socket-recvmsg*
::: tip usage
```
(socket-recvmsg* ...)
```
:::

Please document me!

### socket-getpeername
::: tip usage
```
(socket-getpeername ...)
```
:::

Please document me!

### socket-getsockname
::: tip usage
```
(socket-getsockname ...)
```
:::

Please document me!

### socket-getsockopt
::: tip usage
```
(socket-getsockopt ...)
```
:::

Please document me!

### socket-setsockopt
::: tip usage
```
(socket-setsockopt ...)
```
:::

Please document me!

### socket-domain
::: tip usage
```
(socket-domain ...)
```
:::

Please document me!

### socket-address?
::: tip usage
```
(socket-address? ...)
```
:::

Please document me!

### make-socket-address
::: tip usage
```
(make-socket-address ...)
```
:::

Please document me!

### make-socket-address-in
::: tip usage
```
(make-socket-address-in ...)
```
:::

Please document me!

### make-socket-address-in6
::: tip usage
```
(make-socket-address-in6 ...)
```
:::

Please document me!

### make-socket-address-un
::: tip usage
```
(make-socket-address-un ...)
```
:::

Please document me!

### socket-address
::: tip usage
```
(socket-address ...)
```
:::

Please document me!

### socket-address-in
::: tip usage
```
(socket-address-in ...)
```
:::

Please document me!

### socket-address-in6
::: tip usage
```
(socket-address-in6 ...)
```
:::

Please document me!

### socket-address-un
::: tip usage
```
(socket-address-un ...)
```
:::

Please document me!

### socket-address-&gt;address
::: tip usage
```
(socket-address->address ...)
```
:::

Please document me!

### socket-address-&gt;string
::: tip usage
```
(socket-address->string ...)
```
:::

Please document me!

### socket-address-family
::: tip usage
```
(socket-address-family ...)
```
:::

Please document me!


### Constants
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

## Synchronous Socket Interface
**The `:std/net/socket` package is _deprecated_ and will be removed in the future; please don't use it for new code!**

See [Standard IO Interfaces](stdio.md).
