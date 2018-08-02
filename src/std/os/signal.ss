;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS signal primitives
package: std/os

(import :std/os/error)

(export
  SIGHUP SIGINT SIGQUIT SIGILL SIGTRAP SIGABRT SIGBUS SIGFPE
  SIGKILL SIGUSR1 SIGSEGV SIGUSR2 SIGPIPE SIGALRM SIGTERM
  SIGCHLD SIGCONT SIGSTOP SIGTSTP SIGTTIN SIGTTOU SIGURG
  SIGXCPU SIGXFSZ SIGVTALRM SIGPROF SIGWINCH SIGIO SIGSYS
  SIGMAX
  SIG_BLOCK SIG_UNBLOCK SIG_SETMASK)

(cond-expand
  (linux
   (export SIGIOT SIGSTKFLT SIGPOLL SIGPWR SIGUNUSED SIGRTMIN SIGRTMAX))
  (bsd
   (export SIGEMT SIGINFO)))

(cond-expand
  (openbsd
   (export SIGTHR))
  (netbsd
   (export SIGPWR #;SIGRTMIN #;SIGRTMAX))
  (darwin
   (export SIGIOT)))

(export
  kill
  sigprocmask
  make_sigset
  sigemptyset
  sigfillset
  sigaddset
  sigdelset
  sigismember)

(def (kill pid signo)
  (check-os-error (_kill pid signo)
    (kill pid signo)))

(def (sigprocmask how sigset old-sigset)
  (check-os-error (_sigprocmask how sigset old-sigset)
    (sigprocmask how sigset old-sigset)))

(extern SIGHUP SIGINT SIGQUIT SIGILL SIGTRAP SIGABRT SIGBUS SIGFPE
  SIGKILL SIGUSR1 SIGSEGV SIGUSR2 SIGPIPE SIGALRM SIGTERM
  SIGCHLD SIGCONT SIGSTOP SIGTSTP SIGTTIN SIGTTOU SIGURG
  SIGXCPU SIGXFSZ SIGVTALRM SIGPROF SIGWINCH SIGIO SIGSYS
  SIG_BLOCK SIG_UNBLOCK SIG_SETMASK)

(cond-expand
  (linux
   (extern SIGIOT SIGSTKFLT SIGPOLL SIGPWR SIGUNUSED SIGRTMIN SIGRTMAX))
  (bsd
   (extern SIGEMT SIGINFO NSIG)))

(cond-expand
  (openbsd
   (extern SIGTHR))
  (netbsd
   (extern SIGPWR #;SIGRTMIN #;SIGRTMAX))
  (darwin
   (extern SIGPOLL SIGIOT)))

(extern
  _kill
  _sigprocmask
  make_sigset
  sigemptyset
  sigfillset
  sigaddset
  sigdelset
  sigismember)

(cond-expand
  (linux
   (begin-foreign
     (define-cond-expand-feature linux)))
  (bsd
   (begin-foreign
     (define-cond-expand-feature bsd))))

(cond-expand
  (openbsd
   (begin-foreign
     (define-cond-expand-feature openbsd)))
  (netbsd
   (begin-foreign
     (define-cond-expand-feature netbsd)))
  (freebsd
   (begin-foreign
     (define-cond-expand-feature freebsd)))
  (darwin
   (begin-foreign
     (define-cond-expand-feature darwin))))

(begin-foreign
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <signal.h>")
  (c-declare "#include <errno.h>")
  (c-declare "#include <stdlib.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))

  (define-macro (define-guard guard defn)
    (if (eval `(cond-expand (,guard #t) (else #f)))
      '(begin)
      (begin
        (eval `(define-cond-expand-feature ,guard))
        defn)))

  (namespace ("std/os/signal#"
              SIGHUP SIGINT SIGQUIT SIGILL SIGTRAP SIGABRT SIGBUS
              SIGFPE SIGKILL SIGUSR1 SIGSEGV SIGUSR2 SIGPIPE SIGALRM
              SIGTERM SIGCHLD SIGCONT SIGSTOP SIGTSTP SIGTTIN SIGTTOU
              SIGURG SIGXCPU SIGXFSZ SIGVTALRM SIGPROF SIGWINCH SIGIO
              SIGSYS SIGSTKFLT SIGPOLL SIGPWR SIGUNUSED SIGIOT SIGRTMIN
              SIGRTMAX SIGEMT SIGINFO NSIG SIGTHR SIGPWR

              SIG_BLOCK SIG_UNBLOCK SIG_SETMASK

              make_sigset
              sigemptyset
              sigfillset
              sigaddset
              sigdelset
              sigismember

              __kill _kill
              __sigprocmask _sigprocmask
              __errno))

  (define-c-lambda __errno () int
    "___return (errno);")

  (define-const SIGHUP)
  (define-const SIGINT)
  (define-const SIGQUIT)
  (define-const SIGILL)
  (define-const SIGTRAP)
  (define-const SIGABRT)
  (define-const SIGBUS)
  (define-const SIGFPE)
  (define-const SIGKILL)
  (define-const SIGUSR1)
  (define-const SIGSEGV)
  (define-const SIGUSR2)
  (define-const SIGPIPE)
  (define-const SIGALRM)
  (define-const SIGTERM)
  (define-const SIGCHLD)
  (define-const SIGCONT)
  (define-const SIGSTOP)
  (define-const SIGTSTP)
  (define-const SIGTTIN)
  (define-const SIGTTOU)
  (define-const SIGURG)
  (define-const SIGXCPU)
  (define-const SIGXFSZ)
  (define-const SIGVTALRM)
  (define-const SIGPROF)
  (define-const SIGWINCH)
  (define-const SIGIO)
  (define-const SIGSYS)

  (define-const SIG_BLOCK)
  (define-const SIG_UNBLOCK)
  (define-const SIG_SETMASK)

  (cond-expand
    (linux
     (define-const SIGIOT)
     (define-const SIGSTKFLT)
     (define-const SIGPOLL)
     (define-const SIGPWR)
     (define-const SIGUNUSED)
     (define-const SIGRTMIN)
     (define-const SIGRTMAX))
    (bsd
     (define-const SIGEMT)
     (define-const SIGINFO)
     (define-const NSIG))) 

  (cond-expand
    (openbsd
     (define-const SIGTHR))
    (netbsd
     (define-const SIGPWR)
     #;(define-const SIGRTMIN)
     #;(define-const SIGRTMAX))
    (freebsd)
    (darwin)
    (linux))

  (c-declare "static ___SCMOBJ ffi_free (void *ptr);")

  (define-c-lambda __kill (int int) int
    "kill")
  (define-with-errno _kill __kill (pid signo))

  (define-guard ffi-have-sigset
    (c-define-type sigset_t "sigset_t"))
  (define-guard ffi-have-sigset*
    (c-define-type sigset_t*
      (pointer "sigset_t" (sigset_t*) "ffi_free")))

  (define-c-lambda __sigprocmask (int sigset_t* sigset_t*) int
    "sigprocmask")
  (define-with-errno _sigprocmask __sigprocmask (how sigset old-sigset))

  (define-c-lambda make_sigset () sigset_t*
    "___return ((sigset_t*) malloc (sizeof (sigset_t))); ")

  (define-c-lambda sigemptyset (sigset_t*) int)
  (define-c-lambda sigfillset (sigset_t*) int)
  (define-c-lambda sigaddset (sigset_t* int) int)
  (define-c-lambda sigdelset (sigset_t* int) int)
  (define-c-lambda sigismember (sigset_t* int) int)

  (c-declare #<<END-C
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
#endif
END-C
))

(def SIGMAX
  (cond-expand
    (linux
     (+ SIGRTMAX 1))
    (bsd
     NSIG)))
