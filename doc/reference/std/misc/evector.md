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

The functions with names starting with `&` are fast but unsafe variants
that do not do checking, but trust you to provide arguments of the correct
types and sizes, with bad consequences if you don’t.

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
The `fill-pointer` must be a non-negative exact integer no greater than the length of the `vector`.

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
```
(check-argument-evector x)
```
Raise an error if `x` is not an `evector`.

### vector->evector &vector->evector
```
(vector->evector v)
(&vector->evector v)
```

Convert a `vector` to an `evector`.
Beware that the two structures will share state until the `evector` grows and no further.

### evector->vector &evector->vector
```
(evector->vector v)
(&evector->vector v)
```

Convert an `evector` to an `vector` containing just
the initialized elements before the `fill-pointer`.
The `vector` will not share structure with the `evector`.

### list->evector &list->evector
```
(list->evector l)
(&list->evector l)
```

Convert a `list` to an `evector`.

### evector->list &evector->list
```
(vector->evector v)
(&vector->evector v)
```

Convert an `evector` to an `vector` containing just
the initialized elements before the `fill-pointer`.
The `vector` will not share structure with the `evector`.

### evector-ref &evector-ref
```
(evector-ref e i) => value
(&evector-ref e i) => value
```

Given an evector `e` and an index `i`, return the value at index `i`.

`evector-ref` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&evector-ref` will behave in unspecified way if these prerequisites are not met.

### evector-set! &evector-set! evector-ref-set! &evector-ref-set!
```
(evector-set! e i v) => unspecified
(evector-ref-set! e i v) => unspecified
(&evector-set! e i v) => unspecified
(&evector-ref-set! e i v) => unspecified
```

Given an evector `e`, an index `i` below its `fill-pointer`, and a value `v`,
set the value of the evector at the given index to the given value.

`evector-set!` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&evector-set!` will behave in unspecified way if these prerequisites are not met.

`evector-ref-set!` and `&evector-ref-set!` aliases that enable use of the `set!` macro,
as in `(set! (evector-ref e i) v)`.

### extend-evector! &extend-evector!
```scheme
(extend-evector! e ll initial-value: (iv #f))
(&extend-evector! e ll iv)
```

Extend the evector `e` to have length at least `ll`,
using the initial value `iv` for new vector values.

### evector-fill-pointer &evector-fill-pointer
```scheme
(evector-fill-pointer e) => fixnum
(&evector-fill-pointer e) => fixnum
```

Return the current value of the fill-pointer for an evector `e`.

### evector-fill-pointer-set! &evector-fill-pointer-set!
```scheme
(evector-fill-pointer-set! e fp initial-value: (iv #f) extend: (extend #t)) => fixnum or bool
(&evector-fill-pointer-set! e fp iv extend) => fixnum or bool
```

Given an evector `e`, a new value `fp` for its fill-pointer,
an initial value `iv` for new elements, and a boolean or fixnum `extend`,
try to set the fill-pointer of `e` to `fp`:
- If `fp` is greater than the length of the supporting of `e`,
  but `extend` is `#f` or a negative fixnum, then don’t set the fill-pointer,
  and instead return `#f`.
- If `fp` is no greater than the length of the supporting vector of `e`,
  set the fill-pointer of `e` to `fp`, and return `fp`.
- If `extend` is `#t`, extend the evector using an exponential backoff strategy
  guaranteeing a constant-time space and time overhead factor over non-extensible vectors,
  set the fill-pointer to `fp` and return `fp`.
- If `extend` is a non-negative fixnum, extend the evector to have length `(+ fp extend)`,
  set the fill-pointer to `fp` and return `fp`.

### evector-push! &evector-push!
```scheme
(evector-push! e x initial-value: (iv #f) extend: (extend #t)) => unspecified
(&evector-push! e x iv extend) => unspecified
```

Try to push value `x` at the end of the evector `e`:
Increment the fill-pointer of `e` as if using `evector-extend!`
with initial value `iv` and argument `extend`;
if the fill-pointer could be incremented, set the value at last index to `x`.

### memoize-recursive-sequence
```scheme
(memoize-recursive-sequence fun init: (init '()) cache: (cache (list->evector init))) => function
```
Define a function `f` from a non-negative fixnum `n`
that caches its initial values (zero-based) in extensible vector `cache`,
that by default is initialized from list `init`, that defaults to the empty list.

The function body `fun` may make recursive calls to the outer function `f`
with strictly lower values of the integer argument `n`;
the `cache` can be initialized with the initial values for `f`;
it will be consulted rather than calling `fun`, and
entries filled after `fun` returns.

::: tip Examples:
```scheme
> (def fibonacci
    (memoize-recursive-sequence (λ (n) (+ (fibonacci (- n 1)) (fibonacci (- n 2))))
       init: '(0 1)))
> (fibonacci 8)
21
> (def fact-e (list->evector '(1)))
> (def fact (memoize-recursive-sequence (λ (n) (* n (fact (1- n)))) cache: fact-e))
> (fact 7)
5040
> (subvector (evector->vector fact-e) 3 8)
#(6 24 120 720 5040)
```
:::

## ebytes
### make-ebytes
```scheme
(make-ebytes u8vector fill-pointer) => ebytes
```

Create an `ebytes` from initial values for the supporting `u8vector` and the `fill-pointer`.
The `fill-pointer` must be a non-negative exact integer no greater than the length of the `u8vector`.

Beware that the `u8vector` and the `ebytes` will share side-effects until the `ebytes` grows;
expected use is that ownership of the `u8vector` is transfered to the new `ebytes`.

::: tip Examples:
```scheme
> (make-ebytes #u8(1 2 3 0) 3)
```
:::

### ebytes?
```scheme
(ebytes? x) => bool
```
Recognize an `ebytes`.

### check-argument-ebytes
```
(check-argument-ebytes x)
```
Raise an error if `x` is not an `ebytes`.

### bytes->ebytes &bytes->ebytes
```
(bytes->ebytes u8vector)
(&bytes->ebytes u8vector)
```

Convert a `u8vector` to an `ebytes`.
Beware that the two structures will share state until the `ebytes` grows and no further.

### ebytes->bytes &ebytes->bytes
```
(ebytes->bytes e)
(&ebytes->bytes e)
```

Convert an `ebytes` to a `u8vector` containing just
the initialized elements before the `fill-pointer`.
The `bytes` will not share structure with the `ebytes`.

### string->ebytes &string->ebytes
```
(string->ebytes s)
(&string->ebytes s)
```

Convert a `string` to an `ebytes` containing just
the initialized elements before the `fill-pointer`,
using utf8 to encode the string into bytes.

### ebytes-ref &ebytes-ref
```
(ebytes-ref e i) => value
(&ebytes-ref e i) => value
```
Given an ebytes `e` and an index `i`, return the byte at index `i`.

`ebytes-ref` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&ebytes-ref` will behave in unspecified way if these prerequisites are not met.

### ebytes-set! &ebytes-set! ebytes-ref-set! &ebytes-ref-set!
```
(ebytes-set! e i v) => unspecified
(ebytes-ref-set! e i v) => unspecified
(&ebytes-set! e i v) => unspecified
(&ebytes-ref-set! e i v) => unspecified
```

Given an ebytes `e`, an index `i` below its `fill-pointer`, and a byte value `v`,
set the value of the ebytes at the given index to the given value.

`ebytes-set!` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&ebytes-set!` will behave in unspecified way if these prerequisites are not met.

`ebytes-ref-set!` and `&ebytes-ref-set!` aliases that enable use of the `set!` macro,
as in `(set! (ebytes-ref e i) v)`.

### extend-ebytes! &extend-ebytes!
```scheme
(extend-ebytes! e ll initial-value: (iv #f))
(&extend-ebytes! e ll iv)
```

Extend the ebytes `e` to have length at least `ll`,
using the initial value `iv` for new bytes values.

### ebytes-fill-pointer
```scheme
(ebytes-fill-pointer e) => fixnum
(&ebytes-fill-pointer e) => fixnum
```

Return the current value of the fill-pointer for an ebytes `e`.

### ebytes-fill-pointer-set!
```scheme
(ebytes-fill-pointer-set! e fp initial-value: (iv #f) extend: (extend #t)) => fixnum or bool
(&ebytes-fill-pointer-set! e fp iv extend) => fixnum or bool
```

Given an ebytes `e`, a new value `fp` for its fill-pointer,
an initial value `iv` for new elements, and a boolean or fixnum `extend`,
try to set the fill-pointer of `e` to `fp`:
- If `fp` is greater than the length of the supporting of `e`,
  but `extend` is `#f` or a negative fixnum, then don’t set the fill-pointer,
  and instead return `#f`.
- If `fp` is no greater than the length of the supporting bytes of `e`,
  set the fill-pointer of `e` to `fp`, and return `fp`.
- If `extend` is `#t`, extend the ebytes using an exponential backoff strategy
  guaranteeing a constant-time space and time overhead factor over non-extensible bytess,
  set the fill-pointer to `fp` and return `fp`.
- If `extend` is a non-negative fixnum, extend the ebytes to have length `(+ fp extend)`,
  set the fill-pointer to `fp` and return `fp`.

### ebytes-push! &ebytes-push!
```scheme
(ebytes-push! e x initial-value: (iv #f) extend: (extend #t)) => unspecified
(&ebytes-push! e x iv extend) => unspecified
```

Try to push value `x` at the end of the ebytes `e`:
Increment the fill-pointer of `e` as if using `ebytes-extend!`
with initial value `iv` and argument `extend`;
if the fill-pointer could be incremented, set the value at last index to `x`.

## ebits
### make-ebits
```scheme
(make-ebits u8vector fill-pointer) => ebits
```

Create an `ebits` from initial values for the supporting `u8vector` and the `fill-pointer`.
The `fill-pointer` must be a non-negative exact integer no greater than the length of the `u8vector`.

Bits are stored in `u8vector` in a little endian way:
i.e. bit 0 is the low-order bit of byte 0, bit 7 is the high-order bit of byte 0,
bit 8 is the low-order bit of byte 1, etc.

Beware that the `u8vector` and the `ebits` will share side-effects until the `ebits` grows;
expected use is that ownership of the `u8vector` is transfered to the new `ebits`.

::: tip Examples:
```scheme
> (make-ebits #u8(1 2 3 0) 20)
```
:::

### ebits?
```scheme
(ebits? x) => bool
```
Recognize an `ebits`.

### check-argument-ebits
```
(check-argument-ebits x)
```
Raise an error if `x` is not an `ebits`.

### bits->ebits &bits->ebits
```
(bits->ebits u8vector b l)
(&bits->ebits u8vector b l)
```

Convert a `exact-integer` to an `ebits` of given length `l`,
where the bits of the `ebits` will be those of the integer, in little-endian order.

### ebits->bits &ebits->bits
```
(ebits->bits e)
(&ebits->bits e)
```

Convert an `ebits` to an `exact-integer` containing just
the initialized bits before the `fill-pointer`, in little-endian order.

### ebits-set? &ebits-set?
```
(ebits-set? e i) => bool
(&ebits-set? e i) => bool
```

Given an ebits `e` and an index `i`, return true if the bit at index `i` is set.

### ebits-ref &ebits-ref
```
(ebits-ref e i) => value
(&ebits-ref e i) => value
```
Given an ebits `e` and an index `i`, return the bit at index `i`.

`ebits-ref` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&ebits-ref` will behave in unspecified way if these prerequisites are not met.

### ebits-set! &ebits-set! ebits-ref-set! &ebits-ref-set!
```
(ebits-set! e i v) => unspecified
(ebits-ref-set! e i v) => unspecified
(&ebits-set! e i v) => unspecified
(&ebits-ref-set! e i v) => unspecified
```

Given an ebits `e`, an index `i` below its `fill-pointer`, and a bit value `v`,
set the value of the ebits at the given index to the given value.

`ebits-set!` will check that the arguments are of the correct types and
that `i` is less than the `fill-pointer` of `e`, whereas
`&ebits-set!` will behave in unspecified way if these prerequisites are not met.

`ebits-ref-set!` and `&ebits-ref-set!` aliases that enable use of the `set!` macro,
as in `(set! (ebits-ref e i) v)`.

### extend-ebits! &extend-ebits!
```scheme
(extend-ebits! e ll initial-value: (iv #f))
(&extend-ebits! e ll iv)
```

Extend the ebits `e` to have length at least `ll`,
using the initial value `iv` for new bits values.

### ebits-fill-pointer
```scheme
(ebits-fill-pointer e) => fixnum
(&ebits-fill-pointer e) => fixnum
```

Return the current value of the fill-pointer for an ebits `e`.

### ebits-fill-pointer-set!
```scheme
(ebits-fill-pointer-set! e fp initial-value: (iv #f) extend: (extend #t)) => fixnum or bool
(&ebits-fill-pointer-set! e fp iv extend) => fixnum or bool
```

Given an ebits `e`, a new value `fp` for its fill-pointer,
an initial value `iv` for new elements, and a boolean or fixnum `extend`,
try to set the fill-pointer of `e` to `fp`:
- If `fp` is greater than the length of the supporting of `e`,
  but `extend` is `#f` or a negative fixnum, then don’t set the fill-pointer,
  and instead return `#f`.
- If `fp` is no greater than the length of the supporting bits of `e`,
  set the fill-pointer of `e` to `fp`, and return `fp`.
- If `extend` is `#t`, extend the ebits using an exponential backoff strategy
  guaranteeing a constant-time space and time overhead factor over non-extensible bitss,
  set the fill-pointer to `fp` and return `fp`.
- If `extend` is a non-negative fixnum, extend the ebits to have length `(+ fp extend)`,
  set the fill-pointer to `fp` and return `fp`.

### ebits-push! &ebits-push!
```scheme
(ebits-push! e x initial-value: (iv #f) extend: (extend #t)) => unspecified
(&ebits-push! e x iv extend) => unspecified
```

Try to push value `x` at the end of the ebits `e`:
Increment the fill-pointer of `e` as if using `ebits-extend!`
with initial value `iv` and argument `extend`;
if the fill-pointer could be incremented, set the value at last index to `x`.
