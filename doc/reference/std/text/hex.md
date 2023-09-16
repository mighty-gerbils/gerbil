# Hex
::: tip To use the bindings from this module:
``` scheme
(import :std/text/hex)
```
:::

## hex-encode
``` scheme
(hex-encode bytes [start = 0] [end = #f]) -> string

  bytes := u8vector to convert
  start := exact integer as start index
  end   := exact integer as end index | #f
```

Returns a newly allocated string containing hex encoded characters from given
*bytes*.
Optional *start* gives starting index to start the encoding, *end* gives ending
index. Giving #f in *end* means reading to the end of byte vector.

## hexlify
``` scheme
(defialias hexlify hex-encode)
```

Short for `hex-encode`.

## hex-decode
``` scheme
(hex-decode str) -> u8vector | error

  str := string to decode
```

Returns a newly allocated u8vector with contents set to hex decoded *str*.

## unhexlify
``` scheme
(defalias unhexlify hex-decode)
```

Short for `hex-decode`.

## hex
``` scheme
(hex u4) -> character | error
```

Returns hex character for give *u4* integer value. Signals an error if integer
value can't be converted to hex.

::: tip Examples
``` scheme
> (hex 15)
#\f
> (hex 1)
#\1
> (hex 99)
*** ERROR IN (console)@20.1 -- (Argument 2) Out of range
(string-ref "0123456789abcdef" 99)
1>
```
:::

## unhex
``` scheme
(unhex char) -> exact integer | error
```

Returns hex value for given *char*. Signals an error if *char* isn't valid hex
character.

::: tip Examples
``` scheme
> (unhex #\f)
15
> (unhex #\3)
3
> (unhex #\i)
*** ERROR IN (console)@12.1 -- Unbound table key
(table-ref '#<table #4> #\i)
1>
```
:::

## unhex*
``` scheme
(unhex* char) -> character | #f
```

Returns hex value for given *char*. Returns #f if *char* isn't valid hex
character.

::: tip Examples
``` scheme
> (unhex* #\f)
15
> (unhex* #\3)
3
> (unhex* #\i)
#f
>
```
:::
