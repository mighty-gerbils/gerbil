# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
a couple of network proxies.

The first one is a transparent TCP proxy, written using low level socket programming
with the `:std/os/socket` package. This package utilizes raw devices and opens sockets
through FFI, thus providing access to the full POSIX socket programming API with a
nonblocking interface.

The second one is an anonymous SOCKS4 proxy, written using the `:std/net/socket` package.
This package provides high level network programming facilities for synchronous socket
I/O, and can transparently use a custom socket server for scheduling I/O with native
host primitives like `epoll` on Linux.

## Preliminaries

This tutorial requires a very recent version of Gambit that supports raw devices ([gambit#272](https://github.com/gambit/gambit/pull/272)).

The source code for the tutorial is available at [$GERBIL_HOME/src/tutorial/proxy](https://github.com/vyzo/gerbil/tree/master/src/tutorial/proxy).
The build script, `build.ss`, will by default build dynamic executables for local use; there
is also a rule `build.ss static` to build static executables you can deploy on servers.

For the examples we'll build dynamic executables, as they are much faster to compile:
```bash
$ cd $GERBIL_HOME/src/tutorial/proxy
$ ./build.ss
... compile tcp-proxy
... compile exe tcp-proxy
... compile socks-proxy
... compile exe socks-proxy
```

This builds two programs in the tutorial directory: `tcp-proxy` and `socks-proxy`, which are
the two proxy executables.

## A Transparent TCP Proxy

The [transparent proxy](https://github.com/vyzo/gerbil/blob/master/src/tutorial/proxy/tcp-proxy.ss) listens to a local port and
proxies all incoming connections to a specified remote server.

### The main function

The main function of the proxy simply parses the arguments to the program using the
`:std/getopt` library, and dispatches to `run` which is the server main loop:
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
           (debug "Accepted connection from ~a" (socket-address->string caddr))
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

(def (proxy-io isock osock)
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

HTTP/1.0 302 Found
Cache-Control: private
Content-Type: text/html; charset=UTF-8
Referrer-Policy: no-referrer
Location: http://www.google.gr/?gfe_rd=cr&ei=k3g-WZjaN6jd8Ae224eQDA
Content-Length: 258
Date: Mon, 12 Jun 2017 11:18:43 GMT

<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>302 Moved</TITLE></HEAD><BODY>
<H1>302 Moved</H1>
The document has moved
<A HREF="http://www.google.gr/?gfe_rd=cr&amp;ei=k3g-WZjaN6jd8Ae224eQDA">here</A>.
</BODY></HTML>
Connection closed by foreign host.

```

## A SOCKS4 Proxy

The [socks proxy](https://github.com/vyzo/gerbil/blob/master/src/tutorial/proxy/socks-proxy.ss) listens to a local port and
proxies connections using the SOCKS4 protocol. The implementation uses synchronous I/O
with the `:std/net/socket` package, which hides the nonblocking nature of the `:std/os/socket`
interface and can utilize custom I/O schedulers with a socket server (e.g. epoll on Linux).

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
  (let* ((sa (socket-address address))
         (ssock (ssocket-listen sa)))
    (while #t
      (try
       (let (cli (ssocket-accept ssock sa))
         (debug "Accepted connection from ~a" (socket-address->string sa))
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
     (spawn proxy-io clisock srvsock)
     (spawn proxy-io srvsock clisock))
   (catch (e)
     (errorf "Error creating proxy ~a" e))))
```

The `proxy-handshake` function contains the details of the protocol implementation,
ignoring supplied userids (it's an anonymous proxy):
```scheme
(def (proxy-handshake clisock)
  (try
   (let* ((hdr (make-u8vector 1024))
          (rd (ssocket-recv clisock hdr)))
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
              (error "Unknown command" cd)))
           (begin
             (proxy-handshake-reject clisock (cons dstip dstport))
             (error "Unknown protocol version" vn))))))
   (catch (e)
     (ssocket-close clisock)
     (raise e))))
```

### Connection establishment and binding

New connections are established with `proxy-connect`, while socket binding
is performed with `proxy-bind`:
```scheme
(def (proxy-connect clisock addr)
  (let (srvsock (ssocket-connect addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (ssocket-close srvsock)
       (raise e)))))

(def (proxy-bind clisock)
  (let* ((srvsock (ssocket-listen ":0"))
         (srvaddr (socket-address->address
                   (socket-getsockname
                    (ssocket-socket srvsock)
                    (make-socket-address-in)))))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (ssocket-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (socket-address->address
              (socket-getpeername
               (ssocket-socket newcli)
               (make-socket-address-in)))))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (ssocket-close newcli)
          (raise e))))
     (finally
      (ssocket-close srvsock)))))

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
    (ssocket-send-all clisock resp)))
```

### Proxy I/O

The actual proxy functionality is perfomed by the `proxy-io` procedure, very similar
to the homonymous procedure in tcp-proxy. The difference is that it uses multiplexed I/O
through the socket server:
```scheme
(def (proxy-io isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (ssocket-recv isock buf))
       (cond
        ((fxzero? rd)
         (ssocket-close-input isock)
         (ssocket-close-output osock #t))
        (else
         (ssocket-send-all osock buf 0 rd)
         (lp)))))
   (catch (e)
     (errorf "Error proxying connection ~a" e)
     (ssocket-close-input isock)
     (ssocket-close-output osock #t))))
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
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>302 Moved</TITLE></HEAD><BODY>
<H1>302 Moved</H1>
The document has moved
<A HREF="http://www.google.gr/?gfe_rd=cr&amp;ei=lcg-WbSbDqrd8Af5rJuQBA">here</A>.
</BODY></HTML>
```
