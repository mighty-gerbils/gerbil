(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734357961)
  (begin
    (define spawn
      (lambda (_%f111803%_ . _%args111804%_)
        (if (procedure? _%f111803%_)
            (let ((_%f111808%_ _%f111803%_))
              (declare (not safe))
              (##apply __spawn _%f111808%_ _%args111804%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111803%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111790%_ . _%args111791%_)
        (let ((_%f111794%_ _%f111790%_))
          (spawn-actor _%f111794%_ _%args111791%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111774%_ _%f111775%_ . _%args111776%_)
        (if (procedure? _%f111775%_)
            (let ((_%f111780%_ _%f111775%_))
              (declare (not safe))
              (##apply __spawn/name _%name111774%_ _%f111780%_ _%args111776%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111775%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111760%_ _%f111761%_ . _%args111762%_)
        (let ((_%f111765%_ _%f111761%_))
          (spawn-actor _%f111765%_ _%args111762%_ _%name111760%_ '#f))))
    (define spawn/group
      (lambda (_%name111744%_ _%f111745%_ . _%args111746%_)
        (if (procedure? _%f111745%_)
            (let ((_%f111750%_ _%f111745%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111744%_
                       _%f111750%_
                       _%args111746%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111745%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111728%_ _%f111729%_ . _%args111730%_)
        (let* ((_%f111733%_ _%f111729%_)
               (_%tgroup111742%_ (make-thread-group _%name111728%_)))
          (spawn-actor
           _%f111733%_
           _%args111730%_
           _%name111728%_
           _%tgroup111742%_))))
    (define spawn-actor
      (lambda (_%f111700%_ _%args111701%_ _%name111702%_ _%tgroup111703%_)
        (letrec ((_%thread-main111706%_
                  (lambda (_%thunk111720%_)
                    (lambda ()
                      (let ((__tmp111817
                             (lambda (_%exn111723%_)
                               (let ((__tmp111818
                                      (lambda (_%cont111725%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111819
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111725%_
                                                      _%exn111723%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111819))
                                            '#!void)
                                        (let ((__tmp111820
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111725%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111820
                                           ##primordial-exception-handler
                                           _%exn111723%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111818)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111817
                         _%thunk111720%_))))))
          (let* ((_%thunk111709%_
                  (if (null? _%args111701%_)
                      _%f111700%_
                      (lambda () (apply _%f111700%_ _%args111701%_))))
                 (_%thunk111712%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111709%_)))
                 (_%tgroup111717%_
                  (let ((_%$e111714%_ _%tgroup111703%_))
                    (if _%$e111714%_ _%$e111714%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111706%_ _%thunk111712%_)
              _%name111702%_
              _%tgroup111717%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111678%_ _%name111679%_ _%tgroup111680%_)
        (thread-start!
         (make-thread _%thunk111678%_ _%name111679%_ _%tgroup111680%_))))
    (define spawn-thread__0
      (lambda (_%thunk111685%_)
        (let* ((_%name111687%_ absent-obj) (_%tgroup111689%_ absent-obj))
          (spawn-thread__% _%thunk111685%_ _%name111687%_ _%tgroup111689%_))))
    (define spawn-thread__1
      (lambda (_%thunk111691%_ _%name111692%_)
        (let ((_%tgroup111694%_ absent-obj))
          (spawn-thread__% _%thunk111691%_ _%name111692%_ _%tgroup111694%_))))
    (define spawn-thread
      (lambda _g111822_
        (let ((_g111821_ (let () (declare (not safe)) (##length _g111822_))))
          (cond ((let () (declare (not safe)) (##fx= _g111821_ 1))
                 (apply spawn-thread__0 _g111822_))
                ((let () (declare (not safe)) (##fx= _g111821_ 2))
                 (apply spawn-thread__1 _g111822_))
                ((let () (declare (not safe)) (##fx= _g111821_ 3))
                 (apply spawn-thread__% _g111822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111822_))))))
    (define thread-local-ref__%
      (lambda (_%key111662%_ _%default111663%_)
        (let ((_%tab111665%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111665%_ _%key111662%_ _%default111663%_))))
    (define thread-local-ref__0
      (lambda (_%key111670%_)
        (let ((_%default111672%_ absent-obj))
          (thread-local-ref__% _%key111670%_ _%default111672%_))))
    (define thread-local-ref
      (lambda _g111824_
        (let ((_g111823_ (let () (declare (not safe)) (##length _g111824_))))
          (cond ((let () (declare (not safe)) (##fx= _g111823_ 1))
                 (apply thread-local-ref__0 _g111824_))
                ((let () (declare (not safe)) (##fx= _g111823_ 2))
                 (apply thread-local-ref__% _g111824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111824_))))))
    (define thread-local-get
      (lambda (_%key111659%_) (thread-local-ref__% _%key111659%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111654%_ _%value111655%_)
        (let ((_%tab111657%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111657%_ _%key111654%_ _%value111655%_))))
    (define thread-local-delete!
      (lambda (_%key111650%_)
        (let ((_%tab111652%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111652%_ _%key111650%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111631%_ (current-thread)))
          (if (actor-thread? _%thr111631%_)
              (let ((_%$e111634%_ (actor-thread-locals _%thr111631%_)))
                (if _%$e111634%_
                    _%$e111634%_
                    (let ((_%tab111638%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111631%_ _%tab111638%_)
                      _%tab111638%_)))
              (if (eq? _%thr111631%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111642%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111631%_))))
                      (if _%$e111642%_
                          ((lambda (_%tab111645%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111645%_)
                           _%$e111642%_)
                          (let ((_%tab111648%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111631%_
                               _%tab111648%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111648%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111609%_)
        (if ((lambda (_%$obj111612%_)
               (or (not _%$obj111612%_) (procedure? _%$obj111612%_)))
             _%new-value111609%_)
            (let ((_%new-value111619%_ _%new-value111609%_))
              (__unhandled-actor-exception-hook-set! _%new-value111619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111609%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111596%_)
        (let ((_%new-value111600%_ _%new-value111596%_))
          (set! __unhandled-actor-exception-hook _%new-value111600%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111570%_ _%proc111571%_)
        (if (mutex? _%mx111570%_)
            (let ((_%mx111575%_ _%mx111570%_))
              (if (procedure? _%proc111571%_)
                  (let ((_%proc111585%_ _%proc111571%_))
                    (__with-lock _%mx111575%_ _%proc111585%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111571%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111570%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111541%_ _%proc111542%_)
        (let* ((_%mx111545%_ _%mx111541%_)
               (_%proc111553%_ _%proc111542%_)
               (_%handler111562%_ (current-exception-handler)))
          (let ((__tmp111826
                 (lambda (_%e111564%_)
                   (let ((__tmp111827
                          (lambda ()
                            (mutex-unlock! _%mx111545%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111562%_ _%e111564%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111827))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111564%_))))
                (__tmp111825
                 (lambda ()
                   (mutex-lock! _%mx111545%_)
                   (let ((_%result111568%_
                          (let () (declare (not safe)) (_%proc111553%_))))
                     (mutex-unlock! _%mx111545%_)
                     _%result111568%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111826 __tmp111825)))))
    (define with-dynamic-lock
      (lambda (_%mx111516%_ _%proc111517%_)
        (if (mutex? _%mx111516%_)
            (let ((_%mx111521%_ _%mx111516%_))
              (if (procedure? _%proc111517%_)
                  (let ((_%proc111531%_ _%proc111517%_))
                    (__with-dynamic-lock _%mx111521%_ _%proc111531%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111517%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111516%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111493%_ _%proc111494%_)
        (let* ((_%mx111497%_ _%mx111493%_) (_%proc111505%_ _%proc111494%_))
          (let ((__tmp111829 (lambda () (mutex-lock! _%mx111497%_)))
                (__tmp111828 (lambda () (mutex-unlock! _%mx111497%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111829 _%proc111505%_ __tmp111828)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111458%_ _%error-port111459%_)
        (if (procedure? _%thunk111458%_)
            (let ((_%thunk111463%_ _%thunk111458%_))
              (if (port? _%error-port111459%_)
                  (let ((_%error-port111473%_ _%error-port111459%_))
                    (__with-exception-stack-trace__%
                     _%thunk111463%_
                     _%error-port111473%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111459%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111458%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111486%_)
        (let ((_%error-port111488%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111486%_
           _%error-port111488%_))))
    (define with-exception-stack-trace
      (lambda _g111831_
        (let ((_g111830_ (let () (declare (not safe)) (##length _g111831_))))
          (cond ((let () (declare (not safe)) (##fx= _g111830_ 1))
                 (apply with-exception-stack-trace__0 _g111831_))
                ((let () (declare (not safe)) (##fx= _g111830_ 2))
                 (apply with-exception-stack-trace__% _g111831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111831_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111419%_ _%error-port111420%_)
        (let* ((_%thunk111423%_ _%thunk111419%_)
               (_%error-port111432%_ _%error-port111420%_)
               (__tmp111832
                (let ((_%E111441%_ (current-exception-handler)))
                  (lambda (_%exn111443%_)
                    (let ((__tmp111833
                           (lambda (_%cont111445%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111445%_
                                  _%exn111443%_
                                  _%error-port111432%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111441%_ _%exn111443%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111833))))))
          (declare (not safe))
          (__with-exception-handler __tmp111832 _%thunk111423%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111450%_)
        (let ((_%error-port111452%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111450%_
           _%error-port111452%_))))
    (define __with-exception-stack-trace
      (lambda _g111835_
        (let ((_g111834_ (let () (declare (not safe)) (##length _g111835_))))
          (cond ((let () (declare (not safe)) (##fx= _g111834_ 1))
                 (apply __with-exception-stack-trace__0 _g111835_))
                ((let () (declare (not safe)) (##fx= _g111834_ 2))
                 (apply __with-exception-stack-trace__% _g111835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111835_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111400%_ _%exn111401%_ _%error-port111402%_)
        (let ((_%out111404%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111404%_))
          (display '"*** Unhandled exception in " _%out111404%_)
          (display (current-thread) _%out111404%_)
          (newline _%out111404%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111401%_ _%out111404%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111401%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111404%_)
                (newline _%out111404%_)
                (display-continuation-backtrace _%cont111400%_ _%out111404%_)))
          (let ((__tmp111836 (get-output-string _%out111404%_)))
            (declare (not safe))
            (##write-string __tmp111836 _%error-port111402%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111409%_ _%exn111410%_)
        (let ((_%error-port111412%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111409%_
           _%exn111410%_
           _%error-port111412%_))))
    (define dump-stack-trace!
      (lambda _g111838_
        (let ((_g111837_ (let () (declare (not safe)) (##length _g111838_))))
          (cond ((let () (declare (not safe)) (##fx= _g111837_ 2))
                 (apply dump-stack-trace!__0 _g111838_))
                ((let () (declare (not safe)) (##fx= _g111837_ 3))
                 (apply dump-stack-trace!__% _g111838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111838_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
