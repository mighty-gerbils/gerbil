# Extensible Vectors

The `:std/misc/evector` library implements extensible vectors,
that grow as you add elements to them, in the style of Common Lisp extensible vectors.

In this implementation, the underlying vectors double their size
each time they need to grow, guaranteeing constant factor size and time overhead
over having known the correct size initially.
The current implementation does not support shrinking an extensible vector,
but you can extract the non-extensible vector and forget the extensible one when you’re done.

`ebytes` and `ebits` are variants of `evector` specialized for holding
respectively 8-bit bytes and 1-bit bits.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/evector)
```
:::

## evector
### make-evector
```scheme
(make-evector vector fill-pointer) => evector
```

Create an `evector` from initial values for the supporting `vector` and the `fill-pointer`.

Beware that the `vector` and the `evector` will share side-effects until the `evector` grows;
expected use is that ownership of the `vector` is transfered to the new `evector`.

::: tip Examples:
```scheme
> (make-evector #(1 2 3 #f) 3)
```
:::

### evector?
```scheme
(evector? x) => bool
```
Recognize an `evector`.

### check-argument-evector
### vector->evector &vector->evector
### evector->vector &evector->vector
### list->evector &list->evector
### evector->list &evector->list
### evector-ref &evector-ref
### evector-set! &evector-set! evector-ref-set! &evector-ref-set!
### extend-evector! &extend-evector!
### evector-push! &evector-push!
### evector-fill-pointer-set! &evector-fill-pointer-set!
### memoize-recursive-sequence

## ebytes
### make-ebytes
### ebytes?
### check-argument-ebytes
### bytes->ebytes &bytes->ebytes
### string->ebytes &string->ebytes
### ebytes-ref &ebytes-ref
### ebytes-set! &ebytes-set! ebytes-ref-set! &ebytes-ref-set!
### extend-ebytes! &extend-ebytes!
### ebytes-push! &ebytes-push!
### ebytes->bytes &ebytes->bytes
### ebytes-fill-pointer
### ebytes-fill-pointer-set!

## ebits
### make-ebits
### ebits?
### check-argument-ebits
### bits->ebits &bits->ebits
### ebits-set? &ebits-set?
### ebits-ref &ebits-ref
### ebits-set! &ebits-set! ebits-ref-set! &ebits-ref-set!
### extend-ebits! &extend-ebits!
### ebits-push! &ebits-push!
### ebits-fill-pointer-set!
### ebits-fill-pointer
