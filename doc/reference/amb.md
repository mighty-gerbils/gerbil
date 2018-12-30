# Primitives for Ambiguous Non-Deterministic Computation

AMB is the ambiguous special form for non-deterministic computation.

::: tip usage
(import :std/amb)
:::

## Special Forms

### begin-amb
::: tip usage
```
(begin-amb body ...)
```
:::

Evaluates body in a fresh amb scope; you only need to use this if you intend to use amb
concurrently in multi-threaded programs.

### amb
::: tip usage
```
(amb expr ...)
```
:::

The ambiguous operator; may evaluate and return the value of any expression operand.

### amb-find
::: tip usage
```
(amb-find expr [failure])
```
:::

Evaluates `expr` returning its value if successful, possibly after backtracking.
If the expression tree is exhausted, then `failure` is evaluated for the result;
if `failure` is not specified, then an error is raised.

### one-of
::: tip usage
```
(one-of expr)
```
:::

Same as `(amb-find expr)`

### amb-collect
::: tip usage
```
(amb-collect expr)
```
:::

Evaluates `expr` and performs backtracking repeatedly, collecting all possible
values in a list.

### all-of
::: tip usage
```
(all-of expr)
```
:::

Same as `(amb-collect expr)`.

### amb-assert
::: tip usage
```
(amb-assert expr)
```
:::

Evaluates `expr`, failing if it is `#f`.

### required
::: tip usage
```
(required expr)
```
:::

Same as `(amb-assert expr)`

## Example

Here is the well known dwelling house puzzle:

```scheme
(def (solve-dwelling-puzzle)
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

    `((baker ,baker) (cooper ,cooper) (fletcher ,fletcher) (miller ,miller) (smith ,smith))))

(def (distinct? lst)
  (let lp ((rest lst))
    (match rest
      ([hd . rest]
       (and (not (memq hd rest))
            (lp rest)))
      (else #t))))

(solve-dwelling-puzzle) => '((baker 3) (cooper 2) (fletcher 4) (miller 5) (smith 1))
```
