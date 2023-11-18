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
``` scheme
(vector-least-index pred vector [start: 0] [end: #f])
```

Given a predicate `pred` on the elements of given `vector`, that is “increasing”,
i.e. if true for a given element, true on all subsequent elements, and optionally
a `start` (inclusive, defaults to `0`) and an end (exclusive, defaults to `#f`
which designates the vector length), return the least index of a vector element
in the interval [start, env) that satisfies the predicate, or the end if none does.

::: tip Examples:
``` scheme
> (vector-least-index (cut < 10) #(35 21 16 11 10 9 7 4 1))
5
```
:::

### vector-most-index
``` scheme
(vector-most-index pred vector [start: 0] [end: #f])
```

Given a predicate `pred` on the elements of given `vector`, that is “decreasing”,
i.e. if false for a given element, false on all subsequent elements, and optionally
a `start` (inclusive, defaults to `0`) and an end (exclusive, defaults to `#f`
which designates the vector length), return the most index of a vector element
in the interval [start, env) that satisfies the predicate, or the end if none does.

::: tip Examples:
``` scheme
> (vector-most-index (cut < 10) #(2 3 5 7 11 13 17 19 23))
4
```
:::

### maybe-subvector

### subvector-for-each

### subvector-for-each/index

### subvector-reverse-for-each

### subvector-reverse-for-each/index

### subvector->list

### cons->vector

### vector-filter
