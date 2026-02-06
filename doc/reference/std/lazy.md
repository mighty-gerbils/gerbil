# Primitives for Lazy Evaluation

Primitives for iterative lazy algorithms, as specified in R7RS; see also
[SRFI-45](https://srfi.schemers.org/srfi-45/).

The implementation avoids the space leaks that naive `delay`/`force`
implementations suffer from when used in iterative lazy algorithms.

::: tip To use the bindings from this module:
```scheme
(import :std/lazy)
```
:::

## lazy
```scheme
(lazy expr) -> lazy-promise
```

Creates a lazy promise that, when forced, evaluates *expr*. The expression
*expr* must return a lazy promise (created by `lazy` or `delay`). This is
the primitive for building iterative lazy algorithms without space leaks.

::: tip Example:
```scheme
(import :std/lazy)

;; Lazy stream of integers
(def (integers-from n)
  (lazy (delay (cons n (integers-from (+ n 1))))))

(def nats (integers-from 0))
(car (force nats))       ;; => 0
(car (force (cdr (force nats))))  ;; => 1
```
:::

## delay
```scheme
(delay expr) -> lazy-promise
```

Creates a lazy promise that, when forced, evaluates *expr* and wraps the
result with `eager`. This is equivalent to `(lazy (eager expr))`.

Use `delay` when *expr* returns a regular value. Use `lazy` when *expr*
returns a promise (to avoid nesting promises).

::: tip Example:
```scheme
(import :std/lazy)

(def p (delay (begin (displayln "computing...") 42)))
(force p)
;; computing...
;; => 42
(force p)
;; => 42   (not recomputed)
```
:::

## force
```scheme
(force obj) -> value
```

Forces the evaluation of a lazy promise *obj*, returning its value. If *obj*
has already been forced, returns the cached value without recomputation. If
*obj* is not a lazy promise but a regular Gambit promise, forces it. If *obj*
is neither, the behavior depends on the underlying Gambit `force`.

Handles iterative lazy algorithms correctly by collapsing chains of lazy
promises, avoiding stack overflow on deeply nested lazy structures.

::: tip Example:
```scheme
(import :std/lazy)

(def (lazy-filter pred? stream)
  (lazy
    (let ((s (force stream)))
      (if (null? s) (delay '())
          (let ((head (car s)) (tail (cdr s)))
            (if (pred? head)
              (delay (cons head (lazy-filter pred? tail)))
              (lazy-filter pred? tail)))))))

(def evens (lazy-filter even? (integers-from 0)))
(car (force evens))  ;; => 0
(car (force (cdr (force evens))))  ;; => 2
```
:::

## lazy?
```scheme
(lazy? obj) -> boolean
```

Returns `#t` if *obj* is a lazy promise created by `lazy`, `delay`, or
`eager`.

::: tip Example:
```scheme
(import :std/lazy)

(lazy? (delay 42))  ;; => #t
(lazy? (lazy (delay 42)))  ;; => #t
(lazy? 42)  ;; => #f
```
:::

## eager
```scheme
(eager obj) -> lazy-promise
```

Wraps *obj* as an already-resolved lazy promise. If *obj* is already a lazy
promise, returns it unchanged. If *obj* is a Gambit promise, wraps it as an
eager lazy promise. Otherwise, wraps the value directly as resolved.

This is used internally by `delay` and in the implementation of iterative
lazy algorithms.

::: tip Example:
```scheme
(import :std/lazy)

(def p (eager 42))
(lazy? p)    ;; => #t
(force p)    ;; => 42
```
:::
