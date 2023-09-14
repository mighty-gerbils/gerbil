# List utilities 

::: tip To use the bindings from this module:
``` scheme
(import :std/misc/list)
```
:::

## length=?, length&lt;? ... length&gt;=? ##

``` scheme
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
``` scheme
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

## length=n?, length&lt;n? ... length&gt;=n? ##

``` scheme
(length=n?  lst n) -> boolean | error
(length<n?  lst n) -> boolean | error
(length<=n? lst n) -> boolean | error
(length>n?  lst n) -> boolean | error
(length>=n? lst n) -> boolean | error

  lst := list to compare
  n   := number
```

Checks how the length of *lst* compares to *n* and returns a truth value result
(`#t` or `#f`). Signals an error when n isn't a valid number.

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
``` scheme
> (length=n? [#\a #\b #\c] 3)
#t

> (import :std/srfi/1)
> (length>=n? (circular-list 0 1) 5)
#t

> (length<n? (circular-list 1 2 3) 10000)
#f    ; circular list never runs out of elements
```
:::

## call-with-list-builder ##

``` scheme
(call-with-list-builder proc) -> list

  proc := procedure that takes two proc identifiers as input
```

Takes a procedure or lambda *proc* which itself takes two procedures that can have
any name but are called *put!* and *peek* here:

- *put!* will append its input element onto an internal list (and thus modifies
  it) on each invocation.
- *peek* retrieves the elements collected so far, or `[]` if *put!* is never called.

Finally, `call-with-list-builder` returns the constructed list.

::: tip Examples:
``` scheme
> (import :std/iter)
> (call-with-list-builder
    (lambda (put! peek)
      (for (x (in-range 5 10))
        (displayln (peek))
        (put! (random-integer (1+ x))))))
()           ; no prior put!
(5)
(5 6)
(5 6 2)
(5 6 2 8)    ; fifth explicit peek call
(5 6 2 8 6)  ; peek is called implicitly at the end
```
:::

## with-list-builder ##

``` scheme
(with-list-builder (put! [peek]) body ...) -> list

  put! := function identifier that modifies internal list
  peek := optional function identifier that retrieves internal list
```

Syntax sugar for the `call-with-list-builder` procedure, so *put!* and *peek* can
be used without wrapping them in a lambda first. `with-list-builder` returns the
internal list at the end.

::: tip Examples:
``` scheme
> (import :std/iter)
> (with-list-builder (put!)
    (for (n (in-iota 100 1))
      (let ((mod3 (zero? (modulo n 3)))
            (mod5 (zero? (modulo n 5))))
        (put! (cond ((and mod3 mod5) "fizzbuzz")
                    (mod3 "fizz")
                    (mod5 "buzz")
                    (else n))))))
(1 2 "fizz" 4 "buzz" "fizz" ... 97 98 "fizz" "buzz")
```
:::

## snoc ##

``` scheme
(snoc elem lst) -> list | error

  elem := element to append to lst
  lst  := proper list
```

`snoc` is similar to `cons`, but appends *elem* at the end of *lst* instead of
putting it at the front.

Different from `cons`: `snoc` will signal an error when *lst* is not a proper
list. `cons`, in contrast, constructs a pair out of these two input values.

::: tip Examples:
``` scheme
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

``` scheme
(append1 lst elem) -> list | error

  lst  := proper list
  elem := element to append to lst
```

`append1` is similar to `append`, but is constructing a proper list whereas the
latter returns an improper list when appending a non-list *elem* to *lst*.
`append` also joins two or more input lists while `append1` simply adds the
second list as-is.

Signals an error when *lst* is not a list.

::: tip Examples:
``` scheme
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

``` scheme
(for-each! lst proc) -> void

  lst  := proper or even improper list
  proc := procedure called for side-effects
```

`for-each!` is similar to `for-each`, but the arguments *lst* and *proc* are
swapped which allows better nesting. Another slight difference: `for-each!` even
accepts improper lists.

::: tip Examples:
``` scheme
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

``` scheme
(push! elem lst) -> unspecified | error

  elem := element to cons onto lst
  lst  := list
```

Macro that conses *elem* onto *lst* and `set!`s *lst* accordingly. *lst* needs
to be bound beforehand or it signals an error. It's unspecified what `push!`
returns otherwise.

::: tip Examples:
``` scheme
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

``` scheme
(pop! lst) -> #f | elem

  elem := first element from lst
  lst  := list, from which the first element will be removed
```

Macro that checks whether the *lst* is a cons cell, if so returns the car of that cons cell,
and sets *lst* to the cdr of that cons cell, otherwise returns `#f`.

::: tip Examples:
``` scheme
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

``` scheme
(flatten lst) -> list

  lst := proper nested list-of-lists
```

Removes all layers of nesting from *lst*, which is expected to be a proper
list-of-lists (or tree structure). It will ignore any empty lists it encounters
while traversing, not adding them to the returned flattened list.

::: tip Examples:
```scheme
> (flatten [1 [2 3] [[4 5]]])
(1 2 3 4 5)

> (flatten [1 [] [2 [3 [] 4] 5]])
(1 2 3 4 5)  ; ignores empty sublists

> (flatten '((a . 1) (b . 2) (c . 3)))
(a b c)      ; expects proper non-dotted list-of-lists
```
:::

## flatten1 ##

``` scheme
(flatten1 lst) -> list | error

  lst := proper nested list-of-lists
```

`flatten1` is a special variant of `flatten` which will not flatten the whole
nested list-of-lists (or tree structure), but instead removes only a single layer of
nesting from *lst*.

Note: *lst* is expected to be a list of proper lists, association lists will
signal an error.

::: tip Examples:
``` scheme
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

## unique ##

## unique! ##

``` scheme
(unique lst [test = equal?]) -> list

  lst  := proper list
  test := test procedure which takes two arguments, defaults to equal?
```
Alias for `delete-duplicates` and `delete-duplicates!` ([SRFI 1](https://srfi.schemers.org/srfi-1/srfi-1.html#delete-duplicates)).

::: tip Examples:
``` scheme
> (unique [1 2 3 2])
(1 2 3)

> (let (lst [1 2])
    (unique [lst lst] ev?))
((1 2))
```
:::

## duplicates ##

``` scheme
(duplicates lst [test = equal?] [key: #f]) -> list

  lst  := proper list
  test := test procedure which takes two arguments, defaults to equal?
  key  := optional unary procedure to get the to compare item out of a list element
```
`duplicates` returns a cons cells `(item . count)` for every element
that occurs more than once in `lst`. If `key:` is not `#f`
the unary procedure is applied to every element before comparison.

::: tip Examples:
``` scheme
> (duplicates ['a 1 'a])
((a . 2))

> (duplicates [1 2 3])
()

> (duplicates '((a . 10) (b . 10)) key: cdr)
((10 . 2))
```
:::

## rassoc ##

``` scheme
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
``` scheme
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

## when-list-or-empty ##

``` scheme
(when-list-or-empty lst body ...) -> body ... | []

  lst := value or list on which expansion depends
```

Macro which expands to *body* expressions only if *lst* is a non-empty list,
otherwise an empty list is returned.

::: tip Examples:
``` scheme
> (let (nums [1 2 3])
    (when-list-or-empty nums
      (cdr nums)))
(2 3)

> (when-list-or-empty []
    (cons "never" "expanded"))
()
```
:::

## slice ##

``` scheme
(slice lst start [limit = #f]) -> list

  lst   := proper list
  start := start index
  limit := number of items to take from lst
```

Returns a list from `lst`, starting from the left at `start`,
containing `limit` elements.

::: tip Examples:
``` scheme
> (slice [1 2 3 4] 2)
(3 4)

> (slice [1 2 3 4] 2 1)
(3)
```
:::

## slice-right ##

``` scheme
(slice-right lst start [limit = #f]) -> list

  lst   := proper list
  start := start index from the right of lst
  limit := number of items to take from lst
```

Returns a list from `lst`, starting from the right at `start`,
containing `limit` elements.

::: tip Examples:
``` scheme
> (slice-right [1 2 3 4] 2)
(1 2)

> (slice-right [1 2 3 4] 2 1)
(2)
```
:::

## slice! ##

``` scheme
(slice! lst start [limit = #f]) -> list

  lst   := proper list
  start := start index
  limit := number of items to take from lst
```

Returns a sublist by potentially updating the input list `lst`.
Starting from the left at `start`, containing `limit` elements.

::: tip Examples:
``` scheme
> (def lst [1 2 3 4 5])
> (slice! lst 2 2)
(3 4)
```
:::

## slice-right! ##

``` scheme
(slice-right! lst start [limit = #f]) -> list

  lst   := proper list
  start := start index from the right of lst
  limit := number of items to take from lst
```

Returns a sublist by potentially updating the input list `lst`.
Starting from the right at `start`, containing `limit` elements.

::: tip Examples:
``` scheme
> (def lst [1 2 3 4 5])
> (slice-right! lst 2 2)
(2 3)
```
:::

## butlast ##

``` scheme
(butlast lst) -> list

  lst   := proper list
```

`butlast` returns a copy of the proper list `lst`, except the last element.
When `lst` is empty, `lst` is returned as it is.

::: tip Examples:
``` scheme
> (butlast [1 2 3])
(1 2)

> (butlast [])
()
```
:::

## split ##

``` scheme
(split lst proc [limit = #f]) -> list

  lst   := proper list
  stop  := value or unary procedure
  limit := optional, split the list only limit times
```
split the list `lst` into a list-of-lists using the value or
unary procedure `stop`. If limit is set, split the list only limit times.

::: tip Examples:
``` scheme
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

``` scheme
(take-until pred lst) -> list

  pred := predicate
  lst  := proper or circular list
```

`take-until` returns a list with all elements before `pred` returns `#t`.
`take-until!` is the linear-update variant of `take-until`.

::: tip Examples:
``` scheme
> (take-until number? ['a "hi" 1 'c])
(a "hi")
```
:::

## drop-until ##

``` scheme
(drop-until pred lst) -> list

  pred := predicate
  lst  := proper or circular list
```

`drop-until` returns a list with all elements from the point on `pred` returns `#t`.

::: tip Examples:
``` scheme
> (drop-until number? ['a [] "hi" 1 'c])
(1 c)
```
:::

## group ##

``` scheme
(group lst [test = equal?]) -> list

  lst  := proper list
  test := optional, binary predicate
```
group consecutive elements of the list `lst` into a list-of-lists.

::: tip Examples:
``` scheme
> (group [1 2 2 3 1 1])
((1) (2 2) (3) (1 1))

> (import :std/sort)
> (group (sort [1 2 2 3 1 1] <) eqv?)
((1 1 1) (2 2) (3))
```
:::

## every-consecutive? ##

``` scheme
(every-consecutive? pred lst)
```
returns a boolean that is true if any two consecutive terms in the list satisfy the predicate.
In particular, if the predicate is a partial order predicate (respectively a strict partial
order predicate), then the list is totally ordered (respectively strictly totally ordered)
according to the predicate.

::: tip Examples:
``` scheme
> (every-consecutive? <= [1 2 2 3 10 100])
#t

> (every-consecutive? < [5 1 8 9])
#f
```
:::

## first-and-only ##

``` scheme
(first-and-only lst)
```
returns the first and only value of a singleton list,
or raises an error if the argument wasn't a singleton list.

::: tip Examples:
``` scheme
> (first-and-only '(42))
42

> (first-and-only '())
*** ERROR IN std/misc/list#first-and-only, -515899390@648.11 -- Assertion failed (and (pair? x) (null? (cdr x)))
```
:::

