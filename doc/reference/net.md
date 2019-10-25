# Network related Libraries

## Network REPL

Network repl for debugging live programs.

::: tip usage
(import :std/net/repl)
:::

### start-repl-server!
::: tip usage
```
(start-repl-server! password: (passwd #f)
                    address: (address "127.0.0.1:7000"))
=> <server>

```
:::

Starts a network REPL server.

### stop-repl-server!
::: tip usage
```
(stop-repl-server! <server>)
```
:::

Stops a REPL server

### taint!
::: tip usage
```
REPL> (std/net/repl#taint! [tgroup])
  tgroup := thread-group; defaults to the primordial thread-group
=> <state>
```
:::

Taints a thread-group, redirecting its repl ports to the repl server ports.
This is necessary to visit threads in the debugger.
Returns the thread-group specific state.

### untaint!
::: tip usage
```
REPL> (std/net/repl#untaint! [tgroup [state]])
  tgroup := thread-group; defaults to the primordial thread-group
  state := any; defaults to #f
```
:::

Untaints a thread-group, restoring its specific state.

### Loading the Expander

By default, once connected, the REPL does not load the Gerbil expander but
uses the primitive Gambit eval. This allows the REPL to be embedded to
static binaries without the requirement to embed the expander.

You can load the expander on demand in dynamically linked executables:
```
REPL> (_gx#load-expander!)
```

## URIs [RFC3986]

::: tip usage
(import :std/net/uri)
:::

### uri-encode
::: tip usage
```
(uri-encode ...)
```
:::

Please document me!

### uri-decode
::: tip usage
```
(uri-decode ...)
```
:::

Please document me!

### form-url-encode
::: tip usage
```
(form-url-encode ...)
```
:::

Please document me!

### form-url-decode
::: tip usage
```
(form-url-decode ...)
```
:::

Please document me!


## Internet Addresses

Internet addresses as host-port pairs.

::: tip usage
(import :std/net/address)
:::

### ip4-address?
::: tip usage
```
(ip4-address? ...)
```
:::

Please document me!

### ip4-address
::: tip usage
```
(ip4-address ...)
```
:::

Please document me!

### ip4-address-string?
::: tip usage
```
(ip4-address-string? ...)
```
:::

Please document me!

### ip4-address-&gt;string
::: tip usage
```
(ip4-address->string ...)
```
:::

Please document me!

### string-&gt;ip4-address
::: tip usage
```
(string->ip4-address ...)
```
:::

Please document me!

### ip6-address?
::: tip usage
```
(ip6-address? ...)
```
:::

Please document me!

### ip6-address
::: tip usage
```
(ip6-address ...)
```
:::

Please document me!

### ip6-address-string?
::: tip usage
```
(ip6-address-string? ...)
```
:::

Please document me!

### ip6-address-&gt;string
::: tip usage
```
(ip6-address->string ...)
```
:::

Please document me!

### string-&gt;ip6-address
::: tip usage
```
(string->ip6-address ...)
```
:::

Please document me!

### inet-address?
::: tip usage
```
(inet-address? ...)
```
:::

Please document me!

### inet-address
::: tip usage
```
(inet-address ...)
```
:::

Please document me!

### inet-address-string?
::: tip usage
```
(inet-address-string? ...)
```
:::

Please document me!

### inet-address-&gt;string
::: tip usage
```
(inet-address->string ...)
```
:::

Please document me!

### string-&gt;inet-address
::: tip usage
```
(string->inet-address ...)
```
:::

Please document me!

### resolve-address
::: tip usage
```
(resolve-address ...)
```
:::

Please document me!

### resolved-address?
::: tip usage
```
(resolved-address? ...)
```
:::

Please document me!


## Binary I/O Buffers

Low level (unsafe) interface for buffered i/o over raw devices and things.

::: tip usage
(import :std/net/bio)
:::

### input-buffer?
::: tip usage
```
(input-buffer? ...)
```
:::

Please document me!

### bio-read-u8
::: tip usage
```
(bio-read-u8 ...)
```
:::

Please document me!

### bio-peek-u8
::: tip usage
```
(bio-peek-u8 ...)
```
:::

Please document me!

### bio-read-subu8vector
::: tip usage
```
(bio-read-subu8vector ...)
```
:::

Please document me!

### bio-read-subu8vector*
::: tip usage
```
(bio-read-subu8vector* ...)
```
:::

Please document me!

### bio-read-subu8vector-unbuffered
::: tip usage
```
(bio-read-subu8vector-unbuffered ...)
```
:::

Please document me!

### bio-read-bytes
::: tip usage
```
(bio-read-bytes ...)
```
:::

Please document me!

### bio-read-bytes-unbuffered
::: tip usage
```
(bio-read-bytes-unbuffered ...)
```
:::

Please document me!

### bio-read-u32
::: tip usage
```
(bio-read-u32 ...)
```
:::

Please document me!

### bio-read-s32
::: tip usage
```
(bio-read-s32 ...)
```
:::

Please document me!

### bio-read-u16
::: tip usage
```
(bio-read-u16 ...)
```
:::

Please document me!

### bio-read-s16
::: tip usage
```
(bio-read-s16 ...)
```
:::

Please document me!

### bio-read-char
::: tip usage
```
(bio-read-char ...)
```
:::

Please document me!

### bio-read-substring
::: tip usage
```
(bio-read-substring ...)
```
:::

Please document me!

### bio-read-string
::: tip usage
```
(bio-read-string ...)
```
:::

Please document me!

### bio-read-line
::: tip usage
```
(bio-read-line ...)
```
:::

Please document me!


### bio-input-utf8-decode
::: tip usage
```
(bio-input-utf8-decode ...)
```
:::

Please document me!

### bio-input-skip
::: tip usage
```
(bio-input-skip ...)
```
:::

Please document me!

### bio-input-count
::: tip usage
```
(bio-input-count ...)
```
:::

Please document me!

### output-buffer?
::: tip usage
```
(output-buffer? ...)
```
:::

Please document me!

### bio-write-u8
::: tip usage
```
(bio-write-u8 ...)
```
:::

Please document me!

### bio-write-subu8vector
::: tip usage
```
(bio-write-subu8vector ...)
```
:::

Please document me!

### bio-write-subu8vector-unbuffered
::: tip usage
```
(bio-write-subu8vector-unbuffered ...)
```
:::

Please document me!

### bio-write-bytes
::: tip usage
```
(bio-write-bytes ...)
```
:::

Please document me!

### bio-write-bytes-unbuffered
::: tip usage
```
(bio-write-bytes-unbuffered ...)
```
:::

Please document me!

### bio-write-u32
::: tip usage
```
(bio-write-u32 ...)
```
:::

Please document me!

### bio-write-s32
::: tip usage
```
(bio-write-s32 ...)
```
:::

Please document me!

### bio-write-u16
::: tip usage
```
(bio-write-u16 ...)
```
:::

Please document me!

### bio-write-s16
::: tip usage
```
(bio-write-s16 ...)
```
:::

Please document me!

### bio-write-char
::: tip usage
```
(bio-write-char ...)
```
:::

Please document me!

### bio-write-substring
::: tip usage
```
(bio-write-substring ...)
```
:::

Please document me!

### bio-write-string
::: tip usage
```
(bio-write-string ...)
```
:::

Please document me!

### bio-force-output
::: tip usage
```
(bio-force-output ...)
```
:::

Please document me!

### open-input-buffer
::: tip usage
```
(open-input-buffer ...)
```
:::

Please document me!

### open-delimited-input-buffer
::: tip usage
```
(open-delimited-input-buffer ...)
```
:::

Please document me!

### delimited-input-buffer?
::: tip usage
```
(delimited-input-buffer? ...)
```
:::

Please document me!

### open-fixed-output-buffer
::: tip usage
```
(open-fixed-output-buffer ...)
```
:::

Please document me!

### make-fixed-output-buffer
::: tip usage
```
(make-fixed-output-buffer ...)
```
:::

Please document me!

### open-chunked-output-buffer
::: tip usage
```
(open-chunked-output-buffer ...)
```
:::

Please document me!

### open-serializer-output-buffer
::: tip usage
```
(open-serializer-output-buffer ...)
```
:::

Please document me!

### chunked-output-buffer?
::: tip usage
```
(chunked-output-buffer? ...)
```
:::

Please document me!

### chunked-output-chunks
::: tip usage
```
(chunked-output-chunks ...)
```
:::

Please document me!

### chunked-output-u8vector
::: tip usage
```
(chunked-output-u8vector ...)
```
:::

Please document me!

### chunked-output-length
::: tip usage
```
(chunked-output-length ...)
```
:::

Please document me!

### open-file-input-buffer
::: tip usage
```
(open-file-input-buffer ...)
```
:::

Please document me!

### open-fd-input-buffer
::: tip usage
```
(open-fd-input-buffer ...)
```
:::

Please document me!

### file-input-buffer?
::: tip usage
```
(file-input-buffer? ...)
```
:::

Please document me!

### close-file-input-buffer
::: tip usage
```
(close-file-input-buffer ...)
```
:::

Please document me!

### open-file-output-buffer
::: tip usage
```
(open-file-output-buffer ...)
```
:::

Please document me!

### open-fd-output-buffer
::: tip usage
```
(open-fd-output-buffer ...)
```
:::

Please document me!

### file-output-buffer?
::: tip usage
```
(file-output-buffer? ...)
```
:::

Please document me!

### close-file-output-buffer
::: tip usage
```
(close-file-output-buffer ...)
```
:::

Please document me!


## SASL authentication

::: tip usage
(import :std/net/sasl)
:::

### scram-context?
::: tip usage
```
(scram-context? ...)
```
:::

Please document me!

### scram-sha-1-begin
::: tip usage
```
(scram-sha-1-begin ...)
```
:::

Please document me!

### scram-sha-256-begin
::: tip usage
```
(scram-sha-256-begin ...)
```
:::

Please document me!

### scram-client-first-message
::: tip usage
```
(scram-client-first-message ...)
```
:::

Please document me!

### scram-client-first-server-message!
::: tip usage
```
(scram-client-first-server-message! ...)
```
:::

Please document me!

### scram-client-final-message
::: tip usage
```
(scram-client-final-message ...)
```
:::

Please document me!

### scram-client-final-server-message!
::: tip usage
```
(scram-client-final-server-message! ...)
```
:::

Please document me!

## SOCKS Proxy Client.

::: tip usage
(import :std/net/socks)
:::

### open-socks5-client
::: tip usage
```
(open-socks5-client ...)
```
:::

Please document me!

### open-socks4-client
::: tip usage
```
(open-socks4-client ...)
```
:::

Please document me!

### socks5-open
::: tip usage
```
(socks5-open ...)
```
:::

Please document me!

### socks5-connect
::: tip usage
```
(socks5-connect ...)
```
:::

Please document me!

### socks5-bind
::: tip usage
```
(socks5-bind ...)
```
:::

Please document me!

### socks5-accept
::: tip usage
```
(socks5-accept ...)
```
:::

Please document me!

### socks4-connect
::: tip usage
```
(socks4-connect ...)
```
:::

Please document me!

### socks4-bind
::: tip usage
```
(socks4-bind ...)
```
:::

Please document me!

### socks4-accept
::: tip usage
```
(socks4-accept ...)
```
:::

Please document me!

### socks5-send-request
::: tip usage
```
(socks5-send-request ...)
```
:::

Please document me!

### socks5-recv-reply
::: tip usage
```
(socks5-recv-reply ...)
```
:::

Please document me!

### socks4-send-request
::: tip usage
```
(socks4-send-request ...)
```
:::

Please document me!

### socks4-recv-reply
::: tip usage
```
(socks4-recv-reply ...)
```
:::

Please document me!

## Websocket Client

::: tip usage
(import :std/net/websocket)
:::

### open-websocket-client
::: tip usage
```
(open-websocket-client ...)
```
:::

Please document me!

### websocket?
::: tip usage
```
(websocket? ...)
```
:::

Please document me!

### websocket-recv
::: tip usage
```
(websocket-recv ...)
```
:::

Please document me!

### websocket-read
::: tip usage
```
(websocket-read ...)
```
:::

Please document me!

### websocket-send
::: tip usage
```
(websocket-send ...)
```
:::

Please document me!

### websocket-write
::: tip usage
```
(websocket-write ...)
```
:::

Please document me!

### websocket-close
::: tip usage
```
(websocket-close ...)
```
:::

Please document me!

### set-websocket-max-frame-size!
::: tip usage
```
(set-websocket-max-frame-size! ...)
```
:::

Please document me!

### set-websocket-max-message-size!
::: tip usage
```
(set-websocket-max-message-size! ...)
```
:::

Please document me!


## WAMP Client

Web Application Message Protocol client.


::: tip usage
(import :std/net/wamp)
:::

### start-wamp-client!
::: tip usage
```
(start-wamp-client! ...)
```
:::

Please document me!

### wamp-subscribe
::: tip usage
```
(wamp-subscribe ...)
```
:::

Please document me!

### wamp-call
::: tip usage
```
(wamp-call ...)
```
:::

Please document me!

### wamp-register
::: tip usage
```
(wamp-register ...)
```
:::

Please document me!

### wamp-publish
::: tip usage
```
(wamp-publish ...)
```
:::

Please document me!

### wamp-close
::: tip usage
```
(wamp-close ...)
```
:::

Please document me!

### invocation-error
::: tip usage
```
(invocation-error ...)
```
:::

Please document me!

### raise-invocation-error
::: tip usage
```
(raise-invocation-error ...)
```
:::

Please document me!

### wamp-error?
::: tip usage
```
(wamp-error? ...)
```
:::

Please document me!

### !wamp.event
::: tip usage
```
(!wamp.event ...)
```
:::

Please document me!

### !wamp.shutdown
::: tip usage
```
(!wamp.shutdown ...)
```
:::

Please document me!
