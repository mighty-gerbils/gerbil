# Binding Macros

The following macros introduce bindings in the lexical scope.

## Runtime Definitions

These forms introduce runtime bindings in the lexical scope.

### def
```
(def (name . head) body ...)

name: <identifier>
head: <lambda-head>
body ...: <lambda-body> ...

=>
(def name (lambda head body ...))

;------------------------------

(def <identifier> <expression>)
```

The foundational runtime binding definition macro.

### def*
```
(def* name
  clause ...)

name: <identifier>
clause: <case-lambda-clause>

=>

(def name
  (case-lambda clause ...))
```

Shortcut for case lambda definitions.

### defvalues
```
(defvalues (name ...) expr)

name: <identifier>
expr: <expression>

=>
(define-values (name ...) expr)
```

Definitions with multiple identifier bindings.

### extern
```
(extern
 <extern-body> ...)

extern-body:
 namespace: <identifier> <extern-body> ...
 <identifier> <extern-body> ...
 (<identifier> <identifier>) <extern-body> ...
```

Defines an external runtime reference. It introduces a binding that
maps an identifier to a fully qualified symbol that refers to the
binding at runtime.

::: Note
`extern` can only appear at top or module scope.
:::

## Syntactic Definitions

These forms introduce syntactical bindings in the lexical scope.

### defsyntax
```
(defsyntax (name . head) body ...)

name: <identifier>
head: <primitive-head>
body: <primitive-body>

=>

(defsyntax name
  (lambda head body ...))

;-----------------------

(defsyntax name expr)

name: <identifier>
expr: <expression>

=>
(define-syntax name expr)
```

Defines a syntactic binding, which can be used as a macro expander if
the object is a procedure or implements the `apply-macro-expander`
method.

### defrules
```
(defurules name tokens body ...)
=>
(defsyntax name
  (syntax-rules name tokens
    body ...))
```

Defines expansion rules for an identifier to be used as a macro expander.

### defrule
```
(defrule (name . args) [fender] body)
=>
(defsyntax name
  (syntax-rules ()
    ((_ . args) [fender] body)))
```

Defines a single arm expansion rule for an identifier to be used as a macro expander.

### defalias
```
(defalias name alias-name)

name: <identifier>
alias-name: <name>
```

Defines a syntactic alias from `name` to `alias-name`.


## Lambda Forms

These forms define procedures.

### lambda
```
(lambda <lambda-head> <lambda-body> ...)

lambda-head:
 <identifier>
 (<required-lambda-arg> ... <optional-and-keyword-lambda-arg> ... [. tail])

required-lambda-arg:
 <identifier>
 (<identifier> <contract-annotation> ...)

optional-and-keyword-lambda-arg:
 <optional-lambda-arg>
 <keyword-lambda-arg>

optional-lambda-arg:
 (<identifier> <expression>)
 (<identifier> <contract-annotation> <contract-default>)

keyword-lambda-arg:
 <required-keyword-lambda-arg>
 <optional-keyword-lambda-arg>

required-keyword-lambda-arg:
 <keyword> <identifier>
 <keyword> (<identifier> <contract-annotation>)

optional-keyword-lambda-arg:
 <keyword> (<identifier> <expression>)
 <keyword> (<identifier> <contract-annotation> <contract-default>)

lambda-body ...:
 [=> <type>] local-body ...

```

Defines a procedure; see [Contract Notation and Macrology](contract.md) for details
about contract syntax.

### case-lambda
```
(case-lambda <case-lambda-clause) ...)

case-lambda-clause:
 <identifier>
 (required-lambda-arg ... [. identifier>])

```

Define a multiple dispatch by arity procedure.

### cut
```
(cut <cut-argument> ... [<cut-tail>])

cut-argument:
 \<>
 <s-expression>

cut-tail:
 \<...>
```

Application parameter specialization, which produces a lambda; see [SRFI 26](https://srfi.schemers.org/srfi-26/srfi-26.html)

## Let Forms

These forms introduce a new local lexical scope, with the specified bindings.

### let
```
(let <let-binding> <local-body> ...)
(let (<let-binding> ...) <local-body>)
(let <identifier> ((<lambda-required-argument> expr) ...) <lambda-body> ...)

let-binding:
 ((values <identifier> ...) <expression>)
 (<identifier> <expression>)
```

Create a new lexical scope, where the bindings are evaluated in an
unspecified order in the parent scope.

The named let constuct creates a recursive procedure that is applied
to the given arguments.

### let*
```
(let* (head . rest) body ...)
=>
(let head (let* rest body ...))
```

Sequential bindings where each binding is visible to subsequent
bindings.

### letrec
```
(letrec (<let-binding> ...) <local-body> ...)
```

Mutually recursive bindings.

### letrec*
```
(letrec* (<let-binding> ...) <local-body> ...)
```

Similar to `letrec`, but binding expressions are evaluated in order.

## Derived Forms

These are auxiliary binding macros.

### let/cc
```
(let/cc name body ...)
=>
(call/cc (lambda (name) body ...))
```

Shortcut for local continuation capture.

A common use is to capture a continuation for abortive returns from a
dynamic scope; for instance:
```
(let/cc break
  (for (...)
    (unless something (break))
    ...))
```

### rec
```
(rec name expr)
=>
(letrec ((name expr)) expr)

;-------------------------
(rec (values name ...) expr)
=>
(letrec (((values name ...) expr)) (values name ...))

;--------------------------
(rec (name . head) body ...)
=>
(letrec ((name (lambda head body ...))) name
```

Shortcut for self referential expressions.

### alet
```
(alet <let-bind> <local-body> ...)
(alet (alet-bind> ...) <local-body> ...)
```

Conditional binding form. If all the bound identifiers in the bindings
are truthy, then the body is evaluated in a scope with the bindings
visible. Otherwise, the expression's value is `#f`.

### alet*
```
(alet* (hd . rest) body ...)
=>
(alet hd (alet* rest body ...))
```

Sequential conditional bindings.
