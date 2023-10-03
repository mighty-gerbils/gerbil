# WebSockets

The `:std/net/websocket` package provides functionality for writing
websocket clients and servers.

::: tip To use bindings from this module
```scheme
(import :std/net/websocket)
```
:::

## WebSocket interface
```scheme
(interface (WebSocket Socket)
  (send (msg :~ valid-message?))
  (recv) ; -> message
  (protocol)
  (max-frame-size))

(defstruct message (data type partial?) final: #t
  constructor: :init!)

(def (valid-message? msg)
  (using (msg : message)
    (if (memq msg.type '(text close))
      (check-argument (string? msg.data) "string" msg.data)
      (check-argument (u8vector? msg.data) "u8vector" msg.data))))

(defmethod {:init! message}
  (lambda (self data type (partial? #f))
    (using (self :- message)
      (set! self.data data)
      (set! self.type type)
      (set! self.partial? partial?))))
```

The `WebSocket` interface provides the abstractions for sending and receiving messages.
Messages are instances of `message`, which encapsulates the data together with its type
and a partial frame indicator.

The following bindings providing the necessary functionality for working with websockets.

## message
```scheme
(defstruct message (data type partial?))
```

Instances of `message` are the unit of IO for websockets. The struct
has the following fields:
- `data` is the payload of the message.
  - If the message type is `'text` or `'close`, then it must be a string
  - Otherwise, it is a u8vector.
- `type` is the type of the message, a symbol. It must be one of
  - `'binary` for a binary message.
  - `'text` for a textual message.
  - `'ping` for a ping message; the programmer should reply with `'pong` message.
  - `'pong` for a pong message, sent as a reply to a previous `'ping`.
  - `'close` for gracefully closing the socket; the program should close the websocket.
- `partial?` is a boolean, with true value indicating that this is a partial message.

## websocket-connect
```scheme
(websocket-connect url
                   protocol:     (proto #f)
                   redirect:     (redirect #f)
                   headers:      (headers #f)
                   cookies:      (cookies #f)
                   params:       (params #f)
                   auth:         (auth #f)
                   ssl-context:  (ssl-context (default-client-ssl-context))
                   timeout:      (timeo #f)
                   max-frame-size: (max-frame-size default-max-frame-size))
-> WebSocket
```

This is the client side of websockets; it connects to the `url` and
returns an instance of `WebSocket`.

The `redirect`, `headers`, `cookies`, `params`, `auth`, `ssl-context`
and `timeout` parameters are passed to the http request when
establishing a connection; see [HTTP requests](request.md) for more
information.

The `protocol` parameter is an optional comma separated list of protocols,
for websocket protocol negotiation.

The `max-frame-size` parameter specifies the maximum accepted size for a
frame; it defaults to 1MB.

## websocket-request-handler
```scheme
(websocket-request-handler continue select-protocol
                           max-frame-size: (max-frame-size default-max-frame-size))
-> WebSocket

   continue := lambda (WebSocket)
   select-protocol := lambda ([string ...]) -> string or #f
```

This is the server side of websockets; it creates a request handler for the http server,
that accepts and upgrades websocket requests.

The procedure requires two arguments:
- `continue` is a procedure that takes a `WebSocket` instance to handle the interaction.
   It is invoked by the http handler after the connection has been successfully upgraded.
- `select-protocol` is a procedure that takes a list of websocket protocols (strings) and
   selects one of them or returns #f if it doesn't support any of client specified protocols.
   Note that if the client does not specify a protocol, the `select-protocol` will _not_ be
   invoked.

The `max-frame-size` parameter specifies the maximum accepted size for a
frame; it defaults to 1MB.

## WebSocket-send
```scheme
(WebSocket-send sock message)
  sock := WebSocket
```

Sends a message, which must not exceed the maximum frame size in binary size.

## WebSocket-send-all
```scheme
(WebSocket-send-all sock message)
  sock := WebSocket
```

Sends a message even if it exceeds the maximum frame size, by
fragmenting it into multiple partial messages.

## WebSocket-recv
```scheme
(WebSocket-recv sock) -> message
  sock := WebSocket
```

Receives the next message, which must not exceed the maximum frame size in binary size.

## WebSocket-recv-all
```scheme
(WebSocket-recv-all sock maximum-message-size) -> message
  sock := WebSocket
```

Receives a stream of partial messages (frames) and assembles them into
a single aggregate message.  If the incoming stream of partial
messages exceeds the `maximum-message-size` in total, an error is
raised.

## WebSocket-protocol
```scheme
(WebSocket-protocol sock) -> maybe string
  sock := WebSocket
```

This is the protocol negotiated for this socket; it can be `#f` if the
client didn't ask for any particular protocol.

## WebSocket-max-frame-size
```scheme
(WebSocket-max-frame-size sock) -> nonnegative-fixnum
  sock := WebSocket
```

The maximum frame size supported by this websocket. The implementation
of `send` will raise an error if the programmer attempts to send a
message (frame) larger than this number. Similarly, the implementation
of `recv` will send an error if a frame header is received with size
larger than this number.
