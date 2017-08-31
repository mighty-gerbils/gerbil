# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
a couple of network proxies.

The first one is a transparent TCP proxy, written using low level socket programming
with the `:std/os/socket` package. This packages utilizes raw devices and opens sockets
through FFI, thus providing access to the full POSIX socket programming API with a
nonblocking interface.

The second one is an anonymous SOCKS4 proxy, written using the `:std/net/server` package.
This package provides high level network programming facilities using multiplexed
i/o optimized for the operating system of the host. On linux this utilizes `epoll`
and soon `kqueue` on BSD/MacOS, with a fallback implementation of polling using
Gambit's `##wait-for-io!`.

<!-- toc -->

- [Preliminaries](#preliminaries)
- [A Transparent TCP Proxy](#a-transparent-tcp-proxy)
  * [The main function](#the-main-function)
  * [The server main loop](#the-server-main-loop)
  * [Connection proxying](#connection-proxying)
  * [Using the proxy](#using-the-proxy)
- [A SOCKS4 Proxy](#a-socks4-proxy)
  * [The main function](#the-main-function-1)
  * [The server main loop](#the-server-main-loop-1)
  * [The proxy function](#the-proxy-function)
  * [Connection establishment and binding](#connection-establishment-and-binding)
  * [Proxy I/O](#proxy-io)
  * [Using the proxy](#using-the-proxy-1)

<!-- tocstop -->

## Preliminaries

This tutorial requires a very recent version of Gambit that supports raw devices ([gambit#272](https://github.com/gambit/gambit/pull/272)).

The source code for the tutorial  is available at [$GERBIL_HOME/src/tutorial/proxy](../../src/tutorial/proxy).
The build script, `build.ss`, by default will build dynamkic executables for local use; there
also is a rule `build.ss static` to build static executables you can deploy on servers.

For the examples we'll build dynamic executables, as they are much faster to compile:
```
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

The [transparent proxy](../../src/tutorial/proxy/tcp-proxy.ss) listens to a local port and
proxies all incoming connections to a specified remote server.

### The main function

The main function of the proxy simply parses the arguments to the program using the
`:std/getopt` library, and dispatches to `run` which is the server main loop:
```
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
```
(def (run local remote)
  (let* ((laddr (socket-address local))
         (raddr (socket-address remote))
         (caddr (make-socket-address (socket-address-family laddr)))
         (sock (server-socket (socket-address-family laddr) SOCK_STREAM)))
    (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
    (socket-bind sock laddr)
    (socket-listen sock 10)
    (while #t
      (sync (fd-io-in sock))
      (try
       (let (cli (socket-accept sock caddr))
         (when cli
           (debug "Accepted connection from ~a" (socket-address->string caddr))
           (spawn proxy cli raddr)))
       (catch (e)
         (log-error "Error accepting connection" e))))))
```

### Connection proxying

The procedure `proxy` takes a client socket and proxies it to the remote address.
First it opens and connects a socket to the remote server, and then spanws two
threads piping data between the two ends. The programming should look familiar to
anyone with experience with network programming with the socket API in nonblocking
mode.

```
(def (proxy clisock raddr)
  (try
   (let* ((srvsock (socket (socket-address-family raddr) SOCK_STREAM))
          (rcon (socket-connect srvsock raddr)))
     (unless rcon
       (sync (fd-io-out srvsock)))
     (let (r (or rcon (socket-getsockopt srvsock SOL_SOCKET SO_ERROR)))
       (unless (fxzero? r)
         (error (format "Connection error: ~a" (strerror r))))
       (spawn proxy-io clisock srvsock)
       (spawn proxy-io srvsock clisock)))
   (catch (e)
     (log-error "Error creating proxy" e))))

(def (proxy-io isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (socket-recv isock buf))
       (cond
        ((not rd)
         (sync (fd-io-in isock))
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
                   (sync (fd-io-out osock))
                   (lp2 start))
                  (else
                   (lp2 (fx+ start wr)))))
               (lp))))))))
   (catch (e)
     (log-error "Error proxying connection" e)
     (close-input-port isock)
     (close-output-port osock))))
```

### Using the proxy

Here we'll run the proxy locally bound at port 9999, and will proxy to google's http servers.

So we can run our proxy like this:
```
$ ./tcp-proxy :9999 www.google.com:80
```

And in another shell we can proxy a connection through telnet:
```
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

The [socks proxy](../../src/tutorial/proxy/socks-proxy.ss) listens to a local port and
proxies connections using the SOCKS4 protocol. The implementation uses multiplexed I/O
with the `:std/net/server` package, which hides the nonblocking nature of the `:std/os/socket`
interface and utilizes high performance polling with low level host primitives like epoll.

### The main function

The function is very similar to the one in tcp-proxy, with the difference that it accepts
a single argument -- the local address to bind:

```
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

The server main loop starts a `socket-server` to use for multiplexing I/O, and creates
a listening socket to the specified address. It then loops accepting connections to proxy:
```
(def (run address)
  (def srv (start-socket-server!))

  (let* ((sa (socket-address address))
         (ssock (server-listen srv sa)))
    (while #t
      (try
       (let (cli (server-accept ssock sa))
         (debug "Accepted connection from ~a" (socket-address->string sa))
         (spawn proxy srv cli))
       (catch (e)
         (log-error "Error accepting connection" e))))))
```

### The proxy function

This procedure performs a handshake, establishes proxying according to the request:
```
(def (proxy srv clisock)
  (try
   (let (srvsock (proxy-handshake srv clisock))
     (spawn proxy-io clisock srvsock)
     (spawn proxy-io srvsock clisock))
   (catch (e)
     (log-error "Error creating proxy" e))))
```

The `proxy-handshake` function contains the details of the protocol implementation,
ignoring supplied userids (it's anonymous proxy):
```
(def (proxy-handshake srv clisock)
  (try
   (let* ((hdr (make-u8vector 1024))
          (rd (server-recv clisock hdr)))
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
              (proxy-connect srv clisock (cons dstip dstport)))
             ((2)                       ; BIND
              (proxy-bind srv clisock))
             (else
              (proxy-handshake-reject clisock (cons dstip dstport))
              (error "Uknown command" cd)))
           (begin
             (proxy-handshake-reject clisock (cons dstip dstport))
             (error "Uknown protocol version" vn))))))
   (catch (e)
     (server-close clisock)
     (raise e))))
```

### Connection establishment and binding

New connections are established with `proxy-connect`, while socket binding
is preformed with `proxy-bind`:
```
(def (proxy-connect srv clisock addr)
  (let (srvsock (server-connect srv addr))
    (try
     (proxy-handshake-accept clisock addr)
     srvsock
     (catch (e)
       (server-close srvsock)
       (raise e)))))

(def (proxy-bind srv clisock)
  (let* ((srvsock (server-listen srv ":0"))
         (srvaddr (socket-address->address
                   (socket-getsockname
                    (server-socket-e srvsock)
                    (make-socket-address-in)))))
    (try
     (proxy-handshake-accept clisock srvaddr)
     (let* ((newcli
             (try
              (server-accept srvsock)
              (catch (e)
                (proxy-handshake-reject clisock srvaddr)
                (raise e))))
            (newcliaddr
             (socket-address->address
              (socket-getpeername
               (server-socket-e newcli)
               (make-socket-address-in)))))
       (try
        (proxy-handshake-accept clisock newcliaddr)
        newcli
        (catch (e)
          (server-close newcli)
          (raise e))))
     (finally
      (server-close srvsock)))))

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
    (server-send-all clisock resp)))

```

### Proxy I/O

The actual function of the proxy is perfomed with the `proxy-io` procedure, very similar
to how the equinamed procedure in tcp-proxy. The difference is that it uses multiplexed I/O
through the socket server:
```
(def (proxy-io isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (server-recv isock buf))
       (cond
        ((fxzero? rd)
         (server-close-input isock)
         (server-close-output osock #t))
        (else
         (server-send-all osock buf 0 rd)
         (lp)))))
   (catch (e)
     (log-error "Error proxying connection" e)
     (server-close-input isock)
     (server-close-output osock #t))))
```

### Using the proxy

Here we'll run the proxy locally bound at port 1080, acting as a standard proxy.

So we can run our proxy like this:
```
$ ./socks-proxy :1080
```

And in another shell we can proxy an HTTP request using curl:
```
$ curl --socks4 127.0.0.1 http://www.google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>302 Moved</TITLE></HEAD><BODY>
<H1>302 Moved</H1>
The document has moved
<A HREF="http://www.google.gr/?gfe_rd=cr&amp;ei=lcg-WbSbDqrd8Af5rJuQBA">here</A>.
</BODY></HTML>
```
