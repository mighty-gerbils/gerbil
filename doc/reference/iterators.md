# Iterators

The `:std/iter` library provides iterator support; see the [Guide](../guide/intro.md#iteration)
for an introduction.

::: tip usage
(import :std/iter)
:::

## Macros

### for
::: tip usage
```
(for <bind> body ...)
(for (<bind> ...) body ...)

bind := (<pattern> <iterator-expr>)
        (<pattern> <iterator-expr> when <filter-expr>)
        (<pattern> <iterator-expr> unless <filter-expr>)

pattern       := match pattern
iterator-expr := expression producing an iterable object
filter-expr   := boolean filter expression, with pattern bindings visible
```
:::

`for` iterates one or more iterable objects in parallel, matching the values
produced to the binding pattern, and evaluates the body for each value.
For each iterable object an iterator is constructed using `(iter ...)`;
the iteration completes as soon as one of the iterators completes.

### for*
::: tip usage
```
(for* (<bind> ...) body ...)
```
:::

`for*` iterates one or more iterables sequentially.

### for/collect
::: tip usage
```
(for/collect <bind> body ...)
(for/collect (<bind> ...) body ...)
```
:::

`for/collect` iterates in parallel and collects the values of `body`
for each iteration into a list.

### for/fold
::: tip usage
```
(for/fold <iv-bind> <bind> body ...)
(for/fold <iv-bind> (<bind> ...) body ...)

iv-bind := (<id> <expr>)
```
:::

`for/fold` folds one or more iterables in parallel. The seed of the
fold is bound to `id`, with initial value `expr`, and is updated as the
value of the `body` for each iteration. The result of the fold is the
result of the final iteration.

## Iterator Constructors

### iter
::: tip usage
```
(iter obj)
=> <iterator>
```
:::

This is the fundamental iterator constructor for iterable objects.
If the object is already an iterator then it is returned; otherwise
the generic `:iter` is applied.


### :iter
::: tip usage
```
(:iter obj)
=> iterator

(defmethod (:iter (obj type))
  ...)
=> iterator

```
:::

Generic iterator constructor. The library defines the method for
basic types: lists, vectors, strings, hash-tables, ports, and
procedures which are iterated as coroutines; objects without any
method binding dispatch to the `:iter` object method.

### in-iota
::: tip usage
```
(in-iota count [start = 0] [step = 1])
  count := fixnum
  start, step := number
=> iterator
```
:::

Creates an iterator that yields `count` values starting from `start`
and incrementing by `step`.

### in-range
::: tip usage
```
(in-range end)
  end := real
=> iterator

(in-range start end [step = 1])
  start, end, step := real
=> iterator
```
:::

Creates an iterator that starts with a current value of `start` (default `0`),
stops when the current value is greater or equal to `end`,
increments the current value by `step` at each iteration (default `1`),
returns at each iteration the current value before incrementation.

The current semantics (described above, valid since v0.16)
is compatible with the `in-range` of Racket.
Note however that the semantics of `in-range` changed twice:
In v0.15.1, it was like `in-iota` above.
Before v0.15, it was like `in-iota` except that `start` came before `count`
when 2 or 3 parameters were used.

### in-naturals
::: tip usage
```
(in-naturals [start = 0] [step = 1])
  start, step := number
=> iterator
```
:::

Creates an infinite iterator that iterates over the naturals starting
from `start` and incrementing by `step`.

Note however that the semantics of `in-naturals` changed:
since v0.16, it starts from 0 by default,
which is compatible with the `in-naturals` from Racket;
before v0.16, it was starting from 1 by default.
A furthermore discrepancy with Racket is that Racket only accepts non-negative exact integers for start,
and doesn't accept an optional step, always using 1,
whereas Gerbil accepts any number for start and step.

### in-hash
::: tip usage
```
(in-hash ht)
  ht : hash-table
=> iterator
```
:::

Creates an iterator that yields the key/value pairs (as two values) for each association
in the hash table. This is the same as `(:iter <hash-table>)`.

### in-hash-keys
::: tip usage
```
(in-hash-keys ht)
  ht : hash-table
=> iterator
```
:::

Creates an iterator that yields the keys for each association in the hash table.

### in-hash-values
::: tip usage
```
(in-hash-values ht)
```
:::

Creates an iterator that yields the values for each association in the hash table.

### in-input-port
::: tip usage
```
(in-input-port port [read])
  port := input-port
=> iterator
```
:::

Creates an iterator that yields the values read with `read` from the `port`.
The unary version is the same as `(:iter port)`.

### in-input-lines
::: tip usage
```
(in-input-lines port)
  port := input-port
=> iterator
```
:::

Same as `(in-input-port port read-line)`.

### in-input-chars
::: tip usage
```
(in-input-chars port)
  port := input-port
=> iterator
```
:::

Same as `(in-input-port port read-char)`.

### in-input-bytes
::: tip usage
```
(in-input-bytes port)
  port := input-port
=> iterator
```
:::

Same as `(in-input-port port read-u8)`.

### in-coroutine
::: tip usage
```
(in-coroutine proc arg ...)
  proc := coroutine procedure
=> iterator
```
:::

Creates an iterator that applies `(proc arg ...)` in a coroutine.
The unary version is the same as `(:iter <procedure>)`.

### in-cothread
::: tip usage
```
(in-cothread proc arg ...)
  proc := coroutine procedure
=> iterator
```
:::

Creates an iterator that applies `(proc arg ...)` in a cothread.


## Iterator Protocol

### iterator
```
(defstruct iterator (e next fini))

e    := iterator value
next := lambda (iterator)
fini := lambda (iterator)
```

This is the type of iterator objects:
- The element `e` is the state associated with the iterator
- The procedure `next` advances the iterator and returns the current value; `iter-end` signals the end of the iteration.
- The procedure `fini` finalizes the iterator. It is invoked at the end of the iteration by the `for` family of macros.

Note that the finilizer is _not_ automatically invoked if the iteration fails with an exception.
If the iterator has hard state associated (e.g. a thread or some other expensive resource), then a
will should be attached to it.

### iter-end
```
(def iter-end ...)
```

Special object signalling the end of iteration.

### iter-end?
::: tip usage
```
(iter-end? obj)
=> boolean
```
:::

Returns true if the object is the end of iteration object.

### iter-next!
::: tip usage
```
(iter-next! it)
  it := iterator
=> any
```
:::

Advances the iterator and returns the current value.

### iter-fini!
::: tip usage
```
(iter-fini! it)
  it := iterator
```
:::

Finalizes the iterator.

### yield
::: tip usage
```
(yield val ...)
```
:::

Yields one or more values from a coroutine procedure associated with an iterator.
This is the `yield` defined in `:std/coroutine`.


## Examples

Here is the definition for an iterator that produces a constant value,
using the iterator protocol:
```
(def (iter-const val)
  (make-iterator val iterator-e))
```


Here is a definition of the list iterator using the iterator protocol:
```
(def (iter-list lst)
  (def (next it)
    (with ((iterator e) it)
      (match e
        ([hd . rest]
         (set! (iterator-e it) rest)
         hd)
        (else iter-end))))
  (make-iterator lst next))
```

Here is a definition of the list iterator using coroutines:
```
(def (iter-list lst)
  (def (iterate lst)
    (let lp ((rest lst))
      (match rest
        ([hd . rest]
         (yield hd)
         (lp rest))
        (else (void)))))
  (in-coroutine iterate lst))
```

Note that this is just an example for illustration purposes;
you don't need to provide an iterator for lists as `iter` will construct one for you.
