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

There are two methods in the Reader interface:
#### Reader-read
```scheme
(Reader-read reader output (start 0) (end (u8vector-length output)) (need 0)) -> fixnum
  reader := Reader implementation
  output := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length output)
  need   := fixnum; 0 <= need <= end-start
```
Reads from a reader into the `output` buffer, with the write range being `[start, end)`.
Returns the number of bytes read, with 0 denoting the end of input.

If `need > 0`, then it specifies the number of bytes needed; if less than `need` bytes
are read before encountering the end of input, an error is raised.

#### Reader-close
```scheme
(Reader-close reader)
  reader := Reader implementation
```
Closes the input source represented by the reader.

### Writer
The `Reader` interface represents binary output sinks; the interface
is defined as follows:
```scheme
(interface Writer
  (write input (start 0) (end (u8vector-length input)))
  (close))
```

There are two methods in the Writer interface:
#### Writer-write
```scheme
(Writer-write writer input (start 0) (end (u8vector-length output)) (need 0)) -> fixnum
  reader := Writer implementation
  input  := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum;  start < end <= (u8vector-length input)
```
Writes into a writer from the `input` buffer, with the read range being `[start, end)`.
Returns the number of bytes written; if fewer bytes are written than expected, an error`
is raised.

#### Writer-close
```scheme
(Writer-close writer)
  writer := Writer implementation
```
Closes the output source represented by the writer.

## File IO
You can operate on files using the Reader and Writer interfaces.

The following methods provide constructors for file Readers and Writers:

### open-file-reader
```scheme
(open-file-reader path flags: (flags default-file-reader-flags)) -> Reader
  path  := string
  flags := fixnum
```
Opens a file for reading and returns a Reader instance reading from the file.

Notes:
- the path is expanded before opening the file.
- the default flags are `O_NOATIME` if available in the sytem, otherwise 0.
- see `:std/os/fcntl` for relevant flags.

### open-file-writer
```scheme
(open-file-writer path flags: (flags default-file-writer-flags) mode: (mode #o644)) -> Writer
  path  := string
  flags := fixnum
  mode  := fixnum
```
Opens a file for writing and returns a Writer instance writing to the file.

Notes:
- the path is expanded before opening the file.
- the default flags are `O_CREAT|O_TRUNC`.
- mode is the permissions associated with the file if a new file is created.
- see `:std/os/fcntl` for relevant flags.

## Sockets

### Base Socket Functionality
The base `Socket` interface defines methods that are common for all sockets:
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
```scheme
(Socket-domain socket) -> fixnum
  socket := Socket
```
Returns the domain (address family) of the socket.

#### Socket-address
```scheme
(Socket-address socket) -> address
  socket := Socket
```
Returns the local address of a socket.

#### Socket-peer-address
```scheme
(Socket-peer-address socket) -> address
  socket := Socket
```
Returns the peer address for a connected socket; this is undefined for ServerSockets.

#### Socket-getsockopt
```scheme
(Socket-getsockopt socket level option) -> any
  socket := Socket
  level  := fixnum
  option := fixnum
```
Gets a socket option.
See [`:std/os/socket`](sockets.md) for supported sockopts and their value types.

#### Socket-setsockopt
```scheme
(Socket-setsockopt socket level option value)
  socket := Socket
  level  := fixnum
  option := fixnum
  value := any
```
Sets a socket option.
See [`:std/os/socket`](sockets.md) for supported sockopts and their value types.

#### Socket-set-input-timeout!
```scheme
(Socket-set-input-timeout! socket timeo)
  socket := Socket
  timeo  := timeout or #f
```
Sets the timeout for input operations on the socket.

Notes:
- #f clears the timeout
- a real value sets a relative timeout.
- a time object sets an absolute timeout.

#### Socket-set-output-timeout!
```scheme
(Socket-set-output-timeout! socket timeo)
  socket := Socket
  timeo  := timeout or #f
```
Sets the timeout for output operations on the socket.

Notes:
- #f clears the timeout
- a real value sets a relative timeout.
- a time object sets an absolute timeout.

#### Socket-close
```scheme
(Socket-close socket)
  socket := Socket
```

Closes the socket raw device.

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
```scheme
(tcp-connect address (timeo #f)) -> StreamSocket
  address := address
  timeo   := timeout or #f
```
Connects to an Internet address using TCP and returns a StreamSocket.

Notes:
- the address is resolved, if necessary, using a DNS lookup.

#### unix-connect
```scheme
(unix-connect path (timeo #f)) -> StreamSocket
  path  := string
  timeo := timeout or #f
```

Connects to a UNIX address and returns a StreamSocket.

#### StreamSocket-recv
```scheme
(StreamSocket-recv socket output (start 0) (end (u8vector-length output)) (flags 0))
  -> fixnum
  socket := StreamSocket
  output := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length output)
  flags  := fixnum
```
Receives from a socket into the `output` buffer, with the write range being `[start, end)`.
Returns the number of bytes read, with 0 denoting the end of input.

#### StreamSocket-send
```scheme
(StreamSocket-send socket input (start 0) (end (u8vector-length input)) (flags 0))
  -> fixnum
  socket := StreamSocket
  input := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length input)
  flags  := fixnum
```
Send to a socket from the `input` buffer, with the write range being `[start, end)`.
Returns the number of bytes written.

#### StreamSocket-reader
```scheme
(StreamSocket-reader socket) -> Reader
  socket := StreamSocket
```

Returns a Reader instance reading from the socket.
Closing the reader shuts down the input direction of the socket.

#### StreamSocket-writer
```scheme
(StreamSocket-writer socket) -> Writer
  socket := StreamSocket
```

Returns a Writer instance writing to the socket.
Closing the writer shuts down the output of the socket.

#### StreamSocket-shutdown
```scheme
(StreamSocket-shutdown socket direction)
  socket := StreamSocket
  direction := 'in, 'out, or 'inout
```

Shuts down the socket in the direction specified; if both directions
are shutdown, the socket is automatically closed.

### Server Sockets
Server sockets abstract listening sockets that can accept connections:
```scheme
(interface (ServerSocket Socket)
  (accept))
```

The following methods create and operate on server sockets
#### tcp-listen
```scheme
(tcp-listen address
            backlog: (backlog default-backlog)
            sockopts: (sockopts default-listen-sockopts))
  -> ServerSocket
  address  := address
  backlog  := fixnum
  sockopts := list of fixnum.
```
Binds and listens to a local interface address and returns a ServerSocket.

Notes:
- the address is not resolved; you can use `inaddr-any4` or `inaddr-any6`
  as the host for binding to any interface with IPv4 and IPv6 respectively.
- backlog is the backlog of the listener; defaults to 10.
- sockopts is a list of SOL_SOCKET socket options to enable.
  Default is `[SO_REUSEADDR]`.

#### unix-listen
```scheme
(unix-listen path
             backlog: (backlog default-backlog)
             sockopts: (sockopts default-listen-sockopts))
  -> ServerSocket
  path     := string
  backlog  := fixnum
  sockopts := list of fixnum.
```

Binds and listens to a local path and returns a ServerSocket.

#### ServerSocket-accept
```scheme
(ServerSocket-accept socket) -> StreamSocket
  socket := ServerSocket
```
Accepts an incoming connection from a server socket and returns the
connected stream socket.

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
```scheme
(udp-socket (address #f)) -> DatagramSocket
  address := address or #f
```

Creates a UDP socket; if the address is not `#f` then it must be a local Internet
address where the socket is bound.

#### udp-multicast-socket
```scheme
(udp-multicast-socket group-ip-address local-address (ifindex 0)) -> DatagramSocket
  group-ip-address := IP address; u8vector or string
  local-address    := address
  ifindex          := fixnum
```

Creates a multicast UDP socket.

#### DatagramSocket-recvfrom
```scheme
(DatagramSocket-recvfrom socket peer output (start 0) (end (u8vector-length output)) (flags 0))
  -> fixnum
  socket := DatagramSocket
  peer   := box
  output := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length output)
  flags  := fixnum
```

Receives a datagram from the socket, placing the peer's address in the supplied box.
Returns the number of bytes read.

#### DatagramSocket-sendto
```scheme
(DatagramSocket-sendto socket peer input (start 0) (end (u8vector-length input)) (flags 0))
  -> fixnum
  socket := DatagramSocket
  peer   := address
  input := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length input)
  flags  := fixnum
```
Sends a datagram to a peer.
Returns the number of bytes written.

#### DatagramSocket-connect
```scheme
(DatgramSocket-connect socket peer)
```
Connects a datagram socket to a peer.

#### DatagramSocket-recv
```scheme
(DatagramSocket-recv socket output (start 0) (end (u8vector-length output)) (flags 0))
  -> fixnum
  socket := DatagramSocket
  output := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length output)
  flags  := fixnum
```

Receives a datagram from the socket, which must have been previously connected.
Returns the number of bytes read.

#### DatagramSocket-send
```scheme
(DatagramSocket-send socket input (start 0) (end (u8vector-length input)) (flags 0))
  -> fixnum
  socket := DatagramSocket
  input := u8vector
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (u8vector-length input)
  flags  := fixnum
```
Sends a datagram to the connected peer.
Returns the number of bytes written.

### Addresses and default socket options
- Internet addresses are normalized as pairs, consing the host with the port;
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
  (put-back previous-input)
  (skip count)
  (delimit limit)
  (reset! reader))
```

The following procedures create and apply to BufferedReader instances.

#### open-buffered-reader
```scheme
(open-buffered-reader reader (buffer-or-size default-buffer-size)) -> BufferedReader
  reader := Reader or u8vector
  buffer-or-size := fixnum or u8vector
```

Creates a `BufferedReader` using `reader` as the underlying source.
If the `reader` argument is a u8vector then the new buffered reader use it as a source.

The default buffer size is 32KB.


#### BufferedReader-peek-u8
```scheme
(BufferedReader-peek-u8 buf) -> u8 or #!eof
  buf := BufferedReader
```

Peeks the next byt from the buffer, filling it if it is empty.
Returns `#!eof` if the end of input is reached.

#### BufferedReader-read-u8
```scheme
(BufferedReader-read-u8 buf) -> u8 or #!eof
  buf := BufferedReader
```

Reads a byte from the buffer.
Returns `#!eof` if the end of input is reached.

#### BufferedReader-read-u8!
```scheme
(BufferedReader-read-u8! buf) -> u8
  buf := BufferedReader
```

Like `BufferedReader-read-u8`, but raises an error if the end of input is reached.

#### BufferedReader-read-u16
```scheme
(BufferedReader-read-u16 buf) -> integer
  buf := BufferedReader
```

Reads an usigned 16 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.

#### BufferedReader-read-s16
```scheme
(BufferedReader-read-s16 buf) -> integer
  buf := BufferedReader
```

Reads a signed 16 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.

#### BufferedReader-read-u32
```scheme
(BufferedReader-read-u32 buf) -> integer
  buf := BufferedReader
```

Reads an usigned 32 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.

#### BufferedReader-read-s32
```scheme
(BufferedReader-read-s32 buf) -> integer
  buf := BufferedReader
```

Reads a signed 32 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.


#### BufferedReader-read-u64
```scheme
(BufferedReader-read-u64 buf) -> integer
  buf := BufferedReader
```

Reads an unsigned 64 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.


#### BufferedReader-read-s64
```scheme
(BufferedReader-read-s64 buf) -> integer
  buf := BufferedReader
```

Reads signed 64 bit integer, encoded in network byte order.
Raises an error if the end of input is reached.


#### BufferedReader-read-varuint
```scheme
(BufferedReader-read-varuint buf (max-bits 64)) -> integer
  buf      := BufferedReader
  max-bits := fixnum or #f
```
Reads an unsigned integer, with variadic encoding and a maximum integer length of `max-bits` if
specified.
Raises an error if the end of input is reached.

#### BufferedReader-read-varint
```scheme
(BufferedReader-read-varint buf (max-bits 64)) -> integer
  buf      := BufferedReader
  max-bits := fixnum or #f
```
Reads a signed integer, with variadic encoding and a maximum integer length of `max-bits`
Raises an error if the end of input is reached.

#### BufferedReader-read-char
```scheme
(BufferedReader-read-char buf) -> char or #!eof
  buf := BufferedReader
```

Reads a utf8-encoded character.
Returns `#!eof` if the endo if input is reached before reading the first byte.
Raises an error if the end of input is reached prematurely for multibyte encoded characters.
Returns the utf8 replacement character and only reads a single byte if a multibyte character
cannot be decoded correctly.

#### BufferedReader-read-char!
```scheme
(BufferedReader-read-char! buf) -> char
  buf := BufferedReader
```

Like `BufferedReader-read-char`, but raises an error if the end of
input is reached before reading the first byte.

#### BufferedReader-read-string
```scheme
(BufferedReader-read-string buf reader str (start 0) (end (string-length str)) (need 0))
  -> fixnum
  buf    := BufferedReader
  str    := string
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (string-length input)
  need   := fixnum
```

Reads a string from the buffer; semantics of the `start`, `end` and
`need` arguments are the same as in `Reader-read`, but applying to
number of characters.
Returns the number of characters read.
If `need > 0` and fewer than `need` characters are read, an error is raised.

#### BufferedReader-read-line
```scheme
(BufferedReader-read-line buf (sep #\newline) (include-sep? #f) (max-chars #f)) -> string
  buf          := BufferedReader
  sep          := char or list of chars
  include-sep? := bool
  max-chars    := fixnum or #f
```

Reads a line, separated by `sep` and up to `max-chars` of length.
The separator is either a single character or a list of characters.
If `include-sep?` is true, then the separator is include in the stream.
If the separator is not encountered within `max-chars`, then an error is raised.

#### BufferedReader-read-delimited
```scheme
(BufferedReader-read-delimited buf read-value)
  buf := BufferedReader
  read-value := lambda (BufferedReader) -> any
```

Reads a varint prefix length delimited value, with `read-value` reading the body.

#### BufferedReader-read-delimited-u8vector
```scheme
(BufferedReader-read-delimited-u8vector buf) -> u8vector
  buf := BufferedReader
```

Reads a varint prefix length delimited u8vector.

#### BufferedReader-read-delimited-string
```scheme
(BufferedReader-read-delimited-string buf) -> string
  buf := BufferedReader
```

Reads a varint prefix length delimited string.

#### BufferedReader-put-back
```scheme
(BufferedReader-put-back buf previous-input)
  buf := BufferedReader
  previous-input := u8 or list of u8
```

Puts back one or more previously read bytes.

Notes:
- when putting back multiple bytes, the order is the natural one: oldest first.
- the method is guaranteed to succeed, regardless of how many bytes you are
  putting back; the buffer may grow as needed to accommodate the putback.
- the bytes put back do not have to be the same as bytes previously read from
  the input stream. Thus the method allowsthe method allows you to
  _inject_ bytes into the input stream, which may be useful for
  parsers.

#### BufferedReader-skip
```scheme
(BufferedReader-skip buf count)
  buf   := BufferedReader
  count := fixnum
```

Skips the next `count` bytes of input.
If the end of input is encountered before `count` bytes are skipped, an error is raised.

#### BufferedReader-delimit
```scheme
(BufferedReader-delimit buf limit) -> BufferedReader
  buf   := BufferedReader
  limit := fixnum
```

returns a new `BufferedReader`, sharing the same buffer, that can read up to `limit` bytes.
Once the limit is reached, the new buffer signals the end of input.

Note: there is no double buffering; reading from the delimited reader
advances the input on the underlying BufferedWriter.

#### BufferedReader-reset!
```scheme
(BufferedReader-reset! buf reader)
  buf    := BufferedReader
  reader := Reader
```

Resets the underlying reader and buffer state, allowing reuse of buffers from a cache.

### BufferedWriter
The BufferedWriter interface is defined as follows:
```scheme
(interface (BufferedWriter Writer)
  (write-u8 u8)
  (flush)
  (reset! output))
```

The following procedures create and apply to BufferedWriter.

#### open-buffered-writer
```scheme
(open-buffered-writer writer (buffer-or-size default-buffer-size)) -> BufferedWriter
  writer         := Writer or #f
  buffer-or-size := fixnum or u8vector
```

Creates a `BufferedWriter` using `writer` as the underlying sink.
If `writer` is `#f` then a new buffered writer is created that collects bytes that can
be retrieved with `get-buffer-output-u8vector` or `get-buffered-output-chunks`.

The default buffer size is 32KB.

#### get-buffer-output-u8vector
```scheme
(get-buffer-output-u8vector wr) -> u8vector
  wr := BufferedWriter
```

Retrieves the output from a `BufferedWriter` created with `open-u8vector-buffered-writer`.

#### get-buffer-output-chunks
```scheme
(get-buffer-output-chunks wr) -> list of u8vector
  wr := BufferedWriter
```

Retrieves the output chunks from a `BufferedWriter` created with `open-u8vector-buffered-writer`.

#### BufferedWriter-write-u8
```scheme
(BufferedWriter-write-u8 buf u8) -> fixnum
  buf := BufferedWriter
  u8  := byte
```

Writes a byte to the buffer.
Returns the number of bytes written.

#### BufferedWriter-write-u16
```scheme
(BufferedWriter-write-u16 buf u16) -> fixnum
  buf := BufferedWriter
  u16 := integer
```

Writes an usigned 16 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-s16
```scheme
(BufferedWriter-write-s16 buf s16) -> fixnum
  buf := BufferedWriter
  s16 := integer
```

Writes a signed 16 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-u32
```scheme
(BufferedWriter-write-u32 buf u32) -> fixnum
  buf := BufferedWriter
  u32 := integer
```

Writes an usigned 32 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-s32
```scheme
(BufferedWriter-write-s32 buf s32) -> fixnum
  buf := BufferedWriter
  s32 := integer
```

Writes a signed 32 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-u64
```scheme
(BufferedWriter-write-u64 buf u64) -> fixnum
  buf := BufferedWriter
  u64 := integer
```

Writes an unsigned 64 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-s64
```scheme
(BufferedWriter-write-s64 buf s64) -> fixnum
  buf := BufferedWriter
  s64 := integer
```

Reads signed 64 bit integer, encoded in network byte order.
Returns the number of bytes written.

#### BufferedWriter-write-varuint
```scheme
(BufferedWriter-write-varuint buf uint) -> fixnum
  buf  := BufferedWriter
  uint := integer
```
Writes an unsigned integer with variadic encoding.
Returns the number of bytes written.

#### BufferedWriter-write-varint
```scheme
(BufferedWriter-write-varint buf int) -> fixnum
  buf := BufferedWriter
  int := integer
```

Writes signed integer with variadic encoding.
Returns the number of bytes written.

#### BufferedWriter-write-char
```scheme
(BufferedWriter-write-char buf char) -> fixnum
  buf  := BufferedWriter
  char := character
```

Writes a character with utf8 encoding.
Returns the number of bytes written.

#### BufferedWriter-write-string
```scheme
(BufferdWriter-write-string buf str (start 0) (end (string-length str))) -> fixnum
  buf := BufferedWriter
  str := string
  start  := fixnum; 0 <= start < end
  end    := fixnum; start < end <= (string-length input)
```
Writes a string with utf8 encoding.
Returns the number of bytes written.

#### BufferedWriter-write-line
```scheme
(BufferedWriter-write-line buf str (sep #\newline))
  buf := BufferedWriter
  str := string
  sep := char or list of chars
```
Writes a string, followed by a separator.
Returns the number of bytes written

#### BufferedReader-write-delimited
```scheme
(BufferedWriter-write-delimited buf write-value (buffer-or-size default-small-buffer-size))
  buf := BufferedWriter
  write-value := lambda (BufferedWriter) -> fixnum
```

Writes a varint prefix length delimited value, with `write-value` writing the body.

#### BufferedReader-write-delimited-u8vector
```scheme
(BufferedWriter-read-delimited-u8vector buf bytes) -> fixnum
  buf := BufferedReader
  bytes := u8veftor
```

Writes a varint prefix length delimited u8vector.

#### BufferedReader-write-delimited-string
```scheme
(BufferedWriter-write-delimited-string buf str) -> fixnum
  buf := BufferedWriter
  str := string
```

Writes a varint prefix length delimited string.

#### BufferedWriter-flush
```
(BufferedWriter-flush buf)
  buf := BufferedWriter
```

Drains the buffer into the underlying sync.

#### BufferedWriter-reset!
```scheme
(BufferedWriter-reset! buf reader)
  buf    := BufferedWriter
  reader := Reader
```

Resets the underlying writer and buffer state, allowing reuse of buffers from a cache.

#### BufferedWriter-close
```scheme
(BufferedWriter-close buf)
```

Fluses the buffer and closes the underlying Writer; if there was an
exception when flushing, it will be raised after closing the underying
Writer.

## Utilities
### delimited-reader
```scheme
(delimted-reader reader limit) -> Reader
  reader := Reader
  limit  := fixnum
```
Creates a delimited reader that can read up to `limit` bytes from `reader`.

### io-copy!
```scheme
(io-copy! reader writer (buffer-or-size default-buffer-size)) -> fixnum
  reader := Reader
  writer := Writer
  buffer-or-size := fixnum or u8vector
```

Copies from a Reader to a Writer.
Returns the number of bytes copied.

## A Note on thread-safety

In general you should use a Reader from a single thread. There is
no mutex protection for the simple reason that if you are reading from
multiple threads concurrently you are already shooting yourself in the
foot because your input will be non-deterministic.

Similarly for writers, you should use a Writer from a single thread at
a time.

For sockets, which are full duplex, you can read and write with two
threads concurrently; it is also safe to close the socket from yet
another thread.
