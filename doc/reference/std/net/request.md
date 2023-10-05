# HTTP requests
The `:std/net/request` library provides an HTTP client interface.

::: tip To use the bindings from this module:
``` scheme
(import :std/net/request)
```
:::

The main HTTP client interface uses a `request` structure to return results of
HTTP requests. See API documentation for details on making requests.

NOTE: In order to make HTTPS connections the underlying Gambit Scheme
implementation Gerbil is using  must be configured with `--enable-openssl` flag.

## Request API

### Common Options for all HTTP request methods

The following options are common for all HTTP request metods:
```
(http-method url arg ...
             redirect:     (redirect #f)
             headers:      (headers #f)
             cookies:      (cookies #f)
             params:       (params #f)
             data:         (data #f)
             auth:         (auth #f)
             ssl-context:  (ssl-context (default-client-ssl-context))
             timeout:      (timeo #f))
```

where `http-method` can be `http-get`, `http-head`, `http-post`,
`http-put`, `http-delete`, or `http-any`.

The `url` argument is a string to tell which URL the HTTP client should connect to.

The meaning of the keyword parameters is as follows:
```
  redirect     := boolean telling if client should follow HTTP redirects
  headers      := alist of extra HTTP headers to set in request
  cookies      := alist of cookie name/value pairs to set in request
  data         := request data given as a u8vector or string
  params       := alist of query param name/value pairs set in request
  auth         := a list with a keyword head, like [basic: user password]
  ssl-context  := the SSL context for HTTPS requests; the default uses
                  verification using the system's PKI certifcates.
  timeout      := an absolute or relative timeout for initial connection
                  establishment
```

### http-get

``` scheme
(http-get url ...)
```

The `http-get` procedure executes HTTP GET request to given *url* and returns an
HTTP `request` object as result. Request object can be further queried about the
HTTP request results. Procedure signals an error if *url* is not valid HTTP URL.

The procedure takes optional parameters to specialize the request:
The `redirect` parameter can be used to tell the client if it should follow
HTTP redirect calls or not. The `headers` can be used to set extra HTTP headers
for the request. The default headers set by Gerbil are:
```
Host: url host
Content-Length: binary body length if body is string/bytes
Transfer-Encoding: chunk if body is input-port
Accept: */*
Accept-Encoding: "gzip, deflate, identity" if zlib is enabled, "identity" otherwise
Connection: close
User-Agent: Mozilla/5.0 (compatible; gerbil/1.0)
```

The `cookies` parameter takes an association list of cookie name and value pairs and sets
those on the HTTP request. The `params` parameter takes association list of
key/value pairs to add as HTTP query params to the request.

::: tip Examples
``` scheme
> (http-get "https://cons.io/")
#<request #11>
> (request-status #11)
200

> (http-get "http://cons.io/" redirect: #f)
#<request #13>
> (request-status #13)
301

> (http-get "https://secure.example.com" headers: '(("Authorization" . "Basic QWxhZGRpbjpPcGVuU2VzYW1l")))
```
:::


### http-head

``` scheme
(http-head url ...)
```

Like the `http-get` procedure but instead executes HTTP HEAD method on given
`url`.

### http-post
``` scheme
(http-post url ...)
```

Like the `http-get` procedure but instead executes HTTP POST method on given
`url`.

### http-put
``` scheme
(http-put url ...)
```

Like the `http-post` procedure but instead executes HTTP PUT method on `url`.

### http-delete
``` scheme
(http-delete url ...)
```

Like `http-get` procedure but instead executes HTTP DELETE method on `url`.

### http-options
``` scheme
(http-options url ...)
```

Like `http-get` procedure but instead executes HTTP OPTIONS method on the `url`.

### http-any
``` scheme
(http-any method url ...)

  method  := a symbol to define which HTTP method to use, like 'GET or 'PATCH
```

Like the other http procedures but allows you to specify your own HTTP method.

## Request Objects

### request?
``` scheme
(request? req) -> boolean
  req := any object
```
Returns #t if *req* is an HTTP request object, #f otherwise.

### request-url
``` scheme
(request-url req) -> string
  req := an HTTP request object
```
Returns the URL as a string from given *req* object.

### request-status
``` scheme
(request-status req) -> int
  req := an HTTP request object
```

Returns the HTTP status code as integer value from given *req* object.

### request-status-text
``` scheme
(request-status-text req) -> string
  req := an HTTP request object
```

Returns the HTTP status as a text from given *req* object.

### request-headers
``` scheme
(request-headers req) -> alist
  req := an HTTP request object
```

Returns an association list of header name/value pairs from given *req* object.

### request-encoding
``` scheme
(request-encoding req) -> encoding | #f
  req := an HTTP request object
```

Returns the encoding from given *req* parameter as an string. If
no encoding is set the procedure will return #f.

### request-encoding-set!
``` scheme
(request-encoding-set! req enc) -> void
  req := an HTTP request object
  enc := symbol naming used encoding or #f
```

Sets the HTTP request object *req*'s encoding to value of *enc*. If set to #f,
no conversion is done when accessing requests contents.

NOTE: the value of *enc* is not validated at all so any bogus value is accepted
which will cause code to break later on.

### request-content
``` scheme
(request-content req) -> u8vector
  req := an HTTP request object
```

Returns the contents of HTTP request from given HTTP request
object *req* as an unsigned byte vector.

### request-text
``` scheme
(request-text req) -> string
  req := an HTTP request object
```

Returns the contents of given HTTP request object *req* as an string.

### request-json
``` scheme
(request-json req) -> json | error
  req := an HTTP request object
```

Returns the request contents of *req* as an JSON object. Signals an error
if request contents isn't valid JSON data.

::: tip Examples
``` scheme
> (import :std/net/request)
> (import :std/text/json)
> (http-get "https://jsonplaceholder.typicode.com/todos/1")
#<request #8>
> (json-object->string (request-json #8))
"{\"completed\":false,\"userId\":1,\"title\":\"delectus aut autem\",\"id\":1}"
```

``` scheme
> (import :std/net/request)
> (import :std/text/json)
> (request-json (http-get "https://www.google.com/"))
*** ERROR IN (console)@10.1 -- read-json: [io-error] Invalid JSON token
--- irritants: #<input-port #11 (string)> <
1>
```
:::

### request-cookies
``` scheme
(request-cookies req) -> list
  req := an HTTP request object
```

Returns the HTTP cookies set in given *req* HTTP request
object. Cookies are given as an list of strings.

### request-close
``` scheme
(request-close req) -> void | #f
  req := an HTTP request object
```

Closes the input/output port of given *req* object. If the port has
already been closed the procedure returns #f.

### request-port
``` scheme
(request-port req) -> port | #f
  req := an HTTP request object
```

Returns the Input/Output port to be used to access the request
data in *req*. If requests port is already closed, the procedure will return #f.
