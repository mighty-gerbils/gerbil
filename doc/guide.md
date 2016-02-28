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

Bindings can be mutated with `set!` as usual.
```
> (def a #f)
> (set! a 'a)
> a
=> 'a
```

`set!` also expands with s-expressions as the target
of mutation.
When the head of the s-expresion is a setf-macro it
is invoked to expand the syntax.
If the head is a plain identifier, as is the case
in the example below, to expands an `identifier-set!`
invokation.
```
> (def a-pair (cons 'a 'b))
> (set! (car a-pair) 'c)
> (car a-pair)
=> 'c
```

Finally, macros that mixin the `setq-macro` class,
like the ones created by `identifier-rules`, can also
be the target of mutation which leads to an expander
application.

All the usual Scheme macros are available, with common
syntactic forms described later in the guide.

### Structs and Classes

Gerbil supports Object-oriented programming with structs and
classes. Structs are index-based types with single inheritance,
while classes are slot-based types with multiple inheritance.

#### Structs

Structs are defined with `defstruct`:
```
(defstruct point (x y))
(defstruct (point-3d point) (z))
> (make-point-3d 1 2 3)
=> #<point-3d> 
```

For each struct `defstruct` defines a constructor, a type predicate,
a runtime type descriptor, accessors and mutators, expansion time
struct info and a match expander.

So:
```
> (def my-point (make-point-3d 1 2 3))
> (point-x my-point)
=> 1
> (point-y my-point)
=> 2
> (point-3d-z my-point)
=> 3
> (set! (point-3d-z my-point) 0)
> (point-3d-z my-point)
=> 0

```

#### Classes
Classes are defined with defclass with slot accessed fields and support multiple
inheritance.
For example:
```
(defclass A (a))
(defclass B (b))
(defclass (C A B) (c))
...
> (def my (make-C a: 1 b: 2 c: 3))
> (A? my)
=> #t
> (B? my)
=> #t
> (@ my a)
=> 1
> (@ my b)
=> 2
> (@ my c)
=> 3
> (set! (@ my c) 0)
> (@ my c)
=> 0

```

#### Methods

Gerbil supports single dispatch for methods associated with a struct and class
type. Methods are defined with `defmethod` and invoked with curly brace `{}`
s-expressions.

For instance:
```
(import :std/format)
(defmethod {print point}
  (lambda (self)
    (with ((point x y) self)
      (printf "{point x:~a y:~a}~n" x y))))
> {print my-point}
{point x:1 y:2}
...
(defmethod {print point-3d}
  (lambda (self)
    (with ((point-3d x y z) self)
      (printf "{point-3d x:~a y:~a z:~a}~n" x y z))))
> {print my-point}
{point-3d x:1 y:2 z:0}
```

#### Constructors

By default, the constructors generated for structs expect all the fields in
indexed order, while the class constructor expects optional keywords for
slots in the class.
A custom constructor can be defined by specifying a costructor property
designating a method at struct or class definition.
For example:
```
(defstruct (point-3d point) (z)
  constructor: :init!)
(defmethod {:init! point-3d}
  (lambda (self x y (z 0))
    (set! (point-x self) x)
    (set! (point-x self) y)
    (set! (point-y self) z)))
> (def my-point (make-point-3d 1 2))
> (point-3d-z my-point)
=> 0

```

### Pattern Matching

Gerbil uses pattern matching extensively, so a suitable match
macro is provided by the language. The pattern language is
similar to plt's match lanuge, with structs destuctured by
the structure name.
In addition, the square brackets destructure lists symmetrically
to their construction.

For example:
```
(def (my-destructurer obj)
 (match obj
   ([a . b]
    (printf "a pair (~a . ~a)~n" a b)
    'pair)
   ((point-3d x y z)
    (printf "a 3d-point (~a ~a ~a)~n" x y z)
    'point-3d)
   ((point x y)
    (printf "a 2d point (~a ~a)~n" x y)
    'point-2d)
   (else 'something-else)))
> (my-destructurer [1 2 3])
a pair (1 . (2 3))
=> 'pair
> (my-destructurer (make-point 1 2))
a 2d point (1 2)
=> 'point-2d
> (my-destructurer (make-point-3d 1 2))
a 3d-point (2 0 0)
=> 'point-3d
 
```

#### Ddestructuring Binds
Gerbil's `match` provides a shorthand syntax for match lambdas:
```
(def car+cdr (match <> ([a . b] (values a b))))
> (car+cdr [1 2 3])
=> values 1 '(2 3)
```

It is also common to destructure-bind an object, thus a common
destructuring-bind form `with` is provided. The form can
bind a single object with short-hand notation or multiple
objects with a let-style head:
```
(def (car+cdr obj)
  (with ([a . b] obj)
    (values a b)))

(def (car+cdrx2 lsta lstb)
  (with (([a-car . a-cdr] lsta)
         ([b-car . b-cdr] lstb))
     (values a-car a-cdr b-car b-cdr)))
```

### Macros

Gerbil has pervasive macro facilities and is a macro-rich language.
The full meta-syntactic tower is provided, with macro hygiene support
with `syntax-case` and `quote-syntax`.

#### defrules
Most macros are simple and medium syntax-rules macros, and thus
Gerbil provides a short form for definint syntax-rules macros:
```
(defrules macro-id (id ...)
 (head [guard] body) ...)
; equivalent:
(defsyntax macro-id
  (syntax-rules (id ...)
    (head [guard] body) ...))
```

#### defsyntax
More complicated macros are defined `defsyntax` and `syntax-case`
directly. Here is an example that introduces an identifier
hyigenically:
```
(defsyntax (with-magic stx)
  (syntax-case stx ()
   ((macro expr body ...)
    (with-syntax ((magic-id (datum->syntax #'macro 'magic)))
      #'(let (magic-id expr) body ...)))))
> (with-magic 3 (+ magic 1))
=> 4
```

## Modules and Libraries

Modules are self-contained pieces of code. All identifiers
used in the runtime of the module must be bound. They
are either available from the prelude, imported from
another module, or declared as `extern` to indicate
runtime-provided identifiers.

Modules can be declared at the top level with the `module`
special form, can be defined in a file, or can be part of a library.
They can also be nested in another module.

### Top Modules
Here is an example of a simple top module, which provides
a function that uses`display-exception` from the runtime as extern:
```
(module A
  (export with-display-exception)
  (extern (display-exception display-exception))
  (def (with-display-exception thunk)
    (with-catch (lambda (e) (display-exception e (current-error-port)) e)
      thunk)))
> (import A)
> (with-display-exception (lambda () (error 'it-is-an-error)))
it-is-an-error
=> #<error-exception #5>
```

### Imports and Exports

Identifiers are imported from a module with the `import` special
form, which must appear at a top contenxt (either top-level
or module scope).
It has the following syntax:
```
(import <import-spec> ...)
import-spec:
 <module-path>
 (import-expander <import-spec> expander-args ...)
module-path:
 identifier            ; top or module scope module
 :identifier           ; identifier with ':' prefix, library module
 "path-to-module-file" ; file module, .ss extension optional

```

As we can see, import allows macros to maninpulate the import set
of some import source (a module or another expansion).
They can be defined with `defsyntax-for-import`
An example macro is `only-in`, provided by the prelude:
```
(import (only-in :std/text/json read-json))
```
Here we import form `:std/text/json` only the `read-json` procedure.

Modules define the set of exported identifiers with the `export`
special form, which must appear at module scope.
It has the following syntax:
```
(export <export-sec> ...)
export-spec:
 #t                     ; export all defined identifiers
 identifier             ; export a specific identifiers
 (rename: id name)      ; export an identifier with a different name
 (import: <module-path> ; re-export all imports from <module-path>
 (export-expander <export-spec> args ...) ; export macro
```
Similarly to `import`, `export` also supports macros, which can
be defined with `defsyntax-for-export`.
An usual export macro is `except-out`, provided by the prelude:
```
(export (except-out #t display-exception))
```
This form exports all defined symbols, except display-exception.
It could be used by the example module `A` above to the same
effect.

### File Modules

Modules can be writen directly in files, without a surrounding
`module` form.
For example, we can place our module `A` into a file A.ss
```
$ cat > A.ss <<EOF
(export with-display-exception)
(extern (display-exception display-exception))
(def (with-display-exception thunk)
  (with-catch (lambda (e) (display-exception e (current-error-port)) e)
    thunk))
EOF
> (import "A")
```

File modules take their name from the including file, so this
module is named `A` and uses `A#` as the namespace prefix.
You can be explicit about the namespace the module uses by
having a `namesace: id` declaration at the top of the module.

You can compile file modules with `gxc`:
```
$ gxc A.ss
> (import "A")  ; compiled form takes precedence
```

### Library Modules

Library modules are specified with the `:library-module-id` import
form. For example, the JSON library is `:std/text/json`.
When there are `/` in the library module path, it indicates
that it is part of a package. The package can be specified with
a `package: package-path` declaration at the top of the module.
The package also affects the namespace of the module.

For example, the `:std/text/json` library module is part of
the `std/text` package and resides in the file named `json.ss`.
The namespace prefix for identifiers defined in the file is
`std/text/json#`.

By default libraries are looked up in the `$GERBIL_HOME/lib`
directory. You can specify additional directories to be
searched with the `GERBIL_LOADPATH` environment variable.
You can also modify the load-path at runtime with `add-load-path`.

When building libraries, you should use an appropriate prefix
as your package. Then you can use the `:std/make` standard build
library to compiled directly into `$GERBIL_HOME/lib`.
For example let's package the `A` module into a library.
Let's create a package `example` as the top level
package for your library, and then give an appropriate name
to your module. Here, let's call it `util` with the expectation
that the library and module may grow further:
```
$ mkdir example
$ cat > example/util.ss <<EOF
package: example
(export with-display-exception)
(extern (display-exception display-exception))
(def (with-display-exception thunk)
  (with-catch (lambda (e) (display-exception e (current-error-port)) e)
    thunk))
EOF
```

You can now create a build script using `:std/make`
```
$ cat > build.ss <<EOF
#!/usr/bin/env gxi-script
(import :std/make)
(let (srcdir (path-normalize (path-directory (this-source-file))))
  (make srcdir: srcdir
        '("example/util")))
EOF
$ chmod +x build.ss

```

You can now build your library with `build.ss` and have it
installed into `$GERBIL_HOME/lib`.
```
$ ./build.ss 
... compile example/util
$ gxi
> (import :example/util)
> (with-display-exception (lambda () (error "this-is-an-error")))
this-is-an-error
=> #<error-exception #4>
```

## Standard Library

The gerbil standard library is located at `src/std`; it includes
several common libraries (SRFIs, and usual scheme libraries like
`:std/pregexp`, `:std/sort`, and `:std/format`), along with
Gerbil-specific libraries.
Here we provide examples and brief documentation for the more
interesting of the Gerbil-specific libraries.

### Additional Syntactic Sugar

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
 [finally-clause])

catch-clause:
 (catch pred => K)
 (catch (pred var) body ...)
 (catch (var) body ...)
 (catch _ body ...)
finally-clause:
 (finally body ...)
```

### Generics

Gerbil supports generic multi-method dispatch, with the requisite
macros provided by `:std/generic`.
For example, the following defines a generic method `my-add` that
dispatches on numbers and strings:
```
(import :std/generic)
(defgeneric my-add
  (lambda args #f))
(defmethod (my-add (a <number>) (b <number>))
  (+ a b))
(defmethod (my-add (a <string>) (b <string>))
  (string-append a b))
```

The code defined a generic method with the `defgeneric` macro,
providing a default method which is dispatched when there are no
matching methods. Next, we defined the two methods, operating
on numbers and strings. We can use the generic method as a procedure:


```
> (my-add 1 2)
=> 3
> (my-add "a" "b")
=> "ab"
```

We can easily define methods for user-defined types as well.
Here we define an implementation for instances of a struct `A`:
```
> (my-add (make-A 1) (make-A 2))
=> #f

(defstruct A (x))
(defmethod (my-add (a A) (b A))
  (make-A (+ (A-x a) (A-x b))))

> (my-add (make-A 1) (make-A 2))
=> #<A a: 3>
```

Inside the body of every method implementation, `@next-method` is bound
to a procedure which dispatches to the next matching method.
For example:
```
(defmethod (my-add (a <fixnum>) (b <fixnum>))
  (displayln "add fixnums")
  (@next-method a b))
```
Normally in the procedure body we would add with `fx+`, but for
the shake of the example we display a message and let the generic
number method to add.
```
> (my-add 1 2)
add fixnums
=> 3

```
### Iteration

The `:std/iter` library provides support for iteration using
the iterator protocol. The library also provides macros of
the `for` family for iterating over sequences or other objects
that implement the iteration protocol.

#### Iteration Syntax

The basic iteration macro is the imperative `for` comprehension.
The syntax binds variables to iterators in parallel, and invokes
the body as long as none of the iterators have signalled end
of iteration.

For example:
```
(import :std/iter)

> (for (x '(1 2 3))
   (displayln x))
1
2
3
> (for ((x '(1 2 3))
        (y '#(a b c d)))
  (displayln x " " y))
1 a
2 b
3 c
```

The iteration macro supports the usual suspects for generic
iteration: lists, vectors, strings, hash-tables, input-ports,
and ranges.

The variant `for*` performs multi-dimensional iteration, eqiuvalent
to nested fors:
```
> (for* ((x (in-range 2)) (y (in-range 2)))
   (displayln x y))
00
01
10
11
```



The values of an iteration can be collected in a list with `for/collect`:
```
> (for/collect ((x (in-naturals))
                (y '#(a b c d)))
    (cons x y))
=> ((1 . a) (2 . b) (3 . c) (4 . d))
```

Finally, the values of an iteration can be folded to produce a value;
in this example we construct a reversed list out of an iterator
with a folding `cons`:
```
> (for/fold (r []) (x (in-range 1 5))
    (cons x r))
=> (5 4 3 2 1) 
```

#### Iteration Protocol

Iteration dispatch applies the generic method `:iter` in order
to produce an iterator object. The default implementation calls
the method `:iter` on the object. There are methods for
iterating lists, hashes, input-ports, ranges etc.

The easiest way to implement an iterator is through a coroutine
procedure. The procedure is coexecuted with the iteration loop,
and produces values for the loop with `yield`:
```
(def (my-generator n)
 (lambda ()
   (let lp ((k 0))
     (when (< k n)
       (yield k)
       (lp (1+ k))))))

> (for (x (my-generator 3))
    (displayln x))
0
1
2
```

We can now use this generator to produce an iterator for a user-defined
struct:
```
(defstruct A (x))
(defmethod {:iter A}
  (lambda (self)
    (:iter (my-generator (A-x self)))))
> (for (x (make-A 3))
    (displayln x))
0
1
2
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

### Event Programming

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

#### Sync Macros

The library also offers a comple of macros, `!` and `!!` which simplify
event driven programming. `!` syncs a single event while `!!` syncs
multiple events.
For instance, using `!!` the loop from the previous example can
be rewritten as
```
(let lp ((n 0))
  (!! (1 (displayln "timeout " n) (lp (fx1+ n)))
      (my-thread
       (thread-join! my-thread))))
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
```

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
          (!!value what k)
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
the value matching `(echo.hello what)` and the continuation token
bound to `k`. The actor displays its message, and then responds by
sending a value with the `!!value` macro. An error could be signalled
with the `!!error` macro.

The syntax for `!!value` and `!!error` is similar: the take
an optional destination (which defaults to `@source`), a value
or error message and the continuation token:
```
(!!value [@source] val token)
(!!error [@source] msg token)
```

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
          (!!value what k)
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
> (rpc-generate-cookie!)
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
```

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

For example, here is a parse of the bing front page without scripts,
style, and CDATA:
```
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
