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

### @bytes
```scheme
(@bytes "...")
=> (quote #u8(...))
```

Converts a utf8 encoded string to a u8vector at expansion time.

### syntax-error
``` scheme
(syntax-error message detail ...)
```

Raises a syntax error; used for meaningful error reporting in syntax-rules macros.


## Runtime Aliases
### car-set! cdr-set!
```scheme
(defalias car-set! set-car!)
(defalias cdr-set! set-cdr!)

```
### string-ref-set!
```scheme
(defalias string-ref-set! string-set!)
```

### *vector-ref-set!

```scheme
(defalias vector-ref-set! vector-set!)
(defalias s8vector-ref-set! s8vector-set!)
(defalias u8vector-ref-set! u8vector-set!)
(defalias s16vector-ref-set! s16vector-set!)
(defalias u16vector-ref-set! u16vector-set!)
(defalias s32vector-ref-set! s32vector-set!)
(defalias u32vector-ref-set! u32vector-set!)
(defalias s64vector-ref-set! s64vector-set!)
(defalias u64vector-ref-set! u64vector-set!)
(defalias f32vector-ref-set! f32vector-set!)
(defalias f64vector-ref-set! f64vector-set!)
```

These binding enable you to use `set!` with `*vector-ref`.

::: tip Examples
```scheme
> (def foo (vector 1 2 3))
> (set! (vector-ref foo 1) 4)
> foo
#(1 4 3)
```
:::

### call/values call/parameters
```scheme
(defalias call/values     call-with-values)
(defalias call/parameters call-with-parameters)
```
### randeom-bytes random-source-make-bytes
```scheme
(defalias random-bytes random-u8vector)
(defalias random-source-make-bytes random-source-make-u8vectors))
```



## MOP Macros

### defclass-type defstruct-type
``` scheme
(defclass-type id super make instance? type-body ...)
(defstruct-type id super make instance? type-body ...)


<type-body>:
 name: id                    ; type name
 id: id                      ; type id
 constructor: method-id      ; constructor method id
 properties: expr            ; additional type properties
 slots: ((id getf setf) ...) ; class slots
 mixin: ((id getf setf) ...) ; mixin class slots
 struct: <boolean>           ; #t for structs
 final: <boolean>            ; final class?
 metaclass: id               ; metaclass type
```

Low level class type definition facilities.

### defclass defstruct define-class define-struct
``` scheme
(defclass id (slot ...) typedef-option ...)
(defclass (id super ...) (slot ...) typedef-option ...)
(defstruct id (slot ...) typedef-option ...)
(defstruct (id super ...) (slot ...) typedef-option ...)

(defalias define-class defclass)
(defalias define-struct defstruct)

<typedef-option>:
 name: id                    ; type name
 id: id                      ; type id
 constructor: id             ; constructor method id
 final: <boolean>            ; #t for final types
 struct: <boolean>           ; #t for structs
 transparent: <boolean>      ; #t for equality checks and printability
 equal: <boolean> or <list>  ; a list of slots to consider for equal? checks, #t for all fields
 print: <boolean> or <list>  ; a list of slots to print, #t for all fields
 metaclass: id               ; metaclass type
```

Canonical class type definition macro.

### defmethod
``` scheme
(defmethod {method-id type}
  expr
  [rebind: <boolean>])
```

Defines a method `method-id` for type `type`, which must be
a class type.
The `:std/generic` library extends the form for generic methods.

### @method
``` scheme
{obj.id arg ...}
{id obj arg ...}
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

### System Classes
```scheme
  (defsystem-class-info :t t::t () true)
  (defsystem-class-info :object object::t (t::t) true)

  (defsystem-class-info :immediate immediate::t (t::t) immediate?)
  (defsystem-class-info :char char::t (immediate::t) char?)
  (defsystem-class-info :boolean boolean::t (immediate::t) boolean?)

  (defsystem-class-info :atom atom::t (immediate::t) atom?)
  (defsystem-class-info :void void::t (atom::t) void?)
  (defsystem-class-info :eof eof::t (atom::t) eof-object?)
  (defsystem-class-info :true true::t (boolean::t atom::t) true?)
  (defsystem-class-info :false false::t (boolean::t atom::t) not)

  (defsystem-class-info :special special::t (atom::t) special?)

  (defsystem-class-info :number number::t (t::t) number?)
  (defsystem-class-info :real real::t (number::t) real?)
  (defsystem-class-info :integer integer::t (real::t) integer?)
  (defsystem-class-info :fixnum fixnum::t (integer::t immediate::t) fixnum?)
  (defsystem-class-info :bignum  bignum::t (integer::t) ##bignum?)
  (defsystem-class-info :ratnum ratnum::t (real::t) ##ratnum?)
  (defsystem-class-info :flonum flonum::t (real::t) flonum?)
  (defsystem-class-info :cpxnum cpxnum::t (number::t) ##cpxnum?)

  (defsystem-class-info :symbolic symbolic::t (t::t) symbolic?)
  (defsystem-class-info :symbol symbol::t (symbolic::t) symbol?)
  (defsystem-class-info :keyword keyword::t (symbolic::t) keyword?)

  (defsystem-class-info :list list::t (t::t) list?)
  (defsystem-class-info :pair pair::t (list::t) pair?)
  (defsystem-class-info :null null::t (list::t atom::t) null?)

  (defsystem-class-info :sequence sequence::t (t::t) sequence?)
  (defsystem-class-info :vector vector::t (sequence::t) vector?)
  (defsystem-class-info :string string::t (sequence::t) string?)
  (defsystem-class-info :hvector hvector::t (sequence::t) hvector?)
  (defsystem-class-info :u8vector u8vector::t (hvector::t) u8vector?)
  (defsystem-class-info :s8vector s8vector::t (hvector::t) s8vector?)
  (defsystem-class-info :u16vector u16vector::t (hvector::t) u16vector?)
  (defsystem-class-info :s16vector s16vector::t (hvector::t) s16vector?)
  (defsystem-class-info :u32vector u32vector::t (hvector::t) u32vector?)
  (defsystem-class-info :s32vector s32vector::t (hvector::t) s32vector?)
  (defsystem-class-info :u64vector u64vector::t (hvector::t) u64vector?)
  (defsystem-class-info :s64vector s64vector::t (hvector::t) s64vector?)
  (defsystem-class-info :f32vector f32vector::t (hvector::t) f32vector?)
  (defsystem-class-info :f64vector f64vector::t (hvector::t) f64vector?)

  (defsystem-class-info :values values::t (t::t) ##values?)
  (defsystem-class-info :box box::t (t::t) box?)
  (defsystem-class-info :frame frame::t (t::t) ##frame?)
  (defsystem-class-info :continuation continuation::t (t::t) continuation?)
  (defsystem-class-info :promise promise::t (t::t) promise?)
  (defsystem-class-info :weak weak::t (t::t) weak?)
  (defsystem-class-info :foreign foreign::t (t::t) foreign?)

  (defsystem-class-info :procedure procedure::t (t::t) procedure?)

  (defsystem-class-info :time time::t (t::t) time?)
  (defsystem-class-info :thread thread::t (t::t) thread?)
  (defsystem-class-info :thread-group thread-group::t (t::t) thread-group?)
  (defsystem-class-info :mutex mutex::t (t::t) mutex?)
  (defsystem-class-info :condvar condvar::t (t::t) condvar?)
  (defsystem-class-info :port port::t (t::t) port?)
  (defsystem-class-info :object-port object-port::t (port::t) object-port?)
  (defsystem-class-info :character-port character-port::t (object-port::t) character-port?)
  (defsystem-class-info :byte-port byte-port::t (character-port::t) byte-port?)
  (defsystem-class-info :device-port device-port::t (byte-port::t) device-port?)
  (defsystem-class-info :vector-port vector-port::t (object-port::t) vector-port?)
  (defsystem-class-info :string-port string-port::t (character-port::t) string-port?)
  (defsystem-class-info :u8vector-port u8vector-port::t (byte-port::t) u8vector-port?)
  (defsystem-class-info :raw-device-port raw-device-port::t (port::t) raw-device-port?)
  (defsystem-class-info :tcp-server-port tcp-server-port::t (object-port::t) tcp-server-port?)
  (defsystem-class-info :udp-port udp-port::t (object-port::t) udp-port?)
  (defsystem-class-info :directory-port directory-port::t (object-port::t) directory-port?)
  (defsystem-class-info :event-queue-port event-queue-port::t (object-port::t) event-queue-port?)
  (defsystem-class-info :table table::t (t::t) table?)
  (defsystem-class-info :readenv readenv::t (t::t) readenv?)
  (defsystem-class-info :writeenv writeenv::t (t::t) writeenv?)
  (defsystem-class-info :readtable readtable::t (t::t) readtable?)
  (defsystem-class-info :processor processor::t (t::t) processor?)
  (defsystem-class-info :vm vm::t (t::t) vm?)
  (defsystem-class-info :file-info file-info::t (t::t) file-info?)
  (defsystem-class-info :socket-info socket-info::t (t::t) socket-info?)
  (defsystem-class-info :address-info address-info::t (t::t) address-info?)
```

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
