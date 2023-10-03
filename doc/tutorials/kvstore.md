# A Key-Value Store Server

In this tutorial we develop a key-value store daemon that uses LMDB to
store compressed binary objects associated with user keys. The daemon
is part of the actor ensemble and can be used by any program through a
programmatic API or through the command line.

## Preliminaries

This tutorial requires [LMDB](https://en.wikipedia.org/wiki/Lightning_Memory-Mapped_Database).
You need to first install it. This tutorial uses the [gerbil-lmdb](https://github.com/mighty-gerbils/gerbil-lmdb), which will be installed as parts of the deps installation below.


The source code for the tutorial is available at [src/tutorial/kvstore](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/kvstore).
You can build the kvstore tutorial code using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/kvstore/build.ss) so that you can use the programs:

```shell
$ cd gerbil/src/tutorial/kvstore
$ gerbil deps -i
...
$ gerbil build
...
```

## The kvstore protocol

The protocol for communicating with the kvstore server is defined in
[proto.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/kvstore/proto.ss):
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
               (reference server-id 'kvstore))) ; 'kvstore here is the actor id
```

The module defines 3 messages which are all request messages, to which
the server responds with a result.

The module also defines appropriate procedures for programmatically
interacting with the server.  The `kvstorec` command line program uses
these to implement its functionality.

## The server implementation

The server is implemented in [server.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/kvstore/server.ss).
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
[kvstore-svc.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/kvstore/kvstore-svc.ss):
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

A command line client for interacting with the kvstore server is provided in [kvstorec.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/kvstore/kvstorec.ss).
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

  (call-with-getopt kvstorec-main args
    program: "kvstorec"
    help: "A command line client for the key-value store daemon"
    get-cmd
    get-object-cmd
    put-cmd
    put-object-cmd
    remove-cmd
    help-cmd))

(def (kvstorec-main cmd opt)
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
       (kvstore-remove! .key .server)))))

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

The client uses [getopt](/reference/std/getopt.md) to parse the command line arguments,
and interacts with the kvstore server using the methods defined in [proto.ss](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/kvstore/proto.ss).

## Example interaction

Here we use `gxensemble` to run our service; see the
[ensemble](ensemble.md) tutorial for more information about working
with actor ensembles.

First let's ensure our ensemble has a cookie and start the actor ensemble:
```
$ gerbil env gxensemble admin cookie
$ gerbil env gxensemble registry
...
```
And then let's run our kvstore server in another terminal:
```
$ gerbil env gxensemble run --roles "(kvstore)" kvstore :tutorial/kvstore/kvstore-svc
...
```

At this point we are ready to interact with the server using the `kvstorec` cli tool.
First, let's create a file to put to the server:
```
$ cat > /tmp/foo.json
{
 "head": "I am a walrus~",
 "body": {
   "value": "and this is my body"
 }
}
```

And then let's base to the local environment:
```
$ gerbil env bash

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

And that's it! You can continue interacting with the kvstore or just
shutdown your ensemble:
```
$ gxensemble shutdown -f
... shutting down kvstore
... shutting down registry
```
