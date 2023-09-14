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
  - Defines serializers and deserializers to read/write the message as extension
    methods for the BufferedReader and BufferedWriter interface -- see the
    [Standard IO](stdio.md) package documentation.
- For each enum:
  - The values accepted for the enum are the symbolic constants defined in the
    enum declaration
  - Defines serializers and deserializers to read/write the enum as extension
    methods for the BufferedReader and BufferedWriter interface -- see the
    [Standard IO](stdio.md) package documentation.
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

(def (BufferedReader-read-Request.Foo buf)
   ...)
(def (BufferedReader-read-Request.Foo! obj buf)
  ...)
(def (BufferedWriter-write-Request.Foo buf obj)
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

The `:std/protobuf/io` library provides I/O procedures using the protobuf wire format.

Most of these procedures are low level procedures used by the protobuf
expansion, so we don't document them here.

We do document however the useful user procedures.

::: tip To use bindings from this module
```scheme
(import :std/protobuf/io)
```
:::

### marshal
```scheme
(marshal obj write-e)
  obj     := any; the object to marshal
  write-e := lambda (buf obj); serializer procedure
=> u8vector
```

Marshals an object to its binary representation, using `write-e` as
the serializer procedure.

### unmarshal
```scheme
(unmarshal bytes read-e)
  bytes  := u8vector; the binary object representation
  read-e := lambda (buf); deserializer procedure
```

Unmarshals an object from its binary representation, using `read-e` as
the deserializer procedure.
