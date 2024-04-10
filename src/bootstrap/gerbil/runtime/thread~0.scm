(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712773524)
  (begin
    (define spawn
      (lambda (_%f107588%_ . _%args107589%_)
        (if (procedure? _%f107588%_)
            (let ((_%f107593%_ _%f107588%_))
              (declare (not safe))
              (##apply __spawn _%f107593%_ _%args107589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f107588%_)
              '#!void))))
    (define __spawn
      (lambda (_%f107575%_ . _%args107576%_)
        (let ((_%f107579%_ _%f107575%_))
          (spawn-actor _%f107579%_ _%args107576%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107559%_ _%f107560%_ . _%args107561%_)
        (if (procedure? _%f107560%_)
            (let ((_%f107565%_ _%f107560%_))
              (declare (not safe))
              (##apply __spawn/name _%name107559%_ _%f107565%_ _%args107561%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f107560%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name107545%_ _%f107546%_ . _%args107547%_)
        (let ((_%f107550%_ _%f107546%_))
          (spawn-actor _%f107550%_ _%args107547%_ _%name107545%_ '#f))))
    (define spawn/group
      (lambda (_%name107529%_ _%f107530%_ . _%args107531%_)
        (if (procedure? _%f107530%_)
            (let ((_%f107535%_ _%f107530%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name107529%_
                       _%f107535%_
                       _%args107531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f107530%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name107513%_ _%f107514%_ . _%args107515%_)
        (let* ((_%f107518%_ _%f107514%_)
               (_%tgroup107527%_ (make-thread-group _%name107513%_)))
          (spawn-actor
           _%f107518%_
           _%args107515%_
           _%name107513%_
           _%tgroup107527%_))))
    (define spawn-actor
      (lambda (_%f107485%_ _%args107486%_ _%name107487%_ _%tgroup107488%_)
        (letrec ((_%thread-main107491%_
                  (lambda (_%thunk107505%_)
                    (lambda ()
                      (let ((__tmp107602
                             (lambda (_%exn107508%_)
                               (let ((__tmp107603
                                      (lambda (_%cont107510%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp107604
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont107510%_
                                                      _%exn107508%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp107604))
                                            '#!void)
                                        (let ((__tmp107605
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont107510%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp107605
                                           ##primordial-exception-handler
                                           _%exn107508%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp107603)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp107602
                         _%thunk107505%_))))))
          (let* ((_%thunk107494%_
                  (if (null? _%args107486%_)
                      _%f107485%_
                      (lambda () (apply _%f107485%_ _%args107486%_))))
                 (_%thunk107497%_
                  (lambda () (with-exception-stack-trace__0 _%thunk107494%_)))
                 (_%tgroup107502%_
                  (let ((_%$e107499%_ _%tgroup107488%_))
                    (if _%$e107499%_ _%$e107499%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main107491%_ _%thunk107497%_)
              _%name107487%_
              _%tgroup107502%_))))))
    (define spawn-thread__%
      (lambda (_%thunk107463%_ _%name107464%_ _%tgroup107465%_)
        (thread-start!
         (make-thread _%thunk107463%_ _%name107464%_ _%tgroup107465%_))))
    (define spawn-thread__0
      (lambda (_%thunk107470%_)
        (let* ((_%name107472%_ absent-obj) (_%tgroup107474%_ absent-obj))
          (spawn-thread__% _%thunk107470%_ _%name107472%_ _%tgroup107474%_))))
    (define spawn-thread__1
      (lambda (_%thunk107476%_ _%name107477%_)
        (let ((_%tgroup107479%_ absent-obj))
          (spawn-thread__% _%thunk107476%_ _%name107477%_ _%tgroup107479%_))))
    (define spawn-thread
      (lambda _g107607_
        (let ((_g107606_ (let () (declare (not safe)) (##length _g107607_))))
          (cond ((let () (declare (not safe)) (##fx= _g107606_ 1))
                 (apply spawn-thread__0 _g107607_))
                ((let () (declare (not safe)) (##fx= _g107606_ 2))
                 (apply spawn-thread__1 _g107607_))
                ((let () (declare (not safe)) (##fx= _g107606_ 3))
                 (apply spawn-thread__% _g107607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107607_))))))
    (define thread-local-ref__%
      (lambda (_%key107447%_ _%default107448%_)
        (let ((_%tab107450%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab107450%_ _%key107447%_ _%default107448%_))))
    (define thread-local-ref__0
      (lambda (_%key107455%_)
        (let ((_%default107457%_ absent-obj))
          (thread-local-ref__% _%key107455%_ _%default107457%_))))
    (define thread-local-ref
      (lambda _g107609_
        (let ((_g107608_ (let () (declare (not safe)) (##length _g107609_))))
          (cond ((let () (declare (not safe)) (##fx= _g107608_ 1))
                 (apply thread-local-ref__0 _g107609_))
                ((let () (declare (not safe)) (##fx= _g107608_ 2))
                 (apply thread-local-ref__% _g107609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107609_))))))
    (define thread-local-get
      (lambda (_%key107444%_) (thread-local-ref__% _%key107444%_ '#f)))
    (define thread-local-set!
      (lambda (_%key107439%_ _%value107440%_)
        (let ((_%tab107442%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab107442%_ _%key107439%_ _%value107440%_))))
    (define thread-local-delete!
      (lambda (_%key107435%_)
        (let ((_%tab107437%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab107437%_ _%key107435%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107416%_ (current-thread)))
          (if (actor-thread? _%thr107416%_)
              (let ((_%$e107419%_ (actor-thread-locals _%thr107416%_)))
                (if _%$e107419%_
                    (values _%$e107419%_)
                    (let ((_%tab107423%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107416%_ _%tab107423%_)
                      _%tab107423%_)))
              (if (eq? _%thr107416%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107427%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107416%_))))
                      (if _%$e107427%_
                          ((lambda (_%tab107430%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107430%_)
                           _%$e107427%_)
                          (let ((_%tab107433%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107416%_
                               _%tab107433%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107433%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107401%_)
        (if (procedure? _%proc107401%_)
            (let ((_%proc107405%_ _%proc107401%_))
              (__unhandled-actor-exception-hook-set! _%proc107405%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc107401%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc107389%_)
        (let ((_%proc107392%_ _%proc107389%_))
          (set! __unhandled-actor-exception-hook _%proc107392%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107363%_ _%proc107364%_)
        (if (mutex? _%mx107363%_)
            (let ((_%mx107368%_ _%mx107363%_))
              (if (procedure? _%proc107364%_)
                  (let ((_%proc107378%_ _%proc107364%_))
                    (__with-lock _%mx107368%_ _%proc107378%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107364%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx107363%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx107334%_ _%proc107335%_)
        (let* ((_%mx107338%_ _%mx107334%_)
               (_%proc107346%_ _%proc107335%_)
               (_%handler107355%_ (current-exception-handler)))
          (let ((__tmp107611
                 (lambda (_%e107357%_)
                   (let ((__tmp107612
                          (lambda ()
                            (mutex-unlock! _%mx107338%_)
                            (let ()
                              (declare (not safe))
                              (_%handler107355%_ _%e107357%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp107612))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e107357%_))))
                (__tmp107610
                 (lambda ()
                   (mutex-lock! _%mx107338%_)
                   (let ((_%result107361%_
                          (let () (declare (not safe)) (_%proc107346%_))))
                     (mutex-unlock! _%mx107338%_)
                     _%result107361%_))))
            (declare (not safe))
            (__with-exception-handler __tmp107611 __tmp107610)))))
    (define with-dynamic-lock
      (lambda (_%mx107309%_ _%proc107310%_)
        (if (mutex? _%mx107309%_)
            (let ((_%mx107314%_ _%mx107309%_))
              (if (procedure? _%proc107310%_)
                  (let ((_%proc107324%_ _%proc107310%_))
                    (__with-dynamic-lock _%mx107314%_ _%proc107324%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107310%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx107309%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx107286%_ _%proc107287%_)
        (let* ((_%mx107290%_ _%mx107286%_) (_%proc107298%_ _%proc107287%_))
          (let ((__tmp107614 (lambda () (mutex-lock! _%mx107290%_)))
                (__tmp107613 (lambda () (mutex-unlock! _%mx107290%_))))
            (declare (not safe))
            (##dynamic-wind __tmp107614 _%proc107298%_ __tmp107613)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107251%_ _%error-port107252%_)
        (if (procedure? _%thunk107251%_)
            (let ((_%thunk107256%_ _%thunk107251%_))
              (if (port? _%error-port107252%_)
                  (let ((_%error-port107266%_ _%error-port107252%_))
                    (__with-exception-stack-trace__%
                     _%thunk107256%_
                     _%error-port107266%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port107252%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk107251%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107279%_)
        (let ((_%error-port107281%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk107279%_
           _%error-port107281%_))))
    (define with-exception-stack-trace
      (lambda _g107616_
        (let ((_g107615_ (let () (declare (not safe)) (##length _g107616_))))
          (cond ((let () (declare (not safe)) (##fx= _g107615_ 1))
                 (apply with-exception-stack-trace__0 _g107616_))
                ((let () (declare (not safe)) (##fx= _g107615_ 2))
                 (apply with-exception-stack-trace__% _g107616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107616_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107212%_ _%error-port107213%_)
        (let* ((_%thunk107216%_ _%thunk107212%_)
               (_%error-port107225%_ _%error-port107213%_)
               (__tmp107617
                (let ((_%E107234%_ (current-exception-handler)))
                  (lambda (_%exn107236%_)
                    (let ((__tmp107618
                           (lambda (_%cont107238%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont107238%_
                                  _%exn107236%_
                                  _%error-port107225%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E107234%_ _%exn107236%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp107618))))))
          (declare (not safe))
          (__with-exception-handler __tmp107617 _%thunk107216%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107243%_)
        (let ((_%error-port107245%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk107243%_
           _%error-port107245%_))))
    (define __with-exception-stack-trace
      (lambda _g107620_
        (let ((_g107619_ (let () (declare (not safe)) (##length _g107620_))))
          (cond ((let () (declare (not safe)) (##fx= _g107619_ 1))
                 (apply __with-exception-stack-trace__0 _g107620_))
                ((let () (declare (not safe)) (##fx= _g107619_ 2))
                 (apply __with-exception-stack-trace__% _g107620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107620_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107193%_ _%exn107194%_ _%error-port107195%_)
        (let ((_%out107197%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107197%_))
          (display '"*** Unhandled exception in " _%out107197%_)
          (display (current-thread) _%out107197%_)
          (newline _%out107197%_)
          (display-exception _%exn107194%_ _%out107197%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107194%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107197%_)
                (newline _%out107197%_)
                (display-continuation-backtrace _%cont107193%_ _%out107197%_)))
          (let ((__tmp107621 (get-output-string _%out107197%_)))
            (declare (not safe))
            (##write-string __tmp107621 _%error-port107195%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107202%_ _%exn107203%_)
        (let ((_%error-port107205%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont107202%_
           _%exn107203%_
           _%error-port107205%_))))
    (define dump-stack-trace!
      (lambda _g107623_
        (let ((_g107622_ (let () (declare (not safe)) (##length _g107623_))))
          (cond ((let () (declare (not safe)) (##fx= _g107622_ 2))
                 (apply dump-stack-trace!__0 _g107623_))
                ((let () (declare (not safe)) (##fx= _g107622_ 3))
                 (apply dump-stack-trace!__% _g107623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107623_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
