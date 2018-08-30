# OS

Libraries for programming with raw OS devices.

## std/os/error
OS error handling facilities.

```
(import :std/os/error)

;; exports:

  raise-os-error check-os-error
  do-retry-nonblock
  check-ptr
  strerror
  EAGAIN EINTR EINPROGRESS EWOULDBLOCK
```

## std/os/fd
Raw devices from file decriptors.

```
(import :std/os/fd)

;; exports:

  fdopen
  fd-e fd-io-in fd-io-out
  fd? fd-type? fd-type
```

## std/os/fdio

Reading and writing from raw devices.

```
(import :std/os/fdio)

;; exports:

  open fdread fdwrite _read _write
```

## std/os/fcntl
File descriptor control.

```
(import :std/os/fcntl)

;; exports:

  fcntl _fcntl0 _fcntl1
  fd-getfl fd-setfl fd-setfl!
  fd-getfd fd-setfd fd-setfd!
  fd-set-nonblock fd-set-closeonexec
  F_DUPFD F_GETFD F_SETFD F_GETFL F_SETFL
  FD_CLOEXEC
  O_CREAT O_EXCL O_NOCTTY O_TRUNC
  O_APPEND O_DSYNC O_NONBLOCK O_RSYNC O_SYNC
  O_ACCMODE
  O_RDONLY O_RDWR O_WRONLY

```

## std/os/pipe
Pipes.

```
(import :std/os/pipe)

;; exports:

  pipe
  _pipe make_pipe_ptr pipe_ptr_ref

```

## std/os/socket
Sockets.

```
(import :std/os/socket)

;; exports:

  socket
  server-socket
  socket?
  socket-bind
  socket-listen
  socket-accept
  socket-connect
  socket-shutdown
  socket-close
  socket-send
  socket-sendto
  socket-sendmsg
  socket-recv
  socket-recvfrom
  socket-recvmsg
  socket-recvmsg*
  socket-getpeername
  socket-getsockname
  socket-getsockopt
  socket-setsockopt
  socket-domain
  socket-address?
  make-socket-address
  make-socket-address-in
  make-socket-address-in6
  make-socket-address-un
  socket-address
  socket-address-in
  socket-address-in6
  socket-address-un
  socket-address->address
  socket-address->string
  socket-address-family

  AF_UNSPEC
  AF_INET
  AF_INET6
  AF_UNIX AF_LOCAL
  AF_NETLINK AF_PACKET AF_ALG

  SOCK_STREAM
  SOCK_DGRAM
  SOCK_RAW
  SOCK_SEQPACKET SOCK_RDM

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

## std/os/epoll

epoll for linux.

```
(require linux)
(import :std/os/epoll)

;; exports:

  epoll-create epoll-ctl-add epoll-ctl-mod epoll-ctl-del epoll-wait
  make-epoll-events epoll-event-fd epoll-event-events
  EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
```

## std/os/inotify

inotify for linux.

```
(require linux)
(import :std/os/inotify)

;; exports:

  inotify-init inotify? inotify-close
  inotify-add-watch inotify-rm-watch
  inotify
  (struct-out inotify-event)
  IN_ACCESS
  IN_ATTRIB
  IN_CLOSE_WRITE
  IN_CLOSE_NOWRITE
  IN_CREATE
  IN_DELETE
  IN_DELETE_SELF
  IN_MODIFY
  IN_MOVE_SELF
  IN_MOVED_FROM
  IN_MOVED_TO
  IN_OPEN
  IN_ALL_EVENTS
  IN_MOVE
  IN_CLOSE
  IN_DONT_FOLLOW
  IN_EXCL_UNLINK
  IN_MASK_ADD
  IN_ONESHOT
  IN_ONLYDIR
  IN_IGNORED
  IN_ISDIR
  IN_Q_OVERFLOW
  IN_UNMOUNT
```

## std/os/kqueue

kqueue for BSD.

```
(require bsd)
(import :std/os/kqueue)

;; exports:
    kqueue
    kqueue-close
    make-kevents
    kevent-set!
    kevent
    kqueue-poll
    kqueue-kevent-add
    kqueue-kevent-del
    kqueue-kevent-disable
    make-timespec
    kevent-ident
    kevent-filter
    kevent-flags
    kevent-fflags
    kevent-data
    kevent-udata
    set-kevent-ident!
    set-kevent-filter!
    set-kevent-flags!
    set-kevent-fflags!
    set-kevent-data!
    set-kevent-udata!
    EV_ADD
    EV_ENABLE
    EV_DISABLE
    EV_DISPATCH
    EV_DELETE
    EV_RECEIPT
    EV_ONESHOT
    EV_CLEAR
    EV_EOF
    EV_ERROR
    EVFILT_READ
    EVFILT_WRITE
    EVFILT_VNODE
    EVFILT_PROC
    EVFILT_SIGNAL
    EVFILT_TIMER
    EVFILT_DEVICE
    NOTE_DELETE
    NOTE_WRITE
    NOTE_EXTEND
    NOTE_TRUNCATE
    NOTE_LOWAT
    NOTE_EOF
    NOTE_DELETE
    NOTE_WRITE
    NOTE_EXTEND
    NOTE_TRUNCATE
    NOTE_ATTRIB
    NOTE_LINK
    NOTE_RENAME
    NOTE_REVOKE
    NOTE_EXIT
    NOTE_FORK
    NOTE_EXEC
    NOTE_TRACK
    NOTE_TRACKERR
    NOTE_CHANGE
```

## std/os/signal

OS signals

```
(import :std/os/signal-handler)

;; exports:
 kill sigprocmask
 make_sigset sigemptyset sigfillset sigaddset sigdelset sigismember
 SIGHUP ... ; OS-specific signals
```

## std/os/signalfd

signalfd syscall for linux; used by `:std/os/signal-handler`

```
(import :std/os/signalfd)

;; exports:
  signalfd signalfd?
  signalfd-reset!
  signalfd-read
  make-signalfd-siginfo
  signalfd-siginfo-signo
  signalfd-siginfo-errno
  signalfd-siginfo-code
  signalfd-siginfo-pid
  signalfd-siginfo-uid
  signalfd-siginfo-fd
  signalfd-siginfo-tid
  signalfd-siginfo-band
  signalfd-siginfo-overrun
  signalfd-siginfo-trapno
  signalfd-siginfo-status
  signalfd-siginfo-int
  signalfd-siginfo-ptr
  signalfd-siginfo-utime
  signalfd-siginfo-stime
  signalfd-siginfo-addr
```

## std/os/signal-handler

High-level signal handler interface

```
(import :std/os/signal-handler)

;; exports:
  add-signal-handler! remove-signal-handler!
```

## std/os/pid

OS pid interface

```
(import :std/os/pid)

;; exports:
  getpid getppid
```
