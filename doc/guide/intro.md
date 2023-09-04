# An Introduction to Gerbil

This is a quick introductory guide to Gerbil for seasoned schemers;
it assumes familiarity with scheme and exposure to a couple of
different implementations.

In the following, `$` is the shell prompt and `>` the gxi
interpreter prompt.

## Using Gerbil
The Gerbil interpreter is `$GERBIL_HOME/bin/gxi`, and the compiler is
`$GERBIL_HOME/bin/gxc`.

If you want an interactive Gerbil shell just execute the interpreter
directly by running `gxi`.


## Hello world
Add `$GERBIL_HOME/bin` to your path and invoke the interpreter
for the obligatory "hello world":
```
$ export PATH=$PATH:$GERBIL_HOME/bin
$ gxi
> (displayln "hello world")
hello world
```

The "hello world" script:
```
$ cat > hello.ss <<EOF
#!/usr/bin/env gxi

(def (main . args)
  (displayln "hello world"))
EOF
$ chmod +x hello.ss
$./hello.ss
hello world
```

The "hello world" executable:
```
$ cat > gerbil.pkg <<EOF
(package: example)
EOF

$ cat > hello.ss <<EOF
(export main)
(def (main . args)
  (displayln "hello world"))
EOF

$ gxc -O -exe -o hello hello.ss
$ ./hello
hello world
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
```scheme
(def (a-function x . _) ; accepts 1 or more ignored args
 (+ x 1))
> (a-function 1 2)
=> 2
```

Apart from cons and list, pairs and lists can also be
constructed with short-hand syntax using square brackets:
```scheme
; cons a pair
> [1 . 2]
=> (1 . 2)
; cons a list
> [1 2 3]
=> (1 2 3)
```

The short-hand syntax also supports list splicing using
using the ellipsis `...`:
```scheme
; splice nested list
> [1 2 [3 4 5] ... 6]
=> (1 2 3 4 5 6)
```

Bindings can be mutated with `set!` as usual.
```scheme
> (def a #f)
> (set! a 'a)
> a
=> 'a
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
```scheme
(defstruct point (x y))
(defstruct (point-3d point) (z))
> (make-point-3d 1 2 3)
=> #<point-3d>
```

For each struct `defstruct` defines a constructor, a type predicate,
a runtime type descriptor, accessors and mutators, expansion time
struct info and a match expander.

So:
```scheme
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
=> 0

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
=> #t
> (A-x d)
=> 1
> (B? d)
=> #t
> (C? d)
=> #t
> (D? d)
=> #t
> (type-descriptor-mixin D::t)
=> (#<type #5 B> #<type #6 C> #<type #7 A>)

```

#### Sealing Classes

As of `Gerbil-v0.16-DEV-331-g7b454eea`, Gerbil supports _sealing_ for
_final_ class (and struct) types.

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

$ gxc -static -O -exe -o clasess-test classes-test.ss
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
=> 'pair
> (my-destructurer (make-point 1 2))
a 2d point (1 2)
=> 'point-2d
> (my-destructurer (make-point-3d 1 2))
a 3d-point (2 0 0)
=> 'point-3d
```

#### Destructuring Binds
Gerbil's `match` provides a shorthand syntax for match lambdas:
```scheme
(def car+cdr (match <> ([a . b] (values a b))))
> (car+cdr [1 2 3])
=> values 1 '(2 3)
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
=> 4
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
=> (foo . 1)
> (match my-foo ((foo x) x))
=> 1
> (def my-bar (cons 'bar 2))
> (match my-bar ((foo x) x) (else 'not-a-foo))
=> not-a-foo
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
=> #<error-exception #5>
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
`$GERBIL_HOME/lib/std/text` directory.
The namespace prefix for identifiers defined in the module is
`std/text/json#`.

When writing a library module, you should choose an appropriate package
for your code.
The package is specified with a `package: package-path` declaration
at the top of a module. It effects the namespace of the module and
placement of compiled code.

By default library modules are looked up in the `$GERBIL_HOME/lib` and
`~/.gerbil/lib` directories. You can specify additional directories to
be searched with the `GERBIL_LOADPATH` environment variable.  You can
also modify the load-path at runtime with `add-load-path`.

#### Building Libraries

This is best illustrated with an example, so let's package the `A` module
above into a library.

For this, we designate `example` as the library package,
and then give the module a more appropriate name.
Here, we call it `util` with the expectation that the library
and module will grow further:
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

You can now compile the library module by invoking `gxc` and import it as
`:example/util`:

```
$ gxc example/util.ss
$ gxi
> (import :example/util)
```

By default, the compiler will place compiled modules in `~/.gerbil/lib`.
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
  (displayln "hello world"))
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
hello world
```

If you want the compiler to perform full program optimization, then you can
specify the `-full-program-optimization` flag:
```
$ gxc -O -full-program-optimization -exe -o hello example/hello.ss
$ ./hello
hello world
```

You can also compile the module dynamically so that it can be executed with the `gerbil` program:
```
$ gxc -O example/hello.ss
$ gerbil :example/hello
hello world
```

The difference between the 3 executable compilation modes can be summarized as follows:
- By default, an compiles with separate module compilation and links to the precompiled
  gerbil library (`libgerbil`).
  If the system was configured with `--enable-shared`, then this
  will be a shared library; otherwise it will be a static library archive.
  Note that the executable may have some additionl dynamic library
  dependencies from stdlib foreign code , and also links to `libgambit` which will be
  a shared library when the system is configured with `--enable-shared`.
- When `-full-program-optimization` is passed to `gxc`, then the compiler will perform
  full program optimization with all gerbil library dependencies. This will result
  in better performance, albeit at the cost of increased compilation time;
  this can be minutes for complex programs, while
  separately linked executables compile in second(s). Furthermore, because
  dependencies are compiled in together, you can apply declarations like `(not safe)`
  to the whole program using the `-prelude` directive. This can result
  in potentially significant performance gains at the expense of safety.
  Note that an executable compiled with full program optimization still links to `libgambit`.
- An executable module can also be compiled as a plain dynamic module and then
  executed with the `gerbil` universal binary.
  This dynamic mode of executables is useful for development, as they compile
  instantly and do not need to be recompiled while you are working on their
  dependencies.

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
[core prelude](https://github.com/vyzo/gerbil/tree/master/src/gerbil/prelude/core.ss).
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

As of `Gerbil-v0.12-DEV-845-g39f54e4`, you can elide the `package:` and
`prelude:` declarations in your module and have them automatically deduced
from the file system layout of your library/package.
You can do so by creating a `gerbil.pkg` file in the root of your library,
which contains a property list.

The `package:` property specifies the prefix package at the root of your
hierarchy. The package of individual modules will extend this prefix to
mirror the directory structure.

The `prelude:` property specifies an implicit custom prelude for s-expression
based languages.

If the gerbil.pkg file is empty, then it is treated as an empty
property list.  This allows you to simply touch a gerbil.pkg at the
root of your source hierarchy when you don't need a custom prelude and
use a directory structure that mimics your logical package structure.

### Library Relative Module Paths

As of `Gerbil v0.16-DEV-196-g41214a5`, you can use the dot notation to
import library modules using a relative path within a library.  Within
a library module `:A/B/C/D`, an import of `./E` will resolve to
`:A/B/C/E`, while an import of `../E` will resolve to `:A/B/E`.
Upwards traversals can be nested, so `../../E` will resolve to `:A/E`.
Downwards traversals are also possible, so `../../E/G` will resolve to
`:A/E/G`.

Note that this is merely a syntactic convenience for `import` that
allows you to refer to relative modules with a short module path and
still load a library module. Relative module paths are meaningless
outside the context of a library module.

### Core Gerbil Variants

As of `Gerbil v0.16-DEV-259-g13646d64` gerbil comes with a custom language
prelude, `:gerbil/polydactyl`, that treats square brackets as plain parentheses
-- instead of the reader expanding them to `@list` forms.
The language is otherwise the same as `:gerbil/core`.

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

### Optional Libraries

Some library modules are not built by default, because they have external
library dependencies that may not be present in your system.
The build configuration for the std library is specified in
`$GERBIL_HOME/src/std/build-features.ss`.

If you have the required libraries (documented in build-features) in your
system, you can enable building by setting the `(enable feature #f)`
statement in `build-features.ss` to `#t`. You can then build the optional
library modules by running `$GERBIL_HOME/src/build.sh stdlib`.

### Additional Syntactic Sugar

The `:std/sugar` library provides, among other macros, a `try` syntactic
form for handling exceptions in imperative style.
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
=> 3
> (my-add "a" "b")
=> "ab"
```

We can similarly define methods for user-defined types as well.
Here we define an implementation for instances of a struct `A`:
```scheme
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
=> 3
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
=> ((0 . a) (1 . b) (2 . c) (3 . d))
```

Finally, the values of an iteration can be folded to produce a value;
in this example we construct a reversed list out of an iterator
with a folding `cons`:
```scheme
> (for/fold (r []) (x (in-range 2 7))
    (cons x r))
=> (6 5 4 3 2)
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
=> 1
> (continue cort)
=> 2
> (continue cort)
=> 3
> (continue cort)
=> 'end ; coroutine end
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
=> #f                           ; after a second elapses
> (wait (sleeping-thread 5))    ; or (select [(sleeping-thread 5)])
=> #<thread #7>                 ; after the thread completes its sleep
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
=> #f ; after a second elapses
> (sync (sleeping-thread 5))
=> #<thread #7> ; after the thread completes its sleep

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
=> 'done
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

At the low-level Gerbil builds on Gambit's thread mailboxes to provide
actor-oriented programming capabilities and remote interactor
communication.

#### Messages

Gerbil's actors are threads, either in the current or remote processes
and communicate exchanging messages. Messages can be arbitrary objects,
but usually actors communicate with structured messages:
```scheme
(defstruct message (e source dest options))
(def (send dest value) ...)                       ; send raw message
(def (send-message dest value (options #f)) ...)  ; send structured message
(def (send-message/timeout dest value timeo) ...)
```
Actors process messages and events with two main macros, `<<` and `<-`.
They both synchronize on the thread's mailbox and pattern match incoming messages;
the difference is that `<<` matches on raw messages and `<-` matches on
structured message values.
Within a `<-` pattern body, the variables `@message`, `@value`, `@source`,
`@dest` and `@options` are bound from the structured message.
Within the pattern body, the `->` can be used as shorthand syntax to send messages
to `@source`.

For example, a simple echo actor:
```scheme
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
call (instances of `!call`) or a value for a previous call (`!value` or `!error`).

Protocols are defined with `defproto`, which defines structures and macros
for using the protocol interfaces, together with marshalling support.
For example, let's define an echo protocol:
```scheme
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
```scheme
(defstruct echo.hello (what))
(defsyntax-for-match !echo.hello ...)
(defrules !!echo.hello ...
```

The invocation `(!!echo.hello echo 'hello)` constructs a `!call` protocol
message with an instance of `echo.hello` and a gensymed continuation id.
It then sends the message to the `echo` actor and waits for a `!value`
or `!error` message matching the continuation. If it receives a `!value` it
returns it, and if it receives an `!error` it signals an error.

In the actor, the `(!echo.hello what k)` matches a `!call` with
the value matching `(echo.hello what)` and the continuation token
bound to `k`. The actor displays its message, and then responds by
sending a value with the `!!value` macro. An error could be signalled
with the `!!error` macro.

The syntax for `!!value` and `!!error` is similar: the take
an optional destination (which defaults to `@source`), a value
or error message and the continuation token:
```scheme
(!!value [@source] val token)
(!!error [@source] msg token)
```

#### Streams

In addition to calls and events, actors can also open streams.
A stream is like a call, but it returns multiple values using
`!!yield` until the stream's end or an error occurs.

For example, the following server generates a stream of numbers as
specified by the argument:
```scheme
(defproto simple-stream
  stream: (count N))

(def (my-simple-stream)
  (def (stream dest N k)
    (let lp ((n 0))
      (if (< n N)
        (begin
          (!!yield dest n k)
          (!!sync dest k)               ; request sync
          (<- ((!continue k)            ; flow control
               (lp (1+ n)))
              ((!close k)               ; stream closed
               (!!end dest k))
              ((!abort k)               ; stream aborted
               (void))))
        (!!end dest k))))

  (let lp ()
    (<- ((!simple-stream.count N k)
         (spawn stream @source N k)
         (lp)))))

(def my-stream (spawn my-simple-stream))
```

Yielded values can be processed as messages, or with the `!!pipe`
macro which constructs a vector pipe and pipes the yielded values
through it in a background thread.

Here is an example that uses a pipe:
```scheme
> (let ((values inp close) (!!pipe (!!simple-stream.count my-stream 5)))
    (for (x inp)
      (displayln x)))
0
1
2
3
4
```

The pipe may be convenient, but it forgoes end-to-end back pressure
and synchronization with `!!sync`. Here is the same example again,
but with explicit processing of messages through the actor mailbox:
```scheme
(let (k (!!simple-stream.count my-stream 5))
  (let lp ()
    (<- ((!yield x (eq? k))
         (displayln x)
         (lp))
        ((!sync (eq? k))
         (!!continue k)
         (lp))
        ((!end (eq? k))
         (void)))))
```

#### RPC

The interaction so far has been local. In order to interact with
remote actors, Gerbil provides an rpc protocol and server for
handling the necessary network interaction.

Using rpc is very simple: An rpc server can be constructed
with `start-rpc-server!` which accepts an optional server address
to bind and a wire protocol implementation with a keyword.

In one shell:
```scheme
(def (my-echo rpcd)
  (rpc-register rpcd 'echo echo::proto)
  (let lp ()
    (<- ((!echo.hello what k)
          (displayln @source " says " what)
          (!!value what k)
          (lp)))))
(def serverd (start-rpc-server! "127.0.0.1:9999"))
(def echod (spawn my-echo serverd))
```
This starts an rpc server at port 9999 in the localhost.
The echo actor binds itself under the id `echo` using the
echo protocol `echo::proto` for marshalling and unmarshalling.

In a different shell, we can connect to our echo with a `remote` handle:
```scheme
(def clientd (start-rpc-server!))
(def echod (rpc-connect clientd 'echo "127.0.0.1:9999" echo::proto))
> (!!echo.hello echod 'hello)
=> 'hello
```

If your actors are well-known (application scoped), then you can globally bind
a protocol to the name with `bind-protocol!` and you don't need to specify
the protocol in `rpc-register` and `rpc-connect`:
```scheme
(bind-protocol! 'echo echo::proto)
(def clientd ...)
(def echod (rpc-connect clientd 'echo "127.0.0.1:9999"))
```

By default, a null rpc protocol is used which does no authentication
or encryption. If you intend to expose your actors to the Internet
you should use authentication and optionally encryption.

For authentication, you can generate a shared cookie with `rpc-generate-cookie!`
and start your rpc-server using the `rpc-cookie-proto`:
```scheme
$ mkdir ~/.gerbil
> (rpc-generate-cookie!)
; generates a cookie in ~/.gerbil/cookie
...
(def remoted
 (start-rpc-server! "127.0.0.1:9999"
    proto: (rpc-cookie-proto)))
...
(def locald
  (start-rpc-server! proto: (rpc-cookie-proto)))
...
```

If you also want to encrypt your communications, then use
the `rpc-cookie-cipher-proto` as `proto:` argument for your rpc
servers. On top of cookie authentication, this protocol performs
a Diffie-Hellman key exchange and then encrypts all messages with
AES/HMAC (it encrypts and then MACs).

### HTTP requests

Gerbil provides a simple interface for making http(s) requests,
inspired by python's requests library.
Here is an example for how to use the library:
```scheme
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

Optionally, when configured so, the library can also use `libxml2` to parse
real world HTML (and plain old XML).
The `libxml2` dependent components are not built by default.
You can build them by editing `std/build-features.ss` to set `(enable libxml #t)`
and rerunning the std library build script as described earlier in the guide.

For example, here is a parse of the bing front page without scripts,
style, and CDATA:
```scheme
> (import :std/net/request :std/xml/libxml)
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
### Web Applications

Gerbil offers two options to support web applications:
- fastcgi with a rack-style interface in `:std/web/rack`.
- an embedded http server in `:std/net/httpd`.

The rack/fastcgi server has been in the standard library since early
releases of Gerbil and has a very simple interface familiar from other
languages. It works with standard ports so it supports non-development
versions of Gambit which don't have raw devices.

The embedded http server is a new development in Gerbil-v0.12-DEV, and
utilizes raw devices. It is significantly faster and offers a low
level interface oriented towards API programming.

#### Web programming with rack/fastcgi

This is the obligatory hello web example:
```scheme
(import :std/web/rack)
(def (respond env data)
  (values 200 '((Content-Type . "text/plain")) "hello world\n"))
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
                       "hello world\n"))

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
hello world
```

For more examples of httpd handlers, see the [httpd tutorial](/tutorials/httpd.md).

### Databases

Gerbil includes support for SQL databases (SQLite, PostgreSQL, MySQL)
and key-value stores (LevelDB, LMDB) with the `:std/db` package.

#### SQL Databases

The `:std/db/dbi` library provides the implementation of the
database interface, while individual modules (`:std/db/sqlite`,
`:std/db/postgresql` and `:std/db/mysql`) provide the drivers for
particular databases.

Note that not all drivers are built by default, as some are FFI
drivers (SQLite, MySQL), so you will need to enable them for your
installation in `$GERBIL_HOME/src/std/build-features.ss`,
by editing it or using e.g. the `--enable-mysql` option to `./configure`,
before you build Gerbil.

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
=> (#("John" "Smith") #("Marc" "Thompson"))
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

The `:std/db/leveldb` library provides support for [LevelDB](https://en.wikipedia.org/wiki/LevelDB),
while the `:std/db/lmdb` library provides support for [LMDB](https://en.wikipedia.org/wiki/LMDB).
The libraries are not built by default, as they have foreign dependencies, so you need to
enable them for your installation in `$GERBIL_HOME/src/std/build-features.ss`,
by editing it or using e.g. the `--enable-leveldb` and `--enable-lmdb` options to `./configure`,
before you build Gerbil.

For example, here we use the LevelDB library for some simple operations:
```scheme
> (import :std/db/leveldb
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
=> #f

;; we are done, let's close the db
(leveldb-close db)
```

The LMDB library is covered in in the [Key-Value Store Server tutorial](/tutorials/kvstore.md).
