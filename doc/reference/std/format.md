# Formatting

The `:std/format` library implements string formatting as specified
in [SRFI 48](https://srfi.schemers.org/srfi-48/srfi-48.html).

::: tip To use bindings from this module
(import :std/format)
:::

## format
```scheme
(format fmt . args)
  fmt   := string
  args  := mixed values

-> string
```


Formats the arguments to a string using the supplied format specifier.

::: warning Differences with SRFI 48
- lower-case synonyms for all format specifiers (~a and ~A are equivalent)
- ~u/~U for unicode hex char print (for #\uXXXX)
- ~f/~F means "float" and does non-exp fp (C-style %f more or less)
- ~r/~R means "repr" and works with `:std/misc/repr` and the `:pr` method
- ~w{spec} does generic fixed width
- not implemented: ~& ~H wtfs
:::

## fprintf

```scheme
(fprintf port fmt . args)
  port  := output-port
  fmt   := string
  args  := mixed values
```

Same as [format](#format-2) but outputs to a specific output port.

## printf

```scheme
(printf fmt . args)
  fmt   := string
  args  := mixed values
```


Same as [fprintf](#fprintf) but with the output port defaulted to `(current-output-port)`

## eprintf

```scheme
(eprintf fmt . args)
  fmt   := string
  args  := mixed values

<= null
```

Same as [fprintf](#fprintf) but with the output port defaulted to `(current-error-port)`
