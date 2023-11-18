# Vector

The `:std/misc/vector` library provides common vector functions
that complement those provided by RnRS, Gambit and `:std/srfi/43`.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/vector)
```
:::

## vector-ref-set!

``` scheme
(def vector-ref-set! vector-set!)
(set! (vector-ref v i) x)
```

This binding enables you to use `set!` with `vector-ref`.

::: tip Examples:
``` scheme
> (def foo (vector 1 2 3))
> (set! (vector-ref foo 1) 4)
> foo
#(1 4 3)
```
:::

### vector-least-index

### vector-most-index

### maybe-subvector

### subvector-for-each

### subvector-for-each/index

### subvector-reverse-for-each

### subvector-reverse-for-each/index

### subvector->list

### cons->vector

### vector-filter
