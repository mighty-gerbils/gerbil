(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734131746)
  (begin
    (define spawn
      (lambda (_%f110818%_ . _%args110819%_)
        (if (procedure? _%f110818%_)
            (let ((_%f110823%_ _%f110818%_))
              (declare (not safe))
              (##apply __spawn _%f110823%_ _%args110819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f110818%_)
              '#!void))))
    (define __spawn
      (lambda (_%f110805%_ . _%args110806%_)
        (let ((_%f110809%_ _%f110805%_))
          (spawn-actor _%f110809%_ _%args110806%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name110789%_ _%f110790%_ . _%args110791%_)
        (if (procedure? _%f110790%_)
            (let ((_%f110795%_ _%f110790%_))
              (declare (not safe))
              (##apply __spawn/name _%name110789%_ _%f110795%_ _%args110791%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f110790%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name110775%_ _%f110776%_ . _%args110777%_)
        (let ((_%f110780%_ _%f110776%_))
          (spawn-actor _%f110780%_ _%args110777%_ _%name110775%_ '#f))))
    (define spawn/group
      (lambda (_%name110759%_ _%f110760%_ . _%args110761%_)
        (if (procedure? _%f110760%_)
            (let ((_%f110765%_ _%f110760%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name110759%_
                       _%f110765%_
                       _%args110761%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f110760%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name110743%_ _%f110744%_ . _%args110745%_)
        (let* ((_%f110748%_ _%f110744%_)
               (_%tgroup110757%_ (make-thread-group _%name110743%_)))
          (spawn-actor
           _%f110748%_
           _%args110745%_
           _%name110743%_
           _%tgroup110757%_))))
    (define spawn-actor
      (lambda (_%f110715%_ _%args110716%_ _%name110717%_ _%tgroup110718%_)
        (letrec ((_%thread-main110721%_
                  (lambda (_%thunk110735%_)
                    (lambda ()
                      (let ((__tmp110832
                             (lambda (_%exn110738%_)
                               (let ((__tmp110833
                                      (lambda (_%cont110740%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp110834
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont110740%_
                                                      _%exn110738%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp110834))
                                            '#!void)
                                        (let ((__tmp110835
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont110740%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp110835
                                           ##primordial-exception-handler
                                           _%exn110738%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp110833)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp110832
                         _%thunk110735%_))))))
          (let* ((_%thunk110724%_
                  (if (null? _%args110716%_)
                      _%f110715%_
                      (lambda () (apply _%f110715%_ _%args110716%_))))
                 (_%thunk110727%_
                  (lambda () (with-exception-stack-trace__0 _%thunk110724%_)))
                 (_%tgroup110732%_
                  (let ((_%$e110729%_ _%tgroup110718%_))
                    (if _%$e110729%_ _%$e110729%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main110721%_ _%thunk110727%_)
              _%name110717%_
              _%tgroup110732%_))))))
    (define spawn-thread__%
      (lambda (_%thunk110693%_ _%name110694%_ _%tgroup110695%_)
        (thread-start!
         (make-thread _%thunk110693%_ _%name110694%_ _%tgroup110695%_))))
    (define spawn-thread__0
      (lambda (_%thunk110700%_)
        (let* ((_%name110702%_ absent-obj) (_%tgroup110704%_ absent-obj))
          (spawn-thread__% _%thunk110700%_ _%name110702%_ _%tgroup110704%_))))
    (define spawn-thread__1
      (lambda (_%thunk110706%_ _%name110707%_)
        (let ((_%tgroup110709%_ absent-obj))
          (spawn-thread__% _%thunk110706%_ _%name110707%_ _%tgroup110709%_))))
    (define spawn-thread
      (lambda _g110837_
        (let ((_g110836_ (let () (declare (not safe)) (##length _g110837_))))
          (cond ((let () (declare (not safe)) (##fx= _g110836_ 1))
                 (apply spawn-thread__0 _g110837_))
                ((let () (declare (not safe)) (##fx= _g110836_ 2))
                 (apply spawn-thread__1 _g110837_))
                ((let () (declare (not safe)) (##fx= _g110836_ 3))
                 (apply spawn-thread__% _g110837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g110837_))))))
    (define thread-local-ref__%
      (lambda (_%key110677%_ _%default110678%_)
        (let ((_%tab110680%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab110680%_ _%key110677%_ _%default110678%_))))
    (define thread-local-ref__0
      (lambda (_%key110685%_)
        (let ((_%default110687%_ absent-obj))
          (thread-local-ref__% _%key110685%_ _%default110687%_))))
    (define thread-local-ref
      (lambda _g110839_
        (let ((_g110838_ (let () (declare (not safe)) (##length _g110839_))))
          (cond ((let () (declare (not safe)) (##fx= _g110838_ 1))
                 (apply thread-local-ref__0 _g110839_))
                ((let () (declare (not safe)) (##fx= _g110838_ 2))
                 (apply thread-local-ref__% _g110839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g110839_))))))
    (define thread-local-get
      (lambda (_%key110674%_) (thread-local-ref__% _%key110674%_ '#f)))
    (define thread-local-set!
      (lambda (_%key110669%_ _%value110670%_)
        (let ((_%tab110672%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab110672%_ _%key110669%_ _%value110670%_))))
    (define thread-local-delete!
      (lambda (_%key110665%_)
        (let ((_%tab110667%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab110667%_ _%key110665%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr110646%_ (current-thread)))
          (if (actor-thread? _%thr110646%_)
              (let ((_%$e110649%_ (actor-thread-locals _%thr110646%_)))
                (if _%$e110649%_
                    _%$e110649%_
                    (let ((_%tab110653%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr110646%_ _%tab110653%_)
                      _%tab110653%_)))
              (if (eq? _%thr110646%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e110657%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr110646%_))))
                      (if _%$e110657%_
                          ((lambda (_%tab110660%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab110660%_)
                           _%$e110657%_)
                          (let ((_%tab110663%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr110646%_
                               _%tab110663%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab110663%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value110624%_)
        (if ((lambda (_%$obj110627%_)
               (or (not _%$obj110627%_) (procedure? _%$obj110627%_)))
             _%new-value110624%_)
            (let ((_%new-value110634%_ _%new-value110624%_))
              (__unhandled-actor-exception-hook-set! _%new-value110634%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value110624%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value110611%_)
        (let ((_%new-value110615%_ _%new-value110611%_))
          (set! __unhandled-actor-exception-hook _%new-value110615%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx110585%_ _%proc110586%_)
        (if (mutex? _%mx110585%_)
            (let ((_%mx110590%_ _%mx110585%_))
              (if (procedure? _%proc110586%_)
                  (let ((_%proc110600%_ _%proc110586%_))
                    (__with-lock _%mx110590%_ _%proc110600%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110586%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx110585%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx110556%_ _%proc110557%_)
        (let* ((_%mx110560%_ _%mx110556%_)
               (_%proc110568%_ _%proc110557%_)
               (_%handler110577%_ (current-exception-handler)))
          (let ((__tmp110841
                 (lambda (_%e110579%_)
                   (let ((__tmp110842
                          (lambda ()
                            (mutex-unlock! _%mx110560%_)
                            (let ()
                              (declare (not safe))
                              (_%handler110577%_ _%e110579%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp110842))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e110579%_))))
                (__tmp110840
                 (lambda ()
                   (mutex-lock! _%mx110560%_)
                   (let ((_%result110583%_
                          (let () (declare (not safe)) (_%proc110568%_))))
                     (mutex-unlock! _%mx110560%_)
                     _%result110583%_))))
            (declare (not safe))
            (__with-exception-handler __tmp110841 __tmp110840)))))
    (define with-dynamic-lock
      (lambda (_%mx110531%_ _%proc110532%_)
        (if (mutex? _%mx110531%_)
            (let ((_%mx110536%_ _%mx110531%_))
              (if (procedure? _%proc110532%_)
                  (let ((_%proc110546%_ _%proc110532%_))
                    (__with-dynamic-lock _%mx110536%_ _%proc110546%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110532%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx110531%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx110508%_ _%proc110509%_)
        (let* ((_%mx110512%_ _%mx110508%_) (_%proc110520%_ _%proc110509%_))
          (let ((__tmp110844 (lambda () (mutex-lock! _%mx110512%_)))
                (__tmp110843 (lambda () (mutex-unlock! _%mx110512%_))))
            (declare (not safe))
            (##dynamic-wind __tmp110844 _%proc110520%_ __tmp110843)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk110473%_ _%error-port110474%_)
        (if (procedure? _%thunk110473%_)
            (let ((_%thunk110478%_ _%thunk110473%_))
              (if (port? _%error-port110474%_)
                  (let ((_%error-port110488%_ _%error-port110474%_))
                    (__with-exception-stack-trace__%
                     _%thunk110478%_
                     _%error-port110488%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port110474%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk110473%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk110501%_)
        (let ((_%error-port110503%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk110501%_
           _%error-port110503%_))))
    (define with-exception-stack-trace
      (lambda _g110846_
        (let ((_g110845_ (let () (declare (not safe)) (##length _g110846_))))
          (cond ((let () (declare (not safe)) (##fx= _g110845_ 1))
                 (apply with-exception-stack-trace__0 _g110846_))
                ((let () (declare (not safe)) (##fx= _g110845_ 2))
                 (apply with-exception-stack-trace__% _g110846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g110846_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk110434%_ _%error-port110435%_)
        (let* ((_%thunk110438%_ _%thunk110434%_)
               (_%error-port110447%_ _%error-port110435%_)
               (__tmp110847
                (let ((_%E110456%_ (current-exception-handler)))
                  (lambda (_%exn110458%_)
                    (let ((__tmp110848
                           (lambda (_%cont110460%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont110460%_
                                  _%exn110458%_
                                  _%error-port110447%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E110456%_ _%exn110458%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp110848))))))
          (declare (not safe))
          (__with-exception-handler __tmp110847 _%thunk110438%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk110465%_)
        (let ((_%error-port110467%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk110465%_
           _%error-port110467%_))))
    (define __with-exception-stack-trace
      (lambda _g110850_
        (let ((_g110849_ (let () (declare (not safe)) (##length _g110850_))))
          (cond ((let () (declare (not safe)) (##fx= _g110849_ 1))
                 (apply __with-exception-stack-trace__0 _g110850_))
                ((let () (declare (not safe)) (##fx= _g110849_ 2))
                 (apply __with-exception-stack-trace__% _g110850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g110850_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont110415%_ _%exn110416%_ _%error-port110417%_)
        (let ((_%out110419%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out110419%_))
          (display '"*** Unhandled exception in " _%out110419%_)
          (display (current-thread) _%out110419%_)
          (newline _%out110419%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn110416%_ _%out110419%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn110416%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out110419%_)
                (newline _%out110419%_)
                (display-continuation-backtrace _%cont110415%_ _%out110419%_)))
          (let ((__tmp110851 (get-output-string _%out110419%_)))
            (declare (not safe))
            (##write-string __tmp110851 _%error-port110417%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont110424%_ _%exn110425%_)
        (let ((_%error-port110427%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont110424%_
           _%exn110425%_
           _%error-port110427%_))))
    (define dump-stack-trace!
      (lambda _g110853_
        (let ((_g110852_ (let () (declare (not safe)) (##length _g110853_))))
          (cond ((let () (declare (not safe)) (##fx= _g110852_ 2))
                 (apply dump-stack-trace!__0 _g110853_))
                ((let () (declare (not safe)) (##fx= _g110852_ 3))
                 (apply dump-stack-trace!__% _g110853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g110853_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
