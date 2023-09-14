# Asynchronous Completions
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/completion)
```
:::

## make-completion
``` scheme
(make-completion) -> completion
(make-completion name) -> completion
```

Creates a new asynchronous completion, a synchronization construct which blocks
until a thread signals that its task either succeeded or failed via
`completion-post!` or `completion-error!`, respectively, notifying all waiting
threads about the result.

An optional `name` may be provided for debugging purposes:
if you deadlock, you'll be able to more easily identify which completion went wrong.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/iter :std/sugar)
> (def (task i c)
    (displayln i ": waiting")
    (try (displayln i ": " (completion-wait! c))
      (catch (ex) (displayln i ": " ex))
      (finally (displayln i ": exiting"))))
> (let* ((c (make-completion))
         (threads (for/collect (i (in-iota 3))
                    (spawn task i c))))
    (spawn-thread
      (lambda ()
        (displayln "error in computation, notifying all")
        (completion-error! c 'did-not-finish)))
    (for-each thread-join! threads))
0: waiting
1: waiting
2: waiting
error in computation, notifying all
0: did-not-finish
0: exiting
1: did-not-finish
1: exiting
2: did-not-finish
2: exiting
```
:::

## completion?
``` scheme
(completion? c) -> boolean

  c := completion to check
```

Returns `#t` if *c* is a completion, `#f` otherwise.

::: tip Examples:
``` scheme
> (completion? (make-completion))
#t

> (import :gerbil/gambit/threads)
> (completion? (make-condition-variable))
#f
```
:::

## completion-ready?
``` scheme
(completion-ready? c) -> boolean

  c := completion to check
```

Returns `#t` if the completion is ready, `#f` otherwise. This operation is
non-blocking.

::: tip Examples:
``` scheme
> (def c (make-completion))
> (completion-ready? c)
#f
> (completion-post! c 'DONE)
> (completion-ready? c)
#t
```
:::

## completion-wait!
``` scheme
(completion-wait! c) -> any | error

  c := completion to wait on
```

Waits on *c* until it has been posted with `completion-post!` or an error has
been signaled with `completion-error!`. If the completion was posted, the posted
value is returned. If an error was signalled, then it is raised as an exception.

::: tip Examples:
``` scheme
> (def c (make-completion))
> (spawn completion-wait! c)
#<thread #3>
> (spawn completion-wait! c)
#<thread #4>
> (spawn completion-wait! c)
#<thread #5>
> (completion-post! c 'done)    ; all waiting threads will be notified
> (map thread-dead? [#3 #4 #5])
(#t #t #t)
> (completion-wait! c)          ; already completed, not waiting
done

> (def c (make-completion))
> (spawn completion-error! c 'failure)
#<thread #8>
> (completion-wait! c)
*** ERROR IN (console)@1986.1 -- This object was raised: failure
```
:::

## completion-post!
``` scheme
(completion-post! c val) ->  void | error

  c   := completion to post
  val := result value
```

Signals to *c* that the current thread's computation is complete. All other
waiting threads will be notified and receive *val* as the result.

Calling `completion-post!` on an already completed *c* will raise an error.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/iter)
> (def (task i c)
    (displayln i ": waiting")
    (displayln i ": " (completion-wait! c)))
> (let* ((c (make-completion))
         (threads (for/collect (i (in-iota 3))
                    (spawn task i c))))
    (thread-sleep! 1)
    (displayln "main: done")
    (completion-post! c 'ok)
    (for-each thread-join! threads))
0: waiting
1: waiting
2: waiting
main: done
0: ok
1: ok
2: ok

;; Completions are expected to be posted once. The following would
;; be a race condition, either succeeding fine or raising an error:
> (let (c (make-completion))
    (spawn completion-post! c 'done)    ; silently fails in case of error
    (completion-post! c 'done)
    (completion-wait! c))
;; either of these:
*** ERROR IN (console)@2019.5 -- Completion has already been posted #<completion #26>
done
```
:::

## completion-error!
``` scheme
(completion-error! c obj) -> void | error

  c   := completion to notify
  obj := exception object to raise
```

Signals an error to *c*, with *obj* being the exception argument that's raised,
notifying all waiting threads that a problem occurred.

Calling `completion-error!` on an already completed *c* will raise an error.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (let (c (make-completion))
    (spawn completion-error! c 'failure)
    (try (completion-wait! c)    ; failure is raised in all waiting threads
      (catch (ex) (display-exception ex (current-error-port)))))
This object was raised: failure
```
:::

## with-completion-error
``` scheme
(with-completion-error c body ...) -> any | error

  c        := completion to notify when error occurs
  body ... := expressions to evaluate
```

Wraps *body ...* with an exception handler that notifies *c* via
`completion-error!` if any type of error is raised within the body expressions.
Furthermore, errors will propagate upwards and need to be handled, terminating
the thread otherwise.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (def (task c)
    (with-completion-error c
      (displayln (/ 7 0))    ; call completion-error! and silently terminate thread
      (completion-post! c)))
> (let (c (make-completion))
    (spawn task c)
    (try
      (completion-wait! c)
      (displayln "All done!")
      (catch (ex) (display-exception ex (current-error-port)))))
Divide by zero
(/ 7 0)
```
:::

## completion
``` scheme
(defsyntax completion)
```

Completion type for user-defined generics and destructuring.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (def c (make-completion))
> (completion-post! c 'done)
> (with ((completion mut cond-var ready? val ex) c)
    (with-lock mut
      (cut displayln "value: " (if ready? val "not ready"))))
value: done
```
:::
