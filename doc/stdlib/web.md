# Web related Libraries

::: tip usage
(import :std/web)
:::

Web programming.

### std/web/fastcgi
Fastcgi interface.

```
(import :std/web/fastcgi)

;; exports:

  start-fastcgi-server!
  fastcgi-request?
  fastcgi-request-role
  fastcgi-request-params
  fastcgi-request-stdin
  fastcgi-write-stdout
  fastcgi-write-stderr
  fastcgi-request-end
```

### std/web/rack
Rack-style web servers with fastcgi connections.

```
(import :std/web/rack)

;; exports:

  start-rack-fastcgi-server!
```