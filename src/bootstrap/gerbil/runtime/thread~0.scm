(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1742237312)
  (begin
    (define spawn
      (lambda (_%f111758%_ . _%args111759%_)
        (if (procedure? _%f111758%_)
            (let ((_%f111763%_ _%f111758%_))
              (declare (not safe))
              (##apply __spawn _%f111763%_ _%args111759%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111758%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111745%_ . _%args111746%_)
        (let ((_%f111749%_ _%f111745%_))
          (spawn-actor _%f111749%_ _%args111746%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111729%_ _%f111730%_ . _%args111731%_)
        (if (procedure? _%f111730%_)
            (let ((_%f111735%_ _%f111730%_))
              (declare (not safe))
              (##apply __spawn/name _%name111729%_ _%f111735%_ _%args111731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111730%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111715%_ _%f111716%_ . _%args111717%_)
        (let ((_%f111720%_ _%f111716%_))
          (spawn-actor _%f111720%_ _%args111717%_ _%name111715%_ '#f))))
    (define spawn/group
      (lambda (_%name111699%_ _%f111700%_ . _%args111701%_)
        (if (procedure? _%f111700%_)
            (let ((_%f111705%_ _%f111700%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111699%_
                       _%f111705%_
                       _%args111701%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111700%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111683%_ _%f111684%_ . _%args111685%_)
        (let* ((_%f111688%_ _%f111684%_)
               (_%tgroup111697%_ (make-thread-group _%name111683%_)))
          (spawn-actor
           _%f111688%_
           _%args111685%_
           _%name111683%_
           _%tgroup111697%_))))
    (define spawn-actor
      (lambda (_%f111655%_ _%args111656%_ _%name111657%_ _%tgroup111658%_)
        (letrec ((_%thread-main111661%_
                  (lambda (_%thunk111675%_)
                    (lambda ()
                      (let ((__tmp111772
                             (lambda (_%exn111678%_)
                               (let ((__tmp111773
                                      (lambda (_%cont111680%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111774
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111680%_
                                                      _%exn111678%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111774))
                                            '#!void)
                                        (let ((__tmp111775
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111680%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111775
                                           ##primordial-exception-handler
                                           _%exn111678%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111773)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111772
                         _%thunk111675%_))))))
          (let* ((_%thunk111664%_
                  (if (null? _%args111656%_)
                      _%f111655%_
                      (lambda () (apply _%f111655%_ _%args111656%_))))
                 (_%thunk111667%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111664%_)))
                 (_%tgroup111672%_
                  (let ((_%$e111669%_ _%tgroup111658%_))
                    (if _%$e111669%_ _%$e111669%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111661%_ _%thunk111667%_)
              _%name111657%_
              _%tgroup111672%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111633%_ _%name111634%_ _%tgroup111635%_)
        (thread-start!
         (make-thread _%thunk111633%_ _%name111634%_ _%tgroup111635%_))))
    (define spawn-thread__0
      (lambda (_%thunk111640%_)
        (let* ((_%name111642%_ absent-obj) (_%tgroup111644%_ absent-obj))
          (spawn-thread__% _%thunk111640%_ _%name111642%_ _%tgroup111644%_))))
    (define spawn-thread__1
      (lambda (_%thunk111646%_ _%name111647%_)
        (let ((_%tgroup111649%_ absent-obj))
          (spawn-thread__% _%thunk111646%_ _%name111647%_ _%tgroup111649%_))))
    (define spawn-thread
      (lambda _g111777_
        (let ((_g111776_ (let () (declare (not safe)) (##length _g111777_))))
          (cond ((let () (declare (not safe)) (##fx= _g111776_ 1))
                 (apply spawn-thread__0 _g111777_))
                ((let () (declare (not safe)) (##fx= _g111776_ 2))
                 (apply spawn-thread__1 _g111777_))
                ((let () (declare (not safe)) (##fx= _g111776_ 3))
                 (apply spawn-thread__% _g111777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111777_))))))
    (define thread-local-ref__%
      (lambda (_%key111617%_ _%default111618%_)
        (let ((_%tab111620%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111620%_ _%key111617%_ _%default111618%_))))
    (define thread-local-ref__0
      (lambda (_%key111625%_)
        (let ((_%default111627%_ absent-obj))
          (thread-local-ref__% _%key111625%_ _%default111627%_))))
    (define thread-local-ref
      (lambda _g111779_
        (let ((_g111778_ (let () (declare (not safe)) (##length _g111779_))))
          (cond ((let () (declare (not safe)) (##fx= _g111778_ 1))
                 (apply thread-local-ref__0 _g111779_))
                ((let () (declare (not safe)) (##fx= _g111778_ 2))
                 (apply thread-local-ref__% _g111779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111779_))))))
    (define thread-local-get
      (lambda (_%key111614%_) (thread-local-ref__% _%key111614%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111609%_ _%value111610%_)
        (let ((_%tab111612%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111612%_ _%key111609%_ _%value111610%_))))
    (define thread-local-delete!
      (lambda (_%key111605%_)
        (let ((_%tab111607%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111607%_ _%key111605%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111586%_ (current-thread)))
          (if (actor-thread? _%thr111586%_)
              (let ((_%$e111589%_ (actor-thread-locals _%thr111586%_)))
                (if _%$e111589%_
                    _%$e111589%_
                    (let ((_%tab111593%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111586%_ _%tab111593%_)
                      _%tab111593%_)))
              (if (eq? _%thr111586%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111597%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111586%_))))
                      (if _%$e111597%_
                          ((lambda (_%tab111600%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111600%_)
                           _%$e111597%_)
                          (let ((_%tab111603%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111586%_
                               _%tab111603%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111603%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111564%_)
        (if ((lambda (_%$obj111567%_)
               (or (not _%$obj111567%_) (procedure? _%$obj111567%_)))
             _%new-value111564%_)
            (let ((_%new-value111574%_ _%new-value111564%_))
              (__unhandled-actor-exception-hook-set! _%new-value111574%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111564%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111551%_)
        (let ((_%new-value111555%_ _%new-value111551%_))
          (set! __unhandled-actor-exception-hook _%new-value111555%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111525%_ _%proc111526%_)
        (if (mutex? _%mx111525%_)
            (let ((_%mx111530%_ _%mx111525%_))
              (if (procedure? _%proc111526%_)
                  (let ((_%proc111540%_ _%proc111526%_))
                    (__with-lock _%mx111530%_ _%proc111540%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111526%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111525%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111496%_ _%proc111497%_)
        (let* ((_%mx111500%_ _%mx111496%_)
               (_%proc111508%_ _%proc111497%_)
               (_%handler111517%_ (current-exception-handler)))
          (let ((__tmp111781
                 (lambda (_%e111519%_)
                   (let ((__tmp111782
                          (lambda ()
                            (mutex-unlock! _%mx111500%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111517%_ _%e111519%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111782))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111519%_))))
                (__tmp111780
                 (lambda ()
                   (mutex-lock! _%mx111500%_)
                   (let ((_%result111523%_
                          (let () (declare (not safe)) (_%proc111508%_))))
                     (mutex-unlock! _%mx111500%_)
                     _%result111523%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111781 __tmp111780)))))
    (define with-dynamic-lock
      (lambda (_%mx111471%_ _%proc111472%_)
        (if (mutex? _%mx111471%_)
            (let ((_%mx111476%_ _%mx111471%_))
              (if (procedure? _%proc111472%_)
                  (let ((_%proc111486%_ _%proc111472%_))
                    (__with-dynamic-lock _%mx111476%_ _%proc111486%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111472%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111471%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111448%_ _%proc111449%_)
        (let* ((_%mx111452%_ _%mx111448%_) (_%proc111460%_ _%proc111449%_))
          (let ((__tmp111784 (lambda () (mutex-lock! _%mx111452%_)))
                (__tmp111783 (lambda () (mutex-unlock! _%mx111452%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111784 _%proc111460%_ __tmp111783)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111413%_ _%error-port111414%_)
        (if (procedure? _%thunk111413%_)
            (let ((_%thunk111418%_ _%thunk111413%_))
              (if (port? _%error-port111414%_)
                  (let ((_%error-port111428%_ _%error-port111414%_))
                    (__with-exception-stack-trace__%
                     _%thunk111418%_
                     _%error-port111428%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111414%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111413%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111441%_)
        (let ((_%error-port111443%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111441%_
           _%error-port111443%_))))
    (define with-exception-stack-trace
      (lambda _g111786_
        (let ((_g111785_ (let () (declare (not safe)) (##length _g111786_))))
          (cond ((let () (declare (not safe)) (##fx= _g111785_ 1))
                 (apply with-exception-stack-trace__0 _g111786_))
                ((let () (declare (not safe)) (##fx= _g111785_ 2))
                 (apply with-exception-stack-trace__% _g111786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111786_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111374%_ _%error-port111375%_)
        (let* ((_%thunk111378%_ _%thunk111374%_)
               (_%error-port111387%_ _%error-port111375%_)
               (__tmp111787
                (let ((_%E111396%_ (current-exception-handler)))
                  (lambda (_%exn111398%_)
                    (let ((__tmp111788
                           (lambda (_%cont111400%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111400%_
                                  _%exn111398%_
                                  _%error-port111387%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111396%_ _%exn111398%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111788))))))
          (declare (not safe))
          (__with-exception-handler __tmp111787 _%thunk111378%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111405%_)
        (let ((_%error-port111407%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111405%_
           _%error-port111407%_))))
    (define __with-exception-stack-trace
      (lambda _g111790_
        (let ((_g111789_ (let () (declare (not safe)) (##length _g111790_))))
          (cond ((let () (declare (not safe)) (##fx= _g111789_ 1))
                 (apply __with-exception-stack-trace__0 _g111790_))
                ((let () (declare (not safe)) (##fx= _g111789_ 2))
                 (apply __with-exception-stack-trace__% _g111790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111790_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111355%_ _%exn111356%_ _%error-port111357%_)
        (let ((_%out111359%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111359%_))
          (display '"*** Unhandled exception in " _%out111359%_)
          (display (current-thread) _%out111359%_)
          (newline _%out111359%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111356%_ _%out111359%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111356%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111359%_)
                (newline _%out111359%_)
                (display-continuation-backtrace _%cont111355%_ _%out111359%_)))
          (let ((__tmp111791 (get-output-string _%out111359%_)))
            (declare (not safe))
            (##write-string __tmp111791 _%error-port111357%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111364%_ _%exn111365%_)
        (let ((_%error-port111367%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111364%_
           _%exn111365%_
           _%error-port111367%_))))
    (define dump-stack-trace!
      (lambda _g111793_
        (let ((_g111792_ (let () (declare (not safe)) (##length _g111793_))))
          (cond ((let () (declare (not safe)) (##fx= _g111792_ 2))
                 (apply dump-stack-trace!__0 _g111793_))
                ((let () (declare (not safe)) (##fx= _g111792_ 3))
                 (apply dump-stack-trace!__% _g111793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111793_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
