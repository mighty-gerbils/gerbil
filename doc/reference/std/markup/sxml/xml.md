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
> (call-with-input-string "<b xmlns=\"FOO\" xmlns:bar=\"bAr\"> <baz/>  <bar:g/></b>" read-xml)
(*TOP* (FOO:b (FOO:baz) (bAr:g)))
```

:::


### Namespaces: `xmlns` and `SXML`

XML has namespaces. While they can be very useful the translation to s-expressions and back again needs some explaining.

For example when working with Excel Spreadsheets the `workbook.xml` has namespaces.

::: tip Pretend workbook

```scheme
(def pretend-workbook-text (symbol->string '|
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
 <workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"
           xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
           xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
           mc:Ignorable="x15 xr xr6 xr10 xr2">
   <fileVersion appName="xl" lastEdited="7" lowestEdited="6" rupBuild="27328"/>
   <workbookPr/>
   <mc:AlternateContent
       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006">
     <mc:Choice Requires="x15"/>
   </mc:AlternateContent>
 </workbook>|
))

(def pretend-workbook-sxml (read-xml pretend-workbook-text))
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
