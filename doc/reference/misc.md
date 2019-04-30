# Miscellaneous

## Buffered channels.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/channel)
```
:::

### make-channel
::: tip usage
```
(make-channel ...)
```
:::

Please document me!

### channel?
::: tip usage
```
(channel? ...)
```
:::

Please document me!

### channel-put
::: tip usage
```
(channel-put ...)
```
:::

Please document me!

### channel-try-put
::: tip usage
```
(channel-try-put ...)
```
:::

Please document me!

### channel-sync
::: tip usage
```
(channel-sync ...)
```
:::

Please document me!

### channel-get
::: tip usage
```
(channel-get ...)
```
:::

Please document me!

### channel-try-get
::: tip usage
```
(channel-try-get ...)
```
:::

Please document me!

### channel-close
::: tip usage
```
(channel-close ...)
```
:::

Please document me!

### channel-closed?
::: tip usage
```
(channel-closed? ...)
```
:::

Please document me!



## Asynchronous Completions
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/completion)
```
:::

### completion
::: tip usage
```
(defsyntax completion ...)
```
:::

Completion type for user-defined generics.

### make-completion
::: tip usage
```
(make-completion)
=> <completion>
```
:::

Creates a new asynchronous completion.

### completion?
::: tip usage
```
(completion? obj)
=> boolean
```
:::

Returns true if the object is a completion.

### completion-ready?
::: tip usage
```
(completion-ready? c)
=> boolean
```
:::

Returns true if the completion is ready.

### completion-wait!
::: tip usage
```
(completion-wait! c)
  c := competion
=> any
```
:::

Waits on the completion until it has been posted with `completion-post!` or an error
has been signaled with `completion-error!`. If the completion was posted, the posted
value is returned. If an error was signalled, then it is raised as an exception.

### completion-post!
::: tip usage
```
(completion-post! c val)
  c := completion
```
:::

Posts the completion with value `val`.

### completion-error!
::: tip usage
```
(completion-error! c exn)
  exn := completion
```
:::

Signals an error in the completion.

### with-completion-error
::: tip usage
```
(with-completion-error c body ...)
  c := completion
```
:::

Evaluates `body ...` with an exception handler that signals an error in the completion.


## Thread Barriers
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/barrier)
```
:::

### barrier
::: tip usage
```
(defsyntax barrier ...)
```
:::

Barrier type for user-defined generics.

### make-barrier
::: tip usage
```
(make-barrier limit)
  limit := fixnum
=> <barrier>
```
:::

Create a barrier, awaiting for `limit` threads.

### barrier?
::: tip usage
```
(barrier? obj)
=> boolean
```
:::

Returns true if the object is a barrier.

### barrier-wait!
::: tip usage
```
(barrier-wait! b)
  b := barrier
```
:::

Waits on a thread barrier until it has been posted `limit` times with `barrier-post!`
or an error has been signaled with `barrier-error!`.

### barrier-post!
::: tip usage
```
(barrier-post! b)
  b := barrier
```
:::

Posts the barrier.

### barrier-error!
::: tip usage
```
(barrier-error! b exn)
```
:::

Signals an error on the barrier.


### with-barrier-error
::: tip usage
```
(with-barrier-error b body ...)
  b := barrier
```
:::

Evaluates `body ...` with an exception handler that signals an error in the barrier.


## Deques
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/deque)
```
:::

### deque
```
(defsyntax deque ...)
```

Deque type for user-defined generics.

### make-deque
::: tip usage
```
(make-deque)
=> <deque>
```
:::

Creates a new deque.

### deque?
::: tip usage
```
(deque? obj)
=> boolean
```
:::

Returns true if the object is a deque.

### deque-length
::: tip usage
```
(deque-length dq)
  dq := deque
=> integer
```
:::

Returns the size of the deque.

### deque-empty?
::: tip usage
```
(deque-empty? dq)
  dq := deque
=> boolean
```
:::

Returns true if the deque is empty.

### push-front!
::: tip usage
```
(push-front! dq v)
  dq := deque
```
:::

Enqueues (pushes) the value `v` to the front of the queue.

### pop-front!
::: tip usage
```
(pop-front! dq [default])
  dq := deque
=> any
```
:::

Pops the front of the queue and a returns the value.
If the deque is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.

### peek-front
::: tip usage
```
(peek-front dq [default])
  dq := deque
=> any
```
:::

Peeks the front of the queue and a returns the value without popping it
If the deque is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.

### push-back!
::: tip usage
```
(push-back! dq v)
```
:::

Enqueues (pushes) the value `v` to the back of the queue.

### pop-back!
::: tip usage
```
(pop-back! dq [default])
  dq := deque
=> any
```
:::

Pops the back of the queue and a returns the value.
If the deque is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.


### peek-back
::: tip usage
```
(peek-back dq [default])
  dq := deque
=> any
```
:::

Peeks the back of the queue and a returns the value without popping it
If the deque is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.


### deque-&gt;list
::: tip usage
```
(deque->list dq)
  dq := deque
=> list
```
:::

Returns a list of the value contained in the deque, in order.


## List utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/list)
```
:::

### alist?
``` scheme
(alist? alist) -> boolean

  alist := association list
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

### plist?
``` scheme
(plist? plist) -> boolean

  plist := property list
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

### plist-&gt;alist
``` scheme
(plist->alist plist) -> alist | error

  plist := property list
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

### alist-&gt;plist
``` scheme
(alist->plist alist) -> plist | error

  alist := association list
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

### length=?, length&lt;? ... length&gt;=?
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
| -------------------|------------------------------|
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

### length=n?, length&lt;n? ... length&gt;=n?
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
| --------------------|------------------------|
| `(length=n?  x n)`  | `(=  (length x) n)`    |
| `(length<n?  x n)`  | `(<  (length x) n)`    |
| `(length<=n? x n)`  | `(<= (length x) n)`    |
| `(length>n?  x n)`  | `(>  (length x) n)`    |
| `(length>=n? x n)`  | `(>= (length x) n)`    |

These functions are potentially more efficient because they only need to check
the list for up to n elements instead of calculating *lst*'s length up-front.

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

### call-with-list-builder
``` scheme
(call-with-list-builder proc) -> list

  proc := procedure that takes two proc identifiers as input
```

Takes a procedure or lambda *proc* which itself takes two procedures that can have
any name but are called *put!* and *peek* here:

- *put!* will append its input element onto an internal list (and thus modifies
  it) on each invocation.
- *peek* retrieves the elements collected so far, or [] if *put!* is never called.

Finally, `call-with-list-builder` returns the constructed list.

::: tip Examples:
``` scheme
> (import :std/iter)
> (call-with-list-builder
    (lambda (put! peek)
      (for (x (in-range 5 5))
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

### with-list-builder
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
    (for (n (in-range 100 1))
      (let ((mod3 (zero? (modulo n 3)))
            (mod5 (zero? (modulo n 5))))
        (put! (cond ((and mod3 mod5) "fizzbuzz")
                    (mod3 "fizz")
                    (mod5 "buzz")
                    (else n))))))
(1 2 "fizz" 4 "buzz" "fizz" ... 97 98 "fizz" "buzz")
```
:::

### snoc
``` scheme
(snoc elem lst) -> list | error

  elem := element to append to lst
  lst  := proper list
```

`snoc` is similar to `cons`, but appends *elem* at the end of *lst* instead of
putting it at the front.

Difference to `cons`: `snoc` will signal an error when *lst* is not a proper
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

### append1
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

### for-each!
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

### push!
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

### flatten
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

(flatten [1 [] [2 [3 [] 4] 5]])
(1 2 3 4 5)  ; ignores empty sublists

> (flatten '((a . 1) (b . 2) (c . 3)))
(a b c)      ; expects proper non-dotted list-of-lists
```
:::

### flatten1
``` scheme
(flatten1 lst) -> list | error

  lst := proper nested list of lists
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

### rassoc
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

### when-list-or-empty
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

## LRU caches
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/lru)
```
:::

### lru-cache
::: tip usage
```
(defsyntax lru-cache ...)
```
:::

LRU cache type for user-defined generics.


### make-lru-cache
::: tip usage
```
(make-lru-cache cap)
  cap := fixnum; LRU cache capacity
=> <lru-cache>
```
:::

Creates a new LRU cache with capacity `cap`, which must be > 1.

### lru-cache?
::: tip usage
```
(lru-cache? obj)
=> boolean
```
:::

Returns true if the object is an LRU cache.

### lru-cache-ref
::: tip usage
```
(lru-cache-ref lru key [default])
  lru := lru-cache
```
:::

Returns the association of `key` in the LRU cache, and promotes the node to the head of the
LRU queue. If there is no association, then default is returned. If the default is omitted,
then an error is raised.

### lru-cache-get
::: tip usage
```
(lru-cache-get lru key)
  lru := lru-cache
```
:::

Same as `(lru-cache-ref lru key #f)`.

### lru-cache-put!
::: tip usage
```
(lru-cache-put! lru key val)
  lru := lru-cache
```
:::

Puts an association of `key` to `val` into the LRU cache.
If the cache is full, then the tail of the LRU queue (ie the value least recently used)
is dropped from the cache.

### lru-cache-remove!
::: tip usage
```
(lru-cache-remove! lru key)
  lru := lru-cache
```
:::

Removes the association of `key` from the LRU cache.

### lru-cache-size
::: tip usage
```
(lru-cache-size lru)
  lru := lru-cache
=> fixnum
```
:::

Returns the current size of the LRU cache.

### lru-cache-capacity
::: tip usage
```
(lru-cache-capacity lru)
  lru := lru-cache
=> fixnum
```
:::

Returns the capacity of the LRU cache.

### lru-cache-flush!
::: tip usage
```
(lru-cache-flush! lru)
  lru := lru-cache
```
:::

Clears the LRU cache.

### lru-cache-for-each
::: tip usage
```
(lru-cache-for-each proc lru)
  proc := lambda (key value)
  lru  := lru-cache
```
:::

Applies `(proc key val)` for every key-value association in the LRU cache,
in most recently used order.


### lru-cache-walk
::: tip usage
```
(lru-cache-walk lru proc)
```
:::

Same as `(lru-cache-for-each proc lru)`.

### lru-cache-fold
::: tip usage
```
(lru-cache-fold proc iv lru)
  proc := lambda (key value r)
  lru  := lru-cache
```
:::

Folds the LRU cache in Most Recently Used order.

### lru-cache-foldr
::: tip usage
```
(lru-cache-foldr proc iv lru)
  proc := lambda (key value r)
  lru  := lru-cache
```
:::

Folds the LRU cache in Least Recently Used order.

### lru-cache-&gt;list
::: tip usage
```
(lru-cache->list lru)
=> alist
```
:::

Returns an alist of key-value associations in the cache.

### in-lru-cache
::: tip usage
```
(in-lru-cache lru)
  lru := lru-cache
=> iterator
```
:::

Creates an iterator over the LRU cache.

### in-lru-cache-keys
::: tip usage
```
(in-lru-cache-keys lru)
  lru := lru-cache
=> iterator
```
:::

Creates an iterator over the LRU cache keys.

### in-lru-cache-values
::: tip usage
```
(in-lru-cache-values lru)
  lru := lru-cache
=> iterator
```
:::

Creates an iterator over the LRU cache values.


## Port utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/ports)
```
:::

### copy-port
::: tip usage
```
(copy-port ...)
```
:::

Please document me!

### read-all-as-string
::: tip usage
```
(read-all-as-string ...)
```
:::

Please document me!

### read-file-string
::: tip usage
```
(read-file-string ...)
```
:::

Please document me!

### read-all-as-lines
::: tip usage
```
(read-all-as-lines ...)
```
:::

Please document me!

### read-file-lines
::: tip usage
```
(read-file-lines ...)
```
:::

Please document me!

### Port Destructor
```
(defmethod {destroy <port>} close-port)
```

The module also defines a `destroy` method for ports, so that they can
be used in `with-destroy` forms and other primitives that use the destroy
idiom.


## Priority Queues
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/pqueue)
```
:::

### pqueue
```
(defsyntax pqueue ...)
```

Priority queue type, for user-defined generics.

### make-pqueue
::: tip usage
```
(make-pqueue prio [cmp = <])
  prio := lambda (any) => any; element priority function
  cmp  := priority comparison function
=> pqueue
```
:::

Creates a new priority queue.

### pqueue?
::: tip usage
```
(pqueue? obj)
=> boolean
```
:::

Returns true if the object is a priority queue.

### pqueue-empty?
::: tip usage
```
(pqueue-empty? pq)
  pq := pqueue
=> boolean
```
:::

Returns true if the priority queue is empty.

### pqueue-size
::: tip usage
```
(pqueue-size pq)
  pq := pqueue
=> integer

```
:::

Returns the size of the priority queue.

### pqueue-peek
::: tip usage
```
(pqueue-peek pq [default])
  pq := pqueue
=> any
```
:::

Peeks the next value in the queue, without popping it.
If the queue is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.


### pqueue-pop!
::: tip usage
```
(pqueue-pop! pq [default])
  pq := pqueue
=> any
```
:::

Peeks the next value in the queue, and returns it.
If the queue is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.


### pqueue-push!
::: tip usage
```
(pqueue-push! pq v)
  pq := pqueue
```
:::

Pushes the value `v` in the queue.



## Proces Utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/process)
```
:::

### Overview

These utilities synchronously spawn a subprocess,
spawn a coprocess function in a thread to interact with the process
(default: `std/misc/ports#read-all-as-string`),
check the status of the process upon termination,
and return the result of that coprocess if successful.

### run-process
::: tip usage
```
(run-process ...)
```
:::

Please document me!

### run-process/batch
::: tip usage
```
(run-process/batch ...)
```
:::

Please document me!


## Simple Queues
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/queue)
```
:::

### queue
```
(defsyntax queue ...)
```

Queue type, for user-defined generics.

### make-queue
::: tip usage
```
(make-queue)
=> <queue>
```
:::

Creates a new queue.

### queue?
::: tip usage
```
(queue? obj)
=> boolean
```
:::

Returns true if the object is a queue.

### queue-length
::: tip usage
```
(queue-length q)
  q := queue
=> integer
```
:::

Returns the size of the queue.

### queue-empty?
::: tip usage
```
(queue-empty? q)
  q := queue
=> boolean
```
:::

Returns true if the queue is empty.

### non-empty-queue?
::: tip usage
```
(non-empty-queue? q)
```
:::

Returns true if the queue is not empty.

### enqueue!
::: tip usage
```
(enqueue! q v)
  q := queue
```
:::

Enqueues (pushes) the value `v` to the end of the queue.

### enqueue-front!
::: tip usage
```
(enqueue-front! q v)
  q := queue
```
:::

Enqueues the value `v` at the front of the queue.

### dequeue!
::: tip usage
```
(dequeue! q [default])
  q := queue
=> any
```
:::

Pops the end of the queue and a returns the value.
If the queue is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.

### queue-peek
::: tip usage
```
(queue-peek q [default])
  q := queue
=> any
```
:::

Peeks the end of the queue and a returns the value without popping it from the queue.
If the queue is empty and a default value is supplied, then it is returned.
Otherwise an error is raised.


### queue-&gt;list
::: tip usage
```
(queue->list q)
=> list
```
:::

Returns a list of the value contained in the queue, in order.


## Red Black Trees
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/rbtree)
```
:::

### rbtree
::: tip usage
```
(defsyntax rbtree)
```
:::

Red Black tree (rbtree) type.

### rbtree?
::: tip usage
```
(rbtree? obj)
=> boolean
```
:::

Returns true if the object is an rbtree.

### make-rbtree
::: tip usage
```
(make-rbtree cmp)
  cmp := lambda (a b); comparison procedure
=> <rbtree>
```
:::

Creates a new rbtree.

The comparison procedure accepts two keys, a and b, and performs ternary comparison:
- if a < b, then it must return a negative number
- if a = b, then it must return 0
- if a > b, then it must returna positive number

### rbtree-ref
::: tip usage
```
(rbtree-ref rbt key [default])
  rbt := rbtree
=> any
```
:::

Returns the value associated with `key` in the rbtree, or the default if no association
is present; if the default value is omitted then an error is raised.

### rbtree-get
::: tip usage
```
(rbtree-get rbt key)
  rbt := rbtree
=> any
```
:::

Same as `(rbtree-ref rbt key #f)`.

### rbtree-put!
::: tip usage
```
(rbtree-put! rbt key value)
 rbt := rbtree
```
:::

Destructively updates the rbtree, associating `key` with `value`.

### rbtree-put
::: tip usage
```
(rbtree-put rbt key value)
  rbt := rbtree
=> rbtree
```
:::

Functionally updates the rbtree, associating `key` with `value`.

### rbtree-update!
::: tip usage
```
(rbtree-update! rbt k update default)
  rbt := rbtree
  update := lambda (x y); update function
```
:::

Destructively updates the rbtree.

### rbtree-update
::: tip usage
```
(rbtree-update rbt k update default)
=> rbtree
```
:::

Functionally updates the rbtree.

### rbtree-remove!
::: tip usage
```
(rbtree-remove! rbt key)
  rbt := rbtree
```
:::

Destructively updates the rbtree, removing the association of `key`.

### rbtree-remove
::: tip usage
```
(rbtree-remove rbt key)
  rbt := rbtree
=> rbtree
```
:::

Functionally updates the rbtree, removing the association of `key`.

### rbtree-empty?
::: tip usage
```
(rbtree-empty? rbt)
  rbt := rbtree
=> boolean
```
:::

Returns true if the rbtree is an empty.

### rbtree-copy
::: tip usage
```
(rbtree-copy rbt)
  rbt := rbtree
=> rbtree
```
:::

Returns a copy of the rbtree.

### rbtree-for-each
::: tip usage
```
(rbtree-for-each proc rbt)
  proc := lambda (key value)
  rbt  := rbtree
```
:::

Evaluates `(proc key val)` for every association `key -> value` in the rbtree, in ascending order.

### rbtree-for-eachr
::: tip usage
```
(rbtree-for-eachr proc rbt)
  proc := lambda (key value)
  rbt  := rbtree
```
:::

Evaluates `(proc key val)` for every association `key -> value` in the rbtree, in descending order.

### rbtree-fold
::: tip usage
```
(rbtree-fold proc seed rbt)
  proc := lambda (key value seed)
  rbt := rbtree
=> any
```
:::

Folds the rbtree in ascending order.

### rbtree-foldr
::: tip usage
```
(rbtree-foldr proc seed rbt)
  proc := lambda (key value seed)
  rbt := rbtree
=> any
```
:::

Folds the rbtree in descending order.

### rbtree-&gt;list
::: tip usage
```
(rbtree->list rbt)
  rbt := rbtree
=> list
```
:::

Returns a list with all the associations in the rbtree, in ascending order.

### rbtree-&gt;listr
::: tip usage
```
(rbtree->listr rbt)
  rbt := rbtree
=> list
```
:::

Returns a list with all the associations in the rbtree, in descending order.

### list-&gt;rbtree
::: tip usage
```
(list->rbtree cmp lst)
  cmp := lambda (x y); comparison function
  lst := alist
=> rbtree
```
:::

Creates a new rbtree from an associative list.

### in-rbtree
::: tip usage
```
(in-rbtree rbt)
  rbt := rbtree
=> iterator
```
:::

Creates an iterator over the rbtree.

### in-rbtree-keys
::: tip usage
```
(in-rbtree-keys rbt)
  rbt := rbtree
=> iterator
```
:::

Creates an iterator over the rbtree keys.

### in-rbtree-values
::: tip usage
```
(in-rbtree-values rbt)
  rbt := rbtree
=> iterator
```
:::

Creates an iterator over the rbtree values.

### string-cmp
::: tip usage
```
(string-cmp a b)
  a, b := string
=> fixnum
```
:::

Comparison function for lexicographic string ordering.

### symbol-cmp
::: tip usage
```
(symbol-cmp a b)
  a, b := symbol
=> fixnum
```
:::

Comparison function for lexicographic symbol ordering.

### symbol-hash-cmp
::: tip usage
```
(symbol-hash-cmp a b)
  a, b := symbol
=> fixnum
```
:::

Comparison function for symbol ordering based on their hashes;
ties are broken by lexicographic ordering.


## Sourceable Representation
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/repr)
```
:::

### print-representation
::: tip usage
```
(print-representation obj [port = (current-output-port)] [options = (current-representation-options)])
```
:::

`print-representation` is a function (also available with the short-hand name `pr`)
that takes an object, optionally a port and a table of options, and
displays on that port source-code representation of the object
that can be evaluated back into an equivalent object.

Behavior of `print-representation` can be specialized for new classes of objects by defining
new methods on `:pr`, as in:

```
(defmethod {:pr my-class}
  (lambda (self port options)
    ...))
```

### pr
::: tip usage
```
(defalias pr print-representation)
```
:::

Same as `print-representation`.

### prn
::: tip usage
```
(prn ...)
```
:::

`prn` does the same as `pr` then follows with a newline.

### repr
::: tip usage
```
(repr obj [options = (current-representation-options)])
```
:::

`repr` does not take a port as argument and instead
returns the representation as a string.

### representable
```
(defclass representable ())
```

`representable` is an abstract mixin class that defines a method for `:pr`. By default,
if a class does not provide its own implementation, that method will call `print-unrepresentable-object`.

### print-unrepresentable-object
::: tip usage
```
(print-unrepresentable-object obj [port = (current-output-port)] [options = (current-representation-options)])
```
:::

`print-unrepresentable-object` is a helper function to use as fallback
for objects that can't otherwise be displayed.

### default-representation-options
```
(def default-representation-options)
```

`default-representation-options` is the default table of options.
No options are currently defined, and the default table is currently empty.
In the future, options may be defined for pretty-printing, etc.


### current-representation-options
::: tip usage
```
(current-representation-options [options])
```
:::

`current-representation-options` is a parameter returning the current options,
and initially returns the `default-representation-options`.


### display-separated
::: tip usage
```
(display-separated lst [port = (current-output-port)]
                   [prefix: prefix = ""]
                   [separator: separator = " "]
                   [suffix: suffix = ""]
                   [display-element: disp = display])
```
:::

`display-separated` is a helper function that takes a list of objects, an optional port,
and as keywords a `prefix:` string (empty by default), a `suffix:` string (empty by default),
a `separator` string (defaulting to a single space `" "`), and
a `display-element:` function (the function `display` by default),
and displays each element of the list with the given prefix, suffix, separator and display function.


## Type Descriptor Utilities.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/rtd)
```
:::

### object-type
::: tip usage
```
(object-type ...)
```
:::

Please document me!

### type?
::: tip usage
```
(type? ...)
```
:::

Please document me!

### type-id
::: tip usage
```
(type-id ...)
```
:::

Please document me!

### type-name
::: tip usage
```
(type-name ...)
```
:::

Please document me!

### type-super
::: tip usage
```
(type-super ...)
```
:::

Please document me!

### type-descriptor?
::: tip usage
```
(type-descriptor? ...)
```
:::

Please document me!

### type-descriptor-mixin
::: tip usage
```
(type-descriptor-mixin ...)
```
:::

Please document me!

### type-descriptor-fields
::: tip usage
```
(type-descriptor-fields ...)
```
:::

Please document me!

### type-descriptor-plist
::: tip usage
```
(type-descriptor-plist ...)
```
:::

Please document me!

### type-descriptor-ctor
::: tip usage
```
(type-descriptor-ctor ...)
```
:::

Please document me!

### type-descriptor-slots
::: tip usage
```
(type-descriptor-slots ...)
```
:::

Please document me!

### type-descriptor-methods
::: tip usage
```
(type-descriptor-methods ...)
```
:::

Please document me!



## Shared-structure Equality.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/shared)
```
:::

### equal-shared?
::: tip usage
```
(equal-shared? ...)
```
:::

Please document me!



## Shuffling
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/shuffle)
```
:::

### shuffle
``` scheme
(shuffle lst) -> list

  lst := proper list to shuffle
```

Creates a pseudo-random permutation of the values in *lst* and returns a new
list. *lst* will not be modified during this.

Implementation detail: *lst* is converted to a random-access vector first, which
is then shuffled via `vector-shuffle!`, and finally converted back to a proper
list.

::: tip Examples:
``` scheme
> (def lst [1 2 3 4 5])

> (shuffle lst)
(2 1 3 5 4)

> (shuffle lst)
(3 4 2 1 5)

> lst
(1 2 3 4 5)    ; lst is unaffected by the shuffling
```
:::

### vector-shuffle
``` scheme
(vector-shuffle vec) -> vector

  vec := vector to shuffle
```

Creates a pseudo-random permutation of the values in *vec* and returns a new
vector. *vec* will not be modified during this.

Implementation detail: *vec* is copied first, and it is this very copy that is
then shuffled via `vector-shuffle!`.

::: tip Examples:
``` scheme
> (def vec #(1 2 3 4 5))

> (vector-shuffle vec)
#(2 1 5 4 3)

> (vector-shuffle vec)
#(4 2 5 1 3)

> vec
#(1 2 3 4 5)    ; vec is unaffected by the shuffling
```
:::

### vector-shuffle!
``` scheme
(vector-shuffle! vec) -> vector

  vec := vector to shuffle
```

Creates a pseudo-random permutation of the values in *vec*, but does so
in-place, which means that *vec* will be modified directly instead of allocating
a new vector.

Implementation detail: The shuffling is performed according to Sattolo's
algorithm, a Fisher-Yates shuffle variant.

::: tip Examples:
``` scheme
> (def vec #(1 2 3 4 5))

> (vector-shuffle! vec)
#(3 4 1 5 2)

> (vector-shuffle! vec)
#(3 1 5 4 2)

> vec
#(3 1 5 4 2)
```
:::


## String utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/string)
```
:::

### string-split-prefix
::: tip usage
```
(string-split-prefix ...)
```
:::

Please document me!

### string-trim-prefix
::: tip usage
```
(string-trim-prefix ...)
```
:::

Please document me!

### string-split-suffix
::: tip usage
```
(string-split-suffix ...)
```
:::

Please document me!

### string-trim-suffix
::: tip usage
```
(string-trim-suffix ...)
```
:::

Please document me!

### string-split-eol
::: tip usage
```
(string-split-eol ...)
```
:::

Please document me!

### string-trim-eol
::: tip usage
```
(string-trim-eol ...)
```
:::

Please document me!

### +cr+
```
(def +cr+)
```

Please document me!

### +lf+
```
(def +lf+)
```

Please document me!

### +crlf+
```
(def +crlf+)
```

Please document me!

### string-subst
::: tip usage
```
(string-subst str old new [count: count = #f])
  str   := string
  old   := string
  new   := string
  count := fixnum
=> string
```
:::

In str replace the string old with string new.
The procedure accepts only a fixnum or #f for count.

* `count > 0` limit replacements
* `count #f` no limit
* `count <= 0` return input



## Synchronized Data Structures.
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/sync)
```
:::

### make-sync-hash
::: tip usage
```
(make-sync-hash ...)
```
:::

Please document me!

### sync-hash?
::: tip usage
```
(sync-hash? ...)
```
:::

Please document me!

### sync-hash-get
::: tip usage
```
(sync-hash-get ...)
```
:::

Please document me!

### sync-hash-ref
::: tip usage
```
(sync-hash-ref ...)
```
:::

Please document me!

### sync-hash-key?
::: tip usage
```
(sync-hash-key? ...)
```
:::

Please document me!

### sync-hash-put!
::: tip usage
```
(sync-hash-put! ...)
```
:::

Please document me!

### sync-hash-remove!
::: tip usage
```
(sync-hash-remove! ...)
```
:::

Please document me!

### sync-hash-do
::: tip usage
```
(sync-hash-do ...)
```
:::

Please document me!



## Text Utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/text)
```
:::

### include-text
::: tip usage
```
(include-text ...)
```
:::

Please document me!



## Thread utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/threads)
```
:::

### primordial-thread-group
::: tip usage
```
(primordial-thread-group ...)
```
:::

Please document me!

### thread-group-&gt;thread-list*
::: tip usage
```
(thread-group->thread-list* ...)
```
:::

Please document me!

### all-threads
::: tip usage
```
(all-threads ...)
```
:::

Please document me!

### thread-dead?
::: tip usage
```
(thread-dead? ...)
```
:::

Please document me!

### thread-group-kill!
::: tip usage
```
(thread-group-kill! ...)
```
:::

Please document me!

### thread-raise!
::: tip usage
```
(thread-raise! ...)
```
:::

Please document me!

### thread-abort!
::: tip usage
```
(thread-abort! ...)
```
:::

Please document me!

### thread-abort?
::: tip usage
```
(thread-abort? ...)
```
:::

Please document me!

### thread-async!
::: tip usage
```
(thread-async! ...)
```
:::

Please document me!

### on-all-processors
::: tip usage
```
(on-all-processors ...)
```
:::

Please document me!



## Timeouts
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/timeout)
```
:::

### make-timeout
::: tip usage
```
(make-timeout ...)
```
:::

Please document me!

## UUIDs
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/uuid)
```
:::

### UUID
::: tip usage
```
(UUID ...)
```
:::

Please document me!

### uuid-length
::: tip usage
```
(uuid-length ...)
```
:::

Please document me!

### uuid::t
::: tip usage
```
(uuid::t ...)
```
:::

Please document me!

### make-uuid
::: tip usage
```
(make-uuid ...)
```
:::

Please document me!

### uuid?
::: tip usage
```
(uuid? ...)
```
:::

Please document me!

### uuid=?
::: tip usage
```
(uuid=? ...)
```
:::

Please document me!

### uuid-hash
::: tip usage
```
(uuid-hash ...)
```
:::

Please document me!

### uuid-&gt;u8vector
::: tip usage
```
(uuid->u8vector ...)
```
:::

Please document me!

### u8vector-&gt;uuid
::: tip usage
```
(u8vector->uuid ...)
```
:::

Please document me!

### uuid-&gt;string
::: tip usage
```
(uuid->string ...)
```
:::

Please document me!

### string-&gt;uuid
::: tip usage
```
(string->uuid ...)
```
:::

Please document me!

### random-uuid
::: tip usage
```
(random-uuid ...)
```
:::

Please document me!



## Functional utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/func)
```
:::

Collection of mixed purpose higher-order functions.

### always
``` scheme
(always val)            -> lambda
(always proc [arg ...]) -> lambda

  val     := value that should always be returned
  proc    := procedure that should always be called
  arg ... := optional arguments that will be passed to proc
```

Creates a lambda which returns the same *val* or calls always the
same *proc* with the same optional *args*.

::: tip Examples:
``` scheme
> (def fn (always 5))
> (list (fn) (fn) (fn)))
(5 5 5)

> (def fn (always (lambda () "hi")))
> (fn)
"hi"

> (def fn (always random-integer 10)
> (list (fn) (fn) (fn))
(4 3 8)
```
:::

### repeat
``` scheme
(repeat val n)            -> list
(repeat proc n [arg ...]) -> list

  val     := value that should be repeated
  proc    := proc that should be called n times
  n       := exact number, repetitions
  arg ... := optional arguments that will be passed to proc
```

Repeat *val* or call *proc* with the optional *args* *n* times and return the
result as list. *n* is expected to be an exact number.

::: tip Examples:
``` scheme
> (repeat 2 5)
(2 2 2 2 2)

> (repeat (lambda () 10) 3)
(10 10 10)

> (repeat random-integer 3 10)
(8 3 5)
```
:::
