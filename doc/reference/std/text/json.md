# JSON
::: tip To use the bindings from this module:
```scheme
(import :std/text/json)
```
:::

## read-json
```scheme
(read-json [input = (current-input-port)]) -> json | error

  input := input source to read JSON data
```

Returns JSON object from given input source. Signals an error if fails to parse JSON

The input source can be:
- An input port.
- A BufferedStringReader.
- A BufferedReader.

## write-json
```scheme
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
```scheme
(string->json-object str) -> json | error

  str := a string of JSON data
```

Parses given *str* and returns JSON object or signals an error if it fails to parse.

## json-object->string
```scheme
(json-object->string obj) -> string | error

  obj := JSON object
```

Returns a newly allocated string with JSON object as a string. Signals an error if
fails to print JSON.

## bytes->json-object
```scheme
(bytes->json-object str) -> json | error

  bytes := u8vector encoding a UTF-8 string of JSON data
```

Parses given *bytes* and returns JSON object or signals an error if it fails to parse.

## json-object->bytes
```scheme
(json-object->bytes obj) -> u8vector | error

  obj := JSON object
```

Returns a newly allocated u8vector with JSON object as bytes.
Signals an error if it fails to print JSON.

## port->json-object
```scheme
(port->json-object port) -> json | error

  port := input port
```

Parses data on given *port* and returns JSON object or signals an error if it fails to parse.

## read-json-key-as-symbol?
```scheme
read-json-key-as-symbol?
```

Boolean parameter to control whether JSON “objects” be decoded
as using symbols rather than strings as keys?
`#f` the default means strings, `#t` means symbols.

NB: Before v0.18.2, this parameter used to be called `json-symbolic-keys` and default to `#t`.
The name is still available as an alias (sharing the default `#f`),
but may be removed as early as v0.19.

::: tip Examples
```scheme
> (hash->list (string->json-object "{\"a\":1}"))
(("a" . 1))

> (parameterize ((read-json-key-as-symbol? #t))
    (hash->list (string->json-object "{\"a\":1}")))
((a . 1))
```
:::

## json-object-walist?
```scheme
json-object-walist?
```

Parameter to control how JSON objects should be decoded.
If false (the default), JSON objects will be hash-tables.
If true, JSON objects will be `walistq`
(or `walist` if read-json-key-as-symbol? is false).

This allows you to preserve the order of keys from JSON text,
in cases where this order matters, e.g. for the sake of
pretty-printing JSON or reading pretty-printed JSON,
where the order will make the data more readable to humans.

NB: This parameter was introduced in Gerbil v0.18.2.

::: tip Examples
```scheme
> (parameterize ((json-object-walist? #f))
    (hash->list (string->json-object "{\"a\":1,\"b\":2}")))
((a . 1) (b . 2))

> (parameterize ((json-object-walist? #t))
    (walist->alist (string->json-object "{\"a\":1,\"b\":2}")))
((a . 1) (b . 2))
```
:::

## read-json-array-as-vector?
```scheme
read-json-array-as-vector?
```

Parameter to control how JSON “arrays” should be transformed.
Defaults to `#f`, which means keep them as lists.
Binding it to `#t` instead will mean read them as vectors.

NB: Since Gerbil v0.18.2, this parameter replaces with reduced but more
streamlined functionality the previous `json-list-wrapper` parameter.
That previous parameter isn’t used anymore, and may be removed as early as v0.19.

::: tip Examples
```scheme
> (string->json-object "[\"a\",1,[]]")
("a" 1 ())

> (parameterize ((read-json-array-as-vector? #t))
    (string->json-object "[\"a\",1]"))
#("a" 1 ())
```
:::

## write-json-sort-keys?
```scheme
write-json-sort-keys?
```

This is a parameter that can be used to control how JSON objects should be written.
If false (the default), keys in JSON objects represented by hash-tables will be written
in no particular predictable order, by iterating as fast as possible through the hash-table.
If true, keys in JSON objects represented by hash-tables will be written in asciibetical order.
In either case, JSON objects represented by walists will be written in the order specified
by the walist. You can sort the walist yourself according to the order that matters to you,
whether asciibetical or not.

NB: This parameter used to be called `json-sort-keys` and default to `#t` before Gerbil v0.18.2.
The name is still available as an alias (sharing the default `#f`),
but may be removed as early as v0.19.

::: tip Examples
```scheme
> (parameterize ((write-json-sort-keys? #t))
    (json-object->string (hash (foo 1) (bar 2) (baz 3))))
"{\"bar\":2,\"baz\":3,\"foo\":1}"
> (parameterize ((write-json-sort-keys? #f))
    (json-object->string (hash (foo 1) (bar 2) (baz 3))))
"{\"baz\":3,\"bar\":2,\"foo\":1}"
```
:::

## trivial-class->json-object
```scheme
(trivial-class->json-object object) -> json | error

  object := an object
```

Extracts a printable JSON object from the slots of an `object`,
or signals an error if it fails.

## json-object->trivial-class
```scheme
(json-object->trivial-class class-descriptor json) -> object | error

  class-descriptor := class-descriptor
  json := hash-table
```

Creates an object of the class corresponding to the `class-descriptor`
by extracting its slots from a `json` hash-table.

## JSON
```scheme
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
as per [open-buffered-string-writer](../stdio.md#open-buffered-reader)
(defaults to `#f`, i.e. print to string).
The `indent` keyword specifies how much to increase indentation at each level of nesting
(must be a positive integer, defaults to 2).
The `sort-keys?` keyword offers a shortcut to parameterizing `write-json-sort-keys?`
which is heeded just like by `write-json`.
The `lisp-style?` keyword if true specifies a format that follows Lisp style,
and saves number of lines by starting objects and lists on the same line as the
square or curly bracket, and closing it on the same line as the last entry,
as opposed to regular style that uses newlines copiously.

NB: Since Gerbil v0.18.2, this function no longer invokes `jq -M .` as an external program,
and no longer uses `with-output` but instead `open-buffered-string-writer`,
and has extra keyword arguments.
