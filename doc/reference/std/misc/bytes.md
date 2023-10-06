# Bytes

This library provides primitives for operating on u8vectors as well as some utility functions.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/bytes)
```
:::

## endianness
```scheme
(endianness big|little|native) -> endianness symbol

(def big 'big)
(def little 'little)
(def native 'native)
(def native-endianness ...)
```

Specifies the endianness for integer and floating point operations on u8vectors.

The supported endianness can be `big`, `little`, or `native`; `native-endianness` is bound
at runtime to the native architecture endianness.

## u8vector-s8-ref
```scheme
(u8vector-s8-ref v i) -> int

  v := u8vector
  i := integer; offset index in v
```

Retrieves the signed byte from *v* in position *i*, decoding from a 2's complement representation.

## u8vector-s8-set!
```scheme
(u8vector-s8-set! v i n) -> unspecified

  v := u8vector
  i := integer; offset index in v
  n := signed byte
```

Sets the signed byte in *v* at position *i* from the value *n*, encoding to 2's complement representation.

## u8vector-uint-ref
```scheme
(u8vector-uint-ref v i endianness size) -> exact nonnegative integer

  v          := u8vector
  i          := integer; offset index in v
  endianness := endianness symbol; the endianness of the binary representation of the integer
  size       := integer; the size of the integer in bytes

```

Retrieves an unsigned integer from its binary representation from *v*, starting at index *i*.

## u8vector-uint-set!
```scheme
(u8vector-uint-set! v i n endianness size) -> unspecified

  v          := u8vector
  i          := integer; offset index in v
  n          := exact nonnegative integer; the value to set
  endianness := endianness symbol; the endianness of the binary representation of the integer
  size       := integer; the size of the integer in bytes

```

Encodes the unsigned integer *n* in its binary representation in *v*, starting at offset *i*.

## u8vector-sint-ref
```scheme
(u8vector-sint-ref v i endianness size) -> exact integer

  v          := u8vector
  i          := integer; offset index in v
  endianness := endianness symbol; the endianness of the binary representation of the integer
  size       := integer; the size of the integer in bytes

```

Retrieves a signed integer from its binary representation from *v*, starting at index *i*.

## u8vector-sint-set!
```scheme
(u8vector-sint-set! v i n endianness size) -> unspecified

  v          := u8vector
  i          := integer; offset index in v
  n          := exact integer; the value to set
  endianness := endianness symbol; the endianness of the binary representation of the integer
  size       := integer; the size of the integer in bytes

```

Encodes the signed integer *n* in its binary representation in *v*, starting at offset *i*.

## u8vector->uint-list
``` scheme
(u8vector->uint-list v endianness size) -> list of exact nonnegative integers

  v          := u8vector
  endianness := endianness symbol; the endianness of the binary representation of each integer
  size       := integer; the size of each integer in bytes
```

Decodes a u8vector *v* into a list of exact nonnegative integers.

## uint-list->u8vector
``` scheme
(uint-list->u8vector lst endianness size) -> u8vcetor

  lst        := list of exact nonnegative integers
  endianness := endianness symbol; the endianness of the binary representation of each integer
  size       := integer; the size of each integer in bytes
```

Encodes a list of unsigned integers to a u8vector.

## u8vector->sint-list
``` scheme
(u8vector->sint-list v endianness size) -> list of exact integers

  v          := u8vector
  endianness := endianness symbol; the endianness of the binary representation of each integer
  size       := integer; the size of each integer in bytes
```

Decodes a u8vector *v* into a list of exact integers.

## sint-list->u8vector
``` scheme
(uint-list->u8vector lst endianness size) -> u8vector

  lst        := list of exact integers
  endianness := endianness symbol; the endianness of the binary representation of each integer
  size       := integer; the size of each integer in bytes
```

Encodes a list of signed integers to a u8vector.

## Operations on Machine-size Integers
``` scheme
(u8vector-u16-ref v i endianness) -> u16
(u8vector-u16-native-ref v i) -> u16
(u8vector-u16-ref-set! v i n endianness) -> unspecified
(u8vector-u16-native-set! v i n) -> unspecified

(u8vector-s16-ref v i endianness) -> s16
(u8vector-s16-native-ref v i) -> s16
(u8vector-s16-ref-set! v i n endianness) -> unspecified
(u8vector-s16-native-set! v i n) -> unspecified

(u8vector-u32-ref v i endianness) -> u32
(u8vector-u32-native-ref v i) -> u32
(u8vector-u32-ref-set! v i n endianness) -> unspecified
(u8vector-u32-native-set! v i n) -> unspecified

(u8vector-s32-ref v i endianness) -> s32
(u8vector-s32-native-ref v i) -> s32
(u8vector-s32-ref-set! v i n endianness) -> unspecified
(u8vector-s32-native-set! v i n) -> unspecified

(u8vector-u64-ref v i endianness) -> u64
(u8vector-u64-native-ref v i) -> u64
(u8vector-u64-ref-set! v i n endianness) -> unspecified
(u8vector-u64-native-set! v i n) -> unspecified

(u8vector-s64-ref v i endianness) -> s64
(u8vector-s64-native-ref v i) -> s64
(u8vector-s64-ref-set! v i n endianness) -> unspecified
(u8vector-s64-native-set! v i n) -> unspecified

```

Operations for encoding and decoding machine-sized integers.
When the endianness matches the native endianness, then a faster native implementation is used.

## Operations on Floating Point Numbers
```scheme
(u8vector-float-ref v i endianness) -> flonum
(u8vector-float-native-ref v i) -> flonum
(u8vector-float-set! v i x endianness) -> unspecified
(u8vector-float-native-set! v i x) -> unspecified

(u8vector-double-ref v i endianness) -> flonum
(u8vector-double-native-ref v i) -> flonum
(u8vector-double-set! v i x endianness) -> unspecified
(u8vector-double-native-set! v i x) -> unspecified
```

Operations for encoding and decoding floating point numbers using the IEEE-754 representation.

## u8vector-swap!
``` scheme
(u8vector-swap! v i j) -> unspecified

  v := u8vector
  i := integer element position
  j := integer element position
```

Swaps elements *i* and *j* of `u8vector` *v*.

::: tip Examples:
``` scheme
> (def u (u8vector 1 2))
> (u8vector-swap! u 0 1)
> u
#u8(2 1)
```
:::

## u8vector-reverse!
``` scheme
(u8vector-reverse! v) -> void

  v := u8vector
```

Reverses the elements of `u8vector` *v* in-place. Mutates the vector.

::: tip Examples:
``` scheme
> (def u (u8vector 1 2 3 4 5))
> (u8vector-reverse! u)
> u
#u8(5 4 3 2 1)
```
:::

## u8vector-reverse
``` scheme
(u8vector-reverse v) -> u8vector

  v := u8vector
```

Reverses the elements of `u8vector` *v*. Produces a new `u8vector`.

::: tip Examples:
``` scheme
> (def u (u8vector 1 2 3 4 5))
> (u8vector-reverse u)
#u8(5 4 3 2 1)
```
:::

## u8vector->bytestring
``` scheme
(u8vector->bytestring v (delim #\space)) -> bytestring

  v     := u8vector
  delim := char
```

Constructs a string of bytes in hexadecimal from `u8vector` *v*.

Each byte is formatted as two uppercase hex characters
and separated using the specified delimiter character; the delimiter can
be `#f` to specify simple concatenation.

::: tip Examples:
``` scheme
> (u8vector->bytestring (u8vector 255 127 11 1 0))
"FF 7F 0B 01 00"
> (displayln (u8vector->bytestring (u8vector 255 127 11 1 0)))
FF 7F 0B 01 00
> (u8vector->bytestring (u8vector 1 2 3) #f)
"010203"
```
:::

## bytestring->u8vector
``` scheme
(bytestring->u8vector bs (delim #\space)) -> u8vector

  bs    := bytestring
  delim := char
```

Constructs a `u8vector` from bytestring *bs*.

This function expects a string of bytes delimited by *delim*, which can be `#f` to indicate
no delimiter. Each byte consists of two hexadecimal characters.

::: tip Examples:
``` scheme
> (bytestring->u8vector "FF AB 00")
#u8(255 171 0)
> (u8vector->bytestring (bytestring->u8vector "FF AB 00"))
"FF AB 00"
> (string->bytes "FF AB 00")
#u8(70 70 32 65 66 32 48 48)
```
:::

## u8vector->uint
``` scheme
(u8vector->uint v (endianness big)) -> uint

  v          := u8vector
  endianness := endianness symbol
```

Decodes a u8vector as an unsigned integer.

## uint->u8vector
``` scheme
(uint->u8vector n (endianness big)) -> u8vector

  n          := exact nonnegative integer
  endianness := endianness symbol
```

Encodes an unsigned integer to its binary representation.

::: tip Examples:
``` scheme
> (u8vector->uint #u8(0 1))
1
> (u8vector->uint (make-u8vector 2 #xFF))
65535
> (u8vector->uint (make-u8vector 8 #xFF))
18446744073709551615
> (equal? (- (expt 2 64) 1) (u8vector->uint (make-u8vector 8 #xFF)))
#t
```
:::


## Aliases
The following aliases are defined, using the canonical Scheme naming of u8vectors as bytevectors.

```scheme
(defalias bytevector-u8-ref u8vector-ref)
(defalias bytevector-u8-set! u8vector-set!)
(defalias bytevector-s8-ref u8vector-s8-ref)
(defalias bytevector-s8-set! u8vector-s8-set!)

(defalias bytevector-uint-ref u8vector-uint-ref)
(defalias bytevector-uint-set! u8vector-uint-set!)
(defalias bytevector-sint-ref u8vector-sint-ref)
(defalias bytevector-sint-set! u8vector-sint-set!)

(defalias bytevector->uint-list u8vector->uint-list)
(defalias bytevector->sint-list u8vector->sint-list)
(defalias uint-list->bytevector uint-list->u8vector)
(defalias sint-list->bytevector sint-list->u8vector)

(defalias bytevector-u16-ref u8vector-u16-ref)
(defalias bytevector-u16-native-ref u8vector-u16-native-ref)
(defalias bytevector-u16-set! u8vector-u16-set!)
(defalias bytevector-u16-native-set! u8vector-u16-native-set!)

(defalias bytevector-s16-ref u8vector-s16-ref)
(defalias bytevector-s16-native-ref u8vector-s16-native-ref)
(defalias bytevector-s16-set! u8vector-s16-set!)
(defalias bytevector-s16-native-set! u8vector-s16-native-set!)

(defalias bytevector-u32-ref u8vector-u32-ref)
(defalias bytevector-u32-native-ref u8vector-u32-native-ref)
(defalias bytevector-u32-set! u8vector-u32-set!)
(defalias bytevector-u32-native-set! u8vector-u32-native-set!)

(defalias bytevector-s32-ref u8vector-s32-ref)
(defalias bytevector-s32-native-ref u8vector-s32-native-ref)
(defalias bytevector-s32-set! u8vector-s32-set!)
(defalias bytevector-s32-native-set! u8vector-s32-native-set!)

(defalias bytevector-u64-ref u8vector-u64-ref)
(defalias bytevector-u64-native-ref u8vector-u64-native-ref)
(defalias bytevector-u64-set! u8vector-u64-set!)
(defalias bytevector-u64-native-set! u8vector-u64-native-set!)

(defalias bytevector-s64-ref u8vector-s64-ref)
(defalias bytevector-s64-native-ref u8vector-s64-native-ref)
(defalias bytevector-s64-set! u8vector-s64-set!)
(defalias bytevector-s64-native-set! u8vector-s64-native-set!)

(defalias bytevector-ieee-single-ref u8vector-float-ref)
(defalias bytevector-ieee-single-set! u8vector-float-set!)
(defalias bytevector-ieee-single-native-ref u8vector-float-native-ref)
(defalias bytevector-ieee-single-native-set! u8vector-float-native-set!)

(defalias bytevector-ieee-double-ref u8vector-double-ref)
(defalias bytevector-ieee-double-set! u8vector-double-set!)
(defalias bytevector-ieee-double-native-ref u8vector-double-native-ref)
(defalias bytevector-ieee-double-native-set! u8vector-double-native-set!)

(defalias bytevector-swap! u8vector-swap!)
(defalias bytevector-reverse! u8vector-reverse!)
(defalias bytevector-reverse u8vector-reverse)
(defalias bytevector->bytestring u8vector->bytestring)
(defalias bytestring->bytevector bytestring->u8vector)
(defalias bytevector->uint u8vector->uint)
(defalias uint->bytevector uint->u8vector)
```

## Low Level Unsafe Operations

The following low level unsafe operations are also exported.

```scheme
(&u8vector-s8-ref v i) -> s8
(&u8vector-s8-set! v i n) -> unspecified

(&u8vector-uint-ref/be v i size) -> uint
(&u8vector-uint-ref/le v i size) -> uint
(&u8vector-uint-set!/be v i n size) -> unspecified
(&u8vector-uint-set!/le v i n size) -> unspecified

(&u8vector-sint-ref/be v i size) -> sint
(&u8vector-sint-ref/le v i size) -> sint
(&u8vector-sint-set!/be v i n size) -> unspecified
(&u8vector-sint-set!/le v i n size) -> unspecified

(&u8vector-u16-ref/native v i) -> u16
(&u8vector-u16-set!/native v i n) -> unspecified
(&u8vector-s16-ref/native v i) -> s16
(&u8vector-s16-set!/native v i n) -> unspecified

(&u8vector-u32-ref/native v i) -> u32
(&u8vector-u32-set!/native v i n) -> unspecified
(&u8vector-s32-ref/native v i) -> s32
(&u8vector-s32-set!/native v i n) -> unspecified

(&u8vector-u64-ref/native v i) -> u64
(&u8vector-u64-set!/native v i n) -> unspecified
(&u8vector-s64-ref/native v i) -> s64
(&u8vector-s64-set!/native v i n) -> unspecified

(&u8vector-float-ref/native v i) -> flonum
(&u8vector-float-set!/native v i x) -> unspecified
(&u8vector-double-ref/native v i) -> flonum
(&u8vector-double-set!/native v i x) -> unspecified

(&u8vector-swap! v i j) -> unspecified
```

## u8vector-init!, bytevector-init!
``` scheme
(u8vector-init! len fun) -> u8vector
```

`u8vector-init!` is take a non-negative fixnum `len` and a one-argument function `fun`
and creates a new `u8vector` of length `len` where each element is initialized
in increasing index order with the result of calling `fun` with the index as argument
(starting with `0`, assuming `len` is positive).

::: tip Examples:
``` scheme
> (u8vector-init! 5 (lambda (x) (* x x)))
#u8(0 1 4 9 16)
```
:::

## u8vector-every
``` scheme
(u8vector-every pred? u8vector) -> bool
```

Return true if every element of the given `u8vector` satisfies the unary predicate `pred?`.

::: tip Examples:
``` scheme
> (u8vector-every odd? #u8(1 3 5))
#t
> (u8vector-every odd? #u8(1 2 3))
#f
```
:::

## n-bits->n-u8
``` scheme
(n-bits->n-u8 n) -> integer
```

Given a number `n` of bits, return the number `N` of 8-bit bytes necessary to store those `n` bits,
i.e. `N = (ceiling-align n-bits 8)`.

::: tip Examples:
``` scheme
> (map (lambda (x) (list x (n-bits->n-u8 x))) '(0 1 2 7 8 9 16 21 63 100 1000))
((0 0) (1 1) (2 1) (7 1) (8 1) (9 2) (16 2) (21 3) (63 8) (100 13) (1000 125))
```
:::

## nat-length-in-u8
``` scheme
(nat-length-in-u8 n) -> integer
```

Given a natural number `n` (non-negative, "unsigned"),
return the number of 8-bit bytes necessary to store all the bits of `n`.

::: tip Examples:
``` scheme
> (map (lambda (x) (list x (nat-length-in-u8 x))) '(0 42 127 128 255 256 65535 65536))
((0 0) (42 1) (127 1) (128 1) (255 1) (256 2) (65535 2) (65536 3))
```
:::

## nat->u8vector
``` scheme
(nat->u8vector n [length] [endianness]) -> u8vector
```

Given a natural number `n` (non-negative, "unsigned"),
a `length` (which defaults to the minimal length required to store all the bits of `n`),
and an endianness (which defaults to `big`),
return a u8vector of given length which stores the bits of `n` in the given endianness.

::: tip Examples:
``` scheme
> (nat->u8vector 66051)
#u8(1 2 3)
> (nat->u8vector 66051 4 little)
#u8(3 2 1 0)
```
:::

## u8vector->nat
``` scheme
(u8vector->nat u8vector [length] [endianness]) -> integer
```

Given a `u8vector`, a `length` no greater than that of the vector,
and an `endianness` (defaults to `big`), decode the first `length` bytes of `u8vector`
using the given endianness into a natural number (non-negative, "unsigned").
Assuming the `length` and `endianness` match and the number fits in the `length`,
this is the inverse operation of `nat->u8vector`.

::: tip Examples:
``` scheme
> (u8vector->nat #u8(1 2 3))
66051
> (u8vector->nat #u8(3 2 1 0) 4 little)
66051
```
:::

## integer-length-in-u8
``` scheme
(integer-length-in-u8 n) -> integer
```

Given a natural number `n` (non-negative, "unsigned"),
return the number of 8-bit bytes necessary to store all the bits of `n`.

::: tip Examples:
``` scheme
> (map (lambda (x) (list x (integer-length-in-u8 x))) '(0 42 127 128 255 256 65535 65536))
((0 0) (42 1) (127 1) (128 1) (255 1) (256 2) (65535 2) (65536 3))
```
:::

## integer->u8vector
``` scheme
(integer->u8vector n [length] [endianness]) -> u8vector
```

Given a relative integer `n` (possibly negative, "signed"),
a `length` (which defaults to the minimal length required to store all the bits of `n`),
and an endianness (which defaults to `big`),
return a u8vector of given length which stores the bits of `n` in the given endianness.

::: tip Examples:
``` scheme
> (integer->u8vector 66051)
#u8(1 2 3)
> (integer->u8vector -255)
#u8(255 1)
> (integer->u8vector 66051 4 little)
#u8(3 2 1 0)
> (integer->u8vector -66051 4 little)
#u8(253 253 254 255)
```
:::

## u8vector->integer
``` scheme
(u8vector->integer u8vector [length] [endianness]) -> integer
```

Given a `u8vector`, a `length` no greater than that of the vector,
and an `endianness` (defaults to `big`), decode the first `length` bytes of `u8vector`
using the given endianness into a natural number (non-negative, "unsigned").
Assuming the `length` and `endianness` match and the number fits in the `length`,
this is the inverse operation of `integer->u8vector`.

::: tip Examples:
``` scheme
> (u8vector->integer #u8(1 2 3))
66051
> (u8vector->integer #u8(255 1))
-255
> (u8vector->integer #u8(3 2 1 0) 4 little)
66051
> (u8vector->integer #u8(253 253 254 255) 4 little)
-66051
```
:::
