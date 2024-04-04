(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712246555)
  (begin
    (define spawn
      (lambda (_%f107526%_ . _%args107527%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107526%_))
              (let ((_%f107531%_ _%f107526%_))
                (declare (not safe))
                (##apply __spawn _%f107531%_ _%args107527%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f107526%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f107513%_ . _%args107514%_)
        (let ((_%f107517%_ _%f107513%_))
          (declare (not safe))
          (spawn-actor _%f107517%_ _%args107514%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107497%_ _%f107498%_ . _%args107499%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107498%_))
              (let ((_%f107503%_ _%f107498%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name107497%_
                         _%f107503%_
                         _%args107499%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f107498%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name107483%_ _%f107484%_ . _%args107485%_)
        (let ((_%f107488%_ _%f107484%_))
          (declare (not safe))
          (spawn-actor _%f107488%_ _%args107485%_ _%name107483%_ '#f))))
    (define spawn/group
      (lambda (_%name107467%_ _%f107468%_ . _%args107469%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107468%_))
              (let ((_%f107473%_ _%f107468%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name107467%_
                         _%f107473%_
                         _%args107469%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f107468%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name107451%_ _%f107452%_ . _%args107453%_)
        (let ()
          (let* ((_%f107456%_ _%f107452%_)
                 (_%tgroup107465%_ (make-thread-group _%name107451%_)))
            (declare (not safe))
            (spawn-actor
             _%f107456%_
             _%args107453%_
             _%name107451%_
             _%tgroup107465%_)))))
    (define spawn-actor
      (lambda (_%f107423%_ _%args107424%_ _%name107425%_ _%tgroup107426%_)
        (let ()
          (letrec ((_%thread-main107429%_
                    (lambda (_%thunk107443%_)
                      (lambda ()
                        (let ((__tmp107541
                               (lambda (_%exn107446%_)
                                 (let ((__tmp107542
                                        (lambda (_%cont107448%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107543
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont107448%_
                                                        _%exn107446%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107543))
                                              '#!void)
                                          (let ((__tmp107544
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont107448%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107544
                                             ##primordial-exception-handler
                                             _%exn107446%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107542)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107541
                           _%thunk107443%_))))))
            (let* ((_%thunk107432%_
                    (if (let () (declare (not safe)) (null? _%args107424%_))
                        _%f107423%_
                        (lambda () (apply _%f107423%_ _%args107424%_))))
                   (_%thunk107435%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk107432%_))))
                   (_%tgroup107440%_
                    (let ((_%$e107437%_ _%tgroup107426%_))
                      (if _%$e107437%_
                          _%$e107437%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main107429%_ _%thunk107435%_))
                _%name107425%_
                _%tgroup107440%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk107401%_ _%name107402%_ _%tgroup107403%_)
        (thread-start!
         (make-thread _%thunk107401%_ _%name107402%_ _%tgroup107403%_))))
    (define spawn-thread__0
      (lambda (_%thunk107408%_)
        (let* ((_%name107410%_ absent-obj) (_%tgroup107412%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107408%_ _%name107410%_ _%tgroup107412%_))))
    (define spawn-thread__1
      (lambda (_%thunk107414%_ _%name107415%_)
        (let ((_%tgroup107417%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107414%_ _%name107415%_ _%tgroup107417%_))))
    (define spawn-thread
      (lambda _g107546_
        (let ((_g107545_ (let () (declare (not safe)) (##length _g107546_))))
          (cond ((let () (declare (not safe)) (##fx= _g107545_ 1))
                 (apply (lambda (_%thunk107408%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk107408%_)))
                        _g107546_))
                ((let () (declare (not safe)) (##fx= _g107545_ 2))
                 (apply (lambda (_%thunk107414%_ _%name107415%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk107414%_ _%name107415%_)))
                        _g107546_))
                ((let () (declare (not safe)) (##fx= _g107545_ 3))
                 (apply (lambda (_%thunk107419%_
                                 _%name107420%_
                                 _%tgroup107421%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk107419%_
                             _%name107420%_
                             _%tgroup107421%_)))
                        _g107546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107546_))))))
    (define thread-local-ref__%
      (lambda (_%key107385%_ _%default107386%_)
        (let ((_%tab107388%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab107388%_ _%key107385%_ _%default107386%_))))
    (define thread-local-ref__0
      (lambda (_%key107393%_)
        (let ((_%default107395%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key107393%_ _%default107395%_))))
    (define thread-local-ref
      (lambda _g107548_
        (let ((_g107547_ (let () (declare (not safe)) (##length _g107548_))))
          (cond ((let () (declare (not safe)) (##fx= _g107547_ 1))
                 (apply (lambda (_%key107393%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key107393%_)))
                        _g107548_))
                ((let () (declare (not safe)) (##fx= _g107547_ 2))
                 (apply (lambda (_%key107397%_ _%default107398%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key107397%_
                             _%default107398%_)))
                        _g107548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107548_))))))
    (define thread-local-get
      (lambda (_%key107382%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key107382%_ '#f))))
    (define thread-local-set!
      (lambda (_%key107377%_ _%value107378%_)
        (let ((_%tab107380%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab107380%_ _%key107377%_ _%value107378%_))))
    (define thread-local-delete!
      (lambda (_%key107373%_)
        (let ((_%tab107375%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab107375%_ _%key107373%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107354%_ (current-thread)))
          (if (actor-thread? _%thr107354%_)
              (let ((_%$e107357%_ (actor-thread-locals _%thr107354%_)))
                (if _%$e107357%_
                    (values _%$e107357%_)
                    (let ((_%tab107361%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107354%_ _%tab107361%_)
                      _%tab107361%_)))
              (if (eq? _%thr107354%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107365%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107354%_))))
                      (if _%$e107365%_
                          ((lambda (_%tab107368%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107368%_)
                           _%$e107365%_)
                          (let ((_%tab107371%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107354%_
                               _%tab107371%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107371%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107351%_)
        (if (let () (declare (not safe)) (procedure? _%proc107351%_))
            '#!void
            (let ((__tmp107549
                   (let ((__obj107540
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107540
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc107351%_ '()))
                     __obj107540)))
              (declare (not safe))
              (raise __tmp107549)))
        (set! __unhandled-actor-exception-hook _%proc107351%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107325%_ _%proc107326%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107325%_))
              (let ((_%mx107330%_ _%mx107325%_))
                (if (let () (declare (not safe)) (procedure? _%proc107326%_))
                    (let ((_%proc107340%_ _%proc107326%_))
                      (declare (not safe))
                      (__with-lock _%mx107330%_ _%proc107340%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107326%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107325%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx107296%_ _%proc107297%_)
        (let ((_%mx107300%_ _%mx107296%_))
          (let* ((_%proc107308%_ _%proc107297%_)
                 (_%handler107317%_ (current-exception-handler)))
            (let ((__tmp107551
                   (lambda (_%e107319%_)
                     (let ((__tmp107552
                            (lambda ()
                              (mutex-unlock! _%mx107300%_)
                              (let ()
                                (declare (not safe))
                                (_%handler107317%_ _%e107319%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp107552))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e107319%_))))
                  (__tmp107550
                   (lambda ()
                     (mutex-lock! _%mx107300%_)
                     (let ((_%result107323%_
                            (let () (declare (not safe)) (_%proc107308%_))))
                       (mutex-unlock! _%mx107300%_)
                       _%result107323%_))))
              (declare (not safe))
              (__with-exception-handler __tmp107551 __tmp107550))))))
    (define with-dynamic-lock
      (lambda (_%mx107271%_ _%proc107272%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107271%_))
              (let ((_%mx107276%_ _%mx107271%_))
                (if (let () (declare (not safe)) (procedure? _%proc107272%_))
                    (let ((_%proc107286%_ _%proc107272%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx107276%_ _%proc107286%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107272%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107271%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx107248%_ _%proc107249%_)
        (let ()
          (let* ((_%mx107252%_ _%mx107248%_) (_%proc107260%_ _%proc107249%_))
            (let ((__tmp107554 (lambda () (mutex-lock! _%mx107252%_)))
                  (__tmp107553 (lambda () (mutex-unlock! _%mx107252%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107554 _%proc107260%_ __tmp107553))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107213%_ _%error-port107214%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk107213%_))
              (let ((_%thunk107218%_ _%thunk107213%_))
                (if (let () (declare (not safe)) (port? _%error-port107214%_))
                    (let ((_%error-port107228%_ _%error-port107214%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk107218%_
                       _%error-port107228%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port107214%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk107213%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107241%_)
        (let ((_%error-port107243%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk107241%_
           _%error-port107243%_))))
    (define with-exception-stack-trace
      (lambda _g107556_
        (let ((_g107555_ (let () (declare (not safe)) (##length _g107556_))))
          (cond ((let () (declare (not safe)) (##fx= _g107555_ 1))
                 (apply (lambda (_%thunk107241%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk107241%_)))
                        _g107556_))
                ((let () (declare (not safe)) (##fx= _g107555_ 2))
                 (apply (lambda (_%thunk107245%_ _%error-port107246%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk107245%_
                             _%error-port107246%_)))
                        _g107556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107556_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107174%_ _%error-port107175%_)
        (let ((_%thunk107178%_ _%thunk107174%_))
          (let* ((_%error-port107187%_ _%error-port107175%_)
                 (__tmp107557
                  (let ((_%E107196%_ (current-exception-handler)))
                    (lambda (_%exn107198%_)
                      (let ((__tmp107558
                             (lambda (_%cont107200%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont107200%_
                                      _%exn107198%_
                                      _%error-port107187%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E107196%_ _%exn107198%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp107558))))))
            (declare (not safe))
            (__with-exception-handler __tmp107557 _%thunk107178%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107205%_)
        (let ((_%error-port107207%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk107205%_
           _%error-port107207%_))))
    (define __with-exception-stack-trace
      (lambda _g107560_
        (let ((_g107559_ (let () (declare (not safe)) (##length _g107560_))))
          (cond ((let () (declare (not safe)) (##fx= _g107559_ 1))
                 (apply (lambda (_%thunk107205%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk107205%_)))
                        _g107560_))
                ((let () (declare (not safe)) (##fx= _g107559_ 2))
                 (apply (lambda (_%thunk107209%_ _%error-port107210%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk107209%_
                             _%error-port107210%_)))
                        _g107560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107560_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107155%_ _%exn107156%_ _%error-port107157%_)
        (let ((_%out107159%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107159%_))
          (display '"*** Unhandled exception in " _%out107159%_)
          (display (current-thread) _%out107159%_)
          (newline _%out107159%_)
          (display-exception _%exn107156%_ _%out107159%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107156%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107159%_)
                (newline _%out107159%_)
                (display-continuation-backtrace _%cont107155%_ _%out107159%_)))
          (let ((__tmp107561 (get-output-string _%out107159%_)))
            (declare (not safe))
            (##write-string __tmp107561 _%error-port107157%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107164%_ _%exn107165%_)
        (let ((_%error-port107167%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont107164%_
           _%exn107165%_
           _%error-port107167%_))))
    (define dump-stack-trace!
      (lambda _g107563_
        (let ((_g107562_ (let () (declare (not safe)) (##length _g107563_))))
          (cond ((let () (declare (not safe)) (##fx= _g107562_ 2))
                 (apply (lambda (_%cont107164%_ _%exn107165%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont107164%_
                             _%exn107165%_)))
                        _g107563_))
                ((let () (declare (not safe)) (##fx= _g107562_ 3))
                 (apply (lambda (_%cont107169%_
                                 _%exn107170%_
                                 _%error-port107171%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont107169%_
                             _%exn107170%_
                             _%error-port107171%_)))
                        _g107563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107563_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
