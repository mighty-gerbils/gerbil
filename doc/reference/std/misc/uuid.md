# UUIDs
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/uuid)
```
:::

Bindings to generate, recognize, and convert from and to *universally unique
identifiers* (UUID) for identification purposes.

Example UUID: `dae92f43-4a98-fde7-f559-c2b4c2665138`.

## UUID
``` scheme
(UUID uuid) -> uuid | error
(UUID str)  -> uuid | error
(UUID vec)  -> uuid | error
(UUID sym)  -> uuid | error

  uuid := uuid object, will be returned
  str  := string representation to convert from
  vec  := u8vector representation to convert from
  sym  := symbolic representation to convert from
```

Creates a new uuid object from various input objects. It accepts the following inputs:

- an already constructed object, which will then be simply returned,
- a string,
- an u8vector of 16 elements,
- and finally, a symbol that's first converted to a string and processed further.

`UUID` signals an error when any of these inputs are invalid UUID representations.

::: tip Examples:
``` scheme
> (def ustr (uuid->string (random-uuid)))
> (uuid=? (UUID ustr)
          (UUID (string->symbol ustr)))
#t
```
:::

## uuid-length
``` scheme
(def uuid-length 16)
```

Variable that holds the number of octets that are making up the UUID.

## make-uuid
``` scheme
(make-uuid vec str) -> uuid

  vec := uuid object u8vector representation
  str := uuid object string representation
```

Creates a new uuid object from *vec*, a u8vector representation, and *str*, a
string-representation. If *str* is specified as `#f`, then the string
representation will be generated on demand by procedures like `uuid->string`.

::: tip Examples:
``` scheme
;; possible random-uuid implementation:
> (import (only-in :std/crypto/etc random-bytes!))
> (def (random-uuid)
    (let (bytes (make-u8vector uuid-length))
      (random-bytes! bytes)
      (make-uuid bytes #f)))

> (uuid->string (random-uuid))
"e26a747f-2a17-aad1-2cdf-504a25e98d02"
```
:::

## uuid?
``` scheme
(uuid? uuid) -> boolean

  uuid := uuid object to check
```

Checks whether *uuid* is an actual uuid object.

::: tip Examples:
``` scheme
> (uuid? "337649b0-ec36-6c80-5d06-53f5586e6322")
#f

> (uuid? (string->uuid "337649b0-ec36-6c80-5d06-53f5586e6322"))
#t
```
:::

## uuid=?
``` scheme
(uuid=? u1 u2) -> boolean

  u1, u2 := uuid object to compare
```

Compares the uuid objects *u1* and *u2* and checks whether these two are equal.
Two uuid objects are equal when their byte representations are `equal?`.

::: tip Examples:
``` scheme
> (uuid=? (string->uuid "98ac7df1-204a-7932-dfdf-f466f9c9acff")
          (string->uuid "a8a695fd-7d0e-bd55-46a8-5a5951500b4b"))
#f

> (def u1 (u8vector->uuid #u8(227 124 73 208 223 79 147 3 57 65 100 56 99 245 171 80)))
> (def u2 (string->uuid "e37c49d0-df4f-9303-3941-643863f5ab50"))
> (uuid=? u1 u2)
#t
```
:::

## uuid-hash
``` scheme
(uuid-hash uuid) -> fixnum

  uuid := uuid object to hash
```

Returns the hash number of *uuid*, which is a small exact integer (fixnum). Two
uuid objects have the same hash value when their byte representations are
`equal?`.

::: tip Examples:
``` scheme
> (uuid-hash (random-uuid))
318443048

> (def u1 (u8vector->uuid #u8(227 124 73 208 223 79 147 3 57 65 100 56 99 245 171 80)))
> (def u2 (string->uuid "e37c49d0-df4f-9303-3941-643863f5ab50"))
> (= (uuid-hash u1) (uuid-hash u2))
#t
```
:::

## uuid->u8vector
``` scheme
(uuid->u8vector uuid) -> u8vector

  uuid := uuid object to convert
```

Converts *uuid* to its byte vector representation of length `uuid-length`.

::: tip Examples:
``` scheme
> (uuid->u8vector (random-uuid))
#u8(70 222 137 224 229 154 122 182 255 30 187 147 111 209 17 29)
```
:::

## u8vector->uuid
``` scheme
(u8vector->uuid vec) -> uuid | error

  vec := u8vector to convert
```

Converts *vec*, a u8vector representing a UUID, to an actual uuid object.
Signals an error when *vec*'s length doesn't match `uuid-length`, which is
predefined to be 16.

::: tip Examples:
``` scheme
> (def vec #u8(159 202 105 225 118 206 224 215 234 228 189 63 150 185 213 53))
> (u8vector-length vec)
16

> (uuid->string (u8vector->uuid vec))
"9fca69e1-76ce-e0d7-eae4-bd3f96b9d535"
```
:::

## uuid->string
``` scheme
(uuid->string uuid) -> string

  uuid := uuid object to convert
```

Converts *uuid* to its easier to read string representation.

::: tip Examples:
``` scheme
> (uuid->string (random-uuid))
"c6bc8cd8-88c9-64fb-bddb-2bed2c663ed7"

> (uuid->string (string->uuid "ce2c3a97-504c-0926-dddd-0d2571b9a683"))
"ce2c3a97-504c-0926-dddd-0d2571b9a683"
```
:::

## string->uuid
``` scheme
(string->uuid str) -> uuid | error

  str := string representing a UUID to convert
```

Converts *str*, a hex string representing a UUID, to an actual uuid object.
Signals an error when *str* is malformed.

::: tip Examples:
``` scheme
> (string->uuid "39fc54b8-6c00-9ec7-638f-4bb2b83abb0a")
#<uuid #386>

> (uuid->string (string->uuid "ce2c3a97-504c-0926-dddd-0d2571b9a683"))
"ce2c3a97-504c-0926-dddd-0d2571b9a683"
```
:::

## random-uuid
``` scheme
(random-uuid) -> uuid
```

Generates a new pseudo-random UUID.

::: tip Examples:
``` scheme
> (uuid->string (random-uuid))
"eb362448-93bb-f69f-9a90-e5eec79bc0a2"

> (uuid->string (random-uuid))
"78a9cf92-d3c0-eb38-cd16-6a18251ef3f6"
```
:::
