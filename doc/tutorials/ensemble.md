# Working with Actor Ensembles

## Ensemble Basics

## The gxensemble Management Tool

## A Working example: httpd with dynamic handler registration

We can make all this concrete with a working example: an httpd server
ensemble, that supports dynamic handler registration.

The source code for the tutorial is available in the gerbil source distribution, in
[src/tutorial/ensemble](https://github.com/vyzo/gerbil/tree/master/src/tutorial/ensemble).

Firt let's look at the server implementation in [src/tutorial/ensemble/server.ss](https://github.com/vyzo/gerbil/tree/master/src/tutorial/ensemble/server.ss):
```scheme
(import :gerbil/gambit/threads
        :std/net/httpd
        :std/io)
(export run!)

(def (run! port)
  (let* ((addr (cons inaddr-any4 port))
         (httpd (start-http-server! addr)))
    (thread-join! httpd)))
```

This is a very thin server, that gets started with the `run!` method
of the module; it takes a port, starts an httpd server and waits for
it to shutdown.  Notice that the server is initialized with the
default mux, and it is initially empty; there are no handlers, so
everything will 404.

We also have a server wrapper for running the server as a service with `gxensemble run`.
This is the code for the wrapper (see [src/tutorial/ensemble/httpd-svc.ss](https://github.com/vyzo/gerbil/tree/master/src/tutorial/ensemble/httpd-svc.ss)):
```scheme
(import ./server)
(export main)

(def (main (port "8080"))
  (run! (string->number port)))
```

With all this, let's start an ensemble with two httpds, named `httpd1` and `httpd2`:
```shell
# generate a cookie for our ensemble, if on does not already exist
$ gxensemble cookie

# start the registry
$ gxensemble registry
...

# start the servers
$ gxensemble run --roles "(httpd)" httpd1 :tutorial/ensemble/httpd-svc 8080
...

$ gxensemble run --roles "(httpd)" httpd2 :tutorial/ensemble/httpd-svc 8081
...
```

Now let's look at our servers:
```shell
$ gxensemble lookup --role httpd
(httpd1 (unix dellicious /tmp/ensemble/httpd1))
(httpd2 (unix dellicious /tmp/ensemble/httpd2))
```

We can also ping them for liveness:
```shell
$ gxensemble ping httpd1
OK
$ gxensemble ping httpd2
OK
```

Now if we do a request at them we will see that there are no handlers:
```shell
$ curl -I http://localhost:8080/
HTTP/1.1 404 Not Found
Date: Tue Aug 15 06:34:30 2023
Content-Length: 0

$ curl -I http://localhost:8081/
HTTP/1.1 404 Not Found
Date: Tue Aug 15 06:34:43 2023
Content-Length: 0
```

At the next step, we can load some code that implements handlers for our httpds;
the code with the handlers lives in [src/tutorial/ensemble/handler.ss](https://github.com/vyzo/gerbil/tree/master/src/tutorial/ensemble/handler.ss):
```scheme
(import :std/net/httpd)
(export #t)

(def greeting
  "hello there!\n")

(def (set-greeting! what)
  (set! greeting what))

(def (write-simple-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
                       greeting))

(def (write-chunked-handler req res)
  (http-response-begin res 200 '(("Content-Type" . "text/plain")))
  (http-response-chunk res "hello ")
  (http-response-chunk res "there!\n")
  (http-response-end res))

(def (root-handler req res)
  (http-response-write res 200 [] "the world is not flat but round!\n"))

(http-register-handler (current-http-server) "/" root-handler)
```

This code registers a root handler, and provides two more handlers
that are not initially registerd anywhere.

Here is how we can load the code:
```shell
# load with -f as there is no need to load any library dependencies
$ gxensemble load -f httpd1 :tutorial/ensemble/handler
... loading code object file /home/vyzo/.gerbil/lib/tutorial/ensemble/handler__0.o3
ca3f193373a296d7bdb9101e7d4b9f1d450676aec6c49f05202a3dbcc5d766e2

$ gxensemble load -f httpd2 :tutorial/ensemble/handler
... loading code object file /home/vyzo/.gerbil/lib/tutorial/ensemble/handler__0.o3
ca3f193373a296d7bdb9101e7d4b9f1d450676aec6c49f05202a3dbcc5d766e2
```

and we can verify that the two servers now have a root handler:
```shell
$ curl http://localhost:8080/
the world is not flat but round!

$ curl http://localhost:8081/
the world is not flat but round!
```

Finally, we can use the repl to install another handler from the module we just loaded:
```shell
$ gxensemble repl httpd1
httpd1> ,(import :tutorial/ensemble/handler)
httpd1> ,(import :std/net/httpd)
httpd1> (set-greeting! "hello, i am httpd1\n")
httpd1> (http-register-handler (current-http-server) "/greeting" write-simple-handler)
httpd1> ,q
$ curl http://localhost:8080/greeting
hello, i am httpd1
```

## Working with static binaries

So far we have demonstrated ensembles with _dynamic_ binaries; in
practice however, you are most likely to run a _static_ binary on your
server. Of course this is not a problem; all you have to do is ru your
server's entry point using `call-with-ensemble-server`; this is what
`gxensemble run` does after all.  The only difference is that you will
have to parse options on your own, probably using getopt.

Note that some care should be taken to ensure necessary symbols are
available in the server and not elimited by the tree shaker from
static compilation.  You can do this with appropriate `(not
optimize-dead-definitions id ...)` declarations. It is recommended
that you turn off the tree shaker entirely by compiling your server
with the `-prelude '(declare (not optimize-dead-definitions))'`
compiler option otherwise it is very much likely that some essential
bindings will be missing, causing your server to crash.

Here is an example static binary running our httpd; the code is at [src/tutorial/ensemble/httpd-exe.ss](https://github.com/vyzo/gerbil/tree/master/src/tutorial/ensemble/httpd-exe.ss):
```scheme
(import :std/actor
        ./server)
(export main)

(def (main server-id (port "8080"))
  (let ((port (string->number port))
        (server-id (string->symbol server-id)))
     (call-with-ensemble-server
      server-id (cut run! port)
      roles: '(httpd))))
```

And here it running and getting managed with `gxensemble`:
```shell
$ httpd-exe httpd3 8082
...

$ gxensemble lookup --role httpd
(httpd1 (unix dellicious /tmp/ensemble/httpd1))
(httpd2 (unix dellicious /tmp/ensemble/httpd2))
(httpd3 (unix dellicious /tmp/ensemble/httpd3))

$ gxensemble repl httpd3
httpd3> ,(load :tutorial/ensemble/handler)
httpd3> ,(import :tutorial/ensemble/handler)
httpd3> (set-greeting! "hello, i am httpd3 and i am a static binary\n")
httpd3> ,(import :std/net/httpd)
httpd3> (http-register-handler (current-http-server) "/greeting" write-simple-handler)
httpd3> ,q

$ curl http://localhost:8082/greeting
hello, i am httpd3 and i am a static binary
```
