# Deques
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/deque)
```
:::

## make-deque
``` scheme
(make-deque) -> deque
```

Creates a new empty deque, a double-ended queue, which allows adding and
removing elements on both ends without walking the whole data structure first.

::: tip Examples:
``` scheme
> (import :std/test)
> (let (dq (make-deque))
    (check (deque-empty? dq) => #t)
    (push-front! dq 10)
    (push-front! dq 20)
    (push-back!  dq 30)
    (check (deque-length dq) => 3)
    (deque->list dq))
... check (deque-empty? dq) is equal? to #t
... check (deque-length dq) is equal? to 3
(20 10 30)
```
:::

## deque?
``` scheme
(deque? dq) -> boolean

  dq := deque to check
```

Returns `#t` if *dq* is a deque, `#f` otherwise.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-front! dq (make-deque))
    (and (deque? dq)
         (deque? (peek-front dq))
         (deque? (make-deque))))
#t

> (deque? (list 1 2 3))
#f
```
:::

## deque-length
``` scheme
(deque-length dq) -> fixnum

  dq := deque to inspect
```

Returns the number of elements *dq* holds.

Similar to retrieving the length of a vector, this operations is `O(1)`, since
deques always keep track of their length.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (for-each (cut push-back! dq <>) '(A B C D E F))
    (deque-length dq))
6

> (deque-length (make-deque))
0
```
:::

## deque-empty?
``` scheme
(deque-empty? dq) -> boolean

  dq := deque to check whether empty
```

Returns `#t` if *dq* has no elements queued, `#f` otherwise.

::: tip Examples:
``` scheme
> (deque-empty? (make-deque))
#t

> (let (dq (make-deque))
    (push-back! dq (make-deque))
    (and (deque-empty? (peek-front dq))
         (deque-empty? dq)))
#f
```
:::

## push-front!
``` scheme
(push-front! dq elem) -> unspecified

  dq   := deque to push onto
  elem := element to push to dq
```

Enqueues (pushes) *elem* to the front of the *dq*. Similar to `set!`, it's
unspecified what `push-front!` returns afterwards.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-front! dq 30)
    (push-front! dq 20)
    (push-front! dq 10)
    (deque->list dq))
(10 20 30)
```
:::

## push-back!
``` scheme
(push-back! dq elem) -> unspecified

  dq   := deque to push onto
  elem := element to push to dq
```

`push-back!` is similar to `push-front!`, but pushes *elem* to the back of *dq*
instead of the front.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-back! dq #\a)
    (push-back! dq #\b)
    (push-back! dq #\c)
    (list->string (deque->list dq)))
"abc"
```
:::

## pop-front!
``` scheme
(pop-front! dq [default = absent-obj]) -> any | default | error

  dq      := deque to pop from
  default := optional element returned when dq is empty
```

Pops the front of *dq* and returns that value. If *dq* is empty and a default
value is supplied, then *default* is returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (for-each (cut push-back! dq <>) [1 2 3])
    (displayln (pop-front! dq 0))
    (displayln (pop-front! dq 0))
    (displayln (pop-front! dq 0))
    ;; would signal error without default value:
    (displayln (pop-front! dq 0)))
1
2
3
0
```
:::

## pop-back!
``` scheme
(pop-back! dq [default = absent-obj]) -> any | default | error

  dq      := deque to pop from
  default := optional element returned when dq is empty
```

`pop-back!` is similar to `pop-front!`, but pops the back of *dq* instead and
returns that value. If *dq* is empty and a default value is supplied, then
*default* is returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (import (group-in :std iter sugar))
> (let (dq (make-deque))
    (for ((x "ABCDEF") (y (in-naturals 1)))
      (push-front! dq (cons x y)))
    (until (deque-empty? dq)
      (displayln (pop-back! dq))))
(A . 1)
(B . 2)
(C . 3)
(D . 4)
(E . 5)
(F . 6)
```
:::

## peek-front
``` scheme
(peek-front dq [default = absent-obj]) -> any | default | error

  dq      := deque to peek front
  default := optional element returned when dq is empty
```

Returns the front value of *dq* without popping it from the deque like
`pop-front!` does. If *dq* is empty and a default value is supplied, then
*default* is returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-back! dq 10)
    (push-back! dq 20)
    (push-back! dq 30)
    (peek-front dq))
10

> (import :std/sugar :std/misc/func)
> (let (dq (make-deque))
    (for-each (cut push-front! dq <>)
              (repeat random-integer 10 10))
    (displayln (deque->list dq))
    (while (odd? (peek-front dq 0))
      (pop-front! dq))
    (deque->list dq))
(3 5 5 1 0 4 5 8 6 1)
(0 4 5 8 6 1)
```
:::

## peek-back
``` scheme
(peek-back dq [default = absent-obj]) -> any | default | error

  dq      := deque to peek back
  default := optional element returned when dq is empty
```

Returns the back value of *dq* without popping it from the deque like
`pop-back!` does. If *dq* is empty and a default value is supplied, then
*default* is returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-back! dq 'A)
    (push-back! dq 'B)
    (push-back! dq 'C)
    (displayln (peek-back dq))
    (pop-front! dq)
    (displayln (peek-back dq))
    (pop-back! dq)
    (displayln (peek-back dq)))
C
C
B

> (def dq (make-deque))
> (push-back! dq "xyz")
#<deque #15>    ; unspecified, don't depend on this
> (peek-back dq 'EMPTY)
"xyz"
> (pop-front! dq)
"xyz"
> (peek-back dq 'EMPTY)
EMPTY
> (peek-back dq)
error
```
:::

## deque->list
``` scheme
(deque->list dq) -> list

  dq := deque to transform into list
```

Returns a new list of the elements queued in *dq*, in order.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-back! dq #\a)
    (push-back! dq 100)
    (push-back! dq "other")
    (deque->list dq))
(#\a 100 "other")

> (import :std/srfi/1)
> (let (dq (make-deque))
    (for-each (cut push-front! dq <>) (iota 100))
    (drop (deque->list dq) 90))
(9 8 7 6 5 4 3 2 1 0)
```
:::

## deque
``` scheme
(defsyntax deque)
```

Deque type for user-defined generics and destructuring.

::: tip Examples:
``` scheme
> (let (dq (make-deque))
    (push-back! dq "first")
    (push-back! dq "second")
    (push-back! dq "third")
    (match dq
      ((deque front back length)
       (displayln "front:  " front)
       (displayln "back:   " back)
       (displayln "length: " length))))
front:  #<node #17>
back:   #<node #18>
length: 3
```
:::
