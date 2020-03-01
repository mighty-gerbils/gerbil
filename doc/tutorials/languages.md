# Custom Languages in Gerbil

Here we explore language extensibility in Gerbil by defining custom preludes.

## Preliminaries

The source code for all the examples is available at [$GERBIL_HOME/src/tutorial/lang](https://github.com/vyzo/gerbil/tree/master/src/tutorial/lang).
You should visit that directory and compile the tutorial custom preludes so that you can try out
the examples in the interpreter:
```bash
$ cd $GERBIL_HOME/src/tutorial/lang
$ ./build.ss
... compile dot-app
... compile auto-export
... compile sexp
... compile scuby-etc
... compile scuby-grammar
... compile scuby
```

## Custom Languages in the REPL

Before we go into the examples, it should be noted that if your
language uses an s-expression syntax, you can also use its prelude for
custom initial bindings in the repl by starting `gxi` with the
`--lang` option. Simply set it to the module path of your custom
language, and your repl will obtain initial bindings by importing the
custom prelude.

For instance, to use our dot-app language in the repl:
```bash
$ gxi --lang :tutorial/lang/dot-app
> _
```

## Custom Module Expansion
### Custom References and Procedure Application

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
```

The [dot-app](../../src/tutorial/lang/dot-app.ss) prelude accomplishes this by redefining
the `%%app` and `%%ref` expander hooks:
```scheme
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
The module exports them renamed, together with all the exports of the core prelude
to define a language that is just like core Gerbil but with special semantics for
the dot in identifiers:
```scheme
(import :gerbil/core) ;; so that we can re-export, prelude imports are weak
(export (import: :gerbil/core)
        (rename: my-%%app %%app)
        (rename: my-%%ref %%ref))

```

The macros also need a couple of helper functions, defined for syntax:
```scheme
(begin-syntax
  (def (dotted-identifier? stx)
    (and (identifier? stx)
         (let (str (symbol->string (stx-e stx)))
           (string-index str #\.))))

  (def (split-dotted-identifier stx)
    (map string->symbol (string-split (symbol->string (stx-e stx)) #\.))))
```

#### Example

For a contrived example, consider the code in [example/my-app.ss](../../src/tutorial/lang/example/my-app.ss):

```scheme
$ cat example/my-app.ss
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
> (def a.add-x (a-add-x a)) ; here the dot is a normal identifier
> a.add-x
#<procedure #5 a.add-x>
> (a.add-x 1)
2
```

### Custom Body Expansion

The second example is the `auto-export` language, which illustrates the very basics
of custom module body expansion.

The premise is very simple: we want a language that automatically exports all bindings,
similar to how Schemes without modules work.
The [auto-export](../../src/tutorial/lang/auto-export.ss) prelude accomplishes this by
redefining the `%%begin-module` expander:
```scheme
(import :gerbil/core) ;; so that we can re-export
(export (import: :gerbil/core)
        (rename: my-%%begin-module %%begin-module))

(defrules my-%%begin-module ()
  ((_ . body)
   (%%begin-module (export #t) . body)))
```

The macro is actually trivial and doesn't do any processing of the body; all it
does is plaster an `(export #t)` and expand up the chain through the root `%%begin-module`.

#### Example

The [example](../../src/tutorial/lang/example/my-auto-export.ss) is a module
with a single definition `greet` and no export directive in sight:
```scheme
$ cat example/my-auto-export.ss
prelude: :tutorial/lang/auto-export

;; everything is automagically exported, so no export directive needed
(def (greet x)
  (displayln "hello " x))

```

We can verify that `greet` is indeed exported in the interpreter:
```
$ gxi
> (import "example/my-auto-export")
> (greet "world")
hello world
```

### Custom Readers

The next example is the `sexp` language, which illustrates the mechanics of custom module
readers and `#lang` preludes.

The [sexp](../../src/tutorial/lang/sexp.ss) prelude is a minimal module with a custom
reader:
```scheme
(import :gerbil/core) ;; so that we can re-export
(export (import: :gerbil/core)
        (phi: +1 read-module-body))

(begin-syntax
  (def (read-module-body port)
    (let lp ((body []))
      (let (next (read-syntax port))
        (if (eof-object? next)
          (reverse body)
          (lp (cons next body)))))))
```
The reader itself is quite uninteresting: it uses the builtin `read-syntax` primitive
to read s-expressions, so this language is identical to Gerbil core. However, it can be
used as a `#lang` prelude, in contrast to the gerbil core prelude.

The [example](../../src/tutorial/lang/example/my-sexp.ss) demonstrates just that:
```
$ cat example/my-sexp.ss
#lang :tutorial/lang/sexp
(export #t)

(def (greet x)
  (displayln "hello " x))

$ gxi
> (import "example/my-sexp")
> (greet "world")
hello world
```

## Arbitrary Surface Syntax

We have so far illustrated the basics of custom module expansion and have built up
our machinery up to the `#lang` form for custom language preludes.
Here, we put this machinery to use with a language that has an adhoc surface syntax.

Let's call our language `scuby`, because it takes the ruby approach in delineating basic
blocks using `end` tokens. The language itself is a toy, but it's complex enough
to benefit from a proper parser and a lexer.

Gerbil provides extensive facilities for parsing and lexing in the standard
library, as part of the [:std/parser](../../src/std/parser) package.
The package provides facilities for lexing and parsing while accurately tracking source
location, macros for parser and lexer generation, and a custom language prelude for
writing language grammars in declarative fashion (i was quite fond of silex and lalr).

### Some Scuby Code

So let's look at our yet-to-be designed language, and write some code in it.
We want to keep things simple and minimal, so we have one `def` form for
function definitions and variables, while we have exactly one special form
with `if`. Our datums can be booleans, null, integers, and strings.

There is some scuby code in the [example module](../../src/tutorial/lang/example/my-scuby.ss).

For instance, here is a function that computes the nth Fibonacci number:
```
def (fibo n)
  def (fibo-r x y k)
    if (< k n)
      (fibo-r (+ x y) x (1+ k))
    else x
    end
  end
  (fibo-r 1 0 1)
end
```

And here are closures with the classic stateful counter:
```
def (make-counter x)
  def (counter)
    def next = x
    (set! x (1+ x))
    next
  end
  counter
end
```

### The Grammar

So let's take a look at the [grammar](../../src/tutorial/lang/scuby-grammar.ss).

First, let's take a look at the parser specification. The syntax is declarative,
with mutually recursive rules and productions.
Each rule can have multiple productions,
which take the form of a pattern and an optional action.

#### The Parser Specification Grammar
So the general form of a parser specification can be given in a declarative
form of EBNF notation:
```
Parser        <- Rule*
Rule          <- Production AltProduction*
Production    <- Pattern Action
              |  Pattern
AltProduction <- '|' Production

Action     <- '=>' ActionExpr
ActionExpr <- '!'                     ; cut (rule scoped)

Pattern <- SimplePattern '+'          ; one or more
        |  SimplePattern '*'          ; zero or more
        |  SimplePattern '?'          ; zero or one
        |  SimplePattern
SimplePattern <- '(' Ident Ident ')'  ; rule match with variable binding
              |  Ident                ; rule match
              |  Quote                ; token value eq? 'symbolic-value'
              |  String               ; token value equal? "string-value"
              |  EOF

EOF    <- '$$'                        ; the end of input token
Ident  <- %                           ; identifier (lexer token)
Quote  <- %                           ; symbolic equality (token)
String <- %                           ; string equality (token)
```
Incidentally, this is a valid but incomplete (it is has a reference to SExpression)
parser specification for the parser specification language.
This parser would recognize the language but doesn't produce an AST.

#### The Scuby Parser
Here is the high level logic for our scuby parser:
```
Program <- (Form $1)* EOF
           => ['begin $1 ...]

Form <- Defn
     |  Expr

Defn <- DEF (VarIdent $1) '=' (Expr $2)
        => ['def $1 $2]
     |  DEF '(' (VarIdent $1) (VarIdent $2)* ')' (Defn $3)* (Expr $4)+ END
        => ['def [$1 $2 ...] $3 ... $4 ...]
     |  DEF
        ;; hard cut to provide better error locality
        => (raise-parse-error 'parse-scuby "malformed definition" @@)

VarIdent <- Reserved
            => (raise-parse-error 'parse-scuby "illegal variable identifier: reserved keyword" @@)
         |  (Ident $1)
            => $1  ; wrap identifier to track source location

Expr <- BeginExpr
     |  IfExpr
     |  AppExpr
     |  RefExpr
     |  DatumExpr

BeginExpr <- BEGIN (Expr $1)+ END
             => ['begin $1 ...]

IfExpr <- IF (Expr $1) (Expr $2) ELSE (Expr $3) END
          => ['if $1 $2 $3]
       |  IF (Expr $1) (Expr $2) END
          => ['if $1 $2]

AppExpr <- '(' (Expr $1) (Expr $2)* ')'
           => [$1 $2 ...]

RefExpr <- Reserved
           => !
        |  (Ident $1)
           => $1  ; wrap identifier to track source location

Reserved <- DEF
         |  BEGIN
         |  IF
         |  ELSE
         |  END

DatumExpr <- Int
          |  String
          |  TRUE
          |  FALSE
          |  NULL
```

#### The Scuby Lexer
The lexer specification language is almost identical to silex, which should be obvious by
example.
The basic form is
```
Lexer <- Rule*
Rule <- Regex '->' Production
Production <- '$'                 ; ignored token
           |  '$$'                ; eof token
           |  '{' Identifier '}'  ; macro definition
           |  (Ident Sexpression) ; token production
```


And here is our lexer specification:
```
[\ \t\n]+                       -> $                             ; whitespace
\;[^\n]*\n                      -> $                             ; comments
true                            -> (TRUE #t)                     ; #t
false                           -> (FALSE #f)                    ; #f
null                            -> (NULL '())                    ; '()
[(]                             -> (LPAREN '|(|)                 ; LPAREN token
[)]                             -> (RPAREN '|)|)                 ; RPAREN token
[-]?[0-9]+                      -> (Int (string->number @@))     ; integers
[-+*/=?<>~!@$%^&:_a-zA-Z0-9]+   -> (Ident (string->symbol @@))   ; identifiers
"([^"]|\\")*"                   -> (String (string-e @@ @loc))   ; strings

```

### The Scuby Prelude

The [scuby](../../src/tutorial/lang/scuby.ss) prelude defines a custom module reader
which parses scuby syntax and
produces an AST. The reader is straightforward:
```scheme
(import :gerbil/core
        (phi: +1
              :std/sugar
              :std/parser/base
              :tutorial/lang/scuby-grammar))

(begin-syntax
  ;; the module reader: uses the parser defined in scuby-grammar to parse the module
  (def (read-module-body port)
    (try
     (let (progn (parse-scuby port))
       (case (token-t progn)
         ((Program)                     ; we parsed a program
          [(token-e progn)])
         (($$)                          ; the empty program
          [])
         (else                          ; that really shouldn't happen with our grammar
          (raise-syntax-error #f "Bad syntax; unexpected token" (token->syntax progn)))))
     (catch (parse-error? exn)
       (apply raise-syntax-error #f
              (string-append "Bad syntax; " (error-message exn))
              (map token->syntax (error-irritants exn)))))))
```

#### Example

And putting it all together, we can import our small corpus of [scuby code](../../src/tutorial/lang/example/my-scuby.ss):
```
$ gxi
> (import "example/my-scuby")
> (import :std/iter)
> (for (x (in-iota 10 1)) (displayln (fibo x)))
1
1
2
3
5
8
13
21
34
55
> (def my-counter (make-counter 1))
> (for (x (in-iota 10)) (displayln (my-counter)))
1
2
3
4
5
6
7
8
9
10
```
