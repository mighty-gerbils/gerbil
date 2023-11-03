# Base64

These provide text conversions according to [RFC 4648](https://tools.ietf.org/html/rfc4648).

## Base64 encoding support notes

### Support for urlsafe coding
In this mode, #\- instead of #\+ and #\_ is used instead of #\/. For this coding
to work, the padding should be turned off during encoding (so there's no #\=:s
in the output).  Also known as the "Base64 with URL and Filename Safe Alphabet"
aka base64url of RFC 4648.

### Support for presence and absence of end padding
Supports both the older encoding with padding, and the unpadded form that's
slightly smaller, that is gaining popularity in decoders currently, currently
implemented in decoders such as that of Ecmascript 5 and the apache-commons Java
library. We imitate this functionality, while offering the option of not
outputting padding on encoding, as well as requiring padding on decoding.

Basically the requirement for padding on base64encoded was motivated by the
scarce nature of computing resources in the 1980:s. Today there's a move toward
not requiring the padding, as reflected for instance in Ecmascript 5's spec to
produce the padding on encode but not to require it on decode.

For some more references see:
- [Description of JS5 btoa()](https://en.wikipedia.org/wiki/Base64#HTML)
- [Why does base64 encoding require padding if the input length is not divisible by 3?](http://stackoverflow.com/questions/4080988/why-does-base64-encoding-requires-padding-if-the-input-length-is-not-divisible-b)
- [Why padding is used in Base64 encoding?](http://stackoverflow.com/questions/4322507/why-padding-is-used-in-base64-encoding)
- [Remove trailing “=” when base64 encoding](http://stackoverflow.com/questions/4492426/remove-trailing-when-base64-encoding)
- [URLEncoding padding is optional](https://github.com/golang/go/issues/4237)


::: tip To use the bindings from this module:
``` scheme
(import :std/text/base64)
```
:::

## base64-string->u8vector
``` scheme
(base64-string->u8vector str [nopadding-ok?: #t] [urlsafe?: #f]) -> u8vector

  str           := string to convert
  nopadding-ok? := boolean to disable padding
  urlsafe?      := boolean to enable urlsafe coding
```

Returns a newly allocated u8vector with Base64 encoded contents of *str*. Optional keyword arguments
control how the conversion is done. If *nopadding-ok?* is #t (default) the value
is converted. If *urlsafe?* is #t, the result is URL encoded as specified in RFC 4648.
...

## base64-substring->u8vector
``` scheme
(base64-substring->u8vector str start end [nopadding-ok?: #t] [urlsafe?: #f]) ->
u8vector

  str           := string of Base64 data
  start         := exact integer starting index
  end           := exact integer ending index
  nopadding-ok? := boolean to disable padding
  urlsafe?      := boolean to enable urlsafe coding
```

Returns a newly allocated u8vector containing Base64 encoded value of *str* from
*start* to *end* like `base64-string->u8vector`.

## u8vector->base64-string
``` scheme
(u8vector->base64-string u8vect [width: 0] [padding?: #t] [urlsafe?: #f]) -> string

  u8vect   := u8vector to convert
  width    := exact integer for padding width
  padding? := boolean to enable padding
  urlsafe? := boolean to enable urlsafe coding
```

Returns a newly allocated Base64 string with bytes of *u8vect* in left-to-right order to Base64 encoded string.

## subu8vector->base64-string
``` scheme
(subu8vector->base64-string u8vect start end [width: 0] [padding?: #t] [urlsafe?: #f]) -> string

  u8vect   := u8vector to encode data from
  start    := exact integer starting index
  end      := exact integer end index
  width    := exact integer for padding width
  padding? := boolean to enable padding
  urlsafe? := boolean to enable urlsafe coding
```

Returns a newly allocated string with bytes of *u8vect* Base64 encoded in
left-to-right order from *start* to *end*.

## base64-decode
``` scheme
(base64-decode str [nopadding-ok?: #t] [urlsafe: #f]) -> u8vector
```

This is an alias for `base64-string->u8vector`. See its definition for details.

## base64-decode-substring
``` scheme
(base64-decode-substring str start end [nopadding-ok?: #t] [urlsafe: #f]) -> u8vector
```

This is an alias for `base64-substring->u8vector`. See its definition for details.

## base64-encode
``` scheme
(base64-encode u8vect [width: 0] [padding: #t] [urlsafe: #f]) -> string
```

This is an alias for `u8vector->base64-string`. See its definition for details.

## base64-encode-subu8vector
``` scheme
(base64-encode-subu8vector u8vect start end [width: 0] [padding?: #t] [urlsafe?: #f]) -> string
```

This is an alias for `subu8vector->base64-string`. See its definition for details.
