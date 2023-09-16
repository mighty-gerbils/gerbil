# Prelude Macros

These are the main macros defined by the prelude. 

## Definition Forms

### define
``` scheme
(define (id . args) body ...)
=> (define-values (id)
     (lambda% args body ...))

(define id expr)
=> (define-values (id) expr)
```

### def
``` scheme
(def (id . args) body ...)
=> (define-values (id)
     (lambda args body ...))

(def ((head . rest) . args) body ...)
=> (def (head . rest)
     (lambda args body ...))

(def id expr)
=> (define-values (id) expr)
```

Compared with `define`, which defines lambdas with the core Scheme `lambda%` form,
`def` uses the extended `lambda` form, and supports curried definitions.

### def*
``` scheme
(def* id
  (args body ....) ...)
=>
(def id
  (case-lambda (args body ...) ...))
```

::: tip Examples:
``` scheme
> (def* foo
    (()   ['no-arg])
    ((x)  ['one-arg x])
    (rest ['more-than-one rest]))

> (foo 1)
(one-arg 1)

> (foo 1 2)
(more-than-one (1 2))
```
:::

### defvalues
``` scheme
(defvalues (id ...) expr)
=> (define-values (id ...) expr)
```

### defsyntax
``` scheme
(defsyntax (id . args) body ...)
=> (define-syntax id (lambda args body ...))

(defsyntax id expr)
=> (define-syntax id expr)
```

### defrules
``` scheme
(defrules id (keyword-id ...)
  (pat [fender] body) ...)
=> (defsyntax id
     (syntax-rules (keyword-id ...)
        (pat [fender] body) ...))
```

### defalias
``` scheme
(defalias id alias-id)
=> (define-alias id alias-id)
```

## Binding Forms

### let*-values
``` scheme
(let*-values (((id ...) expr) rest ...) body ...)
=> (let-values (((id) expr))
     (let*-values rest body ...))

(let*-values () body ...)
=> (let-values () body ...)
```

### let
``` scheme
(let id ((var expr) ...) body ...)
=> ((letrec (id (lambda% (var ...) body ...))) expr ...)

(let bind body ...)
=> (let-values (bind-values) body ...)

(let (bind ...) body ...)
=> (let-values (bind-values ...) body ...)

<bind>:
 ((values id ...) expr)
 (id expr)

<bind-values>:
(((id ...) expr))
```

### let*
``` scheme
(let* (bind rest ...) body ...)
=> (let bind (let* (rest ...) body ...))

(let* () body ...)
=> (let () body ...)

```

### letrec letrec*

``` scheme
(letrec[*] bind body ...)
=> (letrec[*]-values (bind-values) body ...)

(letrec[*] (bind ...) body ...)
=> (letrec[*]-values (bind-values ...) body ...)
```

### lambda
``` scheme
(lambda (arg ...) body ...)
(lambda (arg ... . id) body)

<arg>:
 id                ; required argument
 (id default)      ; optional argument
 key: (id default) ; keyword argument
```

The extended lambda form that supports optional and keyword arguments.

### set!
``` scheme
(set! id expr)

(set! setq-macro-id expr)
=> apply setq-macro expander

(set! (setf-macro-id . args) . rest)
=> apply setf-macro expander

(set! (getf-id arg ...) expr)
=> (getf-id-set! arg ... expr)

```

And when you got bindings, you want your mutator too.
As they say, _mostly functional_.

## Common Syntactic Sugar

### and or
``` scheme
(and expr ...)
(or expr ...)
```

### case cond
``` scheme
(cond cond-clause ...)
(case case-clause ...)
```

The well known conditional macros; `case` has its extended form supporting `=>`
dispatch.


### when unless
``` scheme
(when test expr ...)
=> (if test (begin expr ...) #!void)

(unless test expr ...)
=> (if test #!void (begin expr ...))
```

### do do-while
``` scheme
(do ((var init step ...) ...)
    (test fini ...)
  body ...)

(do-while hd (test fini ...) body ...)
=> (do hd ((not test) fini ...) body ...)
```

The common iteration macro and its inverted form.

### begin0
``` scheme
(begin0 expr rest ...)
=> (let (val expr) rest ... val)
```

### rec
``` scheme
(rec id expr)
=> (letrec ((id expr)) id)

(rec (values id ...) expr)
=> (letrec ((values id ...) expr) (values id ...))

(rec (id . args) body ...)
=> (letrec (id (lambda args body ...)) id)
```

Short recursive definition form.

### alet alet* and-let*
``` scheme
(alet bind body ...)
(alet (bind ...) body ...)
(alet* bind body ...)
(alet* (bind ...) body ...)

(defalias and-let* alet*)
```
Anaphoric lets which short circuit to `#f` if any of the bindings is `#f`.

::: tip Examples:
``` scheme
> (alet ((a [1 2])
         (b #f))
    [a b])
#f

> (alet ((a [1 2])
         (b #t))
    [a b])
((1 2) #t)
```
:::

### @list
``` scheme
(@list)
=> '()

(@list :: tl)
=> tl

(@list xs ellipsis)
=> xs

(@list xs ellipsis . rest)
=> (foldr cons (@list . rest) xs)

(@list x . xs)
=> (cons x (@list . xs)))

(@list . tl)
=> tl
```

This is the reader macro for `[...]`.

### quasiquote
``` scheme
(quasiquote expr)
```

### delay
``` scheme
(delay expr)
```

The promise to eval `expr`.

### cut
``` scheme
(cut arg ...)
```

if you don't know how this works, stop and read the [SRFI](https://srfi.schemers.org/srfi-26/srfi-26.html).
Most useful little macro ever.

::: tip Examples:
``` scheme
> (filter (cut < <> 10) [1 10 2 20])
(1 2)

> (def fn (cut list 'a 'b))
> (fn)
(a b)
```
:::

### parameterize
``` scheme
(parameterize ((paremter-id expr) ...) body ...)
```

::: tip Examples:
``` scheme
> (def foo (make-parameter #f))
> (foo)
#f

> (parameterize ((foo 100))
    (foo))
100
```
:::

### let/cc let/esc
``` scheme
(let/cc id body ...)
=> (call/cc (lambda (id) body ...))

(let/esc id body ...)
=> (call/esc (lambda (id) body ...))
```

`call/esc` is really the same thing as `call/cc` in Gerbil on Gambit.

### unwind-protect
``` scheme
(unwind-protect body postlude)
```

### syntax-error
``` scheme
(syntax-error message detail ...)
```

Raises a syntax error; used for meaningful error reporting in syntax-rules macros.

## MOP Macros

### defstruct-type defclass-type
``` scheme
(defstruct-type id super make instance? type-body ...)

(defclass-type id super make instance? type-body ...)

<type-body>:
 name: id                    ; type name
 id: id                      ; type id
 constructor: method-id      ; constructor method id
 plist: expr                 ; type plist
 fields: ((getf setf) ...)   ; struct type fields
 slots: ((id getf set) ...)  ; class type slots
```

Low level struct and class type definition facilities.

### defstruct define-struct
``` scheme
(defstruct id (field ...) typedef-option ...)
(defstruct (id super) (field ...) typedef-option ...)

(defalias define-struct defstruct)

<typedef-option>:
 name: id                    ; type name
 id: id                      ; type id
 constructor: id             ; constructor method id
 final: bool                 ; #t for final types

(defstruct id (field) ...)
=> (begin
     (defstruct-type id::t #f make-id id?
       fields: ((field field-set!) ...)
       type-body ...)
     (defsyntax id ...))

(defstruct (id super) (field) ...)
=> (begin
     (defstruct-type id::t super::t make-id id?
      fields: ...
      type-body ...)
     (defsyntax id ...))
```

Canonical struct type definition macro.

### defclass define-class
``` scheme
(defclass id (slot ...) typedef-option ...)
(defclass (id super ...) (slot ...) typedef-option ...)

(defalias define-class defclass)

(defclass id (slot ...) typedef-option ...)
=> (begin
     (defclass-type id::t [] make-id id?
       slots: ((slot slot slot-set!) ...)
       type-body ...)
     (defsyntax id ...))

(defclass (id super ...) (slot ...) typedef-option ...)
=> (begin
     (defclass-type id::t [super::t ...] make-id id?
       slots: ((slot slot slot-set!) ...)
       type-body ...)
     (defsyntax id ...))
```

Canonical class type definition macro.

### defmethod
``` scheme
(defmethod {method-id type}
  expr
  [rebind: bool])
=> (begin
    (def type::method-id expr)
    (bind-method type::t 'method-id type::method-id rebind?))
```

Defines a method `method-id` for type `type`, which must be
a class or struct type.
The `:std/generic` library extends the form for generic method

### @method
``` scheme
(@method id obj arg ...)
=> (call-method obj 'id arg ...)
```
This is the reader macro for `{...}`, the method invocation operator.

### @ (slot reference)
``` scheme
(@ obj id)
=> (slot-ref obj 'id)

(@ obj id rest ...)
=> (@ (@ obj id) rest ...)
```

Slot reference macro.

### @-set!
``` scheme
(set! (@ obj id ...) val)
=> (@-set! obj id ... val)

(@-set! obj id val)
=> (slot-set! obj 'id val)

(@-set! obj id rest ... last val)
=> (@-set! (@ obj id rest ...) last val)
```

Slot mutation macro.

## Pattern Matching

### match
``` scheme
(match expr
  (pattern body ...) ...
  [(else body ...)])

<pattern>:
 (? test)                          ; predicate test with the `?` predicate constructor
 (? test pattern)                  ; test and match a pattern
 (? test => pattern)               ; test and match a pattern on the value of the test
 (? test :: proc => pattern)       ; test and match with a filter
 (and pattern ...)                 ; match all patterns
 (or pattern ...)                  ; match any pattern
 (not pattern)                     ; negated match
 (cons pattern1 pattern2)          ; destructure a pair like cons
 (cons* pattern ... pattern-tail)  ; destructure a list like cons*
 [pattern ...]                     ;
 (@list pattern ...)               ; destructure a list like @list
 (box pattern)                     ;
 #&pattern                         ; destructure a box
 (values pattern ...)              ; destructure a values tuple
 (vector pattern ...)              ;
 #(pattern ...)                    ; destructure a vector
 (struct-id pattern ...)           ; destructure a struct
 (class-id (slot pattern) ...)     ; destructure a class
 (eq? val)                         ; match eq? to val
 (eqv? val)                        ; match eqv? to val
 (equal? val)                      ; match equal? to val
 (quote expr)                      ; match eq?/eqv?/equal? to a quoted value
 (quasiquote datum)                ; destructure with quasiquote
 (apply getf pattern)              ; applicative destructuring
 (match-macro arg ...)             ; apply match macro expander
 _                                 ; match any and ignore
 id                                ; match any and bind to id
 datum                             ; match eq?/eqv?/equal? to a datum

(match <> (match-pattern body ...) ...)
=> (lambda (obj) (match obj (match-pattern body ...) ...))

(match <...> (match-pattern body ...) ...)
=> (lambda args (match args (match-pattern body ...) ...))
```

The fundamental destructuring pattern match macro; you've seen many and this one is
very much like them.

::: tip Examples:
``` scheme

> (def lst [1 2 3])
> (match lst
    ([0 1 c] "starts with 0 1")
    ([a _ c] (list c a))
    (_       #f))
(3 1)

> (let loop ((rest [1 2]))
    (match rest
      ([v . rest] (displayln v) (loop rest))
      ([]         (displayln 'end))))
1
2
end

> (def foo (match <>
             ((? (and number? inexact?)) 'inexact)
             ((? number?)                'number)
             ((and (? string?) (not "")) 'string)
             (_                          'other)))

> (foo 10)
number

> (foo 2.0)
inexact

> (foo "")
other

> (foo "bar")
string
```
:::

### match*
``` scheme
(match* (expr ...)
 ((pattern ...) body) ...)
```

Matches multiple objects in sequence.

::: tip Examples:
``` scheme
> (match* (#t [1 2])
    ((#f [a 0]) 'a)
    ((#t [a])   'b)
    ((#t [_ b]) 'c)
    (else       'd))
c
```
:::

### with with*
``` scheme
(with (pattern expr) body ...)
=> (match expr (pattern body ...))

(with ((pattern expr) ...) body ...)
=> (match* (expr ...) ((pattern ...) body ...))

(with () body ...)
=> (let () body ...)

(with* (hd rest ...) body ...)
=> (with hd (with* (rest ...) body ...))

(with* () body ...)
=> (let () body ...)
```

Short-form destructuring bind macros.

::: tip Examples:
``` scheme
> (with ([a b . c] (iota 4))
    (list a b c))
(0 1 (2 3))
```
:::

### ? (predicate constructor)
``` scheme
(? (and pred ...) obj)
=> (and (? pred obj) ...)

(? (or pred ...) obj)
=> (or (? pred obj) ...)

(? (not pred) obj)
=> (not (? pred obj))

(? pred obj)
=> (pred obj)

(? pred)
=> (lambda (obj) (? pred obj))

(? pred => K)
=> (lambda (obj)
     (alet (val (? pred obj))
       (K val)))

(? pred :: proc)
=> (lambda (obj)
     (and (? pred obj)
          (proc obj)))

(? pred :: proc => K)
=> (lambda (obj)
     (and (? pred obj)
          (K (proc obj))))
```

The predicate constructor macro.

::: tip Examples:
``` scheme
> (? (and number? fixnum?) 1000)
#t

> (? (and number? fixnum?))
#<procedure #1>
```
:::

### defsyntax-for-match
``` scheme
(defsyntax-for-match id match-macro-expr [macro-expr])
```
Defines a match macro expander with name `id`, with optionally a regular expander for the
same identifier.

## Macros for Syntax

The following macros are only available for syntax (phi = 1).

### syntax-case syntax syntax/loc

``` scheme
(syntax-case stx (keyword-id ...)
  (pat [fender] body) ...)

(syntax expr)

(syntax/loc src-stx expr)

```

The well-known `syntax` and `syntax-case` macros, first defined in "Extending the Scope
of Syntactic Abstraction" by Waddell and Dybvig and popularized by Racket.
`syntax/loc` is like syntax, only it assigns the source location to that of `src-stx`

### syntax-rules
``` scheme
(syntax-rules (keyword-id ...)
 (pat [fender] expr) ...)
```

The familiar `syntax-rules` macro from R5RS, extended with pattern fenders like `syntax-case`
and meaningful underscores.

### with-syntax with-syntax*
``` scheme
(with-syntax ((pat expr) ...) body)
(with-syntax* ((bind expr) ...) body)

<bind>:
 (values id ...)             ; value binding
 pat                         ; syntax binding
```

The common `with-syntax` macro is widely used in Racket.
Its sequence form `with-syntax*` is like a sequence of `with-syntax`, with the Gerbilic
allowance for value bindings with `let*` semantics.

### identifier-rules
``` scheme
(identifier-rules (keyword-id)
 (pat [fender] expr) ...)
```

Variant of `syntax-rules` that constructs a setq macro and not a plain macro expander.

## Module Sugar

### require
``` scheme
(require feature ...)
```

Fails with a syntax error if the `cond-expand` features `feature ...` are not satisfied.

### defsyntax-for-import defsyntax-for-export defsyntax-for-import-export
``` scheme
(defsyntax-for-import id expr)

(defsyntax-for-import (id . args) body ...)
=> (defsyntax-for-import id (lambda args body ...))

(defsyntax-for-export id expr)

(defsyntax-for-export (id . args) body ...)
=> (defsyntax-for-export id (lambda args body ...))

(defsyntax-for-import-export id expr)

(defsyntax-for-import-export (id . args) body ...)
=> (defsyntax-for-import-export id (lambda args body ...))

```

Define import and export macro expanders.

### for-syntax for-template
``` scheme
(import (for-syntax import-spec ...))
(export (for-syntax export-spec ...))

(import (for-template import-spec ...))
(export (for-template export-spec ...))
```

Import/export expanders that switch the phase of the import/export;
`for-syntax` switches by +1, `for-template` switches by -1, just like
the phi: directive.


### only-in
``` scheme
(import (only-in import-spec id ...))
```

Import expander; only import identifiers `id ...` from a set.

### except-in except-out
``` scheme
(import (except-in import-spec id ...))

(export (except-out export-spec id ...))
```

Import and export expander; filter identifiers `id ...` from a set.

### rename-in rename-out
``` scheme
(import (rename-in import-spec (id new-id) ...))

(export (rename-out export-spec (id new-id) ...))
```

Import and export expander; rename specific identifiers in a set.

### prefix-in prefix-out
``` scheme
(import (prefix-in import-spec prefix-id))

(export (prefix-out export-spec prefix-id))
```

Import and export expander; rename a set by applying a prefix.

### struct-out
``` scheme
(export (struct-out struct-id ...))
```

Export expander; export all identifiers related with structs `struct-id ...`

### group-in
``` scheme
(import (group-in prefix mod ...))
mod := id
    |  (id mod ...)
```

Imports a group of common prefix library modules.

Examples:
```
(import (group-in :std/misc queue rbtree))
= (import :std/misc/queue :std/misc/rbtree)

(import (group-in :std (misc queue rbtree) (net bio)))
= (import :std/misc/queue :std/misc/rbtree :std/net/bio)

(import (group-in :std sugar (srfi 1 113 133)))
= (import :std/sugar :std/srfi/1 :std/srfi/113 :std/srfi/133)
```

## Special Evaluation Forms

### eval-when-compile
``` scheme
(eval-when-compile expr)
```

Evaluates `expr` when expanding in compiler context.

