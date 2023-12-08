# Basic Printers

Basic functions to print data

::: tip To use the bindings from this module:
```scheme
(import :std/text/basic-printers)
```
:::

## write-n-chars
```scheme
(write-n-chars n char port) -> unspecified
```

Write character `char` `n` times to the `port`.

::: tip Examples:
```scheme
> (call-with-output-string [] (cut write-n-chars 7 #\a <>))
"aaaaaaa"
```
:::

## display-integer/base
```scheme
(display-integer/base integer base (output #t)) -> string or unspecified
```
Display the `integer` to the designated `output`
as per [with-output](../misc/ports.md#with-output),
in the designated `base`. Return the results a string if `output` is `#f`,
otherwise the function is called for effects and results are unspecified.

::: tip Examples:
```scheme
> (begin (display-integer/base 100 16) (newline))
64
> (display-integer/base 884 36 #f)
"ok"
```
:::

## display-integer/fit
```scheme
(display-integer/fit n width (out #t) base: (base 10)) -> string
```

Display the `integer` to the designated `output`
as per [with-output](../misc/ports.md#with-output),
in the designated `base`. Return the results a string if `output` is `#f`,
otherwise the function is called for effects and results are unspecified.

::: tip Examples:
```scheme
> (display-integer/fit 3 5 #f)
"00003"
> (begin (display-integer/fit 0 5) (newline))
00000
> (display-integer/fit -3 5 #f)
"-0003"
> (display-integer/fit 7 0)
*** ERROR
> (display-integer/fit 7 -1 #f)
*** ERROR
> (display-integer/fit 12345 5 #f)
"12345"
> (display-integer/fit 123456 5)
*** ERROR
> (display-integer/fit 100 2 #f base:16)
"64"
```
:::
