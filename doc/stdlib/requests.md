# HTTP requests

The `:std/net/request` library provides an HTTP client interface.

::: tip usage
(import :std/net/request)
:::

```
(import :std/net/request)

;; exports:

  http-get http-head http-post http-put http-delete http-options
  request? request-url request-status request-status-text
  request-headers
  request-encoding request-encoding-set!
  request-content
  request-text
  request-json
  request-cookies
  request-close
  request-port
```
