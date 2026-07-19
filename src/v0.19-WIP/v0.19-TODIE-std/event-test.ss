;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/event unit-test

(import :gerbil/gambit
        :std/test
        :std/event)
(export event-test)

(def event-test
  (test-suite "test :std/event"
    (test-case "test wait"
      (def thr1 (spawn void))
      (check (wait thr1 1) => thr1)

      (def thr2 (spawn (lambda () (thread-sleep! 2))))
      (check (wait thr2 1) => #f)
      (check (wait thr2 2) => thr2)

      (def mx3 (make-mutex))
      (def cv3 (make-condition-variable))
      (mutex-lock! mx3)
      (def thr3 (spawn (lambda () (thread-sleep! 1) (mutex-lock! mx3) (condition-variable-signal! cv3) (mutex-unlock! mx3))))
      (let (sel3 (cons mx3 cv3))
        (check (wait sel3 2) => sel3)))

    (test-case "test select"
      (def thr1 (spawn void))
      (def thr2 (spawn (lambda () (thread-sleep! 1))))
      (check (select [thr1 thr2] 1) => thr1)

      (def mx3 (make-mutex))
      (def cv3 (make-condition-variable))
      (mutex-lock! mx3)
      (check (select [thr2 (cons mx3 cv3)] 2) => thr2)

      (mutex-lock! mx3)
      (def mx4 (make-mutex))
      (def cv4 (make-condition-variable))
      (mutex-lock! mx4)

      (let ((sel3 (cons mx3 cv3))
            (sel4 (cons mx4 cv4)))
        (check (select [sel3 sel4] 0) => #f))

      (mutex-lock! mx3)
      (mutex-lock! mx4)
      (def thr3 (spawn (lambda () (thread-sleep! 1) (mutex-lock! mx3) (condition-variable-signal! cv3) (mutex-unlock! mx3))))
      (let ((sel3 (cons mx3 cv3))
            (sel4 (cons mx4 cv4)))
        (check (select [sel3 sel4] 2) => sel3)))

    (test-case "test sync selectors"
      (check (sync 1) => #f)

      (def thr1 (spawn void))
      (check (sync thr1 1) => thr1)

      (def thr2 (spawn (lambda () (thread-sleep! 2))))
      (check (sync thr2 1) => #f)
      (check (sync thr2 2) => thr2)

      (def mx3 (make-mutex))
      (def cv3 (make-condition-variable))
      (mutex-lock! mx3)
      (def thr4 (spawn (lambda () (thread-sleep! 1) (mutex-lock! mx3) (condition-variable-signal! cv3) (mutex-unlock! mx3))))
      (check (sync (cons mx3 cv3)) => (cons mx3 cv3)))

    (test-case "test sync events"
      (check (sync never-evt 0) => #f)
      (check (sync always-evt 0) => always-evt)
      (check (sync (handle-evt 1 (lambda (_) 'timeout))) => 'timeout)
      (check (sync (choice-evt never-evt always-evt)) => always-evt)
      (check (sync (choice-evt never-evt (handle-evt 1 (lambda (_) 'timeout)))) => 'timeout)
      (check (sync (handle-evt (choice-evt never-evt (handle-evt 1 (lambda (_) 'timeout)))
                               values))
             => 'timeout))

    (test-case "test sync input ports"
      (let ()
        (def /dev/null (open-input-file "/dev/null"))
        (check (sync /dev/null) => /dev/null)
        (close-port /dev/null))

      (let ()
        (def srv (open-tcp-server "127.0.0.1:9999"))
        (spawn (lambda () (thread-sleep! 1) (open-tcp-client "127.0.0.1:9999")))
        (check (sync srv) => srv)
        (close-port srv))

      (let ()
        (defvalues (in out) (open-string-pipe '(direction: input permanent-close: #t)))
        (spawn (lambda () (thread-sleep! 1) (write "hello" out) (force-output out)))
        (check (sync in) => in)))))
