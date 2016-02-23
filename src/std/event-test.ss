;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/event unit-test

(import :gerbil/gambit
        :std/test
        :std/event)
(export event-test)

(def event-test
  (test-suite "test :std/event library"
    (test-case "test select"
      (check (select 1 []) => 1)
      
      (def thr1 (spawn void))
      (check (select 1 [thr1]) => thr1)

      (def thr2 (spawn (lambda () (thread-sleep! 2))))
      (check (select 1 [thr2]) => 1)
      (check (select #f [thr2]) => thr2)

      (def lock3 (make-mutex))
      (def thr3 (spawn (lambda () (thread-sleep! 1) (mutex-unlock! lock3))))
      (mutex-lock! lock3 #f thr3)
      (check (select #f [lock3]) => lock3)

      (def lock4 (make-mutex))
      (def cv4 (make-condition-variable))
      (mutex-lock! lock4)
      (def thr4 (spawn (lambda () (thread-sleep! 1) (mutex-lock! lock4) (condition-variable-signal! cv4) (mutex-unlock! lock4))))
      (check (select #f [[lock4 . cv4]]) => (cons lock4 cv4))

      (def /dev/null (open-input-file "/dev/null"))
      (check (select #f [/dev/null]) => /dev/null)
      (close-port /dev/null))
    
    (test-case "test sync selectors"
      (check (sync 1) => #f)

      (def thr1 (spawn void))
      (check (sync 1 thr1) => thr1)

      (def thr2 (spawn (lambda () (thread-sleep! 2))))
      (check (sync 1 thr2) => #f)
      (check (sync thr2) => thr2)

      (def lock3 (make-mutex))
      (def thr3 (spawn (lambda () (thread-sleep! 1) (mutex-unlock! lock3))))
      (mutex-lock! lock3 #f thr3)
      (check (sync lock3) => lock3)
      
      (def lock4 (make-mutex))
      (def cv4 (make-condition-variable))
      (mutex-lock! lock4)
      (def thr4 (spawn (lambda () (thread-sleep! 1) (mutex-lock! lock4) (condition-variable-signal! cv4) (mutex-unlock! lock4))))
      (check (sync [lock4 . cv4]) => (values lock4 cv4))

      (def /dev/null (open-input-file "/dev/null"))
      (check (sync /dev/null) => /dev/null)
      (close-port /dev/null))
    
    (test-case "test sync events"
      (check (sync never-evt 0) => #f)
      (check (sync always-evt 0) => always-evt)
      (check (sync (handle-evt 1 (lambda (_) 'timeout))) => 'timeout)
      (check (sync (choice-evt [never-evt always-evt])) => always-evt)
      (check (sync (choice-evt [never-evt (handle-evt 1 (lambda (_) 'timeout))])) => 'timeout)
      (check (sync (handle-evt (choice-evt [never-evt (handle-evt 1 (lambda (_) 'timeout))])
                               values))
             => 'timeout))))