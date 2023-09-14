# UTF-32
UTF-32 encoding and decoding.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/utf32)
```
:::

## string->utf32
``` scheme
(string->utf32 str (endianness 'big) (BOM? #f)) -> u8vector | error

  str        := string
  endianness := endianness symbol; specifies the endianness of the encoding
  BOM?       := boolean; specifies whether to include a BOM or not
```

Returns a newly allocated u8vector with UTF-32 data from *str* converted to
bytes.

## utf32->string
``` scheme
(utf32->string u8v (endianness 'big) (endianness-mandatory? #f)) -> string | error

  u8v                   := u8vector of data to convert
  endianness            := endianness symbol; specifies the endianness of the encoding
  endianness-mandatory? := boolean; if #f then try to read a BOM to determine endianness; if #t then the specified endianness is used.
```

Returns a newly allocated string with UTF-32 contents from *u8v*.
