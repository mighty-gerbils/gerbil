# Custom Languags in Gerbil

Here we explore language extensibility in Gerbil by definition of custom preludes.

<!-- toc -->

- [Preliminaries](#preliminaries)
- [Custom References and Procedure Application](#custom-references-and-procedure-application)

<!-- tocstop -->

## Preliminaries

The source code for all the examples is avilable at [$GERBIL_HOME/src/tutorial/lang](../../src/tutorial/lang).
You should visit that directory and compile the tutorial custom preludes so that you can try out
the examples in the interpreter:
```
$ cd $GERBIL_HOME/src/tutorial/lang
$ ./build.ss
... compile dot-app
... compile auto-export
... compile sexp
... compile scuby-etc
... compile scuby-grammar
... compile scuby
```

## Custom References and Procedure Application

The first example is the `dot-app` language, which illustrates reference and application
indirection through custom expanders.

More specifically, we write a language where dots in identifiers are significant and are
considered method calls, similar to how ruby treats dots.

We want to be able to write
```
(a.some-method arg ...)
```
and instead of invoking the procedure `a.some-method`, we want to invoke the method
`some-method` on the object `a`.

Similarly for references, we want to be able to write
```
a.some-method
```
and obtain a reference to the bound method `some-method` of object `a` instead of
the procedure `a.some-method`.

For chained dotted references we want to invoke the dotted parts as methods:
```
(a.b.c arg ...) => {{b a} c arg ...}
``

The (dot-app)[../../src/tutorial/lang/dot-app.ss] prelude accomplishes this by redefining
pthe `%%app` and `%%ref` expander hooks:
```
(defsyntax (my-%%app stx)
  (syntax-case stx ()
    ((_ rator . rands)
     (dotted-identifier? #'rator)
     (with ([hd . chain] (split-dotted-identifier #'rator))
       (let lp ((rest chain) (obj (datum->syntax #'rator hd)))
         (match rest
           ([method]
            (with-syntax ((obj obj) (method method))
              #'{method obj . rands}))
           ([method . rest]
            (with-syntax ((obj obj) (method method))
              (lp rest #'{method obj})))))))
    ((_ rator . rands)
     ;; default -- up the chain to core %%app
     #'(%%app rator . rands))))

(defsyntax (my-%%ref stx)
  (syntax-case stx ()
    ((_ id)
     (dotted-identifier? #'id)
     (with ([hd . chain] (split-dotted-identifier #'id))
       (let lp ((rest chain) (obj (datum->syntax #'id hd)))
         (match rest
           ([method]
            (with-syntax ((obj obj) (method method))
              #'(lambda args (apply call-method obj 'method args))))
           ([method . rest]
            (with-syntax ((obj obj) (method method))
              (lp rest #'{method obj})))))))
    ((_ id)
     ;; default -- up the chain to core %%ref
     #'(%%ref id))))
```

The two macros are defined with different names in local scope, to avoid shadowing
the root `%%app` and `%%ref` and causing an expansion loop.
The module exports them renamed, together with all the exports of the prelude core
to define a language that is just like core Gerbil but with special semantics for
the dot in identifiers:
```
(import :gerbil/core) ;; so that we can re-export, prelude imports are weak
(export (import: :gerbil/core)
        (rename: my-%%app %%app)
        (rename: my-%%ref %%ref))

```

The macros also need a couple of helper functions, defined for syntax:
```
(begin-syntax
  (def (dotted-identifier? stx)
    (and (identifier? stx)
         (let (str (symbol->string (stx-e stx)))
           (string-index str #\.))))

  (def (split-dotted-identifier stx)
    (map string->symbol (string-split (symbol->string (stx-e stx)) #\.))))
```

### Example

For a contrived example, consider the code in [example/my-app.ss](../../src/tutorial/lang/example/my-app.ss):

```
prelude: :tutorial/lang/dot-app

(export #t)

(defstruct A (x))
(defmethod {add-x A}
  (lambda (self y)
    (with ((A x) self)
      (+ x y))))

;; use the dotted %%app from dot-app prelude
(def (add-x a y)
  (a.add-x y))

(def (a-add-x a)
  a.add-x)

```

We can see the result in the interpreter:
```
$ gxi
> (import "example/my-app")
> (def a (make-A 1))
> (add-x a 1)
2
> (a-add-x a)
#<procedure #5>
> (#5 1)
2
```