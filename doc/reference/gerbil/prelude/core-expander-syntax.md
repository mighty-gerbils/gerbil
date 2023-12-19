# Core Expander Syntax

Gerbil is a Meta-Scheme that bases the expansion of forms on the
context present while expanding.
When expanded by the compiler or interpreter a form could have very
different meanings depending on the
[current-expander-context](/reference/gerbil/expander/#current-expander-context).


These syntactic forms come from the root context, which is the parent context
of all syntactic contexts in Gerbil. They are not a part of the core prelude
per se, but they are documented here for completeness.

## Top Forms
### begin
``` scheme
(begin form ....)
```

### begin-syntax
``` scheme
(begin-syntax form ...)
```
Like begin, but at syntax phase `phi +1`.

### begin-annotation
``` scheme
(begin-annotation annotation form ...)
```

Effect the declarations in `annotation` in the scope of the body.
Not implemented yet.

### import
``` scheme
(import import-spec ...)

<import-spec>:
 (phi: dphi import-spec ...)                   ; import at differential phase; phi: +1 imports for syntax
 (begin: import-spec ...)                      ; group together import specs
 (runtime: module-path)                        ; import a module as runtime dependency (no bindings)
 (spec: module-path phi name src-phi src-name) ; fully specified import
 (macro macro-arg ....)                        ; expand import expander `macro` with `macro-arg ...`
 module-path                                   ; import a module

<module-path>:
 string                                        ; source module path, relative to the current source
 bound-identifier                              ; module bound in the current context
 library-path                                  ; library module path
 relative-library-path                         ; relative library module path

<library-path>:
 ':' symbol ['/' symbol]*                      ; library module path, with `/` as file system separator

<relative-library-path>:
 './' symbol ['/' symbol]*                     ; library module path relative to the current library module
 '../' ['../']* symbol ['/' symbol]*           ; relative library module path with package traversal
```

Imports bindings to the current syntactic context. Must appear at top or module context.

### module
``` scheme
(module id module-body ...)
```

Creates a module and binds it to `id`. The module may be defined at top context for
a top module or as a nested module inside another module.

### export
``` scheme
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

### declare
``` scheme
(declare declaration ...)
```

Make declarations that the compiler finds useful

### include
``` scheme
(include path)
```

Include the contents of path, wrapped with a `begin`.

### cond-expand
``` scheme
(cond-expand
 (feature body ...) ...
 [(else body ...)])

<feature>:
 (and feature ...)            ; boolean and of `feature ...`
 (or feature ...)             ; boolean or of `feature ...`
 (not feature)                ; negation of feature
 id                           ; satisfied if `id` is bound as an identifier
```

Conditionally expands the body for the first satisfied feature. Must appear at top scope.

### provide
``` scheme
(provide id ...)
```

Binds `id ...` as features provided by a module.

### define-values
``` scheme
(define-values (id ...) expr)
```

### define-syntax
``` scheme
(define-syntax id expr)
```

### define-alias
``` scheme
(define-alias id alias-id)
```

Defines a syntactic alias for `id` to be the same as `alias-id`

### extern
``` scheme
(extern id ...)
(extern namespace: [namespace-id | #f] id ...)
```

Create runtime bindings for `id`, with the symbols bound at runtime through an
external mechanism (eg builtin or defined at a foreign library).

## Expressions
### lambda%
``` scheme
(lambda% lambda-formals body ...)
```

Plain old Scheme `lambda`, without optional and keyword argument support

### case-lambda
``` scheme
(case-lambda (lambda-formals body ...) ...)
```

### let-values letrec-values letrec\*-values
``` scheme
(let-values (((id ...) expr) ...) body ...)
(letrec-values (((id ...) expr) ...) body ...)
(letrec*-values (((id ...) expr) ...) body ...)
```

### let-syntax letrec-syntax
``` scheme
(let-syntax ((id syntax-expr) ...) body ...)
(letrec-syntax ((id syntax-expr) ...) body ...)
```

### if
``` scheme
(if test-expr then-expr else-expr)
(if test-expr then-expr)
```

### quote
``` scheme
(quote datum)
```

### quote-syntax
``` scheme
(quote-syntax id)
```

Quote an identifier `id`, capturing its syntactic context.

## Expander Hooks
```
(%%app rator rand ...)
(%%ref id)
(%%begin-module body ...)
```
Special expander indirection hooks; explained elsewhere in the documentation.

## Reserved Syntactic Tokens
The following widely used syntactic tokens are defined as reserved expanders:
```
_ ... else => unquote unquote-splicing unsyntax unsyntax-splicing
```

