# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
three network proxies.

The first program is a transparent TCP proxy, written using low level socket programming
with the [:std/os/socket](/reference/std/os/socket.md) package.
This package utilizes raw devices and opens sockets through FFI, thus
providing access to the full POSIX socket programming API with a
nonblocking interface.

The second program is another version of the TCP proxy, but this time
written utilizing the [Standard IO](/reference/std/stdio.md) API, which
results in half the code.

The third program is the final installment of the TCP proxy, but this time
rewriting the second version to take advantage of the all powerful `using`
macro from the [:std/contract](/reference/std/contract.md) module.

## Preliminaries

The source code for the tutorial is available at [src/tutorial/proxy](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/proxy).
You can build the programs using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/proxy/build.ss):
```
$ gerbil build
...
```

## A Transparent TCP Proxy

The first variant of the [transparent proxy](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/proxy/tcp-proxy1.ss) listens to a local port and
proxies all incoming connections to a specified remote server.

### The main function

First the main main function of the proxy, which is common for all three variants.

It simply parses the arguments to the program using the [getopt](../reference/getopt.md) library,
and dispatches to `run` which is the server main loop:
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
$ gerbil env tcp-proxy1 :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```bash
$ telnet localhost 9999
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0

HTTP/1.0 200 OK
Date: Tue, 03 Oct 2023 10:27:05 GMT
Expires: -1
Cache-Control: private, max-age=0
Content-Type: text/html; charset=ISO-8859-1
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-15SbgtoA8U4oGsuAcsan8g' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
Server: gws
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
Set-Cookie: AEC=Ackid1TXyczmwCE9JEtw2DH3RhK1oKJI8jtL4ukVxGNcVEoJ1PniUA2M-XE; expires=Sun, 31-Mar-2024 10:27:05 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
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
$ gerbil env tcp-proxy2 :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```bash
$ telnet localhost 9999
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0

HTTP/1.0 200 OK
...

```

## Transparent TCP Proxy with stdio and the using macro

This is the [third and final installment](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/proxy/tcp-proxy2.ss) on the transparent proxy, this time written
using stdio and the all powerful `using` macro from [:std/contract](/reference/std/contract.md).

This allows you to attach annotations and contracts on variables and
use the dotted notation for making interface calls within the body,
thus eliminating the boilerplate from using stdio.  You'll notice that
the code is half as wide, and I can tell you that I did not have to
twist my finger and my wrists did not have to suffer.

### The server main loop

Here, we notice the `using` declarations and the dots:
```scheme
(def (run local remote)
  (let ((laddr (resolve-address local))
        (raddr (resolve-address remote)))
    (using (sock (tcp-listen laddr) : ServerSocket)
    (while #t
      (try
       (using (cli (sock.accept) : StreamSocket)
         (debugf "Accepted connection from ~a" (cli.peer-address))
         (spawn proxy cli raddr))
       (catch (e)
         (errorf "Error accepting connection: ~a" e)))))))
```

### Connection Proxying

No more `ComicallyLongName-to-do-an-interface-call` here:
```scheme
(def (proxy client raddr)
  (using (client :- StreamSocket)
    (try
     (using (remote (tcp-connect raddr) : StreamSocket)
       (spawn proxy-io! (client.reader) (remote.writer))
       (spawn proxy-io! (remote.reader) (client.writer)))
     (catch (e)
       (errorf "Error proxying connection: ~a" e)
       (client.close)))))
```

### Using the proxy

Just like the previous instance, here is a small demonstration:
```bash
$ gerbil env tcp-proxy3 :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```bash
$ telnet localhost 9999
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0

HTTP/1.0 200 OK
...

```
