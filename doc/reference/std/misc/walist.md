# Wrapped A-List utilities
Utilities for using wrapped alists: objects that wrap an [alist](alist.md)
to provide an API similar to that of mutable hash-tables.

The [alist](alist.md) (association list) API offers a pure functional way
to implement tables of key-value pairs. It is efficient for small tables,
or ones seldom used or only in a sequential way, though its performance will
degrade linearly with the size of the table.

Now, the [alist](alist.md) module offers a mutable variant of its API,
but it breaks down in the case of an empty `alist`, represented as
the empty list `'()`, that cannot be mutated into containing
more key-value pairs.

Instead, a `walist` wraps an `alist` in an object, that can easily
an empty (a)list as well as a non-empty one. A `walist` also remembers
which of the equality predicates `eq?`, `eqv?` or `equal?` (the default)
used to identify and distinguish keys, unlike alists that rely on
the user using the correct predicate.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/walist)
```
:::

## walist walistq walistv walist! walistq! walistv!
```
(walist alist) -> walist
(walistq alistq) -> walistq
(walistv alistv) -> walistv
(walist! alist!) -> walist!
(walistq! alistq!) -> walistq!
(walistv! alistv!) -> walistv!
```

Six structs are defined:
 - `walist` for to contain pure alists using `equal?` as predicate.
 - `walistq` for to contain pure alists using `eq?` as predicate.
 - `walistv` for to contain pure alists using `eqv?` as predicate.
 - `walist!` for to contain mutable alists using `equal?` as predicate.
 - `walistq!` for to contain mutable alists using `eq?` as predicate.
 - `walistv!` for to contain mutable alists using `eqv?` as predicate.

Each has a single field `alist`, containing an `alist` using said predicate.

Each struct type has a same-named unary constructor that can also be used
in a `match` pattern to access the `alist` field.

Note that you should not initialize a mutable instance with a non-empty
quoted list because it is an error to mutate such a list. Thus
`(walist! '((a . 1)))` is incorrect but `(walist! [['a . 1]])` is correct.

::: tip Examples:
``` scheme
> (def w (walist '((a . 1) (b . 2))))
> (match w ((walist l) (assoc 'b l))
2
> (def w (walistq! [['a . 1] ['b . 2]]))
> (match w ((walist l) (assoc 'b l))
2
```
:::

::: warning Class hierarchy
NB: In this module, `walistq` and `walistv` inherit from `walist`,
and `walist!`, `walistq!` and `walistv!` respectively inherit from
`walist`, `walistq` and `walistv`.
This makes for a simpler API without a large hierarchy of abstract classes
for each kind of alist pure or mutable with one predicate or the other.
But this practical simplicity can introduce quirks in the "logical theory"
of `walist`: for instance, a `(walist a)` pattern in a `match` statement
will match an instance of any of the walist types, and so will the `walist?`
predicate below accept any of them.
:::

## make-walist make-walistq make-walistv make-walist! make-walistq! make-walistv!
```
(make-walist alist) -> walist
(make-walistq alistq) -> walistq
(make-walistv alistv) -> walistv
(make-walist! alist!) -> walist!
(make-walistq! alistq!) -> walistq!
(make-walistv! alistv!) -> walistv!
```

These functions are thin wrappers around constructors of the respective types.
(Constructors themselves are macros and not first-class functions.)

Note that neither the constructors nor the wrapper functions do any validation
of the alist argument to be wrapped. Various errors may happen later when
trying to process a walist that wraps the wrong kind of value instead of an alist.

## walist? walistq? walistv? walist!? walistq!? walistv!?
```
(walist? x) -> bool
(walistq? x) -> bool
(walistv? x) -> bool
(walist!? x) -> bool
(walistq!? x) -> bool
(walistv!? x) -> bool
```

These predicates each recognize whether their argument is an instance of
the given struct type.

Note that due to our choice of simplified inheritance hierarchy,
`walist?` will also recognize instances of all five other struct types,
`walistq?` will also recognize instances of `walistq!` and
`walistv?` will also recognize instances of `walistv!`.

::: tip Examples:
``` scheme
> (def w (walist '((a . 1) (b . 2))))
> (walist? w)
#t
> (walistq!? w)
#f
> (walist? "hello world")
#f
> (walist? '((a . 1) (b . 2)))
#f
> (import :std/generic)
> (type-of w)
std/misc/walist#walist::t

> (def wq! (walistq! [['a . 1] ['b . 2]]))
> (walistq!? wq!)
#t
> (walist? wq!)
#t
> (walistq? wq!)
#t
> (eq? (type-of wq!) (type-of w))
#f
> (eq? (type-of wq!) 'std/misc/walist#walistq!::t)
#t
> (eq? (type-of wq!) 'std/misc/walist#walist::t)
#f
```
:::

## walist-alist walist->alist
```
(walist-alist w) -> alist
(walist->alist w) -> alist
```

The function `walist-alist` (or its alias `walist->alist`) takes a `walist`
(or an instance of any of its variant types) and returns
the `alist` content being wrapped.

::: tip Examples:
``` scheme
> (walist-alist (walist '((a . 1) (b . 2))))
((a . 1) (b . 2))
> (walist->alist (walistv! [['c . 3] ['d . 4]]))
((c . 3) (d . 4))
```
:::

## walist-alist-set!
```
(walist-alist-set! w a) ->
(set! (walist->alist w) a) ->
```

This function modifies the `alist` wrapped by an instance of any of the
`walist` variant types. It also enables the associated short-hand `set!` syntax.
The return value is not specified.

Note that `walist`, `walistv` and `walistq` have an otherwise pure API,
and that using this setter breaks this purity by introducing a side-effect;
be careful to avoid using this setter function in a context where users
expect the values they use to not be side-effected. On the other hand,
no such assumption exists for `walist!`, `walistv!` and `walistq!` and
you may freely use this setter with instances of those types.

::: tip Examples:
``` scheme
> (def w (walistv '()))
> (walist-alist w)
()
> (walist-alist-set! w '((a . 1) (b . 2)))
> (walist-alist w)
((a . 1) (b . 2))
> (set! (walist-alist w) '((c . 3) (d . 4)))
> (walist-alist w)
((c . 3) (d . 4))
```
:::

## walist-acons walistq-acons walistv-acons
```
(walist-acons walist k v) -> walist
(walistq-acons walistq k v) -> walistq
(walistv-acons walistv k v) -> walistv
{acons w k v} -> walist
```

The functions `walist-acons`, `walistq-acons` and `walistv-acons`
respectively take a walist of the corresponding type and return a
new instance of that pure type wrapping a new alist where that
extends the old instance's old alist with the key-value pair `[k . v]`.

The generic function `{acons}` will work on any of the three pure `walist`
variants and return a new `walist` of the same type.

Note that these functions might "work" without error on the mutable variants,
but then bad consequences will happen later if the contents are mutated
while some consumer expects the instance of the pure type expect
their contents to remain constant.

::: tip Examples:
``` scheme
> (def w (walistv '()))
> w
#<walistv #375 alist: ()>
> (def w2 (walistv-acons w 'a 1))
> w2
#<walistv #376 alist: ((a . 1))>
> (walist-alist w
()
> (walist-alist w)
((a . 1))
```
:::

## walist-acons!
```
(walist-acons! walist! k v) ->
{acons! walist! k v} ->
```

`walist-acons!` takes an instance of `walist!`, `walistv!` or `walistq!` and
modifies the instance's alist to add the `[k . v]` key-value pair in front.
The return value is unspecified.

The generic function `{acons!}` will also work on any of these three mutable
`walist` variants but not the immutable ones, to achieve the same effect.

Note that the `walist-acons!` function (not the generic method `{acons!}`)
might fail to raise an error if called on a pure variant, but bad consequences
may follow later for violating a consumer's assumption of purity.

::: tip Examples:
``` scheme
> (def w (walistq! '()))
> (walist-acons! w 'a 1)
> {acons! w 'b 2}
> (walist-alist w)
((b . 2) (a . 1))
```
:::

## walist-key? walistq-key? walistv-key?
```
(walist-key? walist key) -> bool
(walistq-key? walistq key) -> bool
(walistv-key? walistv key) -> bool
{key? walist* key} -> bool
```

`walist-key?` takes an instance of `walist` or `walist!` and a `key` and returns true
if the `key` is present in a key-value pair in the `walist`'s alist.

`walistq-key?` takes an instance of `walistq` or `walistq!` and a `key` and returns true
if the `key` is present in a key-value pair in the `walistq`'s alist.

`walistv-key?` takes an instance of `walistv` or `walistv!` and a `key` and returns true
if the `key` is present in a key-value pair in the `walistv`'s alist.

These functions will not raise an error if called on an instance of the wrong type.
On the other hand, the generic function `{key?}` will always work correctly
on any variant of `walist`.

::: tip Examples:
``` scheme
> (def w (walistq! [['a . 1] ['b . 2]]))
> (walistq-key? w 'b)
#t
> (walistq-key? w 'c)
#f
> {key? w 'a}
#t
```
:::

## walist-get walistq-get walistv-get
```
(walist-get walist key) -> value
(walistq-get walistq key) -> value
(walistv-get walistv key) -> value
{get walist* key} -> value
```

`walist-get` takes an instance of `walist` or `walist!` and a `key` and returns
the value associated to that `key` in the `walist`'s alist, or
raises an error if the there is no matching key-value pair in the alist.

`walistq-get` takes an instance of `walistq` or `walistq!` and a `key` and returns
the value associated to that `key` in the `walistq`'s alist, or
raises an error if the there is no matching key-value pair in the alist.

`walistv-get` takes an instance of `walistv` or `walistv!` and a `key` and returns
the value associated to that `key` in the `walistv`'s alist, or
raises an error if the there is no matching key-value pair in the alist.

These functions will not raise an error if called on an instance of the wrong type.
On the other hand, the generic function `{get}` will always work correctly
on any variant of `walist`.

::: tip Examples:
``` scheme
> (def w (walistq! [['a . 1] ['b . 2]]))
> (walistq-get w 'b)
2
> (walistq-get w 'c)
ERROR
> {get w 'a}
#t
```
:::

## walist-assoc walistq-assoc walistv-assoc
```
(walist-assoc walist key) -> key-value-pair-or-false
(walistq-assoc walistq key) -> key-value-pair-or-false
(walistv-assoc walistv key) -> key-value-pair-or-false
{assoc walist* key} -> key-value-pair-or-false
```

`walist-assoc` takes an instance of `walist` or `walist!` and a `key` and returns
the first key-pair associated to that `key` in the `walist`'s alist, or
`#f` if there is no matching key-value pair in the alist.

`walistq-assoc` takes an instance of `walistq` or `walistq!` and a `key` and returns
the first key-pair associated to that `key` in the `walistq`'s alist, or
`#f` if there is no matching key-value pair in the alist.

`walistv-assoc` takes an instance of `walistv` or `walistv!` and a `key` and returns
the first key-pair associated to that `key` in the `walistv`'s alist, or
`#f` if there is no matching key-value pair in the alist.

These functions will not raise an error if called on an instance of the wrong type.
On the other hand, the generic function `{assoc}` will always work correctly
on any variant of `walist`.

::: tip Examples:
``` scheme
> (def w (walistv! [['a . 1] ['b . 2]]))
> (walistv-assoc w 'b)
(b . 2)
> (walistv-assoc w 'c)
#f
> {assoc w 'a}
(a . 1)
```
:::

## walist-put walistv-put walistq-put
```
(walist-put walist key value) -> walist
(walistq-put walistq key value) -> walistq
(walistv-put walistv key value) -> walistv
{put walist* key value} -> walist*
```

`walist-put` takes an instance of `walist`, a `key` and a `value`
and returns a new instance of `walist` wrapping a new alist
where the key-value pair `[key . value]` replaces the first key-value
pair containing `key` if any, or else is placed in front of the alist.

`walistq-put` and `walistv-put` work similarly for the types
`walistq` and `walistv`.

These functions will not raise an error if called on an instance of the wrong type.
On the other hand, the generic function `{put}` will always work correctly
on any variant of `walist`.

::: tip Examples:
``` scheme
> (def w (walist '((a . 1) (b . 2))))
> w
#<walist #378 alist: ((a . 1) (b . 2))>
> (walist-put w 'b 3)
#<walist #379 alist: ((a . 1) (b . 3))>
> {put w 'c 4}
#<walist #380 alist: ((c . 4) (a . 1) (b . 2))>
```
:::

## walist!-put! walistv!-put! walistq!-put!
```
(walist!-put! walist! key value) ->
(walistq!-put! walistq! key value) ->
(walistv!-put! walistv! key value) ->
{put! walist* key value} ->
```

`walist!-put!` takes an instance of `walist!`, a `key` and a `value`
and modifies the instance in place and/or the alist it wraps so the
key-value pair `[key . value]` will replace the first key-value
pair containing `key` if any, or else be placed in front of the alist.

`walistq!-put!` and `walistv!-put!` work similarly for the types
`walistq!` and `walistv!`.

These functions will raise an error if called on an instance of the wrong type.
The generic function `{put}` will always work correctly
on any mutable variant of `walist!`.

::: tip Examples:
``` scheme
> (def w (walistv! [['a . 1] ['b . 2]]))
> (walist!-put! w 'b 3)
> {put! w 'c 4}
> (walist-alist w)
((c . 4) (a . 1) (b . 3))
```
:::

## walist-remove walistv-remove walistq-remove
```
(walist-remove walist key) -> walist
(walistq-remove walistq key) -> walistq
(walistv-remove walistv key) -> walistv
{remove walist* key} -> walist*
```

`walist-remove` takes an instance of `walist` and a `key`
and returns a new instance of `walist` wrapping a new alist
where the first key-value pair associated to `key`, if any, has been removed.

`walistq-remove` and `walistv-remove` work similarly for the types
`walistq` and `walistv`.

These functions will not raise an error if called on an instance of the wrong type.
On the other hand, the generic function `{remove}` will always work correctly
on any variant of `walist`.

::: tip Examples:
``` scheme
> (def w (walist '((a . 1) (b . 2))))
> w
#<walist #400 alist: ((a . 1) (b . 2))>
> (walist-remove w 'b 3)
#<walist #401 alist: ((a . 1))>
> {remove w 'a}
#<walist #402 alist: ()>
```
:::

## walist!-remove! walistv!-remove! walistq!-remove!)
```
(walist!-remove! walist! key value) ->
(walistq!-remove! walistq! key value) ->
(walistv!-remove! walistv! key value) ->
{remove! walist* key value} ->
```

`walist!-remove!` takes an instance of `walist!` and a `key`
and modifies the instance and/or its alist in place to remove
the first key-value pair associated to `key`, if any.
The return value is unspecified.

`walistq!-remove!` and `walistv!-remove!` work similarly for the types
`walistq!` and `walistv!`.

These functions will raise an error if called on an instance of the wrong type.
The generic function `{remove!}` will always work correctly
on any mutable variant of `walist!`.

::: tip Examples:
``` scheme
> (def w (walistq! [['a . 1] ['b . 2]]))
> (walistq!-remove! w 'a)
> (walist-alist w)
((b . 2))
> {remove! w 'b}
> (walist-alist w)
()
```
:::
