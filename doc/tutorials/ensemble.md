# Working with Actor Ensembles

## Ensemble Basics

The concept of the ensemble denotes the totality of actors running on
a server substrate, perhaps in the Internet at large, and sharing a
secret _cookie_ that allows them to communicate with each other.

Each server has a _server identifier_, which is a symbol, that
uniquely names the server within the ensemble.  Each ensemble has a
_registry_ server, which plays a role similar to DNS resolvers in the
Internet.  It allows servers to find each other by using the server
identifier, and implicit connect as needed without requiring the
programmer or the operator to explicitly connect to each other.

By default, each server binds and listens to a UNIX domain socket
`/tmp/ensemble/<server-identifier>`. Obviously you can specify
additional addresses, including Internet addresses where the server
should listen. If your ensemble spans multiple hosts, you should
specify the tcp addresses where your servers listen explicitly. If you
plan to expose your servers to the wider Internet, it is strongly
recommended to use TLS.

## The gxensemble Management Tool

Gerbil comes with a powerful tool for managing actor ensembles: `gerbil ensemble`
or just `gxensemble`.

Here are the commands it supports:
```
$ gxensemble help
gxensemble: the Gerbil Actor Ensemble Manager

Usage: gxensemble  <command> command-arg ...

Commands:
 run                              run a server in the ensemble
 registry                         runs the ensemble registry
 load                             loads code in a running server
 eval                             evals code in a running server
 repl                             provides a repl for a running server
 ping                             pings a server or actor in the server
 shutdown                         shuts down an actor, server, or the entire ensemble including the registry
 list-servers                     lists known servers
 list-actors                      list actors registered in a server
 list-connections                 list a server's connection
 lookup                           looks up a server by id or role
 authorize                        authorize capabilities for a server
 retract                          retract all capabilities granted to a server
 cookie                           generate a new ensemble cookie
 admin                            generate a new ensemble administrator key pair
 help                             display help; help <command> for command help
```

### Generating the ensemble cookie

Before starting an ensemble, we must generate a cookie for our servers
to authenticate each other. The cookie is placed in `$GERBIL_PATH/ensemble/cookie`;
if you are running an ensemble spanning multiple hosts, you should copy the cookie
to the relevant hosts.  Note that the tool will not overwrite an existing ensemble
cookie.

Here is the usage:
```
$ gxensemble help cookie
Usage: gxensemble cookie [command-option ...]
       generate a new ensemble cookie

Command Options:
 -f --force                       force the action
 ```

### Generating and administrative key pair

If you want to limit administrative actions only to administrators,
you can generate an administraticve key pair with `gxensemble admin`.
See [Administrative Privileges](#administrative-privileges) below.

Here is the usage:
```
$ gxensemble help admin
Usage: gxensemble admin [command-option ...]
       generate a new ensemble administrator key pair

Command Options:
 -f --force                       force the action
```

### Authorizing capabilities

This is an administrative action, that confers capabilities to an
authorized server within the context of another server.
See [Administrative Privileges](#administrative-privileges) below.

Here is the usage:
```
$ gxensemble help authorize
Usage: gxensemble authorize [command-option ...] <server-id> <authorized-server-id> [<capabilities>]
       authorize capabilities for a server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id
 authorized-server-id             the server to authorize capabilities for
 capabilities                     the server capabilities to authorize [default: (admin)]
```

### Retracting capabilities
This is an administrative action, that retracts capabilities from a
previously authorized server.

Here is the usage:
```
$ gxensemble help retract
Usage: gxensemble retract [command-option ...] <server-id> <authorized-server-id>
       retract all capabilities granted to a server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id
 authorized-server-id             the server to authorize capabilities for
```

### Starting the ensemble

The first order of business when starting an actor ensemble, is to run a registry.
We can do this with the `gxensemble registry` command:
```
$ gxensemble help registry
Usage: gxensemble registry [command-option ...]
       runs the ensemble registry

Command Options:
  --log <logging>                 specifies the log level to run with [default: INFO]
  --log-file <logging-file>       specifies a log file instead of logging to stderr; if it is - then the log will be written into the ensemble server directory log [default: #f]
 -l --listen <listen>             additional addresses to listen to; by default the server listens at unix /tmp/ensemble/<server-id> [default: ()]
 -a --announce <announce>         public addresses to announce to the registry; by default these are the listen addresses [default: #f]
```

### Running an ensemble server

We can do this with the `gxensemble run` command; it takes a module id
as an argument, loads it and executes the `main` entry point with the
arguments passed in the command line.

Here is the usage of the tool:
```
Usage: gxensemble run [command-option ...] <server-id> <module-id> <main-args> ...
       run a server in the ensemble

Command Options:
  --log <logging>                 specifies the log level to run with [default: INFO]
  --log-file <logging-file>       specifies a log file instead of logging to stderr; if it is - then the log will be written into the ensemble server director log [default: #f]
 -l --listen <listen>             additional addresses to listen to; by default the server listens at unix /tmp/ensemble/<server-id> [default: ()]
 -a --announce <announce>         public addresses to announce to the registry; by default these are the listen addresses [default: #f]
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]
  --roles <roles>                 server role(s); a list of symbols [default: ()]

Arguments:
 server-id                        the server id
 module-id                        the module id
 main-args                        arguments for the module's main procedure
```

### Loading code

You can dynamically load code in any ensemble server using the
`gxensemble load` command.  This command will ship the object file
(and it is dependencies, unless forced by the user) to the remote
server and load them.

Here is the usage:
```
Usage: gxensemble load [command-option ...] <server-id> <module-id>
       loads code in a running server

Command Options:
 -f --force                       force the action
  --library                       loads the code as library module; the library must be in the servers load path
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]
  --library-prefix <library-prefix>  list of package prefixes to consider as library modules installed in the server [default: (gerbil scheme std)]

Arguments:
 server-id                        the server id
 module-id                        the module id
```

### Evaluating code

You can evaluate an expression in a server using the `gxensemble eval` command.
Note that the evaluator is the raw gambit evaluator, with no gerbil expansion.

```
$ gxensemble help eval
Usage: gxensemble eval [command-option ...] <server-id> <expr>
       evals code in a running server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id
 expr                             the expression to eval
```

### Getting a repl

The next step up from `eval` is to get a repl on the running server; you can do this with the `gxensemble repl` command.

Note that the repl does _local expansion_ and _remote evaluation_; that means you can use the full gamut of gerbil code

Here is the usage of the command:
```
$ gxensemble help repl
Usage: gxensemble repl [command-option ...] <server-id>
       provides a repl for a running server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]
  --library-prefix <library-prefix>  list of package prefixes to consider as library modules installed in the server [default: (gerbil scheme std)]

Arguments:
 server-id                        the server id
```

The repl suppors a few control commands:
```
Control commands:
  ,(import module-id)    -- import a module locally for expansion
  ,(load module-id)      -- load the code and dependencies for a module
  ,(load -f module-id)   -- forcibly load a module ignoring dependencies
  ,(load -l module-id)   -- load a library module
  ,(defined? id)         -- checks if an identifier is defined at the server
  ,(thread-state)        -- display the thread state for the primordial thread group
  ,(thread-state -g)     -- display the thread state for all thread groups recursively
  ,(thread-state sn)     -- display the thread state for a thread or group identified by its serial number
  ,(thread-backtrace sn) -- display a backtrace for a thread identified by its serial number
  ,(shutdown)            -- shut down the server and exit the repl
  ,q ,quit               -- quit the repl
  ,h ,help               -- display this help message
```

### Ping a server or an actor

You can ping a server or an actor for liveness using the `gxensemble ping` command:
```
$ gxensemble help ping
Usage: gxensemble ping [command-option ...] <server-id> [<actor-id>]
       pings a server or actor in the server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id
 actor-id                         the actor's registered name [default: #f]
```

### General Management Commands

The following commands are useful for general management tasks:
```
$ gxensemble help list-servers
Usage: gxensemble list-servers [command-option ...]
       lists known servers

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

$ gxensemble help list-actors
Usage: gxensemble list-actors [command-option ...] <server-id>
       list actors registered in a server

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id

$ gxensemble help list-connections
Usage: gxensemble list-connections [command-option ...] <server-id>
       list a server's connection

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id

$ gxensemble help lookup
Usage: gxensemble lookup [command-option ...] <server-or-role>
       looks up a server by id or role

Command Options:
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]
  --role                          lookup by role

Arguments:
 server-or-role                   the server or role to lookup

$ gxensemble help shutdown
Usage: gxensemble shutdown [command-option ...] [<server-id>] [<actor-id>]
       shuts down an actor, server, or the entire ensemble including the registry

Command Options:
 -f --force                       force the action
  --registry <registry>           additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry [default: #f]

Arguments:
 server-id                        the server id [default: #f]
 actor-id                         the actor's registered name [default: #f]
```

## A Working example: httpd with dynamic handler registration

We can make all this concrete with a working example: an httpd server
ensemble, that supports dynamic handler registration.

The source code for the tutorial is available in the gerbil source distribution, in
[src/tutorial/ensemble](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble).
You can build it using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble/build.ss).

Firt let's look at the server implementation in [src/tutorial/ensemble/server.ss](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble/server.ss):
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
This is the code for the wrapper (see [src/tutorial/ensemble/httpd-svc.ss](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble/httpd-svc.ss)):
```scheme
(import ./server)
(export main)

(def (main (port "8080"))
  (run! (string->number port)))
```

With all this, let's start an ensemble with two httpds, named `httpd1` and `httpd2`:
```
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
```
$ gxensemble lookup --role httpd
(httpd1 (unix: "dellicious" "/tmp/ensemble/httpd1"))
(httpd2 (unix: "dellicious" "/tmp/ensemble/httpd2"))
```

We can also ping them for liveness:
```
$ gxensemble ping httpd1
OK
$ gxensemble ping httpd2
OK
```

Now if we do a request at them we will see that there are no handlers:
```
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
the code with the handlers lives in [src/tutorial/ensemble/handler.ss](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble/handler.ss):
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
```
# load with -f as there is no need to load any library dependencies
$ gxensemble load -f httpd1 :tutorial/ensemble/handler
... loading code object file /home/vyzo/.gerbil/lib/tutorial/ensemble/handler__0.o3
ca3f193373a296d7bdb9101e7d4b9f1d450676aec6c49f05202a3dbcc5d766e2

$ gxensemble load -f httpd2 :tutorial/ensemble/handler
... loading code object file /home/vyzo/.gerbil/lib/tutorial/ensemble/handler__0.o3
ca3f193373a296d7bdb9101e7d4b9f1d450676aec6c49f05202a3dbcc5d766e2
```

and we can verify that the two servers now have a root handler:
```
$ curl http://localhost:8080/
the world is not flat but round!

$ curl http://localhost:8081/
the world is not flat but round!
```

Finally, we can use the repl to install another handler from the module we just loaded:
```
$ gxensemble repl httpd1
httpd1> ,(import :tutorial/ensemble/handler)
httpd1> ,(import :std/net/httpd)
httpd1> (set-greeting! "hello, i am httpd1\n")
httpd1> (http-register-handler (current-http-server) "/greeting" write-simple-handler)
httpd1> ,q
$ curl http://localhost:8080/greeting
hello, i am httpd1
```

## Working with binary executables

So far we have demonstrated ensembles with _dynamic_ executable modules; in
practice however, you are most likely to ship a binary executable to your
server. Of course this is not a problem; all you have to do is run your
server's entry point using `call-with-ensemble-server`; this is what
`gxensemble run` does after all.  The only difference is that you will
have to parse CLI options on your own, probably using [getopt](../reference/getopt.md).

Note that some care should be taken to ensure necessary bindings are
available in the server and not eliminated by the tree shaker from
full program optimization.  As such, it is _strongly_ recommended that
you do not use full program optimization for executable binaries
compiled for servers; otherwise it is very much likely that some
essential bindings will be missing, causing your server to crash when
trying to load code.

Here is an example binary executable running our httpd; the code is at [src/tutorial/ensemble/httpd-exe.ss](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/ensemble/httpd-exe.ss):
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
```
$ httpd-exe httpd3 8082
...

$ gxensemble lookup --role httpd
(httpd1 (unix: "dellicious" "/tmp/ensemble/httpd1"))
(httpd2 (unix: "dellicious" "/tmp/ensemble/httpd2"))
(httpd3 (unix: "dellicious" "/tmp/ensemble/httpd3"))

$ gxensemble repl httpd3
httpd3> ,(load :tutorial/ensemble/handler)    ; load the code in the remote server
httpd3> ,(import :tutorial/ensemble/handler)  ; import for local expansion
httpd3> (set-greeting! "hello, i am httpd3 and i am a binary executable\n")
httpd3> ,(import :std/net/httpd)              ; import for local expansion
httpd3> (http-register-handler (current-http-server) "/greeting" write-simple-handler)
httpd3> ,q

$ curl http://localhost:8082/greeting
hello, i am httpd3 and i am a binary executable
```

## Shutting down

At this point, we are done with this tutorial, and we can shutdown our ensemble:
```
$ gxensemble shutdown -f
... shutting down httpd1
... shutting down httpd2
... shutting down httpd3
... shutting down registry
```

## Administrative Privileges

You may have noticed that the `gxensemble` tool has some powerful and
potentially destructive capabilities. In general, this is fine for
development or when your ensemble is limited to a single host, but as
your system grows and spans more hosts and involves more people, it
might be prudent to limit administrative capabilities to authorized
administrators.

The actor system in Gerbil allows you to (optionally) use a Ed25519
key pair that limits administrative actions (shutdown, code loading
and evaluation, etc) only to entities that can prove that they have
access to the private key material.

This is integrated with the `gxensemble` tool:
- You can generate an administrative key pair with the `gxensemble
  admin` command. The command will ask for a passphrase to encrypt
  the private key, and will leave the key pair in
  `$GERBIL_PATH/ensemble/admin.{pub,priv}`.
- Subsequently, when attempting a senstive action that requires
  administrative privileges the tool will ask you to enter the
  passphrase in order to unlock and use the private key to elevate
  privileges in the servers involved.

Furthermore, using the administrative key pair, you can confer
capabilities to servers, within the the context of another server.
For example, you can confer the `shutdown` capability to another
server within the context of server.

For example, to allow actors in `my-authorized-server` to shutdown
`my-server`, you can issue the following command with administrative
privileges:
```
$ gxensemble authorize my-server my-authorized-server "(shutdown)"
```

You can retract capabilities from a server with the `retract` command
of the `gxensemble` tool:
```
$ gxensemble retract my-server my-authorized-server
```

::: warning
In order to effectively and securely confer capabilities to other
servers by name, it is strongly recommended that you use TLS.

Otherwise anyone in the ensemble can claim your authorized server's id
and acquire capabilities that are not intended.
:::
