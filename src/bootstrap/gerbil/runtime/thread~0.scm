(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712251111)
  (begin
    (define spawn
      (lambda (_%f107501%_ . _%args107502%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107501%_))
              (let ((_%f107506%_ _%f107501%_))
                (declare (not safe))
                (##apply __spawn _%f107506%_ _%args107502%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f107501%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f107488%_ . _%args107489%_)
        (let ((_%f107492%_ _%f107488%_))
          (declare (not safe))
          (spawn-actor _%f107492%_ _%args107489%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107472%_ _%f107473%_ . _%args107474%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107473%_))
              (let ((_%f107478%_ _%f107473%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name107472%_
                         _%f107478%_
                         _%args107474%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f107473%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name107458%_ _%f107459%_ . _%args107460%_)
        (let ((_%f107463%_ _%f107459%_))
          (declare (not safe))
          (spawn-actor _%f107463%_ _%args107460%_ _%name107458%_ '#f))))
    (define spawn/group
      (lambda (_%name107442%_ _%f107443%_ . _%args107444%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f107443%_))
              (let ((_%f107448%_ _%f107443%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name107442%_
                         _%f107448%_
                         _%args107444%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f107443%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name107426%_ _%f107427%_ . _%args107428%_)
        (let ()
          (let* ((_%f107431%_ _%f107427%_)
                 (_%tgroup107440%_ (make-thread-group _%name107426%_)))
            (declare (not safe))
            (spawn-actor
             _%f107431%_
             _%args107428%_
             _%name107426%_
             _%tgroup107440%_)))))
    (define spawn-actor
      (lambda (_%f107398%_ _%args107399%_ _%name107400%_ _%tgroup107401%_)
        (let ()
          (letrec ((_%thread-main107404%_
                    (lambda (_%thunk107418%_)
                      (lambda ()
                        (let ((__tmp107516
                               (lambda (_%exn107421%_)
                                 (let ((__tmp107517
                                        (lambda (_%cont107423%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107518
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont107423%_
                                                        _%exn107421%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107518))
                                              '#!void)
                                          (let ((__tmp107519
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont107423%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107519
                                             ##primordial-exception-handler
                                             _%exn107421%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107517)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107516
                           _%thunk107418%_))))))
            (let* ((_%thunk107407%_
                    (if (let () (declare (not safe)) (null? _%args107399%_))
                        _%f107398%_
                        (lambda () (apply _%f107398%_ _%args107399%_))))
                   (_%thunk107410%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk107407%_))))
                   (_%tgroup107415%_
                    (let ((_%$e107412%_ _%tgroup107401%_))
                      (if _%$e107412%_
                          _%$e107412%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main107404%_ _%thunk107410%_))
                _%name107400%_
                _%tgroup107415%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk107376%_ _%name107377%_ _%tgroup107378%_)
        (thread-start!
         (make-thread _%thunk107376%_ _%name107377%_ _%tgroup107378%_))))
    (define spawn-thread__0
      (lambda (_%thunk107383%_)
        (let* ((_%name107385%_ absent-obj) (_%tgroup107387%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107383%_ _%name107385%_ _%tgroup107387%_))))
    (define spawn-thread__1
      (lambda (_%thunk107389%_ _%name107390%_)
        (let ((_%tgroup107392%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk107389%_ _%name107390%_ _%tgroup107392%_))))
    (define spawn-thread
      (lambda _g107521_
        (let ((_g107520_ (let () (declare (not safe)) (##length _g107521_))))
          (cond ((let () (declare (not safe)) (##fx= _g107520_ 1))
                 (apply (lambda (_%thunk107383%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk107383%_)))
                        _g107521_))
                ((let () (declare (not safe)) (##fx= _g107520_ 2))
                 (apply (lambda (_%thunk107389%_ _%name107390%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk107389%_ _%name107390%_)))
                        _g107521_))
                ((let () (declare (not safe)) (##fx= _g107520_ 3))
                 (apply (lambda (_%thunk107394%_
                                 _%name107395%_
                                 _%tgroup107396%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk107394%_
                             _%name107395%_
                             _%tgroup107396%_)))
                        _g107521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107521_))))))
    (define thread-local-ref__%
      (lambda (_%key107360%_ _%default107361%_)
        (let ((_%tab107363%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab107363%_ _%key107360%_ _%default107361%_))))
    (define thread-local-ref__0
      (lambda (_%key107368%_)
        (let ((_%default107370%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key107368%_ _%default107370%_))))
    (define thread-local-ref
      (lambda _g107523_
        (let ((_g107522_ (let () (declare (not safe)) (##length _g107523_))))
          (cond ((let () (declare (not safe)) (##fx= _g107522_ 1))
                 (apply (lambda (_%key107368%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key107368%_)))
                        _g107523_))
                ((let () (declare (not safe)) (##fx= _g107522_ 2))
                 (apply (lambda (_%key107372%_ _%default107373%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key107372%_
                             _%default107373%_)))
                        _g107523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107523_))))))
    (define thread-local-get
      (lambda (_%key107357%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key107357%_ '#f))))
    (define thread-local-set!
      (lambda (_%key107352%_ _%value107353%_)
        (let ((_%tab107355%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab107355%_ _%key107352%_ _%value107353%_))))
    (define thread-local-delete!
      (lambda (_%key107348%_)
        (let ((_%tab107350%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab107350%_ _%key107348%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107329%_ (current-thread)))
          (if (actor-thread? _%thr107329%_)
              (let ((_%$e107332%_ (actor-thread-locals _%thr107329%_)))
                (if _%$e107332%_
                    (values _%$e107332%_)
                    (let ((_%tab107336%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107329%_ _%tab107336%_)
                      _%tab107336%_)))
              (if (eq? _%thr107329%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107340%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107329%_))))
                      (if _%$e107340%_
                          ((lambda (_%tab107343%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107343%_)
                           _%$e107340%_)
                          (let ((_%tab107346%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107329%_
                               _%tab107346%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107346%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107326%_)
        (if (let () (declare (not safe)) (procedure? _%proc107326%_))
            '#!void
            (let ((__tmp107524
                   (let ((__obj107515
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107515
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc107326%_ '()))
                     __obj107515)))
              (declare (not safe))
              (raise __tmp107524)))
        (set! __unhandled-actor-exception-hook _%proc107326%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107300%_ _%proc107301%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107300%_))
              (let ((_%mx107305%_ _%mx107300%_))
                (if (let () (declare (not safe)) (procedure? _%proc107301%_))
                    (let ((_%proc107315%_ _%proc107301%_))
                      (declare (not safe))
                      (__with-lock _%mx107305%_ _%proc107315%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107301%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107300%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx107271%_ _%proc107272%_)
        (let ((_%mx107275%_ _%mx107271%_))
          (let* ((_%proc107283%_ _%proc107272%_)
                 (_%handler107292%_ (current-exception-handler)))
            (let ((__tmp107526
                   (lambda (_%e107294%_)
                     (let ((__tmp107527
                            (lambda ()
                              (mutex-unlock! _%mx107275%_)
                              (let ()
                                (declare (not safe))
                                (_%handler107292%_ _%e107294%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp107527))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e107294%_))))
                  (__tmp107525
                   (lambda ()
                     (mutex-lock! _%mx107275%_)
                     (let ((_%result107298%_
                            (let () (declare (not safe)) (_%proc107283%_))))
                       (mutex-unlock! _%mx107275%_)
                       _%result107298%_))))
              (declare (not safe))
              (__with-exception-handler __tmp107526 __tmp107525))))))
    (define with-dynamic-lock
      (lambda (_%mx107246%_ _%proc107247%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx107246%_))
              (let ((_%mx107251%_ _%mx107246%_))
                (if (let () (declare (not safe)) (procedure? _%proc107247%_))
                    (let ((_%proc107261%_ _%proc107247%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx107251%_ _%proc107261%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc107247%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx107246%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx107223%_ _%proc107224%_)
        (let ()
          (let* ((_%mx107227%_ _%mx107223%_) (_%proc107235%_ _%proc107224%_))
            (let ((__tmp107529 (lambda () (mutex-lock! _%mx107227%_)))
                  (__tmp107528 (lambda () (mutex-unlock! _%mx107227%_))))
              (declare (not safe))
              (##dynamic-wind __tmp107529 _%proc107235%_ __tmp107528))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107188%_ _%error-port107189%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk107188%_))
              (let ((_%thunk107193%_ _%thunk107188%_))
                (if (let () (declare (not safe)) (port? _%error-port107189%_))
                    (let ((_%error-port107203%_ _%error-port107189%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk107193%_
                       _%error-port107203%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port107189%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk107188%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107216%_)
        (let ((_%error-port107218%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk107216%_
           _%error-port107218%_))))
    (define with-exception-stack-trace
      (lambda _g107531_
        (let ((_g107530_ (let () (declare (not safe)) (##length _g107531_))))
          (cond ((let () (declare (not safe)) (##fx= _g107530_ 1))
                 (apply (lambda (_%thunk107216%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk107216%_)))
                        _g107531_))
                ((let () (declare (not safe)) (##fx= _g107530_ 2))
                 (apply (lambda (_%thunk107220%_ _%error-port107221%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk107220%_
                             _%error-port107221%_)))
                        _g107531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107531_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107149%_ _%error-port107150%_)
        (let ((_%thunk107153%_ _%thunk107149%_))
          (let* ((_%error-port107162%_ _%error-port107150%_)
                 (__tmp107532
                  (let ((_%E107171%_ (current-exception-handler)))
                    (lambda (_%exn107173%_)
                      (let ((__tmp107533
                             (lambda (_%cont107175%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont107175%_
                                      _%exn107173%_
                                      _%error-port107162%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E107171%_ _%exn107173%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp107533))))))
            (declare (not safe))
            (__with-exception-handler __tmp107532 _%thunk107153%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107180%_)
        (let ((_%error-port107182%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk107180%_
           _%error-port107182%_))))
    (define __with-exception-stack-trace
      (lambda _g107535_
        (let ((_g107534_ (let () (declare (not safe)) (##length _g107535_))))
          (cond ((let () (declare (not safe)) (##fx= _g107534_ 1))
                 (apply (lambda (_%thunk107180%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk107180%_)))
                        _g107535_))
                ((let () (declare (not safe)) (##fx= _g107534_ 2))
                 (apply (lambda (_%thunk107184%_ _%error-port107185%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk107184%_
                             _%error-port107185%_)))
                        _g107535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107535_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107130%_ _%exn107131%_ _%error-port107132%_)
        (let ((_%out107134%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107134%_))
          (display '"*** Unhandled exception in " _%out107134%_)
          (display (current-thread) _%out107134%_)
          (newline _%out107134%_)
          (display-exception _%exn107131%_ _%out107134%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107131%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107134%_)
                (newline _%out107134%_)
                (display-continuation-backtrace _%cont107130%_ _%out107134%_)))
          (let ((__tmp107536 (get-output-string _%out107134%_)))
            (declare (not safe))
            (##write-string __tmp107536 _%error-port107132%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107139%_ _%exn107140%_)
        (let ((_%error-port107142%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont107139%_
           _%exn107140%_
           _%error-port107142%_))))
    (define dump-stack-trace!
      (lambda _g107538_
        (let ((_g107537_ (let () (declare (not safe)) (##length _g107538_))))
          (cond ((let () (declare (not safe)) (##fx= _g107537_ 2))
                 (apply (lambda (_%cont107139%_ _%exn107140%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont107139%_
                             _%exn107140%_)))
                        _g107538_))
                ((let () (declare (not safe)) (##fx= _g107537_ 3))
                 (apply (lambda (_%cont107144%_
                                 _%exn107145%_
                                 _%error-port107146%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont107144%_
                             _%exn107145%_
                             _%error-port107146%_)))
                        _g107538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107538_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
