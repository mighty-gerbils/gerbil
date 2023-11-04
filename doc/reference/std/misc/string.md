# String utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/string)
```
:::

## string-trim-prefix
``` scheme
(string-trim-prefix pfix str) -> string

  pfix := string prefix to trim
  str  := string to search in for pfix
```

If *str* starts with the given string prefix *pfix*, then `string-trim-prefix`
returns the rest of *str* without *pfix*. If *pfix* isn't a valid prefix of
*str*, return the entire string *str* instead.

::: tip Examples:
``` scheme
> (string-trim-prefix "date:" "date:2019-05-01")
"2019-05-01"

> (string-trim-prefix "$" "100")
"100"

> (map (cut string-trim-prefix ":std/misc/" <>)
       [":std/misc/string" ":std/misc/ports" ":std/misc/list"])
("string" "ports" "list")
```
:::

## string-trim-suffix
``` scheme
(string-trim-suffix sfix str) -> string

  sfix := string suffix to trim
  str  := string to search in for sfix
```

Analog to `string-trim-prefix`, but returns the beginning of *str* without the
string ending *sfix*.

::: tip Examples:
``` scheme
> (string-trim-suffix ".ss" "strings.ss")
"strings"

> (map (cut string-trim-suffix ".txt" <>)
       ["README.txt" "LICENSE.txt" "CREDITS.txt"])
("README" "LICENSE" "CREDITS")
```
:::

## string-trim-eol
``` scheme
(string-trim-eol str) -> string

  str := string to trim
```

Trims any single end-of-line marker `CR`, `LF` or `CRLF` at the end of *str*.

Note: `string-trim-eol` removes only one end-of-line marker. Use
`(string-trim-right str (char-set #\return #\newline))` to remove all of them.

::: tip Examples:
``` scheme
> (string-trim-eol "foo\r")
"foo"      ; equivalent to (string-trim-suffix +cr+ "foo\r")

> (string-trim-eol "foo\n\n")
"foo\n"    ; only a single end-of-line marker is removed
```
:::

## string-split-prefix
``` scheme
(string-split-prefix pfix str) -> (values string string)

  pfix := string prefix to split after
  str  := string to search in for pfix
```

Split *str* based on given string prefix *pfix*, returning both the string part
after the prefix as well as the prefix itself, or both the whole string and `""`
in case *pfix* isn't found in *str*.

`string-split-prefix` is similar to `string-trim-prefix`, but also returns the
prefix as a second value.

::: tip Examples:
``` scheme
> (string-split-prefix "123" "123abcdef")
"abcdef"    ; suffix/rest
"123"       ; prefix

> (string-split-prefix "123" "no-numbers-here")
"no-numbers-here"
""

> (import :std/srfi/13)
> (for-each (lambda (brw)
              (let-values (((name year) (string-split-prefix (string-take brw 4) brw)))
                (displayln "initial release of " name " was " year)))
            ["2002firefox" "2003safari" "2008chrome" "2015edge"])
initial release of firefox was 2002
initial release of safari was 2003
initial release of chrome was 2008
initial release of edge was 2015
```
:::

## string-split-suffix
``` scheme
(string-split-suffix sfix str) -> (values string string)

  sfix := string suffix to split before
  str  := string to search in for sfix
```

Analog to `string-split-prefix`, but splits *str* based on a given string suffix
*sfix* instead.

`string-split-suffix` is similar to `string-trim-suffix`, but also returns the
suffix as a second value.

::: tip Examples:
``` scheme
> (string-split-suffix ".scm" "secret.scm")
"secret"    ; prefix/rest
".scm"      ; suffix

> (string-split-suffix ".scm" "secret.lisp")
"secret.lisp"
""
```
:::

## string-split-eol
``` scheme
(string-split-eol str) -> string

  str := string to split
```

Analog to `string-trim-eol`, but splits one single end-of-line marker off of
*str*, which is then also returned as a second value.

::: tip Examples:
``` scheme
> (equal? +lf+ (values-ref (string-split-eol "foo\n") 1))
#t
```
:::

## string-subst
``` scheme
(string-subst str old new [count: #f]) -> string | error

  str   := string to perform changes on, won't be modified
  old   := string, what to remove
  new   := string, what to insert instead
  count := number of substitutions, optional keyword param
```

Substitutes/replaces string *old* with string *new* inside of *str*. *str*
itself will not be modified. The procedure expects *count* to be a valid number
(a fixnum to be precise) or `#f`, indicating the number of substitutions to
perform, otherwise an error is signaled.

- `count #f`: no limit, the default
- `count > 0`: limit replacements
- `count <= 0`: return input

::: tip Examples:
``` scheme
> (string-subst "aabbaaaaabb" "aa" "cc")
"ccbbccccabb"    ; single a remains, only replacing pairs

> (string-subst "subst;some;of;these;semicolons" ";" "#" count: 2)
"subst#some#of;these;semicolons"
```
:::

## string-substitute-char-if
``` scheme
(string-substitute-char-if string newchar predicate
  [start: #f]
  [end: #f]
  [from-end: #f]
  [count: #f]
  [in-place: #f]) => string-with-substitutions
```

Substitutes/replaces in *string* the characters matching the *predicate*
with the character *newchar*.

Only substitute characters in the substring
defined by the *start* index (included, defaults to `0`) and
the *end* index (excluded, defaults to the length of the string).

The replacement starts *from-end* if specified as true,
which only matters if *count* is specified, in which case,
that *count* is a maximum limit on the number of replacements to be done.

If *in-place* is true then the string itself is modified,
otherwise a modified copy is made.

::: tip Examples:
``` scheme
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>))
"bonono"
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>) start: 3)
"banono"
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>) end: 5)
"bonona"
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>)start: 1 end: 5)
"bonona"
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>) count: 2)
"bonona"
> (string-substitute-char-if "banana" #\o (cut eqv? #\a <>) count: 2 from-end: #t)
"banono"
> (string-substitute-char-if "banana" #\o (cut char>? #\c <>))
"oonono"
> (string-substitute-char-if "banana" #\o (lambda (x) (not (equal? x #\a))))
"oaoaoa"
> (string-substitute-char-if "banana" #\o (lambda (x) (equal? (char-upcase x) #\A)))
"bonono"
```
:::

## string-substitute-char
``` scheme
(string-substitute-char-if string newchar oldchar
  [test: #f]
  [test-not: #f]
  [key: #f]
  [start: #f]
  [end: #f]
  [from-end: #f]
  [count: #f]
  [in-place: #f]) => string-with-substitutions
```

Substitutes/replaces in *string* the characters matching the *oldchar*
with the character *newchar*.

A character *char* matches if `(test oldchar (key char))`, where:
  - for *key*, `#f` designates the `identity` function
  - if `test` is `#f` and `test-not` isn't, then the test is
    `(lambda (x y) (not (test-not x y)))`
  - if both `test` and `test-not` are `#f`, then the test is `equal?`.

Only substitute characters in the substring
defined by the *start* index (included, defaults to `0`) and
the *end* index (excluded, defaults to the length of the string).

The replacement starts *from-end* if specified as true,
which only matters if *count* is specified, in which case,
that *count* is a maximum limit on the number of replacements to be done.

If *in-place* is true then the string itself is modified,
otherwise a modified copy is made.

::: tip Examples:
``` scheme
> (string-substitute-char "banana" #\o #\a)
"bonono"
> (string-substitute-char "banana" #\o #\a start: 3)
"banono"
> (string-substitute-char "banana" #\o #\a end: 5)
"bonona"
> (string-substitute-char "banana" #\o #\a start: 1 end: 5)
"bonona"
> (string-substitute-char "banana" #\o #\a count: 2)
"bonona"
> (string-substitute-char "banana" #\o #\a count: 2 from-end: #t)
"banono"
> (string-substitute-char "banana" #\o #\c test: char>?)
"oonono"
> (string-substitute-char "banana" #\o #\a test-not: equal?)
"oaoaoa"
> (string-substitute-char "banana" #\o #\A key: char-upcase)
"bonono"
```
:::

## string-whitespace?
``` scheme
(string-whitespace? str) -> boolean

  str := string to check for whitespace characters
```

Returns true when the string *s* consists only of whitespace characters.

| character string | name            |
|:-----------------|:----------------|
| ` `              | space           |
| `\n`             | line feed       |
| `\t`             | horizontal tab  |
| `\r`             | carriage return |
| `\f`             | form feed       |
| `\v`             | vertical tab    |

::: tip Examples:
``` scheme
> (string-whitespace? "")
#t

> (string-whitespace? "\n \t")
#t
```
:::

## random-string
``` scheme
(random-string [len = 10]) -> string | error

  len := optional, length of the output string
```

`random-string` returns a string consisting of regex word-boundary
characters (`[a-zA-Z0-9_]`). Throws an error if `len` is not a fixnum.

::: tip Examples:
``` scheme
> (random-string)
"5CfMyYd2Ob"

> (random-string 0)
""
```
:::

## str
``` scheme
(str . xs) -> string

  xs := values to be converted and concatenated into a string
```
`str` converts all of its arguments into a single string.
When called without an argument an empty string is returned.

::: tip Examples:
``` scheme
> (str)
""

> (str 2.0)
"2.0"

> (str "hello" ", world")
"hello, world"

> (import :std/format :std/misc/repr)
> (defstruct point (x y))
> (def p (make-point 10 20))
> (defmethod {:pr point}
    (lambda (self port options)
      (fprintf port "(point ~a ~a)"
               (point-x self) (point-y self))))

> (str p 'abc [1 2] 3.4E+2)
"(point 10 20)abc[1 2]340.0"
```
:::

## str-format
``` scheme
(str-format v) -> string

  v := any value
```
`str-format` takes any value and returns a formatting string, which can be
used by the `:std/format` family of procedures. Considers the `:pr`
[method](https://cons.io/reference/misc.html#representable) from `:std/misc/repr`.

::: tip Examples:
``` scheme
> (import :std/format)
> (str-format "hello")
"~a"  ; default format

> (str-format 1.2E+2)
"~f"  ; inexact number

> (str-format (vector 1 2 3))
"~r"  ; object which implements the :pr method of :std/misc/repr
```
:::

## line ending variables
``` scheme
(define +cr+   "\r")
(define +lf+   "\n")
(define +crlf+ "\r\n")
```

Global line ending convenience definitions.

## as-string<?
``` scheme
(as-string<? x y) -> bool
```
`as-string<?` takes two values that can be converted to strings via `as-string`
and returns true if once converted the first is `string<?` to the second.

::: tip Examples:
``` scheme
> (as-string<? '(foo: 1 bar) #(f #\o "o1" baz))
#t
> (as-string<? 'foo "foo")
#f
```
:::
