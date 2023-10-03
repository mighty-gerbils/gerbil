## Utilities

### stx-boolean?
```
(stx-boolean? ...)
```

Please document me!

### stx-keyword?
```
(stx-keyword? ...)
```

Please document me!

### stx-char?
```
(stx-char? ...)
```

Please document me!

### stx-number?
```
(stx-number? ...)
```

Please document me!

### stx-fixnum?
```
(stx-fixnum? ...)
```

Please document me!

### stx-string?
```
(stx-string? ...)
```

Please document me!

### stx-null?
```
(stx-null? ...)
```

Please document me!

### stx-pair?
```
(stx-pair? ...)
```

Please document me!

### stx-pair/null?
```
(stx-pair/null? ...)
```

Please document me!

### stx-list?
```
(stx-list? ...)
```

Please document me!

### stx-box?
```
(stx-box? ...)
```

Please document me!

### stx-vector?
```
(stx-vector? ...)
```

Please document me!

### stx-datum?
```
(stx-datum? ...)
```

Please document me!

### stx-eq?
```
(stx-eq? ...)
```

Please document me!

### stx-eqv?
```
(stx-eqv? ...)
```

Please document me!

### stx-equal?
```
(stx-equal? ...)
```

Please document me!

### stx-false?
```
(stx-false? ...)
```

Please document me!

### stx-e
```
(stx-e ...)
```

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
```
(stx-car ...)
```

Please document me!

### stx-cdr
```
(stx-cdr ...)
```

Please document me!

### stx-length
```
(stx-length ...)
```

Please document me!

### stx-for-each
```
(stx-for-each ...)
```

Please document me!

### stx-map
```
(stx-map ...)
```

Please document me!

### stx-foldl
```
(stx-foldl ...)
```

Please document me!

### stx-foldr
```
(stx-foldr ...)
```

Please document me!

### stx-reverse
```
(stx-reverse ...)
```

Please document me!

### stx-last
```
(stx-last ...)
```

Please document me!

### stx-last-pair
```
(stx-last-pair ...)
```

Please document me!

### stx-list-tail
```
(stx-list-tail ...)
```

Please document me!

### stx-list-ref
```
(stx-list-ref ...)
```

Please document me!

### stx-andmap
```
(stx-andmap ...)
```

Please document me!

### stx-ormap
```
(stx-ormap ...)
```

Please document me!

### stx-plist?
```
(stx-plist? ...)
```

Please document me!

### stx-getq
```
(stx-getq ...)
```

Please document me!
