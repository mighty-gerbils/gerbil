# XML: eXtensible Markup Language

The module provides XML parsing and printing procedures. It also exports the [SXML](README.md) procedures.

::: tip To use the bindings from this module:

```scheme
(import :std/markup/xml)
```

:::


## Parsing


### read-xml

```scheme
(read-xml source [namespaces: ()]) -> sxml | error

  source     := port | string | u8vector
  namespaces := alist or hash-table mapping urls to namespace prefixes
```

Reads and parses XML from *source* and returns SXML result. *namespaces* is optional alist or a hash table of mapping uri (string) -> namespace (string) same interface as `parse-xml` so that implementations can be swapped. Signals an error on invalid *source* value.

::: tip Examples

```scheme
> (import :std/markup/xml)
> (read-xml "<foo><element id=\"1\">foobar</element><element id=\"2\">barbaz</element></foo>")
(*TOP* (foo (element (@ (id "1")) "foobar") (element (@ (id "2")) "barbaz")))
```

:::


## Printing


### write-xml

```scheme
(write-xml sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Writes given *sxml* data as XML into output *port*. Signals an error on invalid *port*.


### print-sxml->xml

```scheme
(print-sxml->xml sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Write given *sxml* into *port* after converting it to XML. Indents the result to multiple lines.