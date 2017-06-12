# Proxies: Network Programming in Gerbil

In this tutorial we illustrate network programming facilities in Gerbil, by writing
a couple of network proxies.

The first one is a transparent TCP proxy, written using low level socket programming
with the `:std/os/socket` package. This packages utilizes raw devices and opens sockets
through FFI, thus providing access to the full POSIX socket programming API with a
nonblocking interface.

The second one is a full-blown SOCKS4a proxy, written using the `:std/net/server` package.
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
- [A SOCKS4a Proxy](#a-socks4a-proxy)

<!-- tocstop -->

## Preliminaries

This tutorial requires a very recent version of Gambit that supports raw devices ([gambit#272](https://github.com/gambit/gambit/pull/272) [gambit#273](https://github.com/gambit/gambit/pull/273)).

The source code for the tutorial  is available at [$GERBIL_HOME/src/tutorial/proxy](../../src/tutorial/proxy).
There are two build scripts, `build.ss` for building dynamic executables for local use and `build-static.ss`for building static executables you can deploy on servers.

For the examples we'll build dynamic executables, as they are much faster to compile:
```
$ cd $GERBIL_HOME/src/tutorial/kvstore
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
    (getopt (argument 'local help: "local addres to bind")
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

The funciton `proxy` takes a client socket and proxies it to the remote address.
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



## A SOCKS4a Proxy
