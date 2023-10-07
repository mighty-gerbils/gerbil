# Multiple Values Library

The `:std/values` library provides support for working with
multiple return values.

::: tip To use the bindings from this module:
```scheme
(import :std/values)
```
:::

## first-value, second-value, nth-value
```scheme
(first-value expression) -> value
(second-value expression) -> value
(nth-value n expression) -> value
```

Return the first (respectively second, nth) value of an `expression`
that yields multiple values, and ignore the others.
May raise an error if not enough values are provided.

`nth-value` selects the value using the zero-based index `n`.

::: tip Examples:
```scheme
> (first-value (values 1 2 3 4 5 6))
1
> (call-with-values (lambda () (values 8 9)) first-value)
8
> (second-value (values 1 2 3))
2
> (call-with-values (lambda () (values 8 9)) second-value)
9
> (call-with-values (lambda () 3) second-value)
*** ERROR IN ...(stdin)@32.1 -- Wrong number of arguments passed to procedure
> (nth-value 0 (values 1 2 3 4))
1
> (nth-value 1 (values 1 2 3 4))
2
> (nth-value 2 (values 1 2 3 4))
3
> (nth-value 3 (values 1 2 3 4))
4
> (nth-value 4 (values 1 2 3 4))
*** ERROR -- (Argument 1, list) Longer LIST expected
```
:::

## list->values
```
(list->values list) -> values
```
Return multiple values, one per element of the `list`, in order.
This is the same as `(apply values list)` but as a function.
The inverse of the builtin `values->list`.

::: tip Examples:
```scheme
> (list->values '(1 2 3))
1
2
3
```
:::

## vector->values values->vector
```
(vector->values vector) -> values
(values->vector values) -> vector
```

These two mutually inverse functions are analogous to
`list->values` and `values->list`, but using vectors instead of lists.

::: tip Examples:
```scheme
> (vector->values #(1 2 3))
1
2
3
> (values->vector (values 1 2 3))
#(1 2 3)
```
:::

## cons->values values->cons
```
(cons->values pair) -> values
(values->cons values) -> pair
```

These two mutually inverse functions are analogous to
`list->values` and `values->list`, but using pairs instead of lists,
and only working when there are exactly two values being returned.

::: tip Examples:
```scheme
> (cons->values '(1 . 2))
1
2
> (values->cons (values 1 2))
(1 . 2)
> (cons->values '(a b c d))
a
(b c d)
> (values->cons (values 'a '(b c d)))
(a b c d)
```
:::
