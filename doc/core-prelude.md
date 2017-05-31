# The Gerbil Core Prelude

The Gerbil core prelude (`:gerbil/core`) implements the core Gerbil language.
This is the language you get in the interpreter and the default language for
file modules, unless you specify an alternate prelude with the `prelude:` directive.

<!-- toc -->

- [Core Expander Syntax](#core-expander-syntax)
  * [Top Forms](#top-forms)
  * [Expressions](#expressions)
  * [Expander Hooks](#expander-hooks)
  * [Reserved Syntactic Tokens](#reserved-syntactic-tokens)
- [Prelude Macros](#prelude-macros)
  * [Definition Forms](#definition-forms)
  * [Binding Forms](#binding-forms)
  * [Common Syntactic Sugar](#common-syntactic-sugar)
  * [MOP Macros](#mop-macros)
  * [Pattern Matching](#pattern-matching)
  * [Macros for Syntax](#macros-for-syntax)
  * [Module Sugar](#module-sugar)
- [Runtime Bindings](#runtime-bindings)
- [Index of Macros](#index-of-macros)

<!-- tocstop -->

## Core Expander Syntax

These syntactic forms come from the root context, which is the parent context
of all syntactic contexts in Gerbil. They are not a part of the core prelude
per se, but they are documented here for completeness.

### Top Forms
#### begin
```
(begin form ....)
```

#### begin-syntax
```
(begin-syntax form ...)
```
Like begin, but at syntax phase `phi +1`.

#### begin-annotation
```
(begin-annotation annotation form ...)
```

Effect the declarations in `annotation` in the scope of the body.
Not implemented yet.

#### import
```
(import import-spec ...)

<import-spec>:
 (phi: dphi import-spec ...)  ; import at differential phase; phi: +1 imports for syntax
 (begin: import-spec ...)     ; group together import specs
 (runtime: module-path)       ; import a module as runtime dependency (no bindings)
 (spec: module-path phi name src-phi src-name) ; fully specified import
 (macro macro-arg ....)       ; expand import expander `macro` with `macro-arg ...`
 module-path                  ; import a module

<module-path>:
 string                       ; string module path, relative to the source
 bound-identifier             ; module bound in the current context
 library-path                 ; library module path

<library-path>:
 ':' symbol ['/' symbol]+     ; library module path, with `/` as file system separator
```

Imports bindings to the current syntactic context. Must appear at top or module context.

#### module
```
(module id module-body ...)
```

Creates a module and binds it to `id`. The module may be defined at top context for
a top module or as a nested module inside another module.

#### export
```
(export export-spec ...)

<export-spec>:
 #t                           ; export all defined bindings at current phi
 (phi: dphi export-spec ...)  ; export a differential phase; phi: +1 exports for syntax
 (begin: export-spec ...)     ; group together export specs
 (spec: phi id name)          ; export `id` at phase `phi` with name `name
 (rename: id name)            ; export `id` with name `name`
 (import: module-path ...)    ; export all imports from modules specified by `module-path ...`
 (macro macro-arg ...)        ; expand export expander `macro` with `macro-arg ...`
 id                           ; export `id` with the same name
```

Exports bindings from the current module.

#### declare
```
(declare declaration ...)
```

Make declarations that the compiler finds useful

#### include
```
(include path)
```

Include the contents of path, wrapped with a `begin`.

#### cond-expand
```
(cond-expand
 (feature body ...) ...
 [(else body ...)])

<feature>:
 (and feaure ...)             ; boolean and of `feature ...`
 (or feature ...)             ; boolean or of `feature ...`
 (not feature)                ; negation of feature
 id                           ; satisfied if `id` is bound as an identifier
```

Conditionally expands the body for the first satisfied feature. Must appear at top scope.

#### provide
```
(provide id ...)
```

Binds `id ...` as features provided by a module.

#### define-values
```
(define-values (id ...) expr)
```

#### define-syntax
```
(define-syntax id expr)
```

#### define-alias
```
(define-alias id alias-id)
```

Defines a syntactic alias for `id` to be the same as `alias-id`

#### extern
```
(extern id ...)
(extern namespace: [namespace-id | #f] id ...)
```

Create runtime bindings for `id`, with the symbols bound at runtime through an
external mechanism (eg builtin or defined at a foreign library).

### Expressions
#### lambda%
```
(lambda% lambda-formals body ...)
```

Plain old Scheme `lambda`, without optional and keyword argument support

#### case-lambda
```
(case-lambda (lambda-formals body ...) ...)
```

#### let-values letrec-values letrec*-values
```
(let-values (((id ...) expr) ...) body ...)
(letrec-values (((id ...) expr) ...) body ...)
(letrec*-values (((id ...) expr) ...) body ...)
```

#### let-syntax letrec-syntax
```
(let-syntax ((id syntax-expr) ...) body ...)
(letrec-syntax ((id syntax-expr) ...) body ...)
```

#### if
```
(if test-expr then-expr else-expr)
(if test-expr then-expr)
```

#### quote
```
(quote datum)
```

#### quote-syntax
```
(quote-syntax id)
```

Quote an identifier `id`, capturing its syntactic context.

### Expander Hooks
```
(%%app rator rand ...)
(%%ref id)
(%%begin-module body ...)
```
Special expander indirection hooks; explained elsewhere in the documentation.

### Reserved Syntactic Tokens
The following widely used syntactic tokens are defined as reserved expanders:
```
_ ... else => unqute unquote-splicing unsyntax unsyntax-splicing
```


## Prelude Macros

These are the main macros defined by the prelude; we ignore ancillary macros used
to facilitate expansion.

### Definition Forms

#### define
```
(define (id . args) body ...)
=> (define-values (id)
     (lambda% args body ...))

(define id expr)
=> (define-values (id) expr)
```

#### def
```
(def (id . args) body ...)
=> (define-values (id)
     (lambda args body ...))

(def id expr)
=> (define-values (id) expr)
```

Subtle difference with `define`: the former defines lambdas with the core Scheme
`lambda%` form, while `def` uses the extended `lambda` form.

#### def*
```
(def* id
  (args body ....) ...)
=>
(def id
  (case-lambda (args body ...) ...))
```

#### defvalues
```
(defvalues (id ...) expr)
=> (define-values (id ...) expr)
```

#### defsyntax
```
(defsyntax (id . args) body ...)
=> (define-syntax id (lambda args body ...))

(defsyntax id expr)
=> (define-syntax id expr)
```

#### defrules
```
(defrules id (keyword-id ...)
  (pat [fender] body) ...)
=> (defsyntax id
     (syntax-rules (keyword-id ...)
        (pat [fender] body) ...))
```

#### defalias
```
(defalias id alias-id)
=> (define-alias id alias-id)
```

### Binding Forms

#### let*-values
```
(let*-values (((id ...) expr) rest ...) body ...)
=> (let-values (((id) expr))
     (let*-values rest body ...))

(let*-values () body ...)
=> (let-values () body ...)
```

#### let

```
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

#### let*
```
(let* (bind rest ...) body ...)
=> (let bind (let* (rest ...) body ...))

(let* () body ...)
=> (let () body ...)

```

#### letrec letrec*

```
(letrec[*] bind body ...)
=> (letrec[*]-values (bind-values) body ...)

(letrec[*] (bind ...) body ...)
=> (letrec[*]-values (bind-values ...) body ...)
```

#### lambda
```
(lambda (arg ...) body ...)
(lambda (arg ... . id) body)

<arg>:
 id                ; required argument
 (id default)      ; optional argument
 key: (id default) ; keyword argument
```

The extended lambda form that supports optional and keyword arguments.

#### set!
```
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

### Common Syntactic Sugar

#### and or
```
(and expr ...)
(or expr ...)
```

#### case cond
```
(cond cond-clause ...)
(case case-clause ...)
```

The well known conditional macros; `case` has its extended form supporting `=>`
dispatch.


#### when unless
```
(when test expr ...)
=> (if test (begin expr ...) #!void)

(unless test expr ...)
=> (if test #!void (begin expr ...))
```

#### do do-while
```
(do ((var init step ...) ...)
    (test fini ...)
  body ...)

(do-while hd (test fini ...) body ...)
=> (do hd ((not test) fini ...) body ...)
```

The common iteration macro and its inverted form.

#### begin0
```
(begin0 expr rest ...)
=> (let (val expr) rest ... val)
```

#### rec
```
(rec id expr)
=> (letrec ((id expr)) id)

(rec (values id ...) expr)
=> (leterc ((values id ...) expr) (values id ...))

(rec (id . args) body ...)
=> (letrec (id (lambda args body ...)) id)
```

Short recursive definition form.

#### alet alet*
```
(alet bind body ...)
(alet (bind ...) body ...)
(alet* bind body ...)
(alet* (bind ...) body ...)

(and-let* hd body ...)
=> (alet* hd body ...)
```
Anaphoric lets which short circuit to `#f` if any of the bindings is `#f`.

#### @list
```
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

#### quasiquote
```
(quasiquote expr)
```

#### delay
```
(delay expr)
```

The promise to eval `expr`.

#### cut
```
(cut arg ...)
```

if you don't know how this works, stop and read the [SRFI](https://srfi.schemers.org/srfi-26/srfi-26.html).
Most useful little macro ever.

#### parameterize
```
(parameterize ((paremter-id expr) ...) body ...)
```

#### let/cc let/esc
```
(let/cc id body ...)
=> (call/cc (lambda (id) body ...))

(let/esc id body ...)
=> (call/esc (lambda (id) body ...)
```

`call/esc` is really the same thing as `call/cc` in Gerbil on Gambit.

#### unwind-protect
```
(unwind-protect body postlude)
```

#### syntax-error
```
(syntax-error message detail ...)
```

Raises a syntax error; used for meaningful error reporting in syntax-rules macros.

### MOP Macros

#### defstruct-type defclass-tye
```
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

#### defstruct define-struct
```
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
     (defsyntax id ...)

(defstruct (id super) (field) ...)
=> (begin
     (defstruct-type id::t super::t make-id id?
      fields: ...
      type-body ...)
     (defsyntax id ...))
```

Canonical struct type definition macro.

#### defclass define-class
```
(defclass id (slot ...) typedef-option ...)
(defclass (id super ...) (slot ...) typedef-option ...)

(defalias define-class defclass)

(defclass id (slot ...) typedef-option ...)
=> (begin
     (defclass-type id::t [] make-id id?
       slots: ((slot slot slot-set!) ...)
       type-body ...)
     (defsyntax id ...)

(defclass (id super ...) (slot ...) typedef-option ...)
=> (begin
     (defclass-type id::t [super::t ...] make-id id?
       slots: ((slot slot slot-set!) ...)
       type-body ...)
     (defsyntax id ...)
```

Canonical class type definition macro.

#### defmethod
```
(defmethod {method-id type}
  expr
  [rebind: bool])
=> (begin
    (def type::method-id expr)
    (bind-method type::t 'method-id type::method-id rebind?))
```

Defines a method `method-id` for type `type`, which must be
a class or struct type.
The `:std/generic` library extends the form for generic metho

#### @method
```
(@method id obj arg ...)
=> (call-method obj 'id arg ...)
```
This is the reader macro for `{...}`, the method invocation operator.

#### @ @-set!
```
(@ obj id)
=> (slot-ref obj 'id)

(@ obj id rest ...)
=> (@ (@ obj id) rest ...)

(@-set! obj id val)
=> (slot-set! obj 'id val)

(@-set! obj id rest ... last val)
=> (@-set! (@ obj id rest ...) last val)
```

Slot reference and mutation macros.

### Pattern Matching

TBD

### Macros for Syntax

The following macros are only available for syntax (phi = 1).

#### syntax syntax-case

```
(syntax expr)

(syntax-case stx (keyword-id ...)
  (pat [test] body) ...)

```

The well-known `syntax` and `syntax-case` macros, first defined in "Extending the Scope
of Syntactic Abstraction" by Waddell and Dybvig and popularized by Racket.

#### syntax-rules
```
(syntax-rules (keyword-id ...)
 (pat [test] expr) ...)
```

The familiar `syntax-rules` macro from R5RS, extended with pattern fenders like `syntax-case`
and meaningful underscores.

#### with-syntax with-syntax*
```
(with-syntax ((pat expr) ...) body)
(with-syntax* ((bind expr) ...) body)

<bind>:
 (values id ...)             ; value binding
 pat                         ; syntax binding
```

The common `with-syntax` macro is widely used in Racket.
Its sequence form `with-syntax*` is like a sequence of `with-syntax`, with the Gerbilic
allowance for value bindings with `let*` semantics.

#### identifier-rules
```
(identifier-rules (keyword-id)
 (pat [test] expr) ...)
```

Variant of `syntax-rules` that constructs a setq macro and not a plain macro expander.

### Module Sugar

TBD

## Runtime Bindings

The runtime bindings exported by the prelude are all externs collected in nested modules,
which allows for easy reuse in custom languages.

TBD

## Index of Macros

- [Core Expander Syntax](#core-expander-syntax)
  * [Top Forms](#top-forms)
    + [begin](#begin)
    + [begin-syntax](#begin-syntax)
    + [begin-annotation](#begin-annotation)
    + [import](#import)
    + [module](#module)
    + [export](#export)
    + [declare](#declare)
    + [include](#include)
    + [cond-expand](#cond-expand)
    + [provide](#provide)
    + [define-values](#define-values)
    + [define-syntax](#define-syntax)
    + [define-alias](#define-alias)
    + [extern](#extern)
  * [Expressions](#expressions)
    + [lambda%](#lambda%)
    + [case-lambda](#case-lambda)
    + [let-values letrec-values letrec*-values](#let-values-letrec-values-letrec-values)
    + [let-syntax letrec-syntax](#let-syntax-letrec-syntax)
    + [if](#if)
    + [quote](#quote)
    + [quote-syntax](#quote-syntax)
  * [Expander Hooks](#expander-hooks)
  * [Reserved Syntactic Tokens](#reserved-syntactic-tokens)
- [Prelude Macros](#prelude-macros)
  * [Definition Forms](#definition-forms)
    + [define](#define)
    + [def](#def)
    + [def*](#def)
    + [defvalues](#defvalues)
    + [defsyntax](#defsyntax)
    + [defrules](#defrules)
    + [defalias](#defalias)
  * [Binding Forms](#binding-forms)
    + [let*-values](#let-values)
    + [let](#let)
    + [let*](#let)
    + [letrec letrec*](#letrec-letrec)
    + [lambda](#lambda)
    + [set!](#set)
  * [Common Syntactic Sugar](#common-syntactic-sugar)
    + [and or](#and-or)
    + [case cond](#case-cond)
    + [when unless](#when-unless)
    + [do do-while](#do-do-while)
    + [begin0](#begin0)
    + [rec](#rec)
    + [alet alet*](#alet-alet)
    + [@list](#list)
    + [quasiquote](#quasiquote)
    + [delay](#delay)
    + [cut](#cut)
    + [parameterize](#parameterize)
    + [let/cc let/esc](#letcc-letesc)
    + [unwind-protect](#unwind-protect)
    + [syntax-error](#syntax-error)
  * [MOP Macros](#mop-macros)
    + [defstruct-type defclass-tye](#defstruct-type-defclass-tye)
    + [defstruct define-struct](#defstruct-define-struct)
    + [defclass define-class](#defclass-define-class)
    + [defmethod](#defmethod)
    + [@method](#method)
    + [@ @-set!](#--set)
  * [Pattern Matching](#pattern-matching)
  * [Macros for Syntax](#macros-for-syntax)
    + [syntax syntax-case](#syntax-syntax-case)
    + [syntax-rules](#syntax-rules)
    + [with-syntax with-syntax*](#with-syntax-with-syntax)
    + [identifier-rules](#identifier-rules)
  * [Module Sugar](#module-sugar)
