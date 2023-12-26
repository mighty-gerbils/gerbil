# HTML Parser and Printer

HTML is a widely used Markup Language that, while very similar to [XML](./xml.md), differs enough to have its own specific libraries.

*Usage*

```scheme
(import :std/html)
```

This is for parsing and printing HTML. For HTML usage and templates for web development have a look at [The Template Attribute Language (TAL)](tal/README.md).

```scheme
(import ./html/parser)
(export (import: ./html/parser))
;;; This library is tangled from html/README.org
```


# Reading

`html-parser` is intended as a permissive HTML parser for people who prefer the scalable interface described in Oleg Kiselyov's SSAX parser, as well as providing simple convenience utilities. It correctly handles all invalid HTML, inserting "virtual" starting and closing tags as needed to maintain the proper tree structure needed for the foldts down/up logic. A major goal of this parser is bug-for-bug compatibility with the way common web browsers parse HTML.


## html->sxml

```scheme
(html->sxml
 port-or-string
 start: /default/ end: /default/ text: /default/ comment: /default/
 decl: /default/ process: /default/ entity: #f entities: *default-entities*
 tag-levels: *tag-levels* unnestables: *unnestables* bodyless: *bodyless*
 literals: *literals*
 terminators: *terminators*) 

```

Returns the SXML representation of the document from `port-or-string`, using the default parsing options.


## default-html->sxml-plist

This is where the default parsing options come from.

```scheme
(def default-html->sxml-plist
  [start: (lambda (tag attrs seed virtual?) '())
   end:   (lambda (tag attrs parent-seed seed virtual?)
            `((,tag ,@(if (pair? attrs)
                        `((@ ,@attrs) ,@(reverse seed))
                        (reverse seed)))
              ,@parent-seed))
   decl:    (lambda (tag attrs seed) `((*DECL* ,tag ,@attrs) ,@seed))
   process: (lambda (attrs seed) `((*PI* ,@attrs) ,@seed))
   comment: (lambda (text seed) `((*COMMENT* ,text) ,@seed))
   text:    (lambda (text seed) (cons text seed))])
```


## html-strip

```scheme
(html-strip port-or-string)
```

Returns a string representation of the document from PORT with all tags removed. No whitespace reduction or other rendering is done.

```scheme
> (html-strip "<h1>This is a title.</h1>\n\n<p>This is the summary of things</p>")
"This is a title.\n\nThis is the summary of things"
```


## make-html-parser

```scheme
(make-html-parser start: #f end: #f text: #f
                  comment: #f decl: #f process: #f
                  entity: #f entities: *default-entities*
                  tag-levels: *tag-levels*
                  unnestables: *unnestables*
                  bodyless: *bodyless*
                  literals: *literals*
                  terminators: *terminators*)
```

Returns a procedure of two arguments, an initial seed and an optional input port, which parses the HTML document from the port with the callbacks specified by a keyword.

The following callbacks are recognized:

```
start: tag attrs seed virtual?
    fdown in foldts, called when a start-tag is encountered.
  tag :=         tag name
  attrs :=       tag attributes as a alist
  seed :=        current seed value
  virtual? =:    #t if this start tag was inserted to fix the HTML tree
```

```
end: tag attrs parent-seed seed virtual?
    fup in foldts, called when an end-tag is encountered.
  tag :=         tag name
  attrs :=       tag attributes of the corresponding start tag
  parent -=SEED: parent seed value (i.e. seed passed to the start tag)
  seed :=        current seed value
  virtual? =:    #t if this end tag was inserted to fix the HTML tree
```

```
text: text seed
    fhere in foldts, called when any text is encountered.  May be
    called multiple times between a start and end tag, so you need
    to string-append yourself if desired.
  text :=        entity-decoded text
  seed :=        current seed value
```

```
comment: text seed
    fhere on comment data
```

```
decl: name attrs seed
    fhere on declaration data
    
process: list seed
    fhere on process-instruction data
```

In addition, entity-mappings may be overriden with the `entities:` keyword.


# Writing


## sxml->html

```scheme
(sxml->html sxml (port #f))
```

Convert the HTML representation of `sxml` to a string which it outputs to the passed port.

If the port is `#f`, or not provided, return a string.


## html-escape

```scheme
(html-escape str (port #f) escapes: (esc #f))
```

Returns or writes an HTML escaped string to the port by default replacing the characters `<>&"'` with the appropriate HTML entities.

If the port is `#f`, or not provided, return a string.

If other escapes are wanted a list can be passed with the `escapes:` keyword. If false the defaults are in [html-character-escapes](#html-character-escapes).

```scheme
> html-character-escapes
((#\< . "&lt;")
 (#\> . "&gt;")
 (#\& . "&amp;")
 (#\" . "&quot;")
 (#\' . "&#39;"))
> (html-escape "< ' >")
"&lt; &#39; &gt;"
> (html-escape "< ' >" escapes: '((#\< . "Less Than")))
"Less Than ' >"
```


<a id="html-character-escapes"></a>

## html-character-escapes

These are the characters that are escaped when writing HTML.

```scheme
> html-character-escapes
((#\< . "&lt;")
 (#\> . "&gt;")
 (#\& . "&amp;")
 (#\" . "&quot;")
 (#\' . "&#39;")
```
