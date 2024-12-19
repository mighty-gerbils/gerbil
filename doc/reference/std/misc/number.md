# Miscellaneous Number Functions

This module offers various functions to manipulate numbers
that are not otherwise offered by R7RS, Gambit,
`:std/srfi/141`, `:srfi/144`, or `:srfi/151`.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/number)
```
:::

## Extended Real Number Line

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

### real->sign
```scheme
(real->sign x) -> -1, 0 or 1
```

Given an extended real number `x`, return an integer, `-1` if the number is negative,
`0` if it is zero, and `1` if it is positive.

::: tip Examples:
```scheme
> (real->sign 2.7)
1
> (real->sign 1e-100)
1
> (real->sign -42)
-1
> (real->sign -inf.0)
-1
> (real->sign 0.0)
0
> (real->sign 0)
0
```
:::

### xmin
```scheme
(xmin <x1> ... <xn>) -> real
```

`xmin` returns the lower bound of the set of its extended real arguments.
In particular, it returns `+inf.0` (the positive infinity) if provided zero arguments,
and is the identity function when given a single argument.

### xmin/list
```scheme
(xmin/list <l>) -> real
```

`xmin/list` returns the lower bound of the list of extended real arguments
passed as its arguments. In particular, it returns `+inf.0` (the positive
infinity) if provided an empty list.

### xmin!
```scheme
(xmin! <var> <x> ...) -> void
```

`xmin!` side-effects a variable to change it to the `xmin`
of the previous value and the provided arguments.

### xmin/map
```scheme
(xmin/map <f> <l> [<base>]) -> real
```

Given a list `<l>` or any thing you can iterate on, and a function `<f>`,
`xmin/map` returns the lower bound of the images by `<f>` of the items in `<l>`,
and of a `<base>` real, by default `+inf.0` (the positive infinity).
The function is short-circuiting and will not evaluate further values and their side-effects
after the bottom value `-inf.0` is reached.

### xmax
```scheme
(xmax <x1> ... <xn>) -> real
```

`xmax` returns the upper bound of the set of its extended real arguments.
In particular, it returns `-inf.0` (the negative infinity) if provided zero arguments,
and is the identity function when given a single argument.

### xmax/list
```scheme
(xmax/list <l>) -> real
```

`xmax/list` returns the lower bound of the list of extended real arguments passed as its arguments.
In particular, it returns `-inf.0` (the negative infinity) if provided an empty list.

### xmax!
```scheme
(xmax! <var> <x> ...) -> void
```

`xmax!` side-effects a variable to change it to the `xmax`
of the previous value and the provided arguments.

### xmax/map
```scheme
(xmax/map <f> <l> [<base>]) -> real
```

Given a list `<l>` or any thing you can iterate on, and a function `<f>`,
`xmax/map` returns the upper bound of the images by `<f>` of the items in `<l>`,
and of a `<base>` xreal, by default `-inf.0` (the negative infinity).
The function is short-circuiting and will not evaluate further values and their side-effects
after the top value `+inf.0` is reached.

## Counters

### increment!, pre-increment!, post-increment!, decrement!, pre-decrement!, post-decrement!
```scheme
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

### make-counter
```scheme
(make-counter) -> counter
(make-counter n) -> counter
```

This function creates a new counter, a function that takes zero or more arguments,
adds the sum of these arguments to the counter (or `1`, not `0`, if no argument was provided),
and returns the original value of the counter before the addition (post-increment).
You can thus reserve how many entries you are counting before the next call.
Note that this function provides no guarantee of atomicity in case of multithreaded use.

## Euclidian Division

### integer-part
```scheme
(integer-part x) -> integer
```

Given a real number `x`, `integer-part` will return the integer part as an exact integer,
i.e. the number with largest absolute value whose absolute value is no greater than that of `x`.

## fractional-part
```scheme
(fractional-part x) -> integer
```

## floor-align, ceiling-align
```scheme
(floor-align n alignment) -> integer
(ceiling-align n alignment) -> integer
```

Given an integer `n`, and a non-zero integer `alignment`,
if alignment is positive, `floor-align` returns
the largest multiple of `alignment` non-greater than `n`, and
`ceiling-align` returns the smallest multiple of `alignment` non-lesser than `n`;
if alignment is negative, the roles of `floor-align` and `ceiling-align` are swapped.

::: tip Examples:
```scheme
> (floor-align 20 10)
20
> (floor-align 25 10)
20
> (floor-align 25 -10)
30
> (ceiling-align 20 10)
20
> (ceiling-align 25 10)
30
> (ceiling-align 25 -10)
20
```
:::

## Natural Numbers

### uint?
```scheme
(uint? x) -> Bool
```

Given any object `x`, return true if it is an non-negative exact integer.

### sint?
```scheme
(sint? x) -> Bool
```

Given any object `x`, return true if it is an exact integer.

### positive-integer?
```scheme
(positive-integer? x) -> Bool
```

Given any object `x`, return true if it is an positive exact integer.

### n-bits->n-u8
```scheme
(n-bits->n-u8 n) -> integer
```
Given a number of bits, return the number of bytes necessary to store those bits.

### uint-length-in-u8
```scheme
(uint-length-in-u8 n) -> integer
```
Given a non-negative exact integer `n`, return the number of 8-bit bytes necessary
to encode all the bits of `n`.

### sint-length-in-u8
```scheme
(sint-length-in-u8 n) -> integer
```
Given an exact integer `n` (that may be positive, negative or zero),
return the number of 8-bit bytes necessary to encode all the bits of `n`
including the sign bit.

### check-argument-uint
```scheme
(check-argument-uint n) -> unspecified
```
Check that argument `n` is a non-negative exact integer, or raise an error.

### check-argument-sint
```scheme
(check-argument-sint n) -> unspecified
```
Check that argument `n` is an exact integer, or raise an error.

### check-argument-exact-integer
```scheme
(check-argument-exact-integer n) -> unspecified
```
Check that argument `n` is an exact integer, or raise an error.

### check-argument-positive-integer
```scheme
(check-argument-positive-integer n) -> unspecified
```
Check that argument `n` is a positive exact integer, or raise an error.

### normalize-uint
```scheme
(normalize-uint x length-in-bits) => uint
```
Given an exact integer `x` and a `length-in-bits`, return
a non-negative exact integer of given length
that has the same `length-in-bits` lower order bits as `x`.

### normalize-sint
```scheme
(normalize-sint x length-in-bits) => sint
```
Given an exact integer `x` and a `length-in-bits`, return
a (signed) exact integer of given length
that has the same `length-in-bits` lower order bits as `x`,
including the sign bit as the (`length-in-bits` minus 1)th.

### uint-below?
```scheme
(uint-below? x end) -> Bool
```

Given any object `x`, return true if it is an non-negative exact integer less than `end` (not included).

### uint-of-length?
```scheme
(uint-of-length? x length-in-bits) -> Bool
```

Given any object `x`, return true if it is an non-negative exact integer
that can be stored in `length-in-bits` bits, as witnessed by
its `integer-length` being no greater than `length-in-bits` (included).

### sint-of-length?
```scheme
(sint-of-length? x length-in-bits) -> Bool
```

Given any object `x`, return true if it is a (negative, zero or positive)
exact integer that can be stored in `length-in-bits` bits (including sign bit),
as witnessed by its `integer-length` being strictly less
than `length-in-bits` (not included).

## Iteration

### for-each-integer
```scheme
(for-each-integer fun from below)
```

Given `fun` a function of one argument, call `fun` with each successive increasing integer
starting with `from` up to and not including `below`.

## Binary Search (a.k.a. Dichotomy)

### half
```scheme
(half n)
```

Given an integer `n`, return half of `n` if it is even, or half of `n-1` if it is odd.

### least-integer
```scheme
(least-integer pred? start end) -> integer
```

Do a binary search in interval [`start`, `end`) to find the least integer for which `pred?` holds,
assuming `pred?` is “increasing”, i.e. if true for some integer in the interval,
it is true for all greater integers in the interval.
If no integer in the interval satisfies `pred?`, return `end`. If all do, return `start`.
If `pred?` isn't actually increasing, return some integer in the interval.

## Modular Arithmetics

### divides?
```scheme
(divides f n) -> bool
```

Given two integers `f` and `n`, return true if `f` is a dividing factor of `n`,
i.e. there exists a `g` such that `n=f*g`.

::: tip Examples:
```scheme
> (divides? 2 256)
#t
> (divides? 2 255)
#f
```
:::

### bezout
```scheme
(bezout a b) -> (values integer integer integer)
```

Given two integers `a` and `b`, return three values `x` `y` and `d`,
such that `d` is the (non-negative) gcd of `a` and `b`, and `a*x+b+y=d`,
thus forming a Bezout relationship.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.

### mult-mod a b n
```scheme
(mult-mod a b n) -> integer
```

Given two integers `a`, `b` and a positive integer `n`,
return the product `m` of `a` and `b` modulo `n`.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.
Its performance is only moderate.

### invert-mod
```scheme
(invert-mod a n) -> integer
```

Given an integer `a` and a positive integer `n`,
return the inverse of `a` modulo `n`,
or raise an error if `a` is not invertible modulo `n`.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.
Its performance is only moderate.

### invert-mod
```scheme
(invert-mod a n) -> integer
```

Given integers `a` and `b` and a positive integer `n`,
divide `a` by `b` modulo `n`,
i.e. return an integer `m` such that `a = b*m [n]`,
if such an integer exists, or raise an error if no such integer exists.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.
Its performance is only moderate.

### mult-expt-mod
```scheme
(mult-expt-mod a x e n) -> integer
```

Given integers `a`, `x`, `e` and `n`,
multiply `a` by `x` to the power `e` modulo `n`.
If `e` is negative then `x` must be invertible modulo `n`.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.
Its performance is only moderate.

### expt-mod
```scheme
(expt-mod x e n) -> integer
```

Given integers `x`, `e` and `n`, compute `x` to the power `e` modulo `n`.
If `e` is negative then `x` must be invertible modulo `n`.

Note: the current implementation doesn't use constant-time computations
and shouldn't be used for production-grade cryptography.
Its performance is only moderate.

## Logarithms

### integer-log
```scheme
(integer-log a b) -> integer
```

Given two integers `a` and `b`, return the largest natural integer n such that `b**n <= a`.

### factor-out-powers-of-2
```scheme
(factor-out-powers-of-2 n) -> integer
```

Given an integer `n`, return two values:
the smallest integer `m` such that `n = m*2**k` for some integer `k`,
and the integer `k`.

### factor-out-powers
```scheme
(factor-out-powers a b) -> integer
```

Given integers `a` and `b`, return two values:
the smallest integer `m` such that `a = m*b**k` for some integer `k`,
and the integer `k`.
