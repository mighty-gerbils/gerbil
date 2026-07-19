;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/os/signalfd unit-test
(cond-expand
  ((and enable-signalfd-test linux)
   (import :std/test
           ./signal
           ./signalfd
           ./pid)
   (export signalfd-test)

   (def signalfd-test
     (test-suite "signalfd"
       (test-case "basic signal handling"
         (def ss (make_sigset))
         (sigaddset ss SIGHUP)
         (sigprocmask SIG_BLOCK ss #f)
         (def sfd (signalfd ss))

         (spawn
          (lambda ()
            (thread-sleep! 1)
            (kill (getpid) SIGHUP)))

         (let (r (signalfd-read sfd))
           (check (signalfd-siginfo-signo r) => SIGHUP)))))))
