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
  final: #t constructor: :init!)

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
  final: #t constructor: :init!)

(defmethod {:init! Request}
  (lambda (self type: type foo: (foo #f) bar: (bar #f))
    ...))
...
```

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

Marshals an object to its binary representatio, using `bio-write-e` as
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

Write sthe varint-delimited binary representation of an object to a bio
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
(bio-write-delimited-string ...)
```
:::

Please document me!

### bio-read-delimited-string
::: tip usage
```
(bio-read-delimited-string ...)
```
:::

Please document me!

### bio-write-delimited-bytes
::: tip usage
```
(bio-write-delimited-bytes ...)
```
:::

Please document me!

### bio-read-delimited-bytes
::: tip usage
```
(bio-read-delimited-bytes ...)
```
:::

Please document me!

### bio-write-varint
::: tip usage
```
(bio-write-varint ...)
```
:::

Please document me!

### bio-read-varint
::: tip usage
```
(bio-read-varint ...)
```
:::

Please document me!

### bio-write-varint-zigzag
::: tip usage
```
(bio-write-varint-zigzag ...)
```
:::

Please document me!

### bio-read-varint-zigzag
::: tip usage
```
(bio-read-varint-zigzag ...)
```
:::

Please document me!

### bio-write-uint32
::: tip usage
```
(bio-write-uint32 ...)
```
:::

Please document me!

### bio-read-uint32
::: tip usage
```
(bio-read-uint32 ...)
```
:::

Please document me!

### bio-write-sint32
::: tip usage
```
(bio-write-sint32 ...)
```
:::

Please document me!

### bio-read-sint32
::: tip usage
```
(bio-read-sint32 ...)
```
:::

Please document me!

### bio-write-uint64
::: tip usage
```
(bio-write-uint64 ...)
```
:::

Please document me!

### bio-read-uint64
::: tip usage
```
(bio-read-uint64 ...)
```
:::

Please document me!

### bio-write-sint64
::: tip usage
```
(bio-write-sint64 ...)
```
:::

Please document me!

### bio-read-sint64
::: tip usage
```
(bio-read-sint64 ...)
```
:::

Please document me!

### bio-write-float
::: tip usage
```
(bio-write-float ...)
```
:::

Please document me!

### bio-read-float
::: tip usage
```
(bio-read-float ...)
```
:::

Please document me!

### bio-write-double
::: tip usage
```
(bio-write-double ...)
```
:::

Please document me!

### bio-read-double
::: tip usage
```
(bio-read-double ...)
```
:::

Please document me!

### bio-write-boolean
::: tip usage
```
(bio-write-boolean ...)
```
:::

Please document me!

### bio-read-boolean
::: tip usage
```
(bio-read-boolean ...)
```
:::

Please document me!

### bio-write-packed
::: tip usage
```
(bio-write-packed ...)
```
:::

Please document me!

### bio-read-packed
::: tip usage
```
(bio-read-packed ...)
```
:::

Please document me!

### bio-write-field
::: tip usage
```
(bio-write-field ...)
```
:::

Please document me!

### bio-read-field
::: tip usage
```
(bio-read-field ...)
```
:::

Please document me!

### bio-write-key-value-pair
::: tip usage
```
(bio-write-key-value-pair ...)
```
:::

Please document me!

### bio-read-key-value-pair
::: tip usage
```
(bio-read-key-value-pair ...)
```
:::

Please document me!

### bio-input-skip-unknown
::: tip usage
```
(bio-input-skip-unknown ...)
```
:::

Please document me!

### bio-input-skip-varint
::: tip usage
```
(bio-input-skip-varint ...)
```
:::

Please document me!





## Implementation Notes

- Fields are serialized in declaration order.
- Unknown fields are ignored in deserialization.
- The parser does not accept empty statements from stray semicolons.
  That's more of a metalinguistic statement than a bug though, it would be easy to modify the
  parser to accept them.
- `service`, `extend`, and `option` declarations are parsed but ignored by the expander.
- `group` declarations are not accepted by the parser; I don't understand how groups work,
  as they are not really documented other than being deprecated.
