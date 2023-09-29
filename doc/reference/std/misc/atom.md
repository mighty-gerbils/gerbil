# Clojure-style Atoms
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/atom)
```
:::

Atoms provide a way to manage shared, synchronous, independent state,
closely following the API defined by [Clojure](https://clojure.org/reference/atoms).

Compared to the Clojure atom API, we:
  - prefix all function names with `atom-`;
  - do not support the meta field and the functions `alter-meta!` or `reset-meta!`;
  - replace Clojure `swap-vals!` and `reset-vals!` by our `swap-values!` and `reset-values!`
    that return values rather than vectors;
  - rename `add-watch` and `remove-watch` to `atom-add-watch!` and `atom-remove-watch!`
    with the `atom-` prefix and the `!` suffix;
  - do not have generic functions that work on multiple kinds of "references"
    but only one set of functions for atoms;
  - also export `atom-increment!` and `atomic-counter` for the common case.

You create an atom with `atom`, and can access its state with `atom-deref`.
Just like Clojure atoms and other references, our atoms support validators:
functions that validate new values.
To change the value of an atom, you can use `atom-swap!` or its variants
`atom-swap-values!`, `atom-reset!`, `atom-reset-values!`,
and for number-valued atoms, `atom-increment!`,
that will atomically change the value to which the atom is set,
by applying a transformation function to the old value
and checking that the atom’s validator accepts the new value.
A lower-level `compare-and-set!` is also provided.
Changes to atoms are always applied in a sequence of disjoint computations,
free of race conditions.

::: warning
Unlike the Clojure implementation, our current implementation does not retry,
though we do not guarantee not to change in the future to match Clojure.
Unlike in Clojure, it is thus acceptable for the change function to have side-effects,
though it is not recommended, in case this behavior changes.
:::

## atom
``` scheme
(atom (initial-value (void)) validator: (validator #f)) -> Atom
```

Creates a new atom, a box that atomically changes value.
If no `initial-value` is provided, `(void)` is used (Clojure has no default initial-value).

A `validator:` keyword argument can specify a validator
(defaults to `#f` which designates a validator that always says "yes").
The validator takes a new value and returns true if it is accepted.
If the validator returns `#f` or throws, the value is rejected and the atom is left unmodified;
furthermore, after releasing the lock and allowing other threads to modify the atom,
an exception is raised for the caller of the modifying function:
either the exception thrown by the validator, if any,
or a `BadArgument` error raised if the validator returned `#f`.

Similar to Clojure’s `atom`.

::: tip Examples:
``` scheme
> (import :std/iter :std/misc/atom)
> (def a (atom 0))
> (def workers (for/collect (i (in-range 100)) (spawn atom-swap! a 1+)))
> (begin (for-each thread-join! workers) (atom-deref a))
100
```
:::

## atom?
``` scheme
(atom? a) -> boolean
```

Returns `#t` if `a` an atom, `#f` otherwise.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (atom? (atom))
#t
> (atom 42)
#<Atom #8>
> (atom? #8)
#t
```
:::

## atom-swap!
``` scheme
(atom-swap! atom function) -> new-value
```

Applies the `function` to the value currently in the `atom`, and,
if it passes the `atom`’s validator (see the `atom` function above),
sets the `atom` to the new value.
Ensures that no other access is made to the `atom` in the middle of a swap.
Returns the new value.

::: tip Examples:
``` scheme
> (def a (atom 3))
> (atom-swap! a (cut * 2 <>))
6
```
:::

## atom-swap-values!
``` scheme
(atom-swap! atom function) -> old-value new-value
```

Similar to `atom-swap!` but returns two values, the old and the new values.
Similar to Clojure’s `swap-vals!` but returns two values rather than a vector of size 2.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 6))
> (atom-swap-values! a (cut * 2 <>))
6
12
```
:::

## atom-reset!
``` scheme
(atom-reset! atom new-value) -> new-value
```

Sets the atom to the provided new value,
if it passes the `atom`’s validator (see the `atom` function above),
Ensures that no other access is made to the atom in the middle of a reset.
Returns the new value.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 42))
> (atom-reset! a 23)
23
> (atom-deref a)
23
```
:::

## atom-reset-values!
``` scheme
(atom-reset-values! atom new-value) -> old-value new-value
```

Similar to `atom-reset!` but returns two values, the old and the new.
Similar to Clojure `atom-reset-vals!` but returns values instead of a vector.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 42))
> (atom-reset-values! a 23)
42
23
> (atom-deref a)
23
```
:::

## atom-compare-and-set!

``` scheme
(atom-compare-and-set! atom oldval newval) -> success?
```

Atomically sets the value of `atom` to `newval` if and only if the
current value of the atom is identical to `oldval`,
and the new value passes the `atom`’s validator (see the `atom` function above).
Returns `#t` if set happened, else `#f`
(but still throws an exception in case of validation error).
Similar to Clojure `compare-and-set!`.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 42))
> (atom-compare-and-set! a 42 23)
#t
> (atom-deref a)
23
> (atom-compare-and-set! a 42 24)
#f
> (atom-deref a)
23
```
:::

## atom-validator

``` scheme
(atom-validator atom) -> validator
```

Access the current atom’s validator, a function that takes a new value as argument
and returns a true value iff the atom will accept that value.
The value `#f` is a stand-in for not doing any validation,
which is equivalent to the function `true` that accepts every value.
Similar to Clojure `get-validator`.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 42 validator: number?))
> (atom-reset! a 1)
1
> (atom-reset! a "foo")
*** ERROR IN with-lock --
*** ERROR IN "misc/atom.ss"@48.29 [BadArgument]: bad argument; expected valid atom value
--- irritants: update-atom! "foo"
```
:::

## atom-validator-set!

``` scheme
(atom-validator-set! atom validator) -> _
```

Modify the current `atom`’s `validator`, a function that takes a new value as argument
and returns a true value iff the `atom` will accept that value.
The value `#f` is a stand-in for not doing any validation,
which is behaviorally equivalent to the function `true` that accepts every value.
The current value is grandfathered and not validated;
the `validator` is not validated for whether it accepts the current value.
The function is not guaranteed to return any specific value.
Similar to Clojure `set-validator!`.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom 42 validator: number?))
> (atom-reset! a 1)
1
> (atom-validator-set! a string?)
> (atom-reset! a "foo")
"foo"
> (atom-reset! a 2)
*** ERROR IN "misc/atom.ss"@48.29 [BadArgument]: bad argument; expected valid atom value
--- irritants: update-atom! 1
```
:::

## atom-add-watch!

``` scheme
(atom-add-watch! atom key watch-function) -> void
```

Adds a `watch-function` to an `atom`, identified by given `key`.
The `watch-function` must be a function of 4 args:
the `key`, the `atom`, its `old-state`, its `new-state`.
Whenever the `atom`’s state is changed,
after the new value has been validated,
each of the registered watches will have their functions called,
in an unspecified order, while the `atom` lock is still held
(so no changes to the `atom` are allowed in the watches themselves,
though they may send asynchronous messages or spawn threads that
will cause a cascade of further changes).
Keys must be unique per atom, and can be used to remove the watch with
`atom-remove-watch!`, but are otherwise considered opaque
by the watch mechanism.
Similar to Clojure’s `add-watch` function.

::: warning
It is unspecified whether the state has been modified yet,
so use `old-state` and `new-state` rather than `atom-deref`.
Note also that watch functions may be called from multiple threads
simultaneously.
In the current implementation, the state will already have been modified
and no threads will be spawned, but there is no guarantee we won’t change that.
:::

::: tip Examples:
``` scheme
> (import :std/misc/atom :std/misc/list)
> (def transitions [])
> (def a (atom 1))
> (atom-add-watch! a 'record-transitions
    (lambda (_k _a old new) (push! [old new] transitions)))
> (atom-swap! a (cut * 2 <>))
2
> (atom-swap! a (cut * 2 <>))
4
> transitions
((2 4) (1 2))
> (atom-remove-watch! a 'record-transitions)
> (atom-swap! a (cut * 2 <>))
8
> transitions
((2 4) (1 2))
```
:::

## atom-remove-watch!

``` scheme
(atom-remove-watch! atom key) -> void
```

Removes a watch function to an `atom`, the one associated to the given `key` if any.
Similar to Clojure’s `remove-watch` function.
See example for `atom-add-watch!` above.

## atom-increment!

``` scheme
(atom-increment! atom [increment]) -> new-numeric-value
```

Increments the `atom` value by the specified `increment`, or by `1` if left unspecified.
Return the new value. Common special case for a numeric (often integer) atom.

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def a (atom -1))
> (atom-increment! a)
0
> (atom-increment! a)
1
> (atom-increment! a)
2
```
:::

## atomic-counter

``` scheme
(atomic-counter [initial-value]) -> function
```

Creates a function that maintains an `atomic-counter`
that starts with the given `initial-value` (which defaults to `-1`),
and increments the atomic value by `1`, returning the new value, each time it is called.

Note that for performance reasons, you cannot specify a different increment;
if this is what you need, make your own abstraction based on `atom`
(and if you use it a lot... maybe contribute it to this library, or another).

::: tip Examples:
``` scheme
> (import :std/misc/atom)
> (def my-counter (atomic-counter))
> (my-counter)
0
> (my-counter)
1
> (my-counter)
2
> (my-counter 10)
12
> (my-counter 0)
12
> (def other-counter (atomic-counter 42))
> (other-counter)
43
> (other-counter)
44
```
:::
