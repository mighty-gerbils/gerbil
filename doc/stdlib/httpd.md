# The Embedded HTTP Server

The `:std/net/httpd` library provides an embedded HTTP/1.1 server, which you can
use to server web applications and apis from your program.

See the [tutorial](/tutorials/httpd.md) for a simple example program which uses
the server.

## Server Interface

### current-http-server

::: tip usage
```
(current-http-server [server])
```
:::

Parameter denoting the current http server.

### start-http-server!

::: tip usage
```
(start-http-server! [mux: mux = (make-default-http-mux)]
                    [backlog: backlog = 10]
                    [sockopts: sockopts = [SO_REUSEADDR]]
                    address ...)
  mux := request multiplexer
  backlog := server socket listen backlog
  sockpts := server socket options.
  address ... := addresses to listen
=> <server>
```
:::

Start a new http server serving in the specified addresses and multiplexing
requests using the specified multiplexer.

### stop-http-server!

::: tip usage
```
(stop-http-server! <server>)
```
:::

Stops the http server and all associated threads.


### http-register-handler

::: tip usage
```
(http-register-handler httpd path handler [host = #f])
  httpd   := server; the http server
  path    := string; the path to associate with the handler
  handler := procedure; the request handler
  host    := string; the host to associate with the handler
```
:::

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

::: tip usage
```
(make-default-http-mux [default = #f])
  default := handler; the default page handler
=> <mux>
```
:::

Creates a default request multiplexer, which maps exact paths to
handlers for all hosts. The default handler is returned if no handler
has been registered for the path.

### recursive-http-mux

::: tip usage
```
(make-recursive-http-mux [default = #f])
```
:::

Creates a request multiplexer that maps paths and their subpaths to
handlers for all hosts. The default handler is returned if no handler
has been registered for the path or a prefix.

## Request Handler Interface

The request handler is a procedure accepting two arguments, a request
and a response.

### http-request?

::: tip usage
```
(http-request? obj)
=> boolean
```
:::

Returns true for http request objects.

### http-request-method

::: tip usage
```
(http-request-method <request>)
=> symbol
```
:::

Returns the request method.

### http-request-url

::: tip usage
```
(http-request-url <request>)
=> string
```
:::

Returns the request URL.

### http-request-path

::: tip usage
```
(http-request-path <request>)
=> string
```
:::

Returns the request path.

### http-request-params

::: tip usage
```
(http-request-params <request>)
=> string or #f
```
:::

Returns the request parameters.

### http-request-proto

::: tip usage
```
(http-request-proto <request>)
=> string
```
:::

Returns the request protocol.

### http-request-client

::: tip usage
```
(http-request-client <request>)
=> <address>
```
:::

Returns the IP address of the request client.

### http-request-headers

::: tip usage
```
(http-request-headers <request>)
=> alist
```
:::

Returns the request headers, as an associative list of string to string;
the headers are title-cased.

### http-request-body

::: tip usage
```
(http-request-body <request>)
=> u8vector or #f
```
:::

Reads and returns the request body.

### http-request-timeout-set!

::: tip usage
```
(http-request-timeout-set! <request> <timeout>)
```
:::

Sets the request timeout (in seconds).

### http-response?

::: tip usage
```
(http-response? obj)
=> boolean
```
:::

Returns true for http response objects.

### http-response-write

::: tip usage
```
(http-response-write res status headers body)
  res := the http response object
  status := fixnum; the response status code
  headers := alist; the response headers
  body := string, u8vector or #f; the response body
```
:::

Writes a complete response.

### http-response-begin

::: tip usage
```
(http-response-begin res status headers)
  res := the http response object
  status := fixnum; the response status code
  headers := alist; the response headers
```
:::

Begins a chunk response.

### http-response-chunk

::: tip usage
```
(http-response-chunk res chunk [start = 0] [end = #f])
  res := the http response object
  chunk := string or u8vector; the response chunk
  start := fixnum; the start index in the chunk
  end := fixnum or #f; the end index in the chunk
```
:::

Writes the next chunk in a chunked response.

### http-response-end

::: tip usage
```
(http-response-end <response>)
```
:::

Ends a chunked response.

### http-response-file

::: tip usage
```
(http-response-file res headers path)
  res := the http response object
  headers := alist; the response headers
  path := string; the path to the file to serve as the response
```
:::

Writes a file as a response.

### http-response-force-output

::: tip usage
```
(http-response-force-output <response>)
```
:::

Flushes the response buffer.

### http-response-timeout-set!

::: tip usage
```
(http-response-timeout-set! <response> <timeout>)
```
:::

Sets the response timeout.


## Server Configuration Options

### set-httpd-request-timeout!

::: tip usage
```
(set-httpd-request-timeout! <timeout>)
```
:::

Sets the http request timeout; default is 60s.

### set-httpd-response-timeout!

::: tip usage
```
(set-httpd-response-timeout! <timeout>)
```
:::

Sets the http response timeout; default is 120s.

### set-httpd-max-request-headers!

::: tip usage
```
(set-httpd-max-request-headers! <fixnum>)
```
:::

Sets the maximum number of headers to accept in a request; default is 256.

### set-httpd-max-token-length!

::: tip usage
```
(set-httpd-max-token-length! <fixnum>)

```
:::

Sets the maximum header token length; default is 1024

### set-httpd-max-request-body-length!

::: tip usage
```
(set-httpd-max-request-body-length! <fixnum>)
```
:::

Sets the maximum request body length; default is 1MB.

### set-httpd-input-buffer-size!

::: tip usage
```
(set-httpd-input-buffer-size! <fixnum>)
```
:::

Sets the request input buffer size; default is 4KB.

### set-httpd-output-buffer-size!

::: tip usage
```
(set-httpd-output-buffer-size! <fixnum>)
```
:::

Sets the response output buffer size; default is 4KB.
