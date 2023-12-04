# Vector

The `:std/misc/vector` library provides common vector functions
that complement those provided by RnRS, Gambit, `:std/srfi/43` and `:std/srfi/133`.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/vector)
```
:::

## vector-map/index
```
(vector-map/index f vector ...) => new-vector
```

Constructs a new vector of the shortest length of the `vector` arguments.
Each element at index `i` of the new-vector is mapped
from the old `vector`s by `(f i (vector-ref vec i) ...)`.
The dynamic order of application of `f` is unspecified.
There must be a least one `vector` argument.

This is the variant of `vector-map` from `:std/srfi/43`,
that passes an index as well as vector elements to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-for-each/index
```
(vector-for-each/index f vector ...) => unspecified
```

Simple vector iterator: applies `f` to each index in the range `[0, length)`,
where `length` is the length of the smallest vector argument passed, and
the respective elements of each vector argument at that index.
In contrast with `vector-map/index`,
`f` is reliably applied to each subsequent elements,
starting at index 0 from left to right, in the vectors.
The function is called for side-effects, and the value returned is unspecified.
There must be a least one `vector` argument.

This is the variant of `vector-for-each` from `:std/srfi/43`,
that passes an index as well as elements of each vector argument to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-map!/index
```
(vector-map!/index f vector ...) => unspecified
```

Similar to `vector-map/index`, but
rather than mapping the new elements into a new vector,
the new mapped elements are destructively inserted into the first `vector`.
Again, the dynamic order of application of `f` is unspecified,
so it is dangerous for `f` to manipulate the first `vector`.
There must be a least one `vector` argument.

This is the variant of `vector-map!` from `:std/srfi/43`,
that passes an index as well as a value to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-fold/index
```
(vector-fold/index kons knil vector ...) => unspecified
```
The fundamental vector iterator.
`kons` is iterated over each index in all of the vectors in parallel,
stopping at the end of the shortest;
`kons` is applied to an argument list of
`(list i state (vector-ref vector i) ...)`,
where `state` is the current state value —
the state value begins with `knil` and becomes
whatever `kons` returned at the respective iteration —,
and `i` is the current index in the iteration.
The iteration is strictly left-to-right.
There must be a least one `vector` argument.

```
(vector-fold kons knil (vector e_1 e_2 ... e_n))
  <=>
(kons (... (kons (kons knil e_1) e_2) ... e_n-1) e_n)
```

This is the variant of `vector-fold` from `:std/srfi/43`,
that passes an index as well as vector elements to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-fold-right/index
```
(vector-fold-right/index kons knil vector ...) => unspecified
```

The fundamental vector recursor.
Iterates in parallel across `vector ...` right to left,
applying `kons` to the elements and the current state value;
the state value becomes what `kons` returns at each next iteration.
`knil` is the initial state value.
There must be a least one `vector` argument.
```
(vector-fold-right kons knil (vector e_1 e_2 ... e_n))
  <=>
(kons (... (kons (kons knil e_n) e_n-1) ... e_2) e_1)
```

This is the variant of `vector-fold-right` from `:std/srfi/43`,
that passes an index as well as a value to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-count/index
```scheme
(vector-count predicate? vector ...) => exact, nonnegative integer
```

`predicate?` is applied element-wise to the index and the elements of `vector ...`,
and a count is tallied of the number of elements for which
a true value is produced by `predicate?`.  This count is returned.
There must be a least one `vector` argument.

This is the variant of `vector-count` from `:std/srfi/43`,
that passes an index as well as a value to the function argument,
unlike the variant in R7RS or in `:std/srfi/133`.

## vector-least-index
```scheme
(vector-least-index pred vector [start: 0] [end: #f])
```

Given a predicate `pred` on the elements of given `vector`, that is “increasing”,
i.e. if true for a given element, true on all subsequent elements, and optionally
a `start` (inclusive, defaults to `0`) and an end (exclusive, defaults to `#f`
which designates the vector length), return the least index of a vector element
in the interval [start, env) that satisfies the predicate, or the end if none does.

::: tip Examples:
```scheme
> (vector-least-index (cut < <> 10) #(35 21 16 11 10 9 7 4 1))
5
> (vector-least-index true #(35 21 16 11 10 9 7 4 1))
0
> (vector-least-index false #(35 21 16 11 10 9 7 4 1))
9
```
:::

## maybe-subvector
```scheme
(maybe-subvector vector [start 0] [end #f]) => vector
```

Copy a vector if necessary: return the same if no change in start and end requested.
(This is unlike `subvector` that always generates a fresh vector.)

::: tip Examples:
```scheme
> (maybe-subvector #(1 3 5 7) 2)
#(5 7)
> (def foo #(a b c))
> (eq? foo (maybe-subvector foo 0 3))
#t
```
:::

## subvector-for-each
```scheme
(subvector-for-each function vector start: (start 0) end: (end #f))
```

::: tip Examples:
```scheme
> (with-list-builder (c)
   (subvector-for-each
    c #(a b c d e f g h) start: 2 end: 5))
(c d e)
```
:::

## subvector-for-each/index
```scheme
(subvector-for-each/index function vector start: (start 0) end: (end #f))
```

::: tip Examples:
```scheme
> (with-list-builder (c)
   (subvector-for-each/index
    (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
((5 f) (6 g) (7 h))
```
:::

## subvector-reverse-for-each
```scheme
(subvector-reverse-for-each function vector start: (start 0) end: (end #f))
```

::: tip Examples:
```scheme
> (with-list-builder (c)
   (subvector-reverse-for-each c #(a b c d e f g h) start: 2 end: 5))
(e d c)
```
:::

## subvector-reverse-for-each/index
```scheme
(subvector-reverse-for-each/index function vector start: (start 0) end: (end #f))
```

::: tip Examples:
```scheme
> (with-list-builder (c)
   (subvector-reverse-for-each/index
    (lambda (x y) (c [x y])) #(a b c d e f g h) start: 5))
((7 h) (6 g) (5 f))
```
:::

## subvector->list
```scheme
(subvector->list vector start: (start 0) end: (end #f))
```

::: tip Examples:
```scheme
> (subvector->list #(a b c d e f g h) start: 5)
(f g h)
```
:::

## cons->vector
```scheme
(cons->vector pair)
```

::: tip Examples:
```scheme
> (cons->vector '(a . b))
#(a b)
> (cons->vector 'foo)
#f
```
:::

## vector-filter
```scheme
(vector-filter pred? v start: (start 0) end: (end #f))
```

Filter entries of a vector `v` to those that satisfy the predicate `pred?`
and having indexes between the optional `start` (inclusive, defaults to `0`)
and an end (exclusive, defaults to `#f` which designates the vector length).
Return a fresh vector with the filtered entries.

::: tip Examples:
```
> (vector-filter odd? #(1 2 3 4 5 6 7 8 9) start: 1 end: 7)
#(3 5 7)
```
:::
