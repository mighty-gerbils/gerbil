# A-List utilities
Utilities to manipulate alists, i.e. association lists, i.e. a list of key-value pairs.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/alist)
```
:::

## alist?
``` scheme
(alist? alist) -> boolean

  alist := association list to check
```

Checks whether *alist* is a proper association list and returns a truth value
(`#t` or `#f`). *alist* needs to be finite, circular lists are not supported.

A proper association list is a list of pairs and may be of the following forms:
- `((key1 . value1) ...)`
- `((key1 value1) ...)`

::: tip Examples:
``` scheme
> (alist? '((a . 1) (b . 2) (c . 3)))
#t

> (alist? [["one" #\1] ["two" #\2] ["three" #\3]])
#t

> (alist? '((a . 1) ("two" #\2) (1 2 3 4)))
#t    ; (1 2 3 4) is equivalent to (1 . (2 3 4))

> (alist? '(a 1 b 2 c 3))
#f    ; input is a plist, see plist? function

> (alist? '())
#t    ; edge-case, just like (list? '()) => #t
```
:::

## plist->alist
``` scheme
(plist->alist plist) -> alist | error

  plist := property list to transform
```

Transforms a property list `(k1 v1 k2 v2 ...)` into an association list `((k1 . v1)
(k2 . v2)...)`. *plist* needs to be finite, circular lists are not supported.
Furthermore, an error is signaled when *plist* is a improper property list.

::: tip Examples:
``` scheme
> (plist->alist [10 "cat" 11 "dog" 12 "bird"])
((10 . "cat") (11 . "dog") (12 . "bird"))

> (plist->alist ["semicolon" #\; "comma" #\, "dot"])
error    ; key "dot" has no associated property value

> (plist->alist [])
()

```
:::

## assq-set!, assv-set!, assoc-set!
``` scheme
(asetq! alist key value)
(assq-set! key alist value)

(asetv! alist key value)
(assv-set! key alist value)

(aset! alist key value)
(assoc-set! key alist value)
```
These functions kind-of complement the `assq`, `assv`, `assoc` functions from the prelude,
and enable the destructive update of an alist (association list), i.e. a association list
that follows the `[[key1 . value1] [key2 . value2] ... [keyN . valueN]]`,
by either modifying in-place an entry with the given key, or adding a new entry.
The functions all return `#!void`.

Just like the alist getter functions, these functions are distinguished by which
equality predicate is used to compare keywords: `eq?`, `eqv?` or `equal?` respectively.
`eq?` is best for keys being symbols and keywords, `eqv?` for numbers, and `equal?` for strings
or lists, etc.

Each function comes in two variant:
the first one accepts `(asetq! alist key value)` as the order of arguments,
whereas the second one follows the convention so that you can use `(set! (assq key alist) value)`
or `(set! (assv key alist) value)`.
Note that in the last case, `assq`, `assv` and `assoc` return a pair,
whereas the setter functions take just the value as argument.
That's why we say these setter functions only "kind-of" complement the respective getter functions.

Last but not least, destructive operations are not allowed on an empty alist.
If you use `aset!` or its friends, you have to ensure your alists are never empty.
For instance you may keep a dummy key at the end of your alist that never gets removed.
If this constraint is not acceptable, you may instead storing your alist
in a variable (or struct field), use the pure `aset` operation, and update
the variable (or struct field) with the result of it.

::: tip Examples:
``` scheme
(let (p [['a . 1]['b . 2]]) (asetq! p 'a 3) p)
> [['a . 3]['b . 2]]

(let (p [['a . 1]['b . 2]]) (asetq! p 'c 3) p)
> [['c . 3]['a . 1]['b . 4]]
```
:::

## aremq!, aremv!, arem!
``` scheme
(aremq! key plist)
(aremv! key plist)
(arem! key plist)
```
These functions destructively modify an alist (association-list) to remove the entry for a given key.
Just like the alist getter and setter functions, these functions are distinguished by which
equality predicate is used to compare keywords: `eq?`, `eqv?` or `equal?` respectively.
See `aset!` above about alists. The functions all return `#!void`.

It is not allowed to destructively remove the last entry in an alist.
If you use `arem!` or its friends, you have to ensure your alists are never empty.
For instance you may keep a dummy key at the end of your alist that never gets removed.
If this constraint is not acceptable, you may instead storing your alist
in a variable (or struct field), use the pure `arem` operation, and update
the variable (or struct field) with the result of it.

::: tip Examples:
``` scheme
(let (p [['a . 1]['b . 2]]) (aremq! 'a p) p)
> [['b . 2]]

(let (p [['a . 1]['b . 2]]) (arem! 'c p) p)
> [['a . 1]['b . 2]]
```
:::

## acons
``` scheme
(acons k v alist) -> alst

  k := key
  v := value
  alist := association list
  alst := new association list with additional binding
```

Adds a new key-value pair to an existing alist in a pure way, a bit like `aset`.
Unlike `aset` and its friends, however, `acons` does *not* try to replace older bindings
for the same key, and will instead shadow them.
This can cause performance issues if a same key is used a lot of times with `acons`,
with the list growing ever longer; this can cause even more interesting correctness issues
if `arem` is used subsequently used, which will remove only the most recent binding,
revealing the previous one again, which may or may not be the desired behavior.
Thus, we recommend only using `acons` when you otherwise know `k` is not yet bound in the alist.

`acons` is analogous to the same-named function from Common Lisp, and
`(acons k v l)` is synonymous with `(cons (cons k v) l)`.

::: tip Examples:
```scheme
> (acons 1 "a" '((2 . "b") (3 . "c")))
((1 . "a") (2 . "b") (3 . "c"))

> (acons 1 "a" '((1 . "b")))
((1 . "a") (1 . "b"))
```
:::

