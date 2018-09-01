# Miscellaneous libraries.

## std/misc/channel

Buffered channels.

```
(import :std/misc/channel)

;; exports

  make-channel channel?
  channel-put channel-try-put channel-sync
  channel-get channel-try-get
  channel-close channel-closed?
```

## std/misc/completion

Asynchronous completion tokens

```
(import :std/misc/completion)

;; exports

  make-completion
  completion?
  completion-ready?
  completion-wait!
  completion-post!
  completion-error!
  with-completion-error
```

## std/misc/list
List utilities.

```
(import :std/misc/ports)

;; exports:

  plist->alist
  length=? length=n?
  length<? length<n? length<=? length<=n?
  length>? length>n? length>=? length>=n?
  call-with-list-builder
  snoc append1
```

## std/misc/lru
LRU cache.

```
(import :std/misc/lru)

;; exports:

  make-lru-cache lru-cache?
  lru-cache-ref lru-cache-get lru-cache-put! lru-cache-remove!
  lru-cache-size lru-cache-capacity
  lru-cache-flush! lru-cache-walk lru-cache-fold lru-cache-foldr
  lru-cache->list
```

## std/misc/ports
Port utilities.

```
(import :std/misc/ports)

;; exports:

  copy-port
  read-all-as-string read-file-string
  read-all-as-lines read-file-lines
```


## std/misc/pqueue
Heap-based priority queues.

```
(import :std/misc/pqueue)

;; exports:

  make-pqueue pqueue? pqueue-empty? pqueue-size
  pqueue-peek pqueue-pop! pqueue-push!
```

## std/misc/process
Process spawning utilities

These utilities synchronously spawn a subprocess,
spawn a coprocess function in a thread to interact with the process
(default: `std/misc/ports#read-all-as-string`),
check the status of the process upon termination,
and return the result of that coprocess if successful.

```
(import :std/misc/process)

;; exports:

  run-process run-process/batch
```

## std/misc/queue
Double-edged queues.

```
(import :std/misc/queue)

;; exports:

  make-queue queue? queue-length
  queue-empty? non-empty-queue?
  enqueue! enqueue-front! dequeue!
  queue->list
```

## std/misc/repr
Sourceable Representation of Gerbil entities

```
(import :std/misc/repr)

;; exports:

  pr prn repr
  default-representation-options current-representation-options
  display-separated print-representation print-unrepresentable-object representable
```

`print-representation` is a function (also available with the short-hand name `pr`)
that takes an object, optionally a port and a table of options, and
displays on that port source-code representation of the object
that can be evaluated back into an equivalent object.

`prn` does the same as `pr` then follows with a newline.

`repr` does not take a port as argument and instead
returns the representation as a string.

`default-representation-options` is the default table of options.
No options are currently defined, and the default table is currently empty.
In the future, options may be defined for pretty-printing, etc.

`current-representation-options` is a parameter returning the current options,
and initially returns the `default-representation-options`.

Behavior of `pr` can be specialized for new classes of objects by defining
new methods on `:pr`, as in:

```
(defmethod {:pr my-class}
  (lambda (self (port (current-output-port)) (options (current-representation-options)))
    ...))
```

`display-separated` is a helper function that takes a list of objects, an optional port,
and as keywords a `prefix:` string (empty by default), a `suffix:` string (empty by default),
a `separator` string (defaulting to a single space `" "`), and
a `display-element:` function (the function `display` by default),
and displays each element of the list with the given prefix, suffix, separator and display function.

`print-unrepresentable-object` is a helper function to use as fallback
for objects that can't otherwise be displayed.

`representable` is an abstract mixin class that defines a method for `:pr`. By default,
if a class does not provide its own implementation, that method will call `print-unrepresentable-object`.


## std/misc/rtd
Miscellaneous type descriptor utilities.

```
(import :std/misc/rtd)

;; exports:

  object-type
  type? type-id type-name type-super
  type-descriptor?
  type-descriptor-mixin
  type-descriptor-fields
  type-descriptor-plist
  type-descriptor-ctor
  type-descriptor-slots
  type-descriptor-methods
```

## std/misc/shared
Shared-structure equality.

```
(import :std/misc/shared)

;; exports:

  equal-shared?
```


## std/misc/shuffle
Shuffling.

```
(import :std/misc/shuffle)

;; exports:

  shuffle vector-shuffle vector-shuffle!
```

## std/misc/string
String utilities

```
(import :std/misc/string)

;; exports:

  string-split-prefix string-trim-prefix
  string-split-suffix string-trim-suffix
  string-split-eol string-trim-eol
  +cr+ +lf+ +crlf+
```

## std/misc/sync
Synchronized data structures.

```
(import :std/misc/sync)

;; exports:

  make-sync-hash sync-hash?
  sync-hash-get sync-hash-key? sync-hash-put! sync-hash-remove!
  sync-hash-do
```

## std/misc/threads
Thread utilities.

```
(import :std/misc/threads)

;; exports:

  primordial-thread-group
  thread-group->thread-list* all-threads
  thread-dead?
  thread-group-kill!
  thread-raise! thread-abort! thread-abort?
  thread-async!
  on-all-processors
```

## std/misc/uuid
UUIDs.

```
(import :std/misc/uuid)

;; export:

  UUID uuid-length uuid::t make-uuid
  uuid? uuid=?   uuid-hash
  uuid->u8vector u8vector->uuid
  uuid->string string->uuid
  random-uuid
```