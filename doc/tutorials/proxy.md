# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
three network proxies.

The first program is a transparent TCP proxy, written using low level socket programming
with the [:std/os/socket](../reference/sockets.md) package.
This package utilizes raw devices and opens sockets through FFI, thus
providing access to the full POSIX socket programming API with a
nonblocking interface.

The second program is another version of the TCP proxy, but this time
written utilizing the [Standard IO](../reference/stdio.md) API, which
results in half the code.

The last program is an anonymous SOCKS4 proxy, written again using the
[Standard IO](../reference/stdio.md) API.

## Preliminaries

The source code for the tutorial is available at [src/tutorial/proxy](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/proxy).
You can build the programs using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/proxy/build.ss).

## A Transparent TCP Proxy

The [transparent proxy](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/proxy/tcp-proxy.ss) listens to a local port and
proxies all incoming connections to a specified remote server.

### The main function

The main function of the proxy simply parses the arguments to the program using the
[getopt](../reference/getopt.md) library, and dispatches to `run` which is the server main loop:
```scheme
(def (main . args)
  (def gopt
    (getopt (argument 'local help: "local address to bind")
            (argument 'remote help: "remote address to proxy to")))
  (try
   (let (opt (getopt-parse gopt args))
     (start-logger!)
     (run (hash-get opt 'local) (hash-get opt 'remote)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "tcp-proxy" (current-error-port))
     (exit 1))))
```

### The server main loop

The main loop of the server creates a listening socket and accepts incoming connections.
For each connection, it logs it and spawns a thread to proxy it:
```scheme
(def (run local remote)
  (let* ((laddr (socket-address local))
         (raddr (socket-address remote))
         (caddr (make-socket-address (socket-address-family laddr)))
         (sock (server-socket (socket-address-family laddr) SOCK_STREAM)))
    (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
    (socket-bind sock laddr)
    (socket-listen sock 10)
    (while #t
      (wait (fd-io-in sock))
      (try
       (let (cli (socket-accept sock caddr))
         (when cli
           (debugf "Accepted connection from ~a" (socket-address->string caddr))
           (spawn proxy cli raddr)))
       (catch (e)
         (errorf "Error accepting connection ~a" e))))))
```

### Connection proxying

The procedure `proxy` takes a client socket and proxies it to the remote address.
First it opens and connects a socket to the remote server, and then spawns two
threads piping data between the two ends. The programming should look familiar to
anyone with experience with network programming with the socket API in nonblocking
mode.

```scheme
(def (proxy clisock raddr)
  (try
   (let* ((srvsock (socket (socket-address-family raddr) SOCK_STREAM))
          (rcon (socket-connect srvsock raddr)))
     (unless rcon
       (wait (fd-io-out srvsock)))
     (let (r (or rcon (socket-getsockopt srvsock SOL_SOCKET SO_ERROR)))
       (unless (fxzero? r)
         (error (format "Connection error: ~a" (strerror r))))
       (spawn proxy-io clisock srvsock)
       (spawn proxy-io srvsock clisock)))
   (catch (e)
     (errorf "Error creating proxy ~a" e))))

(def (proxy-io! isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (socket-recv isock buf))
       (cond
        ((not rd)
         (wait (fd-io-in isock))
         (lp))
        ((fxzero? rd)
         (close-input-port isock)
         (socket-shutdown osock SHUT_WR))
        (else
         (let (end rd)
           (let lp2 ((start 0))
             (if (fx< start end)
               (let (wr (try (socket-send osock buf start end)
                             (catch (e)
                               (socket-shutdown isock SHUT_RD)
                               (raise e))))
                 (cond
                  ((not wr)
                   (wait (fd-io-out osock))
                   (lp2 start))
                  (else
                   (lp2 (fx+ start wr)))))
               (lp))))))))
   (catch (e)
     (errorf "Error proxying connection ~a" e)
     (close-input-port isock)
     (close-output-port osock))))
```

### Using the proxy

Here we'll run the proxy locally bound at port 9999, and will proxy to Google's http servers.

So we can run our proxy like this:
```bash
$ ./tcp-proxy :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```bash
$ telnet localhost 9999
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0


HTTP/1.0 200 OK
Date: Tue, 22 Aug 2023 05:19:05 GMT
Expires: -1
Cache-Control: private, max-age=0
Content-Type: text/html; charset=ISO-8859-1
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-SiBEn1lNsKLYtAwu9g5xYQ' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
Server: gws
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
Set-Cookie: AEC=Ad49MVFClvYBG3WnanM4Frt7z3XhfKDNgfjthd8BlXXN090KVh_bJO2jqD0; expires=Sun, 18-Feb-2024 05:19:05 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
Accept-Ranges: none
Vary: Accept-Encoding

<!doctype html>
...

```

## Transparent TCP Proxy with stdio

This is the [second take](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/proxy/tcp-proxy2.ss) on the transparent proxy, this time written
using the [Standard IO](../reference/stdio.md) API.

You'll notice that it is half the code and you don't have to do any
nonblocking IO gymnastics; the stdio API takes care of all these
details for you.
The `main` function is exactly the same.

### The server main loop

Things are simpler, as we use `tcp-listen` and the `ServerSocket` interface:
```scheme
(def (run local remote)
  (let* ((laddr (resolve-address local))
         (raddr (resolve-address remote))
         (sock (tcp-listen laddr)))
    (while #t
      (try
       (let (cli (ServerSocket-accept sock))
         (when cli
           (debugf "Accepted connection from ~a" (StreamSocket-peer-address cli))
           (spawn proxy cli raddr)))
       (catch (e)
         (errorf "Error accepting connection: ~a" e))))))
```

### Connection Proxying

And here is where `stdio` shines, compared to low-level socket programming.

We use the `Reader`/`Writer` interfaces and the `io-copy!` `stdio` utility function:
```scheme
(def (proxy client raddr)
  (try
   (let (remote (tcp-connect raddr))
     (spawn proxy-io! (StreamSocket-reader client) (StreamSocket-writer remote))
     (spawn proxy-io! (StreamSocket-reader remote) (StreamSocket-writer client)))
   (catch (e)
     (errorf "Error proxying connection: ~a" e)
     (StreamSocket-close client))))

(def (proxy-io! reader writer)
  (io-copy! reader writer)
  (Writer-close writer)
  (Reader-close reader))

```

### Using the proxy

Just like the previous instance, here is a small demonstration:
```bash
$ ./tcp-proxy2 :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```bash
$ telnet localhost 9999
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0

HTTP/1.0 200 OK
Date: Tue, 22 Aug 2023 05:20:45 GMT
Expires: -1
Cache-Control: private, max-age=0
Content-Type: text/html; charset=ISO-8859-1
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-pLIP-68XhmkAkMC5VybIPA' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
Server: gws
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
Set-Cookie: AEC=Ad49MVEyITlvZjgOTvpWt5ii-fp45w0f-DHqEjzauLmao9f_5RuuOlpfaJk; expires=Sun, 18-Feb-2024 05:20:45 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
Accept-Ranges: none
Vary: Accept-Encoding

<!doctype html>
...

```


## A SOCKS4 Proxy

The [socks proxy](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/proxy/socks-proxy.ss) listens to a local port and
proxies connections using the SOCKS4 protocol.

### The main function

The function is very similar to the one in tcp-proxy, with the difference that it accepts
a single argument -- the local address to bind:

```scheme
(def (main . args)
  (def gopt
    (getopt (argument 'address help: "local address to bind")))
  (try
   (let (opt (getopt-parse gopt args))
     (start-logger!)
     (run (hash-get opt 'address)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "tcp-proxy" (current-error-port))
     (exit 1))))
```

### The server main loop

The server main loop creates a listening socket to the specified
address and then loops accepting connections to proxy:
```scheme
(def (run address)
  (let* ((address (resolve-address address))
         (sock (tcp-listen address)))
    (while #t
      (try
       (let (cli (ServerSocket-accept sock))
         (debugf "Accepted connection from ~a" (StreamSocket-peer-address cli))
         (spawn proxy cli))
       (catch (e)
         (errorf "Error accepting connection ~a" e))))))
```

### The proxy function

This procedure performs a handshake, establishing proxying according to the request:
```scheme
(def (proxy clisock)
  (try
   (let (srvsock (proxy-handshake clisock))
     (spawn proxy-io! (StreamSocket-reader clisock) (StreamSocket-writer srvsock))
     (spawn proxy-io! (StreamSocket-reader srvsock) (StreamSocket-writer clisock)))
   (catch (e)
     (errorf "Error creating proxy: ~a" e))))
```

The `proxy-handshake` function contains the details of the protocol implementation,
ignoring supplied userids (it's an anonymous proxy):
```scheme
(def (proxy-handshake clisock)
  (try
   (let* ((hdr (make-u8vector 128))
          (rd (StreamSocket-recv clisock hdr)))
     (if (fx< rd 9)                  ; header + NUL userid terminator
       (error "Incomplete request" hdr)
       (let* ((vn (u8vector-ref hdr 0))
              (cd (u8vector-ref hdr 1))
              (dstport (fxior (fxshift (u8vector-ref hdr 2) 8)
                              (u8vector-ref hdr 3)))
              (dstip (subu8vector hdr 4 8)))
         (if (fx= vn 4)
           (case cd
             ((1)                       ; CONNECT
              (proxy-connect clisock (cons dstip dstport)))
             ((2)                       ; BIND
              (proxy-bind clisock))
             (else
              (proxy-handshake-reject clisock (cons dstip dstport))
              (error "Uknown command" cd)))
           (begin
             (proxy-handshake-reject clisock (cons dstip dstport))
             (error "Uknown protocol version" vn))))))
   (catch (e)
     (StreamSocket-close clisock)
     (raise e))))
```

### Connection establishment and binding

New connections are established with `proxy-connect`, while socket binding
is performed with `proxy-bind`:
```scheme
(def (proxy-connect clisock addr)
  (let (srvsock (tcp-connect addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (StreamSocket-close srvsock)
       (raise e)))))

(def (proxy-bind clisock)
  (let* ((srvsock (tcp-listen (cons inaddr-any4 0)))
         (srvaddr (ServerSocket-address srvsock)))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (ServerSocket-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (StreamSocket-peer-address newcli)))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (StreamSocket-close newcli)
          (raise e))))
     (finally
      (ServerSocket-close srvsock)))))

(def (proxy-handshake-accept clisock addr)
  (proxy-handshake-reply 90 clisock addr))

(def (proxy-handshake-reject clisock addr)
  (proxy-handshake-reply 91 clisock addr))

(def (proxy-handshake-reply code clisock addr)
  (let (resp (make-u8vector 8))
    (u8vector-set! resp 0 0)
    (u8vector-set! resp 1 code)
    (with ([ip . port] addr)
      (u8vector-set! resp 2 (fxand (fxshift port -8) #xff))
      (u8vector-set! resp 3 (fxand port #xff))
      (subu8vector-move! ip 0 4 resp 4))
    (StreamSocket-send clisock resp)))

```

### Proxy I/O

The actual proxy functionality is perfomed by the `proxy-io!`
procedure, which is identical to the code in `tcp-proxy2`:

```scheme
(def (proxy-io! reader writer)
  (io-copy! reader writer)
  (Writer-close writer)
  (Reader-close reader))
```

### Using the proxy

Here we'll run the proxy locally bound at port 1080, acting as a standard proxy.

We can run it like this:
```bash
$ ./socks-proxy :1080
```

And in another shell we can proxy an HTTP request using curl:
```bash
$ curl --socks4 127.0.0.1 http://www.google.com
<!doctype html>
...
```
