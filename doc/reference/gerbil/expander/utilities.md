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

