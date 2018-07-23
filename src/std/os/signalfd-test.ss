;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/os/signalfd unit-test

(import :gerbil/gambit/threads
        :std/test
        :std/os/signal
        :std/os/signalfd
        :std/os/pid)
(export signalfd-test)

(def signalfd-test
  (test-suite "test :std/os/signalfd"
    (test-case "test basic signal handling"
      (def ss (make_sigset))
      (sigaddset ss SIGHUP)
      (sigprocmask SIG_BLOCK ss #f)
      (def sfd (signalfd ss))

      (spawn
       (lambda ()
         (thread-sleep! 1)
         (kill (getpid) SIGHUP)))

      (let (r (signalfd-read sfd))
        (check (signalfd-siginfo-signo r) => SIGHUP)))))
