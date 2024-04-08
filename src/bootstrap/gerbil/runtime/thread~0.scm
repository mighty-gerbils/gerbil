(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712533289)
  (begin
    (define spawn
      (lambda (_%f107436%_ . _%args107437%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107436%_))
              (let ((_%f107441%_ _%f107436%_))
                (declare (not safe))
                (##apply __spawn _%f107441%_ _%args107437%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f107436%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f107423%_ . _%args107424%_)
        (let ((_%f107427%_ _%f107423%_))
          (declare (not safe))
          (spawn-actor _%f107427%_ _%args107424%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107407%_ _%f107408%_ . _%args107409%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107408%_))
              (let ((_%f107413%_ _%f107408%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name107407%_
                         _%f107413%_
                         _%args107409%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f107408%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name107393%_ _%f107394%_ . _%args107395%_)
        (let ((_%f107398%_ _%f107394%_))
          (declare (not safe))
          (spawn-actor _%f107398%_ _%args107395%_ _%name107393%_ '#f))))
    (define spawn/group
      (lambda (_%name107377%_ _%f107378%_ . _%args107379%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107378%_))
              (let ((_%f107383%_ _%f107378%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name107377%_
                         _%f107383%_
                         _%args107379%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f107378%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name107361%_ _%f107362%_ . _%args107363%_)
        (let ()
          (let* ((_%f107366%_ _%f107362%_)
                 (_%tgroup107375%_ (make-thread-group _%name107361%_)))
            (declare (not safe))
            (spawn-actor
             _%f107366%_
             _%args107363%_
             _%name107361%_
             _%tgroup107375%_)))))
    (define spawn-actor
      (lambda (_%f107333%_ _%args107334%_ _%name107335%_ _%tgroup107336%_)
        (let ()
          (letrec ((_%thread-main107339%_
                    (lambda (_%thunk107353%_)
                      (lambda ()
                        (let ((__tmp107451
                               (lambda (_%exn107356%_)
                                 (let ((__tmp107452
                                        (lambda (_%cont107358%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107453
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont107358%_
                                                        _%exn107356%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107453))
                                              '#!void)
                                          (let ((__tmp107454
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont107358%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107454
                                             ##primordial-exception-handler
                                             _%exn107356%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107452)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107451
                           _%thunk107353%_))))))
            (let* ((_%thunk107342%_
                    (if (let () (declare (not safe)) (null? _%args107334%_))
                        _%f107333%_
                        (lambda () (apply _%f107333%_ _%args107334%_))))
                   (_%thunk107345%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk107342%_))))
                   (_%tgroup107350%_
                    (let ((_%$e107347%_ _%tgroup107336%_))
                      (if _%$e107347%_
                          _%$e107347%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main107339%_ _%thunk107345%_))
                _%name107335%_
                _%tgroup107350%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk107311%_ _%name107312%_ _%tgroup107313%_)
        (thread-start!
         (make-thread _%thunk107311%_ _%name107312%_ _%tgroup107313%_))))
    (define spawn-thread__0
      (lambda (_%thunk107318%_)
        (let* ((_%name107320%_ absent-obj) (_%tgroup107322%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107318%_ _%name107320%_ _%tgroup107322%_))))
    (define spawn-thread__1
      (lambda (_%thunk107324%_ _%name107325%_)
        (let ((_%tgroup107327%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107324%_ _%name107325%_ _%tgroup107327%_))))
    (define spawn-thread
      (lambda _g107456_
        (let ((_g107455_ (let () (declare (not safe)) (##length _g107456_))))
          (cond ((let () (declare (not safe)) (##fx= _g107455_ 1))
                 (apply (lambda (_%thunk107318%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk107318%_)))
                        _g107456_))
                ((let () (declare (not safe)) (##fx= _g107455_ 2))
                 (apply (lambda (_%thunk107324%_ _%name107325%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk107324%_ _%name107325%_)))
                        _g107456_))
                ((let () (declare (not safe)) (##fx= _g107455_ 3))
                 (apply (lambda (_%thunk107329%_
                                 _%name107330%_
                                 _%tgroup107331%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk107329%_
                             _%name107330%_
                             _%tgroup107331%_)))
                        _g107456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107456_))))))
    (define thread-local-ref__%
      (lambda (_%key107295%_ _%default107296%_)
        (let ((_%tab107298%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab107298%_ _%key107295%_ _%default107296%_))))
    (define thread-local-ref__0
      (lambda (_%key107303%_)
        (let ((_%default107305%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key107303%_ _%default107305%_))))
    (define thread-local-ref
      (lambda _g107458_
        (let ((_g107457_ (let () (declare (not safe)) (##length _g107458_))))
          (cond ((let () (declare (not safe)) (##fx= _g107457_ 1))
                 (apply (lambda (_%key107303%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key107303%_)))
                        _g107458_))
                ((let () (declare (not safe)) (##fx= _g107457_ 2))
                 (apply (lambda (_%key107307%_ _%default107308%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key107307%_
                             _%default107308%_)))
                        _g107458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107458_))))))
    (define thread-local-get
      (lambda (_%key107292%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key107292%_ '#f))))
    (define thread-local-set!
      (lambda (_%key107287%_ _%value107288%_)
        (let ((_%tab107290%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab107290%_ _%key107287%_ _%value107288%_))))
    (define thread-local-delete!
      (lambda (_%key107283%_)
        (let ((_%tab107285%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab107285%_ _%key107283%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107264%_ (current-thread)))
          (if (actor-thread? _%thr107264%_)
              (let ((_%$e107267%_ (actor-thread-locals _%thr107264%_)))
                (if _%$e107267%_
                    (values _%$e107267%_)
                    (let ((_%tab107271%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107264%_ _%tab107271%_)
                      _%tab107271%_)))
              (if (eq? _%thr107264%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107275%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107264%_))))
                      (if _%$e107275%_
                          ((lambda (_%tab107278%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107278%_)
                           _%$e107275%_)
                          (let ((_%tab107281%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107264%_
                               _%tab107281%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107281%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107261%_)
        (if (let () (declare (not safe)) (procedure? _%proc107261%_))
            '#!void
            (let ((__tmp107459
                   (let ((__obj107450
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107450
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc107261%_ '()))
                     __obj107450)))
              (declare (not safe))
              (raise __tmp107459)))
        (set! __unhandled-actor-exception-hook _%proc107261%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107235%_ _%proc107236%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107235%_))
              (let ((_%mx107240%_ _%mx107235%_))
                (if (let () (declare (not safe)) (procedure? _%proc107236%_))
                    (let ((_%proc107250%_ _%proc107236%_))
                      (declare (not safe))
                      (__with-lock _%mx107240%_ _%proc107250%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107236%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107235%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx107206%_ _%proc107207%_)
        (let ((_%mx107210%_ _%mx107206%_))
          (let* ((_%proc107218%_ _%proc107207%_)
                 (_%handler107227%_ (current-exception-handler)))
            (let ((__tmp107461
                   (lambda (_%e107229%_)
                     (let ((__tmp107462
                            (lambda ()
                              (mutex-unlock! _%mx107210%_)
                              (let ()
                                (declare (not safe))
                                (_%handler107227%_ _%e107229%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp107462))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e107229%_))))
                  (__tmp107460
                   (lambda ()
                     (mutex-lock! _%mx107210%_)
                     (let ((_%result107233%_
                            (let () (declare (not safe)) (_%proc107218%_))))
                       (mutex-unlock! _%mx107210%_)
                       _%result107233%_))))
              (declare (not safe))
              (__with-exception-handler __tmp107461 __tmp107460))))))
    (define with-dynamic-lock
      (lambda (_%mx107181%_ _%proc107182%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107181%_))
              (let ((_%mx107186%_ _%mx107181%_))
                (if (let () (declare (not safe)) (procedure? _%proc107182%_))
                    (let ((_%proc107196%_ _%proc107182%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx107186%_ _%proc107196%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107182%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107181%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx107158%_ _%proc107159%_)
        (let ()
          (let* ((_%mx107162%_ _%mx107158%_) (_%proc107170%_ _%proc107159%_))
            (let ((__tmp107464 (lambda () (mutex-lock! _%mx107162%_)))
                  (__tmp107463 (lambda () (mutex-unlock! _%mx107162%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107464 _%proc107170%_ __tmp107463))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107123%_ _%error-port107124%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk107123%_))
              (let ((_%thunk107128%_ _%thunk107123%_))
                (if (let () (declare (not safe)) (port? _%error-port107124%_))
                    (let ((_%error-port107138%_ _%error-port107124%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk107128%_
                       _%error-port107138%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port107124%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk107123%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107151%_)
        (let ((_%error-port107153%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk107151%_
           _%error-port107153%_))))
    (define with-exception-stack-trace
      (lambda _g107466_
        (let ((_g107465_ (let () (declare (not safe)) (##length _g107466_))))
          (cond ((let () (declare (not safe)) (##fx= _g107465_ 1))
                 (apply (lambda (_%thunk107151%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk107151%_)))
                        _g107466_))
                ((let () (declare (not safe)) (##fx= _g107465_ 2))
                 (apply (lambda (_%thunk107155%_ _%error-port107156%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk107155%_
                             _%error-port107156%_)))
                        _g107466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107466_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107084%_ _%error-port107085%_)
        (let ((_%thunk107088%_ _%thunk107084%_))
          (let* ((_%error-port107097%_ _%error-port107085%_)
                 (__tmp107467
                  (let ((_%E107106%_ (current-exception-handler)))
                    (lambda (_%exn107108%_)
                      (let ((__tmp107468
                             (lambda (_%cont107110%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont107110%_
                                      _%exn107108%_
                                      _%error-port107097%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E107106%_ _%exn107108%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp107468))))))
            (declare (not safe))
            (__with-exception-handler __tmp107467 _%thunk107088%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107115%_)
        (let ((_%error-port107117%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk107115%_
           _%error-port107117%_))))
    (define __with-exception-stack-trace
      (lambda _g107470_
        (let ((_g107469_ (let () (declare (not safe)) (##length _g107470_))))
          (cond ((let () (declare (not safe)) (##fx= _g107469_ 1))
                 (apply (lambda (_%thunk107115%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk107115%_)))
                        _g107470_))
                ((let () (declare (not safe)) (##fx= _g107469_ 2))
                 (apply (lambda (_%thunk107119%_ _%error-port107120%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk107119%_
                             _%error-port107120%_)))
                        _g107470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107470_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107065%_ _%exn107066%_ _%error-port107067%_)
        (let ((_%out107069%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107069%_))
          (display '"*** Unhandled exception in " _%out107069%_)
          (display (current-thread) _%out107069%_)
          (newline _%out107069%_)
          (display-exception _%exn107066%_ _%out107069%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107066%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107069%_)
                (newline _%out107069%_)
                (display-continuation-backtrace _%cont107065%_ _%out107069%_)))
          (let ((__tmp107471 (get-output-string _%out107069%_)))
            (declare (not safe))
            (##write-string __tmp107471 _%error-port107067%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107074%_ _%exn107075%_)
        (let ((_%error-port107077%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont107074%_
           _%exn107075%_
           _%error-port107077%_))))
    (define dump-stack-trace!
      (lambda _g107473_
        (let ((_g107472_ (let () (declare (not safe)) (##length _g107473_))))
          (cond ((let () (declare (not safe)) (##fx= _g107472_ 2))
                 (apply (lambda (_%cont107074%_ _%exn107075%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont107074%_
                             _%exn107075%_)))
                        _g107473_))
                ((let () (declare (not safe)) (##fx= _g107472_ 3))
                 (apply (lambda (_%cont107079%_
                                 _%exn107080%_
                                 _%error-port107081%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont107079%_
                             _%exn107080%_
                             _%error-port107081%_)))
                        _g107473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107473_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
