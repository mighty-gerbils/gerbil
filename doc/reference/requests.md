# HTTP requests

The `:std/net/request` library provides an HTTP client interface.

::: tip usage
(import :std/net/request)
:::

The main HTTP client interface uses `request` structure to return results of
HTTP requests. See API documentation for details on making requests.

::: tip usage
```
(defstruct request (port url history status status-text headers body encoding)
  id: std/net#request::t
  constructor: :init!)
```
The `request` object containing the results of HTTP request. The `port` holds
the port number used by the request.
- `url` ::
- `history` ::
- `status` :: Numeric Status of code for the request.
- `status-text` ::
- `headers` :: headers set on request. Default headers set by Gerbil are:
  User-Agent: Mozilla/5.0 (compatible; gerbil/1.0)
  Connection: close
  Accept: */*
  Accept-Encoding: gzip, deflate, identity
- `body` ::

- `encoding` ::

NOTE: in order to make HTTPS connections the Gambit scheme Gerbil is using must
be configured with `--enable-openssl` flag.


## Request API

### http-get
::: tip usage
```
(http-get url (redirect: #t) (headers: #f) (cookies: #f) (params: #f))
  url := a string to tell which URL the HTTP client should connect to
  redirect := boolean flag to tell if client should follow HTTP redirects
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
=><request>
```
:::

Procedure executes HTTP GET request to given `url` and returns an `request` object as
result. Request object can be further queried about the HTTP request results.

The procedure takes optional parameters to specialize the request:
The `redirect` parameter can be used to tell the client if it should follow
HTTP redirect calls or not. The `headers` can be used to set extra HTTP headers
for the request. The default headers set by Gerbil are:
```
Host: url host
Content-Length: binary body length if body is string/bytes
Transfer-Encoding: chunk if body is input-port
```

The `cookies` parameter takes an association list of cookie name and value pairs and sets
those on the HTTP request. The `params` parameter takes association list of
key/value pairs to add as HTTP query params to the request.

### http-head
::: tip usage
```
(http-head url (redirect: #t) (headers: #f) (cookies: #f) (params: #f))
```
:::

Please document me!

### http-post
::: tip usage
```
(http-post ...)
```
:::

Please document me!

### http-put
::: tip usage
```
(http-put ...)
```
:::

Please document me!

### http-delete
::: tip usage
```
(http-delete ...)
```
:::

Please document me!

### http-options
::: tip usage
```
(http-options ...)
```
:::

Please document me!


## Request Objects

### request?
::: tip usage
```
(request? ...)
```
:::

Please document me!

### request-url
::: tip usage
```
(request-url ...)
```
:::

Please document me!

### request-status
::: tip usage
```
(request-status ...)
```
:::

Please document me!

### request-status-text
::: tip usage
```
(request-status-text ...)
```
:::

Please document me!

### request-headers
::: tip usage
```
(request-headers ...)
```
:::

Please document me!

### request-encoding
::: tip usage
```
(request-encoding ...)
```
:::

Please document me!

### request-encoding-set!
::: tip usage
```
(request-encoding-set! ...)
```
:::

Please document me!

### request-content
::: tip usage
```
(request-content ...)
```
:::

Please document me!

### request-text
::: tip usage
```
(request-text ...)
```
:::

Please document me!

### request-json
::: tip usage
```
(request-json ...)
```
:::

Please document me!

### request-cookies
::: tip usage
```
(request-cookies ...)
```
:::

Please document me!

### request-close
::: tip usage
```
(request-close ...)
```
:::

Please document me!

### request-port
::: tip usage
```
(request-port ...)
```
:::

Please document me!
