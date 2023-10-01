# SOCKS Proxy Client and Server

The `:std/net/socks` package provides functionality for using and running SOCKS proxies.

::: To use bindings from this module
```scheme
(import :std/net/socks)
```
:::

## SOCKS Client

You can create a SOCKS client using `socks-proxy`.  The returned
object is an instance of the `SOCKS` interface, which you can use to
connect to another host or bind to accept an incoming connection.

### SOCKS
```scheme
(interface SOCKS
  (protocol)
  (proxy-address)
  (connect (address :~ address?))
  (bind (address :~ (maybe address?) := #f)))
```

This is the SOCKS client interface. The following methods create and
operate on instances of the interface.

### socks-connect
```scheme
(socks-connect proxy-address [protocol = 'SOCKS4]) -> lambda (address) -> StreamSocket
```

Creates a connector function for establishing connextions through the
proxy at `proxy-address`.


### socks-proxy
```scheme
(socks-proxy proxy-address (protocol SOCKS4)) -> SOCKS
  address := inet address
  protocol := symbol; one of SOCKS4, SOCKS4a, SOCKS5.
```

Connect to a SOCKS proxy, using the specified `protocol`.
Returns an instance of the `SOCKS` interface.

### SOCKS-protocol
```scheme
(SOCKS-protocol socks)
  socks := instance of SOCKS
```
Returns the protocol used by a `SOCKS` instance, as a symbol

### SOCKS-proxy-address
```scheme
(SOCKS-protocol socks)
  socks := instance of SOCKS
```

Returns the address of the proxy behind a `SOCKS` instance.

### SOCKS-connect
```scheme
(SOCKS-connect socks address) -> StreamSocket
  socks := instance of SOCKS
  address := inet address
```

Connects to `address` through the proxy behind the `SOCKS` instance.
Returns a `StreamSocket` instance.

### SOCKS-bind
```scheme
(SOCKS-connect socks (maybe-address #f) -> ServerSocket
  socks := instance of SOCKS
  address := inet address or #f
```

Binds a listener in the proxy behind the `SOCKS` instance for accepting an incoming
connection. Returns an instance of `ServerSocket`.

## Example

Here is how to use a SOCKS proxy listening at `your-proxy-server-address` for http connections:
```scheme
(parameterize ((http-connect (socks-connect your-proxy-server-address)))
  (http-get "https://www.google.com"))
```
