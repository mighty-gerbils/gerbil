;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/os/signal-handler unit-test

(import :gerbil/gambit/threads
        :std/test
        :std/sugar
        ./signal
        ./signal-handler
        ./pid)

(export signal-handler-test)
(def signal-handler-test
  (test-suite "signal-handler"
    (test-case "basic signal handling"
      ;; drain the message queue first from possible garbage from other tests
      (while (thread-receive 0 #f))

      (add-signal-handler!
       SIGHUP
       (let (thread (current-thread))
         (lambda ()
           (thread-send thread SIGHUP))))
      (add-signal-handler!
       SIGUSR1
       (let (thread (current-thread))
         (lambda ()
           (thread-send thread SIGUSR1))))

      (spawn
       (lambda ()
         (thread-sleep! 1)
         (kill (getpid) SIGHUP)
         (thread-sleep! 1)
         (kill (getpid) SIGUSR1)
         (thread-sleep! 1)
         (kill (getpid) SIGHUP)))

      (check (thread-receive) => SIGHUP)
      (check (thread-receive) => SIGUSR1)
      (check (thread-receive) => SIGHUP))))
