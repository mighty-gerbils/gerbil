# Standard IO Interfaces

The `:std/io` package provides interfaces for performing binary and
textual IO.  The interfaces are generic, easy to implement and
compose, and the standard library provides implementations for files,
sockets, buffers, and so on.

::: tip To use bindings form the std io package:
```scheme
(import :std/io)
```
:::

## Basic IO
The `Reader` interface provides the basic input facilities, while
the `Writer` interface provides the basic output facilities.

### Reader
The `Reader` interface represents binary input sources; the interface
is defined as follows:

```scheme
(interface Reader
  (read output (start 0) (end (u8vector-length output)) (need 0))
  (close))
```

These are the fundamental methods of the Reader interface:
#### Reader-read

#### Reader-close

### Writer
The `Reader` interface represents binary output sinks; the interface
is defined as follows:
```scheme
(interface Writer
  (write input (start 0) (end (u8vector-length input)))
  (close))
```

These are the fundamental methods of the Writer interface:
#### Writer-write

#### Writer-close

## File IO
You can operate on files using the Reader and Writer interfaces.

The following methods provide constructors for file Readers and Writers:

### open-file-reader

### open-file-writer

## Sockets

### Base Socket Functionality
The base `Socket` interface defines methods that are common in all socket interfaces:
```scheme
(interface Socket
  (domain)
  (address)
  (peer-address)
  (getsockopt level option)
  (setsockopt level option value)
  (set-input-timeout! timeo)
  (set-output-timeout! timeo)
  (close))
```

#### Socket-domain
#### Socket-address
#### Socket-peer-address
#### Socket-getsockopt
#### Socket-setsockopt
#### Socket-set-input-timeout!
#### Socket-set-output-timeout!
#### Socket-close

### Stream Sockets
Stream sockets extend the basic socket interface to do IO with a connected
stream of bytes:
```scheme
(interface (StreamSocket Socket)
  (recv output (start 0) (end (u8vector-length output)) (flags 0))
  (send input (start 0) (end (u8vector-length input)) (flags 0))
  (reader)
  (writer)
  (shutdown direction))
```
The following methods create and operate on StreamSocket instances:
#### tcp-connect
#### tcp-listen
#### unix-connect
#### unix-listen
#### StreamSocket-recv
#### StreamSocket-send
#### StreamSocket-reader
#### StreamSocket-writer
#### StreamSocket-shutdown

### Server Sockets
Server sockets abstract listening sockets that can accept connections:
```scheme
(interface (ServerSocket Socket)
  (accept))
```

The following methods create and operate on server sockets
#### tcp-listen
#### unix-listen
#### ServerSocket-accept

### Datagram Sockets
Datagram sockets abstract packet oriented socket IO:
```scheme
(interface (DatagramSocket Socket)
  (recvfrom peer u8v (start 0) (end (u8vector-length u8v)) (flags 0))
  (sendto peer u8v (start 0) (end (u8vector-length u8v)) (flags 0))
  (connect peer)
  (recv u8v (start 0) (end (u8vector-length u8v)) (flags 0))
  (send u8v (start 0) (end (u8vector-length u8v)) (flags 0)))
```

The following methods create and operate on datagram sockets:
#### udp-socket
#### udp-multicast-socket
#### DatagramSocket-recvfrom
#### DatagramSocket-sendto
#### DatagramSocket-connect
#### DatagramSocket-recv
#### DatagramSocket-send

### Addresses and default socket options
- Internet addresses are pairs, consing the host with the port;
  see the `:std/net/address` module.
- Unix addresses are just strings, representing file system paths.

The following are the default sockopts applied to sockets:
- stream sockets set `TCP_NODELAY`.
- server sockets set `SO_REUSEADDR`.
- datagram sockets that are bound set `SO_REUSEADDR`.

## Buffered IO
The `BufferedReader` and `BufferedWriter` interfaces provide buffered
IO facilities. Buffers can be attached to any implementation of Reader
and Writer.

### BufferedReader
The BufferedReader interface is defined as follows:
```scheme
(interface (BufferedReader Reader)
  (read-u8)
  (peek-u8)
  (skip count)
  (delimit limit)
  (reset! reader))
```

The following procedures create and apply to BufferedReader instances.

#### open-buffered-reader

#### open-u8vector-buffered-reader

#### open-string-buffered-reader

#### BufferedReader-peek-u8

#### BufferedReader-read-u8

#### BufferedReader-read-u8!

#### BufferedReader-skip

#### BufferedReader-delimit

#### BufferedReader-reset!

#### BufferedReader-read-u16

#### BufferedReader-read-s16

#### BufferedReader-read-u32

#### BufferedReader-read-s32

#### BufferedReader-read-u64

#### BufferedReader-read-s64

#### BufferedReader-read-varuint

#### BufferedReader-read-varint

#### BufferedReader-read-char

#### BufferedReader-read-char!

#### BufferedReader-read-string

#### BufferedReader-read-line


### BufferedWriter
The BufferedWriter interface is defined as follows:
```scheme
(interface (BufferedWriter Writer)
  (write-u8 u8)
  (flush)
  (reset! output))
```

The following procedures create and apply to BufferedWriter instances.

#### open-buffered-writer

#### open-u8vector-buffered-writer

#### get-buffer-output-u8vector

#### get-buffer-output-chunks

#### BufferedWriter-write-u8

#### BufferedWriter-flush

#### BufferedWriter-reset!

#### BufferedWriter-write-u16

#### BufferedWriter-write-s16

#### BufferedWriter-write-u32

#### BufferedWriter-write-s32

#### BufferedWriter-write-u64

#### BufferedWriter-write-s64

#### BufferedWriter-write-varuint

#### BufferedWriter-write-varint

#### BufferedWriter-write-char

#### BufferedWriter-write-string

#### BufferedWriter-write-line

## Utilities
### delimited-reader

### io-copy!
