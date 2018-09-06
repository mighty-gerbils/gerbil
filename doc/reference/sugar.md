# Common Syntactic Sugar

The `:std/sugar` library provides common syntactic sugar and is used
throughout the standard library. Note that this module has no runtime
footprint, it only defines macros.

::: tip usage
(import :std/sugar)
:::

## try

::: tip usage
```
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
:::

Evaluates body with an exception catcher and an unwind finalizer.

## with-destroy

::: tip usage
```
(with-destroy obj body ...)
```
:::

Evaluates body with an unwind finalizer that invokes `{destroy obj}`.


## defmethod/alias

::: tip usage
```
(defmethod/alias {method (alias ...) type}
  body ...)
```
:::

Defines a method with one or more binding aliases

## using

::: tip usage
```
(using obj <method-spec> ...)
=> (begin (using-method obj <method-spec>) ...)

(using-method obj method-id)
(using-method obj (local-id method-id))

```
:::

Defines local procedures for methods of an object.
This is very useful for avoiding method dispatch if methods of an object are
used multiple times within the lexical scope.

## while

::: tip usage
```
(while test body ...)
```
:::

Evaluates body in a loop while the test expression evaluates to true.

## until

::: tip usage
```
(until test body ...)
```
:::

Evaluates body in a loop until the test expression evaluates to true.

## assert!

::: tip usage
```
(assert! expr [message])
```
:::

Raises an error when the expression evaluates to true.

## hash

::: tip usage
```
(hash (key val) ...)
```
:::

Construct a hash table; the keys are quasiquoted while the values are evaluated.


## hash-eq

::: tip usage
```
(hash-eq (key val) ...)
```
:::

Like `hash`, but constructs hash-eq table.

## hash-eqv

::: tip usage
```
(hash-eqv (key val) ...)
```
:::

Like `hash`, but constructs hash-eqv table.

## let-hash

::: tip usage
```
(let-hash hash body ...)
```
:::

Evaluates the body within a scope where identifier references starting with a `.`
resolve as hash references.

More specifically, the macro rebinds `%%ref` so that identifiers starting with a `.`
are resolved with the following rules:
- `.x  -> (hash-ref hash 'x)` ; strong accessor
- `.?x -> (hash-get hash 'x)` ; weak accessor
- `..x -> (%%ref .x)`         ; escape
