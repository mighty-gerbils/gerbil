# Format

::: tip usage
(import :std/format)
:::

## format

This implements string formatting as specified in [SRFI 48](https://srfi.schemers.org/srfi-48/srfi-48.html)

::: tip usage
```
(format fmt . args)
  fmt   := string
  args  := mixed values

<= string
```
:::

::: warning Differences with SRFI 48
- lower-case synonyms for all format specifiers (~a and ~A are equivalent)
- ~u/~U for unicode hex char print (for #\uXXXX)
- ~f/~F means "float" and does non-exp fp (C-style %f more or less)
- ~w{spec} does generic fixed width
- not implemented: ~& ~H wtfs
:::

## fprintf

:::tip usage
```
(fprintf port fmt . args)
  port  := ouput-port
  fmt   := string
  args  := mixed values
```
:::

Same as [format](#format-2) but outputs to a specific output port.

## printf

:::tip usage
```
(printf fmt . args)
  fmt   := string
  args  := mixed values

<= null
```
:::

Same as [fprintf](#fprintf) but with the output port defaulted to `(current-output-port)`

## eprintf

:::tip usage
```
(printf fmt . args)
  fmt   := string
  args  := mixed values

<= null
```
:::

Same as [fprintf](#fprintf) but with the output port defaulted to `(current-error-port)`