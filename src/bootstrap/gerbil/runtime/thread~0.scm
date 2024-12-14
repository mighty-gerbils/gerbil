(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734215269)
  (begin
    (define spawn
      (lambda (_%f110920%_ . _%args110921%_)
        (if (procedure? _%f110920%_)
            (let ((_%f110925%_ _%f110920%_))
              (declare (not safe))
              (##apply __spawn _%f110925%_ _%args110921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f110920%_)
              '#!void))))
    (define __spawn
      (lambda (_%f110907%_ . _%args110908%_)
        (let ((_%f110911%_ _%f110907%_))
          (spawn-actor _%f110911%_ _%args110908%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name110891%_ _%f110892%_ . _%args110893%_)
        (if (procedure? _%f110892%_)
            (let ((_%f110897%_ _%f110892%_))
              (declare (not safe))
              (##apply __spawn/name _%name110891%_ _%f110897%_ _%args110893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f110892%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name110877%_ _%f110878%_ . _%args110879%_)
        (let ((_%f110882%_ _%f110878%_))
          (spawn-actor _%f110882%_ _%args110879%_ _%name110877%_ '#f))))
    (define spawn/group
      (lambda (_%name110861%_ _%f110862%_ . _%args110863%_)
        (if (procedure? _%f110862%_)
            (let ((_%f110867%_ _%f110862%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name110861%_
                       _%f110867%_
                       _%args110863%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f110862%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name110845%_ _%f110846%_ . _%args110847%_)
        (let* ((_%f110850%_ _%f110846%_)
               (_%tgroup110859%_ (make-thread-group _%name110845%_)))
          (spawn-actor
           _%f110850%_
           _%args110847%_
           _%name110845%_
           _%tgroup110859%_))))
    (define spawn-actor
      (lambda (_%f110817%_ _%args110818%_ _%name110819%_ _%tgroup110820%_)
        (letrec ((_%thread-main110823%_
                  (lambda (_%thunk110837%_)
                    (lambda ()
                      (let ((__tmp110934
                             (lambda (_%exn110840%_)
                               (let ((__tmp110935
                                      (lambda (_%cont110842%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp110936
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont110842%_
                                                      _%exn110840%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp110936))
                                            '#!void)
                                        (let ((__tmp110937
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont110842%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp110937
                                           ##primordial-exception-handler
                                           _%exn110840%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp110935)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp110934
                         _%thunk110837%_))))))
          (let* ((_%thunk110826%_
                  (if (null? _%args110818%_)
                      _%f110817%_
                      (lambda () (apply _%f110817%_ _%args110818%_))))
                 (_%thunk110829%_
                  (lambda () (with-exception-stack-trace__0 _%thunk110826%_)))
                 (_%tgroup110834%_
                  (let ((_%$e110831%_ _%tgroup110820%_))
                    (if _%$e110831%_ _%$e110831%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main110823%_ _%thunk110829%_)
              _%name110819%_
              _%tgroup110834%_))))))
    (define spawn-thread__%
      (lambda (_%thunk110795%_ _%name110796%_ _%tgroup110797%_)
        (thread-start!
         (make-thread _%thunk110795%_ _%name110796%_ _%tgroup110797%_))))
    (define spawn-thread__0
      (lambda (_%thunk110802%_)
        (let* ((_%name110804%_ absent-obj) (_%tgroup110806%_ absent-obj))
          (spawn-thread__% _%thunk110802%_ _%name110804%_ _%tgroup110806%_))))
    (define spawn-thread__1
      (lambda (_%thunk110808%_ _%name110809%_)
        (let ((_%tgroup110811%_ absent-obj))
          (spawn-thread__% _%thunk110808%_ _%name110809%_ _%tgroup110811%_))))
    (define spawn-thread
      (lambda _g110939_
        (let ((_g110938_ (let () (declare (not safe)) (##length _g110939_))))
          (cond ((let () (declare (not safe)) (##fx= _g110938_ 1))
                 (apply spawn-thread__0 _g110939_))
                ((let () (declare (not safe)) (##fx= _g110938_ 2))
                 (apply spawn-thread__1 _g110939_))
                ((let () (declare (not safe)) (##fx= _g110938_ 3))
                 (apply spawn-thread__% _g110939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g110939_))))))
    (define thread-local-ref__%
      (lambda (_%key110779%_ _%default110780%_)
        (let ((_%tab110782%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab110782%_ _%key110779%_ _%default110780%_))))
    (define thread-local-ref__0
      (lambda (_%key110787%_)
        (let ((_%default110789%_ absent-obj))
          (thread-local-ref__% _%key110787%_ _%default110789%_))))
    (define thread-local-ref
      (lambda _g110941_
        (let ((_g110940_ (let () (declare (not safe)) (##length _g110941_))))
          (cond ((let () (declare (not safe)) (##fx= _g110940_ 1))
                 (apply thread-local-ref__0 _g110941_))
                ((let () (declare (not safe)) (##fx= _g110940_ 2))
                 (apply thread-local-ref__% _g110941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g110941_))))))
    (define thread-local-get
      (lambda (_%key110776%_) (thread-local-ref__% _%key110776%_ '#f)))
    (define thread-local-set!
      (lambda (_%key110771%_ _%value110772%_)
        (let ((_%tab110774%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab110774%_ _%key110771%_ _%value110772%_))))
    (define thread-local-delete!
      (lambda (_%key110767%_)
        (let ((_%tab110769%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab110769%_ _%key110767%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr110748%_ (current-thread)))
          (if (actor-thread? _%thr110748%_)
              (let ((_%$e110751%_ (actor-thread-locals _%thr110748%_)))
                (if _%$e110751%_
                    _%$e110751%_
                    (let ((_%tab110755%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr110748%_ _%tab110755%_)
                      _%tab110755%_)))
              (if (eq? _%thr110748%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e110759%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr110748%_))))
                      (if _%$e110759%_
                          ((lambda (_%tab110762%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab110762%_)
                           _%$e110759%_)
                          (let ((_%tab110765%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr110748%_
                               _%tab110765%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab110765%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value110726%_)
        (if ((lambda (_%$obj110729%_)
               (or (not _%$obj110729%_) (procedure? _%$obj110729%_)))
             _%new-value110726%_)
            (let ((_%new-value110736%_ _%new-value110726%_))
              (__unhandled-actor-exception-hook-set! _%new-value110736%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value110726%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value110713%_)
        (let ((_%new-value110717%_ _%new-value110713%_))
          (set! __unhandled-actor-exception-hook _%new-value110717%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx110687%_ _%proc110688%_)
        (if (mutex? _%mx110687%_)
            (let ((_%mx110692%_ _%mx110687%_))
              (if (procedure? _%proc110688%_)
                  (let ((_%proc110702%_ _%proc110688%_))
                    (__with-lock _%mx110692%_ _%proc110702%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110688%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx110687%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx110658%_ _%proc110659%_)
        (let* ((_%mx110662%_ _%mx110658%_)
               (_%proc110670%_ _%proc110659%_)
               (_%handler110679%_ (current-exception-handler)))
          (let ((__tmp110943
                 (lambda (_%e110681%_)
                   (let ((__tmp110944
                          (lambda ()
                            (mutex-unlock! _%mx110662%_)
                            (let ()
                              (declare (not safe))
                              (_%handler110679%_ _%e110681%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp110944))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e110681%_))))
                (__tmp110942
                 (lambda ()
                   (mutex-lock! _%mx110662%_)
                   (let ((_%result110685%_
                          (let () (declare (not safe)) (_%proc110670%_))))
                     (mutex-unlock! _%mx110662%_)
                     _%result110685%_))))
            (declare (not safe))
            (__with-exception-handler __tmp110943 __tmp110942)))))
    (define with-dynamic-lock
      (lambda (_%mx110633%_ _%proc110634%_)
        (if (mutex? _%mx110633%_)
            (let ((_%mx110638%_ _%mx110633%_))
              (if (procedure? _%proc110634%_)
                  (let ((_%proc110648%_ _%proc110634%_))
                    (__with-dynamic-lock _%mx110638%_ _%proc110648%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110634%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx110633%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx110610%_ _%proc110611%_)
        (let* ((_%mx110614%_ _%mx110610%_) (_%proc110622%_ _%proc110611%_))
          (let ((__tmp110946 (lambda () (mutex-lock! _%mx110614%_)))
                (__tmp110945 (lambda () (mutex-unlock! _%mx110614%_))))
            (declare (not safe))
            (##dynamic-wind __tmp110946 _%proc110622%_ __tmp110945)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk110575%_ _%error-port110576%_)
        (if (procedure? _%thunk110575%_)
            (let ((_%thunk110580%_ _%thunk110575%_))
              (if (port? _%error-port110576%_)
                  (let ((_%error-port110590%_ _%error-port110576%_))
                    (__with-exception-stack-trace__%
                     _%thunk110580%_
                     _%error-port110590%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port110576%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk110575%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk110603%_)
        (let ((_%error-port110605%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk110603%_
           _%error-port110605%_))))
    (define with-exception-stack-trace
      (lambda _g110948_
        (let ((_g110947_ (let () (declare (not safe)) (##length _g110948_))))
          (cond ((let () (declare (not safe)) (##fx= _g110947_ 1))
                 (apply with-exception-stack-trace__0 _g110948_))
                ((let () (declare (not safe)) (##fx= _g110947_ 2))
                 (apply with-exception-stack-trace__% _g110948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g110948_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk110536%_ _%error-port110537%_)
        (let* ((_%thunk110540%_ _%thunk110536%_)
               (_%error-port110549%_ _%error-port110537%_)
               (__tmp110949
                (let ((_%E110558%_ (current-exception-handler)))
                  (lambda (_%exn110560%_)
                    (let ((__tmp110950
                           (lambda (_%cont110562%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont110562%_
                                  _%exn110560%_
                                  _%error-port110549%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E110558%_ _%exn110560%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp110950))))))
          (declare (not safe))
          (__with-exception-handler __tmp110949 _%thunk110540%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk110567%_)
        (let ((_%error-port110569%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk110567%_
           _%error-port110569%_))))
    (define __with-exception-stack-trace
      (lambda _g110952_
        (let ((_g110951_ (let () (declare (not safe)) (##length _g110952_))))
          (cond ((let () (declare (not safe)) (##fx= _g110951_ 1))
                 (apply __with-exception-stack-trace__0 _g110952_))
                ((let () (declare (not safe)) (##fx= _g110951_ 2))
                 (apply __with-exception-stack-trace__% _g110952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g110952_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont110517%_ _%exn110518%_ _%error-port110519%_)
        (let ((_%out110521%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out110521%_))
          (display '"*** Unhandled exception in " _%out110521%_)
          (display (current-thread) _%out110521%_)
          (newline _%out110521%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn110518%_ _%out110521%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn110518%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out110521%_)
                (newline _%out110521%_)
                (display-continuation-backtrace _%cont110517%_ _%out110521%_)))
          (let ((__tmp110953 (get-output-string _%out110521%_)))
            (declare (not safe))
            (##write-string __tmp110953 _%error-port110519%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont110526%_ _%exn110527%_)
        (let ((_%error-port110529%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont110526%_
           _%exn110527%_
           _%error-port110529%_))))
    (define dump-stack-trace!
      (lambda _g110955_
        (let ((_g110954_ (let () (declare (not safe)) (##length _g110955_))))
          (cond ((let () (declare (not safe)) (##fx= _g110954_ 2))
                 (apply dump-stack-trace!__0 _g110955_))
                ((let () (declare (not safe)) (##fx= _g110954_ 3))
                 (apply dump-stack-trace!__% _g110955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g110955_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
