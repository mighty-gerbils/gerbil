;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/os/signal-handler unit-test

(import :gerbil/gambit/threads
        :std/test
        :std/os/signal
        :std/os/signal-handler
        :std/os/pid)

(export signal-handler-test)
(def signal-handler-test
  (test-suite "test :std/os/signal-handler"
    (test-case "test basic signal handling"
      (add-signal-handler!
       SIGHUP
       (let (thread (current-thread))
         (lambda ()
           (thread-send thread SIGHUP))))

      (spawn
       (lambda ()
         (thread-sleep! 1)
         (kill (getpid) SIGHUP)))

      (check (thread-receive) => SIGHUP))))
