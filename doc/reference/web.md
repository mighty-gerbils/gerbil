# Web Serving with FastCGI

Gerbil also supports Web programming with the FastCGI interface.
It is highly recommended to use the embedded HTTP server instead,
as it's a lot faster.

## Rack

::: tip To use the bindings from this module:
``` scheme
(import :std/web/rack)
```
:::

### start-rack-fastcgi-server!
``` scheme
(start-rack-fastcgi-server! address handler) -> server | error

  address := string; address and port to listen
  handler := lambda
```
starts rack server listening on *address* and uses *handler* to process requests.

*address* is a listening address and port given as a string, for example "127.0.0.1:8000".

*handler* is a function taking (env data) parameters and returning (values status headers body)
  env is a hash symbol => string (fastcgi params)
  data is stdin supplied data (u8vector)
  return values:
    body is data (string or u8vector) or an iterable that produces
    a stream of data

::: tip Examples
``` scheme
(import :gerbil/gambit
        :std/web/rack
        :std/format
        :std/event
        :std/iter)

(def default-address "127.0.0.1:9000")

(def (run! address)
  (let (server (start-rack-fastcgi-server! address respond))
    (! server
       (let (value (with-catch values (cut thread-join! server)))
         (eprintf "fastcgi-server exited: ~a~n" value)
         (when (exception? value)
           (display-exception value (current-error-port)))))))

(def (respond env data)
  (values 200 '((Content . "text/html")) (print-headers env)))

(def (print-headers env)
  (lambda ()
    (yield "<pre>\n")
    (for ((values key val) env)
      (yield (format "~a: ~a\n" key val)))
    (yield "</pre>\n")))

(def (main . args)
  (match args
    ([address] (run! address))
    (else (run! default-address))))
```
:::

## FastCGI Interface

::: tip To use the bindings from this module:
``` scheme
(import :std/web/fastcgi)
```
:::

### start-fastcgi-server!
``` scheme
(start-fastcgi-server! address respond) -> server | error

  address := string; address and port to listen
  respond := function to handle requests
```

start multi-threaded server listening on *address*. Dispatches requests to *respond* procedure.

### fastcgi-request?
``` scheme
(fastcgi-request? obj) -> boolean

  obj := any object
```

Return #t if *obj* is fastcgi object, #f otherwise.

### fastcgi-request-role
``` scheme
(fastcgi-request-role req) -> fixnum

  req := FastCGI request object
```

Return role from *req*. Role is a positive fixnum starting from 1:
```
FCGI-RESPONDER  1
FCGI-AUTHORIZER 2
FCGI-FILTER     3
```

### fastcgi-request-params
``` scheme
(fastcgi-request-params req) -> list

  req := FastCGI request object
```

Return params list from *req*.

### fastcgi-request-stdin
``` scheme
(fastcgi-request-stdin req) -> port

  req := FastCGI request object
```

Return stdin from *req*.

### fastcgi-write-stdout
``` scheme
(fastcgi-write-stdout req data) -> void | error

  req  := FastCGI request object
  data := string | u8vector
```

Write *data* to *req*'s output port. Signals an error if no port is set in *req*.

### fastcgi-write-stderr
``` scheme
(fastcgi-write-stderr req data) -> void | error

  req  := FastCGI request object
  data := string | u8vector
```

Write *data* to *req*'s error port. Signals an error if no port is set in *req*.

### fastcgi-request-end
``` scheme
(fastcgi-request-end req [app-status = 0] [proto-status = 0]) -> void

  req          := FastCGI request object
  app-status   := fixnum;
  proto-status := fixnum; fcgi protocol status, see below
```

Marks FastCGI request as ended.
The *proto-status* accepted values as as follows:
```
FCGI-REQUEST-COMPLETE 0
FCGI-CANT-MPX-CONN    1
FCGI-OVERLOADED       2
FCGI-UNKNOWN-ROLE     3
```
