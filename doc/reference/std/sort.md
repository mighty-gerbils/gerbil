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

# Symbolic Comparisons

Often times there is a need to sort using symbolic comparisons. The
`:std/misc/symbol` library implements caching versions of symbolic
comparisons using the string representation.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/symbol)
```
:::


## symbol<?
```scheme
(symbol<? x y) -> bool

  x,y := symbol
```

Compares two symbols' string representation using `string<?`.
The string representation is globally cached.

## symbol<=?

Similar to `symbol<?`, using `string<=?`

## symbol>=?

Similar to `symbol<?`, using `string>=?`

## symbol>?

Similar to `symbol<?`, using `string>?`

## compare-symbol<?
```scheme
(compare-symbol<? (mx? #f)) -> lambda (symbol symbol) -> bool

  mx? := bool; use a mutex to protect the cache
```

Create a locally scoped caching `symbol<?`-like comparison with its own cache.

## compare-symbol<=?

Similar to `compare-symbol<?` using `string<=?`.

## compare-symbol>=?

Similar to `compare-symbol<?` using `string>=?`.

## compare-symbol>?

Similar to `compare-symbol<?` using `string>?`.

## keyword<?
```scheme
(keyword<? x y) -> bool

  x,y := keyword
```

Compares two keywords' string representation using `string<?`.
The string representation is globally cached.

## keyword<=?

Similar to `keyword<?`, using `string<=?`

## keyword>=?

Similar to `keyword<?`, using `string>=?`

## keyword>?

Similar to `keyword<?`, using `string>?`

## compare-keyword<?
```scheme
(compare-keyword<? (mx? #f)) -> lambda (keyword keyword) -> bool

  mx? := bool; use a mutex to protect the cache
```

Create a locally scoped caching `keyword<?`-like comparison with its own cache.

## compare-keyword<=?

Similar to `compare-keyword<?` using `string<=?`.

## compare-keyword>=?

Similar to `compare-keyword<?` using `string>=?`.

## compare-keyword>?

Similar to `compare-keyword<?` using `string>?`.

## compare-symbolic
```scheme
(compare-symbolic string-e cmp-e mx?) -> lambda (symbol symbol) -> bool

  string-e := lambda (obj) -> string
  cmp-e := lambda (symbol symbol) -> bool
  mx?   := bool; use a mutex to protect the cache
```

Create a generic caching symbolic comparison function.

For instance:
```
symbol<? == (compare-symbolic symbol->string string? #t)
```
