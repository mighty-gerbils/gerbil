# P-List utilities
Utilities to manipulate plists, i.e. property lists,
i.e. even-length lists where each even-indexed element is a key,
and each following odd-indexed element is the associated value.

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/plist)
```
:::

## plist?
``` scheme
(plist? plist) -> boolean

  plist := property list to check
```

Checks whether *plist* is a proper property list and returns a truth value (`#t`
or `#f`). *plist* needs to be finite, circular lists are not supported.

A proper property list is a list of alternating keys and values of the following
form: `((key1 value1 key2 value2 ...))`

::: tip Examples:
``` scheme
> (plist? '(a 1 b 2 c 3 d 4))
#t

> (plist? ["uno" [1 2 3] "dos" [4 5 6] "tres" [7 8 9]])
#t

> (plist? '((a . 1) (b . 2)))
#t    ; key1 = (a . 1), value1 = (b . 2)

> (plist? '((a . 1) (b . 2) (c . 3)))
#f    ; key2 = (c . 3), but missing value2

> (plist? [])
#t    ; edge-case, just like (list? []) => #t

```
:::

## alist-&gt;plist
``` scheme
(alist->plist alist) -> plist | error

  alist := association list to transform
```

Transforms an association list `((k1 . v1) (k2 . v2) ...)` into a property list
`(k1 v1 k2 v2 ...)`. *alist* needs to be finite, circular lists are not supported.
Furthermore, an error is signaled when *alist* is an improper association list.

::: tip Examples:
``` scheme
> (alist->plist [[1 . 10] [2 . 20] [3 . 30]])
(1 10 2 20 3 30)

> (alist->plist [["fire" #\f] ["water" #\w] ["earth" #\e]])
("fire" (#\f) "water" (#\w) "earth" (#\e))

> (alist->plist '((1 2 3) (4 5 6) (7 8 9)))
(1 (2 3) 4 (5 6) 7 (8 9))

> (alist->plist '((a) (b) (c)))
(a () b () c ())

> (alist->plist [])
()

```
:::

## psetq!, psetv!, pset!, pgetq-set!, pgetv-set!, pget-set!
``` scheme
(psetq! plist key value)
(pgetq-set! key plist [default] value)

(psetv! plist key value)
(psetv-set! key plist [default] value)

(pset! plist key value)
(pset-set! key plist [default] value)
```
These functions complement the `pgetq`, `pgetv`, `pget` functions from the prelude,
and enable the destructive update of a plist (property-list), i.e. a association list
that follows the `[key1 value1 key2 value2 ... keyN valueN]`,
by either modifying in-place an entry with the given key, or adding a new entry.
The functions all return `#!void`.

Just like the plist getter functions, these functions are distinguished by which
equality predicate is used to compare keywords: `eq?`, `eqv?` or `equal?` respectively.
`eq?` is best for keys being symbols and keywords, `eqv?` for numbers, and `equal?` for strings
or lists, etc.

Each function comes in two variant:
the first one accepts `(psetq! plist key value)` as the order of arguments,
whereas the second one follows the convention so that you can use `(set! (pgetq key plist) value)`
or `(set! (pgetq key plist default) value)`.
In the last case, the default value is ignored, but accepted for compatibility with
macros that use both a getter then a setter for a same expression.

Last but not least, destructive operations are not allowed on an empty plist.
If you use `pset!` or its friends, you have to ensure your plists are never empty.
For instance you may keep a dummy key at the end of your plist that never gets removed.
If this constraint is not acceptable, you may instead storing your plist
in a variable (or struct field), use the pure `pset` operation, and update
the variable (or struct field) with the result of it.

::: tip Examples:
``` scheme
(let (p ['a 1 'b 2]) (psetq! p 'a 3) p)
> ['a 3 'b 2]

(let (p ['a 1 'b 2]) (psetq! p 'c 3) p)
> ['c 3 'a 1 'b 4]
```
:::

## premq!, premv!, prem!
``` scheme
(premq! key plist)
(premv! key plist)
(prem! key plist)
```
These functions destructively modify a plist (property-list) to remove the entry for a given key.
Just like the plist getter and setter functions, these functions are distinguished by which
equality predicate is used to compare keywords: `eq?`, `eqv?` or `equal?` respectively.
See `pset!` above about plists. The functions all return `#!void`.

It is not allowed to destructively remove the last entry in a plist.
If you use `prem!` or its friends, you have to ensure your plists are never empty.
For instance you may keep a dummy key at the end of your plist that never gets removed.
If this constraint is not acceptable, you may instead storing your plist
in a variable (or struct field), use the pure `prem` operation, and update
the variable (or struct field) with the result of it.

::: tip Examples:
``` scheme
(let (p ['a 1 'b 2]) (premq! 'a p) p)
> ['b 2]

(let (p ['a 1 'b 2]) (prem! 'c p) p)
> ['a 1 'b 2]
```
:::

