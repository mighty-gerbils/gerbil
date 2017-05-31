# The Gerbil Core Prelude

The Gerbil core prelude (`:gerbil/core`) implements the core Gerbil language.
This is the language you get in the interpreter and the default language for
file modules, unless you specify an alternate prelude with the `prelude:` directive.

<!-- toc -->

- [Core Syntax](#core-syntax)
  * [Core Expander Syntax](#core-expander-syntax)
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
    + [lambda%](#lambda%)
    + [case-lambda](#case-lambda)
    + [let-values letrec-values letrec*-values](#let-values-letrec-values-letrec-values)
    + [let-syntax letrec-syntax](#let-syntax-letrec-syntax)
    + [if](#if)
    + [quote](#quote)
    + [quote-syntax](#quote-syntax)
    + [%%app %%ref %%begin-module](#%%app-%%ref-%%begin-module)

<!-- tocstop -->

## Core Syntax

This section defines all the syntactic forms (macros) in `:gerbil/core`

### Core Expander Syntax

These syntactic forms come from the root context, which is the parent context
of all syntactic contexts in Gerbil. They are not per se a part of the core
prelude, but they are documented here for completeness.

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

#### %%app %%ref %%begin-module

Special expander indirection hooks; explained elsewhere in the documentation.


