# Strings

## bytes-&gt;string
```
(bytes->string bstr [encoding = 'UTF-8]) -> string

  bstr := u8vector
```

Decodes a byte vector *bstr* to a string.

Note: if you are decoding UTF-8, then you should consider using `string->utf8`
from `:std/text/utf8` which is considerably faster.

## string-&gt;bytes
``` scheme
(string->bytes str [encoding = 'UTF-8]) -> u8vector

  str := string
```

Encodes a string *str* to a bytevector.

Note: if you are encoding UTF-8, then you should consider using `utf8->string`
from `:std/text/utf8` which is considerably faster.


## substring-&gt;bytes
``` scheme
(substring->bytes str start end [encoding = 'UTF-8]) -> u8vector

  str := string
  start, end := fixnum
```

Encodes a substring *str* to a vector.

Note: if you are encoding UTF-8, then you should consider using `utf8-encode`
from `:std/text/utf8` which is considerably faster.


## string-empty?
``` scheme
(string-empty? str) -> boolean

  str := string
```

Returns true if *str* is the empty string.

## string-prefix?
``` scheme
(string-prefix? prefix str) -> boolean

  prefix, str := string
```

Returns true if *prefix* is a prefix of *string*.

## string-index
``` scheme
(string-index str char [start = 0]) -> fixnum | #f

  str   := string
  char  := character
  start := fixnum
```

Returns the index of the first occurrence of *char* in *str*.

## string-rindex
``` scheme
(string-rindex str char [start = #f]) -> fixnum | #f

  str   := string
  char  := character
  start := fixnum or #f
```

Returns the index of the first occurrence from the right of *char* in *str*.

## string-split
``` scheme
(string-split str char) -> list

  str  := string
  char := character; separator
```

Splits *str* into substrings using *char* as the separator.

## string-join
``` scheme
(string-join strs char) -> string

  str  := list of strings
  char := character; separator
```

Joins *strs* into a string, using *char* as the separator.

