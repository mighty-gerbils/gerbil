# SXML: S-expression eXtensible Markup Language

This module adds utilities to work with XML and HTML. It has been inspired by Oleg's SXML package. See more detailed info about SXML can be found [here](http://okmij.org/ftp/Scheme/xml.html).

::: tip To use the bindings from this module:

```scheme
(import :std/markup/sxml)
```

:::


## Concepts

"SXML is an abstract syntax tree of an XML document. SXML is also a concrete representation of the XML Infoset in the form of S-expressions."

When developing in Gerbil we generally use sexps. XML and HTML are not quite sexps.

For parsing and printing have a look at [XML](xml.md) or the [HTML docs](./html.md) depending on your needs.

There's a lot more detail in the [SMXL Specification](https://okmij.org/ftp/Scheme/SXML.html) so for basics a simple `<select>` tag.

```scheme
> (import :std/markup/sxml)
> (begin (write-sxml '(select (@ (name "Examiner"))
  (option (@ (value "1")) "Mr. Scruff") 
  (option (@ (value "2")) "Beetlejuice"))
                   indent: #t)
  (newline))
<select name="Examiner"
 ><option value="1"
  >Mr. Scruff</option
 ><option value="2"
  >Beetlejuice</option
 ></select
>
```

If the second item is a list that starts with an `@` symbol, `(@ ...}` marks the start of the attributes alist.

Otherwise it's an element or a block of text. Simple!

If you notice, the `write-sxml` function indents the html in a whitespace sensitive way to ensure there are no extra characters in the actual output.


## Printer

All of HTML, XML and XHTML are printed from the same function.


### write-sxml

```scheme
(def (write-sxml
     sxml
     port: (port (current-sxml-output-port))
     xml?: (xml? (current-sxml-output-xml?))
     indent: (indent #f)
     quote-char: (quote-char #\")) ...)

sxml   := An sxml element, a list of elements, or text.
port   := A keyword for binding the output port
xml?   := A keyword for boolean choosing XML or HTML. Defaults to #f
indent := A keyword where #f means no indentation and a number means indent (aka
          pretty print) the output hiegenically staring at this level.
quote-char := A keyword that chooses the quote character, either #\"
              or #\', for attributess.
```

This is a generic abstract markup printer. The `:std/xml` and `:std/html` printers are based off of this one for more specific usage.

```scheme
> (write-sxml '(*TOP*
              (div
               (p "I'm paragraph one")
               (p "I'm paragraph two"))))
<div><p>I'm paragraph one</p><p>I'm paragraph two</p></div>
```

By default the `(current-sxml-output-port)` is set to `(current-output-port)`. It may not be what is expected and is really just for REPL use so set the port or parameterize `(current-sxml-output-port)` for best results.

The XML/HTML can be indented. It does so inside the tags so as not to pollute or change semantics.

```scheme
> (write-sxml '(*TOP*
              (div
               (p "I'm paragraph one")
               (p "I'm paragraph two"))) indent: 1)
<div
  ><p
   >I'm paragraph one</p
  ><p
   >I'm paragraph two</p
  ></div
  > 
```

For HTML, the default, empty tags with no close are allowed.

```scheme
> (write-sxml'(*TOP*
               (area)
               (base)
               (br)
               (col)
               (embed)
               (hr)
               (img)
               (input)
               (link)
               (meta)
               (track)
               (wbr)))

<area><base><br><col><embed><hr><img><input><link><meta><track><wbr>
```

When set to `xml?` things are different.

```scheme
> (write-sxml'(*TOP*
               (area)
               (base)
               (br)
               (col)
               (embed)
               (hr)
               (img)
               (input)
               (link)
               (meta)
               (track)
               (wbr)) xml?: #t)

<area /><base /><br /><col /><embed /><hr /><img /><input /><link /><meta /><track /><wbr />
```


## SXML Queries


### sxpath

```scheme
(sxpath path) -> sxml

  path := list
```

Evaluate an abbreviated SXPath

```
sxpath:: AbbrPath -> Converter, or
sxpath:: AbbrPath -> Node|Nodeset -> Nodeset
```

AbbrPath is a list. It is translated to the full SXPath according to the following rewriting rules:

```scheme
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

```scheme
(sxml-select n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Collects all children from node *n* that satisfy a predicate *predf*; optionally transforms result with mapping function *mapf* once a node satisfies a predicate, its children are not traversed.


### sxml-attributes

```scheme
(sxml-attributes n) -> list | #f

  n := sxml node
```

Returns the attributes of given node *n* or #f if node does have any attributes.


### sxml-e

```scheme
(sxml-e n) -> symbol | #f

  n := sxml node
```

Returns the element type of node *n* or #f if no type is found.


### sxml-find

```scheme
(sxml-find n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Find the first child that satisfies a predicate *predf*, using depth-first search. Predicate *predf* is a lambda which takes an node as parameter and returns an boolean. If optional *mapf* is given the results satisfying *predf* are transformed with it.


### sxml-select\*

```scheme
(sxml-select* n predf [mapf = values]) -> sxml

  n     := sxml nodes
  predf := predicate function
  mapf  := transform function
```

Select from immediate children of node *n* using predicate function *predf*. Results satisfying *predf* are transformed if given optional mapping function *mapf*.


### sxml-attribute-e

```scheme
(sxml-attribute-e n key) -> any | #f

  n   := sxml node
  key := string; node key
```

Returns the node *n* attribute value for given *key* or #f if value is not found.


### sxml-attribute-getq

```scheme
(sxml-attribute-getq key attrs) -> any

  key   := string; node key
  attrs := alist?
```

attribute list => value


### sxml-class?

```scheme
(sxml-class? klass) -> lambda

  klass := string; node class to match
```

returns dom class


### sxml-find\*

```scheme
(sxml-find* n pred [mapf = values]) -> sxml | #f

  n    := sxml node
  pred := predicate fn
  mapf := transform fn
```

find in immediate children


### sxml-e?

```scheme
(sxml-e? el) -> lambda

  el := sxml element
```

returns element type


### sxml-id?

```scheme
(sxml-id? id) -> lambda

  id := sxml node id value
```

returns dom id


### sxml-children

```scheme
(sxml-children n) -> list

  n := sxml node
```

returns nodes children as a list


### sxml-find/context

```scheme
(sxml-find/context n predf [mapf values]) -> sxml

  n     := sxml node
  predf := predicate fn to match
  mapf  := transform fn to apply to matches
```

find with context