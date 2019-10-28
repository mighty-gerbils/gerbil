;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Linux signalfd for signal handling

(require linux)
(import :std/foreign
        :std/os/error
        :std/os/fd
        :std/os/fdio
        :std/os/signal)
(export signalfd signalfd?
        signalfd-reset!
        signalfd-read
        make-signalfd-siginfo
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

(def (signalfd-read sfd (buf (make-signalfd-siginfo)))
  (let lp ()
    (let (rd (fdread sfd buf))
      (if rd
        buf
        (begin
          (##wait-for-io! (fd-io-in sfd) #t)
          (lp))))))

(def (make-signalfd-siginfo)
  (make-u8vector (size-of-signalfd-siginfo)))

(begin-ffi (SFD_NONBLOCK SFD_CLOEXEC
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
  (c-declare "#include <signal.h>")
  (c-declare "#include <sys/signalfd.h>")

  ;; private
  (namespace ("std/os/signalfd#" __signalfd))

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
    "___return (((struct signalfd_siginfo*)U8_DATA (___arg1))->ssi_addr);"))
