# signalfd

The `:std/os/signalfd` library provides a low-level interface to the Linux
`signalfd(2)` system call, which allows receiving signals via a file descriptor.

::: tip To use the bindings from this module:
```scheme
(require linux)
(import :std/os/signalfd)
```
:::

::: warning
This is a Linux-specific low-level module. For a portable signal handling
interface, use [`:std/os/signal-handler`](signal-handler.md) instead.
:::

## signalfd
```scheme
(signalfd sigset) -> signalfd
```

Creates a new signalfd file descriptor that monitors the signals specified in
*sigset* (a signal set created with `:std/os/signal` procedures such as
`make_sigset`, `sigemptyset`, and `sigaddset`). The file descriptor is
created in non-blocking mode with close-on-exec set.

## signalfd?
```scheme
(signalfd? obj) -> boolean
```

Returns `#t` if *obj* is a signalfd file descriptor, `#f` otherwise.

## signalfd-reset!
```scheme
(signalfd-reset! sfd sigset) -> void
```

Updates the signal set monitored by the signalfd *sfd* to *sigset*.

## signalfd-read
```scheme
(signalfd-read sfd (buf (make-signalfd-siginfo))) -> signalfd-siginfo
```

Reads a signal info structure from *sfd*. Blocks (yielding the thread) until a
signal is available. Returns the *buf* filled with signal information.

## make-signalfd-siginfo
```scheme
(make-signalfd-siginfo) -> u8vector
```

Allocates a new buffer suitable for reading signalfd signal information.

## Signal Info Accessors

The following procedures extract fields from a `signalfd-siginfo` buffer:

| Procedure | Returns | Description |
|-----------|---------|-------------|
| `signalfd-siginfo-signo` | uint32 | Signal number |
| `signalfd-siginfo-errno` | int32 | Error number (if applicable) |
| `signalfd-siginfo-code` | int32 | Signal code |
| `signalfd-siginfo-pid` | uint32 | PID of sender |
| `signalfd-siginfo-uid` | uint32 | UID of sender |
| `signalfd-siginfo-fd` | int32 | File descriptor (for SIGIO) |
| `signalfd-siginfo-tid` | uint32 | Kernel timer ID |
| `signalfd-siginfo-band` | uint32 | Band event (for SIGPOLL) |
| `signalfd-siginfo-overrun` | uint32 | POSIX timer overrun count |
| `signalfd-siginfo-trapno` | uint32 | Trap number |
| `signalfd-siginfo-status` | int32 | Exit status or signal (for SIGCHLD) |
| `signalfd-siginfo-int` | int32 | Integer sent by sigqueue |
| `signalfd-siginfo-ptr` | uint64 | Pointer sent by sigqueue |
| `signalfd-siginfo-utime` | uint64 | User CPU time consumed (for SIGCHLD) |
| `signalfd-siginfo-stime` | uint64 | System CPU time consumed (for SIGCHLD) |
| `signalfd-siginfo-addr` | uint64 | Address that generated signal |
