# Miscellaneous

## Buffered channels.
::: tip usage
(import :std/misc/channel)
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
::: tip usage
(import :std/misc/completion)
:::

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
::: tip usage
(import :std/misc/barrier)
:::

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


## Deques
::: tip usage
(import :std/misc/deque)
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
::: tip usage
(import :std/misc/list)
:::

### alist?
::: tip usage
```
(alist? ...)
```
:::

Please document me!

### plist?
::: tip usage
```
(plist? ...)
```
:::

Please document me!

### plist-&gt;alist
::: tip usage
```
(plist->alist ...)
```
:::

Please document me!

### alist-&gt;plist
::: tip usage
```
(alist->plist ...)
```
:::

Please document me!

### length=?
::: tip usage
```
(length=? ...)
```
:::

Please document me!

### length=n?
::: tip usage
```
(length=n? ...)
```
:::

Please document me!

### length&lt;?
::: tip usage
```
(length<? ...)
```
:::

Please document me!

### length&lt;n?
::: tip usage
```
(length<n? ...)
```
:::

Please document me!

### length&lt;=?
::: tip usage
```
(length<=? ...)
```
:::

Please document me!

### length&lt;=n?
::: tip usage
```
(length<=n? ...)
```
:::

Please document me!

### length&gt;?
::: tip usage
```
(length>? ...)
```
:::

Please document me!

### length&gt;n?
::: tip usage
```
(length>n? ...)
```
:::

Please document me!

### length&gt;=?
::: tip usage
```
(length>=? ...)
```
:::

Please document me!

### length&gt;=n?
::: tip usage
```
(length>=n? ...)
```
:::

Please document me!

### call-with-list-builder
::: tip usage
```
(call-with-list-builder ...)
```
:::

Please document me!

### with-list-builder
::: tip usage
```
(with-list-builder ...)
```
:::

Please document me!

### snoc
::: tip usage
```
(snoc ...)
```
:::

Please document me!

### append1
::: tip usage
```
(append1 ...)
```
:::

Please document me!

### for-each!
::: tip usage
```
(for-each! ...)
```
:::

Please document me!

### push!
::: tip usage
```
(push! ...)
```
:::

Please document me!

### flatten1
::: tip usage
```
> (flatten1 [1 [2]])
=> (1 2)

> (flatten1 [1 [2] [[3]]])
=> (1 2 (3))
```
:::

Removes one layer of a nested proper list.

### flatten
::: tip usage
```
> (flatten [1 [2]])
=> (1 2)

> (flatten [1 [2] [[3]]])
=> (1 2 3)
```
:::

Removes all nested layers of a proper list.



## LRU caches
::: tip usage
(import :std/misc/lru)
:::

### make-lru-cache
::: tip usage
```
(make-lru-cache ...)
```
:::

Please document me!

### lru-cache?
::: tip usage
```
(lru-cache? ...)
```
:::

Please document me!

### lru-cache-ref
::: tip usage
```
(lru-cache-ref ...)
```
:::

Please document me!

### lru-cache-get
::: tip usage
```
(lru-cache-get ...)
```
:::

Please document me!

### lru-cache-put!
::: tip usage
```
(lru-cache-put! ...)
```
:::

Please document me!

### lru-cache-remove!
::: tip usage
```
(lru-cache-remove! ...)
```
:::

Please document me!

### lru-cache-size
::: tip usage
```
(lru-cache-size ...)
```
:::

Please document me!

### lru-cache-capacity
::: tip usage
```
(lru-cache-capacity ...)
```
:::

Please document me!

### lru-cache-flush!
::: tip usage
```
(lru-cache-flush! ...)
```
:::

Please document me!

### lru-cache-walk
::: tip usage
```
(lru-cache-walk ...)
```
:::

Please document me!

### lru-cache-fold
::: tip usage
```
(lru-cache-fold ...)
```
:::

Please document me!

### lru-cache-foldr
::: tip usage
```
(lru-cache-foldr ...)
```
:::

Please document me!

### lru-cache-&gt;list
::: tip usage
```
(lru-cache->list ...)
```
:::

Please document me!



## Port utilities
::: tip usage
(import :std/misc/ports)
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
::: tip usage
(import :std/misc/pqueue)
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
::: tip usage
(import :std/misc/process)
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
::: tip usage
(import :std/misc/queue)
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

::: tip usage
(import :std/misc/rbtree)
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
::: tip usage
(import :std/misc/repr)
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
::: tip usage
(import :std/misc/rtd)
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
::: tip usage
(import :std/misc/shared)
:::

### equal-shared?
::: tip usage
```
(equal-shared? ...)
```
:::

Please document me!



## Shuffling
::: tip usage
(import :std/misc/shuffle)
:::

### shuffle
::: tip usage
```
(shuffle ...)
```
:::

Please document me!

### vector-shuffle
::: tip usage
```
(vector-shuffle ...)
```
:::

Please document me!

### vector-shuffle!
::: tip usage
```
(vector-shuffle! ...)
```
:::

Please document me!



## String utilities
::: tip usage
(import :std/misc/string)
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



## Synchronized Data Structures.
::: tip usage
(import :std/misc/sync)
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
::: tip usage
(import :std/misc/text)
:::

### include-text
::: tip usage
```
(include-text ...)
```
:::

Please document me!



## Thread utilities
::: tip usage
(import :std/misc/threads)
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
::: tip usage
(import :std/misc/timeout)
:::

### make-timeout
::: tip usage
```
(make-timeout ...)
```
:::

Please document me!

## UUIDs
::: tip usage
(import :std/misc/uuid)
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
::: tip usage
(import :std/misc/func)
:::
Collection of mixed purpose higher-order functions.

### always
::: tip usage
```
> (def fn (always 5))
> (list (fn) (fn))
=> (5 5)

> (def fn (always (lambda () "hi")))
> (fn)
=> "hi"

> (def fn (always random-integer 10)
> (list (fn) (fn))
=> (4 3)
```
:::

Creates a lambda which returns the same value or calls always the
same function with the same arguments.

### repeat
::: tip usage
```
> (repeat 2 5)
=> (2 2 2 2 2)

> (repeat (lambda () 10) 2)
=> (10 10)

> (repeat random-integer 3 10)
=> (8 3 5)
```
:::

Repeat value or call function N times and return the result as list.
