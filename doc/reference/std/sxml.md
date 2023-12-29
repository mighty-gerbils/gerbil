# SXML: S-expression eXtensible Markup Language

This module adds utilities to work with XML and HTML. It has been inspired by Oleg's SXML package. See more detailed info about SXML can be found [here](http://okmij.org/ftp/Scheme/xml.html).

::: tip To use the bindings from this module:

```scheme
(import :std/sxml)
```


## Concepts

"SXML is an abstract syntax tree of an XML document. SXML is also a concrete representation of the XML Infoset in the form of S-expressions."

When developing in Gerbil we generally use sexps. XML and HTML are not quite sexps.

For parsing and printing have a look at [XML docs](./xml.md) or the [HTML docs](./html.md) depending on your needs.

There's a lot more detail in the [SMXL Specification](https://okmij.org/ftp/Scheme/SXML.html) so for basics a simple `<select>` tag.

```scheme
> (import :std/html)
> (begin (print-sxml->html '(select (@ (name "Examiner"))
  (option (@ (value "1")) "Mr. Scruff") 
  (option (@ (value "2")) "Beetlejuice")))
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

If you notice, the `print-sxml->html` function indents the html in a whitespace sensitive way to ensure there are no extra characters in the actual output.


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
