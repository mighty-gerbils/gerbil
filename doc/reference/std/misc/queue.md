# Simple Queues
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/queue)
```
:::

## make-queue
``` scheme
(make-queue) -> queue
```

Creates a new empty queue, a First-In-First-Out (FIFO) data structure similar to
a list. Compared to an ordinary lists, queues allow appending elements without
having to walk all to the end first.

::: tip Examples:
``` scheme
> (import :std/test)
> (let (q (make-queue))
    (check (queue-empty? q) => #t)
    (enqueue! q 1)
    (enqueue! q 2)
    (enqueue! q 3)
    (check (queue-length q) => 3)
    (queue->list q))
... check (queue-empty? q) is equal? to #t
... check (queue-length q) is equal? to 3
(1 2 3)
```
:::

## queue?
``` scheme
(queue? q) -> boolean

  q := queue to check
```

Returns `#t` if *q* is a queue, `#f` otherwise.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (enqueue! q (make-queue))
    (and (queue? q)
         (queue? (queue-peek q))
         (queue? (make-queue))))
#t

> (queue? (list 1 2 3))
#f
```
:::

## queue-length
``` scheme
(queue-length q) -> fixnum

  q := queue to check
```

Returns the number of elements enqueued in *q*.

Similar to retrieving the length of a vector, this operation is `O(1)`, since
queues always keep track of their length.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (enqueue! q #\a)
    (enqueue! q #\b)
    (enqueue! q #\c)
    (queue-length q))
3

> (queue-length (make-queue))
0
```
:::

## queue-empty?
``` scheme
(queue-empty? q) -> boolean

  q := queue to check
```

Returns `#t` if *q* has no elements enqueued, `#f` otherwise.

::: tip Examples:
``` scheme
> (queue-empty? (make-queue))
#t

> (let (q (make-queue))
    (enqueue! q (make-queue))
    (and (queue-empty? (queue-peek q))
         (queue-empty? q)))
#f
```
:::

## non-empty-queue?
``` scheme
(non-empty-queue? q) -> boolean

  q := queue to check
```

Returns `#t` if *q* is not empty, i.e., it has at least one element enqueued.

Equivalent to `(not (queue-empty? q))`.

::: tip Examples:
``` scheme
> (non-empty-queue? (make-queue))
#f

> (let (q (make-queue))
    (enqueue! q [])
    (non-empty-queue? q))
#t
```
:::

## enqueue!
``` scheme
(enqueue! q elem) -> unspecified

  q    := queue to push onto
  elem := element to append to q
```

Enqueues (pushes) *elem* to the end of *q*. Similar to `set!`, it's unspecified
what `enqueue!` returns afterwards.

This operation is faster than simply appending to the end of a regular list,
because queues needn't be walked first.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (enqueue! q 10)
    (enqueue! q 20)
    (enqueue! q 30)
    (queue->list q))
(10 20 30)

> (import :std/srfi/1 :std/test)
> (let ((q (make-queue))
        (lst (iota 10)))
    (for-each (cut enqueue! q <>) lst)
    (check-equal? (queue-length q) (length lst))
    (check-equal? (queue->list q) lst))
... check (queue-length q) is equal? to 10
... check (queue->list q) is equal? to (0 1 2 3 4 5 6 7 8 9)
```
:::

## enqueue-front!
``` scheme
(enqueue-front! q elem) -> unspecified

  q    := queue to push onto
  elem := element to enqueue to q
```

`enqueue-front!` is similar to `enqueue!`, but pushes *elem* to the front of *q*
instead of the end. It's unspecified what will be returned.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (enqueue-front! q 10)
    (enqueue-front! q 20)
    (enqueue-front! q 30)
    (queue->list q))
(30 20 10)
```
:::

## dequeue!
``` scheme
(dequeue! q [default = absent-obj]) -> any | default | error

  q       := queue to pop from
  default := optional element returned when q is empty
```

Pops the front of *q* and returns that value. If *q* is empty and a default
value is supplied, then *default* is returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (for-each (cut enqueue! q <>) [1 2 3])
    (displayln (dequeue! q))
    (displayln (dequeue! q))
    (displayln (queue->list q))
    (displayln (dequeue! q 100))
    ;; would signal error without default value:
    (displayln (dequeue! q 100)))
1
2
(3)
3
100
```
:::

## queue-peek
``` scheme
(queue-peek q [default = absent-obj]) -> any | default | error

  q       := queue to peek front
  default := optional element returned when q is empty
```

Returns the front value of *q* without popping it from the queue like `dequeue!`
does. If *q* is empty and a default value is supplied, then *default* is
returned. Otherwise an error is raised.

::: tip Examples:
``` scheme
> (def q (make-queue))
> (enqueue! q #\a)
#<queue #8>
> (enqueue! q #\b)
#<queue #8>
> (queue-peek q)
#\a
> (dequeue! q)
#\a
> (queue-peek q)
#\b
> (dequeue! q)
#\b
> (queue-peek q 10)
10
> (queue-peek q)
error
```
:::

## queue->list
``` scheme
(queue->list q) -> list

  q := queue to transform into list
```

Returns a new list of the elements queued in *q*, in order.

::: tip Examples:
``` scheme
> (import :std/srfi/1)
> (let (q (make-queue))
    (for-each (cut enqueue! q <>) (iota 100))
    (take (queue->list q) 5))
(0 1 2 3 4)
```
:::

## queue
```
(defsyntax queue)
```

Queue type, for user-defined generics and destructuring.

::: tip Examples:
``` scheme
> (let (q (make-queue))
    (enqueue! q 1)
    (enqueue! q 'b)
    (enqueue! q #\c)
    (with ((queue elems back length) q)
      (displayln "elements: " elems ", back: " back "\nand holds " length " items")))
elements: (1 b c), back: (c)
and holds 3 items
```
:::
