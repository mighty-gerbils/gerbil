# Generic Accessors and Mutators
The `:std/ref` library provides generic accessors and mutators interface and can be used to access/mutate existing types as well as ones defined by user.

::: tip usage
(import :std/ref)
:::

## ref
::: tip usage
```
(ref obj n)
```
:::
Returns element in the position n from obj. If obj is hash-table, returns the value associated with key n.

## ref-set!
::: tip usage
```
(ref-set! obj n val)
```
:::
Puts element val at the position n in obj.
If obj is hash, associates val with key n.

## ~
::: tip usage
```
(~ obj n)
```
:::
Same as `(ref obj n)`.

## ~-set!
::: tip usage
```
(~-set! obj n val)
```
:::
Same as `(ref-set! obj n val)`.

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

