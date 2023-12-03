# LL(1) Parser

With this module, you can use parser combinators to create LL(1) parsers
working over a `PeekableStringReader` input.
Build your parser with combinators then use one of `ll1/reader`,
`ll1/string`, `ll1/port`, `ll1/file` or `ll1/file-lines` to consume input.

::: tip To use the bindings from this module:
``` scheme
(import :std/parser/ll1)
```
:::

Beware that the 1 in LL(1) means that these parsers only use at most
one character of look-ahead from the reader, allowing them to work on raw ports.
However, this limitation means that if an alternative in a `ll1-or` fails
further than at the start, the next alternative will start
from where the previous one failed, and not from the point at which the `ll1-or` started.
This may be a reason to prefer `ll1-case` over `ll1-or` —
or to prefer a more advanced kind of parser if this is not enough.

## Using LL(1) Parsers

### ll1/reader
```scheme
(ll1/reader parser reader [description] [where]) => parse-result
```
Given a LL(1) `parser` and a `reader` satisfying the `PeekableStringReader` interface,
return the result of parsing the reader with the parser.
In case of error, use the `description` and `where` specification in the error message.

::: tip Examples:
``` scheme
> (ll1/reader ll1-sint (open-buffered-string-reader "-3"))
-3
```
:::

### ll1/string
```scheme
(ll1/string parser string [description] [where]) => parse-result
```
Given a LL(1) `parser` and a `string`,
return the result of parsing the string with the parser.
In case of error, use the `description` and `where` specification in the error message.

::: tip Examples:
``` scheme
> (ll1/string (ll1-separated ll1-uint ll1-skip-space* ll1-eof) "12 3 4 56")
(12 3 4 56)
```
:::

### ll1/port
```scheme
(ll1/port parser port [description] [where]) => parse-result
```
Given a LL(1) `parser` and a `port`,
return the result of parsing the port with the parser.
In case of error, use the `description` and `where` specification in the error message.

::: tip Examples:
``` scheme
> (call-with-input-string "foo\nbar\nbaz\n" (lambda (port) (ll1/port ll1-lines port)))
("foo" "bar" "baz")
```
:::

### ll1/file
```scheme
(ll1/file parser path [description] [where]) => parse-result
```
Given a LL(1) `parser` and a `path`,
return the result of parsing the file at said path with the parser.
In case of error, use the `description` and `where` specification in the error message.

::: tip Examples:
``` scheme
> (ll1/file (ll1-result 42) "/dev/null")
42
```
:::

### ll1/file-lines
```scheme
(ll1/file-lines parser path [description] [where]) => parse-result
```
Given a LL(1) `parser` and a `path`,
return a list containing the result of parsing each line of the file with the parser.
In case of error, use the `description` and `where` specification in the error message.

::: tip Examples:
``` scheme
> (ll1/file-lines ll1-line "/dev/null")
()
```
:::

## Helpers for LL(1) Parsers

### peeker
```
(peeker spec) => procedure
```
Find a suitable procedure to recognize a character input (from `peek-char`),
based on specification `spec`:

  - If `spec` is a procedure, it designates itself.
  - If `spec` is a character or the EOF object, it designates the function
    that recognizes exactly this character.
  - If `spec` is a string, it designates the function that recognizes
    the elements of the string.
  - If `spec` is a hash-table, it designates the function that recognizes
    the keys of the table, returning the respective value.
  - If `spec` is a list, each element is a specification as above, and
    the function designated is one that recognizes any of the characters
    recognized by one of these elements, tried in order.

### eolf?
```
(eolf? char-or-eof) => bool
```
Return true if the argument is one of the character `#\newline`,
the character `#\return` or the eof-object `#!eof`.

::: tip Examples:
``` scheme
> (andmap eolf? '(#\newline #\return #!eof))
#t
> (ormap eolf? '(#\a #\b 1 "foo"))
#t
```
:::

### peekable-eof?
```
(peekable-eof? reader) => bool
```
Return true if the reader has reached the end of its data stream.


## Basic LL(1) Parsers

### ll1-case
```
(ll1-case (spec body ...) ... (else e ...)) => parser
(ll1-case (spec body ...) ...) => parser
```
The `ll1-case` macro creates a LL(1) parser that
peeks at one character (of eof-object), then tries
each function specified by `spec` as per `peeker` on that character in order.
If one `spec` succeeds, it executes the `body ...` associated with that `spec`;
if that `body` starts with `=>` it is a function that takes the result of the peeker.
The body returns a function that in turn is called with the reader.
If no `spec` succeeds, the body of the `else` clause is used;
if no `else` clause is specified, a `parse-error` is raised.

::: tip Examples:
``` scheme
> (import :std/text/char-set)
> (ll1/string
   (ll1-repeated
    (ll1-case (#\r (ll1-string "red"))
              ("\r\n" ll1-eol)
              (char-strict-whitespace? ll1-skip-space*)
              (char-ascii-digit ll1-uint)) ll1-eof)
   "\nred3   45\r\nred")
("\n" "red" 3 #!void 45 "\r\n" "red")
```
:::

Note how in the example above, the `#\newline` and `#\return` characters
are accepted by both the `"\r\n"` spec and the `char-strict-whitespace?` spec,
but the first one wins and causes `ll1-eol` to be called, returning the eol found.

### ll1-peek
```
(ll1-peek spec) => parser
```
Return a parser that succeeds if the next character (or eof-object) is recognized
by the `peeker` for the `spec`, and otherwise fails.
The character is *not* read, but its value is returned.

::: tip Examples:
``` scheme
> (ll1/string (ll1-begin0 (ll1-peek "abc") (ll1-char* char?)) "banana")
#\b
```
:::

### ll1-empty
```scheme
ll1-empty
```
This function parses the empty string and returns `(void)`.
Trivial function to use while combining parsers.

### ll1-char
```
(ll1-char spec) => parser
```
Return a parser that succeeds if the next character (or eof-object) is recognized
by the `peeker` for the `spec`, and otherwise fails.
The character is read, and its value returned.

::: tip Examples:
``` scheme
> (ll1/string (ll1-char #\x) "x")
#\x
```
:::

### ll1-string
```
(ll1-string string) => parser
```
Return a parser that succeeds if the input contains string,
consuming it, and returning it. If some character in the stream
is not the next character in the string, raise a `parse-error`.

::: tip Examples:
``` scheme
> (ll1/string (ll1-string "banana") "banana")
"banana"
```
:::

### ll1-char?
```
(ll1-char? spec) => parser
```
Return a parser that always succeeds.
If the next character (or eof-object) is recognized by the `peeker` for the `spec`,
then consume and return it. Otherwise, return `#f`.

::: tip Examples:
``` scheme
> (ll1/string (ll1-list (ll1-char? #\b) (ll1-char? #\o) (ll1-char? #\a)) "ba")
(#\b #f #\a)
```
:::

### ll1-char*
```
(ll1-char* spec) => parser
```
Return a parser that always succeeds.
It consumes as many characters recognized by the `peeker` for the `spec`
as there are in the reader, and returns a string of them.

::: tip Examples:
``` scheme
> (ll1/string (ll1-char* "ban") "banana")
"banana"
```
:::

### ll1-char+
```
(ll1-char+ spec) => parser
```
Return a parser that consumes as many characters recognized
by the `peeker` for the `spec` as there are in the reader,
and returns a string of them. If the next character is not recognized,
raise a `parse-error`.

::: tip Examples:
``` scheme
> (ll1/string (ll1-char+ "ban") "banana")
"banana"
```
:::

### ll1-skip-char*
```
(ll1-skip-char* spec) => parser
```
Return a parser that always succeeds.
It consumes as many characters recognized by the `peeker` for the `spec`
as there are in the reader, and returns `(void)`.

::: tip Examples:
``` scheme
> (list (ll1/string (ll1-skip-char* "ban") "banana"))
(#!void)
```
:::

### ll1-skip-space*
```
(ll1-skip-space* spec) => parser
```
Return a parser that always succeeds.
It consumes as many space characters (as per `char-strict-whitespace?`)
as there are in the reader, and returns `(void)`.

::: tip Examples:
``` scheme
> (list (ll1/string ll1-skip-space* "    "))
(#!void)
```
:::

### ll1-skip-space*
```
(ll1-skip-space* spec) => parser
```
Return a parser that always succeeds.
It consumes as many space characters (as per `char-strict-whitespace?`)
as there are in the reader, and returns `(void)`.

::: tip Examples:
``` scheme
> (list (ll1/string ll1-skip-space* "    "))
(#!void)
```
:::


### ll1-eof
```
ll1-eof => parser
```
A parser that succeeds when the reader is at eof.

### ll1-eolf?
```
ll1-eolf? => parser
```
A parser that succeeds when the reader is at eof or before an eol.
Does not consume the eol.

### ll1-eol
```
ll1-eol => parser
```
A parser that succeeds when the reader is before an eol.
Consumes the eol and returns it: `"\n"`, `"\r"` or `"\r\n"`.

### ll1-eolf
```
ll1-eolf => parser
```
A parser that succeeds when the reader is before an eol or at eof.
Consumes the eol of eof and returns it: `"\n"`, `"\r"`, `"\r\n"` or `#!eof`.

### ll1-uint
```
ll1-uint => parser
(cut ll1-uint <> base) => parser
```
Parser that parses a unsigned integer in decimal or in the specified `base`, return it.
No sign may be specified.

### ll1-sint
```
ll1-sint => parser
(cut ll1-sint <> base) => parser
```
Parser that parses a signed integer in decimal or in the specified `base`, return it.
A sign may be specified, or omitted.


### ll1-n-chars
```
(ll1-n-chars n spec) => parser
```
Parser that reads `n` chars that satisfy the `peeker` `spec`
and returns them as a string.


### ll1-n-digits
```
(ll1-n-digits n [base]) => parser
```
Parser that reads `n` digits in specified `base` (defaults to 10),
and returns them as a number.


### ll1-line
```
ll1-line => parser
```
Parser that reads all characters to end of line or file, and returns them in a string.
Consumes the characters in line, but not those in the eol.


## LL(1) Parser Combinators

### ll1-result
```
(ll1-result result) => parser
```
Macro that evaluates to a parser that always returns the `result`
without consuming any input.


### ll1-pure
```
(ll1-pure result) => parser
```
Function that returns to a parser that always returns the `result`
without consuming any input.


### ll1-bind
```
(ll1-bind Ma aMb) => parser
```
Given a parser `Ma` that returns a value of type `a`,
and a unary function `aMb` that takes a value of type `a`
and returns a value of type `b`,
returns a parser that first runs `Ma`, then takes its return value,
calls `aMb` with it, runs the parser returned,
and returns the value of that parser.

NB: `ll1-bind` and `ll1-pure` give LL(1) parsers a monad structure.

### ll1-begin
```
(ll1-begin parsers ... last-parser) => parser
```
A parser that runs all the parsers, and returns the value of the last one.

### ll1-begin0
```
(ll1-begin0 first-parser parsers ...) => parser
```
A parser that runs all the parsers, and returns the value of the last one.


### ll1-or
```
(ll1-or parsers ...) => parser
```
A parser that tries each of the `parsers` in sequence. If one fails, tries the next one.
Beware that if any parser fails after the first character,
the next parser will be run from where it failed, not from the start.

For better behavior, use a different kind of parsers than LL(1).
For safer behavior within LL(1), use `ll1-case`.

### ll1-or/list
```
(ll1-or list-of-parsers) => parser
```
A parser that tries each of the parsers in the `list-of-parsers` in sequence.
If one fails, tries the next one.
Beware that if any parser fails after the first character,
the next parser will be run from where it failed, not from the start.

For better behavior, use a different kind of parsers than LL(1).
For safer behavior within LL(1), use `ll1-case`.


### ll1-repeated
```
(ll1-repeated element terminator [rhead]) => parser
```
A parser that repeatedly tries to run the `element` parser,
unless the `terminator` parser succeeds.
In the end, return the list of results from the element parser, in order,
prepended by the reverse of the list `rhead` (defaults to the empty list `'()`).


### ll1-separated
```
(ll1-separated element separator terminator [rhead]) => parser
```
A parser that repeatedly tries to run the `element` parser
with the `separator` parser in between two runs of the `element` parser,
until `terminator` parser succeeds.
In the end, return the list of results from the `element` parser, in order,
prepended by the reverse of the list `rhead` (defaults to the empty list `'()`).
Empty lists are accepted.

### ll1*
```
(ll1* f . elements) => parser
```
A parser that runs each of the parsers in `elements` in sequence,
collects their results, and calls `f` on the results.

### ll1-list
```
(ll1-list f . elements) => parser
```
A parser that runs each of the parsers in `elements` in sequence,
and collects their results into a list.

### ll1-n-times
```
(ll1-n-times n element) => parser
```
A parser that runs the `element` parser exactly `n` times
and collects the results into a list.

### ll1-lines
```
ll1-lines => parser
(cut ll1-lines <> line) => parser
```
A parser that reads many lines each as by the `line` parser if provided or `ll1-line` by default,
and collects the parsing results in a list.

### ll1-to-eof
```
(ll1-to-eof parser) => parser
```
A parser that parses results as per `parser` then fails if the EOF hasn't been reached.

### ll1-skip-space-to-eof
```
ll1-skip-space-to-eof => parser
```
A parser that skips over any remaining space until EOF.
