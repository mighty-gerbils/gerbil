# Operating System Interface

## Error Handling
::: tip usage
(import :std/os/error)
:::

### raise-os-error
::: tip usage
```
(raise-os-error ...)
```
:::

Please document me!

### check-os-error
::: tip usage
```
(check-os-error ...)
```
:::

Please document me!

### do-retry-nonblock
::: tip usage
```
(do-retry-nonblock ...)
```
:::

Please document me!

### check-ptr
::: tip usage
```
(check-ptr ...)
```
:::

Please document me!

### strerror
::: tip usage
```
(strerror ...)
```
:::

Please document me!

### Constants
```
EAGAIN
EINTR
EINPROGRESS
EWOULDBLOCK
```


## File Descriptors
::: tip usage
(import :std/os/fd)
:::

### fdopen
::: tip usage
```
(fdopen ...)
```
:::

Please document me!

### fd-e
::: tip usage
```
(fd-e ...)
```
:::

Please document me!

### fd-io-in
::: tip usage
```
(fd-io-in ...)
```
:::

Please document me!

### fd-io-out
::: tip usage
```
(fd-io-out ...)
```
:::

Please document me!

### fd?
::: tip usage
```
(fd? ...)
```
:::

Please document me!

### fd-type?
::: tip usage
```
(fd-type? ...)
```
:::

Please document me!

### fd-type
::: tip usage
```
(fd-type ...)
```
:::

Please document me!


## File Descriptor I/O
::: tip usage
(import :std/os/fdio)
:::

### open
::: tip usage
```
(open ...)
```
:::

Please document me!

### fdread
::: tip usage
```
(fdread ...)
```
:::

Please document me!

### fdwrite
::: tip usage
```
(fdwrite ...)
```
:::

Please document me!


## File Descriptor Control
::: tip usage
(import :std/os/fcntl)
:::

### fcntl
::: tip usage
```
(fcntl ...)
```
:::

Please document me!

### fd-getfl
::: tip usage
```
(fd-getfl ...)
```
:::

Please document me!

### fd-setfl
::: tip usage
```
(fd-setfl ...)
```
:::

Please document me!

### fd-setfl!
::: tip usage
```
(fd-setfl! ...)
```
:::

Please document me!

### fd-getfd
::: tip usage
```
(fd-getfd ...)
```
:::

Please document me!

### fd-setfd
::: tip usage
```
(fd-setfd ...)
```
:::

Please document me!

### fd-setfd!
::: tip usage
```
(fd-setfd! ...)
```
:::

Please document me!

### fd-set-closeonexec
::: tip usage
```
(fd-set-closeonexec ...)
```
:::

Please document me!

### fd-set-nonblock
::: tip usage
```
(fd-set-nonblock ...)
```
:::

Please document me!

### fd-set-nonblock/closeonexec
::: tip usage
```
(fd-set-nonblock/closeonexec ...)
```
:::

Please document me!

### Constants
```
O_ACCMODE
O_APPEND
O_CLOEXEC
O_CREAT
O_DIRECT
O_DSYNC
O_EXCL
O_NOATIME
O_NOCTTY
O_NOFOLLOW
O_NONBLOCK
O_RDONLY
O_RDWR
O_SYNC
O_TMPFILE
O_TRUNC
O_WRONLY

F_GETFL
F_SETFL
F_GETFD
F_SETFD
F_DUPFD

FD_CLOEXEC
```

## Advisory File Locking

Please document me!

## Pipes
::: tip usage
(import :std/os/pipe)
:::

### pipe
::: tip usage
```
(pipe [direction = 'inout] [closeonexec = #t])
=> (values in out)
```
:::

Creates a pipe.

The parameter `direction` controls the returned values:
- if the direction is `inout`, it returns two raw devices for input and output
- if the direction is `in`, it returns a raw device for input and a file descriptor for output
- if the direction is `out`, it returns a file descriptor for input and a raw device for output
- if the direction is `none`, it returns two file descriptors for input and output.

If the `closeonexec` parameter is true, then the raw devices are set to close on exec.
Note that the file descriptors are not affected by the option, and they are not set to nonblocking
either.

## Signals
::: tip usage
(import :std/os/signal)
:::

### kill
::: tip usage
```
(kill ...)
```
:::

Please document me!

### sigprocmask
::: tip usage
```
(sigprocmask ...)
```
:::

Please document me!

### sigsets
::: tip usage
```
(make_sigset ...)
(sigemptyset ...)
(sigfillset ...)
(sigaddset ...)
(sigdelset ...)
(sigismember ...)
```
:::

Please document me!

### Constants
```
SIG_BLOCK
SIG_UNBLOCK
SIG_SETMASK

SIGMAX
NSIG        ; bsd

SIGABRT
SIGALRM
SIGBUS
SIGCHLD
SIGCONT
SIGEMT      ; bsd
SIGFPE
SIGHUP
SIGILL
SIGINFO     ; bsd
SIGINT
SIGIO
SIGIOT      ; linux
SIGKILL
SIGPIPE
SIGPOLL     ; linux
SIGPROF
SIGPWR      ; linux netbsd
SIGQUIT
SIGRTMAX    ; linux
SIGRTMIN    ; linux
SIGSEGV
SIGSTKFLT   ; linux
SIGSTOP
SIGSYS
SIGTERM
SIGTHR      ; openbsd
SIGTRAP
SIGTSTP
SIGTTIN
SIGTTOU
SIGURG
SIGUSR1
SIGUSR2
SIGVTALRM
SIGWINCH
SIGXCPU
SIGXFSZ
```


## Signal Handling
::: tip usage
(import :std/os/signal-handler)
:::

### add-signal-handler!
::: tip usage
```
(add-signal-handler! ...)
```
:::

Please document me!

### remove-signal-handler!
::: tip usage
```
(remove-signal-handler! ...)
```
:::

Please document me!


## PIDs
::: tip usage
(import :std/os/pid)
:::

### getpid
::: tip usage
```
(getpid ...)
```
:::

Please document me!

### getppid
::: tip usage
```
(getppid ...)
```
:::

Please document me!

## OS Specific APIs

### signalfd [linux]
::: tip usage
(require linux)
(import :std/os/signal-handler)
:::

Please document me!

### epoll [linux]
::: tip usage
(require linux)
(import :std/os/epoll)
:::

Please document me!

### inotify [linux]
::: tip usage
(require linux)
(import :std/os/inotify)
:::

Please document me!

### kqueue [BSD]
::: tip usage
(require bsd)
(import :std/os/kqueue)
:::

Please document me!

## Temporary Files
::: tip To use bindings from this module
```scheme
(import :std/os/temporaries)
```
:::

### make-temporary-file-name
```scheme
(make-temporary-file-name name) -> string

  name := string; prefix of temporary filename in /tmp
```

Creates a new temporary file name in /tmp and with name prefix `name`.
It makes  `mktemp` sane by appending the current timestamp in nanosecods.

### call-with-temporary-file-name
```scheme
(call-with-temporary-file-name name fun) -> any
  name := string; prefix of temporary filename in /tmp
  fun := lambda (string) -> any
```

Creates a temporary filename and invokes `fun` with it, deleting the
temporary file on unwind if it has been created.
