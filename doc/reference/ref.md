# Generic Accessors and Mutators
The `:std/ref` library provides generic accessors and mutators interface and
can be used to access/mutate existing types as well as ones defined by user.

::: tip To use the bindings from this module:
``` scheme
(import :std/ref)
```
:::

## ref
``` scheme
(ref obj n)           -> any
(ref obj n1 n2 ... n) -> any
```

Returns element in the position `n` from `obj`.
If `obj` is hash-table, returns the value associated with key `n`.
If multiple args provided, `(ref obj n1 n2 ... n)` expands to
`(ref ... (ref (ref obj n1) n2) ... n)`.

::: tip Examples:
``` scheme
> (def lst [[10 20 30]
           #(40 50 60)])
> (ref lst 1 0)
40

> (import :std/sugar)
> (def lst [(hash (a 10) (b 20))])
> (ref lst 0 'b)
20
```
:::

## ~
``` scheme
(~ obj n)           -> any
(~ obj n1 n2 ... n) -> any
```

Alias for `ref`.

## ref-set!
``` scheme
(ref-set! obj n val)           -> void
(ref-set! obj n1 n2 ... n val) -> void
(set! (ref obj n ...) val)     -> void
```

Puts element `val` at the position n in obj.
If obj is hash, associates val with key n.
If multiple args provided, `(ref-set! obj n1 n2 ... nk val)` expands to
`(ref-set! (ref ... (ref obj n1) n2) ... nk-1) nk val)`.

Also, ref-set! can be used with set! mutator as well.

::: tip Examples:
``` scheme
> (def lst [[10 20 30]
           #(40 50 60)])
> (ref-set! lst 1 0 "hi")
> lst
((10 20 30) #("hi" 50 60))
```
:::

## ~-set!
``` scheme
(~-set! obj n val)           -> void
(~-set! obj n1 n2 ... n val) -> void
(set! (~ obj n ...) val)     -> void
```

Alias for `ref-set!`.

## :ref
``` scheme
(defmethod (:ref (obj <type>) (n <type>))
  (body ...))
```

Generic `ref` interface, can be used to add work with user-defined types.

## :set!
``` scheme
(defmethod (:set! (obj <type>) (n <type>) (val <type>))
  (body ...))
```

Generic `ref-set!` interface, can be used to add work with user-defined types.
