# Functional utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/func)
```
:::

Collection of mixed purpose higher-order functions.

## always
``` scheme
(always val)            -> procedure
(always proc [arg ...]) -> procedure

  val     := value that should always be returned
  proc    := procedure that should always be called
  arg ... := optional arguments that will be passed to proc
```

Creates a lambda which returns the same `val` or calls always the
same `proc` with the same optional `args`.

::: tip Examples:
``` scheme
> (def fn (always 5))
> (list (fn) (fn) (fn)))
(5 5 5)

> (def fn (always random-integer 10))
> [(fn) (fn) (fn)]
(4 3 8)
```
:::

## repeat
``` scheme
(repeat val n)            -> list
(repeat proc n [arg ...]) -> list

  val     := value that should be repeated
  proc    := proc that should be called n times
  n       := exact number, repetitions
  arg ... := optional arguments that will be passed to proc
```

Repeat `val` or call `proc` with the optional `args` `n` times and return the
result as list. `n` is expected to be an exact number.

::: tip Examples:
``` scheme
> (repeat 2 5)
(2 2 2 2 2)

> (repeat (lambda () 10) 3)
(10 10 10)

> (repeat random-integer 3 10)
(8 3 5)
```
:::

## compose1
```scheme
(compose1 f1 f ...) -> procedure

  f1, f ... := procedures
```

Composes a sequence of unary functions; per the mathematical function composition
the value flows right-to-left.

## rcompose1
```scheme
(rcompose1 f1 f ...) -> procedure

  f1, f ... := procedures
```

Like `compose1`, but the value flows left-to-right.

## compose
```scheme
(compose f1 f ...) -> procedure

  f1, f ... := procedures
```

Like `compose1`, but the composed function accepts multiple arguments.

Note: If you are composing unary functions, use `compose1`, as it avoids allocation
from capturing arguments for apply.

## rcompose
```scheme
(rcompose f1 f ...) -> procedure

  f1, f ... := procedures
```

Like `compose`, but the values flow left-to-right.

## compose/values
```scheme
(compose/values f1 f ...) -> procedure

  f1, f ... := procedures
```

Like `compose`, but the composed function accepts multiple arguments and all functions
can return multiple values, which are then applied as arguments to the next function in
the sequence.

## rcompose/values
```scheme
(rcompose/values f1 f ...) -> procedure

  f1, f ... := procedures
```

Like `compose/values`, but the values flow left-to-right.

## Functional composition macros
```scheme
(@compose1 f1 f ...)
(@compose f1 f ...)
(@compose/values f1 f ...)
(@rcompose1 f1 f ...)
(@rcompose f1 f ...)
(@rcompose/values f1 f ...)
```

These are macro versions of the functional composition operators; they generate
significantly more efficient code and allow the optimizer to see through the composition.

## every-of
``` scheme
(every-of preds v [test: equal?]) -> boolean

  preds := list of predicates or values
  v     := value to compare with predicates
  test  := optional, if preds contains a value, test is used for comparison
```

`every-of` returns `#t` if all predicates match. If `preds` contains a
non-predicate, it is transformed into one using `equal?` as test if not
overridden by the `test:` keyword.

::: tip Examples:
``` scheme
> (every-of [number? fixnum?] 2)
#t

> (every-of [] 1)
#t

> (every-of [number? 10] 10 test: =)
#t
```
:::

## any-of
``` scheme
(any-of preds v [test: equal?]) -> boolean

  preds := list of predicates or values
  v     := value to compare with predicates
  test  := optional, if preds contains a value, test is used for comparison
```

`any-of` returns `#t` if one predicate matches. If `preds` contains a
non-predicate, it is transformed into one using `equal?` as test if not
overridden by the `test:` keyword.

::: tip Examples:
``` scheme
> (any-of [number? symbol?] 'a)
#t

> (any-of [] 1)
#f

> (any-of ['a 'b] 'b test: eq?)
#t
```
:::

## pred-limit
``` scheme
(pred-limit pred limit) -> procedure

  pred  := predicate
  limit := number of times pred is allowed to return a truthy value
```

`pred-limit` returns a predicate which returns a truthy value only `limit` times,
if `limit` is not false.

::: tip Examples:
``` scheme
> (filter (pred-limit even? 1) [1 2 3 4 5 6])
(2)

(def (myfilter pred list (limit #f))
  (filter (pred-limit pred limit) list))

> (myfilter even? [1 2 3 4 5 6])
(2 4 6)

> (myfilter even? [1 2 3 4 5 6] 2)
(2 4)

> (myfilter even? [1 2 3 4 5 6] 0)
()
```
:::

## pred-sequence
``` scheme
(pred-sequence lst [limit = #f]) -> procedure

  lst   := proper or circular list
  limit := optional, return #t only limit times
```
`pred-sequence` returns a predicate which returns `#t` on the last element
of a matching sequence. The list elements are compared using `equal?`.
`#t` is returned `limit` times, if `limit` is not `#f`.

::: tip Examples:
``` scheme
> (import (only-in :std/srfi/13 string-count))
> (string-count "ab_ab" (pred-sequence [#\a #\b]))
2

> (let (fn (pred-sequence [1 2]))
    (fn 0)  ; #f
    (fn 1)  ; #f
    (fn 2)) ; #t
```
:::

## pred-and
``` scheme
(pred-and pred) -> procedure

  pred  := predicate
```
`pred-and` returns `#t` when every `pred` invocation returned a truethy value.

::: tip Examples:
``` scheme
> (let (fn (pred-and number?))
    (fn 10)
    (fn 20))
#t
```
:::

## pred-or
``` scheme
(pred-or pred) -> procedure

  pred  := predicate
```

`pred-or` returns `#t` when any `pred` invocation returned a truethy value.

::: tip Examples:
``` scheme
> (let (fn (pred-or number?))
    (fn 'a)
    (fn 20)
    (fn "b"))
#t
```
:::

## pred-every-of
``` scheme
(pred-every-of preds [test: equal?]) -> procedure

  preds := list of predicates or values
  test  := optional, if preds contains a value, test is used for comparison
```
`pred-every-of` returns a predicate which returns `#t` if all predicates match.
If preds contains a non-predicate, it is transformed into one using `equal?`
as test if not overridden by the `test:` keyword.

::: tip Examples:
``` scheme
> (filter (pred-every-of [number? fixnum?]) [1 'a 2.0 "b" 30])
(1 30)
```
:::

## pred-any-of
``` scheme
(pred-any-of preds [test: equal?]) -> procedure

  preds := list of predicates or values
  test  := optional, if preds contains a value, test is used for comparison
```
`pred-any-of` returns a predicate which returns `#t` if one predicate matches.
If preds contains a non-predicate, it is transformed into one using `equal?`
as test if not overridden by the `test:` keyword.

::: tip Examples:
``` scheme
> (filter (pred-any-of [number? fixnum? "b"]) [1 'a 2.0 "b" 30])
(1 2. "b" 30)

> (import :std/sugar)
> (def files (directory-files))

> (filter (is path-extension (pred-any-of [".jpg" ".jpeg" ".png"])) files)
("xkcd_lisp.jpg" "logo.png")
```
:::
