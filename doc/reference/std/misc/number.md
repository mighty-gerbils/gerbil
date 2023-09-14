# Extended Real Number Line
The (affine) extended real number line, where real numbers are enriched
with positive and negative infinity, compactifying their order.
Positive infinity is represented by IEEE number `+inf.0` while
negative infinity is represented by IEEE number `-inf.0`,
so that common operations like `<` `<=` `+` `*`, etc., already work.
However, a few operations are provided in a library so that `max` and `min` functions
work better with infinities. Notably:

  * `(xmin)` will return `+inf.0` where `(min)` throws an error,
    and similarly `(xmax)` will return `-inf.0` where `(max)` throws an error.
  * `(xmax -inf.0 (+ 1 (expt 2 54)))` will return the exact integer `18014398509481985`,
    where `(max -inf.0 (+ 1 (expt 2 54)))` returns the rounded `1.8014398509481984e16`.
    More generally, `xmin` and `xmax` preserve the type of the argument they return.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/number)
```
:::

## xmin
``` scheme
(xmin <x1> ... <xn>) -> real
```

`xmin` returns the lower bound of the set of its extended real arguments.
In particular, it returns `+inf.0` (the positive infinity) if provided zero arguments,
and is the identity function when given a single argument.

## xmin/list
``` scheme
(xmin/list <l>) -> real
```

`xmin/list` returns the lower bound of the list of extended real arguments
passed as its arguments. In particular, it returns `+inf.0` (the positive
infinity) if provided an empty list.

## xmin!
``` scheme
(xmin! <var> <x> ...) -> void
```

`xmin!` side-effects a variable to change it to the `xmin`
of the previous value and the provided arguments.

## xmin/map
``` scheme
(xmin/map <f> <l> [<base>]) -> real
```

Given a list `<l>` or any thing you can iterate on, and a function `<f>`,
`xmin/map` returns the lower bound of the images by `<f>` of the items in `<l>`,
and of a `<base>` real, by default `+inf.0` (the positive infinity).
The function is short-circuiting and will not evaluate further values and their side-effects
after the bottom value `-inf.0` is reached.

## xmax
``` scheme
(xmax <x1> ... <xn>) -> real
```

`xmax` returns the upper bound of the set of its extended real arguments.
In particular, it returns `-inf.0` (the negative infinity) if provided zero arguments,
and is the identity function when given a single argument.

## xmax/list
``` scheme
(xmax/list <l>) -> real
```

`xmax/list` returns the lower bound of the list of extended real arguments passed as its arguments.
In particular, it returns `-inf.0` (the negative infinity) if provided an empty list.

## xmax!
``` scheme
(xmax! <var> <x> ...) -> void
```

`xmax!` side-effects a variable to change it to the `xmax`
of the previous value and the provided arguments.

## xmax/map
``` scheme
(xmax/map <f> <l> [<base>]) -> real
```

Given a list `<l>` or any thing you can iterate on, and a function `<f>`,
`xmax/map` returns the upper bound of the images by `<f>` of the items in `<l>`,
and of a `<base>` xreal, by default `-inf.0` (the negative infinity).
The function is short-circuiting and will not evaluate further values and their side-effects
after the top value `+inf.0` is reached.

## increment!, pre-increment!, post-increment!, decrement!, pre-decrement!, post-decrement!
``` scheme
(increment! place) -> (void)
(increment! place increment ...) -> (void)
(pre-increment! place) -> number
(pre-increment! place increment ...) -> number
(post-increment! place) -> number
(post-increment! place increment ...) -> number
(decrement! place) -> (void)
(decrement! place decrement ...) -> (void)
(pre-decrement! place) -> number
(pre-decrement! place decrement ...) -> number
(post-decrement! place) -> number
(post-decrement! place decrement ...) -> number
```

These macro will modify a variable or other place containing a number
to increment (respectively, decrement) its value, adding to it (respectively, subtracting from it)
one (if no further argument is specified) or the provided arguments (if specified).
*increment!* and *decrement!* return `#!void`,
*pre-increment!* and *pre-decrement!* return the value after addition (respectively, subtraction), and
*post-increment!* and *post-decrement!* return the value before addition (respectively, subtraction).

## make-counter
``` scheme
(make-counter) -> counter
(make-counter n) -> counter
```

This function creates a new counter, a function that takes zero or more arguments,
adds the sum of these arguments to the counter (or `1`, not `0`, if no argument was provided),
and returns the original value of the counter before the addition.
