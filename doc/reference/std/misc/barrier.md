# Thread Barriers
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/barrier)
```
:::

## make-barrier
``` scheme
(make-barrier n) -> barrier | error

  n := thread wait limit, fixnum
```

Creates a thread barrier, a synchronization construct that blocks up to *n*
threads before it allows them to proceed. *n* needs to be a non-negative fixnum,
otherwise an error is signaled.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/iter)
> (def (thread-task b)
    (thread-sleep! (+ 2 (random-integer 3)))
    (displayln (current-thread) " completed its task. Waiting for others.")
    (barrier-post! b)
    (barrier-wait! b)
    (displayln (current-thread) " runs again."))

> (let* ((b (make-barrier 3))
         (threads (for/collect (i (in-iota 5))
                    (spawn thread-task b))))
    (for-each thread-join! threads)
    (displayln "All threads are done."))
#<thread #1> completed its task. Waiting for others.
#<thread #2> completed its task. Waiting for others.
#<thread #3> completed its task. Waiting for others.
#<thread #1> runs again.    ; barrier limit reached, notifying waiting threads
#<thread #2> runs again.
#<thread #3> runs again.
#<thread #4> completed its task. Waiting for others.
#<thread #4> runs again.    ; limit already reached, no need to wait
#<thread #5> completed its task. Waiting for others.
#<thread #5> runs again.
All threads are done.
```
:::

## barrier?
``` scheme
(barrier? b) -> boolean

  b := barrier to check
```

Returns `#t` if *b* is a barrier, `#f` otherwise.

::: tip Examples:
``` scheme
> (barrier? (make-barrier 3))
#t

(import :gerbil/gambit/threads)
> (barrier? (make-mutex 'barrier))
#f
```
:::

## barrier-wait!
``` scheme
(barrier-wait! b) -> void | error

  b := barrier to wait on
```

Waits on *b* until it has been posted *n* times (as specified on barrier
creation) with `barrier-post!` or an error has been signaled with
`barrier-error!`. Errors will propagate upwards and need to be handled.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/iter :std/format)
> (def (log msg)
    (printf "~a@~a: ~a\n" (current-thread) (time->seconds (current-time)) msg))
> (def (task b)
    (log "working")
    (thread-sleep! (random-integer 5))
    (barrier-post! b)
    (log "waiting for other threads")
    (barrier-wait! b)
    (log "done"))
> (let (b (make-barrier 3))
    (for-each thread-join! (for/collect (i (in-iota 3)) (spawn task b)))
    (barrier-wait! b)     ; barrier thread limit already reached, not waiting
    (barrier-error! b 'failure)
    (barrier-wait! b))    ; unhandled exception, terminates primordial thread
#<thread #1>@1558088315.312991:  working
#<thread #2>@1558088315.3137062: working
#<thread #3>@1558088315.3143606: working
#<thread #3>@1558088317.3152056: waiting for other threads
#<thread #1>@1558088318.313868:  waiting for other threads
#<thread #3>@1558088319.3144877: done
#<thread #1>@1558088319.314984:  done
#<thread #2>@1558088319.3154783: waiting for other threads
#<thread #2>@1558088319.3161075: done
*** ERROR IN (console)@1593.5 -- This object was raised: failure
```
:::

## barrier-post!
``` scheme
(barrier-post! b) -> void

  b := barrier to signal to
```

Signals *b* that the current thread's computation is complete. All other waiting
threads will be notified once *b*'s post limit (as specified on barrier creation)
is reached.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (let* ((b (make-barrier 2))
         (t1 (spawn barrier-post! b))
         (t2 (spawn barrier-post! b)))
    (barrier-wait! b)    ; signaled twice, good to go
    'OK)
OK
```
:::

## barrier-error!
``` scheme
(barrier-error! b obj) -> void

  b   := barrier to signal error on
  obj := exception object to raise
```

Signals an error to *b*, with *obj* being the exception argument that's raised,
notifying all waiting threads that a problem occurred.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (let* ((b (make-barrier 3))
         (t (spawn barrier-error! b 'failure)))
    (try (barrier-wait! b)    ; failure is raised in all waiting threads
      (catch (ex) (display-exception ex (current-error-port)))))
This object was raised: failure
```
:::

## with-barrier-error
``` scheme
(with-barrier-error b body ...) -> any | error

  b        := barrier to notify when error occurs
  body ... := expressions to evaluate
```

Wraps *body ...* with an exception handler that notifies *b* via
`barrier-error!` if any type of error is raised within the body expressions.
Furthermore, errors will propagate upwards and need to be handled, terminating
the thread otherwise.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (def (task b)
    (with-barrier-error b
      (displayln (/ 7 0))    ; call barrier-error! and silently terminate thread
      (barrier-post! b)))
> (let* ((b (make-barrier 2))
         (t (spawn task b)))
    (try
      (barrier-wait! b)
      (displayln "All done!")
      (catch (ex) (display-exception ex (current-error-port)))))
Divide by zero
(/ 7 0)
```
:::

## barrier
``` scheme
(defsyntax barrier)
```

Barrier type for user-defined generics and destructuring.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (with ((barrier mut cond-var count limit ex) (make-barrier 3))
    (with-lock mut
      (cut displayln "limit: " count "/" limit)))
limit: 0/3
```
:::
