# Primitives for Ambiguous Non-Deterministic Computation

AMB is the ambiguous special form for non-deterministic computation.

::: tip usage
(import :std/amb)
:::

## Special Forms

### begin-amb
```
(begin-amb body ...)
```

Evaluates body in a fresh amb scope; you should always wrap the beginning of ambiguous computation
in a `begin-amb` form to avoid side-effects leaking between amb executions.

### begin-amb-random
```
(begin-amb-random body ...)
```

Like `begin-amb`, but the search strategy for generating amb values is randomized.

### amb
```
(amb expr ...)
```

The ambiguous operator; may evaluate and return the value of any expression operand.

The order with which the values are generated depends on the search strategy.
After `v0.16-56-g6fb422de` by default it is deterministic, unless the computation is within
a `begin-amb-random` scope, in which case it is randomized.
Prior to `v0.16-56-g6fb422de` the search strategy was always randomized.

### amb-find
```
(amb-find expr [failure]) -> any
```

Evaluates `expr` returning its value if successful, possibly after backtracking.
If the expression tree is exhausted, then `failure` is evaluated for the result;
if `failure` is not specified, then an error is raised.

### one-of
```
(one-of expr)
```

Same as `(amb-find expr)`

### amb-collect
```
(amb-collect expr) -> list
```

Evaluates `expr` and performs backtracking repeatedly, collecting all possible
values in a list.

### all-of
```
(all-of expr) -> list
```

Same as `(amb-collect expr)`.

### amb-assert
```
(amb-assert expr)
```

Evaluates `expr`, failing if it is `#f`.

### required
```
(required expr)
```

Same as `(amb-assert expr)`

### amb-do
```
(amb-do thunks) -> any
  thunks := list of thunk
```

Procedural form of `amb`

### amb-do-find
```
(amb-do-find thunk [failure]) -> any
  thunk, failure := thunk
```

Procedural form of `amb-find`

### amb-do-collect
```
(amb-do-collect thunk) -> list
```

Procedural form of `amb-collect`


### amb-exhausted?
```
(amb-exhausted? e) -> boolean
```

Predicate that returns true if *e* is an exception raised because the amb search was exhausted.

### element-of
```
(element-of list) -> any
```

Ambiguous choice from a list; may evaluate and return any element of *list*.

## Example

Here is the well known dwelling house puzzle:

```scheme
(def (solve-dwelling-puzzle)
  (begin-amb
   (let ((baker (amb 1 2 3 4 5))
         (cooper (amb 1 2 3 4 5))
         (fletcher (amb 1 2 3 4 5))
         (miller (amb 1 2 3 4 5))
         (smith (amb 1 2 3 4 5)))

     ;; They live on different floors.
     (required (distinct? (list baker cooper fletcher miller smith)))

     ;; Baker does not live on the top floor.
     (required (not (= baker 5)))

     ;; Cooper does not live on the bottom floor.
     (required (not (= cooper 1)))

     ;; Fletcher does not live on either the top or the bottom floor.
     (required (not (= fletcher 5)))
     (required (not (= fletcher 1)))

     ;; Miller lives on a higher floor than does Cooper.
     (required (> miller cooper))

     ;; Smith does not live on a floor adjacent to Fletcher's.
     (required (not (= (abs (- smith fletcher)) 1)))

     ;; Fletcher does not live on a floor adjacent to Cooper's.
     (required (not (= (abs (- fletcher cooper)) 1)))

     `((baker ,baker) (cooper ,cooper) (fletcher ,fletcher) (miller ,miller) (smith ,smith)))))

(def (distinct? lst)
  (let lp ((rest lst))
    (match rest
      ([hd . rest]
       (and (not (memq hd rest))
            (lp rest)))
      (else #t))))

(solve-dwelling-puzzle) => '((baker 3) (cooper 2) (fletcher 4) (miller 5) (smith 1))
```
