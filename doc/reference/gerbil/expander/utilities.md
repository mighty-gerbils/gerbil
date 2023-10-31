## Utilities

### stx-boolean?
```scheme
(stx-boolean? ...)
```

Please document me!

### stx-keyword?
```scheme
(stx-keyword? ...)
```

Please document me!

### stx-char?
```scheme
(stx-char? ...)
```

Please document me!

### stx-number?
```scheme
(stx-number? ...)
```

Please document me!

### stx-fixnum?
```scheme
(stx-fixnum? ...)
```

Please document me!

### stx-string?
```scheme
(stx-string? ...)
```

Please document me!

### stx-null?
```scheme
(stx-null? ...)
```

Please document me!

### stx-pair?
```scheme
(stx-pair? ...)
```

Please document me!

### stx-pair/null?
```scheme
(stx-pair/null? ...)
```

Please document me!

### stx-list?
```scheme
(stx-list? ...)
```

Please document me!

### stx-box?
```scheme
(stx-box? ...)
```

Please document me!

### stx-vector?
```scheme
(stx-vector? ...)
```

Please document me!

### stx-datum?
```scheme
(stx-datum? ...)
```

Please document me!

### stx-eq?
```scheme
(stx-eq? ...)
```

Please document me!

### stx-eqv?
```scheme
(stx-eqv? ...)
```

Please document me!

### stx-equal?
```scheme
(stx-equal? ...)
```

Please document me!

### stx-false?
```scheme
(stx-false? ...)
```

Please document me!

### stx-e
```scheme
(stx-e ...)
```

Please document me!

### stx-source
```scheme
(stx-source stx) -> locat | #f
  stx := syntax
```
:::

Returns the source location of a syntax object AST `stx`.

The `locat` structure includes the container and filepos, accessed by `##locat-container` and `##locat-filepos`. The filepos has line and column information, accessed with `##filepos-line` and `##filepos-col`.

### stx-wrap-source

```scheme
(stx-wrap-source stx src) -> syntax
  stx := any
  src := locat
```
:::

Produces a new syntax object with source location `src`
if `stx` is not wrapped as an AST already, otherwise returns `stx` unchanged.

The `locat` structure can be constructed with
`(##make-locat container filepos filepos-end)`, where:
  - `container` is a string denoting a file path, or a list containing
    a symbol denoting the provenance (string, port, etc.).
  - `filepos` can be constructed with `(##make-filepos line col off)`.
  - `filepos-end` can be `#f` if the location is a position, or
    a number similar to `filepos` indicating the end position (not included)
    if the location is a range.

### stx-car
```scheme
(stx-car ...)
```

Please document me!

### stx-cdr
```scheme
(stx-cdr ...)
```

Please document me!

### stx-length
```scheme
(stx-length ...)
```

Please document me!

### stx-for-each
```scheme
(stx-for-each ...)
```

Please document me!

### stx-map
```scheme
(stx-map ...)
```

Please document me!

### stx-foldl
```scheme
(stx-foldl ...)
```

Please document me!

### stx-foldr
```scheme
(stx-foldr ...)
```

Please document me!

### stx-reverse
```scheme
(stx-reverse ...)
```

Please document me!

### stx-last
```scheme
(stx-last ...)
```

Please document me!

### stx-last-pair
```scheme
(stx-last-pair ...)
```

Please document me!

### stx-list-tail
```scheme
(stx-list-tail ...)
```

Please document me!

### stx-list-ref
```scheme
(stx-list-ref ...)
```

Please document me!

### stx-andmap
```scheme
(stx-andmap ...)
```

Please document me!

### stx-ormap
```scheme
(stx-ormap ...)
```

Please document me!

### stx-plist?
```scheme
(stx-plist? ...)
```

Please document me!

### stx-getq
```scheme
(stx-getq ...)
```

Please document me!
