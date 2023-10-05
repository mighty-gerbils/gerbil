# SSL/TLS Sockets

The `:std/net/ssl` package provides functionality for working with SSL/TLS sockets.

::: tip To use bindings from this module
```scheme
(import :std/net/ssl)
```
:::

## TLS
```
(interface TLS
  (peer-certificate))
```

## SSLSocket
```
(interface (SSLSocket StreamSocket TLS))
```

## default-client-ssl-context
```
(default-client-ssl-context)
```

Returns the default SSL client context, which uses the system's PKI certificates.

This context is appropriate for making http requests.

## insecure-client-ssl-context
```
(insecure-client-ssl-context)
```

Returns a client SSL context that performs no validation.

This context is suitable for debugging and connecting to legacy
systems with broken SSL and systems with expired or self-signed
certificates.

## make-client-ssl-context
```
(make-client-ssl-context (min-protocol-version TLS1_2_VERSION))
```

Creates a client SSL context for some minimum supported TLS version.

## make-server-ssl-context
```
(make-server-ssl-context cert-path key-path (min-protocol-version TLS1_2_VERSION))
```

Creates a server SSL context:
- `cert-path` is the path to the PEM encoded certificate.
- `key-path` is the path to the PEM encoded private key.

Contexts created with this procedure are suitable for servers, for
example the [embedded httpd daemon](httpd.md).

## ssl-connect
```
(ssl-connect addr (timeo #f)
             context: (context (default-client-ssl-context))
             host: (host #f)
  addr := inet-address
-> StreamSocket
```

Connects to `address` using `context` for the SSL context.

The optional `host` parameter can be used to specify the expected
hostname for verification; useful if the address is an IP address.  If
it is not supplied, it defaults to he car of the address.

## ssl-client-upgrade
```
(ssl-client-upgrade sock (timeo #f)
                    context: (context (default-client-ssl-context))
                    host: host)
 sock := StreamSocket
-> StreamSocket
```

Upgrades a client-side `StreamSocket`
(see the [Standard IO Interfaces](/reference/std/stdio.md)
for details of this interface) to use SSL;
this is the programmatic equivalent of `STARTTLS`.

## ssl-listen
```
(ssl-listen addr
            context: context
            backlog: (backlog default-server-backlog)
            sockopts: (sockopts default-server-sockopts))
-> StreamSocket
```

Listens for incoming TLS connections in `addr`

## ssl-server-upgrade
```
(ssl-server-upgrade stream-socket ssl-context)
  stream-socket := StreamSocket
-> StreamSocket
```

Upgrades a server-side `StreamSocket` (see the [Standard IO
Interfaces](/reference/std/stdio.md) for details of this interface) to
use SSL; this is the programmatic equivalent of responding of `STARTTLS`.


## ssl-error?
```
(ssl-error? obj)
```

Predicate checking whther an error condition is an SSL error.
