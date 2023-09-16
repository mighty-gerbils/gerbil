# The Standard Testing library

::: tip To use the test library
```scheme
(import :std/test)
```
:::

## test-suite
```scheme
(test-suite description case ...) -> test-suite

  description := string; description of the test suite
  case := test-case
```

Creates a test suite with one ore more test cases.

## test-case
```scheme
(test-case description body ...) -> test-case

  description := string; description of the test case
  body := code, as in the body of a lambda
```

Creates a new test case, with the body executed in a thunk.

## check
```scheme
(check expr => value)
(check expr ? predicate)
(check equality-function expr value)
```

Evaluates an `expr` and asserts that its value is the expected one:
- the first form uses `equal?` to compare the result of `expr` with the expected value.
- the second form applies the predicate `predicate`.
- the third form compares the result with `value` using the equality function `equality-function`.


## checkf
```scheme
(checkf equality-predicate expr value)
```

Evaluates expr and asserts that the the value is as expected, using the equality-predicate.

## check-eq?
```scheme
(check-eq? expr value)
```

Equivalent to `(checkf eq? expr value)`.

## check-not-eq?
```scheme
(check-not-eq? expr value)
```

Equivalent to `(checkf (? not eq?) expr value)`.

## check-eqv?
```scheme
(check-eqv? expr value)
```

Equivalent to `(checkf eqv? expr value)`.


## check-not-eqv?
```scheme
(check-not-eqv? expr value)
```

Equivalent to `(checkf (? not eqv?) expr value)`.


## check-equal?
```scheme
(check-equal? expr value)
```

Equivalent to `(checkf equal? expr value)`.


## check-not-equal?
```scheme
(check-not-equal? expr value)
```

Equivalent to `(checkf (? not equal?) expr value)`.

## check-output
```scheme
(check-output expr output)
```

Evaluates `expr` capturing its output and asserts it is equal to the expected `output`.

## check-predicate
```scheme
(check-predicate expr pred)
```

Evaluates `expr` and asserts that its value satisfies the predicate `pred`.

## check-exception
```scheme
(check-exception expr exn-pred)
```

Evaluates `expr` and asserts that it raises an exception that satisfies the predicate `exn-pred`.
