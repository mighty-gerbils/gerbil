# The Embedded HTTP Server

The `:std/net/httpd` library provides an embedded HTTP/1.1 server, which you can
use to serve web applications and apis from your program.

See the [tutorial](/tutorials/httpd.md) for a simple example program which uses
the server.

::: tip To use the bindings from this package:
```scheme
(import :std/net/httpd)
```
:::

## Server Interface

### current-http-server
```scheme
(current-http-server [server])
```

Parameter denoting the current http server.

### start-http-server!
```scheme
(start-http-server! [mux: mux = (make-default-http-mux)]
                    [backlog: backlog = 10]
                    [sockopts: sockopts = [SO_REUSEADDR]]
                    address ...) -> <server>

  mux := request multiplexer
  backlog := server socket listen backlog
  sockpts := server socket options.
  address ... := addresses to listen
```

Start a new http server serving in the specified addresses and multiplexing
requests using the specified multiplexer.

### stop-http-server!
```scheme
(stop-http-server! <server>)
```

Stops the http server and all associated threads.


### http-register-handler
```scheme
(http-register-handler httpd path handler [host = #f])

  httpd   := server; the http server
  path    := string; the path to associate with the handler
  handler := procedure; the request handler
  host    := string; the host to associate with the handler
```

Registers a new http request handler, for multiplexers that support dynamic
request handlers.

## Request Multiplexer

The request multiplexer is the object responsible for mapping paths (and hosts)
to request handlers.

It is an arbitrary object with two methods:
```
{get-handler mux host path}
=> <handler> or #f

{put-handler! mux host path handler}
```

`get-handler` retrieves the handler corresponding to a path.
`put-handler!` is invoked in response to `http-register-handler` to
dynamically register a handler for a path.  Custom mux implementations
may define this method as void if they don't support dynamic handler
registration.

### make-default-http-mux
```scheme
(make-default-http-mux [default = #f]) -> <mux>

  default := handler; the default page handler
```

Creates a default request multiplexer, which maps exact paths to
handlers for all hosts. The default handler is returned if no handler
has been registered for the path.

### make-recursive-http-mux
```scheme
(make-recursive-http-mux [default = #f]) -> <mux>

  default := handler; the default page handler
```

Creates a request multiplexer that maps paths and their subpaths to
handlers for all hosts. The default handler is returned if no handler
has been registered for the path or a prefix.

### make-static-http-mux
```scheme
(make-static-http-mux table [default = #f]) -> <mux>

  table   := hash table, mapping paths (strings) to handlers
  default := the default page handler
```

Creates a static request multiplexer initialized from a hash table of handlers.
The multiplexer does not support dynamic handler registration with `put-handler!`.
The advantage over the default mux is that there is no mutex associated with the
handler table, resulting in faster (concurrent) handler lookup.

### make-recursive-static-http-mux
```scheme
(make-recursive-static-http-mux table [default = #f]) -> <mux>

  table   := hash table, mapping paths (strings) to handlers
  default := the default page handler
```

Creates a static request multiplexer initialized from a hash table of handlers.
Like `make-recursive-http-mux`, the multiplexer maps paths and their subpaths to
handlers for all hosts.

### make-custom-http-mux
```scheme
(make-custom-http-mux getf [setf = void]) -> <mux>

  getf := procedure that resolves the handler
  setf := procedure that adds a new handler
```

Creates a request multiplexer that dispatches to user procedures for handler
resolution and registration.

## Request Handler Interface

The request handler is a procedure accepting two arguments, a request
and a response.

### http-request?
```scheme
(http-request? obj) -> boolean
```

Returns true for http request objects.

### http-request-method
```scheme
(http-request-method <request>) -> symbol
```

Returns the request method.

### http-request-url
```scheme
(http-request-url <request>) -> string
```

Returns the request URL.

### http-request-path
```scheme
(http-request-path <request>) -> string
```

Returns the request path.

### http-request-params
```scheme
(http-request-params <request>) -> string or #f
```

Returns the request parameters.

### http-request-proto
```scheme
(http-request-proto <request>) -> string
```

Returns the request protocol.

### http-request-client
```scheme
(http-request-client <request>) -> address
```

Returns the IP address of the request client.

### http-request-headers
```scheme
(http-request-headers <request>) -> alist
```

Returns the request headers, as an associative list of string to string;
the headers are title-cased.

### http-request-body
```scheme
(http-request-body <request>) -> u8vector or #f
```

Reads and returns the request body.

### http-request-timeout-set!
```scheme
(http-request-timeout-set! <request> <timeout>) -> unspecified
```

Sets the request timeout (in seconds).

### http-response?
```scheme
(http-response? obj) -> boolean
```

Returns true for http response objects.

### http-response-write
```scheme
(http-response-write res status headers body) -> unspecified

  res := the http response object
  status := fixnum; the response status code
  headers := alist; the response headers
  body := string, u8vector or #f; the response body
```

Writes a complete response.

### http-response-begin
```scheme
(http-response-begin res status headers) -> unspecified

  res := the http response object
  status := fixnum; the response status code
  headers := alist; the response headers
```

Begins a chunked response.

### http-response-chunk
```scheme
(http-response-chunk res chunk [start = 0] [end = #f]) -> unspecified

  res := the http response object
  chunk := string or u8vector; the response chunk
  start := fixnum; the start index in the chunk
  end := fixnum or #f; the end index in the chunk
```

Writes the next chunk in a chunked response.

### http-response-end
```scheme
(http-response-end <response>) -> unspecified
```

Ends a chunked response.

### http-response-file
```scheme
(http-response-file res headers path) -> unspecified

  res := the http response object
  headers := alist; the response headers
  path := string; the path to the file to serve as the response
```

Writes a file as a response.

### http-response-force-output
```scheme
(http-response-force-output <response>) -> unspecified
```

Flushes the response buffer.

### http-response-timeout-set!
```scheme
(http-response-timeout-set! <response> <timeout>) -> unspecified
```

Sets the response timeout.


## Server Configuration Options

### set-httpd-request-timeout!
```scheme
(set-httpd-request-timeout! <timeout>) -> unspecified
```

Sets the http request timeout; default is 60s.

### set-httpd-response-timeout!
```scheme
(set-httpd-response-timeout! <timeout>) -> unspecified
```

Sets the http response timeout; default is 120s.

### set-httpd-max-request-headers!
```scheme
(set-httpd-max-request-headers! <fixnum>) -> unspecified
```

Sets the maximum number of headers to accept in a request; default is 256.

### set-httpd-max-token-length!
```scheme
(set-httpd-max-token-length! <fixnum>) -> unspecified

```

Sets the maximum header token length; default is 1024

### set-httpd-max-request-body-length!
```
(set-httpd-max-request-body-length! <fixnum>) -> unspecified
```

Sets the maximum request body length; default is 1MB.

### set-httpd-input-buffer-size!
```scheme
(set-httpd-input-buffer-size! <fixnum>) -> unspecified
```

Sets the request input buffer size; default is 4KB.

### set-httpd-output-buffer-size!
```scheme
(set-httpd-output-buffer-size! <fixnum>) -> unspecified
```

Sets the response output buffer size; default is 4KB.
