# An Introduction to Gerbil
This is a quick introductory guide to Gerbil for seasoned schemers;
it assumes familiarity with scheme and exposure to a couple of
different implementations.

In the following `$` is the shell prompt and `>` the gxi
interpreter prompt.

## Hello world
Add `$GERBIL_HOME/bin` to your path and invoke the interpreter
for the obligatory "hello world":
```
export PATH=$PATH:$GERBIL_HOME/bin
$ gxi
> (displayln "hello world")
hello world
```

The "hello world" script:
```
$ cat > hello.ss <<EOF
#!/usr/bin/env gxi-script

(def (main . args)
  (displayln "hello world"))
EOF
$ chmod +x hello.ss
$./hello.ss
hello world
```

## Core Gerbil
### Primitive forms
The standard Scheme primitive forms and macros are all supported.

Runtime bindings are defined with the short forms `def` and `defvalues`:
```
(def (say-hello who)
  (displayln "hello " who))

(defvalues (a b)
  (values 1 2))
```
For those who prefer the classic long forms, `define` and `define-values`
are also available as in standard Scheme.

Procedures are defined with `lambda` and can have optional and keyword
formal argumets:
```
(def (a-simple-function a b)
  (+ a b))
> (a-simple-function 1 2)
=> 3

(def (an-opt-lambda a (b 1))
  (+ a b))
> (an-opt-lambda 1)
=> 2

(def (a-keyword-lambda a b: (b 1))
  (+ a b))
> (a-keyword-lambda 1)
=> 2
> (a-keyword-lambda 1 b: 2)
=> 3
```

Multiple arity lambdas can be declared with case-lambda:
```
(def my-case-lambda
  (case-lambda
    ((a b) (+ a b))
    ((a) (+ a 1))))

; or the short definition form
(def* my-case-lambda
  ((a b) (+ a b))
  ((a) (+ a 1)))
```

Let bindings can have a short form for single arguments,
as well as multiple value bindings mixed in:
```
> ((let (x 1) (lambda (y) (+ x 1))) 1)
=> 2
> (let ((values a b) (values 1 2)) (+ a b))
=> 3
> (let ((x 1)
        ((values y z) (values 2 3)))
    (+ x y z))
=> 6
```

Note that the `_` identifier is reserved for bindings to
mean the null binding; that is the expression value
is ignored and no lexical binding is generated:
```
(def (a-function x . _) ; accepts 1 or more ignored args 
 (+ x 1))
> (a-function 1 2)
=> 2
```

Apart from cons and list, pairs and lists can also be can be
constructed with short-hand syntax using square brackets:
```
; cons a pair
> [1 . 2]
=> (1 . 2)
; cons a list
> [1 2 3]
=> (1 2 3)
```

The short-hand syntax also supoorts list splicing using
using the ellipsis `...`:
```
; splice nested list
> [1 2 [3 4 5] ... 6]
=> (1 2 3 4 5 6)
```

All the usual Scheme macros are available, with common
syntactic forms described later in the guide.

### Structs and Classes

### Pattern Matching

### Macros

### Modules and Libraries

## Standard Library

The gerbil standard library is located at `src/std`; it includes
several common libraries (SRFIs, and usual scheme libraries like
`:std/pregexp`, `:std/sort`, and `:std/format`), along with
Gerbil-specific libraries.
Here we provide examples and brief documentation for the more
interesting of the Gerbil-specific libraries.

### `try/catch/finally` sugar

The `:std/sugar` library provides, among other macros, a `try` syntactic
form for handling exceptions in imperative style.
For example:
```
> (try (error "my error")
   (catch (e) (display-exception e (current-error-port)))
   (finally (displayln "finally!")))
my error
finally!
```

The general syntax is
```
(try body ....
 [catch-clause] ...
 [finally-clause]

catch-clause:
 (catch pred => K)
 (catch (pred var) body ...)
 (catch (var) body ...)
 (catch _ body ...)
finally-clause:
 (finally body ...)
```

### Coroutines

The `:std/coroutine` library provides support for coroutines, running
in a separate thread and yielding results with `yield`. The user creates
the coroutine with `coroutine`, and receives results with `continue` which
blocks the current thread and passes control to the coroutine until
it yields a value or exits. After the coroutine procedure finishes,
all further calls to `continue` will return the final result (or
deliver an exception) with `thread-join!`.

For example:
```
(import :std/coroutine)
(def (my-coroutine)
  (yield 1)
  (yield 2)
  (yield 3))
(def cort (coroutine my-coroutine))
> (continue cort)
=> 1
> (continue cort)
=> 2
> (continue cort)
=> 3
> (contiune cort)
=> #!void ; coroutine ended
> (continue cort)
=> #!void ; all 
```

### Event programming

The `:std/event` library provides procedures and macros for event-driven
programming in the style of PLT-Scheme. There are two main procedures
for multi-event synchronization: the low level `select` and the high
level `sync`.

#### select
`select` works with selectors. A selector is
- a mutex which becomes ready when the current thread acquires it.
- a locked mutex-condvar-pair which atomically unlocks the mutex and waits for the condition variable. It becomes ready when the condition variable is signalled.
- A naked i/o condvar which is waited for i/o becomes ready when the runtime signals that it.
- A thread which becomes ready when the thread completes.
- An input port, which signals when a single read operation at the level of the port will not block; it becomes ready either when the buffer fills or when the port i/o condition is signalled.
- A timeout, which is a real for a relative timeoute or a time object for an absolute timeout.

The signature of select is
```
(def (select timeout [selector ...])
  ...)
```

When invoked with a timeout and a list of selectors, `select` returns
when one of the selectors is ready. For example:
```
(import :std/event)
(import :gerbil/gambit/threads)
(def my-thread (spawn (lambda () (thread-sleep! 10))))
> (select 1 [my-thread])
=> 1 ; after a second elapses
> (select #f [my-thread])
=> my-thread ; after the thread completes its sleep
```

#### sync
`sync` works with events. An event is
- a low-level selector
- `never-evt`  which is never ready, and `always-evt` which is always ready
- An event object, constructured with `make-event` or `wrap-evt`
- An event set object, constructred with `choice-evt`
- An event handler, constructed with `handle-evt`; it is an event tied with a continuation function which is tail invoked with the value of the event. Multiple continuations can be chained with `handle-evt` each receiving the values of the previous, starting with the value of the vent.

`sync` accepts an arbitrary of events as arguments, and returns when exactly one of them is
ready. The value of sync is the value of the event: by default, timeouts has a value of #f
and other events have usually the selector as value.
For example:
```
(def my-thread (spawn (lambda () (thread-sleep! 10))))
> (sync 1 my-thread)
=> 1 ; after a second elapses
> (sync my-thread)
=> my-thread ; after the thread completes its sleep

```

A more complicated example which utilizes handle-evt for loops:
```
(def my-thread (spawn (lambda () (thread-sleep! 10) 'done)))
> (let lp ((n 0))
    (sync (handle-evt 1
            (lambda (_) (displayln "timeout " n) (lp (fx1+ n))))
          (handle-evt my-thread
            (lambda (thr) (thread-join! thr)))))
timeout 0
timeout 1
timeout 2
timeout 3
timeout 4
timeout 5
=> 'done
```

#### macros

The library also offers a comple of macros, `!` and `!!` which simplify
event driven programming. `!` syncs a single event while `!!` syncs
multiple events.
For instance, using `!!` the loop from the previous example can
be rewritten as
```
(let lp ((n 0))
  (!! (1 (displayln "timeout " n) (lp (fx1+ n)))
      ((thread my-thread)
       (thread-join! thread))))
```

The two macros are defined with `defrules` in `src/std/event.ss` with
easy to follow definitions.

### Actors

At the low-level Gerbil builds on Gambit's thread mailboxes, and blends
them with events to provide actor-oriented programming capabilits and
remote inter-actor communication.

#### Messages

Gerbil's actors are threads, either in the current or a remote processes
and communicate exchanging messages. Messages can be arbitrary objects,
but usually actors communicate with structured messages:
```
(defstruct message (e source dest options))
(def (send dest value) ...)                       ; send raw message
(def (send-message dest value (options #f)) ...)  ; send structured message
(def (send-message/timeout dest value timeo) ...) 

```
Actors process messages and events with two main macros, `<<` and `<-`.
They both synchronized on multiple events and pattern match incoming messages;
the difference is that `<<` matches on raw messages and `<-` matches on
structured message values.
Within a `<-` pattern body, the variables `@message`, `@value`, `@source`,
`@dest` and `@options` are bound from the structured message.
Within the pattern body, the `->` can be used as shorthand syntax to send messages
to `@source`.

For example, a simple echo actor:
```
(import :std/actor)
(def (my-echo)
 (let lp ()
   (<- (value
        (displayln @source " says " value)
        (-> value)
        (lp)))))
(def echo (spawn my-echo))
> (send-message echo 'hello)
#<thread #1 primordial> says hello
> (<- (value value))
=> 'hello
``

#### Protocols

Beyond structured messages, Gerbil provides protocols for structured interaction.
Protocol messages can be one way messages (instances of `!event`), a remote
call (instances of `!call`) or a value for a previous call (`!value` or `!error).

Protocols are defined with `defproto`, which defines structures and macros
for using the protocol interfaces, together with marshalling support.
For example, let's define an echo protocol:
```
(defproto echo
  id: echo
  call: (hello what))
(def (my-echo)
  (let lp ()
    (<- ((!echo.hello what k)
          (displayln @source " says " what)
          (!!value @source what k)
          (lp)))))
(def echo (spawn my-echo))
> (!!echo.hello echo 'hello)
#<thread #1 primordial> says hello
=> 'hello

```

In the example, we define a protocol `echo` with a single call `hello`.
The macro defines the structures and macros for using the interface:
```
(defstruct echo.hello (what))
(defsyntax-for-match !echo.hello ...)
(defrules !!echo.hello ...
```

The invocation `(!!echo.hello echo 'hello)` constructs a !call with
value an instance of echo.hello and a gensymed continuation id.
It then sends a message with the !call to the `echo` actor and
waits for a `!value` or `!error` message matching the continuation.
If it receive a `!value` it returns it, and if it receives an `!error`
it signals an error.

In the actor, the `(!echo.hello what k)` matches a `!call` with
the value matching `(echo.hello what)` and the continuation bound
to `k`. The actor displays its message, and then responds by sending
a value with the `!!value` macro. An error could be signalled 

#### RPC

The interaction so far has been local. In order to interact with
remote actors, Gerbil provides an rpc protocol and server for
handling the necessary network interaction.

Using rpc is very simple: An rpc server can be constructed
with `start-rpc-server!` which accepts an optional server address
to bind and a wire protocol implementation with a keyword.

In one shell:
```
(def (my-echo rpcd)
  (!!rpc.register rpcd 'echo echo::proto)
  (let lp ()
    (<- ((!echo.hello what k)
          (displayln @source " says " what)
          (!!value @source what k)
          (lp)))))
(def remoted (start-rpc-server! "127.0.0.1:9999"))
(def echod (spawn my-echo remoted))
```
This starts an rpc server at port 9999 in the localhost.
The echo actor binds itself under the id `echo` using the
echo protocol `echo::proto` for marshalling and unmarshalling.

In a different shell, we can connect to our echo with a `remote` handle:
```
(def locald (start-rpc-server!))
(def echod (make-remote locald 'echo "127.0.0.1:9999" echo::proto))
> (!!echo.hello echod 'hello)
=> 'hello
```

By default, a null protocol is used which does no authentication
or encryption is used. This is suitable for local development only,
if you intend to expose your actors over the Internet you should use
authentication and encryption.
For authentication, you can generate a shared cookie with `rpc-generate-cookie!`
and start your rpc-server using the `rpc-cookie-proto`:
```
$ mkdir ~/.gerbil
> (rpc-generate-key!)
; generates a cookie in ~/.gerbil/cookie
...
(def remoted
 (start-rpc-server! "127.0.0.1:9999"
    proto: (rpc-cookie-proto)))
...
(def locald
  (start-rpc-server! "127.0.0.1:999"
    proto: (rpc-cookie-proto)))
...
```

If you also want to encrypt your communications, then use
the `rpc-cookie-cipher-proto` as `proto:` aregument for your rpc
servers. On top of cookie authentication, this protocol performs
a Diffie-Hellman key exchange and then encrypts all messages with
AES/HMAC (it encrypts and then MACs).

### HTTP requests

Gerbil provides a simple interface for making http(s) requests,
inspired by python's requests library.
Here is an example for how to use the library:
```
> (import :std/net/request)
> (def req (http-get "freegeoip.net/json/8.8.8.8"))
> (request-status req)
=> 200
> (request-text req)
=> "{\"ip\":\"8.8.8.8\",\"country_code\":\"US\",\"country_name\":\"United States\",\"region_code\":\"CA\",\"region_name\":\"California\",\"city\":\"Mountain View\",\"zip_code\":\"94040\",\"time_zone\":\"America/Los_Angeles\",\"latitude\":37.3845,\"longitude\":-122.0881,\"metro_code\":807}\n"
> (hash->list (request-json req))
=> ((country_name . "United States")
    (metro_code . 807)
    (longitude . -122.0881)
    (country_code . "US")
    (latitude . 37.3845)
    (time_zone . "America/Los_Angeles")
    (region_name . "California")
    (ip . "8.8.8.8")
    (zip_code . "94040")
    (city . "Mountain View")
    (region_code . "CA"))

### JSON

Gerbil has library support for JSON with the `:std/text/json` library.
The library provides the following procedures:
```
(def (read-json (port (current-input-port)) ...)
(def (string->json-object str) ...)
(def (write-json obj (port (current-output-port))) ...)
(def (json-object->string obj) ...)
```

The mapping of Scheme Objects to JSON objects is similar to other Scheme JSON libraries.
The `read-json` procedure constructs primitive objects (strings, numbers, lists,
 symbol hashes).
The `write-json` writes JSON objects with the JSON external data reprsentation.
The following is a convertible JSON object:
- booleans, corresponding to `true` and `false`
- `#!void`, corresponding to `null`
- real numbers
- strings
- proper lists of JSON objects
- vectors of JSON objects
- hashes mapping symbols to JSON objects
- any object that defines a `:json` method mapping the object to a JSON object.

### XML

Gerbil supports XML and HTML with the `:std/xml` library.
The library uses `libxml2` to parse XML and HTML and converts it
to the standard Scheme SXML representation.
It also provides routines for searching and selecting content
from SXML trees, as well as XML/HTML output routines.

For example, here is a parse of the bing front page extracting all hyperlinks:
```
> (import :std/net/request :std/xml)
> (import :std/net/request :std/xml)
> (def req (http-get "https://www.bing.com"))
> (parse-html (request-text req) filter: '("script" "style" "CDATA"))
=> (*TOP* (html (@ (lang "el")
                (xml:lang "el")
                (xmlns "http://www.w3.org/1999/xhtml"))
             (head (meta (@ (content "text/html; charset=utf-8")
                            (http-equiv "content-type")))
                   (title "Bing")
                   (link (@ (rel "icon")
                            (sizes "any")
                            (mask "")
                            (href "/fd/s/a/hp/bing.svg")))
                   (meta (@ (name "theme-color") (content "#4F4F4F")))
                   (link (@ (href "/s/a/bing_p.ico") (rel "icon")))
                   (meta (@ (content "Το Bing σ"))))))

; so much for modern html!
; everything script, style, and CDATA in the page.
```
