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
  * [Syntactic Sugar](#syntactic-sugar)
  * [MOP Macros](#mop-macros)
  * [Pattern Matching](#pattern-matching)
  * [Macros for Syntax](#macros-for-syntax)
  * [Module Sugar](#module-sugar)
- [Runtime Bindings](#runtime-bindings)
- [Index of Macros](#index-of-macros)

<!-- tocstop -->

## Core Expander Syntax

These syntactic forms come from the root context, which is the parent context
of all syntactic contexts in Gerbil. They are not per se a part of the core
prelude, but they are documented here for completeness.

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

### Syntactic Sugar

TBD

### MOP Macros

TBD

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

Defined in the `<syntax-case>` prelude module.

#### syntax-rules
```
(syntax-rules (keyword-id ...)
 (pat [test] expr) ...)
```

The familiar `syntax-rules` macro from R5RS, extended with pattern fenders like `syntax-case`
and meaningful underscores.

Defined in the `<syntax-sugar>` prelude module.

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

Defined in the `<syntax-sugar>` prelude module.

#### identifier-rules
```
(identifier-rules (keyword-id)
 (pat [test] expr) ...)
```

Variant of `syntax-rules` that constructs a setq macro and not a plain macro expander.

Defined in the `<more-syntax-sugar>` prelude module.

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
  * [Syntactic Sugar](#syntactic-sugar)
  * [MOP Macros](#mop-macros)
  * [Pattern Matching](#pattern-matching)
  * [Macros for Syntax](#macros-for-syntax)
    + [syntax syntax-case](#syntax-syntax-case)
    + [syntax-rules](#syntax-rules)
    + [with-syntax with-syntax*](#with-syntax-with-syntax)
    + [identifier-rules](#identifier-rules)
  * [Module Sugar](#module-sugar)
