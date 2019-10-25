# XML

The module provides XML parsing and generation procedures. It also has optional
dependency on LibXML for XML/HTML parsing. See details below.

::: tip To use the bindings from this module:
``` scheme
(import :std/xml)
```
:::

## Overview

This module adds utilities to work with XML. Gerbil Scheme uses SXML
to represent the XML data. This module is mostly ported from Oleg's XML package.
See more detailed info about SXML can be found at [http://okmij.org/ftp/Scheme/xml.html].

Compiling Gerbil with [LibXML](http://www.xmlsoft.org/) provides C-based XML
parser procedures *parse-xml* and *parse-html* including their options.

## Parsing

### read-xml
``` scheme
(read-xml source [namespaces: ()]) -> sxml | error

  source     := port | string | u8vector
  namespaces := alist or hash-table mapping urls to namespace prefixes
```

Reads and parses XML from *source* and returns SXML result. *namespaces* is
optional alist or a hash table of mapping uri (string) -> namespace (string)
same interface as ```parse-xml``` so that implementations can be swapped.  Signals an
error on invalid *source* value.

::: tip Examples
``` scheme
> (import :std/xml)
> (read-xml "<foo><element id=\"1\">foobar</element><element id=\"2\">barbaz</element></foo>")
(*TOP* (foo (element (@ (id "1")) "foobar") (element (@ (id "2")) "barbaz")))
```
:::

### parse-xml [libxml]
``` scheme
(parse-xml source [url: "none.xml"] [encoding: (encoding "UTF-8")] [options: (options parse-xml-default-options)] [namespaces: (ns [])]) -> sxml | error

  source     := string | u8vector | port
  url        := string for base URL
  encoding   := string | #f; strings are always UTF-8 encoded for parsing.
  options    := fixnum (ior of libxml parser options)
  namespaces := alist or hash-table mapping urls to namespace prefixes
```

 Parses XML data from *source* into SXML + CDATA unless collapsed with XML_PARSE_NOCDATA.

 namespace's document defined prefixes are ignored; the *url* is used as the
 canonical prefix if it is not in the *namespaces* mapping. Signals an error on
 invalid *source*.

 *options* is fixnum denoting XML parsing options. Available options are:
::: tip Options values
```
XML_PARSE_RECOVER
XML_PARSE_NOENT
XML_PARSE_DTDLOAD
XML_PARSE_DTDATTR
XML_PARSE_DTDVALID
XML_PARSE_NOERROR
XML_PARSE_NOWARNING
XML_PARSE_PEDANTIC
XML_PARSE_NOBLANKS
XML_PARSE_XINCLUDE
XML_PARSE_NONET
XML_PARSE_NODICT
XML_PARSE_NSCLEAN
XML_PARSE_NOCDATA
XML_PARSE_NOXINCNODE
XML_PARSE_COMPACT
XML_PARSE_HUGE
```
:::

Details of above flags can be found at LibXML [reference documentation](http://www.xmlsoft.org/html/libxml-parser.html#xmlParserOption).

There's also default options set as *parse-xml-default-options* variable which currently is set
to:
``` scheme
(fxior XML_PARSE_NOENT
       XML_PARSE_NONET
       XML_PARSE_NOBLANKS)
```

::: tip Examples
``` scheme
> (import :std/net/request)
> (import :std/xml)
> (parse-xml (request-text (http-get "https://www.w3schools.com/xml/note.xml")))
(*TOP* (note (to "Tove") (from "Jani") (heading "Reminder") (body "Don't forget me this weekend!")))
```
:::

### parse-html [libxml]
``` scheme
(parse-html source [url: "none.xml"] [encoding: (encoding "UTF-8")] [options: (options parse-xml-default-options)] [filter: (filter-els [])]) -> sxml | error

  source   := string | u8vector | port
  url      := string for base URL
  encoding := string | #f; strings are always UTF-8 encoded for parsing.
  options  := fixnum (ior of libxml parser options)
  filter   := list of strings
```

Parses HTML data from given *source* into SXML + CDATA.
*source*, *encoding*, *url*, *options* as above
*filter*: list of strings, elements to be removed from the tree
Signals an error on invalid *source*.

Available *options* values are:
::: tip Options values
```
HTML_PARSE_RECOVER
HTML_PARSE_NODEFDTD
HTML_PARSE_NOERROR
HTML_PARSE_NOWARNING
HTML_PARSE_PEDANTIC
HTML_PARSE_NOBLANKS
HTML_PARSE_NONET
HTML_PARSE_NOIMPLIED
HTML_PARSE_COMPACT
HTML_PARSE_IGNORE_ENC
```
:::

Details of above flags can be found at LibXML [reference documentation](http://www.xmlsoft.org/html/libxml-HTMLparser.html#htmlParserOption).

There's also default options set as *parse-html-default-options* variable which currently is set
to:
``` scheme
(fxior HTML_PARSE_RECOVER
       HTML_PARSE_NOERROR
       HTML_PARSE_NOWARNING
       HTML_PARSE_NONET
       HTML_PARSE_NOBLANKS)
```

## SXML Queries

### sxpath
``` scheme
(sxpath path) -> sxml

  path := list
```

 Evaluate an abbreviated SXPath
```
	sxpath:: AbbrPath -> Converter, or
	sxpath:: AbbrPath -> Node|Nodeset -> Nodeset
```

 AbbrPath is a list. It is translated to the full SXPath according
 to the following rewriting rules:
``` scheme
 (sxpath '()) -> (node-join)
 (sxpath '(path-component ...)) ->
		(node-join (sxpath1 path-component) (sxpath '(...)))
 (sxpath1 '//) -> (node-or
		     (node-self (node-typeof? '*any*))
		      (node-closure (node-typeof? '*any*)))
 (sxpath1 '(equal? x)) -> (select-kids (node-equal? x))
 (sxpath1 '(eq? x))    -> (select-kids (node-eq? x))
 (sxpath1 ?symbol)     -> (select-kids (node-typeof? ?symbol)
 (sxpath1 procedure)   -> procedure
 (sxpath1 '(?symbol ...)) -> (sxpath1 '((?symbol) ...))
 (sxpath1 '(path reducer ...)) ->
		(node-reduce (sxpath path) (sxpathr reducer) ...)
 (sxpathr number)      -> (node-pos number)
 (sxpathr path-filter) -> (filter (sxpath path-filter))
```


### sxml-select
``` scheme
(sxml-select n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Collects all children from node *n* that satisfy a predicate *predf*; optionally
transforms result with mapping function *mapf* once a node satisfies a
predicate, its children are not traversed.

### sxml-attributes
``` scheme
(sxml-attributes n) -> list | #f

  n := sxml node
```

Returns the attributes of given node *n* or #f if node does have any attributes.

### sxml-e
``` scheme
(sxml-e n) -> symbol | #f

  n := sxml node
```

Returns the element type of node *n* or #f if no type is found.

### sxml-find
``` scheme
(sxml-find n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Find the first child that satisfies a predicate *predf*, using depth-first search.
Predicate *predf* is a lambda which takes an node as parameter and returns an
boolean.
If optional *mapf* is given the results satisfying *predf* are transformed with
it.

### sxml-select*
``` scheme
(sxml-select* n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Select from immediate children of node *n* using predicate function
*predf*. Results satisfying *predf* are transformed if given optional mapping
function *mapf*.

### sxml-attribute-e
``` scheme
(sxml-attribute-e n key) -> any | #f

  n   := sxml node
  key := string; node key
```

Returns the node *n* attribute value for given *key* or #f if value is not found.

### sxml-attribute-getq
``` scheme
(sxml-attribute-getq key attrs) -> any

  key   := string; node key
  attrs := alist?
```

attribute list => value

### sxml-class?
``` scheme
(sxml-class? klass) -> lambda

  klass := string; node class to match
```

returns dom class

### sxml-find*
``` scheme
(sxml-find* n pred [mapf = values]) -> sxml | #f

  n    := sxml node
  pred := predicate fn
  mapf := transform fn
```

find in immediate children

### sxml-e?
``` scheme
(sxml-e? el) -> lambda

  el := sxml element
```

returns element type

### sxml-id?
``` scheme
(sxml-id? id) -> lambda

  id := sxml node id value
```

returns dom id

### sxml-children
``` scheme
(sxml-children n) -> list

  n := sxml node
```

returns nodes children as a list

### sxml-find/context
``` scheme
(sxml-find/context n predf [mapf values]) -> sxml

  n     := sxml node
  predf := predicate fn to match
  mapf  := transform fn to apply to matches
```

find with context

## Printing


### write-xml
``` scheme
(write-xml sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Writes given *sxml* data as XML into output *port*. Signals an error on invalid *port*.

### write-html
``` scheme
(write-html sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Writes given *sxml* data as HTML to output *port*. Signals an error on invalid *port*.

### print-sxml-&gt;html
``` scheme
(print-sxml->html sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```
Write given *sxml* into *port* after converting it to HTML. Indents the result
to multiple lines.

### print-sxml-&gt;html*
``` scheme
(print-sxml->html* sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```
Same as ```print-sxml->html``` but skips formatting the result.

### print-sxml-&gt;html-fast
``` scheme
(print-sxml->html-fast sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Same as ```print-sxml->html``` but skips formatting the result.

### print-sxml-&gt;xhtml
``` scheme
(print-sxml->xhtml sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Write given *sxml* into *port* after converting it to XHTML. Indents the result
to multiple lines.

### print-sxml-&gt;xhtml*
``` scheme
(print-sxml->xhtml* sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Same as ```print-sxml->xhtml``` but skips formatting the result.

### print-sxml-&gt;xhtml-fast
``` scheme
(print-sxml->xhtml-fast sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Same as ```print-sxml->xhtml``` but skips formatting the result.

### print-sxml-&gt;xml
``` scheme
(print-sxml->xml sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Write given *sxml* into *port* after converting it to XML. Indents the result
to multiple lines.

### print-sxml-&gt;xml*
``` scheme
(print-sxml->xml* sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Same as ```print-sxml->xml``` but skips formatting the result.

### print-sxml-&gt;xml-fast
``` scheme
(print-sxml->xml-fast sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```

Same as ```print-sxml->xml``` but skips formatting the result.

### pretty-print-sxml-&gt;xml-file
``` scheme
(pretty-print-sxml->xml-file item outpath [noblanks]) -> void

  sxml := SXML nodes
  port := output port
```
Serializes SXML data from *sxml* into XML and writes the result to a *port*.

This depends on external ```xmllint``` program being in PATH.

### pretty-print-sxml-&gt;xhtml-file
``` scheme
(pretty-print-sxml->xhtml-file sxml [port = (current-output-port)]) -> void

  sxml := SXML nodes
  port := output port
```
Serializes SXML data from *sxml* into XHTML and writes the result to a *port*.

This depends on external ```xmllint``` program being in PATH.


### sxml-&gt;html-string-fragment
``` scheme
(sxml->html-string-fragment item [maybe-level] [quote-char = #\"]) -> string

  item        := SXML nodes
  maybe-level := #f | fixnum; how much to indent the result or skip indent if #f
  quote-char  := quote character to use
```

Serializes the given SXML nodes in *item* into HTML string and returns it as a
string. If *maybe-level* is given the result is indented.

### sxml-&gt;xhtml-string
``` scheme
(sxml->xhtml-string item [maybe-level] [quote-char = #\"]) -> string

  item        := SXML nodes
  maybe-level := #f | fixnum; how much to indent the result or skip indent if #f
  quote-char  := quote character to use
```
