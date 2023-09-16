
## Priority Queues
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/pqueue)
```
:::

### make-pqueue
``` scheme
(make-pqueue prio [cmp = <] [capacity = 15]) -> pqueue

  prio     := function returning priority of elements
  cmp      := optional heap comparison function, min-heap by default
  capacity := optional initial size
```

Creates a new empty priority queue, a data structure similar to a simple queue,
but extended to take the associated priority value of an element into account
when pushing, popping and peeking elements.

- *prio* is a function returning the real priority of an element. It is utilized
  to determine the insert position whenever some element is about to be pushed
  onto the priority queue.
- *cmp*, a comparison function, is used to order the elements based on their
  priority, defaulting to `<`.
- *capacity* is the number of elements the pqueue can hold before it needs to
  resize itself.

::: tip Examples:
For example, let's assume we always want to retrieve the longest string
currently within our queue. This could be achieved with `string-length` as our
priority function and ordering these lengths via `>`:
``` scheme
> (def pq (make-pqueue string-length >))
> (pqueue-push! pq "shortest")
> (pqueue-push! pq "very, very, long")
> (pqueue-push! pq "medium length")
> (pqueue-peek pq)
"very, very, long"
> (pqueue-pop! pq)
"very, very, long"
> (pqueue-peek pq)
"medium length"
```
:::

### pqueue?
``` scheme
(pqueue? pq) -> boolean

  pq := priority queue to check
```

Returns `#t` if *pq* is a priority queue, `#f` otherwise.

::: tip Examples:
``` scheme
> (let (pq (make-pqueue identity))
    (when (pqueue? pq)
      (pqueue-push! pq 1000)
      (pqueue-push! pq 100)
      (pqueue-push! pq 10)
      (pqueue-peek pq)))
10

> (import :std/misc/queue)
> (pqueue? (make-queue))
#f
```
:::

### pqueue-size
``` scheme
(pqueue-size pq) -> fixnum

  pq := priority queue to inspect
```

Returns the number of elements queued in *pq*.

This operation is `O(1)`, since priority queues always keep track of their size.

::: tip Examples:
``` scheme
> (let (pq (make-pqueue char->integer))
    (string-for-each (cut pqueue-push! pq <>) "ABCDEF")
    (pqueue-size pq))
6
```
:::

### pqueue-empty?
``` scheme
(pqueue-empty? pq) -> boolean

  pq := priority queue to check
```

Returns `#t` if *pq* has no elements queued, `#f` otherwise.

::: tip Examples:
``` scheme
> (pqueue-empty? (make-pqueue identity < 1000))
#t

> (make-pqueue identity)
#<pqueue #21>
> (pqueue-push! #21 1)
> (pqueue-push! #21 3)
> (pqueue-push! #21 5)
> (pqueue-empty? #21)
#f
```
:::

### pqueue-push!
``` scheme
(pqueue-push! pq elem) -> unspecified

  pq   := priority queue to push onto
  elem := element to push to pq
```

Enqueues *elem* in *pq*. The insert position depends on the priority and
comparison functions specified in `make-pqueue`. Similar to `set!`, it's
unspecified what `pqueue-push!` returns afterwards.

::: tip Examples:
``` scheme
> (defstruct city (name population))
> (def cities [(make-city "Salto" 104028)
               (make-city "Санкт-Петербург" 4879566)
               (make-city "Qaqortoq" 3089)
               (make-city "አዲስ ፡ አበባ" 3352000)
               (make-city "Jayapura" 315872)
               (make-city "香港" 7448900)])
> (let (pq (make-pqueue city-population))
    (for-each (cut pqueue-push! pq <>) cities)
    (city-name (pqueue-peek pq)))
"Qaqortoq"
```
:::

### pqueue-pop!
``` scheme
(pqueue-pop! pq [default = absent-obj]) -> any | default | error

  pq      := priority queue to pop from
  default := optional element returned when pq is empty
```

Pops the next value in *pq* and returns it. Which element gets popped depends on
the priority and comparison function specified in `make-pqueue`. If *pq* is
empty and a default value is supplied, then *default* is returned. Otherwise an
error is raised.

::: tip Examples:
``` scheme
> (import :std/sugar)
> (let (pq (make-pqueue values))
    (for-each (cut pqueue-push! pq <>) [10 1 20 2 30 3])
    (until (pqueue-empty? pq)
      (displayln (pqueue-pop! pq)))
    ;; would signal error without default value:
    (pqueue-pop! pq 100))
1
2
3
10
20
30
100
```
:::

### pqueue-peek
``` scheme
(pqueue-peek pq) -> any | error

  pq := priority queue to peek
```

Returns the next value in *pq* without popping it from the priority queue like
`pqueue-pop!` does. An error is raised when *pq* is empty.

::: tip Examples:
``` scheme
> (import :std/srfi/1)
> (def pq (make-pqueue length))
> (pqueue-push! pq (iota (random-integer 10)))
> (pqueue-peek pq)
(0 1 2 3 4 5 6 7)
> (pqueue-push! pq [13 21 34 55])
> (pqueue-peek pq)
(13 21 34 55)
```
:::

### pqueue-contents
``` scheme
(pqueue-contents pq) -> list

  pq := priority queue of which to extract the contents
```

Returns the contents of the priority queue as a list, without modifying the priority queue.

::: tip Examples:
``` scheme
> (def pq (make-pqueue identity))
> (for-each (cut pqueue-push! pq <>) [8 2 3 4 1 9 7])
> (pqueue-contents pq)
(1 2 3 8 4 9 7)
```
:::

### pqueue
```
(defsyntax pqueue)
```

Priority queue type for user-defined generics and destructuring.

::: tip Examples:
``` scheme
> (let (pq (make-pqueue string-length >))
    (pqueue-push! pq "Mimas")
    (pqueue-push! pq "Enceladus")
    (pqueue-push! pq "Tethys")
    (with ((pqueue internal-heap) pq)
      (with ((vector size . vals) internal-heap)
        (displayln "size: " size "\nvals: " vals))))
size: 3
vals: ((9 . Enceladus) (5 . Mimas) (6 . Tethys) 0 0 0 0 0 0 0 0 0 0 0 0)
```
:::
