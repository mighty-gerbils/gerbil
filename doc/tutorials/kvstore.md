# A Key-Value Store Server

In this tutorial we develop a key-value store daemon that uses LMDB to
store compressed binary objects associated with user keys. The daemon
is part of the actor ensemble and can be used by any program through a
programmatic API or through the command line.

## Preliminaries

This tutorial requires [LMDB](https://en.wikipedia.org/wiki/Lightning_Memory-Mapped_Database).
You need to first install it, and then build the LMDB bindings in stdlib, as they are
not built by default.

So, after installing LMDB, enable and build the LMDB bindings:
```bash
$ cd $GERBIL_HOME/src
$ sed -i 's/lmdb #f/lmdb #t/' std/build-features.ss
$ ./build.sh stdlib
...
```

The source code for the tutorial is available at [$GERBIL\_HOME/src/tutorial/kvstore](https://github.com/vyzo/gerbil/tree/master/src/tutorial/kvstore).
You can now build the kvstore tutorial using the [build script](https://github.com/vyzo/gerbil/tree/master/src/tutorial/kvstore/build.ss) so that you can use the programs:
```bash
$ cd $GERBIL_HOME/src/tutorial/kvstore
$ ./build.ss
... compile proto
... compile server
... compile kvstore-svc
... compile kvstorec
... compile exe kvstorec -> ~/.gerbil/bin/kvstorec
```

## The kvstore protocol

The protocol for communicating with the kvstore server is defined in
[proto.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/proto.ss):
```scheme
(defmessage !get (key))
(defmessage !put (key val))
(defmessage !remove (key))

(defcall-actor (kvstore-put! key val (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!put key val))
  error: "error putting key" key)

(defcall-actor (kvstore-get key (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!get key))
  error: "error retrieving key" key)

(defcall-actor (kvstore-remove! key (server-id 'kvstore))
  (->> (kvstore-handle server-id) (!remove key))
  error: "error removing key" key)

(def (kvstore-put-object! key val (server-id 'kvstore))
  (kvstore-put! key (object->u8vector val) server-id))

(def (kvstore-get-object key (server-id 'kvstore))
  (u8vector->object (kvstore-get key server-id)))

(def (kvstore-handle (server-id 'kvstore))
  (make-handle (current-actor-server)
               (reference server-id 'kvstore)))
```

The module defines 3 messages which are all request messages, to which
the server responds with a result.

The module also defines appropriate procedures for programmatically
interacting with the server.  The `kvstorec` command line program uses
these to implement its functionality.

## The server implementation

The server is implementated in [server.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/server.ss).
Here is the code:
```scheme
(deflogger kvstore)

(def (run env)
  (def db (lmdb-open-db env "kvstore"))

  (def (get key)
    (let (txn (lmdb-txn-begin env))
      (try
       (let* ((bytes (lmdb-get txn db key))
              (val (if bytes
                     (uncompress bytes)
                     #f)))
         (lmdb-txn-commit txn)
         (!ok val))
       (catch (e)
         (lmdb-txn-abort txn)
         (warnf "error getting ~a: ~a" key e)
         (!error (error-message e))))))

  (def (put! key bytes)
    (if (u8vector? bytes)
      (let* ((bytes (compress bytes))
             (txn (lmdb-txn-begin env)))
        (try
         (lmdb-put txn db key bytes)
         (lmdb-txn-commit txn)
         (!ok (u8vector-length bytes))
         (catch (e)
           (lmdb-txn-abort txn)
           (warnf "error putting ~a: ~a" key e)
           (!error (error-message e)))))
      (!error "bad value; expected u8vector")))

  (def (remove! key)
    (let (txn (lmdb-txn-begin env))
      (try
       (lmdb-del txn db key)
       (lmdb-txn-commit txn)
       (!ok (void))
       (catch (e)
         (lmdb-txn-abort txn)
         (warnf "error removing ~a: ~a" key e)
         (raise e)))))

  (register-actor! 'kvstore)
  (let/cc exit
    (while #t
      (<- ((!get key)
           (--> (get key)))

          ((!put key val)
           (--> (put! key val)))

          ((!remove key)
           (--> (remove! key)))

          ,(@ping)
          ,(@shutdown
            (infof "kvstore shutting down")
            (exit 'shutdown))
          ,(@unexpected warnf)))))
```

The server is implemented as an actor, part of the ensemble; see the
[actor](../reference/actor.md) package documentation for details.

The server's entry point is `run`, which runs in a loop processing
protocol messages.  For each protocol message, there is an internal
procedure which handles the request and provides the result. The loop
also supports the standard actor management reaction rules, so that it
can be managed with the `gxensemble` tool.

## The ensemble service
The entry point for the server is invoked by the service front end in
[kvstore-svc.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/kvstore-svc.ss):
```scheme
(def (main (path #f))
  (let* ((path
          (if path
            (path-expand path)
            (path-expand
             (path-expand "kvstore.db"
                          (ensemble-server-path (actor-server-identifier))))))
         (env (lmdb-open path)))
    (thread-join! (spawn/name 'kvstore run env))))
```

The service is normally invoked with `gxensemble run` as we will se below.

## The command-line client

A command line client for interacting with the kvstore server is provided in [kvstorec.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/kvstorec.ss).
Here is the code:
```scheme
(def (main . args)
  (def server-option
    (option 'server #f "--server"
      help: "the kvstore server-id"
      value: string->symbol
      default: 'kvstore))

  (def output-option
    (option 'output "-o" "--output"
      help: "where to output the result; - for stdout, otherwise a file path"
      default: "-"))

  (def input-option
    (option 'input "-i" "--input"
      help: "where to read input from; - for stdin, otherwise a file path"
      default: "-"))

  (def key-argument
    (argument 'key help: "object key"))

  (def get-cmd
    (command 'get
      help: "get data from the store"
      server-option
      output-option
      key-argument))

  (def get-object-cmd
    (command 'get-object
      help: "get a serialized object fromt he store"
      server-option
      output-option
      key-argument))

  (def put-cmd
    (command 'put
      help: "put data to the store"
      server-option
      input-option
      key-argument))

  (def put-object-cmd
    (command 'put-object
      help: "put a serialized object to the store"
      server-option
      input-option
      key-argument))

  (def remove-cmd
    (command 'remove help: "remove a key from the store"
      server-option
      key-argument))

  (def help-cmd
    (command 'help help: "display help"
             (optional-argument 'command value: string->symbol)))

  (def gopt
    (getopt get-cmd
            get-object-cmd
            put-cmd
            put-object-cmd
            remove-cmd
            help-cmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (start-actor-server!)
     (let-hash opt
       (case cmd
         ((get)
          (write-output (kvstore-get .key .server) .output))
         ((get-object)
          (write-object (kvstore-get-object .key .server) .output))
         ((put)
          (kvstore-put! .key (read-input .input) .server))
         ((put-object)
          (kvstore-put-object! .key (read-object .input) .server))
         ((remove)
          (kvstore-remove! .key .server))
         ((help)
          (getopt-display-help-topic gopt .?command "kvstorec")))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "kvstorec" (current-error-port))
     (exit 1))
   (catch (exn)
     (display-exception exn (current-error-port))
     (exit 2))))

(def (write-output val output)
  (when (u8vector? val)
    (if (equal? output "-")
      (write-subu8vector val 0 (u8vector-length val) (current-output-port))
      (call-with-output-file output
        (cut write-subu8vector val 0 (u8vector-length val) <>)))))

(def (write-object val output)
  (if (equal? output "-")
    (write val)
    (call-with-output-file output
      (cut write val <>))))

(def (read-input input)
  (if (equal? input "-")
    (read-all-as-u8vector (current-input-port))
    (read-file-u8vector input)))

(def (read-object input)
  (if (equal? input "-")
    (read)
    (call-with-input-file input read)))
```

The client uses [getopt](../reference/getopt.md) to parse the command line arguments,
and interacts with the kvstore server using the methods defined in [proto.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/proto.ss).

## Example interaction

Here we use `gxensemble` to run our service; see the
[ensemble](ensemble.md) tutorial for more information about working
with actor ensembles.

First let's ensure our ensemble has a cookie and start the actor ensemble:
```
$ gxensemble cookie
$ gxensemble registry
...
```
And then let's run our kvstore server:
```
$ gxensemble run --roles "(kvstore)" kvstore :tutorial/kvstore/kvstore-svc
...
```

At this point we are ready to interact with the server using the `kvstorec` cli tool:
```
# a file to put to the server
$ cat > /tmp/foo.json
{
 "head": "I am a walrus~",
 "body": {
   "value": "and this is my body"
 }
}
$ kvstorec put --input /tmp/foo.json foo.json

# let's retrieve it
$ kvstorec get foo.json
{
 "head": "I am a walrus~",
 "body": {
   "value": "and this is my body"
 }
}

# let's put a serialized object:
$ kvstorec put-object my-alist
((a . 1) (b . 2) (c . 3))
^D

# and let's retrieve it
$ kvstorec get-object my-alist
((a . 1) (b . 2) (c . 3))

# or we can see the binary representation:
$ kvstorec get my-alist | base64
ZGQBYQBRZGQBYgFSZGQBYwFTcg==

```

And that's it! We can now shutdown our ensemble:
```
$ gxensemble shutdown -f
... shutting down kvstore
... shutting down registry
```


## BLAH

**This tutorial is outdated; it will be updated soon!**

In this tutorial we develop a key-value store daemon that uses LMDB to
store compressed json objects associated with user keys. The daemon uses
actor RPC to communicate with its clients.

## Preliminaries

This tutorial requires [LMDB](https://en.wikipedia.org/wiki/Lightning_Memory-Mapped_Database).
You need to first install it, and then build the LMDB bindings in stdlib, as they are
not built by default.

So, after installing LMDB, build the LMDB bindings:
```bash
$ cd $GERBIL_HOME/src
$ sed -i 's/lmdb #f/lmdb #t/' std/build-features.ss
$ ./build_stdlib.sh
...
```

You also need to generate an RPC cookie if you haven't already done so:
```bash
$ if [ ! -e $HOME/.gerbil/cookie ]; then
  gxi -e '(begin (import :std/actor) (rpc-generate-cookie!))'
fi
```

The source code for the tutorial is available at [$GERBIL_HOME/src/tutorial/kvstore](https://github.com/vyzo/gerbil/tree/master/src/tutorial/kvstore).
You can now build the kvstore tutorial so that you can use the programs:
```bash
$ cd $GERBIL_HOME/src/tutorial/kvstore
$ ./build.ss
... compile proto
... compile kvstored
... compile exe kvstored
... compile kvstorec
... compile exe kvstorec

```

This builds two programs in the tutorial directory: `kvstored`, which is the daemon
and `kvstorec`, which is a simple client to perform basic operations with the daemon.
There is also a build rule for static executables, with `build.ss static`, but we used
here dynamic executables as they are much faster to compile.

## The RPC Protocol

The protocol for communicating with the daemon is defined in
[proto.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/proto.ss):
```scheme
;; A protocol for key-value stores
;; (get key)      -- retrieve object associated with key, or #f if not found
;; (ref key)      -- like get, but result is an exception if not found
;; (put! key val) -- put an object for a key to the store
;; (remove! key)  -- remove a key
(defproto kvstore
  (get key)
  (ref key)
  (put! key val)
  (remove! key))

;; bind the protocol for the kvstore actor
(bind-protocol! 'kvstore kvstore::proto)
```

This defines a protocol with four calls, `get`, `ref`, `put!`, and `remove!`.
The `defproto` macro defines structs and macros for utilizing the protocol in your
programs.

The expansion of the protocol definition looks like this:
```scheme
(begin
  (defsyntax kvstore ...)

  (def kvstore::proto
    (make-!protocol
     'tutorial/kvstore/proto#kvstore
     []
     (hash-copy *default-proto-type-registry*)))
  (hash-put!
   (!protocol-types kvstore::proto)
   (!protocol-id kvstore::proto)
   kvstore::proto)

  (defstruct kvstore.get (key) id: tutorial/kvstore/proto#kvstore.get::t)
  (defsyntax-for-match
    !kvstore.get
    (syntax-rules () ((_ pat ... k) (!call (kvstore.get pat ...) k)))
    (syntax-rules () ((_ key k) (make-!call (make-kvstore.get key) k))))
  (defrules
    !!kvstore.get
    ()
    ((_ dest key) (!!call dest (make-kvstore.get key) (gensym 'k)))
    ((_ dest key timeout: timeo)
     (!!call dest (make-kvstore.get key) (gensym 'k) timeout: timeo))
    ((_ dest key k) (!!call dest (make-kvstore.get key) k))
    ((_ dest key k timeout: timeo)
     (!!call dest (make-kvstore.get key) timeout: timeo)))
  (def (xdr-kvstore.get-read port)
    (xdr-vector-like-read (cut make-object kvstore.get::t <>) 1 port))
  (def (xdr-kvstore.get-write obj port)
    (xdr-vector-like-write obj 1 port))
  (def kvstore.get::xdr
    (make-XDR
     kvstore.get?
     xdr-kvstore.get-read
     xdr-kvstore.get-write))
  (hash-put!
   (!protocol-types kvstore::proto)
   'tutorial/kvstore/proto#kvstore.get::t
   kvstore.get::xdr)

  ...)
```

Here we only show the expansion for the `get` method, but the
generated code for the other methods is similar.

So the macro defines a protocol structure, `kvstore::proto` that
contains the necessary information for the external data
representation of the various structures in the protocol.
Then for each method call `x` in the protocol, it defines a structure
for the message `kvstore.x`, a match macro `!kvstore.x` for destructuring
and constructing call messages, and a call macro `!!kvstore.x` for
making synchronous calls.  Then it proceeds to generate code for
marshalling and unmarshalling the messages.

## The Server

The server is defined in [kvstored.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/kvstored.ss).

### The main function

The `main` function is the entry of the program:
```scheme
(def (main . args)
  (def gopt
    (getopt (option 'listen "-l" "--listen"
                    default: "127.0.0.1:9999"
                    help: "rpcd listen address")
            (argument 'path help: "lmdb path")))
  (try
   (let (opt (getopt-parse gopt args))
     (start-logger!)
     (let* ((rpcd (start-rpc-server! (hash-get opt 'listen)
                                     proto: (rpc-cookie-proto)))
            (env (lmdb-open (hash-get opt 'path))))
       (spawn run rpcd env)
       (thread-join! rpcd)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "kvstored" (current-error-port))
     (exit 1))
   (catch (uncaught-exception? exn)
     (display-exception (uncaught-exception-reason exn) (current-error-port)))))
```

The function parses the command line arguments with the `:std/getopt` library, starts
a logger and an rpc server, opens an lmdb environment and spawns the main loop of the
server. It then joins on the rpc server, which should only terminate if the server
failed to start (perhaps because the default port is in use).

### The server main loop

The main loop of the server first registers with the rpc server and then loops
responding to messages using the `<-` reaction macro:
```scheme
(def (run rpcd env)
  (def db (lmdb-open-db env "kvstore"))
  (def nil '#(nil))

  (def (get key)
    ...)

  (def (put! key val)
    ...)

  (def (remove! key)
    ...)

  (rpc-register rpcd 'kvstore)
  (while #t
    (<- ((!kvstore.get key k)
         (try
          (let* ((val (get key))
                 (val
                  (if (eq? val nil)
                    #f
                    val)))
            (!!value val k))
          (catch (e)
            (errorf "kvstore.get ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.ref key k)
         (try
          (let (val (get key))
            (if (eq? val nil)
              (!!error "No object associated with key" k)
              (!!value val k)))
          (catch (e)
            (errorf "kvstore.ref ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.put! key val k)
         (try
          (put! key val)
          (!!value (void) k)
          (catch (e)
            (errorf "kvstore.put! ~a" e)
            (!!error (error-message e) k))))

        ((!kvstore.remove! key k)
         (try
          (remove! key)
          (!!value (void) k)
          (catch (e)
            (errorf "kvstore.remove! ~a" e)
            (!!error (error-message e) k))))

        (what
         (warning "Unexpected message: ~a " what)))))
```

### Auxiliary Functions

The main loop uses 3 auxiliary functions to implement the low level details of interacting
with the key-value store:
```scheme
(def (run rpcd env)
  ...

  (def (get key)
    (let (txn (lmdb-txn-begin env))
      (try
       (let* ((bytes (lmdb-get txn db key))
              (val (if bytes
                     (call-with-input-u8vector (uncompress bytes) read-json)
                     nil)))
         (lmdb-txn-commit txn)
         val)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  (def (put! key val)
    (let* ((bytes (call-with-output-u8vector [] (cut write-json val <>)))
           (bytes (compress bytes))
           (txn (lmdb-txn-begin env)))
      (try
       (lmdb-put txn db key bytes)
       (lmdb-txn-commit txn)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  (def (remove! key)
    (let (txn (lmdb-txn-begin env))
      (try
       (lmdb-del txn db key)
       (lmdb-txn-commit txn)
       (catch (e)
         (lmdb-txn-abort txn)
         (raise e)))))

  ...)
```

## A Command-Line Client

There is a command-line client for our daemon, defined in [kvstorec.ss](https://github.com/vyzo/gerbil/blob/master/src/tutorial/kvstore/kvstorec.ss).

### The main function

The `main` function is the entry of the program:
```scheme
(def (main . args)
  (def getcmd
    (command 'get help: "get the json object associated with key or false if none is"
             (argument 'key help: "object key, a string")))
  (def refcmd
    (command 'ref help: "get the json object associated with key or error"
             (argument 'key help: "object key, a string")))
  (def putcmd
    (command 'put help: "put a json object to store"
             (argument 'key help: "object key, a string")
             (argument 'file help: "json file")))
  (def delcmd
    (command 'remove help: "remove an object from the store"
             (argument 'key help: "object key, a string")))
  (def helpcmd
    (command 'help help: "display usage help"
             (optional-argument 'command value: string->symbol)))

  (def gopt
    (getopt (option 'server "-s" "--server"
                    default: "127.0.0.1:9999"
                    help: "server rpc address")
            getcmd
            refcmd
            putcmd
            delcmd
            helpcmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((get) (kvstore-get opt))
       ((ref) (kvstore-ref opt))
       ((put) (kvstore-put! opt))
       ((remove) (kvstore-remove! opt))
       ((help)
        (getopt-display-help-topic gopt (hash-get opt 'command) "kvstorec"))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "kvstorec" (current-error-port))
     (exit 1))
   (catch (remote-error? exn)
     (displayln (error-message exn))
     (exit 1))))
```

This program works by accepting commands from the user in the command line, using
the `:std/getopt` library. There are four possible commands, for the four possible
calls in the protocol.

### Command Implementation

The implementation of the four commands is very simple: each constructs a remote
handle for the server, using the `kvstore-connect` auxiliary function, and then
proceeds to call the server with RPC:
```scheme
(def (kvstore-connect opt)
  (let (rpcd (start-rpc-server! proto: (rpc-cookie-proto)))
    (rpc-connect rpcd 'kvstore (hash-get opt 'server))))

(def (kvstore-get opt)
  (let* ((remote (kvstore-connect opt))
         (val (!!kvstore.get remote (hash-get opt 'key))))
    (write-json val)
    (newline)))

(def (kvstore-ref opt)
  (let* ((remote (kvstore-connect opt))
         (val (!!kvstore.ref remote (hash-get opt 'key))))
    (write-json val)
    (newline)))

(def (kvstore-put! opt)
  (let* ((val (call-with-input-file (hash-get opt 'file) read-json))
         (remote (kvstore-connect opt)))
    (!!kvstore.put! remote (hash-get opt 'key) val)))

(def (kvstore-remove! opt)
  (let (remote (kvstore-connect opt))
    (!!kvstore.remove! remote (hash-get opt 'key))))
```

## Example Interaction

First let's start the server using `/tmp/kvstore.db` for the database:
```bash
$ ./kvstored /tmp/kvstore.db
```

Then we can interact with the server using the client in another shell.
First, let's put an object in the store:
```bash
$ cat > /tmp/foo.json
{
 "head": "I am a walrus~",
 "body": {
   "value": "and this is my body"
 }
}
$ ./kvstorec put foo /tmp/foo.json
```

We can then retrieve our object:
```bash
$ ./kvstorec get foo
{"body": {"value": "and this is my body"}, "head": "I am a walrus~"}
```

We can then delete our object:
```bash
$ ./kvstorec remove foo
```

If we try to retrieve the object again, we get a `false`:
```bash
$ ./kvstorec get foo
false
```

If we want an error if the object does not exist instead of a default `false`
response, we can use the `ref` command:
```bash
$ ./kvstorec ref foo
remote error: No object associated with key
$ echo $?
1
```
