# UTF-8
Faster UTF-8 encoding and decoding.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/utf8)
```
:::

## string->utf8
``` scheme
(string->utf8 str [start = 0] [end = (string-length str)]) -> u8vector | error

  str   := string of UTF-8 data
  start := exact integer for starting index
  end   := exact integer for end index
```

Returns a newly allocated u8vector with UTF-8 data from *str* converted to
bytes. Optional *start* and *end* limit the operation to substring of *str*.

## utf8->string
``` scheme
(utf8->string u8v [start = 0] [end = (u8vector-length str)]) -> string | error

  u8v   := u8vector of data to convert
  start := exact integer for starting index
  end   := exact integer for ending index
```

Returns a newly allocated string with UTF-8 contents from *u8v*. Optional *start*
and *end* parameters limit the operation to the sub-vector of given indexes.
The replacement character U+FFFD is used to replace an unknown,
unrecognized or unrepresentable character. An error is raised upon
reading an incomplete character.

## utf8-encode
``` scheme
(utf8-encode str start end) -> u8vector

  str   := UTF-8 encoded string
  start := exact integer for starting index
  end   := exact integer for ending index
```

Returns a newly allocated u8vector with byte data of UTF-8 string *str*.

## utf8-decode
``` scheme
(utf8-decode u8v start end) -> string | error

  u8v   := u8vector of input data
  start := exact integer for starting index
  end   := exact integer for ending index
```

Decodes the bytes in byte vector *u8v* from *start* index until *end* index and
returns the results as a string. Will signal an error if fails to parse UTF-8 bytes.

## string-utf8-length
``` scheme
(string-utf8-length str [start = 0] [end = (string-length str)]) -> integer | error
```

Returns the byte length of given UTF-8 string *str*. Optional *start* and *end*
indexes limit the operation on substring. Signals an error if *str* isn't
string.

::: tip Examples
``` scheme
> (import :std/format)
> (import :std/text/utf8)

> (let ((s  "uber")
        (us "über"))
    (printf "s length: ~a\n" (string-length s))
    (printf "u length: ~a\n" (string-length us))
    (newline)
    (printf "s utf8-length: ~a\n" (string-utf8-length s))
    (printf "u utf8-length: ~a\n" (string-utf8-length us)))
s length: 4
u length: 5

s utf8-length: 4
u utf8-length: 7

```
:::
