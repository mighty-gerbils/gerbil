# HTTP requests

The `:std/net/request` library provides an HTTP client interface.

::: tip usage
(import :std/net/request)
:::

The main HTTP client interface uses `request` structure to return results of
HTTP requests. See API documentation for details on making requests.

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
=> <request>
```
:::

The `http-get` procedure executes HTTP GET request to given `url` and returns an `request` object as
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
  url := a string to tell which URL the HTTP client should connect to
  redirect := boolean flag to tell if client should follow HTTP redirects
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
=> <request>
```
:::

Like `http-get` procedure but instead executes HTTP HEAD method to given `url`.

### http-post
::: tip usage
```
(http-post url (headers #f) (cookies #f) (params #f) (data #f))
  url := a string to tell which URL the HTTP client should connect to
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
  data := request data given as octet vector or string
=> <request>
```
:::

Like the `http-get` procedure but instead executes HTTP POST method on given
`url`.

### http-put
::: tip usage
```
(http-put url (headers #f) (cookies #f) (params #f) (data #f))
  url := a string to tell which URL the HTTP client should connect to
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
  data := request data given as octet vector or string
=> <request>
```
:::

Like the `http-post` procedure but instead executes HTTP PUT method on `url`.

### http-delete
::: tip usage
```
(http-delete url (headers #f) (cookies #f) (params #f))
  url := a string to tell which URL the HTTP client should connect to
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
=> <request>
```
:::

Like `http-get` procedure but instead executes HTTP DELETE method on `url`.

### http-options
::: tip usage
```
(http-options url (headers #f) (cookies #f) (params #f))
  url := a string to tell which URL the HTTP client should connect to
  headers := alist of extra HTTP headers to set in request
  cookies := alist of cookie name/value pairs to set in request
  params := alist of query param name/value pairs set in request
=> <request>
```
:::

Like `http-get` procedure but instead executes HTTP OPTIONS method on the `url`.


## Request Objects

### request?
::: tip usage
```
(request? x)
=> boolean
```
:::

The predicate procedure `request?` returns #t if given parameter `x` is a
`request` object.

### request-url
::: tip usage
```
(request-url req)
=> string
```
:::

The `request-url` procedure returns the URL as a string from `request` object.

### request-status
::: tip usage
```
(request-status req)
=> int
```
:::

The `request-status` returns the HTTP status code as integer from the `request`
object given as procedure parameter.

### request-status-text
::: tip usage
```
(request-status-text req)
=> string
```
:::

Procedure returns the HTTP status text if any from given `request` object.

### request-headers
::: tip usage
```
(request-headers req)
=> <alist>
```
:::

Procedure returns association list of header name/value pairs from given
`request` parameter.

### request-encoding
::: tip usage
```
(request-encoding req)
=> <encoding>|#f
```
:::

Procedure returns the encoding from given `request` parameter. If no encoding is
set the procedure will return #f.

### request-encoding-set!
::: tip usage
```
(request-encoding-set! req enc)
=> <undefined>
```
:::

Procedure sets the request `req` encoding to `enc`.

### request-content
::: tip usage
```
(request-content req)
```
:::



### request-text
::: tip usage
```
(request-text req)
=> string
```
:::

Procedure returns the contents of request `req` as a string.

### request-json
::: tip usage
```
(request-json req)
=>
```
:::

Procedure returns the request contents of `req` as a JSON object. Causes error
if request contents isn't valid JSON data.

### request-cookies
::: tip usage
```
(request-cookies req)
=> list
```
:::

Procedure returns the cookies set in given request object. Cookies are given as
list of strings.

### request-close
::: tip usage
```
(request-close req)
=> <undefined>
```
:::

Procedure closes the input/output port of given request object.

### request-port
::: tip usage
```
(request-port req)
=><input/output port>|#f
```
:::

Procedure returns the input/output port to be used to access the request
data. If requests port is already closed this will return #f.
