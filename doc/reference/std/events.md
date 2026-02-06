# Events

Event-driven programming facilities for synchronizing on threads, condition
variables, I/O readiness, timeouts, and custom event sources.

::: tip To use the bindings from this module:
```scheme
(import :std/event)
```
:::

## Overview

The `:std/event` library provides two levels of event-driven programming:

**Low-level primitives** (`wait`, `select`) work directly with *condition
selectors*:
- Threads — wait for a thread to terminate
- Locked mutex/condvar pairs — `(cons mutex condvar)` where the mutex is
  owned by the current thread
- I/O condition variables — internal Gambit I/O readiness objects

**High-level primitives** (`sync`, `!`, `!*`) work with *synchronizable
objects* (events), which wrap condition selectors with additional logic for
polling, value production, and cleanup.

## Low-Level Primitives

### wait
```scheme
(wait sel (timeout #f)) -> sel | #f
```

Waits until the condition selector *sel* is signaled. Returns *sel* if it
becomes ready, or `#f` if the *timeout* is reached.

*sel* can be:
- A thread — waits for the thread to terminate
- A `(mutex . condvar)` pair — waits on the condition variable (the mutex
  must be owned by the current thread)
- An I/O condition variable — waits for I/O readiness

*timeout* can be `#f` (wait indefinitely), a real number (relative seconds),
or a time object (absolute time).

::: tip Example:
```scheme
(import :std/event)

;; Wait for a thread to finish
(def t (spawn (lambda () (thread-sleep! 1) 'done)))
(wait t 5)  ;; => t (after ~1 second)
```
:::

### select
```scheme
(select sels (timeout #f)) -> sel | #f
```

Waits until at least one of the condition selectors in the list *sels* is
signaled. Returns the first ready selector, or `#f` if the *timeout* is
reached.

If *sels* contains a single element, behaves like `wait`. For multiple
selectors, spawns internal helper threads to monitor each one concurrently.

::: tip Example:
```scheme
(import :std/event)

(def t1 (spawn (lambda () (thread-sleep! 2) 'first)))
(def t2 (spawn (lambda () (thread-sleep! 1) 'second)))
(select [t1 t2] 5)  ;; => t2 (ready first, after ~1 second)
```
:::

### wait-io!
```scheme
(wait-io! iocv (timeout #f)) -> boolean
```

Waits for the I/O condition variable *iocv* to become ready. Returns `#t` if
ready, `#f` on timeout. Raises an error if *iocv* is not an I/O condition
variable.

### &wait-io!
```scheme
(&wait-io! iocv (timeout #f)) -> boolean
```

Unchecked variant of `wait-io!`. Does not validate that *iocv* is an I/O
condition variable.

## Event Objects

Events are synchronizable objects that wrap condition selectors with three
operations:
- **poll**: Called at the beginning of synchronization to obtain a
  synchronizer (condition selector, `#t` if immediately ready, `#f` if not
  ready, or a time object for a timeout)
- **ready**: Called when the event is selected; produces the synchronization
  result value
- **abort**: Called if synchronization is aborted before the event is selected

### make-event
```scheme
(make-event e poll ready (abort void)) -> event
```

Creates an event object. *e* is the wrapped state, *poll* is a procedure
`(poll evt) -> synchronizer`, *ready* is a procedure `(ready evt) -> value`,
and *abort* is a procedure `(abort evt)` called on cleanup.

### event?
```scheme
(event? obj) -> boolean
```

Returns `#t` if *obj* is an event object.

### event-e
```scheme
(event-e evt) -> value
```

Returns the wrapped state of event *evt*.

### event-e-set!
```scheme
(event-e-set! evt val) -> void
```

Sets the wrapped state of event *evt* to *val*.

### sync-object?
```scheme
(sync-object? obj) -> boolean
```

Returns `#t` if *obj* is a synchronizable object — an event, an event
handler (from `handle-evt`), or an event set (from `choice-evt`).

### wrap-evt
```scheme
(wrap-evt obj) -> sync-object
```

Wraps *obj* as a synchronizable event. Accepts:
- An existing sync object — returned unchanged
- A condition selector (thread, mutex/condvar pair, I/O condvar) — wrapped
  as an event
- A number or time object — treated as a timeout event
- An input port — wrapped as an I/O readiness event
- An object with an `:event` method — the method is called to produce an
  event

### handle-evt
```scheme
(handle-evt obj K) -> event-handler
```

Creates an event handler that, when the event *obj* becomes ready, applies
the continuation procedure *K* to the event's result value. This allows
transforming the result of an event.

::: tip Example:
```scheme
(import :std/event)

(def t (spawn (lambda () (thread-sleep! 1) 'done)))
(sync (handle-evt t (lambda (t) (thread-join! t))))
;; => done
```
:::

### choice-evt
```scheme
(choice-evt evt ...) -> event-set
```

Creates an event set from multiple events. When synchronized, one of the
ready events is selected nondeterministically. Event sets from nested
`choice-evt` calls are flattened.

### never-evt
```scheme
never-evt -> event
```

An event that is never ready. Useful as a default in event combinators.

### always-evt
```scheme
always-evt -> event
```

An event that is always immediately ready. Its result is void.

## High-Level Synchronization

### sync
```scheme
(sync evt ...) -> value
```

The primary high-level synchronization primitive. Takes one or more
synchronizable objects, wraps them with `wrap-evt` if needed, shuffles them
for fairness, and waits until at least one is ready. Returns the result
produced by the ready event's `ready` procedure (possibly transformed through
`handle-evt` handlers).

Events are polled in a shuffled order. If multiple events are ready
simultaneously, one is selected nondeterministically. Unselected events have
their abort procedures called.

::: tip Example:
```scheme
(import :std/event :std/misc/channel)

(def ch (make-channel))
(def timeout 5)

;; Wait for a message or timeout
(spawn (lambda () (thread-sleep! 1) (channel-put ch "hello")))
(sync (handle-evt (wrap-evt ch) (lambda (ch) (channel-get ch)))
      (handle-evt (wrap-evt timeout) (lambda (_) 'timed-out)))
```
:::

## Macros

### !
```scheme
(! (evt body ...))
(! (evt => K))
```

Synchronization macro for a single event clause. The first form evaluates
*body* when *evt* becomes ready (the event value is ignored). The second form
applies the procedure *K* to the event's result value.

::: tip Example:
```scheme
(import :std/event)

;; Wait for a thread, ignore the event value
(def t (spawn (lambda () (thread-sleep! 1) 'done)))
(! (t (displayln "thread finished")))

;; Wait for a thread, use its result
(! (t => (lambda (t) (thread-join! t))))
;; => done
```
:::

### !*
```scheme
(!* clause ...)
```

Synchronization macro for multiple event clauses. Each *clause* has the same
form as in `!`. Synchronizes on all clauses simultaneously, executing the body
of whichever event becomes ready first.

::: tip Example:
```scheme
(import :std/event :std/misc/channel)

(def ch1 (make-channel))
(def ch2 (make-channel))

(spawn (lambda () (channel-put ch1 "from ch1")))
(spawn (lambda () (thread-sleep! 1) (channel-put ch2 "from ch2")))

(!* ((wrap-evt ch1) => (lambda (ch) (channel-get ch)))
    ((wrap-evt ch2) => (lambda (ch) (channel-get ch))))
;; => "from ch1"
```
:::
