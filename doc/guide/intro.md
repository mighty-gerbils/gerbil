# An Introduction to Gerbil

This is a quick introductory guide to Gerbil for seasoned schemers;
it assumes familiarity with scheme and exposure to a couple of
different implementations.

In the following, `$` is the shell prompt and `>` the gxi
interpreter prompt.

## Using Gerbil
The Gerbil interpreter is `/opt/gerbil/bin/gxi`, and the compiler is
`/opt/gerbil/bin/gxc`, assuming the default installation prefix.

If you want an interactive Gerbil shell just execute the interpreter
directly by running `gxi`.


## Hello world
Add `/opt/gerbil/bin` to your path and invoke the interpreter
for the obligatory "hello, world":
```
$ export PATH=$PATH:/opt/gerbil/bin
$ gxi
> (displayln "hello, world")
hello, world
```

The "hello, world" script:
```
$ cat > hello.ss <<EOF
#!/usr/bin/env gxi

(def (main . args)
  (displayln "hello, world"))
EOF
$ chmod +x hello.ss
$./hello.ss
hello, world
```

The "hello, world" executable:
```
$ cat > gerbil.pkg <<EOF
(package: example)
EOF

$ cat > hello.ss <<EOF
(export main)
(def (main . args)
  (displayln "hello, world"))
EOF

$ gxc -O -exe -o hello hello.ss
$ ./hello
hello, world
```

## Core Gerbil
### Primitive forms
The standard Scheme primitive forms and macros are all supported.

Runtime bindings are defined with the short forms `def` and `defvalues`:
```scheme
(def (say-hello who)
  (displayln "hello " who))

(defvalues (a b)
  (values 1 2))
```
For those who prefer the classic long forms, `define` and `define-values`
are also available as in standard Scheme.

Procedures are defined with `lambda` and can have optional and keyword
formal arguments:
```scheme
(def (a-simple-function a b)
  (+ a b))
> (a-simple-function 1 2)
3

(def (an-opt-lambda a (b 1))
  (+ a b))
> (an-opt-lambda 1)
2

(def (a-keyword-lambda a b: (b 1))
  (+ a b))
> (a-keyword-lambda 1)
2
> (a-keyword-lambda 1 b: 2)
3

(def (a-keyword-lambda-with-options a b: (b 1) (c 3) . rest)
 (+ a (* b c)))
> (a-keyword-lambda-with-options 1)
4
> (a-keyword-lambda-with-options 1 b: 2)
7
> (a-keyword-lambda-with-options 1 b: 2 4)
9
```

Multiple arity lambdas can be declared with case-lambda:
```scheme
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
```scheme
> ((let (x 1) (lambda (y) (+ x 1))) 1)
2
> (let ((values a b) (values 1 2)) (+ a b))
3
> (let ((x 1)
        ((values y z) (values 2 3)))
    (+ x y z))
6
```

Note that the `_` identifier is reserved for bindings to
mean the null binding; that is the expression value
is ignored and no lexical binding is generated:
```scheme
(def (a-function x . _) ; accepts 1 or more ignored args
 (+ x 1))
> (a-function 1 2)
2
```

Apart from cons and list, pairs and lists can also be
constructed with short-hand syntax using square brackets:
```scheme
; cons a pair
> [1 . 2]
(1 . 2)
; cons a list
> [1 2 3]
(1 2 3)
```

The short-hand syntax also supports list splicing using
using the ellipsis `...`:
```scheme
; splice nested list
> [1 2 [3 4 5] ... 6]
(1 2 3 4 5 6)
```

Bindings can be mutated with `set!` as usual.
```scheme
> (def a #f)
> (set! a 'a)
> a
'a
```

`set!` also expands with s-expressions as the target
of mutation.
When the head of the s-expression is a setf-macro it
is invoked to expand the syntax.
If the head is a plain identifier, as is the case
in the example below, it expands to an `identifier-set!`
invocation.
```scheme
> (def a-pair (cons 'a 'b))
> (set! (car a-pair) 'c)
> (car a-pair)
'c
```

Finally, macros that mixin the `setq-macro` class,
like the ones created by `identifier-rules`, can also
be the target of mutation which leads to an expander
application.

All the usual Scheme macros are available, with common
syntactic forms described later in the guide.

### Objective Gerbil

Gerbil supports object-oriented programming with structs, classes, and
interfaces. Structs are index-based types with single inheritance,
while classes are slot-based types with multiple
inheritance. Interfaces are akin to type-classes, and they pack an
object with its method implementations for safe and efficient method
calls.

#### Structs

Structs are defined with `defstruct`:
```scheme
(defstruct point (x y))
(defstruct (point-3d point) (z))
> (make-point-3d 1 2 3)
#<point-3d>
```

For each struct `defstruct` defines a constructor, a type predicate,
a runtime type descriptor, accessors and mutators, expansion time
struct info and a match expander.

So:
```scheme
> (def my-point (make-point-3d 1 2 3))
> (point-x my-point)
1
> (point-y my-point)
2
> (point-3d-z my-point)
3
> (set! (point-3d-z my-point) 0)
> (point-3d-z my-point)
0

```

#### Classes
Classes are defined with `defclass` with slot accessed fields and support multiple
inheritance.
For example:
```scheme
(defclass A (a))
(defclass B (b))
(defclass (C A B) (c))
...
> (def my (make-C a: 1 b: 2 c: 3))
> (A? my)
#t
> (B? my)
#t
> (@ my a)
1
> (@ my b)
2
> (@ my c)
3
> (set! (@ my c) 0)
> (@ my c)
0

```

#### Methods

Gerbil supports single dispatch for methods associated with a struct and class
type. Methods are defined with `defmethod` and invoked with curly brace `{}`
s-expressions.

For instance:
```scheme
(import :std/format)
(defmethod {print point}
  (lambda (self)
    (with ((point x y) self)
      (printf "{point x:~a y:~a}~n" x y))))
> {print my-point}
{point x:1 y:2}

(defmethod {print point-3d}
  (lambda (self)
    (with ((point-3d x y z) self)
      (printf "{point-3d x:~a y:~a z:~a}~n" x y z))))
> {print my-point}
{point-3d x:1 y:2 z:0}
```

If you want to dispatch to the next method in the hierarchy, then you can use
the `@next-method` macro that is locally bound inside your method definition:
```scheme
(defmethod {identify point}
  (lambda (self)
    (displayln 'point)))

(defmethod {identify point-3d}
  (lambda (self)
    (displayln 'point-3d)
    (@next-method self)))

> {identify my-point}
point-3d
point
```

#### Constructors

By default, the constructors generated for structs expect all the fields in
indexed order, while the class constructor expects optional keywords for
slots in the class.
A custom constructor can be defined by specifying a constructor property
designating a method at struct or class definition.
For example:
```scheme
(defstruct (point-3d point) (z)
  constructor: :init!)
(defmethod {:init! point-3d}
  (lambda (self x y (z 0))
    (set! (point-x self) x)
    (set! (point-y self) y)
    (set! (point-3d-z self) z)))
> (def my-point (make-point-3d 1 2))
> (point-3d-z my-point)
0

```

#### Mixing classes and structs

Structs can only extend other structs with single inheritance.
In contrast, classes can freely mixin structs, as long as the
mixins contain a compatible base struct.

For example, the following constructs a diamond hierarchy with a base struct:
```scheme
(defstruct A (x))
(defclass (B A) ())
(defclass (C A) ())
(defclass (D B C) () constructor: :init!)
(defmethod {:init! D}
  (lambda (self x)
    (set! (A-x self) x)))
(def d (make-D 1))

> (A? d)
#t
> (A-x d)
1
> (B? d)
#t
> (C? d)
#t
> (D? d)
#t
> (type-descriptor-mixin D::t)
(#<type #5 B> #<type #6 C> #<type #7 A>)

```

#### Sealing Classes

Gerbil supports _sealing_ for _final_ class (and struct) types.

By sealing a class, all methods in the hierarchy are coalesced
into the class' method table, resulting to a single hash table lookup
for method dispatch.  In addition, as methods are coalesced they are
specialized for the concrete type when a specializer is available;
specializers are normally generated by the compiler when compiling with
optimizations.

Specializing a method resolves all slot accesses into offsets within
the object at the time of specialization. Similarly, all method calls
are (lazily) resolved so that they happen exactly once, thus
eliminating all hash table lookups within the specialized method.

Here is an example that demonstrates the performance effect of class sealing:
```scheme
(defclass A (a))
(defclass B (b))
(defclass (C A B) (c))
(defclass (D A B) (d))
(defclass (E C D) (e) final: #t)

(defmethod {add-a A}
  (lambda (self x)
    (+ (@ self a) x)))

(defmethod {add-b B}
  (lambda (self x)
    (+ (@ self b) x)))

(defmethod {mul-c C}
  (lambda (self x y)
    (* (@ self c) {add-a self x} {add-b self y})))

> (def foo (E a: 1 b: 2 c: 3))
> (def (do-it o n) (with-methods foo mul-c) (for (_ (in-range n)) (mul-c o 1 2)))
> (time (do-it foo 1000000))
(time (do-it foo (##quote 1000000)))
    0.949492 secs real time
    0.949490 secs cpu time (0.947454 user, 0.002036 system)
    105 collections accounting for 0.157004 secs real time (0.156961 user, 0.000026 system)
    704018864 bytes allocated
    950 minor faults
    no major faults
> (seal-class! E::t)
#<type #9 E>
> (time (do-it foo 1000000))
(time (do-it foo (##quote 1000000)))
    0.513751 secs real time
    0.513751 secs cpu time (0.513751 user, 0.000000 system)
    104 collections accounting for 0.163506 secs real time (0.163501 user, 0.000000 system)
    704018768 bytes allocated
    2 minor faults
    no major faults
```

The effect is even more pronounced in compiled code:
```scheme
$ cat classes-test.ss
(import ./classes :std/sugar)
(export main)

(def (do-it o n)
  (declare (not safe))
  (with-methods o mul-c)
  (let lp ((i 0))
    (when (fx< i n)
      (mul-c o 1 2)
      (lp (fx1+ i)))))

(extern namespace: #f time)

(def (main n)
  (let ((n (string->number n))
        (o (E a: 1 b: 2 c: 3)))
    (##gc)
    (time (do-it o n))
    (seal-class! E::t)
    (time (do-it o n))))

$ gxc  -O -exe -o clasess-test classes-test.ss
$ ./clasess-test 10000000
(time (tmp/classes-test#do-it _o392_ _n391_))
    3.357118 secs real time
    3.357061 secs cpu time (3.357061 user, 0.000000 system)
    no collections
    32 bytes allocated
    no minor faults
    no major faults
(time (tmp/classes-test#do-it _o392_ _n391_))
    0.123717 secs real time
    0.123716 secs cpu time (0.123716 user, 0.000000 system)
    no collections
    32 bytes allocated
    1 minor fault
    no major faults
```


#### Interfaces

Starting with Gerbil v0.18, The `:std/interface` package provides the
interface abstraction, which allows you to define facades for your
class hierarchy, hiding the details of internal implementation and
preresolving methods for direct dispatch.

In the example above, we can normalize the interface to our class hierarchy as follows:
```scheme
(interface F
  (add-a x)
  (add-b x)
  (mul-c x y))
```

You can create instances of your interfaces by casting objects with the `F` macro.
Using interfaces, the code becomes both more robust and more efficient:
```scheme
(defclass A (a))
(defclass B (b))
(defclass (C A B) (c))
(defclass (D A B) (d))
(defclass (E C D) (e) final: #t)

(defmethod {add-a A}
  (lambda (self x)
    (+ (@ self a) x)))

(defmethod {add-b B}
  (lambda (self x)
    (+ (@ self b) x)))

(defmethod {mul-c C}
  (lambda (self x y)
    (* (@ self c) {add-a self x} {add-b self y})))

(def (do-it-with-object o n)
  (for (_ (in-range n)) {mul-c o 1 2}))
(def (do-it-with-interface o n)
  (let (o (F o)) (for (_ (in-range n)) (F-mul-c o 1 2))))
```

Let's compile and time the code above:
```scheme
> (def foo (E a: 1 b: 2 c: 3))
> (time (do-it-with-object foo 1000000))
(time (tmp/example#do-it-with-object foo (##quote 1000000)))
    0.226230 secs real time
    0.226218 secs cpu time (0.225842 user, 0.000376 system)
    no collections
    64 bytes allocated
    no minor faults
    no major faults
    590719272 cpu cycles
> (seal-class! E::t)
#<type #16 E>
> (time (do-it-with-object foo 1000000))
(time (tmp/example#do-it-with-object foo (##quote 1000000)))
    0.044066 secs real time
    0.044069 secs cpu time (0.042088 user, 0.001981 system)
    no collections
    64 bytes allocated
    no minor faults
    no major faults
    115047186 cpu cycles
> (time (do-it-with-interface foo 1000000))
(time (tmp/example#do-it-with-interface foo (##quote 1000000)))
    0.025100 secs real time
    0.025104 secs cpu time (0.025103 user, 0.000001 system)
    no collections
    704 bytes allocated
    no minor faults
    no major faults
    65530420 cpu cycles
```

See the [Interfaces](/reference/std/interface.md) package documentation
for more details.


#### Contracts, Type Annotations and Dotted Notation

Starting with Gerbil v0.18, The `:std/contract` package provides macros for contracts and type annotations.

You can attach contracts to interface method definitions (see
[Interfaces](/reference/std/interface.md)) and you can use the `using`
macro to provide type checks and assertions, accessors and mutators
for structs and classes, and interface method calls with the dotted
notation.

Here is a simple example:
```scheme
(import :std/contract)
(defstruct A (x y))
(defclass (B A) (z) constructor: :init!)
(defmethod {:init! B}
  (lambda (self x y z)
    (using (self :- B)
      (set! self.x x)
      (set! self.y y)
      (set! self.z z))))

> (def b (B 1 2 3))
> (using (b : B) (* (+ b.x b.y) b.z))
9

```

Furthermore, dynamic method calls with the `{...}` notation also expand dotted identifiers.
So `{obj.method 1 2 2}` is equivalent to `{method obj 1 2 3}`.

Extending the example further:
```scheme
(defmethod {do-it B}
  (lambda (self factor)
    (using (self :- B)
      (* (+ self.x self.y) self.z factor))))

> {b.do-it 1}
9
> {b.do-it 2}
18

```

### Pattern Matching

Gerbil uses pattern matching extensively, so a suitable match
macro is provided by the language. The pattern language is
similar to plt's match macro, with structs destuctured by
the structure name.
In addition, the square brackets destructure lists symmetrically
to their construction.

For example:
```scheme
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
'pair
> (my-destructurer (make-point 1 2))
a 2d point (1 2)
'point-2d
> (my-destructurer (make-point-3d 1 2))
a 3d-point (2 0 0)
'point-3d
```

#### Destructuring Binds
Gerbil's `match` provides a shorthand syntax for match lambdas:
```scheme
(def car+cdr (match <> ([a . b] (values a b))))
> (car+cdr [1 2 3])
values 1 '(2 3)
```

It is also common to destructure-bind an object, thus a common
destructuring-bind form `with` is provided. The form can
bind a single object with short-hand notation or multiple
objects with a let-style head:
```scheme
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
Gerbil provides a short form for defining syntax-rules macros:
```scheme
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
hygienically:
```scheme
(defsyntax (with-magic stx)
  (syntax-case stx ()
   ((macro expr body ...)
    (with-syntax ((magic-id (datum->syntax #'macro 'magic)))
      #'(let (magic-id expr) body ...)))))
> (with-magic 3 (+ magic 1))
4
```

#### defsyntax-for-match
The match expander is also macro capable; you can define a match
macro with `defsyntax-for-match`, which has the following form:
```scheme
(defsyntax-for-match id match-macro [macro])
```
Both macros are procedures at phi+1, with the `match-macro` invoked when
expanding a match pattern and the optional normal `macro` invoked at normal
procedure application.

For example, the following defines a match macro for constructing and
destructuring  pairs tagged with `'foo`:
```scheme
(defsyntax-for-match foo
  (syntax-rules ()
    ((_ pat) (cons 'foo pat)))
  (syntax-rules ()
    ((_ val) (cons 'foo val))))

> (def my-foo (foo 1))
> my-foo
(foo . 1)
> (match my-foo ((foo x) x))
1
> (def my-bar (cons 'bar 2))
> (match my-bar ((foo x) x) (else 'not-a-foo))
not-a-foo
```

#### begin-syntax
If you need to shift the phase of the expander to evaluate support code
for macros, you can do so with `begin-syntax`:
```scheme
(begin-syntax form ...)
```

For example, the following macro uses a utility function in the fender,
which is defined at phi=+1:
```scheme
(begin-syntax
  (def (identifier-or-keyword? stx)
    (or (identifier? stx)
        (stx-keyword? stx)))

  (def (identifiers-or-keywords? lst)
    (andmap identifier-or-keyword? lst)))

(defrules qlist ()
  ((_ (key val) ...)
   (identifiers-or-keywords? #'(key ...))
   [['key . val] ...]))

```

The full meta-syntactic tower is supported, so you can use the full
language at phi=+1 and shift higher with a nested `begin-syntax`. You
will have to import `:gerbil/core` at higher phases however, as the
prelude only provides bindings for phi=+1.

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
a function that uses `display-exception` from the runtime as extern:
```scheme
(module A
  (export with-display-exception)
  (extern (display-exception display-exception))
  (def (with-display-exception thunk)
    (with-catch (lambda (e) (display-exception e (current-error-port)) e)
      thunk)))
> (import A)
> (with-display-exception (lambda () (error 'it-is-an-error)))
it-is-an-error
#<error-exception #5>
```

### Imports and Exports

Identifiers are imported from a module with the `import` special
form, which must appear at a top context (either top-level
or module scope).
It has roughly the following syntax (for full details see the reference):
```scheme
(import <import-spec> ...)
import-spec:
 <module-path>
 (import-expander <import-spec> expander-args ...)
module-path:
 identifier            ; top or module scope module
 :identifier           ; identifier with ':' prefix, library module
 ./identifier          ; identifier with './' prefix, library relative module
 ../identifier         ; identifier with '../' prefix, library relative module
 "path-to-module-file" ; file module, .ss extension optional
```

As we can see, `import` allows macros to manipulate the import set
of some import source (a module or another expansion).
They can be defined with `defsyntax-for-import`
An example macro is `only-in`, provided by the prelude:
```scheme
(import (only-in :std/text/json read-json))
```
Here we import from `:std/text/json` only the `read-json` procedure.

Modules define the set of exported identifiers with the `export`
special form, which must appear at module scope.
It has the following syntax:
```scheme
(export <export-sec> ...)
export-spec:
 #t                                       ; export all defined identifiers
 identifier                               ; export a specific identifiers
 (rename: id name)                        ; export an identifier with a different name
 (import: <module-path>)                  ; re-export all imports from <module-path>
 (export-expander <export-spec> args ...) ; export macro
```
Similarly to `import`, `export` also supports macros, which can
be defined with `defsyntax-for-export`.
A common export macro is `except-out`, provided by the prelude:
```scheme
(export (except-out #t display-exception))
```
This form exports all defined symbols, except display-exception.
It could be used by the example module `A` above to the same
effect.

### File Modules

Modules can be written directly in files, without a surrounding
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
having a `namespace: id` declaration at the top of the module.

You can compile file modules with `gxc`:
```
$ gxc -d . A.ss
$ gxi
> (import "A")  ; compiled form takes precedence
```

### Library Modules

Library modules are imported with the `:library/module/path` form.
For example, to use the `json` module from the Gerbil std library
you need the following import statement:
```scheme
(import :std/text/json)
```

The library module is defined in a file named `json.ss` in the Gerbil
std library source tree. The module declares that it is part of the
`std/text` package, which places compiler artefacts in the
`$GERBIL_PREFIX/lib/std/text` directory.
The namespace prefix for identifiers defined in the module is
`std/text/json#`.

When writing a library module, you should choose an appropriate package
for your code.
The package is specified with a `package: package-path` declaration
at the top of a module or with a `package:` entry in the `gerbil.pkg`
plist. It effects the namespace of the module and
placement of compiled code.

By default library modules are looked up in the `GERBIL_INSTALL_PREFIX/lib`
and `${GERBIL_PATH:~/.gerbil}/lib` directories.  You can specify
additional directories to be searched with the `GERBIL_LOADPATH`
environment variable.  You can also modify the load-path at runtime
with `add-load-path`.

#### Building Libraries

This is best illustrated with an example, so let's package the `A` module
above into a library.

For this, we designate `example` as the library package,
and then give the module a more appropriate name.
Here, we call it `util` with the expectation that the library
and module will grow further:
```
$ mkdir example
$ cat > example/gerbil.pkg <<EOF
(package: example)
EOF
$ cat > example/util.ss <<EOF
(export with-display-exception)
(extern (display-exception display-exception))
(def (with-display-exception thunk)
  (with-catch (lambda (e) (display-exception e (current-error-port)) e)
    thunk))
EOF
```

You can now compile the library module by invoking `gxc` and import it as
`:example/util`:

```
$ gxc example/util.ss
$ gxi
> (import :example/util)
```

By default, the compiler will place compiled modules in `${GERBIL_PATH:~/.gerbil}/lib`.
If you want a separate directory structure for your library, you can
specify a different directory with the `-d` option:
```
$ gxc -d your-library-path example/util.ss
```

### Executable Modules

The gerbil compiler can also create executables that invoke the main
function of a module.

For example, suppose we have a module example/hello.ss that we
want to compile as an executable module:
```
$ mkdir example
$ cat > example/gerbil.pkg <<EOF
(package: example)
EOF

$ cat > example/hello.ss <<EOF
(export main)
(def (main . args)
  (displayln "hello, world"))
EOF
```
The module must define and export a `main` function that gets
invoked with the command line arguments after loading the gerbil
runtime and module dependencies.

You can compile it to an executable with `gxc` with the
following command:
```
$ gxc -O -exe -o hello example/hello.ss
$ ./hello
hello, world
```

If you want the compiler to perform full program optimization, then you can
specify the `-full-program-optimization` flag:
```
$ gxc -O -full-program-optimization -exe -o hello example/hello.ss
$ ./hello
hello, world
```

You can also compile the module dynamically so that it can be executed with the `gerbil` program:
```
$ gxc -O example/hello.ss
$ gerbil :example/hello
hello, world
```

#### Executable Compilation Modes

The difference between the 3 executable compilation modes can be summarized as follows:
- By default, executable binaries are compiled with separate module compilation and link
  to the  precompiled gerbil library (`libgerbil`).
  If the system was configured with `--enable-shared` (the default), then this
  will be a shared library; otherwise it will be a static library archive.
  Note that the executable may have some additionl dynamic library
  dependencies from stdlib foreign code, and also links to `libgambit` which will be
  a shared library when the system is configured with `--enable-shared`.
- When `-full-program-optimization` is passed to `gxc`, then the compiler will perform
  full program optimization with all gerbil library dependencies. This will result
  in better performance, albeit at the cost of increased compilation time;
  this can be minutes for complex programs, while
  separately linked executables compile in a second. Furthermore, because
  dependencies are compiled in together, you can apply declarations like `(not safe)`
  to the whole program using the `-prelude` directive. This can result
  in potentially significant performance gains at the expense of safety.
  Note that an executable compiled with full program optimization still links to `libgambit`.
  Also note that you might have to pass appropriate `ld-options` for the libraries
  you are linking to, because the compiler cannot determine what you actually need
  due to the tree shaker and thus cannot simply attach the recorded stdlib library
  dependencies.
- An executable module can also be compiled as a plain dynamic module and then
  executed with the `gerbil` universal binary (or `gxi`).
  This dynamic mode of executables is useful for development, as they compile
  instantly and do not need to be recompiled while you are working on their
  dependencies.

#### Fully Static Binaries

It is also possible to build _fully static_ binaries, provided that
your system supports it and you have configured Gerbil with
`--enable-shared=no`.  You can do this simply by passing the `-static`
option to `gxc` or using the `static-exe:` and `optimized-static-exe:`
specs in your build script.

Note that systems based on glibc are incapable of building fully
static binaries, because glibc itself has some dynamic dependencies to
lower level libraries. That's unfortunate, but it shouldn't stop you
from building fully static binaries: you can simply use Docker with an
apropriate image of a distribution based on the musl libc (alpine or
void linux for instance).

### Prelude Modules and Custom Languages

Every identifier accessible to a Gerbil module has to be defined somewhere,
either as a concrete definition or an extern reference.
The initial bindings in a module come from the prelude and the root context
which is the parent context of every module.

The root context is a special context that contains the core macro expanders
that provide the core language.
The prelude context on the other hand, is an ordinary module that
exports any number of bindings that form the language of the module.

When a prelude is not specified, the default prelude is the Gerbil
[core prelude](https://github.com/mighty-gerbils/gerbil/tree/master/src/gerbil/prelude/core.ss).
Any module however can designate a different prelude with the `prelude:`
module directive, which allows us to design custom languages.

Apart from standard bindings, custom preludes can also override some
special expander indirection hooks by exporting macros with these names:
- `%%ref` can intercept and redefine ordinary identifier references.
- `%%app` can intercept and redefine ordinary procedure application.
- `%%begin-module` can intercept the expansion of a module body and provide
  custom full or partial expansion.

Language extensibility does not stop there however: prelude modules can
also specify a custom surface syntax, by providing a module reader.
The custom reader is invoked by using a `#lang` declaration at the beginning
of the module file:
```
#lang prelude [package: pkg-id] [namespace: namespace-id]
```

When the expander sources a module that begins with a `#lang` declaration
it imports the prelude and looks for a `read-module-body` export.
The function, which must be defined for syntax, takes as input a the port
containing the module body and returns a list of syntax objects which then
become the body of the module. The module is then expanded with the usual
expansion mechanism, including custom module body expansion as defined
by the prelude.

Custom languages are a big topic and this only touches the surface;
they  are further explored in the
[Custom Language tutorial](/tutorials/languages.md).

### Implicit Package Declarations

As you have noticed, you don't generally declare the package and the
prelude inside a module. This is implicitly handled by creating a
`gerbil.pkg` file in the root of your package, which contains a
property list.

The `package:` property specifies the prefix package at the root of your
hierarchy. The package of individual modules will extend this prefix to
mirror the directory structure.

The `prelude:` property specifies an implicit custom prelude for s-expression
based languages.

If the gerbil.pkg file is empty, then it is treated as an empty
property list.  This allows you to simply touch a gerbil.pkg at the
root of your source hierarchy when you don't need a custom prelude and
use a directory structure that mimics your logical package structure.

Note that you can also place `package:` and `prelude:` declarations at
the top of your module; this is something you might encounter in older
gerbil code or things with special requirements.


### Library Relative Module Paths

You can use the dot notation to import library modules using a relative path.
Within a library module `:A/B/C/D`, an import of `./E` will resolve to
`:A/B/C/E`, while an import of `../E` will resolve to `:A/B/E`.
Upwards traversals can be nested, so `../../E` will resolve to `:A/E`.
Downwards traversals are also possible, so `../../E/G` will resolve to
`:A/E/G`.

Note that this is merely a syntactic convenience for `import` that
allows you to refer to relative modules with a short module path and
still load a library module. Relative module paths are meaningless
outside the context for interpreted code.

### Core Gerbil Variants

Gerbil comes with a custom language prelude, `:gerbil/polydactyl`,
that treats square brackets as plain parentheses -- instead of the
reader expanding them to `@list` forms.  The language is otherwise the
same as `:gerbil/core`.

To use it in a module, add the following lang declaration to the top of your file:
```
#lang :gerbil/polydactyl

;; ... code ...
```

To use it in the interpreter, start gxi by specifying `polydactyl` as the language:
```
$ gxi --lang polydactyl
```

## Standard Library

The gerbil standard library is located at `src/std`; it includes
several common libraries (SRFIs, and usual scheme libraries like
`:std/pregexp`, `:std/sort`, and `:std/format`), along with
Gerbil-specific libraries.
Here we provide examples and brief documentation for the more
interesting of the Gerbil-specific libraries.

### Additional Syntactic Sugar

The `:std/sugar` library provides some useful macros that are widely applicable.
The two most widely used are `defrule` and `try`.

The `defrule` macro is a single arm specialization of `defrules` for
simple syntactic transformations:
```scheme
(defrule (f a b c)
  (+ a b c))

;; expands to:
(defrules f ()
  ((_ a b c) (+ a b c)))
```

The `try` macro provides a special form for handling exceptions in imperative style.
For example:
```scheme
> (try (error "my error")
   (catch (e) (display-exception e (current-error-port)))
   (finally (displayln "finally!")))
my error
finally!
```

The general syntax is
```scheme
(try body ...
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
runtime support and macros provided by `:std/generic`.
For example, the following defines a generic method `my-add` that
dispatches on numbers and strings:
```scheme
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


```scheme
> (my-add 1 2)
3
> (my-add "a" "b")
"ab"
```

We can similarly define methods for user-defined types as well.
Here we define an implementation for instances of a struct `A`:
```scheme
> (my-add (make-A 1) (make-A 2))
#f

(defstruct A (x))
(defmethod (my-add (a A) (b A))
  (make-A (+ (A-x a) (A-x b))))

> (my-add (make-A 1) (make-A 2))
#<A a: 3>
```

Inside the body of every method implementation, `@next-method` is bound
to a procedure which dispatches to the next matching method.
For example:
```scheme
(defmethod (my-add (a <fixnum>) (b <fixnum>))
  (displayln "add fixnums")
  (@next-method a b))
```
Normally in the procedure body we would add with `fx+`, but for
the shake of the example we display a message and let the generic
number method to add.
```scheme
> (my-add 1 2)
add fixnums
3
```

### Iteration

The `:std/iter` library provides support for iteration using
the iterator protocol. The library also provides macros of
the `for` family for iterating over sequences or other objects
that implement the iteration protocol.

#### Iteration Syntax

The basic iteration macro is the imperative `for` comprehension.
The syntax matches patterns to iterators in parallel, and invokes
the body as long as none of the iterators have signalled end
of iteration.

For example:
```scheme
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

All patterns supported by the `match` macro can be matched in lieu
of plain variable bindings.
For instance:
```scheme
> (for ([key . val] '((a . 1) (b . 2) (c . 3)))
    (displayln key " " val))
a 1
b 2
c 3
```

The iteration macro supports the usual suspects for generic
iteration: lists, vectors, strings, hash-tables, input-ports,
and ranges.

Simple filters can be specified with the `when` and `unless` keyword in
the binding for:
```scheme
> (for ([x . y] '((a . 0) (b . 1) (c . 2)) when (> y 0)) (displayln x))
b
c
> (for ([x . y] '((a . 0) (b . 1) (c . 2)) unless (> y 0)) (displayln x))
a
```

The variant `for*` performs multi-dimensional iteration, equivalent
to nested fors:
```scheme
> (for* ((x (in-range 2)) (y (in-range 2)))
   (displayln x y))
00
01
10
11
```

The values of an iteration can be collected in a list with `for/collect`:
```scheme
> (for/collect ((x (in-naturals))
                (y '#(a b c d)))
    (cons x y))
((0 . a) (1 . b) (2 . c) (3 . d))
```

Finally, the values of an iteration can be folded to produce a value;
in this example we construct a reversed list out of an iterator
with a folding `cons`:
```scheme
> (for/fold (r []) (x (in-range 2 7))
    (cons x r))
(6 5 4 3 2)
```

#### Iteration Protocol

Iteration dispatch applies the generic method `:iter` in order
to produce an iterator object. The default implementation calls
the method `:iter` on the object. There are methods for
iterating lists, hashes, input-ports, ranges etc.

The easiest way to implement an iterator is through a coroutine
procedure. The procedure is coexecuted with the iteration loop,
and produces values for the loop with `yield`:
```scheme
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
```scheme
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

The `:std/coroutine` library provides support for coroutines yielding results with `yield`.
The user creates the coroutine with `coroutine`, and receives results with `continue` which
passes control to the coroutine until it yields a value or ends.

For example:
```scheme
(import :std/coroutine)
(def (my-coroutine)
  (yield 1)
  (yield 2)
  (yield 3)
  'end)
(def cort (coroutine my-coroutine))
> (continue cort)
1
> (continue cort)
2
> (continue cort)
3
> (continue cort)
'end ; coroutine end
```

### Event Programming

The `:std/event` library provides procedures and macros for event-driven
programming.

#### wait and select
These are the low level primitives, which wait and multiplex on primitive selectors:
- Threads, which signal when the thread terminates.
- Pairs of a locked mutex with a condition variable, which signal when the condition signals after the mutex has been unlocked.
- Naked i/o condvars, which are signaled by the runtime scheduler.

`wait` blocks the current thread until the specified selector signals, while `select` blocks until
one of the specified selectors signals, using a thread for each selector. Both procedures accept
an optional timeout and return the selector that had signalled or `#f` in the case of timeout.
```scheme
(def (wait selector (timeout #f)) ...)
(def (select list-of-selectors (timeout #f)) ...)
```

For example:
```scheme
> (import :std/event)
> (def (sleeping-thread t)
    (spawn (lambda () (thread-sleep! t) 'done)))
> (wait (sleeping-thread 5) 1)  ; or (select [(sleeping-thread 5)] 1)
#f                           ; after a second elapses
> (wait (sleeping-thread 5))    ; or (select [(sleeping-thread 5)])
#<thread #7>                 ; after the thread completes its sleep
```

#### sync
`sync` is the high-level synchronization primitive from PLT-Scheme, which works with
high level events.

A valid argument for `sync` is any synchronizable object, automatically wrapped with `wrap-evt`:
- events
- primitive selectors
- input ports
- timeouts
- any object that implements the `:event` method to return a synchronizable object

An event is
- the primitive events `never-evt` (bottom) and `always-evt` (top)
- an event object, constructed with `make-event` or `wrap-evt`
- an event-set object, constructed with `choice-evt`
- an event-handler object, constructed with `handle-evt`; it is an event tied with a continuation function which is tail invoked with the value of the event. Multiple continuations can be chained with `handle-evt` each receiving the values of the previous, starting with the value of the event.

`sync` accepts an arbitrary number of events as arguments, and returns when exactly one of them is
ready. The value of sync is the value of the event: by default, timeouts have a value of #f
and other events have usually the synchronizer as value.


For example:
```scheme
> (import :std/event)
> (def (sleeping-thread t)
    (spawn (lambda () (thread-sleep! t) 'done)))
> (sync 1 (sleeping-thread 5))
#f ; after a second elapses
> (sync (sleeping-thread 5))
#<thread #7> ; after the thread completes its sleep

```

A more complicated example which utilizes handle-evt for loops:
```scheme
> (import :std/event)
> (def (sleeping-thread t)
    (spawn (lambda () (thread-sleep! t) 'done)))
> (let lp ((n 0)
           (my-thread (sleeping-thread 5)))
    (sync (handle-evt 1
            (lambda (_) (displayln "timeout " n) (lp (fx1+ n) my-thread)))
          (handle-evt my-thread
            (lambda (thr) (thread-join! thr)))))
timeout 0
timeout 1
timeout 2
timeout 3
'done
```

#### Sync Macros

The library also offers a couple of macros, `!` and `!*`, which simplify
event driven programming. `!` syncs a single event while `!*` syncs
multiple events.

For example:
```scheme
;; sync on a single thread
(! (sleeping-thread 10) (displayln "my thread exited"))

;; rewrite the previous example loop:
(let lp ((n 0)
         (my-thread (sleeping-thread 5)))
  (!* (1 (displayln "timeout " n) (lp (fx1+ n) my-thread))
      (my-thread
       (thread-join! my-thread))))
```

### Actors

Gerbil builds on Gambit's thread messaging primitives to provide
actor-oriented programming capabilities and remote interactor
communication.

#### What is an actor

At the fundamental level, an actor is a thread that is emitting and
responding to messages, usually running in a loop.
The actor may be running locally, accessible from other threads within
the process, or it can be part of an _ensemble_ of actors running in a
substrate of servers.

We give a brief overview of actor oriented programming in what follows.

#### Sending and Receiving Messages

The basic interaction operators:
- you can send a message with the `->` operator.
- you can send a message and wait for the reply with the `->>` operator.
- you can receive and react to messages with the `<-` syntax.
- you can send a reply in a reaction context with the `-->` syntax.
- you can also send a reply conditionally, if one is expected, with the `-->?` syntax.

Here is an example, where we spawn a very basic actor that receives and responds to a message:
```scheme
(def (respond-once)
  (<- (greeting (--> (cons 'hello greeting)))))
(def the-actor (spawn respond-once))

> (->> the-actor 'world)
'(hello . world)

```

The code reacts with the `<-` reaction syntax, and replies with the
`-->` reply syntax.  The reaction pattern binds the content of the
message to `greeting`, which is then sent back consed with `hello`.

See the [actor package](/reference/std/actor.md) reference documentation
for more details.

#### Protocols

While all this is nice and dandy, we generally want _structured_
interaction with actors that is type-safe.

The `:std/actor` package provides a `defmessage` macro for defining messages,
together with the `!ok` and `!error` messages for structuring responses to
request messages.
The package also provides a `defcall-actor` macro for providing
facades to actor request/reply interactions These facades
automatically unwrap results and return the value if the result was
`!ok` and raise an `actor-error` if the result was an `!error`.

Here is an simple example wallet actor that holds a balance and
responds to `!balance`, `!deposit` and `!withdraw` messages, and entry
points for querying the balance and making desposits and withdrawals:
```scheme
(defmessage !balance ())
(defmessage !deposit (amount))
(defmessage !withdraw (amount))

(def (wallet-actor balance)
  (while #t
    (<- ((!balance)
         (--> (!ok balance)))
        ((!deposit amount)
         (set! balance (+ balance amount))
         (--> (!ok balance)))
        ((!withdraw amount)
         (if (< balance amount)
           (--> (!error "insufficient balance"))
           (begin
             (set! balance (- balance amount))
             (--> (!ok balance))))))))

(defcall-actor (balance wallet)
  (->> wallet (!balance))
  error: "balance query failed")

(defcall-actor (deposit! wallet amount)
  (->> wallet (!deposit amount))
  error: "deposit failed")

(defcall-actor (withdraw! wallet amount)
  (->> wallet (!withdraw amount))
  error: "withdrawal failed")
```

and here is an example interaction:
```
> (def my-wallet (spawn wallet-actor 100))
> (balance my-wallet)
100
> (deposit! my-wallet 10)
110
> (withdraw! my-wallet 20)
90
> (withdraw! my-wallet 200)
*** ERROR IN (stdin)@26.1 -- withdraw!: [actor-error] withdrawal failed
--- irritants: insufficient balance
```

#### Ensembles

So far our actor is limited to communicating with threads within the
process.  That's fine for many applications, but as you build more
complex systems you will need to span processes in the same host and
eventually span hosts in the network.

The concept of the ensemble denotes the totality of actors running on
a server substrate, perhaps in the Internet at large, and sharing a
secret _cookie_ that allows them to communicate with each other.

::: warning
Note that for communication over the open Internet it is strongly
recommended to use TLS.
:::

So how do we build an ensemble?  First we need to generate a cookie
for our ensemble, which we can do programmatically or using the `gxensemble`
tool:
```
$ gerbil ensemble admin cookie
```

This will generate a random 256-bit cookie in `${GERBIL_PATH:~/.gerbil}/ensemble/cookie`.
Note that it will not overwrite an existing cookie, unless you force
it with `-f`.

The second thing we need to do is modify our actor to _register_ with
its in-process actor server.  We also add a couple of standard
ensemble reaction rules that make our actor behave nicely and submit
to management with the `gxensemble` tool.

Here is the complete code for the actor:
```scheme
(import :gerbil/gambit/threads
        :std/actor
        :std/sugar
        :std/logger)
(export #t)

(deflogger wallet)

(defmessage !balance ())
(defmessage !deposit (amount))
(defmessage !withdraw (amount))

(defcall-actor (balance wallet)
  (->> wallet (!balance))
  error: "balance query failed")

(defcall-actor (deposit! wallet amount)
  (->> wallet (!deposit amount))
  error: "deposit failed")

(defcall-actor (withdraw! wallet amount)
  (->> wallet (!withdraw amount))
  error: "withdrawl failed")

(def (wallet-actor balance)
  (register-actor! 'wallet)
  (let/cc exit
    (while #t
      (<- ((!balance)
           (--> (!ok balance)))
          ((!deposit amount)
           (set! balance (+ balance amount))
           (--> (!ok balance)))
          ((!withdraw amount)
           (if (< balance amount)
             (--> (!error "insufficient balance"))
             (begin
               (set! balance (- balance amount))
               (--> (!ok balance)))))

          ,(@ping)
          ,(@shutdown (exit 'shutdown))
          ,(@unexpected warnf)))))

(def (main initial-balance)
  (thread-join! (spawn/name 'wallet wallet-actor (string->number initial-balance))))
```

Notice that we also define an entry point for running a server that hosts the wallet.

With all this we can run a server named `'my-wallet-server` hosting our wallet in the ensemble
as follows:
```shell
$ cat gerbil.pkg
(package: tmp)
$ gxc -O wallet-actor.ss

# in one terminal - run this to allow for server registration and lookup
$ gerbil ensemble registry
...

# in another terminal
$ gerbil ensemble run my-wallet-server :tmp/wallet-actor 100
...
```

We can now interact with our actor using a _handle_ in our interpreter:
```shell
$ gxi
> (import :std/actor)
> (start-actor-server!)
#<thread #22 actor-server>
> (def my-wallet (make-handle (current-actor-server) (reference 'my-wallet-server 'wallet)))
> (import :tmp/wallet-actor)
> (balance my-wallet)
100
> (deposit!  my-wallet 10)
110
;; ... and so on

```

If we want to shutdown our ensemble we can do so very easily with the
gxensemble tool, which is part of the Gerbil distribution:
```shell
$ gerbil ensemble shutdown -f
This will shutdown every server in the ensemble, including the registry. Proceed? [y/n]
y
... shutting down my-wallet-server
... shutting down registry
```

#### More about actors

See the [Key-Value Store](/tutorials/kvstore.md) tutorial for a
comprehensive example of actor-oriented programming.

See the [Working with Actor Ensembles](/tutorials/ensemble.md) tutorial
for more information about how to work with actor ensembles.

See the
[Actors](/reference/std/actor.md) package documentation for more
details in the API available for programming and interacting with
actors.


### HTTP requests

Gerbil provides a simple interface for making http(s) requests,
inspired by python's requests library.
Here is an example for how to use the library:
```scheme
> (import :std/net/request)
> (def req (http-get "freegeoip.net/json/8.8.8.8"))
> (request-status req)
200
> (request-text req)
"{\"ip\":\"8.8.8.8\",\"country_code\":\"US\",\"country_name\":\"United States\",\"region_code\":\"CA\",\"region_name\":\"California\",\"city\":\"Mountain View\",\"zip_code\":\"94040\",\"time_zone\":\"America/Los_Angeles\",\"latitude\":37.3845,\"longitude\":-122.0881,\"metro_code\":807}\n"
> (hash->list (request-json req))
((country_name . "United States")
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
```scheme
(def (read-json (port (current-input-port)) ...)
(def (string->json-object str) ...)
(def (write-json obj (port (current-output-port))) ...)
(def (json-object->string obj) ...)
```

The mapping of Scheme Objects to JSON objects is similar to other Scheme JSON libraries.
The `read-json` procedure constructs primitive objects (strings, numbers, lists, symbol hashes).
The `write-json` writes JSON objects with the JSON external data representation.
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
The library supports parsing and querying with Oleg's SXML/SSAX/SXPath and
provides additional facilities for processing SXML.

If you want to use `libxml2` library for parsing real world HTML,
you can install the [gerbil-libxml](https://github.com/mighty-gerbils/gerbil-libxml)
with
```shell
$ gerbil pkg install github.com/mighty-gerbils/gerbil-libxml
```

For example, here is a parse of the bing front page without scripts,
style, and CDATA:
```scheme
> (import :std/net/request :clan/xml/libxml)
> (def req (http-get "http://hackzen.org"))
> (parse-html (request-text req) filter: '("script" "style" "CDATA"))
(*TOP* (html (head (title "(hackzen.org)")
                   (link (@ (rel "stylesheet") (type "text/css") (href "style.css"))))
             (body "\n    "
                   (h1 (@ (id "header")) "(hackzen.org)")
                   "\n    "
                   "\n    "
                   (div (a (@ (href "http://xkcd.com/297/")) (img (@ (src "parens.png")))))
                   "\n    "
                   (br)
                   (div (a (@ (href "robots.html")) "(robots)"))
                   "\n    "
                   (div (a (@ (href "gerbil/index.html")) "(gerbils)"))
                   "\n    "
                   (div (a (@ (href "humans.html")) "(humans)"))
                   "\n    "
                   (div (a (@ (href "nic9/index.html")) "[N1C#09]"))
                   "\n    "
                   (br))))
```
### Web Applications

Gerbil offers two options to support web applications:
- fastcgi with a rack-style interface in `:std/web/rack`.
- an embedded http server in `:std/net/httpd`.

The rack/fastcgi server has been in the standard library since early
releases of Gerbil and has a very simple interface familiar from other
languages. It works with standard ports so it supported earlier
versions of Gambit which didn't have raw devices.

The embedded http server was first introduced in Gerbil v0.12 and
utilizes raw devices. It is significantly faster and offers a low
level interface oriented towards API programming, and is by now the
canonical (and recommended) way to write web applications.

#### Web programming with rack/fastcgi

This is the obligatory hello web example:
```scheme
(import :std/web/rack)
(def (respond env data)
  (values 200 '((Content-Type . "text/plain")) "hello, world\n"))
(start-rack-fastcgi-server! "127.0.0.1:9000" respond)
```

The fastcgi web handler is started with `start-rack-fastcgi-server!` from
the `std/web/rack` library module. The procedure accepts an address where
it will listen for fastcgi requests and a handler procedure.
The handler accepts two arguments, a hashtable which contains the `CGI`
request environment and the data attached to the request as a `u8vector`.
The handler returns 3 values: the status code for the response, the
`HTTP` headers as an associative list, and the content which can be a `string`,
`u8vector` or an iterable yielding a stream of `string` or `u8vector` data.

Here is a more complex example that prints all request variables to
the response:
```scheme
(def (respond env data)
  (values 200 '((Content . "text/html")) (print-headers env)))

(def (print-headers env)
  (lambda ()
    (yield "<pre>\n")
    (for ((values key val) env)
      (yield (format "~a: ~a\n" key val)))
    (yield "</pre>\n")))
```

#### Web programming with the embedded httpd

Here is the hello world example using the embedded httpd:
```scheme
(import :std/net/httpd)

;; start the httpd
(def httpd
  (start-http-server! "127.0.0.1:8080"))

;; define a handler
(def (hello-handler req res)
  (http-response-write res
                       200                                ; status
                       '(("Content-Type" . "text/plain")) ; headers
                       "hello, world\n"))

;; register the handler
> (http-register-handler httpd "/hello" hello-handler)
```

Here, we start an httpd server, which is a background thread serving
HTTP requests. We then register a handler for the `/hello` path, which
will serve all requests for `/hello` and subpaths.

The handler is a function that accepts two arguments: a request and a
response. This handler does not read the response body, and simply
responds with hello world with a single `http-response-write` call.

We can see the handler at work with curl:
```
$ curl http://localhost:8080/hello
hello, world
```

For more examples of httpd handlers, see the [httpd tutorial](/tutorials/httpd.md).

### Databases

Gerbil includes builtin support for SQL databases (SQLite, PostgreSQL) in the
standard library.

We also provide external packages with drivers for
[MySQL](https://github.com/mighty-gerbils/gerbil-mysql) and key-value
stores ([LevelDB](https://github.com/mighty-gerbils/gerbil-leveldb),
[LMDB](https://github.com/mighty-gerbils/gerbil-leveldb)).

#### SQL Databases

The `:std/db/dbi` library provides the implementation of the
database interface, while individual modules (`:std/db/sqlite`,
`:std/db/postgresql`)  provide the drivers for particular databases.

Here is an example of using the dbi interface with SQLite.
First, the necessary imports and a connection to an in-memory database:
```scheme
> (import :std/db/dbi :std/db/sqlite)
> (def db (sql-connect sqlite-open ":memory:"))
```

Then we create a simple table with `sql-eval`, which evaluates an SQL statement:
```scheme
> (sql-eval db "CREATE TABLE Users (FirstName VARCHAR, LastName VARCHAR, Secret VARCHAR)")
```

Let's insert some data in our table, using prepared statements:
```scheme
> (def insert (sql-prepare db "INSERT INTO Users (FirstName, LastName, Secret) VALUES (?, ?, ?)"))
> (sql-txn-begin db)
> (sql-bind insert "John" "Smith" "very secret")
> (sql-exec insert)
> (sql-bind insert "Marc" "Thompson" "oh so secret")
> (sql-exec insert)
> (sql-txn-commit db)

```

And finally a query:
```scheme
> (def users (sql-prepare db "SELECT FirstName, LastName FROM Users"))
> (sql-query users)
(#("John" "Smith") #("Marc" "Thompson"))
```

We can also iterate on the results of a query:
```scheme
> (import :std/iter)
> (for (#(FirstName LastName) (in-sql-query users))
    (displayln "First name: " FirstName " Last name: " LastName))
First name: John Last name: Smith
First name: Marc Last name: Thompson
```

And we are done, we can close our database connection:
```scheme
> (sql-close db)
```

#### Key-Value Stores

The [gerbil-leveldb](https://github.com/mighty-gerbils/gerbil-leveldb) package provides support for [LevelDB](https://en.wikipedia.org/wiki/LevelDB),
while the [gerbil-lmdb](https://github.com/mighty-gerbils/gerbil-lmdb) package provides support for [LMDB](https://en.wikipedia.org/wiki/LMDB).

You can install these packages using the `gerbil pkg` tool:
```shell
# To install the leveldb driver
$ gerbil pkg install github.com/mighty-gerbils/gerbil-leveldb

# To install the lmdb driver
$ gerbil pkg install github.com/mighty-gerbils/gerbil-lmdb
```

For example, here we use the LevelDB package for some simple operations:
```scheme
> (import :clan/db/leveldb
          :std/sugar)
> (def db (leveldb-open "/tmp/leveldb-test.db"))

;; let's put some values
> (leveldb-put db "abc" "this is the value of abc")
> (leveldb-put db "def" "this is the value of def")

;; we can retrieve them -- objects are always stored as u8vectors
> (displayln (bytes->string (leveldb-get db "abc")))
this is the value of abc

;; let's iterate and print the contents of the store
> (let (itor (leveldb-iterator db))
    (leveldb-iterator-seek-first itor)
    (while (leveldb-iterator-valid? itor)
      (displayln (bytes->string (leveldb-iterator-key itor))
                 " => "
                 (bytes->string (leveldb-iterator-value itor)))
      (leveldb-iterator-next itor))
    (leveldb-iterator-close itor))
abc => this is the value of abc
def => this is the value of def

;; we can do the same with a for loop
> (for ((values key val) (in-leveldb db))
    (displayln (bytes->string key)
               " => "
               (bytes->string val)))
abc => this is the value of abc
def => this is the value of def

;; Let's delete a value
> (leveldb-delete db "abc")
> (leveldb-get db "abc")
#f

;; we are done, let's close the db
(leveldb-close db)
```

The LMDB library is covered in in the [Key-Value Store Server tutorial](/tutorials/kvstore.md).
