# Signal Handling

The `:std/os/signal-handler` library provides a portable interface for handling
POSIX signals. On Linux it uses `signalfd(2)`, and on BSD systems it uses
`kqueue(2)`.

::: tip To use the bindings from this module:
```scheme
(import :std/os/signal-handler)
```
:::

## add-signal-handler!
```scheme
(add-signal-handler! (signo : :fixnum) (thunk : :procedure)) -> :void
```

Registers *thunk* as the handler for signal number *signo*. The handler will be
invoked asynchronously in a dedicated signal handler thread when the signal is
received. The signal number must be between 1 and `SIGMAX` (exclusive).

Only one handler can be active per signal. Adding a handler for a signal that
already has one replaces the previous handler.

::: tip Example:
```scheme
(import :std/os/signal-handler
        :std/os/signal)

;; Handle SIGUSR1
(add-signal-handler! SIGUSR1
  (lambda () (displayln "Received SIGUSR1")))
```
:::

## remove-signal-handler!
```scheme
(remove-signal-handler! (signo : :fixnum)) -> :void
```

Removes the handler for signal number *signo* and restores the default signal
disposition. The signal number must be between 1 and `SIGMAX` (exclusive).

::: tip Example:
```scheme
(import :std/os/signal-handler
        :std/os/signal)
(remove-signal-handler! SIGUSR1)
```
:::
