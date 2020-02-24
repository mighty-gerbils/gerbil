# Expander Runtime

The following procedures are part of the expander API, accessible at
phi=+1 in the core prelude.

These symbols are part of the `<expander-runtime>` module, defined at
the core prelude, which you can import directly if you need to work
with the expander at phi=0, for instance in source processing tools.

## Syntax Errors

### raise-syntax-error
::: tip usage
```
(raise-syntax-error ...)
```
:::

Please document me!

### syntax-error?
::: tip usage
```
(syntax-error? ...)
```
:::

Please document me!

## Syntax Objects

### datum-&gt;syntax
::: tip usage
```
(datum->syntax ...)
```
:::

Please document me!

### syntax-&gt;datum
::: tip usage
```
(syntax->datum ...)
```
:::

Please document me!

### syntax-e
::: tip usage
```
(syntax-e ...)
```
:::

Please document me!

### syntax-&gt;list
::: tip usage
```
(syntax->list ...)
```
:::

Please document me!


## Identifiers

### identifier?
::: tip usage
```
(identifier? ...)
```
:::

Please document me!

### free-identifier=?
::: tip usage
```
(free-identifier=? ...)
```
:::

Please document me!

### bound-identifier=?
::: tip usage
```
(bound-identifier=? ...)
```
:::

Please document me!

### genident
::: tip usage
```
(genident ...)
```
:::

Please document me!

### gentemps
::: tip usage
```
(gentemps ...)
```
:::

Please document me!

### stx-identifier
::: tip usage
```
(stx-identifier ...)
```
:::

Please document me!

### identifier-list?
::: tip usage
```
(identifier-list? ...)
```
:::

Please document me!

### check-duplicate-identifiers
::: tip usage
```
(check-duplicate-identifiers ...)
```
:::

Please document me!

### underscore?
::: tip usage
```
(underscore? ...)
```
:::

Please document me!

### ellipsis?
::: tip usage
```
(ellipsis? ...)
```
:::

Please document me!


## Utilities

### stx-boolean?
::: tip usage
```
(stx-boolean? ...)
```
:::

Please document me!

### stx-keyword?
::: tip usage
```
(stx-keyword? ...)
```
:::

Please document me!

### stx-char?
::: tip usage
```
(stx-char? ...)
```
:::

Please document me!

### stx-number?
::: tip usage
```
(stx-number? ...)
```
:::

Please document me!

### stx-fixnum?
::: tip usage
```
(stx-fixnum? ...)
```
:::

Please document me!

### stx-string?
::: tip usage
```
(stx-string? ...)
```
:::

Please document me!

### stx-null?
::: tip usage
```
(stx-null? ...)
```
:::

Please document me!

### stx-pair?
::: tip usage
```
(stx-pair? ...)
```
:::

Please document me!

### stx-pair/null?
::: tip usage
```
(stx-pair/null? ...)
```
:::

Please document me!

### stx-list?
::: tip usage
```
(stx-list? ...)
```
:::

Please document me!

### stx-box?
::: tip usage
```
(stx-box? ...)
```
:::

Please document me!

### stx-vector?
::: tip usage
```
(stx-vector? ...)
```
:::

Please document me!

### stx-datum?
::: tip usage
```
(stx-datum? ...)
```
:::

Please document me!

### stx-eq?
::: tip usage
```
(stx-eq? ...)
```
:::

Please document me!

### stx-eqv?
::: tip usage
```
(stx-eqv? ...)
```
:::

Please document me!

### stx-equal?
::: tip usage
```
(stx-equal? ...)
```
:::

Please document me!

### stx-false?
::: tip usage
```
(stx-false? ...)
```
:::

Please document me!

### stx-e
::: tip usage
```
(stx-e ...)
```
:::

Please document me!

### stx-source

```
(stx-source stx) -> locat | #f
  stx := syntax
```
:::

Returns the source location of a syntax object AST `stx`.

The `locat` structure includes the container and filepos, accessed by `##locat-container` and `##locat-filepos`. The filepos has line and column information, accessed with `##filepos-line` and `##filepos-col`.

### stx-wrap-source

```
(stx-wrap-source stx src) -> syntax
  stx := any
  src := locat
```
:::

Produces a new syntax object with source location `src` if `stx` is not wrapped as an AST already, otherwise returns `stx` unchanged.

The `locat` structure can be constructed with `(##make-locat container filepos)`, where a filepos can be constructed with `(##make-filepos line col off)`.

### stx-car
::: tip usage
```
(stx-car ...)
```
:::

Please document me!

### stx-cdr
::: tip usage
```
(stx-cdr ...)
```
:::

Please document me!

### stx-length
::: tip usage
```
(stx-length ...)
```
:::

Please document me!

### stx-for-each
::: tip usage
```
(stx-for-each ...)
```
:::

Please document me!

### stx-map
::: tip usage
```
(stx-map ...)
```
:::

Please document me!

### stx-foldl
::: tip usage
```
(stx-foldl ...)
```
:::

Please document me!

### stx-foldr
::: tip usage
```
(stx-foldr ...)
```
:::

Please document me!

### stx-reverse
::: tip usage
```
(stx-reverse ...)
```
:::

Please document me!

### stx-last
::: tip usage
```
(stx-last ...)
```
:::

Please document me!

### stx-last-pair
::: tip usage
```
(stx-last-pair ...)
```
:::

Please document me!

### stx-list-tail
::: tip usage
```
(stx-list-tail ...)
```
:::

Please document me!

### stx-list-ref
::: tip usage
```
(stx-list-ref ...)
```
:::

Please document me!

### stx-andmap
::: tip usage
```
(stx-andmap ...)
```
:::

Please document me!

### stx-ormap
::: tip usage
```
(stx-ormap ...)
```
:::

Please document me!

### stx-plist?
::: tip usage
```
(stx-plist? ...)
```
:::

Please document me!

### stx-getq
::: tip usage
```
(stx-getq ...)
```
:::

Please document me!


## syntax-case

### macro-expand-syntax
::: tip usage
```
(macro-expand-syntax ...)
```
:::

Please document me!

### macro-expand-syntax-case
::: tip usage
```
(macro-expand-syntax-case ...)
```
:::

Please document me!

### syntax-pattern?
::: tip usage
```
(syntax-pattern? ...)
```
:::

Please document me!

### syntax-local-pattern?
::: tip usage
```
(syntax-local-pattern? ...)
```
:::

Please document me!

### make-syntax-pattern
::: tip usage
```
(make-syntax-pattern ...)
```
:::

Please document me!

### syntax-pattern-id
::: tip usage
```
(syntax-pattern-id ...)
```
:::

Please document me!

### syntax-pattern-depth
::: tip usage
```
(syntax-pattern-depth ...)
```
:::

Please document me!

### syntax-check-splice-targets
::: tip usage
```
(syntax-check-splice-targets ...)
```
:::

Please document me!

### syntax-split-splice
::: tip usage
```
(syntax-split-splice ...)
```
:::

Please document me!


## Core Expander

### current-expander-context
::: tip usage
```
(current-expander-context ...)
```
:::

Please document me!

### current-expander-marks
::: tip usage
```
(current-expander-marks ...)
```
:::

Please document me!

### current-expander-path
::: tip usage
```
(current-expander-path ...)
```
:::

Please document me!

### current-expander-phi
::: tip usage
```
(current-expander-phi ...)
```
:::

Please document me!

### current-module-reader-path
::: tip usage
```
(current-module-reader-path ...)
```
:::

Please document me!

### current-module-reader-args
::: tip usage
```
(current-module-reader-args ...)
```
:::

Please document me!

### local-context?
::: tip usage
```
(local-context? ...)
```
:::

Please document me!

### top-context?
::: tip usage
```
(top-context? ...)
```
:::

Please document me!

### module-context?
::: tip usage
```
(module-context? ...)
```
:::

Please document me!

### prelude-context?
::: tip usage
```
(prelude-context? ...)
```
:::

Please document me!

### expander-context-id
::: tip usage
```
(expander-context-id ...)
```
:::

Please document me!

### module-context-ns
::: tip usage
```
(module-context-ns ...)
```
:::

Please document me!

### module-context-import
::: tip usage
```
(module-context-import ...)
```
:::

Please document me!

### module-context-export
::: tip usage
```
(module-context-export ...)
```
:::

Please document me!

### module-context-code
::: tip usage
```
(module-context-code ...)
```
:::

Please document me!

### make-local-context
::: tip usage
```
(make-local-context ...)
```
:::

Please document me!

### eval-syntax
::: tip usage
```
(eval-syntax ...)
```
:::

Please document me!

### core-expand
::: tip usage
```
(core-expand ...)
```
:::

Please document me!

### core-expand-head
::: tip usage
```
(core-expand-head ...)
```
:::

Please document me!

### core-expand-expression+1
::: tip usage
```
(core-expand-expression+1 ...)
```
:::

Please document me!

### import-module
::: tip usage
```
(import-module ...)
```
:::

Please document me!

### eval-module
::: tip usage
```
(eval-module ...)
```
:::

Please document me!

### core-library-module-path?
::: tip usage
```
(core-library-module-path? ...)
```
:::

Please document me!

### core-resolve-library-module-path
::: tip usage
```
(core-resolve-library-module-path ...)
```
:::

Please document me!

### core-resolve-module-path
::: tip usage
```
(core-resolve-module-path ...)
```
:::

Please document me!

### core-quote-syntax
::: tip usage
```
(core-quote-syntax ...)
```
:::

Please document me!

### core-identifier=?
::: tip usage
```
(core-identifier=? ...)
```
:::

Please document me!

### core-identifier-key
::: tip usage
```
(core-identifier-key ...)
```
:::

Please document me!

### core-apply-expander
::: tip usage
```
(core-apply-expander ...)
```
:::

Please document me!

### syntax-local-introduce
::: tip usage
```
(syntax-local-introduce ...)
```
:::

Please document me!

### syntax-local-rewrap
::: tip usage
```
(syntax-local-rewrap ...)
```
:::

Please document me!

### syntax-local-unwrap
::: tip usage
```
(syntax-local-unwrap ...)
```
:::

Please document me!

### syntax-local-e
::: tip usage
```
(syntax-local-e ...)
```
:::

Please document me!

### syntax-local-value
::: tip usage
```
(syntax-local-value ...)
```
:::

Please document me!


## Bindings

### resolve-identifier
::: tip usage
```
(resolve-identifier ...)
```
:::

Please document me!

### core-resolve-identifier
::: tip usage
```
(core-resolve-identifier ...)
```
:::

Please document me!

### binding?
::: tip usage
```
(binding? ...)
```
:::

Please document me!

### binding-id
::: tip usage
```
(binding-id ...)
```
:::

Please document me!

### runtime-binding?
::: tip usage
```
(runtime-binding? ...)
```
:::

Please document me!

### top-binding?
::: tip usage
```
(top-binding? ...)
```
:::

Please document me!

### module-binding?
::: tip usage
```
(module-binding? ...)
```
:::

Please document me!

### extern-binding?
::: tip usage
```
(extern-binding? ...)
```
:::

Please document me!

### syntax-binding?
::: tip usage
```
(syntax-binding? ...)
```
:::

Please document me!

### syntax-binding-e
::: tip usage
```
(syntax-binding-e ...)
```
:::

Please document me!

### alias-binding?
::: tip usage
```
(alias-binding? ...)
```
:::

Please document me!

### alias-binding-e
::: tip usage
```
(alias-binding-e ...)
```
:::

Please document me!

### import-binding?
::: tip usage
```
(import-binding? ...)
```
:::

Please document me!

### import-binding-e
::: tip usage
```
(import-binding-e ...)
```
:::

Please document me!


## Expanders

### expander?
::: tip usage
```
(expander? ...)
```
:::

Please document me!

### expander-binding?
::: tip usage
```
(expander-binding? ...)
```
:::

Please document me!

### expander-e
::: tip usage
```
(expander-e ...)
```
:::

Please document me!

### expander-binding-e
::: tip usage
```
(expander-binding-e ...)
```
:::

Please document me!

### feature-expander?
::: tip usage
```
(feature-expander? ...)
```
:::

Please document me!

### user-expander?
::: tip usage
```
(user-expander? ...)
```
:::

Please document me!

### make-user-expander
::: tip usage
```
(make-user-expander ...)
```
:::

Please document me!

### user-expander-context
::: tip usage
```
(user-expander-context ...)
```
:::

Please document me!

### user-expander-phi
::: tip usage
```
(user-expander-phi ...)
```
:::

Please document me!

### import-expander?
::: tip usage
```
(import-expander? ...)
```
:::

Please document me!

### make-import-expander
::: tip usage
```
(make-import-expander ...)
```
:::

Please document me!

### export-expander?
::: tip usage
```
(export-expander? ...)
```
:::

Please document me!

### make-export-expander
::: tip usage
```
(make-export-expander ...)
```
:::

Please document me!

### import-export-expander?
::: tip usage
```
(import-export-expander? ...)
```
:::

Please document me!

### make-import-export-expander
::: tip usage
```
(make-import-export-expander ...)
```
:::

Please document me!


## Imports and Exports

### module-import?
::: tip usage
```
(module-import? ...)
```
:::

Please document me!

### make-module-import
::: tip usage
```
(make-module-import ...)
```
:::

Please document me!

### module-import-source
::: tip usage
```
(module-import-source ...)
```
:::

Please document me!

### module-import-name
::: tip usage
```
(module-import-name ...)
```
:::

Please document me!

### module-import-phi
::: tip usage
```
(module-import-phi ...)
```
:::

Please document me!

### module-import-weak?
::: tip usage
```
(module-import-weak? ...)
```
:::

Please document me!

### module-export?
::: tip usage
```
(module-export? ...)
```
:::

Please document me!

### make-module-export
::: tip usage
```
(make-module-export ...)
```
:::

Please document me!

### module-export-context
::: tip usage
```
(module-export-context ...)
```
:::

Please document me!

### module-export-key
::: tip usage
```
(module-export-key ...)
```
:::

Please document me!

### module-export-phi
::: tip usage
```
(module-export-phi ...)
```
:::

Please document me!

### module-export-name
::: tip usage
```
(module-export-name ...)
```
:::

Please document me!

### module-export-weak?
::: tip usage
```
(module-export-weak? ...)
```
:::

Please document me!

### import-set?
::: tip usage
```
(import-set? ...)
```
:::

Please document me!

### import-set-source
::: tip usage
```
(import-set-source ...)
```
:::

Please document me!

### import-set-phi
::: tip usage
```
(import-set-phi ...)
```
:::

Please document me!

### import-set-imports
::: tip usage
```
(import-set-imports ...)
```
:::

Please document me!

### export-set?
::: tip usage
```
(export-set? ...)
```
:::

Please document me!

### export-set-source
::: tip usage
```
(export-set-source ...)
```
:::

Please document me!

### export-set-phi
::: tip usage
```
(export-set-phi ...)
```
:::

Please document me!

### export-set-exports
::: tip usage
```
(export-set-exports ...)
```
:::

Please document me!

### core-resolve-module-export
::: tip usage
```
(core-resolve-module-export ...)
```
:::

Please document me!

### core-module-export-&gt;import
::: tip usage
```
(core-module-export->import ...)
```
:::

Please document me!

### core-expand-import-source
::: tip usage
```
(core-expand-import-source ...)
```
:::

Please document me!

### core-expand-export-source
::: tip usage
```
(core-expand-export-source ...)
```
:::

Please document me!
