# Sourceable Representation
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/repr)
```
:::

## print-representation
``` scheme
(print-representation obj
                      [port = (current-output-port)]
                      [options = (current-representation-options)]) -> void

  obj     := object to print
  port    := optional output port
  options := hash-table, representation options
```

Prints an evaluable source-code representation of *obj* to *port*, which
defaults to `(current-output-port)`. That very representation can later be read
and evaluated back into an equivalent object.

The behaviour of `print-representation` can be specialized for new classes of
objects by defining new overloads on the `:pr` method, see `representable`.

Note: *options* aren't doing anything as of now, but are reserved for future
use. For instance, they may in the future be used to deal with circularity in
the object graph, which `print-representation` does not currently handle.

The goal is that printing an object with `print-representation`, `pr` or `prn`,
or capturing its output in a string with `repr`, shall yield a representation
that if copy-pasted into the REPL in some reasonable context would yield
the same object as given as argument, up to `equal?`.
In other words, the following equation should hold whenever possible,
(though it is obviously not guaranteed on arbitrary user-defined objects):

```scheme
      (equal? (eval (call-with-input-string (repr o) read)) o)
```

Now, if no other suitable method is found, an object with be printed using the
`#42 #;"<foo #42>"` notation wherein a magic syntax using the "serial number"
syntax, that only works in the same context and same thread as the printer
for reading back, but still produces as much information as possible in a
subsequent `#;` comment. You can use the `#n` handle to query the object.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (def lst (list 1 2 3))
> (def vec (vector 1 2 3))
> (def ht  (hash (a 1) (b 2) (c 3)))
> (def fn  string-append)

> (displayln lst)
(1 2 3)
> (print-representation lst)
[1 2 3]           ; without newline, use prn for that

> (displayln vec)
#(1 2 3)
> (print-representation vec)
(vector 1 2 3)

> (displayln ht)
#<table #631>
> (print-representation ht)
(hash (a 1) (b 2) (c 3))

> (displayln fn)
#<procedure #632 string-append>
> (print-representation fn)
string-append

> (call-with-output-string (cut print-representation vec <>))
"(vector 1 2 3)"
> (repr vec)      ; better use repr, which prints to string by default:
"(vector 1 2 3)"

> (with-output-to-file "hash.rep" (cut print-representation ht))
$ cat hash.rep    ; unix-like command-line
(hash (a 1) (b 2) (c 3))%

> (with-input-from-file "hash.rep"
    (lambda () (print-representation (eval (read)))))
(hash (a 1) (b 2) (c 3))
```
:::

## pr
``` scheme
(defalias pr print-representation)
```

Short for `print-representation`.

::: tip Examples:
``` scheme
> (pr #(11 22 33))
(vector 11 22 33)                 ; without a newline
> (pr '((1 . x) (2 . y) (3 . z)))
[[1 'x ...] [2 'y ...] [3 'z ...]]
> (defstruct gerbil (name age greeting))
> (pr (make-gerbil "Cinnamon" 6 "Morning, everyone!"))
#634 #;"#<gerbil #634>"    ; unrepresentable by default
```
:::

## prn
``` scheme
(prn obj [port = (current-output-port)]
         [options = (current-representation-options)]) -> void

  obj     := object to print
  port    := optional output port
  options := hash-table, representation options
```

`prn` does the same as `pr` or `print-representation`, but also follows with a
newline.

Note: *options* aren't doing anything as of now, but are reserved for future
use.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (prn (hash-eqv (1 "I") (5 "V") (10 "X") (50 "L")))
(hash-eqv (1 "I") (10 "X") (5 "V") (50 "L"))    ; proper newline at the end
> (prn [1 2 [3 4 [5 6 7] 8] 9])
[1 2 [3 4 [5 6 7] 8] 9]
```
:::

## repr
``` scheme
(repr obj [options = (current-representation-options)]) -> string

  obj     := object to print
  options := hash-table, representation options
```

`repr` is similar to `print-representation`, but does not take a port as an
argument and instead returns the representation as a string.

Note: *options* aren't doing anything as of now, but are reserved for future
use.

::: tip Examples:
``` scheme
> (defstruct node (data next prev))
> (repr (make-node #f #f #f))
"#635 #;\"#<node #635>\""
> (repr (node-data (make-node #(1 2 3) #f #f)))
"(vector 1 2 3)"
```
:::

## representable
```
(defclass representable ())
(defmethod {:pr representable} print-unrepresentable-object)
```

`representable` is an abstract mixin class that defines a method for `:pr`. By
default, if a class does not provide its own implementation, then
`print-unrepresentable-object` will be called.

::: tip Examples:
``` scheme
> (defstruct point (x y))
> (def p (make-point 10 20))
> (displayln p)
#<point #4>
> (prn p)
#4 #;"#<point #4>"    ; print-unrepresentable-object

> (import :std/format)
> (defmethod {:pr point}
    (lambda (self port options)
      (fprintf port "(point ~a ~a)"
               (point-x self) (point-y self))))

> (prn p)
(point 10 20)

> (let ((p1 (make-point 10 20))
        (p2 (eval (with-input-from-string (repr p) read))))
    (and (= (point-x p1) (point-x p2))
         (= (point-y p1) (point-y p2))))
#t
```
:::

## print-unrepresentable-object
``` scheme
(print-unrepresentable-object obj
                              [port = (current-output-port)]
                              [options = (current-representation-options)]) -> void
  obj := object to print
  port := optional output port
  options := hash-table, representation options
```

`print-unrepresentable-object` is a helper function to use as a fallback for
objects that can't otherwise be displayed. Prints a general-purpose escape of
*obj*, using the `#id` syntax and appends a string hint as obtained from the
`write` function.

Note: *options* aren't doing anything as of now, but are reserved for future
use.

::: tip Examples:
``` scheme
> (import :std/misc/queue)
> (def q (make-queue))
> (enqueue! q 100)
> (prn q)
#9 #;"#<queue #9>"    ; calls print-unrepresentable-object
> (print-unrepresentable-object q)
#9 #;"#<queue #9>"
```
:::

<!-- Uncommenting for now till impl lands
## default-representation-options
```
(def default-representation-options)
```

`default-representation-options` is the default table of options.
No options are currently defined, and the default table is currently empty.
In the future, options may be defined for pretty-printing, etc.
-->

<!-- Uncommenting for now till impl lands
## current-representation-options
``` scheme
(current-representation-options [TODO]) -> TODO

  make-parameter := TODO
```

`current-representation-options` is a parameter returning the current options,
and initially returns the `default-representation-options`.

::: tip Examples:
``` scheme
TODO
```
:::
-->

## display-separated
``` scheme
(display-separated lst
                   [port = (current-output-port)]
                   [prefix: ""]
                   [separator: " "]
                   [suffix: ""]
                   [display-element: display]) -> void

  lst             := list of objects to print
  port            := optional output port
  prefix          := string prefix
  separator       := string separator
  suffix          := string suffix
  display-element := function that does the actual printing
```

`display-separated` is a helper function that takes *lst*, a list of objects to
print, an optional output *port*, and as keywords a *prefix* string (empty by
default), a *suffix* string (empty by default), a *separator* string (defaulting
to a single space `" "`), and a *display-element* function (`display` by
default). Displays each element of *lst* with the given *prefix*, *suffix*,
*separator* and *display-element* function.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (def ht (hash (a 1) (b 2) (c 3)))
> (display-separated (hash-values ht) (current-output-port)
                     prefix: "(list\n  "
                     suffix: ")"
                     separator: "\n  ")
(list
  3
  2
  1)

;; this module already supports printing list:
> (prn (hash-values ht))
[3 2 1]
```
:::
