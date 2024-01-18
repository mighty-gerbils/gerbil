# HTML: Hyper Text Markup Language Module

HTML is a widely used Markup Language that, while very similar to [XML](./xml.md), differs enough to have its own specific libraries.

::: tip To use the bindings from this module:

```scheme
(import :std/markup/html)
```

:::

If HTML templates for web development are up your alley have a look at our [Template Attribute Language (TAL)](tal/README.md) which uses this parser and printer.


## HTML Parser and Printer


### Element, aka Tag Types

"There are six different kinds of elements: void elements, the template element, raw text elements, escapable raw text elements, foreign elements, and normal elements."

While HTML and XML are friends there are some elements in HTML that cannot be expressed in XML. Knowing what/where they are is important for both parsing and printing.

1.  Void: `current-html-void-tags` and `html-void-tag?`

    > Void elements
    > 
    > area, base, br, col, embed, hr, img, input, link, meta, source, track, wbr
    > 
    > Void elements can't have any contents (since there's no end tag, no content can be put between the start tag and the end tag).
    > 
    > --<https://html.spec.whatwg.org/multipage/syntax.html#void-elements>
    
    The void tags are stored in a parameter `current-html-void-tags`. It has more than the spec says but there's more than one spec and version so we try to be complete,
    
    ```scheme
    > (current-html-void-tags)
    (area base br col command embed hr img input keygen
     link meta param source track wbr)
    ```
    
    There's an `html-void-tag?` procedure to test. It's case-insensitive as HTML is meant to be.
    
    ```scheme
     > (html-void-tag? 'InPut)
    (input keygen link meta param source track wbr)
    > (html-void-tag? 'InPuter)
    #f
    ```

2.  Raw Text: `current-html-raw-tags` and `html-raw-tag?`

    > Raw text elements script, style --<https://html.spec.whatwg.org/multipage/syntax.html#raw-text-elements>
    
    These are not escaped non-html contents.
    
    ```scheme
    > (current-html-raw-tags)
    (script style xmp)
    > (html-raw-tag? 'ScRipt)
    (script style xmp)
    > (html-raw-tag? 'html)
    #f
    ```


### Reading

`html-parser` is intended as a permissive HTML parser for people who prefer the scalable interface described in Oleg Kiselyov's SSAX parser, as well as providing simple convenience utilities. It correctly handles all invalid HTML, inserting "virtual" starting and closing tags as needed to maintain the proper tree structure. A major goal of this parser is bug-for-bug compatibility with the way common web browsers parse HTML.

1.  html->sxml

    ```scheme
    (def (html->sxml
          port-or-string
          start: (start (pgetq start: default-html->sxml-plist))
          end: (end (pgetq end: default-html->sxml-plist))
          decl: (decl (pgetq decl: default-html->sxml-plist))
          process: (process (pgetq process: default-html->sxml-plist))
          comment: (comment (pgetq comment: default-html->sxml-plist))
          text: (text (pgetq text: default-html->sxml-plist))
          bodyless: (bodyless (current-html-void-tags))
          literals: (literals (current-http-raw-tags)))
      ...)
    ```
    
    Returns the SXML representation of the document from `port-or-string`, using the default or provided parsing options.

2.  default-html->sxml-plist

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

3.  html-strip

    ```scheme
    (html-strip port-or-string)
    ```
    
    Returns a string representation of the document from PORT with all tags removed. No whitespace reduction or other rendering is done.
    
    ```scheme
    > (html-strip "<h1>This is a title.</h1>\n\n<p>This is the summary of things</p>")
    "This is a title.\n\nThis is the summary of things"
    ```

4.  make-html-parser

    ```scheme
    (make-html-parser start: #f end: #f text: #f
                      comment: #f decl: #f process: #f
                      entity: #f entities: *default-entities*
                      tag-levels: *tag-levels*
                      unnestables: *unnestables*
                      bodyless:  (current-html-void-tags)
                      literals:  (current-html-raw-tags)
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


## Writing


### sxml->html

```scheme
(sxml->html sxml (port #f))
```

Convert the HTML representation of `sxml` to a string which it outputs to the passed port.

If the port is `#f`, or not provided, return a string.


### html-escape

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

### html-character-escapes

These are the characters that are escaped when writing HTML.

```scheme
> html-character-escapes
((#\< . "&lt;")
 (#\> . "&gt;")
 (#\& . "&amp;")
 (#\" . "&quot;")
 (#\' . "&#39;")
```
