# Common Syntactic Sugar

The `:std/sugar` library provides common syntactic sugar and is used
throughout the standard library. Note that this module has no runtime
footprint, it only defines macros.

::: tip To use the bindings from this module:
```scheme
(import :std/sugar)
```
:::

## defrule
```scheme
(defrule (name <pattern> ...) [<condition>] <expansion>)
```

For the simplest macros that fit with a single expansion rule,
`defrule` provides a short-hand compared to writing a `defrules` with a single rewrite rule.

::: tip Examples:
```scheme
> (import :std/sugar :std/format)
> (defrule (show var ...) (begin (printf "  ~a = ~s\n" 'var var) ...))
> (define-values (x y z) (values 1 [2 3] "4 5"))
> (show x y z)
  x = 1
  y = (2 3)
  z = "4 5"
```
:::

## try
```scheme
(try
  body ...
  [<catch-clause> ...]
  [<finally-clause>])

catch-clause:
  (catch predicate => K)          ; K is a continuation function of 1 argument
  (catch (predicate var) expr ...)
  (catch (var) expr ...)
  (catch _ expr ...)

finally-clause:
  (finally expr ...)
```

Evaluates body with an exception catcher and an unwind finalizer.

::: tip Examples:
```scheme
> (import :std/error)
> (def (global-symbol-bound? sym)
    (try (eval sym) #t
      (catch (unbound-global-exception? e) #f)))
> (global-symbol-bound? 'list)
#t
> (global-symbol-bound? 'this-symbol-is-unbound)
#f

> (def depth 0)
> (def (in-ctx f)
    (try
      (set! depth (1+ depth))
      (f)
      (finally (set! depth (1- depth)))))
> depth
0
> (in-ctx (cut displayln depth))
1
> (in-ctx (cut error "foo"))
ERROR "foo" ...
> depth
0
```
:::

## with-destroy
```scheme
(with-destroy obj body ...)
```

Evaluates body with an unwind finalizer that invokes `{destroy obj}`.

::: tip Examples:
```scheme
> (defclass A (x) transparent: #t constructor: :init!)
> (defmethod {:init! A} (lambda (self) (class-instance-init! self x: 'open)))
> (defmethod {destroy A} (lambda (self) (set! (@ self x) 'closed)))
> (let (a (A)) [(with-destroy a (A-x a)) (A-x a)])
(open closed)
> (def b (A))
> (with-destroy b (error "FOO"))
ERROR: FOO ...
> (A-x b)
closed
```
:::

## defmethod/alias
```scheme
(defmethod/alias {method (alias ...) type}
  body ...)
```

Defines a method with one or more binding aliases

::: tip Examples:
```scheme
> (defclass A ())
> (defmethod/alias {foo (bar baz) A} (lambda (self) "foo"))
> [{foo (A)} {bar (A)} {baz (A)}]
("foo" "foo" "foo")
```
:::

## using-method
```scheme
(using-method obj <method-spec> ...)
=> (begin (using-method obj <method-spec>) ...)

(using-method obj method-id)
(using-method obj (method-id method-name))
=> (def method-id (checked-bound-method-ref o 'method-name))
```

Defines local procedures for bound methods of an object.
This is very useful for avoiding method dispatch if methods of an object are
used multiple times within the lexical scope.

::: tip Examples:
```scheme
> (defclass A (x) transparent: #t)
> (defmethod {foo A} (lambda (self) (+ 10 (@ self x))))
> (def a (A x: 13))
> (using-method a foo)
> (foo)
23
> (using-method a (bar foo))
> (bar)
23
```
:::

## with-methods with-class-methods with-class-method
```scheme
(with-methods obj <method-spec> ...)
=> (begin
     (def klass (object-type obj))
     (with-class-methods klass <method-spec> ...))

(with-class-methods klass <method-spec> ...)
=> (begin
     (with-class-method klass <method-spec>) ...)

(with-class-method klass <method-spec>)
=> (def method-id (or (find-method klass 'method-name) (error ...))) ...)

method-spec:
  method-name             ; method-id is the identifier to resolve and bind
  (method-id method-name) ; method-id is the identifier to bind, resolving method-name
```

Defines local procedures for methods of an object (class).
This is very useful to avoid method dispatch _and_ implicit allocation from
method application if the methods of an object (class) are used multiple times
within the lexical scope.

::: tip Examples:
```scheme
> (defclass C (c) transparent: #t)
> (defmethod {foo C} (lambda (self) (+ 10 (@ self c))))
> (defmethod {frob C} (lambda (self (increment 1)) (pre-increment! (@ self c) increment)))
> (def c (C c: 10))
> (with-methods c foo (frobnicate frob))
> (foo c)
20
> (frobnicate c)
11
> (frobnicate c)
12
> (with-class-methods C::t (fuzz foo) frob)
> (fuzz c)
22
> (frob c)
13
> (with-class-method C::t (baz foo))
> (baz c)
23
```
:::

## while
```scheme
(while test body ...)
```

Evaluates body in a loop while the test expression evaluates to true.

::: tip Examples:
```scheme
> (import :std/misc/number)
> (def vector-ref-set! vector-set!)
> (def a #(1 2 3 4 5 6))
> (def i 5)
> (while (<= 0 i)
    (increment! (vector-ref a i))
     (decrement! i))
> a
#(2 3 4 5 6 7))
```
:::

## until
```scheme
(until test body ...)
```

Evaluates body in a loop until the test expression evaluates to true.

::: tip Examples:
```scheme
> (import :std/misc/number)
> (def vector-ref-set! vector-set!)
> (def a #(2 3 4 5 6 7))
> (def i 0)
> (until (= i (vector-length a))
    (increment! (vector-ref a i))
    (increment! i))
> a
#(3 4 5 6 7 8)
```
:::

## hash
```scheme
(hash (key val) ...)
```

Construct a hash table; the keys are quasiquoted while the values are evaluated.

::: tip Examples:
```scheme
> (import :std/sort :std/misc/symbol)
> (def key 'aaa)
> (def t (hash (a 1) (,key 2) (k (+ 10 13))))
> (hash->list/sort t symbol<?)
((a . 1) (aaa . 2) (k . 23))
```
:::

## hash-eq
```scheme
(hash-eq (key val) ...)
```

Like `hash`, but constructs hash-eq table.

## hash-eqv
```scheme
(hash-eqv (key val) ...)
```

Like `hash`, but constructs hash-eqv table.

## let-hash
```scheme
(let-hash hash body ...)
```

Evaluates the body within a scope where identifier references starting with a `.`
resolve as hash references.

More specifically, the macro rebinds `%%ref` so that identifiers starting with a `.`
are resolved with the following rules:
- `.x  -> (hash-ref hash 'x)` ; strong accessor
- `.?x -> (hash-get hash 'x)` ; weak accessor
- `..x -> (%%ref .x)`         ; escape

::: tip Examples:
```scheme
> (def .c 4)
> (def h (hash (a 1) (b 2) (c 3)))
> (let-hash h [.a .?b ..c .?d])
(1 2 4 #f)
```
:::

## awhen
```scheme
(awhen (id test) body ...)
```

Anaphoric `when`. Evaluates and binds *test* to *id*. Evaluates *body ...* if
*test* is not `#f`. Otherwise, returns `#!void`.

::: tip Examples:
```scheme
> (import :std/text/basic-parsers)
> (def (foo c) (awhen (v (char-ascii-digit c)) (* v v)))
> (foo #\3)
9
> (foo #\a)
```
:::

## chain
```scheme
(chain expression ...)

<expression>:
  proc                        ; unary procedure
  (proc arg* ...)             ; must contain exactly one <> symbol
  (var (proc arg1 arg* ...))  ; var supports destructuring

(chain <> (expression) ...)
=> (lambda (var) (chain var (expression) ...))
```

`chain` rewrites passed expressions by passing the previous expression
into the position of the `<>` diamond symbol. In case a previous expression
should be used in a sub-expression, or multiple times, the expression can be
prefixed with a variable (supports destructuring).

When the first expression is a `<>`, chain will return a unary lambda.

::: tip Examples:
```scheme
> (chain "stressed"
    string->list
    reverse
    list->string
    (string-append "then have some " <>))
"then have some desserts"

> (chain (random-integer 10)
    (n (if (> n 5) n 0)))
7

> (def foobar
    (chain <>
      ([_ . rest] (map number->string rest))
      (string-join <> ", ")
      (string-append <> " :)")))

> (foobar [0 1 2])
"1, 2 :)"
```
:::

## is
```scheme
(is [proc] v-or-pred [test: equal?]) -> procedure
(is v [test: equal?])                -> procedure

  proc      := optional unary procedure returning one value
  v-or-pred := if the first argument is a proc, the second one can be a predicate
  test      := optional test procedure, defaults to equal?
```

`is` converts a given value into a predicate testing for the presence of the
given value. Optionally a transforming procedure can prefix the value, which
can in this case also be a procedure. This allows to 'get' a value out of a
compound data structure before comparison (first map, then test).
For `numbers`, `char` and `string` specialized procedures are used automatically
if passed to the macro as value and not as variable. Alternatively, the
`test:` keyword can be used to supply a test, the default is `equal?`.

::: tip Examples:
```scheme
> ((is "a") "a")
#t

> (def alist '((a . 2) (b . 5) (c . 6)))
> (find (is cdr 5) alist)
(b . 5)

> (filter (is file-type 'directory) (directory-files))
("Documents" "Pictures" "Videos" "Music")
```
:::


## defrule
```scheme
(defrule (name <pattern> ...) [<condition>] <expansion>)
```

For the simplest macros that fit with a single expansion rule,
`defrule` provides a short-hand compared to writing a `defrules` with a single rewrite rule.

::: tip Examples:
```scheme
> (import :std/sugar :std/format)
> (defrule (show var ...) (begin (printf "  ~a = ~s\n" 'var var) ...))
> (define-values (x y z) (values 1 [2 3] "4 5"))
> (show x y z)
  x = 1
  y = (2 3)
  z = "4 5"
```
:::

## defsyntax/unhygienic
```scheme
(defsyntax/unhygienic (m-id stx) body ...)
(defsyntax/unhygienic m-id f-expr)
```

`defsyntax/unhygienic` is a variant of `defsyntax`, with similar syntax,
that allows you to define a macro `m-id` that is bound to a tweaked variant
of the function `f-expr` or `(lambda (stx) body ...)` such that
it can introduce identifiers in the context in which it is invoked.

[Faré: I admit the precise semantics of `defsyntax/unhygienic` is beyond
my understanding of how hygienic macros works. Hopefully, I can get an explanation
from the author Alex Knauth, or from another Racket wizard or macro guru.]

::: tip Examples:
```scheme
> (def aa 22)
> (defsyntax/unhygienic (double-id ctx)
    (syntax-case ctx () ((_ x) (stx-identifier #'ctx #'x #'x))))
> (double-id a)
22
```
:::

## with-id, with-id/expr
```scheme
(with-id [ctx] (<id-spec> ...) body body+ ...)
(with-id/expr [ctx] (<id-spec> ...) body body+ ...)
```

`with-id` and `with-id/expr` are macros that allow you to
unhygienically generate one or many identifiers
in the explicitly or implicitly given lexical context `ctx`,
such that the `body body+ ...` of the macro can then define or refer to
these identifiers so they are visible in the rest of the context `ctx`.

The general form of an identifier specification is
`(id str1 str2 ...)` where
`id` is the identifier to be referenced in the `body body+ ...` of the macro,
and `str1 str2 ...` are expressions that may evaluate to
strings, symbols, identifiers, etc., that will be converted to strings, concatenated,
interned in a symbol then associated with the lexical context `ctx`,
as per `stx-identifier` from the gerbil prelude,
such that mentions of `id` in the body are expanded to mentions
of the computed identifier in the target context.

A simplified case of identifier specification is `id` or `(id)` which is
the same as `(id 'id)` wherein the identifier stands for itself to be used
in the `body` as refering to the same-named identifier associated to `ctx`.

If the lexical context `ctx` isn't explicitly provided as an identifier,
the context where `with-id` itself appears is used;
this implicit lexical context is fine for simple direct uses of `with-id`
in the lexical context where the identifiers are to be looked up or defined.
However, for more advanced uses where `with-id` is itself used as a helper
deep within a macro that wants to use or define computed identifiers,
you will need to explicitly give it the target context
in which to compute identifiers:
whichever outermost macro is directly invoked in the target lexical context
must capture that environment and pass it down every intermediate macro
all the way to `with-id`.
These macros may possess a form where the context argument is implicit,
but *must* possess a form where it is explicit.

Now, `with-id` side-effects the environment to define the identifiers,
and repeated uses of `with-id` with the same context and the same identifiers
can cause weird clashes with unhelpful error messages saying
`Syntax Error: Bad syntax; illegal expression`.
For this reason, use `with-id/expr` for read accesses to identifiers:
it creates a new scope every time, so you cannot create new visible definitions
but also will not cause clashes with unhelpful error messages.

::: tip Examples:
```scheme
;; Defining "variables" A, B, C, D to actually be
;; accessors for positions in a vector.
> (def mem (make-vector 5 0))
> (defrule (defvar name n)
    (with-id name ((@ #'name "@")
                   (get #'name)
                   (set #'name "-set!"))
      (begin
        (def @ n)
        (def (get) (vector-ref mem @))
        (def (set x) (vector-set! mem @ x)))))
> (begin (defvar A 0) (defvar B 1) (defvar C 2) (defvar D 3))
> (begin (A-set! 42)
         (B-set! (+ (A) 27))
         (increment! (C) 5)
         (D-set! (post-increment! (C) 18)))
> mem
#(42 69 23 5 0)
> C@
2

;;; Using with-id to refer to a computed name
> (defrule (var-index var) (with-id/expr var ((@ #'var '@)) @))
> [(var-index A) (var-index B) (var-index C) (var-index D)]
(0 1 2 3)
> (defrule (vars-index var ...) (list (var-index var) ...))
> (vars-index A B C D)
(0 1 2 3)

> (defrule (bad-var-index var) (with-id var ((@ #'var '@)) @))
> [(bad-var-index A) (bad-var-index B) (var-index C) (var-index D)]
*** ERROR IN ...
--- Syntax Error: Bad syntax; illegal expression
... form:   ... detail: (%#define-syntax m (compose syntax-local-introduce (lambda (stx2) (with-syntax ((@ (stx-identifier (stx-car (stx-cdr stx2)) (list (syntax A) '@)))) (syntax (... @)))) syntax-local-introduce))
```
:::

## if-let
```scheme
(if-let ((id test) ...) then else)
(if-let (id test) then else)
```

Variant of `if` that sequentially evaluates each `test` and if it passes
(returns a true value, anything but `#f`) binds the identifier `id` to it,
that can be then seen by all subsequent tests and by the `then` clause
that is evaluated if all tests pass.
However, if any test fails (returns `#f`), then
the `else` clause is evaluated, which does not see the identifiers.

A single `(id test)` binding can be done with one fewer levels of parentheses.

The `else` clause is mandatory.
Use `when-let` instead for a variant where the `else` clause is always `(void)`.

NB: This `if-let` binds identifiers sequentially like `let*`, short-circuits
like `and`, and does not bind any of the identifiers in the `else` clause,
each of which design choices is opposite to the one made in
the `if-let` offered in Common Lisp by Alexandria and UIOP.

::: tip Examples:
```scheme
> (import :std/text/basic-parsers)
> (def (foo a b c)
    (if-let ((x (char-ascii-digit a))
             (y (char-ascii-digit b))
             (z (char-ascii-digit c)))
      (+ x y z)
      -1))
> (foo #\1 #\2 #\3)
6
> (foo #\1 #\A #\3)
-1
```
:::

## when-let
```
(when-let bindings body ...)
```
Generalization of `awhen` where multiple bindings are allowed, and
specialization of `if-let` where the else clause is `(void)`.

::: tip Examples:
```scheme
> (import :std/iter :std/misc/list-builder)
> (def h (hash (1 "foo") (3 "bar") (4 "baz")))
> (with-list-builder (collect)
    (for (n (in-range 1000))
      (when-let ((p (power-of-5 n))
                 (x (hash-get h p)))
        (collect [n x]))))
((5 "foo") (125 "bar") (625 "baz"))
```
:::

## defcheck-argument-type
```scheme
(defcheck-argument-type <type>...)
```
For each specified `<type>`, define a macro `check-argument-<type>`
that checks that each of its argument is of the given `<type>` or
else raises a `ContractViolation`
as per [`check-argument`](errors.md#check-argument).

::: tip Examples:
```scheme
> (import :std/number :std/iter)
> (defcheck-argument-type integer vector)
> (def (foo v n start (end #f))
    (check-argument-vector v)
    (unless end (set! end (vector-length v)))
    (check-argument-integer n start end)
    (for (i (in-range start end))
      (increment! (vector-ref v i) n)))
> (def v #(1 2 3 4 5 6))
> (foo v 10 2)
> v
#(1 2 13 14 15 16)
> (foo '(1 2 3) 1 0)
*** ERROR IN ... [ContractViolation]: contract violation
--- irritants: v (vector? v) "bad argument; expected vector" (1 2 3)
> (foo #(1 2 3) 1 "0")
*** ERROR IN ... [ContractViolation]: contract violation
--- irritants: start (integer? start) "bad argument; expected integer" "0"
```
:::

## syntax-eval stx
```scheme
(syntax-eval expression)
```
Evaluate the `expression` during syntax-expansion, and
use the result as source.

::: tip Examples:
```scheme
;; Low-level language users like to show off their "fast" O(n) fibonacci.
;; Here is a faster O(1) implementation that supports numbers they don't.
> (import (for-syntax :std/misc/list-builder))
> (def (constant-time-fibonacci n)
    (def precomputed (syntax-eval (list->vector
      (with-list-builder (collect)
        (let loop ((a 0) (b 1))
          (when (<= (integer-length a) 128)
            (collect a) (loop b (+ a b))))))))
    (vector-ref precomputed n))
> (constant-time-fibonacci 186)
332825110087067562321196029789634457848

> (def aa 1)
> (syntax-eval (string->symbol "aa"))
1
```
:::

## syntax-call
```scheme
(syntax-call expression)
(syntax-call expression ctx . args)
```
During syntax-expansion, evaluate the `expression` and apply the resulting function
to the context identifier `ctx` and the arguments.
If `ctx` is not provided, use the `syntax-call` identifier from the call itself.

The `expression` can only use functionality imported `for-syntax`.
If may inspect the source location using `AST-source` and visit ancillary source files, etc.

::: tip Examples:
```scheme
> (import (for-syntax :std/stxutil))
> (def bar 23)
> (def foofoo 42)
> (syntax-call (lambda (ctx . args) (stx-identifier ctx args args)) bar foo)
42
```
:::

## defsyntax-call
```scheme
(defsyntax-call (macro ctx formals ...) body ...)
```

Define a `macro` that takes a lexical context `ctx` and other argument `formals ...`
and expands into the `body ...`.
The context `ctx` is taken as first argument of the `macro` invocation, or,
if the formals have a fixed size and one argument is otherwise missing,
from the `macro` invocation itself.

::: tip Examples:
```scheme
;;; This is how this-source-file is defined in :std/source
> (begin-syntax
    (def (stx-source-file stx)
      (alet (loc (stx-source stx))
        (vector-ref loc 0))))
> (defsyntax-call (this-source-file ctx)
    (stx-source-file ctx))

;;; Now in some script, you can use:
(import :std/source)
(def $0 (this-source-file))
```
:::
