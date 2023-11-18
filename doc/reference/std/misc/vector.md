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
> (vector-least-index (cut < <> 10) #(35 21 16 11 10 9 7 4 1))
5
> (vector-least-index true #(35 21 16 11 10 9 7 4 1))
0
> (vector-least-index false #(35 21 16 11 10 9 7 4 1))
9
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
> (vector-most-index (cut < <> 10) #(2 3 5 7 11 13 17 19 23))
4
> (vector-most-index true #(2 3 5 7 11 13 17 19 23))
9
> (vector-most-index false #(2 3 5 7 11 13 17 19 23))
0
```
:::

### maybe-subvector

::: tip Examples:
``` scheme
> (maybe-subvector #(1 3 5 7) 2)
#(5 7)
> (def foo #(a b c))
> (eq? foo (maybe-subvector foo 0 3))
#t
```
:::

### subvector-for-each

::: tip Examples:
``` scheme
> (with-list-builder (c)
   (subvector-for-each
    c #(a b c d e f g h) start: 2 end: 5))
(c d e)
```
:::

### subvector-for-each/index

::: tip Examples:
``` scheme
> (with-list-builder (c)
   (subvector-for-each/index
    (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
((5 f) (6 g) (7 h))
```
:::

### subvector-reverse-for-each

::: tip Examples:
``` scheme
> (with-list-builder (c)
   (subvector-reverse-for-each c #(a b c d e f g h) start: 2 end: 5))
(e d c)
```
:::

### subvector-reverse-for-each/index

::: tip Examples:
``` scheme
> (with-list-builder (c)
   (subvector-reverse-for-each/index
    (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
((7 h) (6 g) (5 f))
```
:::

### subvector->list

::: tip Examples:
``` scheme
> (subvector->list #(a b c d e f g h) start: 5)
(f g h)
```
:::

### cons->vector

::: tip Examples:
``` scheme
> (cons->vector '(a . b))
#(a b)
> (cons->vector 'foo)
#f
```
:::

### vector-filter
::: tip Examples:
```
> (vector-filter odd? #(1 2 3 4 5 6 7 8 9) start: 1 end: 7)
#(3 5 7)
```
:::
