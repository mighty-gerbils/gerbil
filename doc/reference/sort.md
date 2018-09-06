# Sorting

The `:std/sort` library provides sorting facilities using Olin's
withdrawn SRFI-32 implementation.

::: tip usage
(import :std/sort)
:::


## sort

:::tip usage
```
(sort seq less?)
  seq   := list or vector
  less? := comparison procedure
=> <sequence>
```
:::

Sorts a sequence (a list or vector) and returns a new sorted sequence, using
the `less?` procedure to compare elements.
The procedure uses merge sort for lists and heap sort for vectors, which does
not produce a stable sort.

## sort!

:::tip usage
```
(sort! seq less?)
  seq   := list or vector
  less? := comparison procedure
=> <sequence>
```
:::

Like `sort`, but the procedure is allowed to reuse/modify the original sequence to
produce its output.

## stable-sort

:::tip usage
```
(stable-sort seq less?)
  seq   := list or vector
  less? := comparison procedure
=> <sequence>
```
:::

Like `sort`, but it uses merge sort for vectors as well, which produces a stable
sort.

## stable-sort!

:::tip usage
```
(stable-sort! seq less?)
  seq   := list or vector
  less? := comparison procedure
=> <sequence>
```
:::

Like `stable-sort`, but the procedure is allowed to reuse/modify the original sequence to
produce its output.
