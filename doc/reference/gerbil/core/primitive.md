# Primitive Forms

These are primitive syntactic forms with scheme-standard semantics.

## define
```
(define (name . head)
 body ...)

name: <identifier>
head: <primitive-head>
body: <local-body>

=>
(define-values (name)
  (lambda% head
    body ...))

;-----------------

(define name expr)

name: <identifier>
expr: <expression>
=>
(define-values (name)
  expr)
```

Single identifier binding, as a procedure or expression.

## define-values
```
(define-values (name ...)
  expr)

name: <identifier>
expr: <expression>
```

Enacts runtime bindings, as a result of evaluating `expr` at
expression context. Evaluation happens at runtime.

## define-syntax
```
(define-syntax (name . head)
  body ...)

name: <identifier>
head: <primitive-head>
body: <local-body>

=>
(define-syntax name
  (lambda% head body ...))

;-----------------

(define-syntax name
  expr)

name: <identifier>
expr: <expression>
```

Creates a syntax binding, which is the result of evaluating `expr` at
expression context during expansion time. The resulting value can be
used as a macro expander or resolved during expansion using
`syntax-local-value`.


## lambda%
```
(lambda% primitive-head [(declare ...)] <local-body> ...)

primitive-head:
 (<identifier> ...)
 (<identifier> ... . identifier)
 <identifier>

local-body ...:
 [(declare ...)] <local-form> <local-form> ...
```

This is the primitive lambda form, without contracts, optionals, or
keywords; just scheme. Note that all the non primitive lambda forms
expand one way or another to something that reduces to a `lambda%` in
the end.

## let-values
```
(let-values (<let-binding> ...) <primitive-body> ...)

let-binding:
 (<primitive-head> <expression>)
```

Binding expressions are evaluated in an unspecified order and the
results are bound in a new lexical scope in which the body is expanded
and evaluated.

## let*-values
```
(let*-values (head . rest) body ...)
=>
(let-values (head)
  (let-*values rest body ...))

(let-values () body ...)

head: <primitive-head>
body ...: <primitie-body> ...
```

Derived sequential binding form.

## letrec-values
```
(letrec-values (<let-binding> ...) <primitive-body> ...)
```

Binding form where the binding expressions are evaluated within the
scope itself and can recursively refer to each other. Evaluation order
is unspecified.

## letrec*-values
```
(letrec*-values (<let-binding> ...) <primitive-body> ...)
```

Like `letrec-values` but binding evaluation order is top-down.


## let-syntax
```
(let-syntax (<let-binding> ...) <primitive-body> ...)
```

Creates a new local scope where the bindings are created at syntax
level so that they can be used as macro expanders or meta syntactice
objects.

::: tip Note
`let-syntax` in Gerbil follows R5R6/R7RS and creates a new lexical scope.
This is contrast to R6R6 which defined splicing semantics without
introducing a new lexical scope.

We plan to introduce a `let-syntax-splicing` special form with
splicing semantics in a future release.
:::


## letrec-syntax
```
(let-syntax (<let-binding> ...) <primitive-body> ...)
```

Like `let-syntax` but the binding expressions are recursive: the
syntax bindings are visible to all expressions.

## if
```
(if <expression> <expression> <expression>
```

Conditional evaluation. Note that Gerbil's primitive `if` form
requires both alternative arms. Use `when` and `unless` for one-arm
ifs.

## quote
```
(quote <any>)
```

Inlines a verbatim object in the AST. Any object can be quoted, but
code intended to survive expansion and make it into a compiled source
file should only quote primitive objects with read-write invariance.
