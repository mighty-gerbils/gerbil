# Assertions

The `:std/assert` module provides the `assert!` macro which can be used to certify certain
conditions in a program and fail with a useful error message if the condition is not satisfied.

::: tip To use the bindings from this module:
```scheme
(import :std/assert)
```
:::

## assert!
```scheme
(assert! condition-expr [message-expr extra-expr ...])
```

Raises an error when the `condition-expr` evaluates to false.
If the `message-expr` and `extra-expr`s are provided, their
values will be included in the error message.

## Example

```scheme
> (assert! #f)
*** ERROR -- Assertion failed (console)@9.10: #f

> (assert! (< 42 0) "that's an impossibility")
*** ERROR -- Assertion failed that's an impossibility: (< 42 0)
  42 => 42
  0 => 0

```
