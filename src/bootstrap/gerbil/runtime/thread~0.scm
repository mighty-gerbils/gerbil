(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712269045)
  (begin
    (define spawn
      (lambda (_%f107435%_ . _%args107436%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107435%_))
              (let ((_%f107440%_ _%f107435%_))
                (declare (not safe))
                (##apply __spawn _%f107440%_ _%args107436%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f107435%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f107422%_ . _%args107423%_)
        (let ((_%f107426%_ _%f107422%_))
          (declare (not safe))
          (spawn-actor _%f107426%_ _%args107423%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107406%_ _%f107407%_ . _%args107408%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107407%_))
              (let ((_%f107412%_ _%f107407%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name107406%_
                         _%f107412%_
                         _%args107408%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f107407%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name107392%_ _%f107393%_ . _%args107394%_)
        (let ((_%f107397%_ _%f107393%_))
          (declare (not safe))
          (spawn-actor _%f107397%_ _%args107394%_ _%name107392%_ '#f))))
    (define spawn/group
      (lambda (_%name107376%_ _%f107377%_ . _%args107378%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107377%_))
              (let ((_%f107382%_ _%f107377%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name107376%_
                         _%f107382%_
                         _%args107378%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f107377%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name107360%_ _%f107361%_ . _%args107362%_)
        (let ()
          (let* ((_%f107365%_ _%f107361%_)
                 (_%tgroup107374%_ (make-thread-group _%name107360%_)))
            (declare (not safe))
            (spawn-actor
             _%f107365%_
             _%args107362%_
             _%name107360%_
             _%tgroup107374%_)))))
    (define spawn-actor
      (lambda (_%f107332%_ _%args107333%_ _%name107334%_ _%tgroup107335%_)
        (let ()
          (letrec ((_%thread-main107338%_
                    (lambda (_%thunk107352%_)
                      (lambda ()
                        (let ((__tmp107450
                               (lambda (_%exn107355%_)
                                 (let ((__tmp107451
                                        (lambda (_%cont107357%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107452
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont107357%_
                                                        _%exn107355%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107452))
                                              '#!void)
                                          (let ((__tmp107453
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont107357%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107453
                                             ##primordial-exception-handler
                                             _%exn107355%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107451)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107450
                           _%thunk107352%_))))))
            (let* ((_%thunk107341%_
                    (if (let () (declare (not safe)) (null? _%args107333%_))
                        _%f107332%_
                        (lambda () (apply _%f107332%_ _%args107333%_))))
                   (_%thunk107344%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk107341%_))))
                   (_%tgroup107349%_
                    (let ((_%$e107346%_ _%tgroup107335%_))
                      (if _%$e107346%_
                          _%$e107346%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main107338%_ _%thunk107344%_))
                _%name107334%_
                _%tgroup107349%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk107310%_ _%name107311%_ _%tgroup107312%_)
        (thread-start!
         (make-thread _%thunk107310%_ _%name107311%_ _%tgroup107312%_))))
    (define spawn-thread__0
      (lambda (_%thunk107317%_)
        (let* ((_%name107319%_ absent-obj) (_%tgroup107321%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107317%_ _%name107319%_ _%tgroup107321%_))))
    (define spawn-thread__1
      (lambda (_%thunk107323%_ _%name107324%_)
        (let ((_%tgroup107326%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107323%_ _%name107324%_ _%tgroup107326%_))))
    (define spawn-thread
      (lambda _g107455_
        (let ((_g107454_ (let () (declare (not safe)) (##length _g107455_))))
          (cond ((let () (declare (not safe)) (##fx= _g107454_ 1))
                 (apply (lambda (_%thunk107317%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk107317%_)))
                        _g107455_))
                ((let () (declare (not safe)) (##fx= _g107454_ 2))
                 (apply (lambda (_%thunk107323%_ _%name107324%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk107323%_ _%name107324%_)))
                        _g107455_))
                ((let () (declare (not safe)) (##fx= _g107454_ 3))
                 (apply (lambda (_%thunk107328%_
                                 _%name107329%_
                                 _%tgroup107330%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk107328%_
                             _%name107329%_
                             _%tgroup107330%_)))
                        _g107455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107455_))))))
    (define thread-local-ref__%
      (lambda (_%key107294%_ _%default107295%_)
        (let ((_%tab107297%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab107297%_ _%key107294%_ _%default107295%_))))
    (define thread-local-ref__0
      (lambda (_%key107302%_)
        (let ((_%default107304%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key107302%_ _%default107304%_))))
    (define thread-local-ref
      (lambda _g107457_
        (let ((_g107456_ (let () (declare (not safe)) (##length _g107457_))))
          (cond ((let () (declare (not safe)) (##fx= _g107456_ 1))
                 (apply (lambda (_%key107302%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key107302%_)))
                        _g107457_))
                ((let () (declare (not safe)) (##fx= _g107456_ 2))
                 (apply (lambda (_%key107306%_ _%default107307%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key107306%_
                             _%default107307%_)))
                        _g107457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107457_))))))
    (define thread-local-get
      (lambda (_%key107291%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key107291%_ '#f))))
    (define thread-local-set!
      (lambda (_%key107286%_ _%value107287%_)
        (let ((_%tab107289%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab107289%_ _%key107286%_ _%value107287%_))))
    (define thread-local-delete!
      (lambda (_%key107282%_)
        (let ((_%tab107284%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab107284%_ _%key107282%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107263%_ (current-thread)))
          (if (actor-thread? _%thr107263%_)
              (let ((_%$e107266%_ (actor-thread-locals _%thr107263%_)))
                (if _%$e107266%_
                    (values _%$e107266%_)
                    (let ((_%tab107270%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107263%_ _%tab107270%_)
                      _%tab107270%_)))
              (if (eq? _%thr107263%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107274%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107263%_))))
                      (if _%$e107274%_
                          ((lambda (_%tab107277%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107277%_)
                           _%$e107274%_)
                          (let ((_%tab107280%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107263%_
                               _%tab107280%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107280%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107260%_)
        (if (let () (declare (not safe)) (procedure? _%proc107260%_))
            '#!void
            (let ((__tmp107458
                   (let ((__obj107449
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107449
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc107260%_ '()))
                     __obj107449)))
              (declare (not safe))
              (raise __tmp107458)))
        (set! __unhandled-actor-exception-hook _%proc107260%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107234%_ _%proc107235%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107234%_))
              (let ((_%mx107239%_ _%mx107234%_))
                (if (let () (declare (not safe)) (procedure? _%proc107235%_))
                    (let ((_%proc107249%_ _%proc107235%_))
                      (declare (not safe))
                      (__with-lock _%mx107239%_ _%proc107249%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107235%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107234%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx107205%_ _%proc107206%_)
        (let ((_%mx107209%_ _%mx107205%_))
          (let* ((_%proc107217%_ _%proc107206%_)
                 (_%handler107226%_ (current-exception-handler)))
            (let ((__tmp107460
                   (lambda (_%e107228%_)
                     (let ((__tmp107461
                            (lambda ()
                              (mutex-unlock! _%mx107209%_)
                              (let ()
                                (declare (not safe))
                                (_%handler107226%_ _%e107228%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp107461))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e107228%_))))
                  (__tmp107459
                   (lambda ()
                     (mutex-lock! _%mx107209%_)
                     (let ((_%result107232%_
                            (let () (declare (not safe)) (_%proc107217%_))))
                       (mutex-unlock! _%mx107209%_)
                       _%result107232%_))))
              (declare (not safe))
              (__with-exception-handler __tmp107460 __tmp107459))))))
    (define with-dynamic-lock
      (lambda (_%mx107180%_ _%proc107181%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107180%_))
              (let ((_%mx107185%_ _%mx107180%_))
                (if (let () (declare (not safe)) (procedure? _%proc107181%_))
                    (let ((_%proc107195%_ _%proc107181%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx107185%_ _%proc107195%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107181%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107180%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx107157%_ _%proc107158%_)
        (let ()
          (let* ((_%mx107161%_ _%mx107157%_) (_%proc107169%_ _%proc107158%_))
            (let ((__tmp107463 (lambda () (mutex-lock! _%mx107161%_)))
                  (__tmp107462 (lambda () (mutex-unlock! _%mx107161%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107463 _%proc107169%_ __tmp107462))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107122%_ _%error-port107123%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk107122%_))
              (let ((_%thunk107127%_ _%thunk107122%_))
                (if (let () (declare (not safe)) (port? _%error-port107123%_))
                    (let ((_%error-port107137%_ _%error-port107123%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk107127%_
                       _%error-port107137%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port107123%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk107122%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107150%_)
        (let ((_%error-port107152%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk107150%_
           _%error-port107152%_))))
    (define with-exception-stack-trace
      (lambda _g107465_
        (let ((_g107464_ (let () (declare (not safe)) (##length _g107465_))))
          (cond ((let () (declare (not safe)) (##fx= _g107464_ 1))
                 (apply (lambda (_%thunk107150%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk107150%_)))
                        _g107465_))
                ((let () (declare (not safe)) (##fx= _g107464_ 2))
                 (apply (lambda (_%thunk107154%_ _%error-port107155%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk107154%_
                             _%error-port107155%_)))
                        _g107465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107465_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107083%_ _%error-port107084%_)
        (let ((_%thunk107087%_ _%thunk107083%_))
          (let* ((_%error-port107096%_ _%error-port107084%_)
                 (__tmp107466
                  (let ((_%E107105%_ (current-exception-handler)))
                    (lambda (_%exn107107%_)
                      (let ((__tmp107467
                             (lambda (_%cont107109%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont107109%_
                                      _%exn107107%_
                                      _%error-port107096%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E107105%_ _%exn107107%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp107467))))))
            (declare (not safe))
            (__with-exception-handler __tmp107466 _%thunk107087%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107114%_)
        (let ((_%error-port107116%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk107114%_
           _%error-port107116%_))))
    (define __with-exception-stack-trace
      (lambda _g107469_
        (let ((_g107468_ (let () (declare (not safe)) (##length _g107469_))))
          (cond ((let () (declare (not safe)) (##fx= _g107468_ 1))
                 (apply (lambda (_%thunk107114%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk107114%_)))
                        _g107469_))
                ((let () (declare (not safe)) (##fx= _g107468_ 2))
                 (apply (lambda (_%thunk107118%_ _%error-port107119%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk107118%_
                             _%error-port107119%_)))
                        _g107469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107469_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107064%_ _%exn107065%_ _%error-port107066%_)
        (let ((_%out107068%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107068%_))
          (display '"*** Unhandled exception in " _%out107068%_)
          (display (current-thread) _%out107068%_)
          (newline _%out107068%_)
          (display-exception _%exn107065%_ _%out107068%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107065%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107068%_)
                (newline _%out107068%_)
                (display-continuation-backtrace _%cont107064%_ _%out107068%_)))
          (let ((__tmp107470 (get-output-string _%out107068%_)))
            (declare (not safe))
            (##write-string __tmp107470 _%error-port107066%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107073%_ _%exn107074%_)
        (let ((_%error-port107076%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont107073%_
           _%exn107074%_
           _%error-port107076%_))))
    (define dump-stack-trace!
      (lambda _g107472_
        (let ((_g107471_ (let () (declare (not safe)) (##length _g107472_))))
          (cond ((let () (declare (not safe)) (##fx= _g107471_ 2))
                 (apply (lambda (_%cont107073%_ _%exn107074%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont107073%_
                             _%exn107074%_)))
                        _g107472_))
                ((let () (declare (not safe)) (##fx= _g107471_ 3))
                 (apply (lambda (_%cont107078%_
                                 _%exn107079%_
                                 _%error-port107080%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont107078%_
                             _%exn107079%_
                             _%error-port107080%_)))
                        _g107472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107472_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
