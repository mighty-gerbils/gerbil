# Sorting

The `:std/sort` library provides sorting facilities using Olin's
withdrawn SRFI-32 implementation.

::: tip To use the bindings from this module:
``` scheme
(import :std/sort)
```
:::

## sort
``` scheme
(sort seq less?) -> sequence

  seq   := list or vector
  less? := comparison procedure
```

Sorts a sequence (a list or vector) and returns a new sorted sequence, using
the `less?` procedure to compare elements.
The procedure uses merge sort for lists and heap sort for vectors, which does
not produce a stable sort.

::: tip Examples:
``` scheme
> (sort [2 5 1] <)
(1 2 5)
```
:::

## sort!
``` scheme
(sort! seq less?) -> sequence

  seq   := list or vector
  less? := comparison procedure
```

Like `sort`, but the procedure is allowed to reuse/modify the original sequence to
produce its output.

## stable-sort
``` scheme
(stable-sort seq less?) -> sequence

  seq   := list or vector
  less? := comparison procedure
```

Like `sort`, but it uses merge sort for vectors as well, which produces a stable
sort.

## stable-sort!
``` scheme
(stable-sort! seq less?) -> sequence

  seq   := list or vector
  less? := comparison procedure
```

Like `stable-sort`, but the procedure is allowed to reuse/modify the original sequence to
produce its output.
