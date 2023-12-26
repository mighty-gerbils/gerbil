# TAL: The Template Attribute Language (TAL)

> The Template Attribute Language (TAL) is a templating language used to generate dynamic HTML and XML pages. Its main goal is to simplify the collaboration between programmers and designers. This is achieved by embedding TAL statements inside valid HTML (or XML) tags which can then be worked on using common design tools.
> 
> &#x2013; <https://en.wikipedia.org/wiki/Template_Attribute_Language>

A `TAL Statement` is an attribute in an HTML tag that has a `tal:` prefix. For the most part the attribute value is **Gerbil** code.

To define a `TAL` procedure we take `HTML` code that may have Template Attributes and transform it into a compiled function


# Attributes

-   **define:** creates local variables, valid in the element bearing the attribute (including contained elements) or sets a "global".
-   **switch:** Set up a switch statement
-   **condition:** decides whether or not to render the tag (and all contained text)
-   **repeat:** creates a loop variable and repeats the tag iterating a sequence, e.g. for creating a selection list or a table
-   **case:** A case in a `tal:switch` statement
-   **content:** replaces the content of the tag
-   **replace:** replaces the tag (and therefore is not usable together with content or attributes)
-   **attributes:** replaces the given attributes (e. g. by using `tal:attributes="(name name) (id name)"` the name and id attributes of an input field could be set to the value of the variable "name")
-   **omit-tag:** allows to omit the start and end tag and only render the content if the given expression is true.
-   **on-error:** if an error occurs, this attribute works like the content tag.

If a tag has more than one TAL attribute they are evaluated in the above (fairly logical) order.


# define-TAL

*Syntax*

```scheme
(define-TAL (name args ...) /key/ string-or-filename)

   (name args ...) := a definition for a function name nd arguments
                      similar to `def`
   /key/   := Optional, default `string:`, can also be file:

   string-or-filename := A literal string if the key is string:
                         A filename relative to the source if key is file:
```

A function that outputs **HTML** makes up a portion of a web application. Using `define-TAL` makes it easy to use a block of **HTML/XHTML** as a function.

```scheme
(import :std/html/tal
        :std/format :std/text/utf8 :std/sugar)

(define-TAL (htmlist items)
  "<ul><li
    tal:repeat=\"(i items)\"
    tal:content=\"(format &quot; ~a) ~a &quot; (repeat/i.roman) i)\">
    List Item</li></ul>") 
```

That gives a function that prints the **HTML** to `(current-tal-output-port)`.

```scheme
> (htmlist ["These" "are" "list" "items"])
<ul><li> i) These </li><li> ii) are </li><li> iii) list </li><li> iv) items </li></ul>   
```

We can get rid of the nested quotes by using the `#<<` syntax and hide the `&quot;`'s with a quick definition.

```scheme
(def (fmt sym . args) (apply format (symbol->string sym) args))
(define-TAL (foo item) #<<EOF
<p tal:content="(fmt '| 'item:~a' | item)"</p>
EOF
)
> (foo 42)
<p> &#39;item:42&#39; </p>> 
```

Even better is the `file:` argument that pulls from a file.

The following is placed in `foo.html`

And the gerbil code is simple.

```html
<html>
 <head><title tal:content="as-is: title"><title></head>
  <body><p tal:replace="raw: (body)"></p></body>
</html>
```

```scheme
(define-TAL (foo.html title body) file: "foo.html")
(define-TAL (bar) "<hr>")
```

We can then use it creatively.

```scheme
> (foo.html "Title &lt;hr>" bar)
<html>
 <head><title>Title &lt;hr></title></head>
  <body><hr></body>
</html>
```

As you can see it enables a fairly easy interaction between **HTML** syntax and **Lisp**.


# current-tal-output-port

Output to where? The `current-tal-output-port` parameter of course!

Most of the time it will be over a socket but for testing purposes we'll tear it down to a string.

```scheme
(defrule (:> tal ...)
  (let ((u8v (call-with-output-u8vector
              #u8() (lambda (p) (parameterize ((current-tal-output-port p))
                             tal ...)))))
    (utf8->string u8v)))
```

Now we can see what it outputs and have a testable form as well.

```scheme
> (:> (foo.html "Inside :>" bar))
"<html>\n <head><title>Inside :></title></head>\n  <body><hr></body>\n</html>\n"
```

As well as have a more documentation friendly output.

```html
> (display #)
<html>
 <head><title>Inside :></title></head>
  <body><hr></body>
</html>
```


# tal:attributes: Replace element attributes

*Syntax*:

```bnf
argument             ::= attribute_statement [attribute_statement]*
attribute_statement  ::= ( attribute_name expression )
attribute_name       ::= Name
```

The `tal:attributes` statement is a way of setting the `attribute_name` to the value of `expression`.

```scheme
(define-TAL (lnk href text) #<<EOF
<a href="#"
   tal:attributes="(href href)"
   tal:content="text"> text </a>
EOF
)     
```

Works as expected

```scheme
> (:> (lnk "https://duckduckgo.com" "Search"))
"<a href=\"https://duckduckgo.com\">Search</a>
```

If the `expression` evaluates to `#f` the attribute is omitted.

```scheme
> (:> (lnk #f "No Anchor!"))
"<a>No Anchor!</a>"
```

If the `tal:attributes` statement is on an element with a `tal:repeat` statement, the replacement is made on each repetition of the element, and the replacement expression is evaluated fresh for each repetition.

```scheme
(define-TAL (sel items) #<<EOF
<select name="examiner" id="examinerSelect">
  <option tal:repeat="(i items)" tal:attributes="(value (car i))"
          tal:content="(cdr i)">
</select>
EOF
)
```

```scheme
> (:> (sel [[1 . "President"]
            [2 . "Vice President"]
            [-1 . "Pladimir Vutin"]]))
"<select name=\"examiner\" id=\"examinerSelect\">\n  <option value=\"1\">President</option><option value=\"2\">Vice President</option><option value=\"-1\">Pladimir Vutin</option></select><option value=\"1\">President</option><option value=\"2\">Vice President</option><option value=\"-1\">Pladimir Vutin</option>
```

If you use `tal:attributes` on an element with an active `tal:replace` command, the `tal:attributes` statement is ignored because of the order of operations.

It can, of course, set more than one attribute.

```scheme
(define-TAL (att-textarea (rows 80) (cols 20)) #<<EOF
<textarea
 rows="0" cols="0"
 tal:attributes="(rows rows) (cols cols)">
EOF
)  
```

```scheme
> (:> (att-textarea))
"<textarea rows=\"80\" cols=\"20\"></textarea>"
> (:> (att-textarea 10 42))
"<textarea rows=\"10\" cols=\"42\"></textarea>"
```


# tal:condition: Conditionally insert or remove an element

*Syntax*

```bnf
argument ::= expression
```

The `tal:condition` statement includes the statement element in the template only if the expression evaluates to a value that's not `#f` and omits it otherwise.

```scheme
(define-TAL (p-when value) #<<EOF
<p tal:condition="value" tal:content="value"> P! </p>
EOF
)
```

```scheme
> (:> (p-when "Lorum Ipsum"))
"<p>Lorum Ipsum</p>"
> (:> (p-when #f))
""
```

It can be used for alternate conditions.

```scheme
(define-TAL (p-if) #<<EOF
<div tal:repeat="(item '(a s d f))">
<p tal:condition="(repeat/item.even?)">Even</p>
<p tal:condition="(repeat/item.odd?)">Odd</p>
</div>
EOF
)
```

```scheme
> (:> (p-if))
"<div>\n<p>Even</p>\n\n</div><div>\n\n<p>Odd</p>\n</div><div>\n<p>Even</p>\n\n</div><div>\n\n<p>Odd</p>\n</div>
```

That's a good example of why "in-tag indentation" can be important.

```html
> (display #)
<div>
<p>Even</p>

</div><div>

<p>Odd</p>
</div><div>
<p>Even</p>

</div><div>

<p>Odd</p>
</div>
```

Outside of the `tal:condition` but inside the `tal:repeat` are those newlines. Makes it nice to read but adds things that could mess up the display and really are not needed.

```scheme
(define-TAL (p-if-in-tag) #<<EOF
<div tal:repeat="(item '(a s d f))">
   <p tal:condition="(repeat/item.even?)">Even</p
  ><p tal:condition="(repeat/item.odd?)">Odd</p>
</div>
EOF
)
```

That gives us something "nicer".

```scheme
> (:> (p-if-in-tag))
"<div>\n   <p>Even</p>\n</div><div>\n   <p>Odd</p>\n</div><div>\n   <p>Even</p>\n</div><div>\n   <p>Odd</p>\n</div>"
```

Which kinda looks like what I'm trying to portray.

```html
> (display #)
<div>
   <p>Even</p>
</div><div>
   <p>Odd</p>
</div><div>
   <p>Even</p>
</div><div>
   <p>Odd</p>
</div>
```


# tal:content: Replace the content of an element

*Syntax*

```bnf
argument ::= (['text:'] | 'as-is:' | 'raw:') expression
```

You can insert `text:` or `as-is:` in place of its children with the `tal:content` statement. The statement argument is exactly like that of `tal:replace`, and is interpreted in the same fashion.

If the expression evaluates to `#f` , the statement element is left childless. f the expression evaluates to default, then the element’s contents are unchanged.

```scheme
(define-TAL (div-content cnt) #<<EOF
<div tal:content="cnt"> Default content here</div>
EOF
)
```

```scheme
> (:> (div-content default:))
"<div> Default content here</div>"
> (:> (div-content "New Content"))
"<div>New Content</div>"
> (:> (div-content #f))
"<div></div>"
```

The default replacement behavior is `text:` which replaces angle-brackets and ampersands with their HTML entity equivalents.

```scheme
(define-TAL (div-text-content cnt) #<<EOF
<div tal:content="text: cnt"> Default content here</div>
EOF
)
```

```scheme
> (let (txt "Content in a <div/>")
   [(:> (div-content txt)) (:> (div-text-content txt))])
("<div>Content in a &lt;div/&gt;</div>"
 "<div>Content in a &lt;div/&gt;</div>")
```

The `as-is:` keyword passes the replacement text through unchanged allowing HTML/XML markup to be inserted. This can break your page if the text contains unanticipated markup (e.g.. text submitted via a web form), which is the reason that it is not the default.

```scheme
(define-TAL (div-html-content cnt) #<<EOF
<div tal:content="as-is: cnt"> Default content here</div>
EOF
)
```

The `default:` still works.

```scheme
> (:> (div-html-content default:))
"<div> Default content here</div>"
```

Finally the `raw:` keyword doesn't do anything with the expression beyond run it.

```scheme
(define-TAL (div-raw-content cnt) #<<EOF
<div tal:content="raw: cnt"> Default content here</div>
EOF
)
```

```scheme
> (:> (div-raw-content default:))
"<div></div>"
```

Running something which outputs to `current-tal-output-port` will do the right thing,

```scheme
(define-TAL (div-proc-content cnt) #<<EOF
<div tal:content="raw: (cnt)"></div>
EOF
)
```

```scheme
> (:> (div-proc-content
       (lambda ()
         (div-text-content "esc: <hr>")
         (div-html-content "hr: <hr>"))))
"<div><div>esc: &lt;hr&gt;</div><div>hr: <hr></div></div>"
```


# tal:define

The `tal:define` command either wraps a `let*` around the tag (by default or with the `local:` keyword) and/or `set!`'ing things with the `set!:` keyword.

```scheme
(define-TAL (let-and-set x y) #<<EOF
<div tal:define="(foo (+ x 20)) (bar (* foo y))">
  <p> Number? <b tal:content="bar"></b></p>
  <p> The Answer? <b tal:content="(if (equal? bar 42) '|Yes!| '|No|)"></b> </p>
  <p tal:define="set!: (bar 42)"> We can set as well <b> Bar = <i tal:content="bar"></i> </p>

  <p> Setting is what you expect: <br tal:replace="bar"></p>
</div>  
EOF
)
```

```scheme
> (:> (let-and-set 1 2))
"<div>\n
 <p> Number? <b>42</b></p>\n  <p> The Answer? <b>Yes!</b> </p>\n  <p> We can set as well <b> Bar = <i>42</i> </b></p>\n\n  <p> Setting is what you expect: 42</p>\n</div>  "
```

```scheme
> (display (html-strip #))

 Number? 42
 The Answer? Yes! 
 We can set as well  Bar = 42 

 Setting is what you expect: 42
```

```scheme
> (:> (let-and-set 1 3))
"<div>\n  <p> Number? <b>63</b></p>\n  <p> The Answer? <b>No</b> </p>\n  <p> We can set as well <b> Bar = <i>42</i> </b></p>\n\n  <p> Setting is what you expect: 42</p>\n</div>  "
```

```scheme
> (display (html-strip #))

   Number? 63
   The Answer? No 
   We can set as well  Bar = 42 

   Setting is what you expect: 42
  >
```


# tal:switch: Set up a switch statement

If everything is testing the same item, and only one can succeed, a bunch of conditionals gets hairy. There's a `tal:switch` and some `tal:case` statements to round it up.

```scheme
(define-TAL (switch-case item) #<<EOF
<div tal:switch="item"> 
  This is why I did not use cond or if.
 <p tal:case="'foo"> We've got foo! </p>  Because where would this go? 
 <p tal:case="else:"> Else is working </p>
</div>
EOF
)

```

```scheme
(define-TAL (switch-case item) #<<EOF
<div tal:switch="item"> 
  This is why I did not use cond or if.
 <p tal:case="'foo"> We've got foo! </p> Because where would this go? 
 <p tal:case="else:"> Else is working </p>
</div>
EOF
)
> (:> (switch-case 'asd))
"<div> \n  This is why I did not use cond or if.\n   Because where would this go? \n <p> Else is working </p>\n</div>"
> (:> (switch-case 'foo))
"<div> \n  This is why I did not use cond or if.\n <p> We've got foo! </p> Because where would this go? \n \n</div>"
> 

```


# tal:omit-tag: Remove an element leaving its contents

*Syntax*

```bnf
argument ::= [ expression ]
```

The `tal:omit-tag` statement leaves the contents of an element in place while omitting the surrounding start and end tags.

If the expression evaluates to `#f` then normal processing of the element continues and the tags are not omitted. If the expression evaluates to a true value, or no expression is provided, the statement element is replaced with its contents.

```scheme
(define-TAL (notag) #<<EOF
<p tal:omit-tag=""> Just The text! <a href="#"> and a link </a> </p>
EOF
)

(define-TAL (maybe-tag val) #<<EOF
<p tal:omit-tag="(not val)"> Is this a Paragraph? Who knows!</p>
EOF
)
```

```scheme
> (:> (notag))
" Just The text! <a href=\"#\"> and a link </a> "
> (:> (maybe-tag #f))
" Is this a Paragraph? Who knows!"
> (:> (maybe-tag 42))
"<p> Is this a Paragraph? Who knows!</p>"
```


# current-tal:on-error and tal:on-error.

Handling errors in a decent way is built into our `TAL` be default. This is, from experience, made to make most of the page work if there is an unwanted and unseen error.

To update the "outside" error handler outside of the `TAL` form/file there is a `current-tal:on-error`. For "inside" use the `tal:on-error` attribute is very useful.


## Default and current-tal:on-error

By default the form that errors will write the error message prefixed with `ERROR:` in place of what is most likely its contents.

```scheme
(define-TAL (test-no-on-error thunk) #<<EOF
<ul>
  <li tal:content="(thunk)"></li>
</ul>
EOF
)
```

In running it we can see it still runs and does not mess up the page that much.

```scheme
> (:> (test-no-on-error (cut error "This is the error message: <escaped>")))
"<ul>\n  <li>ERROR: This is the error message: &lt;escaped&gt;</li>\n</ul>"
```

We can change it.

```scheme
> (:> (parameterize ((current-tal:on-error
                      (lambda (e) '(log-error e)
                         (tal:write "Nothing wrong here!"))))
        (test-no-on-error (cut error "Something Wrong!"))))
"<ul>\n  <li>Nothing wrong here!</li>\n</ul>"
```

But in reality that abstraction's just there so pages still run with bugs in them. Even better for all involved is the `tal:on-error` attribute.


## tal:on-error

*Syntax*

```bnf
argument ::= (['text:'] | 'as-is:' | 'raw:' | 'ignore:' | 'ignore') expression
```

For a more precise handling of errors the `tal:on-error` catcher/handler makes it quite easy. When a `TAL Statement` produces an error if there is a `tal:on-error` on the element or any parent element the error is caught at that point and handled according to the expression.

The first three keywords are treated the same as `tal:content` and on error the element becomes one of those.

```scheme
;; No keyword is the same as `text:`
(define-TAL (test-got-error thunk) #<<EOF
<ul tal:on-error="'|Got an Error!|">
  <li tal:content="(thunk)"></li>
</ul>
EOF
)

```

The result differs from the default catcher.

```scheme
> (:> (test-got-error (lambda () "Nice! No error")))
"<ul>\n  <li>Nice! No error</li>\n</ul>"
> (:> (test-got-error (cut error "error here")))
"<ul>Got an Error!</ul>"
```

Because we catch it on the `<ul/>` the handler does not give us the `<li/>` wrapper and it breaks the valid HTML! We did that on purpose, of course, and that's the idea behind a much more specific catcher.

```scheme
(define-TAL (test-got-li-error thunk) #<<EOF
<ul tal:on-error="as-is: '|<li> Got an Error! </li>|">
  <li tal:content="(thunk)"></li>
</ul>
EOF
)
```

That allows us to be much more clinical.

```scheme
> (:> (test-got-li-error (cut error "error here")))
"<ul><li> Got an Error! </li></ul>"
```

But these are errors and though informing the is always a good idea perhaps we also want to handle it outside of the tal forms.

For that reason the `err` identifier is bound to the exception object within the `tal:on-error` statement.

```scheme
(define-TAL (error-li) "<li> Got an Error! </li>")
(def err-log [])
(def (log-err err) (set! err-log (cons err err-log)))
(def (handle-ul-error err) (log-err err) (error-li))
```

```scheme
(define-TAL (test-handle-ul-error thunk) #<<EOF
<ul tal:on-error="raw: (handle-ul-error err)">
  <li tal:content="(thunk)"></li>
</ul>
EOF
)
```

```scheme
> (length err-log)
0
> (:> (test-handle-ul-error (cut error "asd")))
"<ul><li> Got an Error! </li></ul>"
> (length err-log)
1
```

But that may raise the question of: why we need an unordered list that is an error?

That that there's the `ignore` and `ignore:` arguments.

```scheme
(define-TAL (test-ignore-error thunk) #<<EOF
<ul tal:on-error="ignore">
  <li tal:content="(thunk)"></li>
</ul>
EOF
)
```

Now there's no `<ul/>` tag if it errors!

```scheme
> (:> (test-ignore-error (lambda () "LI here!")))
"<ul>\n  <li>LI here!</li>\n</ul>"
> (:> (test-ignore-error (cut error "No UL here!")))
""
```

Or, like, if we actually want something that's not an unordered list, we can do that as well.

```scheme
(define-TAL (error-div err) #<<EOF
<div tal:content="(log-err err) '|Error Here!|"></div>
EOF
)

(define-TAL (test-ignore-div-error thunk) #<<EOF
<ul tal:on-error="ignore: (error-div err)">
  <li tal:content="(thunk)"></li>
</ul>
EOF
)
```

```scheme
> (length err-log)
1
> (:> (test-ignore-div-error (lambda () "No Error")))
"<ul>\n  <li>No Error</li>\n</ul>"
> (length err-log)
1
> (:> (test-ignore-div-error (cut error "Got div")))
"<div>Error Here!</div>"
> (length err-log)
2
```


# tal:repeat: Repeat an element

*Syntax*

```bnf
argument      ::= '(' variable-name expression ')'
variable-name ::= Identifier
```

The `tal:repeat` statement replicates a sub-tree of your document once for each item in a sequence. The expression should evaluate to anything acceptable for `:std/iter` to repeat.

```scheme
(define-TAL (test-b-repeat thing) #<<EOF
<b tal:repeat="(i thing)" tal:content="i"></b>
EOF
)
```

```scheme
> (:> (test-b-repeat '(1 2 3)))
"<b>1</b><b>2</b><b>3</b>"
> (:> (test-b-repeat "asd"))
"<b>a</b><b>s</b><b>d</b>"
> (:> (test-b-repeat #(v e c)))
"<b>v</b><b>e</b><b>c</b>"
```

If the iterator is empty then the statement element is deleted, otherwise it is repeated for each value sequentially.

```scheme
> (:> (test-b-repeat '()))
""
> (:> (test-b-repeat ""))
""
```

The `variable-name` is used to define a local variable and a `repeat/variable-name` for a `Repeat` interface variable. For each repetition, the local variable is set to the current sequence element, and the repeat variable is set to an interface around the iteration object.


## The Repeat Interface

You use the `Repeat` interface to access information about the current repetition (such as the repeat index). The repeat interface has the same name as the local variable prefixed with `repeat/` and has the following methods.

-   **index:** repetition number, starting from zero.

-   **number:** repetition number, starting from one.

-   **even?:** true for even-indexed repetitions (0, 2, 4, …).

-   **odd?:** true for odd-indexed repetitions (1, 3, 5, …).

-   **start?:** true for the starting repetition (index 0).

-   **end?:** true for the ending, or final, repetition.

-   **letter:** repetition number as a lower-case letter: “a” - “z”, “aa” - “az”, “ba” - “bz”, …, “za” - “zz”, “aaa” - “aaz”, and so forth.

-   **Letter:** upper-case version of `letter`.

-   **roman:** repetition number as a lower-case roman numeral: “i”, “ii”, “iii”, “iv”, “v”, etc.

-   **Roman:** upper-case version of `roman`.

Iterating over a sequence:

```scheme
(define-TAL (rep seq) #<<EOF
<p tal:repeat="(i seq)">
  <span tal:replace="i"/>
</p>
EOF
)
```

```scheme
> (:> (rep '(foo bar baz)))
"<p>\n  foo\n</p><p>\n  bar\n</p><p>\n  baz\n</p>"
```

Inserting a sequence of table rows, and using the repeat variable to number the rows:

```scheme
(def desc car)
(def price cdr)

(define-TAL (checkout-table cart) #<<EOF
<table>
  <tr tal:repeat="(item cart)">
    <th tal:content="(repeat/item.number)">1</th>
    <td tal:content="(desc item)">Widget</td>
    <td tal:content="(price item)">$1.50</td>
  </tr>
</table>
EOF
)
```

```scheme
> (:> (checkout-table '(("Soilent Green" . "$People") ("Napkins" . "$42.00"))))
"<table>\n  <tr>\n    <th>1</th>\n    <td>Soilent Green</td>\n    <td>$People</td>\n  </tr><tr>\n    <th>2</th>\n    <td>Napkins</td>\n    <td>$42.00</td>\n  </tr>\n</table>"
```

That's better to see displayed.

```scheme
> (display #)
<table>
  <tr>
    <th>1</th>
    <td>Soilent Green</td>
    <td>$People</td>
  </tr><tr>
    <th>2</th>
    <td>Napkins</td>
    <td>$42.00</td>
  </tr>
</table>
```

Nested repeats:

```scheme
(define-TAL (nested-repeats rows cols) #<<EOF
<table border="1">
  <tr tal:repeat="(row rows)">
    <td tal:repeat="(column cols)">
      <span tal:define="(x (repeat/row.number))
                        (y (repeat/column.number));
                        (z (* x y))"
            tal:replace="(fmt '|~a * ~a = ~a| x y z)" >
          1 * 1 = 1
      </span>
    </td>
  </tr>
</table>
EOF
)
```

```scheme
  > (:> (nested-repeats '(1 2 3) #(4 6 5)))
"<table border=\"1\">\n  <tr>\n    <td>\n      1 * 1 = 1\n    </td><td>\n      1 * 2 = 2\n    </td><td>\n      1 * 3 = 3\n    </td>\n  </tr><tr>\n    <td>\n      2 * 1 = 2\n    </td><td>\n      2 * 2 = 4\n    </td><td>\n      2 * 3 = 6\n    </td>\n  </tr><tr>\n    <td>\n      3 * 1 = 3\n    </td><td>\n      3 * 2 = 6\n    </td><td>\n      3 * 3 = 9\n    </td>\n  </tr>\n</table>"
```

That's also nice to see in long form.

```scheme
> (display #)
<table border="1">
  <tr>
    <td>
      1 * 1 = 1
    </td><td>
      1 * 2 = 2
    </td><td>
      1 * 3 = 3
    </td>
  </tr><tr>
    <td>
      2 * 1 = 2
    </td><td>
      2 * 2 = 4
    </td><td>
      2 * 3 = 6
    </td>
  </tr><tr>
    <td>
      3 * 1 = 3
    </td><td>
      3 * 2 = 6
    </td><td>
      3 * 3 = 9
    </td>
  </tr>
</table> 
```
