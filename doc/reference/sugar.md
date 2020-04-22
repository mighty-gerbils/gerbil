# Common Syntactic Sugar

The `:std/sugar` library provides common syntactic sugar and is used
throughout the standard library. Note that this module has no runtime
footprint, it only defines macros.

::: tip To use the bindings from this module:
```scheme
(import :std/sugar)
```
:::

## defrule
```scheme
(defrule (name <pattern> ...) [<condition>] <expansion>)
```

For the simplest macros that fit with a single expansion rule,
`defrule` provides a short-hand compared to writing a `defrules` with a single rewrite rule.

## try
```scheme
(try
  body ...
  [<catch-clause> ...]
  [<finally-clause>])

catch-clause:
  (catch predicate => K)          ; K is a continuation function of 1 argument
  (catch (predicate var) expr ...)
  (catch (var) expr ...)
  (catch _ expr ...)

finally-clause:
  (finally expr ...)
```

Evaluates body with an exception catcher and an unwind finalizer.

## with-destroy
```scheme
(with-destroy obj body ...)
```

Evaluates body with an unwind finalizer that invokes `{destroy obj}`.

## defmethod/alias
```scheme
(defmethod/alias {method (alias ...) type}
  body ...)
```

Defines a method with one or more binding aliases

## using
```scheme
(using obj <method-spec> ...)
=> (begin (using-method obj <method-spec>) ...)

(using-method obj method-id)
(using-method obj (method-id method-name))
=> (def method-id (checked-bound-method-ref o 'method-name))
```

Defines local procedures for bound methods of an object.
This is very useful for avoiding method dispatch if methods of an object are
used multiple times within the lexical scope.

## with-methods with-class-methods with-class-method
```
(with-methods obj <method-spec> ...)
=> (begin
     (def klass (object-type obj))
     (with-class-methods klass <method-spec> ...))

(with-class-methods klass <method-spec> ...)
=> (begin
     (with-class-method klass <method-spec>) ...)

(with-class-method klass <method-spec>)
=> (def method-id (or (find-method klass 'method-name) (error ...))) ...)

method-spec:
  method-name             ; method-id is the identifier to resolve and bind
  (method-id method-name) ; method-id is the identifier to bind, resolving method-name
```

Defines local procedures for methods of an object (class).
This is very useful to avoid method dispatch _and_ implicit allocation from method application
if the methods of an object (class) are used multiple times within the lexical scope.

The difference from `using` is that methods are not _bound_ to an object, and you thus have
to pass the receiver as first argument to the method.
The advantage over `using` is that there is no implicit allocation for collecting arguments to
apply the bound closure of the method.

## while
```scheme
(while test body ...)
```

Evaluates body in a loop while the test expression evaluates to true.

## until
```scheme
(until test body ...)
```

Evaluates body in a loop until the test expression evaluates to true.

## assert!
```scheme
(assert! expr [message])
```

Raises an error when the expression evaluates to true.

## hash
```scheme
(hash (key val) ...)
```

Construct a hash table; the keys are quasiquoted while the values are evaluated.


## hash-eq
```scheme
(hash-eq (key val) ...)
```

Like `hash`, but constructs hash-eq table.

## hash-eqv
```scheme
(hash-eqv (key val) ...)
```

Like `hash`, but constructs hash-eqv table.

## let-hash
```scheme
(let-hash hash body ...)
```

Evaluates the body within a scope where identifier references starting with a `.`
resolve as hash references.

More specifically, the macro rebinds `%%ref` so that identifiers starting with a `.`
are resolved with the following rules:
- `.x  -> (hash-ref hash 'x)` ; strong accessor
- `.?x -> (hash-get hash 'x)` ; weak accessor
- `..x -> (%%ref .x)`         ; escape

## awhen
```scheme
(awhen (id test) body ...)
```

Anaphoric `when`. Evaluates and binds *test* to *id*. Evaluates *body ...* if *test* is not `#f`.

## chain
``` scheme
(chain expr (expression) ...)

<expression>:
  (proc arg* ...)             ; must contain exactly one <> symbol
  (var (proc arg1 arg* ...))  ; var supports destructuring

(chain <> (expression) ...)
=> (lambda (var) (chain var (expression) ...))

(chain (pattern <> expr) (expression) ...)
=>  (lambda (var) (with ((pattern var)) (chain expr (expression) ...)))
```

`chain` rewrites passed expressions by passing the previous expression
into the position of the `<>` diamond symbol. In case a previous expression
should be used in a sub-expression, or multiple times, the expression can be
prefixed with a variable (supports destructuring).

When the first expression is a `<>` or `([pattern] <> expr)`,
chain will return a unary lambda.

::: tip Examples:
``` scheme
> (chain "stressed"
         (string->list <>)
         (reverse <>)
         (list->string <>)
         (string-append "then have some " <>))
"then have some desserts"


(chain (random-integer 10)
       (num (if (> num 5) num 0)))
7


> (def foobar
    (chain <>
      ([_ . rest] (map number->string rest))
      (string-join <> ", ")
      (string-append <> " :)")))


> (foobar [0 1 2])
"1, 2 :)"
```
:::
