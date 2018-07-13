;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Linux signalfd for signal handling
package: std/os

(require linux)
(import :std/os/error
        :std/os/fd
        :std/os/fdio
        :std/os/signal)
(export signalfd signalfd?
        signalfd-reset!
        signalfd-read
        signalfd-siginfo-signo
        signalfd-siginfo-errno
        signalfd-siginfo-code
        signalfd-siginfo-pid
        signalfd-siginfo-uid
        signalfd-siginfo-fd
        signalfd-siginfo-tid
        signalfd-siginfo-band
        signalfd-siginfo-overrun
        signalfd-siginfo-trapno
        signalfd-siginfo-status
        signalfd-siginfo-int
        signalfd-siginfo-ptr
        signalfd-siginfo-utime
        signalfd-siginfo-stime
        signalfd-siginfo-addr)

(def (signalfd sigset)
  (let (fd (check-os-error (_signalfd -1 sigset (##fxior SFD_NONBLOCK SFD_CLOEXEC))
             (signalfd sigset)))
    (fdopen fd 'in 'signalfd)))

(def (signalfd? obj)
  (fd-type? obj 'signalfd))

(def (signalfd-reset! sfd sigset)
  (check-os-error (_signalfd (fd-e sfd) sigset 0)
    (signalfd-reset! sfd sigset)))

(def (signalfd-read sfd)
  (let lp ()
    (let* ((buf (make-u8vector (size-of-signalfd-siginfo)))
           (rd (fdread sfd buf)))
      (if rd
        buf
        (begin
          (##wait-for-io! (fd-io-in sfd) #t)
          (lp))))))

(extern
  SFD_NONBLOCK SFD_CLOEXEC
  size-of-signalfd-siginfo
  signalfd-siginfo-signo
  signalfd-siginfo-errno
  signalfd-siginfo-code
  signalfd-siginfo-pid
  signalfd-siginfo-uid
  signalfd-siginfo-fd
  signalfd-siginfo-tid
  signalfd-siginfo-band
  signalfd-siginfo-overrun
  signalfd-siginfo-trapno
  signalfd-siginfo-status
  signalfd-siginfo-int
  signalfd-siginfo-ptr
  signalfd-siginfo-utime
  signalfd-siginfo-stime
  signalfd-siginfo-addr
  _signalfd)
(begin-foreign
  (c-declare "#include <signal.h>")
  (c-declare "#include <sys/signalfd.h>")
  (c-declare "#include <errno.h>")
  (c-declare "#include <stdlib.h>")
  (c-declare #<<END-C
#ifndef ___HAVE_FFI_U8VECTOR
#define ___HAVE_FFI_U8VECTOR
#define U8_DATA(obj) ___CAST (___U8*, ___BODY_AS (obj, ___tSUBTYPED))
#define U8_LEN(obj) ___HD_BYTES (___HEADER (obj))
#endif
END-C
)

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (define-macro (define-guard guard defn)
    (if (eval `(cond-expand (,guard #t) (else #f)))
      '(begin)
      (begin
        (eval `(define-cond-expand-feature ,guard))
        defn)))

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))

  (namespace ("std/os/signalfd#"
              SFD_NONBLOCK SFD_CLOEXEC
              size-of-signalfd-siginfo
              signalfd-siginfo-signo
              signalfd-siginfo-errno
              signalfd-siginfo-code
              signalfd-siginfo-pid
              signalfd-siginfo-uid
              signalfd-siginfo-fd
              signalfd-siginfo-tid
              signalfd-siginfo-band
              signalfd-siginfo-overrun
              signalfd-siginfo-trapno
              signalfd-siginfo-status
              signalfd-siginfo-int
              signalfd-siginfo-ptr
              signalfd-siginfo-utime
              signalfd-siginfo-stime
              signalfd-siginfo-addr
              _signalfd __signalfd __errno))

  (define-c-lambda __errno () int
    "___return (errno);")

  (define-const SFD_NONBLOCK)
  (define-const SFD_CLOEXEC)

  (define-guard ffi-have-sigset
    (c-define-type sigset_t "sigset_t"))
  (define-guard ffi-have-sigset*
    (c-define-type sigset_t*
      (pointer "sigset_t" (sigset_t*) "ffi_free")))

  (define-c-lambda __signalfd (int sigset_t* int) int
    "signalfd")
  (define-with-errno _signalfd __signalfd (fd mask flags))

  (define-c-lambda size-of-signalfd-siginfo () int
    "___return (sizeof (struct signalfd_siginfo));")

  (define-c-lambda signalfd-siginfo-signo (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_signo);")
  (define-c-lambda signalfd-siginfo-errno (scheme-object) int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_errno);")
  (define-c-lambda signalfd-siginfo-code (scheme-object) int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_code);")
  (define-c-lambda signalfd-siginfo-pid (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_pid);")
  (define-c-lambda signalfd-siginfo-uid (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_uid);")
  (define-c-lambda signalfd-siginfo-fd (scheme-object) int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_fd);")
  (define-c-lambda signalfd-siginfo-tid (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_tid);")
  (define-c-lambda signalfd-siginfo-band (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_band);")
  (define-c-lambda signalfd-siginfo-overrun (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_overrun);")
  (define-c-lambda signalfd-siginfo-trapno (scheme-object) unsigned-int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_trapno);")
  (define-c-lambda signalfd-siginfo-status (scheme-object) int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_status);")
  (define-c-lambda signalfd-siginfo-int (scheme-object) int32
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_int);")
  (define-c-lambda signalfd-siginfo-ptr (scheme-object) unsigned-int64
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_ptr);")
  (define-c-lambda signalfd-siginfo-utime (scheme-object) unsigned-int64
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_utime);")
  (define-c-lambda signalfd-siginfo-stime (scheme-object) unsigned-int64
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_stime);")
  (define-c-lambda signalfd-siginfo-addr (scheme-object) unsigned-int64
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_addr);")
  )
