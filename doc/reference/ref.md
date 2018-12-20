# Generic Accessors and Mutators
The `:std/ref` library provides generic accessors and mutators interface and can be used to access/mutate existing types as well as ones defined by user.

::: tip usage
(import :std/ref)
:::

## ref
::: tip usage
```
(ref obj n)
(ref obj n1 n2 ... n)
```
:::
Returns element in the position n from obj.
If obj is hash-table, returns the value associated with key n.
If multiple args provided, `(ref obj n1 n2 ... n)` expands to `(ref ... (ref (ref obj n1) n2) ... n)`.

## ref-set!
::: tip usage
```
(ref-set! obj n val)
(ref-set! obj n1 val1 n2 val2 ... n val)
(set! (ref obj n ...) val)
```
:::
Puts element val at the position n in obj.
If obj is hash, associates val with key n.
If multiple args provided, `(ref-set! obj n1 val1 n2 val2 ... n val)` expands to
`(ref-set! ... (ref-set! (ref-set! obj n1 val1) n2 val2) ... n val)`.

Also, ref-set! can be used with set! mutator as well.

## ~
::: tip usage
```
(~ obj n)
(~ obj n1 n2 ... n)
```
:::
Same as `ref`.

## ~-set!
::: tip usage
```
(~-set! obj n val)
(~-set! obj n1 val1 n2 val2 ... n val)
(set! (~ obj n ...) val)
```
:::
Same as `ref-set!`.

## :ref
::: tip usage
```
(defmethod (:ref (obj <type>) (n <type>))
  (body ...))
```
:::
Generic ref interface, can be used to add work with user-defined types.

## :set!
::: tip usage
```
(defmethod (:set! (obj <type>) (n <type>) (val <type>))
  (body ...))
```
:::
Generic ref-set! interface, can be used to add work with user-defined types.

