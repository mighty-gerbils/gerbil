# Thread utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/threads)
```
:::

## primordial-thread-group
``` scheme
(primordial-thread-group) -> thread-group
```

Similar to `current-thread-group`, but always returns the primordial (main)
thread's group instead.

::: tip Examples:
``` scheme
;; same in main thread
> (current-thread-group)
#<thread-group #87 primordial>
> (primordial-thread-group)
#<thread-group #87 primordial>

;; differs in other groups
> (import :gerbil/gambit/threads)
> (def (task)
    (displayln (current-thread-group))
    (displayln (primordial-thread-group)))
> (thread-join! (spawn/group 'new-group task))
#<thread-group #181 new-group>
#<thread-group #87 primordial>
```
:::

## thread-group->thread-list*
``` scheme
(thread-group->thread-list* tg) -> list

  tg := thread-group to transform
```

Similar to `thread-group->thread-list`, but also collects the threads in all
subgroups of *tg*. Returns a flat list of threads.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (let* ((g1 (make-thread-group 'G1))
         (g2 (make-thread-group 'G2 g1))
         (g3 (make-thread-group 'G3 g2))
         (t1 (make-thread (cut 1) 'T1 g1))
         (t2 (make-thread (cut 2) 'T2 g1))
         (t3 (make-thread (cut 3) 'T3 g2))
         (t4 (make-thread (cut 4) 'T4 g3)))
    (displayln (thread-group->thread-list  g1))
    (displayln (thread-group->thread-list  g2))
    (displayln (thread-group->thread-list  g3))
    (displayln (thread-group->thread-list* g1)))
(#<thread #214 T1> #<thread #215 T2>)
(#<thread #216 T3>)
(#<thread #217 T4>)
(#<thread #217 T4> #<thread #216 T3> #<thread #214 T1> #<thread #215 T2>)
```
:::

## all-threads
``` scheme
(all-threads) -> (list thread ...)
```

Same as `(thread-group->thread-list* (primordial-thread-group))`. Walks all
thread-groups recursively and collects threads in a flat list.

::: tip Examples:
``` scheme
> (all-threads)
(#<thread #205 th1>
 #<thread #202 th5>
 #<thread #203 th4>
 #<thread #204 th3>
 #<thread #201 th2>    ; th2, ..., th5 in subgroups
 #<thread #1 primordial>)

;; non-recursive, only threads in specified top group:
> (import :gerbil/gambit/threads)
> (thread-group->thread-list (current-thread-group))
(#<thread #1 primordial> #<thread #205 th1>)
```
:::

## thread-dead?
``` scheme
(thread-dead? th) -> boolean

  th := thread to check
```

Returns `#t` if *th* is terminated, i.e., no longer able to run, `#f` otherwise.

::: tip Examples:
``` scheme
> (let (th (spawn thread-sleep! 2))
    (displayln (thread-dead? th))
    (thread-join! th)
    (displayln (thread-dead? th)))
#f
#t

> (thread-dead? (current-thread))
#f
```
:::

## thread-group-kill!
``` scheme
(thread-group-kill! tg) -> void | error

  tg := thread-group to kill
```

Kills all threads and subgroups in *tg*. In addition, it detaches the thread
group from its parent, making it unreachable from the primordial thread-group
structure and eligible for garbage collection. Signals an error when *tg*
contains the current thread.

Note: A thread group that has been killed should not be used again to spawn
threads in it.

::: tip Examples:
``` scheme
> (def (fib n)
    (cond ((< n 2) n)
          (else (+ (fib (- n 1))
                   (fib (- n 2))))))
> (let (g (make-thread-group 'new-group))
    (spawn-thread (cut fib 10) 'fib10 g)
    (spawn-thread (cut fib 30) 'fib30 g)
    (spawn-thread (cut fib 50) 'fib50 g)
    (spawn-thread (cut fib 70) 'fib70 g)
    (thread-sleep! 1)
    (displayln (all-threads))
    (thread-group-kill! g)
    (displayln (all-threads)))
;; thread fib10 already terminated:
(#<thread #231 fib70> #<thread #232 fib50> #<thread #233 fib30> #<thread #1 primordial>)
(#<thread #1 primordial>)

> (thread-group-kill! (current-thread-group))
error
```
:::

## thread-raise!
``` scheme
(thread-raise! th obj) -> void | error

  th  := thread to signal error in
  obj := exception object to raise
```

Interrupts *th*, which can be the primordial thread, and raises *obj*,
terminating that very thread if not handled properly.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (spawn thread-sleep! 10)
#<thread #238>
> (thread-dead? #238)
#f
> (thread-raise! #238 'failure)    ; #<thread #238> silently terminates
> (thread-dead? #238)
#t

> (thread-raise! (current-thread) 'failure)
*** ERROR IN (console)@1819.1 -- This object was raised: failure
```
:::

## thread-abort!
``` scheme
(thread-abort! th) -> void | error

  th := thread to abort
```

Same as `(thread-raise! th +thread-abort+)`. *+thread-abort+* is an
internal exception object that has predefined support for type checking via
`thread-abort?` and a `display-exception` method overload.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (def (task)
    (try
      (let loop ()
        (displayln "working")
        (thread-sleep! 0.2)
        (loop))
      (catch (thread-abort? ex)
        (display-exception ex (current-error-port)))))
> (let (t (spawn task))
    (thread-sleep! 1)
    (thread-abort! t)
    (thread-join! t))
working
working
working
working
working
thread aborted
```
:::

## thread-abort?
``` scheme
(thread-abort? ex) -> boolean

  ex := exception to check
```

Returns `#t` if *ex* is a thread-abort exception type, `#f` otherwise,
essentially checking whether the current thread was interrupted via
`thread-abort!`.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads :std/sugar)
> (try
    (thread-abort! (current-thread))
    (catch (thread-abort? ex)
      (display-exception ex (current-error-port))))
thread aborted    ; predefined exception message for thread-abort objects
```
:::

## thread-async!
``` scheme
(thread-async! th proc) -> any | void

  th   := thread to interrupt
  proc := thunk, procedure to execute
```

Interrupts *th*, which can be the primordial thread, and executes *proc*.
Returns the result of *proc*, if *th* is the current thread, `void` otherwise.

::: tip Examples:
``` scheme
> (import :gerbil/gambit/threads)
> (def (task)
    (let loop ((i 0))
      (thread-sleep! 0.25)
      (when (<= i 5)
        (displayln "regular work: " i)
        (loop (1+ i)))))
> (let (th (spawn task))
    (thread-sleep! 1)
    (thread-async! th (cut displayln "async work: " (current-thread)))
    (thread-join! th))
regular work: 0
regular work: 1
regular work: 2
async work: #<thread #60>    ; non-primordial thread
regular work: 3
regular work: 4
regular work: 5
```
:::

## on-all-processors
``` scheme
(on-all-processors proc) -> (list thread ...)

  proc := thunk, procedure to execute on all CPU cores
```

Executes *proc* multiple times, once on each available processing unit (CPU
core), and returns a list containing the created threads.

Note: Runtime support for multiple OS threads needs to be enabled in Gambit (see
the installation instructions), otherwise only a single core is used.

::: tip Examples:
``` scheme
;; check processor support:
> (##current-vm-processor-count)
2

> (import :gerbil/gambit/threads)
> (let (threads (on-all-processors (lambda () 'OK)))
    (map thread-join! threads))
(OK OK)
```
:::
