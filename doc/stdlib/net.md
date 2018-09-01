# Miscellaneous Network related Libraries

## std/net/address
Internet addresses as host-port pairs.

```
(import :std/net/address)

;; exports:

  ip4-address? ip4-address
  ip4-address-string? ip4-address->string string->ip4-address
  ip6-address? ip6-address
  ip6-address-string? ip6-address->string string->ip6-address
  inet-address? inet-address
  inet-address-string? inet-address->string string->inet-address
  resolve-address resolved-address?
```

## std/net/bio

Binary I/O Buffers -- low level (unsafe) interface for buffered i/o
over raw devices and things.

```
(import :std/net/bio)

;; exports:

  ;; :std/net/bio/input
  input-buffer?
  bio-read-u8
  bio-peek-u8
  bio-read-subu8vector
  bio-read-subu8vector*
  bio-read-subu8vector-unbuffered
  bio-read-bytes
  bio-read-bytes-unbuffered
  bio-read-u32
  bio-input-skip

;; :std/net/bio/output
  output-buffer?
  bio-write-u8
  bio-write-subu8vector
  bio-write-subu8vector-unbuffered
  bio-write-bytes
  bio-write-bytes-unbuffered
  bio-write-u32
  bio-write-char
  bio-write-substring
  bio-write-string
  bio-force-output

;; :std/net/bio/buffer
  open-input-buffer
  open-fixed-output-buffer
  make-fixed-output-buffer
  open-chunked-output-buffer
  open-serializer-output-buffer
  chunked-output-buffer?
  chunked-output-chunks
  chunked-output-u8vector
  chunked-output-length

```


## std/net/repl

Network repl for debugging live programs.

```
(import :std/net/repl)

;; start a network repl server
(start-repl-server! password: (passwd #f)
                    address: (address "127.0.0.1:7000"))
=> thread

;; stop the network repl server
(stop-repl-server! repl-server-thread)
```

## std/net/sasl

SASL authentication support.

```
(import :std/net/sasl)

;; SCRAM methods
  scram-sha-1-begin
  scram-sha-256-begin
  scram-context?
  scram-client-first-message
  scram-server-first-message!
  scram-client-final-message
  scram-server-final-message!
```

## std/net/socket
Synchronous Socket programming API.

```
(import :std/net/socket)

;; synchronous socket interface
  ssocket-connect
  ssocket-listen
  ssocket-accept
  ssocket-send ssocket-send-all
  ssocket-recv ssocket-recv-all
  ssocket-socket
  ssocket-close ssocket-close-input ssocket-close-output

;; bio buffers
  open-ssocket-input-buffer
  ssocket-input-buffer?
  ssocket-input-buffer-timeout-set!
  open-ssocket-output-buffer
  ssocket-output-buffer?
  ssocket-output-buffer-timeout-set!

;; socket server
  start-socket-server!
  stop-socket-server!

```

## std/net/socks
SOCKS proxy client.

```
(import :std/net/socks)

;; exports:

  open-socks5-client open-socks4-client
  socks5-open socks5-connect socks5-bind socks5-accept
  socks4-connect socks4-bind socks4-accept
  socks5-send-request socks5-recv-reply
  socks4-send-request socks4-recv-reply
```

## std/net/uri
URI support [RFC3986]

```
(import :std/net/uri)

;; exports:

  uri-encode uri-decode form-url-encode form-url-decode
```


## std/net/wamp
Web Application Message Protocol client.

```
(import :std/net/wamp)

;; exports:

  start-wamp-client!
  wamp-call wamp-publish wamp-subscribe
  wamp-register wamp-unregister
  wamp-close
  (struct-out wamp-error invocation-error)
  raise-invocation-error

```

## std/net/websocket
Websocket client.

```
(import :std/net/websocket)

;; exports:

  open-websocket-client
  websocket?
  websocket-recv websocket-read
  websocket-send websocket-write
  websocket-close
  set-websocket-max-frame-size!
  set-websocket-max-message-size!
```