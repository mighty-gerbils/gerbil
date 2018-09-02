## XML

::: tip usage
(import :std/xml)
:::

XML processing package; requires libxml2.

```
(import :std/xml)

;; exports:

;; :std/xml/libxml
  parse-xml parse-html
  parse-xml-default-options parse-html-default-options
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

;; :std/xml/sxml
  sxml-e
  sxml-attributes sxml-attribute-e attribute-e
  sxml-children
  sxml-select sxml-select/context sxml-select*
  sxml-find sxml-find/context sxml-find*
  sxml-e? sxml-id? sxml-class?

;; :std/xml/print
  print-sxml->html
  print-sxml->html*
  print-sxml->html-fast
  print-sxml->xhtml
  print-sxml->xhtml*
  print-sxml->xhtml-fast
  print-sxml->xml
  print-sxml->xml*
  print-sxml->xml-fast
  pretty-print-sxml->xml-file
  pretty-print-sxml->xhtml-file
  sxml->html-string-fragment
  sxml->xhtml-string
```
