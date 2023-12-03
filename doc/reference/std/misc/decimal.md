# Decimal Numbers

The `:std/misc/decimal` library provides support for
arbitrary-precision decimal numbers and conversion between them and strings.
This can notably be important for handling financial data without losing precision.

::: tip To use bindings from this module
```scheme
(import :std/misc/decimal)
```
:::

Decimal numbers are "just" a subset of rational numbers, and so
all arithmetic operations are already implemented by Gerbil Scheme's
underlying generic number arithmetics (itself handled by Gambit Scheme).
The main remaining issue then is parsing and printing,
conversion to and from strings, since going through
regular floating point parsing and printing will drop decimals.

Acknowledgements: The code was written with
inspiration from two Common Lisp libraries,
QUUX (see the [snapshot at QITAB](https://qitab.common-lisp.dev/) and
[wu-decimal](https://github.com/Wukix/wu-decimal),
with its own design and implementation improvements.

## decimal?
```scheme
(decimal? x) -> bool
```

Given any value `x`, return true if that object is a decimal number,
i.e. a rational number that is not a floating-point number.

::: tip Examples:
```scheme
> (decimal? 13/10)
#t
> (decimal? 1.3)
#f
> (decimal? 13/125)
#t
> (decimal? 'foo)
#f
```
:::

## parse-decimal
```scheme
(parse-decimal
   input
   sign-allowed?: (sign-allowed? #t)
   decimal-mark: (decimal-mark #\.)
   group-separator: (group-separator_ #f)
   exponent-allowed: (exponent-allowed_ #f)) -> decimal
```

`parse-decimal` expects and parses a decimal number on an `input`,
with the options specifed via keyword arguments.

The `input` will be cast to a `BufferedStringReader` using
[`open-buffered-string-reader`](../stdio.md#open-buffered-string-reader).
`parse-decimal` will then side-effect this reader as it parses,
and finally return the decimal number,
or raises a `parse-error` (from `:std/parser/base`).

The keyword arguments `decimal-mark` and `group-separator` are each a character or false,
and specify optional allowed decimal mark and group separator characters,
to support for different (typically cultural) numerical conventions.
For convenience, `group-separator` can also be `#t`, designating the comma character `#\,`.
These two arguments cannot designate the same character.
If `decimal-mark` is false, then and you can only parse integer numbers before the exponent,
and so can only parse integers if `exponent-allowed` is false (the default),
though you can still use exponents if allowed to denote a fractional number (a weird use case).

The boolean `sign-allowed` controls whether a `+` or `-` sign is accepted or must be omitted.

`exponent-allowed` is a boolean or a string controlling exponent notation.
Exponent notation follows the syntax for Scheme floats,
with the exception that the exponent marker must be `#\e` or `#\E` when `exponent-allowed` is `#t`,
or the exponent marker must be `char=` to some element of `exponent-allowed`
when `exponent-allowed` is a string.
Exponents, when allowed, can always be signed.

It is up to the caller to provide an actual `BufferedStringReader`
and process any leading or trailing whitespace and check for `#!eof`
before and/or after calling `parse-decimal`.

`: PeekableStringReader sign-allowed?:Bool decimal-mark:Char group-separator:(Or Char Bool) exponent-allowed:(or Bool String) -> Decimal`

You may use utilities from [:std/parser/ll1-parser](../parser/ll1-parser.md)
to parse decimals as part of something bigger, or just use `string->decimal` below.

## string->decimal
```scheme
(string->decimal s
      sign-allowed?: (sign-allowed? #t)
      decimal-mark: (decimal-mark #\.)
      group-separator: (group-separator #f)
      exponent-allowed: (exponent-allowed #f)
      allow-leading-whitespace?: (allow-leading-whitespace? #f)
      allow-trailing-whitespace?: (allow-trailing-whitespace? #f)
      start: (start 0)
      end: (end #f))
```
Parse a decimal number from given string `s`.

The `start` and `end` arguments specify which slice of the string to use
as an interval `[start, end)` of the string indexes
(if `end` is unspecified or false, it designates the length of the string).

The `sign-allowed?`, `decimal-mark`, `group-separator` and `exponent-allowed`
arguments are as per `parse-decimal`.

The `allow-leading-whitespace?` (respectively `allow-trailing-whitespace?`)
arguments specify whether whitespace is allowed to be parsed and skipped
before (respectively after) the decimal number as part of the string:
  - if the value is `#f` (the default) then no whitespace is allowed
    before or after the decimal;
  - if the value is `#t`, then any of the strict whitespaces
    (space, tab, newline, return) is accepted;
  - if the value is a procedure, then this procedure is assumed to be
    a unary predicate accepting any character or the `#!eof` marker and
    returning true if its argument is a character considered whitespace
    for the purpose of skipping before to parse a decimal
    (include digits and signs in the list at your peril);
    see [:std/text/char-set](../text/char-set.md)
    for other whitespace predicates.

## write-decimal
```scheme
(write-decimal number (port (current-output-port))
  scale: (scale #f)
  width: (width #f)
  integral-digits: (integral-digits #f)
  fractional-digits: (fractional-digits #f)
  pad: (pad_ #f)
  always-decimal?: (always-decimal? #f)
  always-sign?: (always-sign? #f)
  decimal-mark: (decimal-mark #\.)
  precision-loss-behavior: (precision-loss-behavior 'error))
```

Write a decimal `number` to the specified `port` with the given keyword options.

The `port` is designated as per [`with-output`](ports.md#with-output).

The keyword options are as follow:
  - An integer `scale` (or `#f` meaning `0`, the default), such that
    the number actually printed is the argument `number` notionally multiplied
    by ten to that `scale` (default `#f`).
  - A natural integer `width` within which to fit the number
    or `#f` (the default) for no limitation.
  - A minimum number of `integral-digits` to display
    or `#f` (the default, same as `0`) for no minimum;
    the minimum can notably be 1 to force `#\0` to be printed
    before a decimal point even if there are already fractional digits after.
  - A minimum number of `fractional-digits` to display
    or `#f` (the default, same as `0`) for no minimum;
    the minimum can notably be 1 to force `#\0` to be printed
    after a decimal point even if there are already integral digits before.
  - A character `pad` to print when left-padding for desired width
    or `#f` (the default, same as `#\space`);
  - A boolean `always-decimal?` (defaults to `#f`) for whether
    a decimal mark will always be printed even for integers.
  - A boolean `always-sign?` (defaults to `#f`) for whether
    a sign will always be printed even for positive numbers.
  - A character `decimal-mark` to use as the decimal mark.
  - A symbol `precision-loss-behavior` for the behavior on precision loss,
    one of `error` (the default), `truncate` or `round`,
    in case the digits cannot fit in the space.

Note that even if `precision-loss-behavior` is `truncate` or `round`,
`write-decimal` may throw an error if the integral part of the `number` is
too large to fit within the given width.

## decimal->string
```scheme
(decimal->string number
  scale: (scale #f) width: (width #f)
  integral-digits: (integral-digits #f) fractional-digits: (fractional-digits #f)
  pad: (pad #f) always-decimal?: (always-decimal? #f) always-sign?: (always-sign? #f)
  decimal-mark: (decimal-mark #\.)
  precision-loss-behavior: (precision-loss-behavior 'error))
```

`decimal->string` converts a decimal `number` to a string by
calling `write-decimal` with the same number and options.

## LossOfPrecision LossOfPrecision?

An error class and its recognizer predicate, for the sake of handling cases when
printing a decimal number results in loss of precision.

## power-of-5
```scheme
(power-of-5 x) -> nat or false
```
If `x` is an exact integer that is the `n`th power of 5, return `n`,
otherwise return false.

## find-decimal-multiplier
```scheme
(find-decimal-multiplier d) -> (values integer integer)
```
Given a positive integer `d`, the reduced denominator of a decimal number,
thus a number of the form `2**m * 5**n`,
compute `c` such that `c*d = c*(2^m*5^n) = 10^max(m,n)`
and returns the two values `c` and `max(m,n)`,
respectively the multiplier required to make the denominator a power of 10,
and which power of 10 you will thus have reached.

## count-significant-digits
```scheme
(count-significant-digits n) -> nat
```

Count the number of significant digits to represent the natural integer `n`.

Exception: for `0`, return `0`, which defies convention for writing integers,
but is the right thing in the context of figuring out how many decimals to use

## decimal->digits-exponent
```scheme
(decimal->digits-exponent decimal) -> (values integer integer)
```
Given a decimal number `decimal`, return two values:
  - the absolute smallest integer with all its non-zero digits, of same sign as decimal.
  - the power of ten by which the decimal had to be multiplied to get this integer
    (can be positive, zero or negative).

## digits-exponent->decimal
```scheme
(digits-exponent->decimal digits exponent) -> decimal
```
Given an integer `digits` and an `exponent`, multiply `digits` by 10 to the given power.
