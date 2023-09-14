# Lists

Beyond the [R5RS](https://people.csail.mit.edu/jaffer/r5rs/Pairs-and-lists.html) procedures *pair?*, *cons*, *car*, *cdr*, *set-car!*, *set-cdr!*, *caar* and *cadr* through *cdddar* and *cddddr*, *null?*, *list?*, *list*, *length*, *append*, *reverse*, *list-tail*, *list-ref*, *memq*, *memv*, *member*, *assq*, *assv* and *assoc* we have the following built into *gerbil core*.

## make-list
``` scheme
(make-list len [val = #f]) -> list

  len := fixnum
  val := any value
```

Creates a new list of length *len*, with initial value of *val*.

## cons*
``` scheme
(cons* x y ... tail) -> list

  x    := any
  y    := any
  tail := list
```

Conses *x*, *y*, ... to *tail*. This is equivalent to `(cons x (cons y ... (cons ... tail)))`.

## foldl
``` scheme
(foldl f iv . lsts) -> any

  f    := procedure
  iv   := any
  lsts := lists
```

Left fold.

## foldr
``` scheme
(foldr f iv . lsts) -> any

  f    := procedure
  iv   := any
  lsts := lists
```

Right fold.

## andmap
``` scheme
(andmap f . lsts) -> boolean

  f    := procedure
  lsts := lists
```

Boolean and fold.

## ormap
``` scheme
(ormap f . lsts) -> any

  f    := procedure
  lsts := lists
```

Boolean or fold.

## filter
``` scheme
(filter f lst) -> list

  f   := procedure
  lst := list
```

Returns a new list including only elements *x* for which `(f x)` is true.

## filter-map
``` scheme
(filter-map f . lsts) -> list

  f     := procedure
  lsts := lists
```

Filter and map; returns a new list including the true results of `(f x y ...)`,
where `x`, `y`, ... are the elements of each list in *lsts*.

## iota
``` scheme
(iota count [start = 0] [step = 1]) -> list

  count := fixnum; elements in the list
  start,step := number
```

Returns a list of *count* elements, iterating from *start* and adding *step* on
each iteration.

## last-pair
``` scheme
(last-pair obj) -> pair

  obj := pair or
```

Returns the last pair in the tail of *obj*; ie the tail pair of a (possibly improper) list.

## last
``` scheme
(last obj) -> any

  obj := pair
```

Returns the car of the last pair of `obj`. This is equivalent to `(car (last-pair obj))`.

## assgetq
``` scheme
(assgetq key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Returns the value associated with *key* in *alist*, using `eq?` for
the key comparison.  If the key is not found, then if *default* is a
procedure it is applied on the *key*. Otherwise returns *default*.

## assgetv
``` scheme
(assgetv key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Like `assgetq`, but uses `eqv?` for the key comparison.

## assget
``` scheme
(assget key alist [default = #f]) -> any

  key   := any
  alist := associative list
```

Like `assgetq`, but uses `equal?` for the key comparison.

## pgetq
``` scheme
(pgetq key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assgetq`, but for plists.

## pgetv
``` scheme
(pgetv key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assgetv`, but for plists.

## pget
``` scheme
(pget key plist [default = #f]) -> any

  key   := any
  plist := property list
```

Like `assget`, but for plists.

## find
``` scheme
(find pred lst) -> any

  pred := procedure
  lst  := list
```

Returns the first element in *lst* that satisfies *pred*.

## memf
``` scheme
(memf pred lst) -> pair | #f

  pred := procedure
  lst  := list
```

Generalization of *member*; returns the first pair in *lst* whose *car*
satisfies *pred*.

## remove1
``` scheme
(remove1 el lst) -> list

  el  := any
  lst := list
```

Returns *lst* removing the first element *x* that satisfies `(equal? el x)`.

## remv
``` scheme
(remv el lst) -> list

  el  := any
  lst := list
```

Apply `remove1` using `eqv?` as the comparator.

## remq
``` scheme
(remq el lst) -> list

  el  := any
  lst := list
```

Apply `remove1` using `eq?` as the comparator.

## remf
``` scheme
(remf pred lst) -> list

  pred := procedure
  lst  := list
```

Like `remove1`, but removes the first element `x` that satisfies `(pred x)`

