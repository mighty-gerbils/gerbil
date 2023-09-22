# Thread Primitives
## spawn
``` scheme
(spawn f . args) -> actor thread

  f := procedure
```

Spawns an actor thread, invoking `(f . args)`.

Differences of actor threads and plain Gambit threads:
- actor threads have an abortive exception handler that unwinds the stack
  on exceptional exits thus ensuring that unwind finalizers are run.
- actor threads have an extra field for efficient access to thread locals.

## spawn/name
``` scheme
(spawn/name name f . args) -> actor thread

  name := any
  f     := procedure
```

Like `spawn`, but the thread is named.

## spawn/group
``` scheme
(spawn/group name f . args) -> actor thread

  name := any
  f     := procedure
```

Like `spawn`, but the thread is in a new thread group with name *name*.

## spawn-actor
``` scheme
(spawn-actor f args name tgroup) -> actor thread

  f      := procedure
  args   := list; procedure arguments
  name   := any
  tgroup := thread-group
```

Spawns an actor thread.

## spawn-thread
``` scheme
(spawn-thread thunk [name] [tgroup]) -> thread

  thunk := procedure
  name   := any
  tgroup := thread-group
```

Spawns a plain thread

## actor-thread?
``` scheme
(actor-thread? obj) -> boolean

  obj := any object
```

Returns true if the object *obj* is an actor thread.

## thread-local-ref
``` scheme
(thread-local-ref key [default]) -> any

  key, default := any
```

Retrieves the thread local value associated with *key*.

## thread-local-get
``` scheme
(thread-local-get key) -> any

  key := any
```

Retrieves the thread local value associated with *key*, defaulting to `#f`.

## thread-local-set!
``` scheme
(thread-local-set! key val) -> void

  key, val := any
```

Sets the thread local value associated with *key* to *val*.

## thread-local-clear!
``` scheme
(thread-local-clear! key) -> void

  key := any
```

Clears the thread local value associated with *key*.

## thread-local-table
```
(thread-local-table) -> hash table
```

Return the table of thread local values, creating it if it doesn't exist.


## current-thread-group
``` scheme
(current-thread-group) -> thread-group
```

Returns the thread-group of the current thread.

## with-lock
``` scheme
(with-lock mx thunk) -> any

  mx    := mutex
  thunk := procedure
```

Evaluates *thunk* with `mx` automatically locked on entry and unlocked on exist or if an exception is raised.

Note: the continuation should not escape or deadlock can occur. If you
may have a continuation escaping, use `with-dynamic-lock`.

## with-dynamic-lock
``` scheme
(with-dynamic-lock mx thunk) -> any

  mx    := mutex
  thunk := procedure
```

Evaluates *thunk* in a dynamic extent where *mx* is locked.

## unhandled-actor-exception-hook-set!
``` scheme
(unhandled-actor-exception-hook-set! proc) -> void

  proc := procedure
```

Hooks the actor exception handler to invoke `(proc continuation exception)` on uncaught
exceptions occurring in actor threads.
