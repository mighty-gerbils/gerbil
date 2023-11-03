# List utilities

::: tip To use the bindings from this module:
```scheme
(import :std/misc/list)
```
:::

## length=?, length<? ... length>=? ##

```scheme
(length=?  lst1 lst2) -> boolean
(length<?  lst1 lst2) -> boolean
(length<=? lst1 lst2) -> boolean
(length>?  lst1 lst2) -> boolean
(length>=? lst1 lst2) -> boolean

  lst1, lst2 := lists to compare
```

Compares the list lengths of both *lst1* and *lst2*, and returns a truth value
(`#t` or `#f`).

| function           | less efficient variant       |
|:-------------------|:-----------------------------|
| `(length=?  x y)`  | `(=  (length x) (length y))` |
| `(length<?  x y)`  | `(<  (length x) (length y))` |
| `(length<=? x y)`  | `(<= (length x) (length y))` |
| `(length>?  x y)`  | `(>  (length x) (length y))` |
| `(length>=? x y)`  | `(>= (length x) (length y))` |

These functions are potentially more efficient because they only need to compare
the lists up until the point where they start to differ from one another. They
will short-circuit once they encounter a difference instead of calculating both
lengths up-front.

Also, either of these two lists is allowed to be circular, but not both.

::: tip Examples:
```scheme
> (import :std/srfi/1)
> (def small (iota 10))   ; => (0 1 ... 9)
> (def large (iota 100))  ; => (0 1 ... 99)

> (length=? small large)
#f    ; comparison stops as soon as small runs out of elements

> (length<? large (circular-list 1 2 3))
#t    ; circular list never runs out of elements

> (length>=? (circular-list 0 1) [])
#t
```
:::

## length=n?, length<n? ... length>=n? ##

```scheme
(length=n?  lst n) -> boolean | error
(length<n?  lst n) -> boolean | error
(length<=n? lst n) -> boolean | error
(length>n?  lst n) -> boolean | error
(length>=n? lst n) -> boolean | error

  lst := list to compare
  n   := number
```

Checks how the length of *lst* compares to *n* and returns a truth value result
(`#t` or `#f`). Signals an error when *n* isn't a valid number.

| function            | less efficient variant |
|:--------------------|:-----------------------|
| `(length=n?  x n)`  | `(=  (length x) n)`    |
| `(length<n?  x n)`  | `(<  (length x) n)`    |
| `(length<=n? x n)`  | `(<= (length x) n)`    |
| `(length>n?  x n)`  | `(>  (length x) n)`    |
| `(length>=n? x n)`  | `(>= (length x) n)`    |

These functions are potentially more efficient because they only need to check
the list for up to *n* elements instead of calculating *lst*'s length up-front.

Also, *lst* is allowed to be circular.

::: tip Examples:
```scheme
> (length=n? [#\a #\b #\c] 3)
#t

> (import :std/srfi/1)
> (length>=n? (circular-list 0 1) 5)
#t

> (length<n? (circular-list 1 2 3) 10000)
#f    ; circular list never runs out of elements
```
:::

## snoc, append1 ##

```scheme
(snoc elem lst) -> list | error

  elem := element to append to lst
  lst  := proper list
```

`snoc` is similar to `cons`, but appends *elem* at the end of *lst* instead of
putting it at the front.

Different from `cons`: `snoc` will signal an error when *lst* is not a proper
list. `cons`, in contrast, constructs a pair out of these two input values.

::: tip Examples:
```scheme
> (cons 4 [1 2 3])
(4 1 2 3)

> (snoc 4 [1 2 3])
(1 2 3 4)

> (cons 1 2)
(1 . 2)

> (snoc 1 2)
error    ; expects a list as second argument

> (snoc '(a b c) '())
((a b c))
```
:::

## append1 ##

```scheme
(append1 lst elem) -> list | error

  lst  := proper list
  elem := element to append to lst
```

`append1` is similar to `append`, but is constructing a proper list whereas the
latter returns an improper list when appending a non-list *elem* to *lst*.
`append` also joins two or more input lists while `append1` simply adds the
second list as-is.

Signals an error when *lst* is not a list.

Note that `snoc` and `append1` have the same function body, just with
their two arguments swapped.

::: tip Examples:
```scheme
> (append [1 2 3] 4)
(1 2 3 . 4)

> (append1 [1 2 3] 4)
(1 2 3 4)

> (append [1 2 3] [4 5 6])
(1 2 3 4 5 6)

> (append1 [1 2 3] [4 5 6])
(1 2 3 (4 5 6))

> (append1 "raise" "error")
error    ; expects a list as first argument
```
:::

## for-each! ##

```scheme
(for-each! lst proc) -> void

  lst  := proper or even improper list
  proc := procedure called for side-effects
```

`for-each!` is similar to `for-each`, but the arguments *lst* and *proc* are
swapped which allows better nesting. Another slight difference: `for-each!` even
accepts improper lists.

::: tip Examples:
```scheme
> (def exprs [[2 + 0] [2 - 0] [0 * 2] [2 / 0] [0 / 2]])

> (for-each (match <>
              ([x (eq? /) (? zero? y)]
               (displayln "div by zero!"))
              ([x op y]
               (displayln (op x y))))
            exprs)

> (for-each! exprs
    (match <>
      ([x (eq? /) (? zero? y)]
       (displayln "div by zero!"))
      ([x op y]
       (displayln (op x y)))))

;; both print:
2
2
0
div by zero!
0

> (for-each displayln '(1 2 . 3))
error    ; list expected

> (for-each! '(1 2 . 3) displayln)
1
2        ; dotted list ending not included
```
:::

## push! ##

```scheme
(push! elem lst) -> unspecified | error

  elem := element to cons onto lst
  lst  := list
```

Macro that conses *elem* onto *lst* and `set!`s *lst* accordingly.
*lst* needs to be bound beforehand or it signals an error.
It's unspecified what `push!` returns otherwise.
Note that the argument order is element first and list second,
as is traditional with the original Lisp `PUSH` macro.

::: tip Examples:
```scheme
> (def lst [])
> (push! 10 lst)
> (push! 20 lst)
> (push! 30 lst)
> lst
(30 20 10)

> (def pair [#\b . #\a])
> (push! #\c pair)
> pair
(#\c #\b . #\a)

> (push! 1 [2 3])
error    ; uses set! internally, requires valid binding
```
:::

## pop! ##

```scheme
(pop! lst) -> #f | elem

  elem := first element from lst
  lst  := list, from which the first element will be removed
```

Macro that checks whether the *lst* is a cons cell, if so returns
the car of that cons cell, and sets *lst* to the cdr of that cons cell,
otherwise returns `#f`.

::: tip Examples:
```scheme
> (def lst [])
> (pop! lst)
#f
> (push! 10 lst)
> (push! 20 lst)
> (pop! lst)
20
> (pop! lst)
10
> (pop! lst)
#f
```
:::

## flatten ##

```scheme
(flatten tree) -> list

  tree := nested list of lists
```

Flatten a `tree` into a list. The argument `tree` can be a list of lists,
where pairs are branching nodes and the empty list is an empty tree, and
the elements that are neither pairs nor empty lists are values to be accumulated
left to right into a list, that is returned.

::: tip Examples:
```scheme
> (flatten [1 [2 3] [[4 5]]])
(1 2 3 4 5)

> (flatten [1 [] [2 [3 [] 4] 5]])
(1 2 3 4 5)  ; ignores empty sublists

> (flatten '((a 1 . b) (2 c . 3) d . 4)))
(a 1 b 2 c 3 d 4) ; improper list terminators are tree elements like others
```
:::

## flatten1 ##

```scheme
(flatten1 lst) -> list | error

  lst := proper nested list-of-lists
```

`flatten1` is a special variant of `flatten` which will not flatten the whole
nested list-of-lists (or tree structure), but instead removes only a single layer of
nesting from *lst*.

Note: *lst* is expected to be a list of proper lists, association lists will
signal an error.

::: tip Examples:
```scheme
> (flatten1 [1 [2 3] [[4 5]]])
(1 2 3 (4 5))

> (flatten1 [1 [] [2 [3 [] 4] 5]])
(1 2 (3 () 4) 5)

> (import :std/srfi/1)
> (map (cut iota <>) [1 2 3 4]
((0) (0 1) (0 1 2) (0 1 2 3))
> (flatten (map (cut iota <>) [1 2 3 4]))
(0 0 1 0 1 2 0 1 2 3)

> (flatten1 '((a . 1) (b . 2) (c . 3)))
error    ; expects proper non-dotted list-of-lists
```
:::

## unique, unique! ##

```scheme
(unique lst [test = equal?]) -> list

  lst  := proper list
  test := test procedure which takes two arguments, defaults to equal?
```
Alias for `delete-duplicates` and `delete-duplicates!` ([SRFI 1](https://srfi.schemers.org/srfi-1/srfi-1.html#delete-duplicates)).

::: tip Examples:
```scheme
> (unique [1 2 3 2])
(1 2 3)

> (let (lst [1 2])
    (unique [lst lst] ev?))
((1 2))
```
:::

## delete-duplicates/hash ##
```scheme
(delete-duplicates/hash lst
  [table: (make-hash-table)]
  [key: identity]
  [from-end?: #f]) -> list

  lst       := list from which to delete elements
  table     := a hash-table with suitable test function and initial elements to detect duplicates
  key       := optional unary procedure to get the to compare item out of a list element
  from-end? := optional boolean to delete from the end rather than from the start
```
`delete-duplicates/hash` returns a copy of the list
from which duplicates are removed,
using an algorithm in `O(n)` backed by the optional hash-table `table`.

If no `table` is specified, the default is to create a new one that uses
the `equal?` predicate. By overriding this default, the user may select
a different equality predicate, pre-fill a number of already seen entries to
remove, and/or keep a set of entries seen for later use or reuse.

The `key` function, which defaults to `identity`, specifies
which part of each element must be seen only once.
The `from-end?:` flag if true specifies that latter elements will be deleted,
instead or earlier elements (if the flag is false, the default).
Thus, for instance, keyword arguments `key: car from-end?: #t` can be used
to remove redundant entries in an `alist`.

`delete-duplicates/hash` is more efficient than
`unique`, `unique!`, `delete-duplicates`, `delete-duplicates!`
that have quadratic cost, in exchange for which it only works
for the builtin equality predicates `equal?`, `eqv?`, `eq?`.

::: tip Examples:
```scheme
> (delete-duplicates/hash '(a b c d a e f c))
(b d a e f c)
> (delete-duplicates/hash '(a b c d a e f c) from-end?: #t)
(a b c d e f)
> (delete-duplicates/hash '(a b c d a e f c) table: (hash (a #f)))
(b d e f c)
> (delete-duplicates/hash '((a 1) (b 2) (c 3) (a 4) (d 5) (c 6))
                          from-end?: #t key: car)
((a 1) (b 2) (c 3) (d 5))
```
:::

## duplicates ##

```scheme
(duplicates lst [test = equal?] [key: #f]) -> list

  lst  := proper list
  test := test procedure which takes two arguments, defaults to equal?
  key  := optional unary procedure to get the to compare item out of a list element
```
`duplicates` returns a cons cells `(item . count)` for every element
that occurs more than once in `lst`. If `key:` is not `#f`
the unary procedure is applied to every element before comparison.

::: tip Examples:
```scheme
> (duplicates ['a 1 'a])
((a . 2))

> (duplicates [1 2 3])
()

> (duplicates '((a . 10) (b . 10)) key: cdr)
((10 . 2))
```
:::

## rassoc ##

```scheme
(rassoc elem alist [pred = eqv?]) -> pair | #f

  elem  := element to search for in alist
  alist := association list
  pred  := comparison predicate, optional
```

`rassoc` is similar to `assoc`, but instead of comparing *elem* with the first
element of each pair in *alist* the optional predicate *pred* (which defaults to
`eqv?`) will compare with the pair's second element.

Returns the first pair in *alist* whose `cdr` satisfies the predicate *pred*, or `#f`
otherwise.

::: tip Examples:
```scheme
> (rassoc 2 '((a . 1) (b . 2) (c . 2) (d . 1)))
(b . 2)

> (rassoc "a" '((1 . "a") (2 . "b")))
#f       ; eqv? is used by default

> (rassoc "a" '((1 . "a") (2 . "b")) string=?)
(1 . "a")

> (rassoc '(5 6) '((a 1 2) (b 3 4) (c 5 6)) equal?)
(c 5 6)  ; equivalent to '(c . (5 6))
```
:::

## when/list ##

```scheme
(when/list cond lst) -> list  | []

  cond := expression that evaluates to a generalized boolean
  lst := expression evaluated and returned if cond was true
```

`when/list` is like `when` but returns `[]` instead of `(void)` when the condition is false.
It is meant to be used when a list is expected, for instance, a list of options or keyword arguments,
that are only defined when some feature is enabled or other condition is true.

::: tip Examples:
```scheme
> (when/list #t [mykw: 42])
(mykw: 42)
> (when/list #f [mykw: 42])
()
> (when/list #f (error "foo"))
()
```
:::

## when-list-or-empty ##

```scheme
(when-list-or-empty lst body ...) -> body ... | []

  lst := value or list on which expansion depends
```

Macro which expands to *body* expressions only if *lst* is a non-empty list,
otherwise an empty list is returned.

::: tip Examples:
```scheme
> (let (nums [1 2 3])
    (when-list-or-empty nums
      (cdr nums)))
(2 3)

> (when-list-or-empty []
    (cons "never" "expanded"))
()
```
:::

## listify ##

```scheme
(listify x) -> list

  x := expression that is returned if a list, or else [] is returned
```

`listify` always returns a list: when the argument `x` is a list, it is returned,
otherwise return the empty list `[]`.

::: tip Examples:
```scheme
> (listify 42)
()
> (listify [])
()
> (listify ["proper" "list"])
("proper" "list")
> (listify ["improper" . "list"])
("improper" . "list")
```
:::

## keyword-when ##

```scheme
(keyword-when cond [value]) -> list

  keyword := arbitrary value, usually a keyword
  cond := expression that if true, triggers the keyword-value list to be returned
  value := expression evaluated if cond is true, returned as the value in the list
```

`keyword-when` always returns a list: when the `cond` is true, the list
`[keyword value]` is returned, otherwise the empty list `[]`.
If `value` is not specified, the non-false value returned by `cond` is used
(but `cond` is only evaluated once, in case it has side-effects).
`keyword` doesn't actually have to be a keyword.

::: tip Examples:
```scheme
> (keyword-when mykw: #t 42)
(mykw: 42)
> (keyword-when mykw: #f 42)
()
> (keyword-when mykw: "true")
(mykw: "true")
> (keyword-when mykw: #f)
()
> (keyword-when mykw: #f (error "foo"))
()
> (keyword-when "not a keyword" #t 42)
("not a keyword" 42)
```
:::

## slice ##

```scheme
(slice lst start [limit = #f]) -> list

  lst   := proper list
  start := start index
  limit := number of items to take from lst
```

Returns a list from `lst`, starting from the left at `start`,
containing `limit` elements.

::: tip Examples:
```scheme
> (slice [1 2 3 4] 2)
(3 4)

> (slice [1 2 3 4] 2 1)
(3)
```
:::

## slice-right ##

```scheme
(slice-right lst start [limit = #f]) -> list

  lst   := proper list
  start := start index from the right of lst
  limit := number of items to take from lst
```

Returns a list from `lst`, starting from the right at `start`,
containing `limit` elements.

::: tip Examples:
```scheme
> (slice-right [1 2 3 4] 2)
(1 2)

> (slice-right [1 2 3 4] 2 1)
(2)
```
:::

## slice! ##

```scheme
(slice! lst start [limit = #f]) -> list

  lst   := proper list
  start := start index
  limit := number of items to take from lst
```

Returns a sublist by potentially updating the input list `lst`.
Starting from the left at `start`, containing `limit` elements.

::: tip Examples:
```scheme
> (def lst [1 2 3 4 5])
> (slice! lst 2 2)
(3 4)
```
:::

## slice-right! ##

```scheme
(slice-right! lst start [limit = #f]) -> list

  lst   := proper list
  start := start index from the right of lst
  limit := number of items to take from lst
```

Returns a sublist by potentially updating the input list `lst`.
Starting from the right at `start`, containing `limit` elements.

::: tip Examples:
```scheme
> (def lst [1 2 3 4 5])
> (slice-right! lst 2 2)
(2 3)
```
:::

## butlast ##

```scheme
(butlast lst) -> list

  lst   := proper list
```

`butlast` returns a copy of the proper list `lst`, except the last element.
When `lst` is empty, `lst` is returned as it is.

::: tip Examples:
```scheme
> (butlast [1 2 3])
(1 2)

> (butlast [])
()
```
:::

## split ##

```scheme
(split lst proc [limit = #f]) -> list

  lst   := proper list
  stop  := value or unary procedure
  limit := optional, split the list only limit times
```
split the list `lst` into a list-of-lists using the value or
unary procedure `stop`. If limit is set, split the list only limit times.

::: tip Examples:
```scheme
(split '(1 2 "hi" 3 4) string?)
> ((1 2) (3 4))

(split [1 2 0 3 4 0 5 6] 0 1)
> ((1 2) (3 4 0 5 6))

(split [] number?)
> ()
```
:::

## take-until ##

## take-until! ##

```scheme
(take-until pred lst) -> list

  pred := predicate
  lst  := proper or circular list
```

`take-until` returns a list with all elements before `pred` returns `#t`.
`take-until!` is the linear-update variant of `take-until`.

::: tip Examples:
```scheme
> (take-until number? ['a "hi" 1 'c])
(a "hi")
```
:::

## drop-until ##

```scheme
(drop-until pred lst) -> list

  pred := predicate
  lst  := proper or circular list
```

`drop-until` returns a list with all elements from the point on `pred` returns `#t`.

::: tip Examples:
```scheme
> (drop-until number? ['a [] "hi" 1 'c])
(1 c)
```
:::

## group-consecutive ##

```scheme
(group-consecutive lst [test = equal?]) -> list

  lst  := proper list
  test := optional, binary predicate
```
group consecutive elements of the list `lst` into a list-of-lists
wherein elements that satisfy the predicate with the previous element
are put in the same list, but those that don't are put in the next list.

::: tip Examples:
```scheme
> (group-consecutive [1 2 2 3 1 1])
((1) (2 2) (3) (1 1))

> (import :std/sort)
> (group-consecutive (sort [1 2 2 3 1 1] <) eqv?)
((1 1 1) (2 2) (3))

> (group-consecutive [1 2 3 2 2 3 4 0 3 5] <)
((1 2 3) (2) (2 3 4) (0 3 5))
```
:::

## group-n-consecutive ##

```scheme
(group-n-consecutive n lst) -> list-of-list

  n    := a positive integer
  lst  := list
```

group elements of the list `lst` into clusters of `n` elements, resulting
in a a list-of-lists that when concatenated return a list equal to `lst`.
each element of the result list is a non-empty list, and the last element
and that element only may have fewer than `n` elements, if `n` does not
divide the length of the original list.
If `lst` is an improper list, the last element of the result will be an
improper list with the same terminator.

::: tip Examples:
```scheme
> (group-n-consecutive 2 [1 2 2 3 1 1])
((1 2) (2 3) (1 1))

> (group-n-consecutive 1 [1 2 3 4 5 6])
((1) (2) (3) (4) (5) (6))

> (group-n-consecutive 2 [1 2 3 4 5 6])
((1 2) (3 4) (5 6))

> (group-n-consecutive 2 [1 2 3 4 5 6 7])
((1 2) (3 4) (5 6) (7))

> (group-n-consecutive 3 [1 2 3 4 5 6 . 7])
((1 2 3) (4 5 6 . 7))
```
:::


## group-same ##

```scheme
(group-same lst key: [key] table: [table]) -> list-of-list

  lst   := list
  key   := 1-argument function (default: identity)
  table := a hash-table, hash-table-eq or hash-table-eqv (defaults: empty hash-table)
```

group elements of the list `lst` that are have the same `key` value
(default: that are the same), using the provided table to store the similar ones,
with "same" meaning equal according to the table's equality predicate
(which is `equal?` by default, but the user may provide a different hash-table).
If the user provides a hash-table, it will be populated with the list of elements
for each key, reversed.
The elements in the resulting list appear in the order that
their first element appear in the original list,
and are each lists containing elements with the same key
in the same order as their appear in the original list.

::: tip Examples:
```scheme
> (group-same [1 2 2 3 1])
((1 1) (2 2) (3))

> (group-same '("abc" "b" "c" "ef" "gh" "ijk") key: string-length)
(("abc" "ijk") ("b" "c") ("ef" "gh"))
```
:::

## map/car ##

```scheme
(map/car f pair)

  f    := function acting on the car of the pair
  pair := pair
```
returns a new pair where the first element (car) has been transformed by the function `f`.

::: tip Examples:
```scheme
> (map/car (cut * 10 <>) (cons 3 4))
(30 . 4)
```
:::

## every-consecutive? ##

```scheme
(every-consecutive? pred lst)
```
returns a boolean that is true if any two consecutive terms in the list satisfy the predicate.
In particular, if the predicate is a partial order predicate (respectively a strict partial
order predicate), then the list is totally ordered (respectively strictly totally ordered)
according to the predicate.

::: tip Examples:
```scheme
> (every-consecutive? <= [1 2 2 3 10 100])
#t

> (every-consecutive? < [5 1 8 9])
#f
```
:::

## separate-keyword-arguments ##

```scheme
(separate-keyword-arguments args [positionals-only]) -> (values positional-args keyword-args)
```
Given a list of arguments passed to a function, return two values,
the first one the list of positional arguments, in order, in the first list,
the second one the plist of keyword arguments with each provided keyword
followed by the corresponding argument value.

If `positionals-only` is false (the default), then the `#!key` and `#!rest` markers
are kept into the list in the first value, so the list can be used in a call to `apply`
to another function to keep passing those values, without the keyword arguments
(or with the keyword arguments prepended in front).

If `positionals-only` is true, then the `#!key` and `#!rest` markers
are filtered off so the first value is ready to be matched positionally
against a list of variables of the same length (and/or with a rest argument).

::: tip Examples:
```scheme
> (separate-keyword-arguments '(x a: 1 y b: 2 c: 3 z))
(x y z)
(a: 1 b: 2 c: 3)

> (separate-keyword-arguments '(x a: 1 y #!key b: 2 c: 3 z #!rest t d: 4) #t)
(x y b: 2 z t d: 4)
(a: 1 c: 3)

> (separate-keyword-arguments '(x a: 1 y #!key b: 2 c: 3 z #!rest t d: 4) #f)
(x y #!key b: 2 z #!rest t d: 4)
(a: 1 c: 3)
```
:::

## first-and-only ##

```scheme
(first-and-only lst)
```
returns the first and only value of a singleton list,
or raises an error if the argument wasn't a singleton list.

::: tip Examples:
```scheme
> (first-and-only '(42))
42

> (first-and-only '())
*** ERROR IN std/misc/list#first-and-only, -515899390@648.11 -- Assertion failed (and (pair? x) (null? (cdr x)))
```
:::

## with-list-builder, call-with-list-builder ##

This macro and this function are re-exported from [:std/misc/list-builder](list-builder)
