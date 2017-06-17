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
- [Runtime Symbol Bindings](#runtime-symbol-bindings)
  * [Runtime [phi=0] Bindings](#runtime-phi0-bindings)
  * [Syntax [phi=1] Bindings](#syntax-phi1-bindings)
  * [More Gambit Symbols](#more-gambit-symbols)
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

#### alet alet* and-let*
```
(alet bind body ...)
(alet (bind ...) body ...)
(alet* bind body ...)
(alet* (bind ...) body ...)

(defalias and-let* alet*)
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
=> (call/esc (lambda (id) body ...))
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
     (defsyntax id ...))

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
     (defsyntax id ...))

(defclass (id super ...) (slot ...) typedef-option ...)
=> (begin
     (defclass-type id::t [super::t ...] make-id id?
       slots: ((slot slot slot-set!) ...)
       type-body ...)
     (defsyntax id ...))
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

#### @
```
(@ obj id)
=> (slot-ref obj 'id)

(@ obj id rest ...)
=> (@ (@ obj id) rest ...)
```

Slot reference macro.

#### @-set!
```
(set! (@ obj id ...) val)
=> (@-set! obj id ... val)

(@-set! obj id val)
=> (slot-set! obj 'id val)

(@-set! obj id rest ... last val)
=> (@-set! (@ obj id rest ...) last val)
```

Slot mutation macro.

### Pattern Matching
#### match
```
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

#### match*
```
(match* (expr ...)
 ((pattern ...) body) ...)
```

Matches multiple objects in sequence.

#### with with*
```
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

#### ?
```
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
     (and (? pred obj)
          (K obj)))

(? pred :: K)
=> (lambda (obj)
     (alet (val (? pred obj))
       (K val)))

(? pred :: proc => K)
=> (lambda (obj)
     (and (? pred obj)
          (K (proc obj))))
```

The predicate constructor macro.

#### defsyntax-for-match
```
(defsyntax-for-match id match-macro-expr [macro-expr])
```
Defines a match macro expander with name `id`, with optionally a regular expander for the
same identifier.

### Macros for Syntax

The following macros are only available for syntax (phi = 1).

#### syntax-case syntax syntax/loc

```
(syntax-case stx (keyword-id ...)
  (pat [fender] body) ...)

(syntax expr)

(syntax/loc src-stx expr)

```

The well-known `syntax` and `syntax-case` macros, first defined in "Extending the Scope
of Syntactic Abstraction" by Waddell and Dybvig and popularized by Racket.
`syntax/loc` is like syntax, only it assigns the source location to that of `src-stx`

#### syntax-rules
```
(syntax-rules (keyword-id ...)
 (pat [fender] expr) ...)
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
 (pat [fender] expr) ...)
```

Variant of `syntax-rules` that constructs a setq macro and not a plain macro expander.

### Module Sugar

#### require
```
(require feature ...)
```

Fails with a syntax error if the `cond-expand` features `feature ...` are not satisfied.

#### defsyntax-for-import defsytnax-for-export
```
(defsyntax-for-import id expr)

(defsyntax-for-import (id . args) body ...)
=> (defsyntax-for-import id (lambda args body ...))

(defsyntax-for-export id expr)

(defsyntax-for-export (id . args) body ...)
=> (defsyntax-for-export id (lambda args body ...))

```

Define import and export macro expanders.

#### only-in
```
(import (only-in import-spec id ...))
```

Import expander; only import identifiers `id ...` from a set.

#### except-in except-out
```
(import (except-in import-spec id ...))

(export (except-out export-spec id ...))
```

Import and export expander; filter identifiers `id ...` from a set.

#### rename-in rename-out
```
(import (rename-in import-spec (id new-id) ...))

(export (rename-out export-spec (id new-id) ...))
```

Import and export expander; rename specific identifiers in a set.

#### prefix-in prefix-out
```
(import (prefix-in import-spec prefix-id))

(export (prefix-out export-spec prefix-id))
```

Import and export expander; rename a set by applying a prefix.

#### struct-out
```
(export (struct-out struct-id ...))
```

Export expander; export all identifiers related with structs `struct-id ...`

## Runtime Symbol Bindings

The runtime bindings exported by the prelude are all externs collected in nested modules,
which allows for easy reuse in custom languages.

### Runtime [phi=0] Bindings

This includes the `<runtime>` prelude module, which is composed by the `<r5rs-runtime>` and
`<host-runtime>` modules.

#### `<r5rs-runtime>`

Defines the following symbols as externs:
```
    ;; 6.1 equivalnce
    eq? eqv? equal?
    ;; 6.2 numbers
    number? complex? real? rational? integer?
    exact? inexact?
    = < > <= >=
    zero? positive? negative? odd? even?
    max min
    + * - /
    abs quotient remainder modulo gcd lcm 
    floor ceiling truncate round
    numerator denominator rationalize
    exp log sin cos tan asin acos atan
    sqrt expt
    make-rectangular make-polar real-part imag-part magnitude angle
    exact->inexact inexact->exact
    number->string string->number
    ;; 6.3 other data types
    ;;  6.3.1 bool
    not boolean?
    ;;  6.3.2 pairs
    pair? cons car cdr set-car! set-cdr!
    caar cadr cdar cddr
    caaar cadar caadr caddr
    cdaar cddar cdadr cdddr
    caaaar caadar caaadr caaddr
    cadaar caddar cadadr cadddr
    cdaaar cdadar cdaadr cdaddr
    cddaar cdddar cddadr cddddr
    null? list? list length append reverse list-tail list-ref
    memq memv member
    assq assv assoc
    ;;  6.3.3 symbols
    symbol? symbol->string string->symbol
    ;;  6.3.4 characters
    char? char=? char<? char>? char<=? char>=?
    char-ci=? char-ci<? char-ci>? char-ci<=? char-ci>=?
    char-alphabetic? char-numeric? char-whitespace? 
    char-upper-case? char-lower-case?
    char->integer integer->char
    char-upcase char-downcase
    ;;  6.3.5 strings
    string? make-string string
    string-length string-ref string-set!
    string=? string-ci=?
    string<? string>? string<=? string>=?
    string-ci<? string-ci>? string-ci<=? string-ci>=?
    substring string-append
    string->list list->string
    string-copy string-fill!
    ;;  6.3.6 vectors
    vector? make-vector vector
    vector-length vector-ref vector-set!
    vector->list list->vector
    vector-fill!
    ;; 6.4 control
    procedure? apply
    map for-each 
    force
    call-with-current-continuation
    call-with-values values
    dynamic-wind
    ;; 6.5 eval
    eval interaction-environment scheme-report-environment
    ;; 6.6 i/o
    call-with-input-file call-with-output-file
    input-port? output-port?
    current-input-port current-output-port
    with-input-from-file with-output-to-file
    open-input-file open-output-file
    close-input-port close-output-port
    read read-char peek-char
    eof-object? char-ready? 
    write display newline write-char
    load
```

#### `<host-runtime>`

Defines the following symbols as externs:
```
    immediate?
    finite? infinite? nan?
    1+ 1- fx+ fx1+ fx- fx1- fx* fx/
    fixnum? nonnegative-fixnum? 
    fxzero? fxpositive? fxnegative? fxodd? fxeven?
    fixnum->char char->fixnum fixnum->flonum
    fxmax fxmin fxabs fxnot fxand fxior fxxor fxand fxmodulo
    fxbit-set? fxarithmetic-shift fxshift
    fx< fx<= fx= fx>= fx>
    flonum?
    fl+ fl- fl* fl/ fl< fl<= fl= fl>= fl>
    flzero? flpositive? flnegative? 
    flnan? flinfinite? flfinite? flinteger?
    flmax flmin
    box? box unbox set-box!
    make-list cons*
    foldl foldr andmap ormap filter filter-map iota last last-pair
    memf assgetq find
    remove remq remv remf
    pgetq pgetv pget
    subvector subvector->list subvector-fill!
    vector-map vector-copy vector-append 
    true true? false void void? eof-object identity
    dssl-object? dssl-key-object? dssl-rest-object? dssl-optional-object?
    values-count values->list
    make-hash-table make-hash-table-eq make-hash-table-eqv
    hash-table?
    hash->list hash->plist
    list->hash-table list->hash-table-eq list->hash-table-eqv
    plist->hash-table plist->hash-table-eq plist->hash-table-eqv
    hash-length hash-ref hash-get hash-put! hash-remove! hash-update! hash-key?
    hash-find hash-for-each hash-map hash-fold
    hash-keys hash-values
    hash-copy hash-copy!
    hash-merge hash-merge!
    uninterned-symbol? interned-symbol? 
    gensym make-symbol make-uninterned-symbol symbol-hash
    keyword? uninterned-keyword? interned-keyword? keyword-hash
    string->bytes bytes->string
    string->keyword keyword->string make-uninterned-keyword
    symbol->keyword keyword->symbol
    substring-fill! substring-move! string-shrink!
    append-strings
    string-map string-index string-rindex 
    string-split string-join string-empty?
    ;; MOP
    type-descriptor?
    struct-type?
    class-type?
    make-struct-type
    make-struct-predicate
    make-struct-field-accessor
    make-struct-field-mutator
    struct-field-ref
    struct-field-set!
    direct-field-ref
    direct-field-set!
    make-class-type
    make-class-predicate
    make-class-slot-accessor
    make-class-slot-mutator
    class-slot-ref
    class-slot-set!
    direct-slot-ref
    direct-slot-set!
    object? object-type
    struct-instance? class-instance? 
    direct-struct-instance? direct-class-instance?
    make-object 
    struct->list class->list
    make-struct-instance make-direct-struct-instance
    make-class-instance make-direct-class-instance
    direct-struct-instance-init!
    direct-class-instance-init!
    direct-constructor-init!
    slot-ref slot-set!
    call-method
    bind-method!
    method-ref direct-method-ref bound-method-ref 
    find-method
    next-method call-next-method
    struct-subtype? class-subtype?
    ;; generics
    make-generic generic? generic-id
    generic-add-method!
    generic-dispatch
    ;; control
    current-error-port
    make-promise promise?
    make-parameter call-with-parameters
    call-with-escape
    with-unwind-protect
    current-exception-handler with-exception-handler
    with-catch 
    error raise raise-type-error
    error::t type-error::t
    exception? error? type-error? 
    error-trace error-message error-irritants
    ;; OS
    exit getenv setenv
    current-directory create-directory create-directory*
    delete-file copy-file rename-file 
    delete-directory directory-files
    file-exists? file-newer? file-type
    path-expand path-normalize 
    path-extension path-strip-extension
    path-directory path-strip-directory
    path-strip-trailing-directory-separator
    ;; reader
    AST::t AST? AST-e AST-source make-AST
    read-syntax read-syntax-from-file
    source-location? source-location-path? source-location-path
    ;; required by the module reader to support #lang
    datum-parsing-exception? datum-parsing-exception-filepos
    read-line read-all
    ;; string and vector moves
    append-vectors subvector-move! vector-shrink!
    append-strings substring-move! string-shrink!
    ;; string I/O
    write-substring
    open-input-string open-output-string get-output-string
    call-with-input-string with-input-from-string
    call-with-output-string with-output-to-string
    ;; bytes
    u8vector? u8vector
    make-u8vector u8vector-length u8vector-ref u8vector-set!
    u8vector->list list->u8vector
    u8vector-fill! u8vector-shrink!
    u8vector-copy u8vector-append
    subu8vector subu8vector-fill! subu8vector-move! 
    append-u8vectors
    object->u8vector u8vector->object
    ;; bytes I/O
    write-subu8vector
    open-input-u8vector open-output-u8vector get-output-u8vector
    call-with-input-u8vector with-input-from-u8vector
    call-with-output-u8vector with-output-to-u8vector
    ;; generic I/O
    displayln display*
    ;;flush-output-port
    ;; etc...
    ;; Module loading
    load-module
    ;; keyword argument dispatch
    keyword-dispatch
    ;; gerbil specifics
    gerbil-version-string gerbil-system-version-string
    ;; system type information
    gerbil-system system-type
```

Also defines the following aliases:
```
  (define-alias transcript-on void)
  (define-alias transcript-off void)
  (define-alias car-set! set-car!)
  (define-alias cdr-set! set-cdr!)
  (define-alias box-set! set-box!)
  (define-alias call/cc         call-with-current-continuation)
  (define-alias call/esc        call-with-escape)
  (define-alias call/values     call-with-values)
  (define-alias call/parameters call-with-parameters)

```

### Syntax [phi=1] Bindings

The bindings include `<runtime>` and `<expander-runtime>`, which contains symbols
defined by the expander.

#### `<expander-runtime>`

Defines the following symbols as extern:
```
    ;; syntax and friends
    raise-syntax-error syntax-error?
    identifier? identifier-list? free-identifier=? bound-identifier=?
    datum->syntax syntax->datum syntax-e syntax->list
    genident gentemps
    stx-identifier
    stx-boolean? stx-keyword? stx-char? stx-number? stx-fixnum? stx-string? 
    stx-null? stx-pair? stx-pair/null? stx-list?
    stx-box? stx-vector? stx-datum?
    stx-eq? stx-eqv? stx-equal? stx-false?
    stx-e stx-source stx-wrap-source
    stx-car stx-cdr stx-length 
    stx-for-each stx-map stx-foldl stx-foldr stx-reverse 
    stx-last stx-last-pair stx-list-tail stx-list-ref
    stx-andmap stx-ormap
    stx-plist? stx-getq
    macro-expand-syntax
    macro-expand-syntax-case
    syntax-pattern? syntax-local-pattern? 
    make-syntax-pattern syntax-pattern-id syntax-pattern-depth
    syntax-check-splice-targets
    syntax-split-splice
    underscore? ellipsis?
    check-duplicate-identifiers
    ;; core expander -- user api
    current-expander-context
    current-expander-marks
    current-expander-path
    current-expander-phi
    current-module-reader-path
    current-module-reader-args
    local-context? top-context? module-context? prelude-context?
    expander-context-id  module-context-ns
    make-local-context
    eval-syntax core-expand core-expand-head core-expand-expression+1
    import-module eval-module
    core-library-module-path? core-resolve-library-module-path
    core-resolve-module-path
    core-quote-syntax
    core-identifier=? core-identifier-key
    core-apply-expander
    syntax-local-introduce syntax-local-rewrap syntax-local-unwrap
    syntax-local-e syntax-local-value
    resolve-identifier core-resolve-identifier
    binding? binding-id 
    runtime-binding? top-binding? module-binding? extern-binding?
    syntax-binding? syntax-binding-e
    alias-binding? alias-binding-e
    import-binding? import-binding-e
    expander? expander-binding? expander-e expander-binding-e
    feature-expander? 
    user-expander? make-user-expander 
    user-expander-context user-expander-phi
    import-expander? make-import-expander
    export-expander? make-export-expander
    module-import? make-module-import
    module-import-source module-import-name module-import-phi
    module-import-weak?
    module-export? make-module-export
    module-export-context module-export-key module-export-phi
    module-export-name module-export-weak?
    import-set? import-set-source import-set-phi import-set-imports
    export-set? export-set-source export-set-phi export-set-exports
    core-resolve-module-export
    core-module-export->import
    core-expand-import-source
    core-expand-export-source

```

### More Gambit Symbols

There are more symbols provided by the Gambit runtime, which you may find useful
in systems programming. These are not defined in the core prelude by default to
avoid bloat. Instead, they are defined in the `:gerbil/gambit` module and
its submodules in the `gerbil/gambit` package.

So in order to have the full Gerbil on Gambit symbols available, in addition to
the core prelude, you need to import the extended symbols with
```
(import :gerbil/gambit)
```

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
    + [alet alet* and-let*](#alet-alet-and-let)
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
    + [@](#)
    + [@-set!](#-set)
  * [Pattern Matching](#pattern-matching)
    + [match](#match)
    + [match*](#match)
    + [with with*](#with-with)
    + [?](#)
    + [defsyntax-for-match](#defsyntax-for-match)
  * [Macros for Syntax](#macros-for-syntax)
    + [syntax-case syntax syntax/loc](#syntax-case-syntax-syntaxloc)
    + [syntax-rules](#syntax-rules)
    + [with-syntax with-syntax*](#with-syntax-with-syntax)
    + [identifier-rules](#identifier-rules)
  * [Module Sugar](#module-sugar)
    + [require](#require)
    + [defsyntax-for-import defsytnax-for-export](#defsyntax-for-import-defsytnax-for-export)
    + [only-in](#only-in)
    + [except-in except-out](#except-in-except-out)
    + [rename-in rename-out](#rename-in-rename-out)
    + [prefix-in prefix-out](#prefix-in-prefix-out)
    + [struct-out](#struct-out)
