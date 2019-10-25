# Protocol Buffers

The `:std/protobuf` package provides support for Google's Protocol Buffers.
The package provides a custom language prelude, which allows you to import
modules in protobuf syntax like any other module.

## Protobuf modules

::: tip usage
```
#lang :std/protobuf/proto
```
:::

This is the language prelude for protobuf modules.
The expansion defines structures and methods for messages and enums defined
in the module.

More specifically:
- For each message:
  - Defines a struct that has the corresponding fields
  - Defines a keyword constructor that allows you to initialize the struct using
    keywords to define the fields.
  - Defines serializers and deserializers to read/write the message to
    a [bio buffer](net.md#binary-i-o-buffers).
- For each enum:
  - The values accepted for the enum are the symbolic constants defined in the
    enum declaration
  - Defines serializers and deserializers to read/write the enum to
    a [bio buffer](net.md#binary-i-o-buffers).
- Nested messages and enums are lifted and prefixed with the name of the
  enclosing message, separated with a dot.

For an example, consider the following protobuf:
```
message Request {
  enum Type {
    FOO = 0;
    BAR = 1;
  }

  message Foo {
    optional string val = 1;
  }

  message Bar {
    optional int32 val = 2;
  }

  required Type type = 1;
  optional Foo foo = 2;
  optional Bar bar = 3;
}
```

This will expand to roughly the following code:
```
(def (bio-read-Request.Type buf)
  ...)

(def (bio-write-Request.type val buf)
  ...)

(defstruct Request.Foo (val)
  final: #t transparent: #t constructor: :init!)

(defmethod {:init! Request.Foo}
  (lambda (self val: (val #f))
    ...))

(def (bio-read-Request.Foo buf)
   ...)
(def (bio-read-Request.Foo! obj buf)
  ...)
(def (bio-write-Request.Foo obj buf)
  ...)

(defstruct Request.Bar ...)
...

(defstruct Request (type foo bar)
  final: #t transparent: #t constructor: :init!)

(defmethod {:init! Request}
  (lambda (self type: type foo: (foo #f) bar: (bar #f))
    ...))
...
```

## Implementation Notes

- Fields are serialized in declaration order.
- Unknown fields are ignored in deserialization.
- The parser does not accept empty statements from stray semicolons.
  That's more of a metalinguistic statement than a bug though, it would be easy to modify the
  parser to accept them.
- `service`, `extend`, and `option` declarations are parsed but ignored by the expander.
- `group` declarations are not accepted by the parser; I don't understand how groups work,
  as they are not really documented other than being deprecated.

## I/O Procedures

The `:std/protobuf/io` library provides low level I/O procedures using the
protobuf wire format.

::: tip usage
(import :std/protobuf/io)
:::

### marshal
::: tip usage
```
(marshal obj bio-write-e)
  obj         := any; the object to marshal
  bio-write-e := lambda (obj buf); serializer procedure
=> u8vector
```
:::

Marshals an object to its binary representation, using `bio-write-e` as
the serializer procedure.

### unmarshal
::: tip usage
```
(unmarshal bytes bio-read-e)
  bytes      := u8vector; the binary object representation
  bio-read-e := lambda (buf); deserializer procedure
```
:::

Unmarshals an object from its binary representation, using `bio-read-e` as
the deserializer procedure.

### write-delimited
::: tip usage
```
(write-delimited obj bio-write-e [port = (current-output-port)])
```
:::

Writes the varint-delimited binary representation of object to a port.

### read-delimited
::: tip usage
```
(read-delimited bio-read-e [port = (current-input-port)])
```
:::

Reads the varint-delimited binary representation of an object from a port.

### bio-write-delimited
::: tip usage
```
(bio-write-delimited obj bio-write-e buf)
```
:::

Writes the varint-delimited binary representation of an object to a bio
output buffer.

### bio-read-delimited
::: tip usage
```
(bio-read-delimited bio-read-e buf)
```
:::

Reads the varint-delimited binary representation of an object from a bio
input buffer.

### bio-write-delimited-string
::: tip usage
```
(bio-write-delimited-string str buf)
  str := string
  buf := bio output buffer
```
:::

Writes the varint-delimited binary representation of a string (UTF8).

### bio-read-delimited-string
::: tip usage
```
(bio-read-delimited-string buf)
  buf := bio input buffer
=> string
```
:::

Reads the varint-delimited binary representation of a string.

### bio-write-delimited-bytes
::: tip usage
```
(bio-write-delimited-bytes bytes buf)
  bytes := u8vector
  buf   := bio output buffer
```
:::

Writes varint delimited bytes.

### bio-read-delimited-bytes
::: tip usage
```
(bio-read-delimited-bytes buf)
  buf := bio input buffer
=> u8vector
```
:::

Reads varint delimited bytes

### bio-write-varint
::: tip usage
```
(bio-write-varint int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes an integer in varint representation.

### bio-read-varint
::: tip usage
```
(bio-read-varint buf)
  buf := bio input buffer
=> integer
```
:::

Reads an integer in varint representation.

### bio-write-varint-zigzag
::: tip usage
```
(bio-write-varint-zigzag int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes an integer in varint representation using zigzag encoding.

### bio-read-varint-zigzag
::: tip usage
```
(bio-read-varint-zigzag buf)
  buf := bio input buffer
=> integer
```
:::

Reads an integer in varint representation using zigzag encoding.

### bio-write-fixed32
::: tip usage
```
(bio-write-fixed32 int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes a fixed 32-bit unsigned integer in little endian.

### bio-read-fixed32
::: tip usage
```
(bio-read-fixed32 buf)
  buf := bio input buffer
=> integer
```
:::

Reads a fixed 32-bit unsigned integer in little endian.

### bio-write-sfixed32
::: tip usage
```
(bio-write-sfixed32 int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes a fixed 32-bit signed integer in little endian.

### bio-read-sfixed32
::: tip usage
```
(bio-read-sfixed32 buf)
  buf := bio input buffer
=> integer
```
:::

Reads a fixed 32-bit signed integer in little endian.

### bio-write-fixed64
::: tip usage
```
(bio-write-fixed64 int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes a fixed 64-bit unsigned integer in little endian.

### bio-read-fixed64
::: tip usage
```
(bio-read-fixed64 buf)
  buf := bio input buffer
=> integer
```
:::

Reads a fixed 64-bit unsigned integer in little endian.

### bio-write-sfixed64
::: tip usage
```
(bio-write-sfixed64 int buf)
  int := integer
  buf := bio output buffer
```
:::

Writes a fixed 64-bit signed integer in little endian.

### bio-read-sfixed64
::: tip usage
```
(bio-read-sfixed64 buf)
  buf := bio input buffer
=> integer
```
:::

Reads a fixed 64-bit signed integer in little endian.

### bio-write-float
::: tip usage
```
(bio-write-float float buf)
  float := flonum
  buf   := bio output buffer
```
:::

Writes a number in 32-bit floating point representation.

### bio-read-float
::: tip usage
```
(bio-read-float buf)
  buf := bio input buffer
=> flonum
```
:::

Reads a number in 32-bit floating point representation.

### bio-write-double
::: tip usage
```
(bio-write-double float buf)
  float := flonum
  buf   := bio output buffer
```
:::

Writes a number in 32-bit floating point representation.

### bio-read-double
::: tip usage
```
(bio-read-double buf)
  buf := bio input buffer
=> flonum
```
:::

Reads a number in 32-bit floating point representation.

### bio-write-boolean
::: tip usage
```
(bio-write-boolean bool buf)
  bool := boolean
  buf  := bio output buffer
```
:::

Writes a boolean value as a the varint 0 or 1.

### bio-read-boolean
::: tip usage
```
(bio-read-boolean buf)
  buf := bio input buffer
=> boolean
```
:::

Reads a boolean value as the varint 0 or 1.

### bio-write-packed
::: tip usage
```
(bio-write-packed lst bio-write-e buf)
  lst         := list
  bio-write-e := procedure; serializer
  buf         := bio output buffer
```
:::

Writes a list in packed encoding.

### bio-read-packed
::: tip usage
```
(bio-read-packed bio-read-e buf)
  bio-read-e := procedure
  buf        := bio input buffer
=> list
```
:::

Reads a list in packed encoding.

### bio-write-field
::: tip usage
```
(bio-write-field field tag buf)
  field := fixnum; field number
  tag   := symbol; VARINT, VARLEN, FIXED32, or FIXED64
  buf   := bio output buffer

```
:::

Writes a field tag.

### bio-read-field
::: tip usage
```
(bio-read-field buf)
  buf := bio input buffer
=> (values tag field)
```
:::

Reads a field tag.

### bio-write-key-value-pair
::: tip usage
```
(bio-write-key-value-pair k v ktag bio-write-key-e vtag bio-write-value-e buf)
```
:::

Writes a key-value pair.

### bio-read-key-value-pair
::: tip usage
```
(bio-read-key-value-pair bio-read-key-e bio-read-value-e buf)
=> pair
```
:::

Reads a key-value pair

### bio-input-skip-unknown
::: tip usage
```
(bio-input-skip-unknown tag buf)
```
:::

Skips input bytes as specified by the tag.

### bio-input-skip-varint
::: tip usage
```
(bio-input-skip-varint buf)
```
:::

Skips a varint.
