# Char Sets
::: tip To use the bindings from this module:
``` scheme
(import :std/text/char-set)
```
:::


## def-codepoint
```scheme
(def-codepoint (name x y ...) body ...)
```
This macro defines two functions, `codepoint-name` and and `char-name`
(where the name is interpolated for the provided symbol).

The first one takes a fixnum `x` as first argument
and optionally more arguments `y ...`, and evaluates the `body ...`.
Typically, it is a predicate returning a boolean, but could be anything.

The second one takes any value `x` as first argument
and optionally more arguments `y ...`;
if `x` is a character, the previous function is called with its codepoint
and the rest of the arguments, otherwise `#f` is returned.

::: tip Examples:
``` scheme
> (def-codepoint (chess-piece? c) (<= 9812 c 9823))
> (codepoint-chess-piece? 9817)
#t
> (codepoint-chess-piece? 9999)
#f
> (char-chess-piece? #\♞)
#t
> (char-chess-piece? #\A)
#f
```
:::

## codepoint-ascii? char-ascii?
```scheme
(codepoint-ascii? x) => bool
(char-ascii? x) => bool
```
Returns true if the designated character is valid ASCII,
with codepoint between 0 and 127 included.

## codepoint-ascii-uppercase? char-ascii-uppercase?
```scheme
(codepoint-ascii-uppercase? x) => bool
(char-ascii-uppercase? x) => bool
```
Returns true if the designated character is
a valid ASCII uppercase letter from `#\a` to `#\z`,
with codepoint between 65 and 90 included.

## codepoint-ascii-lowercase? char-ascii-lowercase?
```scheme
(codepoint-ascii-lowercase? x) => bool
(char-ascii-lowercase? x) => bool
```
Returns true if the designated character is
a valid ASCII lowercase letter from `#\a` to `#\z`,
with codepoint between 97 and 122 included.

## codepoint-ascii-alphabetic? char-ascii-alphabetic?
```scheme
(codepoint-ascii-alphabetic? x) => bool
(char-ascii-alphabetic? x) => bool
```
Returns true if the designated character is a valid ASCII letter,
either uppercase from `#\A` to `#\Z` or lowercase from `#\a` to `#\z`.

## codepoint-ascii-numeric? char-ascii-numeric?
```scheme
(codepoint-ascii-numeric? x) => bool
(char-ascii-numeric? x) => bool
```
Returns true if the designated character is a valid ASCII digit
between `#\0` and `#\9` included,
with codepoint from 48 to 57 included.

## codepoint-ascii-alphanumeric? char-ascii-alphanumeric?
```scheme
(codepoint-ascii-alphanumeric? x) => bool
(char-ascii-alphanumeric? x) => bool
```
Returns true if the designated character is valid ASCII letter or digit.

## codepoint-ascii-alphanumeric-or-underscore? char-ascii-alphanumeric-or-underscore?
```scheme
(codepoint-ascii-alphanumeric-or-underscore? x) => bool
(char-ascii-alphanumeric-or-underscore? x) => bool
```
Returns true if the designated character is a valid ASCII letter or digit
or the underscore character `#\_` (codepoint 95).

## codepoint-ascii-printable? char-ascii-printable?
```scheme
(codepoint-ascii-printable? x) => bool
(char-ascii-printable? x) => bool
```

Returns true if the designated character is a valid
[ASCII](https://en.wikipedia.org/wiki/ASCII) graphic character,
codepoint from 32 to 126 included.
Note that codepoint 32 is actually the `#\space` that prints to a blank space,
but that other whitespace characters are not included.
Codepoint 127 is actually `#\delete` which isn’t printable.

## codepoint-strict-whitespace? char-strict-whitespace?
```scheme
(codepoint-strict-whitespace? x) => bool
(char-strict-whitespace? x) => bool
```
These functions are the first of several predicates that recognize *whitespace*.
There is no consensus as to what is a
[whitespace character](https://en.wikipedia.org/wiki/Whitespace_character)
for either ASCII or Unicode,
and these follow the strictest definition, as specified by HTML and JSON:
whitespace characters are codepoints
32 (`#\space`), 9 (`#\tab`), 10 (`#\newline`), 11 (`#\return`).
The latest Scheme standard R7RS also specifies that this is
the set of whitespace accepted by all Scheme implementations,
though implementations may allow additional whitespace “such as page-break”.

## codepoint-ascii-whitespace? char-ascii-whitespace?
```scheme
(codepoint-ascii-whitespace? x) => bool
(char-ascii-whitespace? x) => bool
```
These predicates recognize ASCII whitespace characters
as defined by C, C++ and Python.
In addition to the four strict whitespace characters, they also accept
codepoints 12 (`#\vtab`, vertical tab, C `'\v'`) and
13 (`#\page`, page break, form feed, C `'\f'`).

## codepoint-scheme-whitespace? char-scheme-whitespace?
```scheme
(codepoint-scheme-whitespace? x) => bool
(char-scheme-whitespace? x) => bool
```
These predicates recognize the same whitespace characters
as the underlying Scheme implementation.
For Gambit and thus Gerbil (so far), it is the union of the ASCII whitespace above
plus Unicode Space Separators
(codepoints `#x20` `#xA0` `#x1680` `#x2000`-`#x200a` `#x202f` `#x205f` `#x3000`)
plus Unicode Line Separators (codepoints `#x0A` `#x0D` `#x85` `#x2028` `#x2029`).

Note that JavaScript accepts the ASCII whitespace, the Unicode Space Separators,
`#xFEFF` (ZWNBSP), but doesn't consider the line separators whitespace;
rather it considers `#x0A` `#x0D` `#x2028` `#x2029` as line terminators
but not `#x85` (Next Line).

Meanwhile Rust recognizes the ASCII whitespace plus `#x85` `#x200E` `#x200F` `#x2028` `#x2029`.

Whichever language or grammar you parse, be sure to look at its latest specification
to identify its specific definition of “whitespace”.

## codepoint-ascii-printable-or-whitespace? char-ascii-printable-or-whitespace?
```scheme
(codepoint-ascii-printable-or-whitespace? x) => bool
(char-ascii-printable-or-whitespace? x) => bool
```
These predicates recognize ASCII characters that are either printable or whitespace
(the C definition, which also equals
the intersection of the underlying Scheme definition and ASCII).

## codepoint-ascii-digit char-ascii-digit
```scheme
(codepoint-ascii-digit x [base 10]) => number-or-false
(char-ascii-digit x [base 10]) => number-or-false
```
Given a character `x` and a `base` from 2 to 36 (defaults to 10),
if that character represents a digit in that base
(with letters being the digits from 10 to 35),
return the numerical value of the digit.
Otherwise return `#f`.

## digit-char
```scheme
(digit-char n [base 10] [upper-case? #f]) => char-or-false
```
Given a number `n` and a `base` from 2 to 36 (defaults to 10),
if the number is an `exact-integer` between 0 (included) and `base` (excluded),
then return an ASCII character that represents that digit in the given `base`.
If the digit value is 10 to 35, then use a lowercase letter if `upper-case?` is false,
an uppercase letter if `upper-case?` is true.
If the argument `n` is not a valid digit for that `base`, return `#f`.

## char-eol?
```scheme
(char-eol? x) => bool
```
Is `x`, a result from calling `read-char` or `peek-char`
from a `Port` or `Reader`, a line terminator?
This is the case if `x` is one of the characters `#\newline` or `#\return`,
or the special object `#!eof`.
