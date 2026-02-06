# Raw Socket Devices

Gerbil provides raw socket devices to support network programming with
sockets. See the [tutorial](/tutorials/proxy.md) for an example
program that utilizes raw socket devices.

::: tip To use the bindings from this module:
```scheme
(import :std/os/socket)
```
:::

## Socket Creation

### socket
```scheme
(socket domain type (proto 0)) -> fd
```

Creates a new socket with the given *domain* (e.g., `AF_INET`, `AF_INET6`,
`AF_UNIX`), *type* (e.g., `SOCK_STREAM`, `SOCK_DGRAM`), and optional
*proto*. Returns a raw device port (see `:std/os/fd`).

::: tip Example:
```scheme
(import :std/os/socket)

(def sock (socket AF_INET SOCK_STREAM))
```
:::

### server-socket
```scheme
(server-socket domain type (proto 0)) -> fd
```

Creates a server socket. Similar to `socket`, but configured for accepting
incoming connections.

### socket?
```scheme
(socket? obj) -> boolean
```

Returns `#t` if *obj* is a socket (raw device port of type `'socket`).

## Connection Operations

### socket-bind
```scheme
(socket-bind sock addr) -> void
```

Binds the socket *sock* to the local address *addr* (a socket address
object). Raises an OS error on failure.

::: tip Example:
```scheme
(import :std/os/socket)

(def sock (socket AF_INET SOCK_STREAM))
(socket-bind sock (socket-address-in INADDR_ANY 8080))
```
:::

### socket-listen
```scheme
(socket-listen sock (backlog 10)) -> void
```

Marks the socket *sock* as a passive socket that will accept incoming
connections. The *backlog* parameter specifies the maximum length of the
pending connection queue.

### socket-accept
```scheme
(socket-accept sock (sa #f)) -> fd
```

Accepts an incoming connection on the listening socket *sock*. Returns a new
socket for the accepted connection. If *sa* is a socket address object, it
is filled with the peer's address.

### socket-connect
```scheme
(socket-connect sock sa) -> void
```

Connects the socket *sock* to the remote address *sa*. Raises an OS error
on failure.

### socket-shutdown
```scheme
(socket-shutdown sock how) -> void
```

Shuts down part or all of the socket connection. *how* can be:
- `SHUT_RD` — disable further receives
- `SHUT_WR` — disable further sends
- `SHUT_RDWR` — disable both

### socket-close
```scheme
(socket-close sock) -> void
```

Closes the socket *sock*.

## Data Transfer

### socket-send
```scheme
(socket-send sock bytes (start 0) (end (u8vector-length bytes)) (flags 0)) -> fixnum | #f
```

Sends data from byte vector *bytes* through the connected socket *sock*.
Returns the number of bytes sent, or `#f` if the operation would block.

### socket-sendto
```scheme
(socket-sendto sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0)) -> fixnum | #f
```

Sends data to the address *sa* through the socket *sock* (for connectionless
protocols like UDP). Returns the number of bytes sent, or `#f` if the
operation would block.

### socket-sendmsg
```scheme
(socket-sendmsg sock name-bytes io-bytes ctl-bytes flags) -> fixnum | #f
```

Sends a message through the socket using the `sendmsg` system call, allowing
ancillary data (control messages) to be included.

### socket-recv
```scheme
(socket-recv sock bytes (start 0) (end (u8vector-length bytes)) (flags 0)) -> fixnum | #f
```

Receives data from the connected socket *sock* into byte vector *bytes*.
Returns the number of bytes received, `0` on EOF, or `#f` if the operation
would block.

### socket-recvfrom
```scheme
(socket-recvfrom sock bytes sa (start 0) (end (u8vector-length bytes)) (flags 0)) -> fixnum | #f
```

Receives data and the sender's address from the socket *sock*. The address
is stored in *sa*. Primarily used with connectionless protocols like UDP.

### socket-recvmsg
```scheme
(socket-recvmsg sock name io ctl flags) -> fixnum | #f
```

Receives a message from the socket using the `recvmsg` system call.

### socket-recvmsg*
```scheme
(socket-recvmsg* sock name-bytes rname io-bytes ctl-bytes rctl flags rflags) -> fixnum | #f
```

Extended variant of `socket-recvmsg` with output parameters for actual sizes
of name, control data, and flags.

## Socket Information

### socket-getpeername
```scheme
(socket-getpeername sock (sa #f)) -> socket-address
```

Returns the address of the peer connected to socket *sock*. If *sa* is
provided, it is used as the output buffer; otherwise a new socket address is
allocated.

### socket-getsockname
```scheme
(socket-getsockname sock (sa #f)) -> socket-address
```

Returns the local address bound to socket *sock*.

### socket-domain
```scheme
(socket-domain sock) -> fixnum
```

Returns the address family (domain) of the socket *sock*.

## Socket Options

### socket-getsockopt
```scheme
(socket-getsockopt sock level opt) -> value
```

Gets a socket option. The *level* and *opt* are constants from the tables
below. The return type depends on the option (integer, bytes, timeval, or
linger struct).

### socket-setsockopt
```scheme
(socket-setsockopt sock level opt val) -> void
```

Sets a socket option. Not all options are settable — see the table below.

::: tip Example:
```scheme
(import :std/os/socket)

(def sock (socket AF_INET SOCK_STREAM))
(socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
(socket-setsockopt sock IPPROTO_TCP TCP_NODELAY 1)
```
:::

The following socket options are supported:

**SOL_SOCKET level:**

| Option | Get Type | Set Type | Description |
|--------|----------|----------|-------------|
| `SO_ACCEPTCONN` | int | — | Is socket accepting connections? |
| `SO_BROADCAST` | int | int | Allow broadcast |
| `SO_DEBUG` | int | int | Enable debugging |
| `SO_DOMAIN` | int | — | Socket domain |
| `SO_DONTROUTE` | int | int | Don't route |
| `SO_ERROR` | int | — | Pending error |
| `SO_KEEPALIVE` | int | int | Enable keepalive |
| `SO_LINGER` | linger | linger | Linger on close |
| `SO_RCVBUF` | int | int | Receive buffer size |
| `SO_SNDBUF` | int | int | Send buffer size |
| `SO_REUSEADDR` | int | int | Allow address reuse |
| `SO_REUSEPORT` | int | int | Allow port reuse |
| `SO_TYPE` | int | int | Socket type |

**IPPROTO_TCP level:**

| Option | Get Type | Set Type | Description |
|--------|----------|----------|-------------|
| `TCP_NODELAY` | int | int | Disable Nagle's algorithm |
| `TCP_KEEPCNT` | int | int | Keepalive probe count |
| `TCP_KEEPIDLE` | int | int | Keepalive idle time |
| `TCP_KEEPINTVL` | int | int | Keepalive interval |
| `TCP_MAXSEG` | int | int | Maximum segment size |

## Socket Addresses

### socket-address?
```scheme
(socket-address? obj) -> boolean
```

Returns `#t` if *obj* is a socket address object.

### make-socket-address
```scheme
(make-socket-address af) -> socket-address
```

Allocates a socket address for the address family *af*.

### make-socket-address-in
```scheme
(make-socket-address-in) -> socket-address
```

Allocates an `AF_INET` (IPv4) socket address. Equivalent to
`(make-socket-address AF_INET)`.

### make-socket-address-in6
```scheme
(make-socket-address-in6) -> socket-address
```

Allocates an `AF_INET6` (IPv6) socket address. Equivalent to
`(make-socket-address AF_INET6)`.

### make-socket-address-un
```scheme
(make-socket-address-un) -> socket-address
```

Allocates an `AF_UNIX` socket address. Equivalent to
`(make-socket-address AF_UNIX)`.

### socket-address
```scheme
(socket-address addr) -> socket-address
```

Creates a socket address from a string representation *addr*. The string
format depends on the address family (e.g., `"127.0.0.1:8080"` for IPv4).

### socket-address-in
```scheme
(socket-address-in host port) -> socket-address
```

Creates an IPv4 socket address for the given *host* (integer or `INADDR_ANY`)
and *port* number.

### socket-address-in6
```scheme
(socket-address-in6 host port) -> socket-address
```

Creates an IPv6 socket address for the given *host* and *port*.

### socket-address-un
```scheme
(socket-address-un path) -> socket-address
```

Creates a Unix domain socket address for the given filesystem *path*.

### socket-address->address
```scheme
(socket-address->address sa) -> list
```

Converts a socket address *sa* to a list representation.

### socket-address->string
```scheme
(socket-address->string sa) -> string
```

Converts a socket address *sa* to a human-readable string representation.

### socket-address-family
```scheme
(socket-address-family sa) -> fixnum
```

Returns the address family of the socket address *sa* (e.g., `AF_INET`).

## Constants

### Address Families

| Constant | Description |
|----------|-------------|
| `AF_UNSPEC` | Unspecified |
| `AF_INET` | IPv4 |
| `AF_INET6` | IPv6 |
| `AF_UNIX` | Unix domain |
| `AF_LOCAL` | Same as `AF_UNIX` |
| `AF_NETLINK` | Netlink (Linux) |
| `AF_PACKET` | Packet (Linux) |
| `AF_ALG` | Kernel crypto (Linux) |

### Socket Types

| Constant | Description |
|----------|-------------|
| `SOCK_STREAM` | Reliable, ordered byte stream (TCP) |
| `SOCK_DGRAM` | Datagrams (UDP) |
| `SOCK_RAW` | Raw protocol access |
| `SOCK_SEQPACKET` | Reliable, ordered datagrams |
| `SOCK_RDM` | Reliable datagrams |

### Shutdown Modes

| Constant | Description |
|----------|-------------|
| `SHUT_RD` | Disable receives |
| `SHUT_WR` | Disable sends |
| `SHUT_RDWR` | Disable both |

### Message Flags

| Constant | Description |
|----------|-------------|
| `MSG_CONFIRM` | Confirm path validity |
| `MSG_DONTROUTE` | Don't route |
| `MSG_DONTWAIT` | Non-blocking |
| `MSG_EOR` | End of record |
| `MSG_MORE` | More data to send |
| `MSG_NOSIGNAL` | Don't generate SIGPIPE |
| `MSG_OOB` | Out-of-band data |
| `MSG_PEEK` | Peek at incoming data |
| `MSG_TRUNC` | Data truncated |
| `MSG_WAITALL` | Wait for full request |
