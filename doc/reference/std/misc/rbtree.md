# Red-Black Trees
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/rbtree)
```
:::

## make-rbtree
``` scheme
(make-rbtree cmp [root = +empty+]) -> rbtree

  cmp  := comparison procedure
  root := optional tree root element
```

Creates a new red-black tree, a self-balancing binary search tree variant,
similar to an AVL tree. Also usable as an sorted hash-table alternative for
small datasets.

The comparison procedure *cmp* is expected to accept two keys, *a* and *b*, and
perform a ternary comparison:
- If `(< a b)`, then it must return a negative number.
- If `(= a b)`, then it must return 0.
- If `(> a b)`, then it must return a positive number.

Examples of comparison procedures: `-`, `string-cmp` or `symbol-cmp`. The latter
two are defined in this module.

::: tip Examples:
``` scheme
> (def rbt1 (make-rbtree -))
> (def rbt2 (list->rbtree string-cmp [["one" . 1] ["two" . 2] ["three" . 3]]))

> (rbtree-put! rbt1 1 "one")
> (rbtree-put! rbt1 2 "two")
> (rbtree-put! rbt1 3 "four")
> (rbtree-put! rbt1 4 "four")
> (rbtree-update! rbt1 3 (lambda (x) (when (string=? x "four") "three")))
> (rbtree-remove! rbt1 4)
> (rbtree->list rbt1)
((1 . "one") (2 . "two") (3 . "three"))
> (rbtree->list rbt2)
(("one" . 1) ("three" . 3) ("two" . 2))

> (import :std/iter)
> (for* ((key (in-rbtree-keys rbt2)) (val (in-rbtree-values rbt1)))
    (unless (string=? key val)
      (displayln key " " val)))
one two
one three
three one
three two
two one
two three
```
:::

## rbtree?
``` scheme
(rbtree? rbt) -> boolean

  rbt := rbtree to check
```

Returns `#t` if *rbt* is an rbtree, `#f` otherwise.

::: tip Examples:
``` scheme
> (rbtree? (make-rbtree string-cmp))
#t
```
:::

## rbtree-empty?
``` scheme
(rbtree-empty? rbt) -> boolean

  rbt := rbtree to check
```

Returns `#t` if *rbt* is empty, `#f` otherwise.

::: tip Examples:
``` scheme
> (rbtree-empty? (make-rbtree -))
#t

> (make-rbtree -)
#<rbtree #62>
> (rbtree-put! #62 0 'NULL)
> (rbtree-empty? #62)
#f
```
:::

## rbtree-put!
``` scheme
(rbtree-put! rbt key val) -> unspecified

  rbt := rbtree to update
  key, val := key-value association to add to rbt
```

Destructively updates *rbt* by inserting the key-value association *key* to
*val*. Similar to `set!`, it's unspecified what `rbtree-put!` returns.

::: tip Examples:
``` scheme
> (let (rbt (make-rbtree -))
    (rbtree-put! rbt 3 'a)
    (displayln (rbtree->list rbt))
    (rbtree-put! rbt 2 'b)
    (displayln (rbtree->list rbt))
    (rbtree-put! rbt 4 'c)
    (displayln (rbtree->list rbt))
    (rbtree-put! rbt 1 'd)
    (displayln (rbtree->list rbt)))
((3 . a))
((2 . b) (3 . a))
((2 . b) (3 . a) (4 . c))
((1 . d) (2 . b) (3 . a) (4 . c))
```
:::

## rbtree-put
``` scheme
(rbtree-put rbt key val) -> rbtree

  rbt := rbtree to update
  key, val := key-value association to add to rbt
```

`rbtree-put` is similar to `rbtree-put!`, but functionally updates *rbt* instead,
returning a new rbtree without modifying *rbt*.

::: tip Examples:
``` scheme
> (let (rbt (make-rbtree -))
    (displayln (rbtree->list (rbtree-put rbt 1 'a)))
    (displayln "empty? " (rbtree-empty? rbt)))
((1 . a))
empty? #t
```
:::

## rbtree-update!
``` scheme
(rbtree-update! rbt key proc [default = void]) -> unspecified

  rbt     := rbtree to update
  key     := key to look up
  proc    := update procedure, receives previous value
  default := optional default value when key not present
```

Destructively updates *rbt* by modifying the value associated with *key*. Looks
up *key* in *rbt* and passes the associated value (or *default*, if *key* isn't
present) to *proc*, an updating procedure. Similar to `set!`, it's unspecified
what `rbtree-update!` returns.

::: tip Examples:
``` scheme
> (def rbt (make-rbtree string-cmp))
> (rbtree-update! rbt "one" 1+ 0)    ; would signal error without default value
> (rbtree->list rbt)
(("one" . 1))
> (rbtree-put! rbt "two" 2)
> (rbtree-update! rbt "two" 1+)
> (rbtree-update! rbt "one" (cut * 2 <>))
> (rbtree->list rbt)
(("one" . 2) ("two" . 3))
```
:::

## rbtree-update
``` scheme
(rbtree-update rbt key proc [default = void]) -> rbtree

  rbt     := rbtree to update
  key     := key to look up
  proc    := update procedure, receives previous value
  default := optional default value when key not present
```

`rbtree-update` is similar to `rbtree-update!`, but functionally updates *rbt*
instead, returning a new rbtree without modifying *rbt*.

::: tip Examples:
``` scheme
> (def rbt (make-rbtree symbol-cmp))
> (rbtree-put! rbt 'a 16)
> (rbtree->list (rbtree-update rbt 'a sqrt))
((a . 4))
> (rbtree->list rbt)
((a . 16))
```
:::

## rbtree-remove!
``` scheme
(rbtree-remove! rbt key) -> unspecified

  rbt := rbtree to update
  key := key to look up
```

Destructively updates *rbt* by removing the value associated with *key*. *rbt*
stays unmodified if *key* isn't present. Similar to `set!`, it's unspecified
what `rbtree-update!` returns.

::: tip Examples:
``` scheme
> (def rbt (make-rbtree symbol-cmp))
> (rbtree-put! rbt 'a 3)
> (rbtree-put! rbt 'b 2)
> (rbtree-put! rbt 'c 1)
> (rbtree-remove! rbt 'b)
> (rbtree-remove! rbt 'd)    ; nothing happens
> (rbtree->list rbt)
((a . 3) (c . 1))
```
:::

## rbtree-remove
``` scheme
(rbtree-remove rbt key) -> rbtree

  rbt := rbtree to update
  key := key to look up
```

`rbtree-remove` is similar to `rbtree-update!`, but functionally updates *rbt*
instead, returning a new rbtree without modifying *rbt*. If *key* isn't present,
then `rbtree-remove` simply returns *rbt* instead of allocating a new identical
tree.

::: tip Examples:
``` scheme
> (let (rbt (make-rbtree -))
    (rbtree-put! rbt 1 "gambit")
    (rbtree-put! (rbtree-remove rbt 2) 1 "gerbil")    ; rbtree-remove returns rbt
    (displayln (rbtree->list rbt))
    (rbtree->list (rbtree-remove rbt 1)))
((1 . "gerbil"))
()
```
:::

## rbtree-ref
``` scheme
(rbtree-ref rbt key [default = absent-obj]) -> any | default | error

  rbt     := rbtree to search in
  key     := key to look up in rbt
  default := optional default value when key not present
```

Returns the value associated with *key* in *rbt*, or *default* if no association
is present; if the *default* value is omitted then an error is raised.

::: tip Examples:
``` scheme
> (def rbt (make-rbtree -))
> (rbtree-put! rbt 1 'a)
> (rbtree-put! rbt 2 'b)
> (rbtree-put! rbt 3 'c)
> (rbtree->list rbt)
((1 . a) (2 . b) (3 . c))
> (rbtree-ref rbt 2 'NONE)
b
> (rbtree-ref rbt 4 'NONE)    ; would signal error without default value
NONE
```
:::

## rbtree-get
``` scheme
(rbtree-get rbt key) -> any | #f

  rbt := rbtree to search in
  key := key to loop up in rbt
```

Same as `(rbtree-ref rbt key #f)`.

::: tip Examples:
``` scheme
> (make-rbtree symbol-cmp)
#<rbtree #54>
> (rbtree-put! #54 'C   "single C")
> (rbtree-put! #54 'BB  "double B")
> (rbtree-put! #54 'AAA "triple A")
> (rbtree-get  #54 'BB)
"double B"
> (rbtree-get  #54 'D)
#f
```
:::

## rbtree-copy
``` scheme
(rbtree-copy rbt) -> rbtree

  rbt := rbtree to copy
```

Returns a copy of *rbt*.

::: tip Examples:
``` scheme
> (rbtree->list (rbtree-copy (make-rbtree string-cmp)))
()

> (def rbt (make-rbtree string-cmp))
> (rbtree-put! rbt "op" sqrt)
> (rbtree-put! (rbtree-copy rbt) "op" +)    ; not overwriting rbt
> (rbtree->list rbt)
("op" . #<procedure #63 sqrt>)
```
:::

## rbtree-for-each
``` scheme
(rbtree-for-each proc rbt) -> void

  proc := procedure to be called for each key-value association in rbt
  rbt  := rbtree to iterate over
```

Evaluates `(proc key val)` for every key-value association in *rbt*, in
ascending order. Isn't returning anything, executed for its side effects.

::: tip Examples:
``` scheme
> (import :std/iter)
> (make-rbtree -)
#<rbtree #66>
> (for ((key [1 2 3 4 5]) (val ["I" "II" "III" "IV" "V"]))
    (rbtree-put! #66 key val))
> (rbtree-for-each (cut displayln <> " -> " <>) #66)
1 -> I
2 -> II
3 -> III
4 -> IV
5 -> V
```
:::

## rbtree-for-eachr
``` scheme
(rbtree-for-eachr proc rbt) -> void

  proc := procedure to be called for each key-value association in rbt
  rbt  := rbtree to iterate over
```

`rbtree-for-eachr` is similar to `rbtree-for-each`, but evaluates `(proc key
val)` in descending (reversed) order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (make-rbtree -)
#<rbtree #66>
> (for ((key [1 2 3 4 5]) (val ["I" "II" "III" "IV" "V"]))
    (rbtree-put! #66 key val))
> (rbtree-for-eachr (cut displayln <> " -> " <>) #66)
5 -> V
4 -> IV
3 -> III
2 -> II
1 -> I
```
:::

## rbtree-fold
``` scheme
(rbtree-fold proc init rbt) -> any

  proc := procedure to be called for each key-value association in rbt
  init := initial value
  rbt  := rbtree to iterate over
```

Folds *rbt* in ascending order.

*proc*'s signature is expected to look like this: `(proc key val
prev-intermediate) -> next-intermediate)`. `rbtree-fold` returns the last
*next-intermediate* value produced by *proc*. Furthermore, *prev-intermediate*
will be set to *init* at the beginning.

::: tip Examples:
``` scheme
> (let (rbt (make-rbtree -))
    (for-each (cut rbtree-put! rbt <> <>) [1 2 3] ["short" "longest" "medium"])
    (rbtree-fold (lambda (k v i)
                   (cond ((> (string-length v) (string-length i)) v)
                         (else i)))
                 "tiny" rbt))
"longest"
```
:::

## rbtree-foldr
``` scheme
(rbtree-foldr proc init rbt) -> any

  proc := procedure to be called for each key-value association in rbt
  init := initial value
  rbt  := rbtree to iterate over
```

Where `rbtree-fold` folds in ascending order, `rbtree-foldr` folds *rbt* in
descending (reverse) order.

::: tip Examples:
``` scheme
> (def rbt (make-rbtree -))
> (rbtree-put! rbt 3 (iota 3))
> (rbtree-put! rbt 4 (iota 4))
> (rbtree-put! rbt 5 (iota 5))
> (rbtree-fold (lambda (k v i) (cons v i)) [] rbt)
((0 1 2 3 4) (0 1 2 3) (0 1 2))
> (rbtree-foldr (lambda (k v i) (cons v i)) [] rbt)
((0 1 2) (0 1 2 3) (0 1 2 3 4))
```
:::

## rbtree->list
``` scheme
(rbtree->list rbt) -> alist

  rbt := rbtree
```

Returns an alist of key-value associations in *rbt*, in ascending order.

::: tip Examples:
``` scheme
> (list->rbtree - [[3 . "drei"] [1 . "eins"] [2 . "zwei"] [4 . "vier"]])
#<rbtree #71>
> (rbtree->list #71)
((1 . "eins") (2 . "zwei") (3 . "drei") (4 . "vier"))
```
:::

## rbtree->listr
``` scheme
(rbtree->listr rbt) -> alist

  rbt := rbtree
```

Returns an alist of key-value associations in *rbt*, in descending (reverse)
order.

::: tip Examples:
``` scheme
> (list->rbtree - [[3 . "drei"] [1 . "eins"] [2 . "zwei"] [4 . "vier"]])
#<rbtree #71>
> (rbtree->listr #71)
((4 . "vier") (3 . "drei") (2 . "zwei") (1 . "eins"))
```
:::

## list->rbtree
``` scheme
(list->rbtree cmp lst) -> rbtree

  cmp := comparison procedure
  lst := alist of key-value associations
```

Creates a new rbtree from *lst*, an associative list. `make-rbtree` describes
how *cmp* is expected to look like.

::: tip Examples:
``` scheme
> (rbtree->list (list->rbtree symbol-cmp '((n . 3) (c . 2) (f . 1))))
((c . 2) (f . 1) (n . 3))

> (rbtree-empty? (rbtree-remove (list->rbtree - [[0 . #\x]]) 0))
#t
```
:::

## in-rbtree
``` scheme
(in-rbtree rbt) -> iterator

  rbt := rbtree to iterate over
```

Creates an iterator over *rbt*, yielding key-value values in ascending order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (def rbt (list->rbtree - '((1 . a) (2 . b) (3 . c))))

> (for/collect ((values k v) (in-rbtree rbt))
    (cons k v))
((1 . a) (2 . b) (3 . c))    ; equivalent to (rbtree->list rbt)

> (for ((values k v) rbt)    ; generic :iter overload for rbtree
    (displayln k " -> " v))
1 -> a
2 -> b
3 -> c
```
:::

## in-rbtree-keys
``` scheme
(in-rbtree-keys rbt) -> iterator

  rbt := rbtree to iterate over
```

Creates an iterator over *rbt*, yielding keys in ascending order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (def rbt1 (list->rbtree - [[1 . #\a] [2 . #\b] [3 . #\c] [4 . #\d] [5 . #\e]]))
> (def rbt2 (list->rbtree - [[5 . #\a] [4 . #\b] [3 . #\c] [2 . #\d] [1 . #\e]]))
> (for* ((x (in-rbtree-keys rbt1)) (y (in-rbtree-keys rbt2)))
    (when (> x y)    ; for* is testing all combinations
      (displayln (cons x y))))
(2 . 1)
(3 . 1)
(3 . 2)
(4 . 1)
(4 . 2)
(4 . 3)
(5 . 1)
(5 . 2)
(5 . 3)
(5 . 4)
```
:::

## in-rbtree-values
``` scheme
(in-rbtree-values rbt) -> iterator

  rbt := rbtree to iterate over
```

Creates an iterator over *rbt*, yielding values in ascending order.

::: tip Examples:
``` scheme
> (import :std/iter)
> (def rbt (list->rbtree symbol-cmp '((a . (1)) (b . (2 3)) (c . (4 5 6)))))

> (for/fold (i []) (lst (in-rbtree-values rbt))
    (append lst i))
(4 5 6 2 3 1)

> (import :std/misc/list)
> (for (lst (in-rbtree-values rbt))
    (when (length>=n? lst 3)
      (displayln lst)))
(4 5 6)
```
:::

## rbtree
``` scheme
(defsyntax rbtree)
```

Red-black tree (rbtree) type, for user-defined generics and destructuring.

::: tip Examples:
``` scheme
;; Possible rbtree iterator implementation:
> (defmethod (:iter (rbt rbtree))
    (in-rbtree rbt))

> (def (in-rbtree rbt)
    (def (iterate)
      (rbtree-for-each yield rbt))
    (in-coroutine iterate))
```
:::

## string-cmp
``` scheme
(string-cmp a b) -> fixnum

  a, b := strings to compare
```

Comparison function for lexicographic string ordering.

::: tip Examples:
``` scheme
> (string-cmp "gambit" "gerbil")
-4

> (string-cmp "aaa" "aaa")
0

> (string-cmp "aac" "aaa")
2

> (string-cmp "aa" "aaaa")
-2

> (string-cmp "aaa" "")
3

> (string-cmp "a" "cb")
-2
```
:::

## symbol-cmp
``` scheme
(symbol-cmp a b) -> fixnum

  a, b := symbols to compare
```

Comparison function for lexicographic symbol ordering.

::: tip Examples:
``` scheme
> (symbol-cmp 'gerbil 'gambit)
4

> (symbol-cmp 'D 'B)
2

> (symbol-cmp 'func (string->symbol "func"))
0
```
:::

## symbol-hash-cmp
``` scheme
(symbol-hash-cmp a b) -> fixnum

  a, b := symbols to compare
```

Comparison function for symbol ordering based on their hashes; ties are broken
by lexicographic ordering.

::: tip Examples:
``` scheme
> (symbol-hash-cmp 'gerbil 'gambit)
-173422207

> (displayln (symbol-hash 'a) " vs. " (symbol-hash 'b))
67905836 vs. 118238693
> (symbol-hash-cmp 'a 'b)
-50332857
```
:::
