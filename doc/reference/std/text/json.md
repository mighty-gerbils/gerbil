# JSON
::: tip To use the bindings from this module:
``` scheme
(import :std/text/json)
```
:::

## read-json
``` scheme
(read-json [input = (current-input-port)]) -> json | error

  input := input source to read JSON data
```

Returns JSON object from given input source. Signals an error if fails to parse JSON

The input source can be:
- An input port.
- A BufferedStringReader.
- A BufferedReader.

## write-json
``` scheme
(write-json obj [sink = (current-output-port)]) -> void | error

  obj  := JSON object
  sink := output sink to write JSON data
```

Writes JSON object *obj* optionally given *port*. Defaults to using
current-output-port. Signals an error on failed write.

The output sink can be:
- An output port.
- A BufferedStringWriter.
- A BufferedWriter.
- A StringWriter.
- A Writer.

## string->json-object
``` scheme
(string->json-object str) -> json | error

  str := a string of JSON data
```

Parses given *str* and returns JSON object or signals an error if it fails to parse.

## json-object->string
``` scheme
(json-object->string obj) -> string | error

  obj := JSON object
```

Returns a newly allocated string with JSON object as a string. Signals an error if
fails to print JSON.

## bytes->json-object
``` scheme
(bytes->json-object str) -> json | error

  bytes := u8vector encoding a UTF-8 string of JSON data
```

Parses given *bytes* and returns JSON object or signals an error if it fails to parse.

## json-object->bytes
``` scheme
(json-object->bytes obj) -> u8vector | error

  obj := JSON object
```

Returns a newly allocated u8vector with JSON object as bytes.
Signals an error if it fails to print JSON.

## port->json-object
``` scheme
(port->json-object port) -> json | error

  port := input port
```

Parses data on given *port* and returns JSON object or signals an error if it fails to parse.

## json-symbolic-keys
``` scheme
json-symbolic-keys
```

Boolean parameter to control should decoded hashes have symbols as keys? Defaults to `#t`.
`#f` means that keys will be strings.

::: tip Examples
``` scheme
> (hash->list (string->json-object "{\"a\":1}"))
((a . 1))

> (parameterize ((json-symbolic-keys #f))
    (hash->list (string->json-object "{\"a\":1}")))
(("a" . 1))
```

## json-list-wrapper
``` scheme
json-list-wrapper
```

Parameter to control how JSON lists should be transformed.
Defaults to `identity`, which means keep them as lists.
If bound to `list->vector` then JSON lists will be parsed as vectors.

::: tip Examples
``` scheme
> (string->json-object "[\"a\",1]")
("a" 1)

> (parameterize ((json-list-wrapper list->vector))
    (string->json-object "[\"a\",1]"))
#("a" 1)
```

## json-sort-keys
``` scheme
json-object-keys
```

This is a parameter that can be used to control how JSON objects should be encoded.
If true (the default), keys in JSON objects represented by hash-tables will be sorted
before they are printed.

::: tip Examples
``` scheme
> (parameterize ((json-object-walist? #f))
    (hash->list (string->json-object "{\"a\",1}")))
(("a" . 1))

> (parameterize ((json-object-walist? #t))
    (string->json-object "{\"a\",1}"))
(("a" . 1))
```

## json-object-walist?
``` scheme
json-object-walist?
```

Parameter to control how JSON objects should be decoded.
If false (the default), JSON objects will be hash-tables.
If true, JSON objects will be walist (or walistq depending on json-symbolic-keys).

::: tip Examples
``` scheme
> (parameterize ((json-object-walist? #f))
    (hash->list (string->json-object "{\"a\",1}")))
(("a" . 1))

> (parameterize ((json-object-walist? #t))
    (string->json-object "{\"a\",1}"))
(("a" . 1))
```

## trivial-class->json-object
``` scheme
(trivial-class->json-object object) -> json | error

  object := an object
```

Extracts a printable JSON object from the slots of an `object`,
or signals an error if it fails.

## json-object->trivial-class
``` scheme
(json-object->trivial-class class-descriptor json) -> object | error

  class-descriptor := class-descriptor
  json := hash-table
```

Creates an object of the class corresponding to the `class-descriptor`
by extracting its slots from a `json` hash-table.

## JSON
``` scheme
JSON -> class
JSON::t -> class-descriptor
```
A class for object that can be printed as JSON.
The default `:json` method is `trivial-class->json-object`.

## pretty-json
```scheme
(pretty-json object [output]
   [indent: 2] [sort-keys?: (json-sort-keys)] [lisp-style?: #f])
```
A function that pretty-prints a JSON `object` to the specified `output`
as per [with-output](../misc/ports.md#with-output)
(defaults to `#f`, i.e. print to string).
The `indent` keyword specifies how much to increase indentation at each level of nesting
(must be a positive integer, defaults to 2).
The `sort-keys?` keyword offers a shortcut to parameterizing `json-sort-keys`.
The `lisp-style?` keyword if true specifies a format that follows Lisp style,
and saves number of lines by starting objects and lists on the same line as the
square or curly bracket, and closing it on the same line as the last entry,
as opposed to regular style that uses newlines copiously.

(Since Gerbil v0.18.2, this function no longer invokes `jq -M .` as an external program.)
