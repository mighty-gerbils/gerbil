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
(make-completion ...)
```
:::

Please document me!

### completion?
::: tip usage
```
(completion? ...)
```
:::

Please document me!

### completion-ready?
::: tip usage
```
(completion-ready? ...)
```
:::

Please document me!

### completion-wait!
::: tip usage
```
(completion-wait! ...)
```
:::

Please document me!

### completion-post!
::: tip usage
```
(completion-post! ...)
```
:::

Please document me!

### completion-error!
::: tip usage
```
(completion-error! ...)
```
:::

Please document me!

### with-completion-error
::: tip usage
```
(with-completion-error ...)
```
:::

Please document me!



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

### make-pqueue
::: tip usage
```
(make-pqueue ...)
```
:::

Please document me!

### pqueue?
::: tip usage
```
(pqueue? ...)
```
:::

Please document me!

### pqueue-empty?
::: tip usage
```
(pqueue-empty? ...)
```
:::

Please document me!

### pqueue-size
::: tip usage
```
(pqueue-size ...)
```
:::

Please document me!

### pqueue-peek
::: tip usage
```
(pqueue-peek ...)
```
:::

Please document me!

### pqueue-pop!
::: tip usage
```
(pqueue-pop! ...)
```
:::

Please document me!

### pqueue-push!
::: tip usage
```
(pqueue-push! ...)
```
:::

Please document me!



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


## Deques
::: tip usage
(import :std/misc/queue)
:::

### make-queue
::: tip usage
```
(make-queue ...)
```
:::

Please document me!

### queue?
::: tip usage
```
(queue? ...)
```
:::

Please document me!

### queue-length
::: tip usage
```
(queue-length ...)
```
:::

Please document me!

### queue-empty?
::: tip usage
```
(queue-empty? ...)
```
:::

Please document me!

### non-empty-queue?
::: tip usage
```
(non-empty-queue? ...)
```
:::

Please document me!

### enqueue!
::: tip usage
```
(enqueue! ...)
```
:::

Please document me!

### enqueue-front!
::: tip usage
```
(enqueue-front! ...)
```
:::

Please document me!

### dequeue!
::: tip usage
```
(dequeue! ...)
```
:::

Please document me!

### queue-&gt;list
::: tip usage
```
(queue->list ...)
```
:::

Please document me!



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
