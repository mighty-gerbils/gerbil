(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712256086)
  (begin
    (define spawn
      (lambda (_%f107509%_ . _%args107510%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107509%_))
              (let ((_%f107514%_ _%f107509%_))
                (declare (not safe))
                (##apply __spawn _%f107514%_ _%args107510%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f107509%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f107496%_ . _%args107497%_)
        (let ((_%f107500%_ _%f107496%_))
          (declare (not safe))
          (spawn-actor _%f107500%_ _%args107497%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107480%_ _%f107481%_ . _%args107482%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107481%_))
              (let ((_%f107486%_ _%f107481%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name107480%_
                         _%f107486%_
                         _%args107482%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f107481%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name107466%_ _%f107467%_ . _%args107468%_)
        (let ((_%f107471%_ _%f107467%_))
          (declare (not safe))
          (spawn-actor _%f107471%_ _%args107468%_ _%name107466%_ '#f))))
    (define spawn/group
      (lambda (_%name107450%_ _%f107451%_ . _%args107452%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107451%_))
              (let ((_%f107456%_ _%f107451%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name107450%_
                         _%f107456%_
                         _%args107452%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f107451%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name107434%_ _%f107435%_ . _%args107436%_)
        (let ()
          (let* ((_%f107439%_ _%f107435%_)
                 (_%tgroup107448%_ (make-thread-group _%name107434%_)))
            (declare (not safe))
            (spawn-actor
             _%f107439%_
             _%args107436%_
             _%name107434%_
             _%tgroup107448%_)))))
    (define spawn-actor
      (lambda (_%f107406%_ _%args107407%_ _%name107408%_ _%tgroup107409%_)
        (let ()
          (letrec ((_%thread-main107412%_
                    (lambda (_%thunk107426%_)
                      (lambda ()
                        (let ((__tmp107524
                               (lambda (_%exn107429%_)
                                 (let ((__tmp107525
                                        (lambda (_%cont107431%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107526
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont107431%_
                                                        _%exn107429%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107526))
                                              '#!void)
                                          (let ((__tmp107527
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont107431%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107527
                                             ##primordial-exception-handler
                                             _%exn107429%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107525)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107524
                           _%thunk107426%_))))))
            (let* ((_%thunk107415%_
                    (if (let () (declare (not safe)) (null? _%args107407%_))
                        _%f107406%_
                        (lambda () (apply _%f107406%_ _%args107407%_))))
                   (_%thunk107418%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk107415%_))))
                   (_%tgroup107423%_
                    (let ((_%$e107420%_ _%tgroup107409%_))
                      (if _%$e107420%_
                          _%$e107420%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main107412%_ _%thunk107418%_))
                _%name107408%_
                _%tgroup107423%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk107384%_ _%name107385%_ _%tgroup107386%_)
        (thread-start!
         (make-thread _%thunk107384%_ _%name107385%_ _%tgroup107386%_))))
    (define spawn-thread__0
      (lambda (_%thunk107391%_)
        (let* ((_%name107393%_ absent-obj) (_%tgroup107395%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107391%_ _%name107393%_ _%tgroup107395%_))))
    (define spawn-thread__1
      (lambda (_%thunk107397%_ _%name107398%_)
        (let ((_%tgroup107400%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107397%_ _%name107398%_ _%tgroup107400%_))))
    (define spawn-thread
      (lambda _g107529_
        (let ((_g107528_ (let () (declare (not safe)) (##length _g107529_))))
          (cond ((let () (declare (not safe)) (##fx= _g107528_ 1))
                 (apply (lambda (_%thunk107391%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk107391%_)))
                        _g107529_))
                ((let () (declare (not safe)) (##fx= _g107528_ 2))
                 (apply (lambda (_%thunk107397%_ _%name107398%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk107397%_ _%name107398%_)))
                        _g107529_))
                ((let () (declare (not safe)) (##fx= _g107528_ 3))
                 (apply (lambda (_%thunk107402%_
                                 _%name107403%_
                                 _%tgroup107404%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk107402%_
                             _%name107403%_
                             _%tgroup107404%_)))
                        _g107529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107529_))))))
    (define thread-local-ref__%
      (lambda (_%key107368%_ _%default107369%_)
        (let ((_%tab107371%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab107371%_ _%key107368%_ _%default107369%_))))
    (define thread-local-ref__0
      (lambda (_%key107376%_)
        (let ((_%default107378%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key107376%_ _%default107378%_))))
    (define thread-local-ref
      (lambda _g107531_
        (let ((_g107530_ (let () (declare (not safe)) (##length _g107531_))))
          (cond ((let () (declare (not safe)) (##fx= _g107530_ 1))
                 (apply (lambda (_%key107376%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key107376%_)))
                        _g107531_))
                ((let () (declare (not safe)) (##fx= _g107530_ 2))
                 (apply (lambda (_%key107380%_ _%default107381%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key107380%_
                             _%default107381%_)))
                        _g107531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107531_))))))
    (define thread-local-get
      (lambda (_%key107365%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key107365%_ '#f))))
    (define thread-local-set!
      (lambda (_%key107360%_ _%value107361%_)
        (let ((_%tab107363%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab107363%_ _%key107360%_ _%value107361%_))))
    (define thread-local-delete!
      (lambda (_%key107356%_)
        (let ((_%tab107358%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab107358%_ _%key107356%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107337%_ (current-thread)))
          (if (actor-thread? _%thr107337%_)
              (let ((_%$e107340%_ (actor-thread-locals _%thr107337%_)))
                (if _%$e107340%_
                    (values _%$e107340%_)
                    (let ((_%tab107344%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107337%_ _%tab107344%_)
                      _%tab107344%_)))
              (if (eq? _%thr107337%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107348%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107337%_))))
                      (if _%$e107348%_
                          ((lambda (_%tab107351%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107351%_)
                           _%$e107348%_)
                          (let ((_%tab107354%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107337%_
                               _%tab107354%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107354%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107334%_)
        (if (let () (declare (not safe)) (procedure? _%proc107334%_))
            '#!void
            (let ((__tmp107532
                   (let ((__obj107523
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107523
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc107334%_ '()))
                     __obj107523)))
              (declare (not safe))
              (raise __tmp107532)))
        (set! __unhandled-actor-exception-hook _%proc107334%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107308%_ _%proc107309%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107308%_))
              (let ((_%mx107313%_ _%mx107308%_))
                (if (let () (declare (not safe)) (procedure? _%proc107309%_))
                    (let ((_%proc107323%_ _%proc107309%_))
                      (declare (not safe))
                      (__with-lock _%mx107313%_ _%proc107323%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107309%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107308%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx107279%_ _%proc107280%_)
        (let ((_%mx107283%_ _%mx107279%_))
          (let* ((_%proc107291%_ _%proc107280%_)
                 (_%handler107300%_ (current-exception-handler)))
            (let ((__tmp107534
                   (lambda (_%e107302%_)
                     (let ((__tmp107535
                            (lambda ()
                              (mutex-unlock! _%mx107283%_)
                              (let ()
                                (declare (not safe))
                                (_%handler107300%_ _%e107302%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp107535))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e107302%_))))
                  (__tmp107533
                   (lambda ()
                     (mutex-lock! _%mx107283%_)
                     (let ((_%result107306%_
                            (let () (declare (not safe)) (_%proc107291%_))))
                       (mutex-unlock! _%mx107283%_)
                       _%result107306%_))))
              (declare (not safe))
              (__with-exception-handler __tmp107534 __tmp107533))))))
    (define with-dynamic-lock
      (lambda (_%mx107254%_ _%proc107255%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107254%_))
              (let ((_%mx107259%_ _%mx107254%_))
                (if (let () (declare (not safe)) (procedure? _%proc107255%_))
                    (let ((_%proc107269%_ _%proc107255%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx107259%_ _%proc107269%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107255%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107254%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx107231%_ _%proc107232%_)
        (let ()
          (let* ((_%mx107235%_ _%mx107231%_) (_%proc107243%_ _%proc107232%_))
            (let ((__tmp107537 (lambda () (mutex-lock! _%mx107235%_)))
                  (__tmp107536 (lambda () (mutex-unlock! _%mx107235%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107537 _%proc107243%_ __tmp107536))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107196%_ _%error-port107197%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk107196%_))
              (let ((_%thunk107201%_ _%thunk107196%_))
                (if (let () (declare (not safe)) (port? _%error-port107197%_))
                    (let ((_%error-port107211%_ _%error-port107197%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk107201%_
                       _%error-port107211%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port107197%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk107196%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107224%_)
        (let ((_%error-port107226%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk107224%_
           _%error-port107226%_))))
    (define with-exception-stack-trace
      (lambda _g107539_
        (let ((_g107538_ (let () (declare (not safe)) (##length _g107539_))))
          (cond ((let () (declare (not safe)) (##fx= _g107538_ 1))
                 (apply (lambda (_%thunk107224%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk107224%_)))
                        _g107539_))
                ((let () (declare (not safe)) (##fx= _g107538_ 2))
                 (apply (lambda (_%thunk107228%_ _%error-port107229%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk107228%_
                             _%error-port107229%_)))
                        _g107539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107539_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107157%_ _%error-port107158%_)
        (let ((_%thunk107161%_ _%thunk107157%_))
          (let* ((_%error-port107170%_ _%error-port107158%_)
                 (__tmp107540
                  (let ((_%E107179%_ (current-exception-handler)))
                    (lambda (_%exn107181%_)
                      (let ((__tmp107541
                             (lambda (_%cont107183%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont107183%_
                                      _%exn107181%_
                                      _%error-port107170%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E107179%_ _%exn107181%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp107541))))))
            (declare (not safe))
            (__with-exception-handler __tmp107540 _%thunk107161%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107188%_)
        (let ((_%error-port107190%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk107188%_
           _%error-port107190%_))))
    (define __with-exception-stack-trace
      (lambda _g107543_
        (let ((_g107542_ (let () (declare (not safe)) (##length _g107543_))))
          (cond ((let () (declare (not safe)) (##fx= _g107542_ 1))
                 (apply (lambda (_%thunk107188%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk107188%_)))
                        _g107543_))
                ((let () (declare (not safe)) (##fx= _g107542_ 2))
                 (apply (lambda (_%thunk107192%_ _%error-port107193%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk107192%_
                             _%error-port107193%_)))
                        _g107543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107543_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107138%_ _%exn107139%_ _%error-port107140%_)
        (let ((_%out107142%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107142%_))
          (display '"*** Unhandled exception in " _%out107142%_)
          (display (current-thread) _%out107142%_)
          (newline _%out107142%_)
          (display-exception _%exn107139%_ _%out107142%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107139%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107142%_)
                (newline _%out107142%_)
                (display-continuation-backtrace _%cont107138%_ _%out107142%_)))
          (let ((__tmp107544 (get-output-string _%out107142%_)))
            (declare (not safe))
            (##write-string __tmp107544 _%error-port107140%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107147%_ _%exn107148%_)
        (let ((_%error-port107150%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont107147%_
           _%exn107148%_
           _%error-port107150%_))))
    (define dump-stack-trace!
      (lambda _g107546_
        (let ((_g107545_ (let () (declare (not safe)) (##length _g107546_))))
          (cond ((let () (declare (not safe)) (##fx= _g107545_ 2))
                 (apply (lambda (_%cont107147%_ _%exn107148%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont107147%_
                             _%exn107148%_)))
                        _g107546_))
                ((let () (declare (not safe)) (##fx= _g107545_ 3))
                 (apply (lambda (_%cont107152%_
                                 _%exn107153%_
                                 _%error-port107154%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont107152%_
                             _%exn107153%_
                             _%error-port107154%_)))
                        _g107546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107546_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
