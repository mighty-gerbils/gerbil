# Signals
::: tip usage
(import :std/os/signal)
:::

## kill
```
(kill pid signo)
```

Please document me!

## sigprocmask
```
(sigprocmask how sigset old-sigset)
```

Please document me!

## sigsets
```
(define-c-lambda make_sigset () sigset_t* ...)
(define-c-lambda sigemptyset (sigset_t*) int)
(define-c-lambda sigfillset (sigset_t*) int)
(define-c-lambda sigaddset (sigset_t* int) int)
(define-c-lambda sigdelset (sigset_t* int) int)
(define-c-lambda sigismember (sigset_t* int) int))
```

Please document me!

## Constants
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
