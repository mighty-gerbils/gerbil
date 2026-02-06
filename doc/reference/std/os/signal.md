# Signals

The `:std/os/signal` library provides bindings to POSIX signal operations,
including sending signals, manipulating signal masks, and signal set
management.

::: tip To use the bindings from this module:
```scheme
(import :std/os/signal)
```
:::

## kill
```scheme
(kill pid signo) -> fixnum
```

Sends signal *signo* to the process or process group identified by *pid*.
This is a binding to the POSIX `kill()` system call. Raises an OS error on
failure.

::: tip Example:
```scheme
(import :std/os/signal :std/os/pid)

;; Send SIGTERM to a process
(kill some-pid SIGTERM)

;; Send signal 0 to check if a process exists
(kill some-pid 0)
```
:::

## sigprocmask
```scheme
(sigprocmask how sigset old-sigset) -> fixnum
```

Modifies the signal mask of the calling thread. *how* determines the
operation:
- `SIG_BLOCK` — add *sigset* signals to the current mask
- `SIG_UNBLOCK` — remove *sigset* signals from the current mask
- `SIG_SETMASK` — replace the current mask with *sigset*

*old-sigset* receives the previous signal mask (or pass `#f` if not needed).
Raises an OS error on failure.

::: tip Example:
```scheme
(import :std/os/signal)

;; Block SIGINT
(def sigset (make_sigset))
(sigemptyset sigset)
(sigaddset sigset SIGINT)
(sigprocmask SIG_BLOCK sigset #f)
```
:::

## Signal Set Operations

Signal sets are used with `sigprocmask` and `:std/os/signalfd`. They are
allocated with `make_sigset` and manipulated with the following functions.

### make_sigset
```scheme
(make_sigset) -> sigset_t*
```

Allocates a new signal set. The set is not initialized — call `sigemptyset`
or `sigfillset` before use.

### sigemptyset
```scheme
(sigemptyset sigset) -> fixnum
```

Initializes *sigset* to empty (no signals).

### sigfillset
```scheme
(sigfillset sigset) -> fixnum
```

Initializes *sigset* to contain all signals.

### sigaddset
```scheme
(sigaddset sigset signo) -> fixnum
```

Adds signal *signo* to *sigset*.

### sigdelset
```scheme
(sigdelset sigset signo) -> fixnum
```

Removes signal *signo* from *sigset*.

### sigismember
```scheme
(sigismember sigset signo) -> fixnum
```

Returns non-zero if signal *signo* is a member of *sigset*, zero otherwise.

## Constants

### Signal Mask Operations

| Constant | Description |
|----------|-------------|
| `SIG_BLOCK` | Add signals to the current mask |
| `SIG_UNBLOCK` | Remove signals from the current mask |
| `SIG_SETMASK` | Replace the current mask |

### Signal Limit

| Constant | Description |
|----------|-------------|
| `SIGMAX` | Maximum signal number + 1 (Linux: `SIGRTMAX+1`, BSD: `NSIG`) |

### POSIX Signals (All Platforms)

| Constant | Signal |
|----------|--------|
| `SIGABRT` | Abort |
| `SIGALRM` | Alarm clock |
| `SIGBUS` | Bus error |
| `SIGCHLD` | Child status changed |
| `SIGCONT` | Continue |
| `SIGFPE` | Floating-point exception |
| `SIGHUP` | Hangup |
| `SIGILL` | Illegal instruction |
| `SIGINT` | Interrupt (Ctrl-C) |
| `SIGIO` | I/O possible |
| `SIGKILL` | Kill (cannot be caught) |
| `SIGPIPE` | Broken pipe |
| `SIGPROF` | Profiling timer expired |
| `SIGQUIT` | Quit (Ctrl-\\) |
| `SIGSEGV` | Segmentation fault |
| `SIGSTOP` | Stop (cannot be caught) |
| `SIGSYS` | Bad system call |
| `SIGTERM` | Termination |
| `SIGTRAP` | Trace/breakpoint trap |
| `SIGTSTP` | Terminal stop (Ctrl-Z) |
| `SIGTTIN` | Background read from terminal |
| `SIGTTOU` | Background write to terminal |
| `SIGURG` | Urgent data on socket |
| `SIGUSR1` | User-defined signal 1 |
| `SIGUSR2` | User-defined signal 2 |
| `SIGVTALRM` | Virtual timer expired |
| `SIGWINCH` | Window size changed |
| `SIGXCPU` | CPU time limit exceeded |
| `SIGXFSZ` | File size limit exceeded |

### Linux-Only Signals

| Constant | Signal |
|----------|--------|
| `SIGIOT` | IOT trap |
| `SIGPOLL` | Pollable event |
| `SIGPWR` | Power failure |
| `SIGRTMIN` | First real-time signal |
| `SIGRTMAX` | Last real-time signal |
| `SIGSTKFLT` | Stack fault |

### BSD-Only Signals

| Constant | Signal |
|----------|--------|
| `SIGEMT` | Emulate instruction executed |
| `SIGINFO` | Status information request |

### Platform-Specific

| Constant | Platform | Signal |
|----------|----------|--------|
| `SIGTHR` | OpenBSD | Thread library |
| `SIGPWR` | NetBSD | Power failure |
