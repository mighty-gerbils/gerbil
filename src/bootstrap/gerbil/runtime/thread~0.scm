(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713631265)
  (begin
    (define spawn
      (lambda (_%f110553%_ . _%args110554%_)
        (if (procedure? _%f110553%_)
            (let ((_%f110558%_ _%f110553%_))
              (declare (not safe))
              (##apply __spawn _%f110558%_ _%args110554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f110553%_)
              '#!void))))
    (define __spawn
      (lambda (_%f110540%_ . _%args110541%_)
        (let ((_%f110544%_ _%f110540%_))
          (spawn-actor _%f110544%_ _%args110541%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name110524%_ _%f110525%_ . _%args110526%_)
        (if (procedure? _%f110525%_)
            (let ((_%f110530%_ _%f110525%_))
              (declare (not safe))
              (##apply __spawn/name _%name110524%_ _%f110530%_ _%args110526%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f110525%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name110510%_ _%f110511%_ . _%args110512%_)
        (let ((_%f110515%_ _%f110511%_))
          (spawn-actor _%f110515%_ _%args110512%_ _%name110510%_ '#f))))
    (define spawn/group
      (lambda (_%name110494%_ _%f110495%_ . _%args110496%_)
        (if (procedure? _%f110495%_)
            (let ((_%f110500%_ _%f110495%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name110494%_
                       _%f110500%_
                       _%args110496%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f110495%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name110478%_ _%f110479%_ . _%args110480%_)
        (let* ((_%f110483%_ _%f110479%_)
               (_%tgroup110492%_ (make-thread-group _%name110478%_)))
          (spawn-actor
           _%f110483%_
           _%args110480%_
           _%name110478%_
           _%tgroup110492%_))))
    (define spawn-actor
      (lambda (_%f110450%_ _%args110451%_ _%name110452%_ _%tgroup110453%_)
        (letrec ((_%thread-main110456%_
                  (lambda (_%thunk110470%_)
                    (lambda ()
                      (let ((__tmp110567
                             (lambda (_%exn110473%_)
                               (let ((__tmp110568
                                      (lambda (_%cont110475%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp110569
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont110475%_
                                                      _%exn110473%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp110569))
                                            '#!void)
                                        (let ((__tmp110570
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont110475%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp110570
                                           ##primordial-exception-handler
                                           _%exn110473%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp110568)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp110567
                         _%thunk110470%_))))))
          (let* ((_%thunk110459%_
                  (if (null? _%args110451%_)
                      _%f110450%_
                      (lambda () (apply _%f110450%_ _%args110451%_))))
                 (_%thunk110462%_
                  (lambda () (with-exception-stack-trace__0 _%thunk110459%_)))
                 (_%tgroup110467%_
                  (let ((_%$e110464%_ _%tgroup110453%_))
                    (if _%$e110464%_ _%$e110464%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main110456%_ _%thunk110462%_)
              _%name110452%_
              _%tgroup110467%_))))))
    (define spawn-thread__%
      (lambda (_%thunk110428%_ _%name110429%_ _%tgroup110430%_)
        (thread-start!
         (make-thread _%thunk110428%_ _%name110429%_ _%tgroup110430%_))))
    (define spawn-thread__0
      (lambda (_%thunk110435%_)
        (let* ((_%name110437%_ absent-obj) (_%tgroup110439%_ absent-obj))
          (spawn-thread__% _%thunk110435%_ _%name110437%_ _%tgroup110439%_))))
    (define spawn-thread__1
      (lambda (_%thunk110441%_ _%name110442%_)
        (let ((_%tgroup110444%_ absent-obj))
          (spawn-thread__% _%thunk110441%_ _%name110442%_ _%tgroup110444%_))))
    (define spawn-thread
      (lambda _g110572_
        (let ((_g110571_ (let () (declare (not safe)) (##length _g110572_))))
          (cond ((let () (declare (not safe)) (##fx= _g110571_ 1))
                 (apply spawn-thread__0 _g110572_))
                ((let () (declare (not safe)) (##fx= _g110571_ 2))
                 (apply spawn-thread__1 _g110572_))
                ((let () (declare (not safe)) (##fx= _g110571_ 3))
                 (apply spawn-thread__% _g110572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g110572_))))))
    (define thread-local-ref__%
      (lambda (_%key110412%_ _%default110413%_)
        (let ((_%tab110415%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab110415%_ _%key110412%_ _%default110413%_))))
    (define thread-local-ref__0
      (lambda (_%key110420%_)
        (let ((_%default110422%_ absent-obj))
          (thread-local-ref__% _%key110420%_ _%default110422%_))))
    (define thread-local-ref
      (lambda _g110574_
        (let ((_g110573_ (let () (declare (not safe)) (##length _g110574_))))
          (cond ((let () (declare (not safe)) (##fx= _g110573_ 1))
                 (apply thread-local-ref__0 _g110574_))
                ((let () (declare (not safe)) (##fx= _g110573_ 2))
                 (apply thread-local-ref__% _g110574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g110574_))))))
    (define thread-local-get
      (lambda (_%key110409%_) (thread-local-ref__% _%key110409%_ '#f)))
    (define thread-local-set!
      (lambda (_%key110404%_ _%value110405%_)
        (let ((_%tab110407%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab110407%_ _%key110404%_ _%value110405%_))))
    (define thread-local-delete!
      (lambda (_%key110400%_)
        (let ((_%tab110402%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab110402%_ _%key110400%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr110381%_ (current-thread)))
          (if (actor-thread? _%thr110381%_)
              (let ((_%$e110384%_ (actor-thread-locals _%thr110381%_)))
                (if _%$e110384%_
                    _%$e110384%_
                    (let ((_%tab110388%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr110381%_ _%tab110388%_)
                      _%tab110388%_)))
              (if (eq? _%thr110381%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e110392%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr110381%_))))
                      (if _%$e110392%_
                          ((lambda (_%tab110395%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab110395%_)
                           _%$e110392%_)
                          (let ((_%tab110398%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr110381%_
                               _%tab110398%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab110398%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value110359%_)
        (if ((lambda (_%$obj110362%_)
               (or (not _%$obj110362%_) (procedure? _%$obj110362%_)))
             _%new-value110359%_)
            (let ((_%new-value110369%_ _%new-value110359%_))
              (__unhandled-actor-exception-hook-set! _%new-value110369%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value110359%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value110346%_)
        (let ((_%new-value110350%_ _%new-value110346%_))
          (set! __unhandled-actor-exception-hook _%new-value110350%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx110320%_ _%proc110321%_)
        (if (mutex? _%mx110320%_)
            (let ((_%mx110325%_ _%mx110320%_))
              (if (procedure? _%proc110321%_)
                  (let ((_%proc110335%_ _%proc110321%_))
                    (__with-lock _%mx110325%_ _%proc110335%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110321%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx110320%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx110291%_ _%proc110292%_)
        (let* ((_%mx110295%_ _%mx110291%_)
               (_%proc110303%_ _%proc110292%_)
               (_%handler110312%_ (current-exception-handler)))
          (let ((__tmp110576
                 (lambda (_%e110314%_)
                   (let ((__tmp110577
                          (lambda ()
                            (mutex-unlock! _%mx110295%_)
                            (let ()
                              (declare (not safe))
                              (_%handler110312%_ _%e110314%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp110577))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e110314%_))))
                (__tmp110575
                 (lambda ()
                   (mutex-lock! _%mx110295%_)
                   (let ((_%result110318%_
                          (let () (declare (not safe)) (_%proc110303%_))))
                     (mutex-unlock! _%mx110295%_)
                     _%result110318%_))))
            (declare (not safe))
            (__with-exception-handler __tmp110576 __tmp110575)))))
    (define with-dynamic-lock
      (lambda (_%mx110266%_ _%proc110267%_)
        (if (mutex? _%mx110266%_)
            (let ((_%mx110271%_ _%mx110266%_))
              (if (procedure? _%proc110267%_)
                  (let ((_%proc110281%_ _%proc110267%_))
                    (__with-dynamic-lock _%mx110271%_ _%proc110281%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110267%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx110266%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx110243%_ _%proc110244%_)
        (let* ((_%mx110247%_ _%mx110243%_) (_%proc110255%_ _%proc110244%_))
          (let ((__tmp110579 (lambda () (mutex-lock! _%mx110247%_)))
                (__tmp110578 (lambda () (mutex-unlock! _%mx110247%_))))
            (declare (not safe))
            (##dynamic-wind __tmp110579 _%proc110255%_ __tmp110578)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk110208%_ _%error-port110209%_)
        (if (procedure? _%thunk110208%_)
            (let ((_%thunk110213%_ _%thunk110208%_))
              (if (port? _%error-port110209%_)
                  (let ((_%error-port110223%_ _%error-port110209%_))
                    (__with-exception-stack-trace__%
                     _%thunk110213%_
                     _%error-port110223%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port110209%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk110208%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk110236%_)
        (let ((_%error-port110238%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk110236%_
           _%error-port110238%_))))
    (define with-exception-stack-trace
      (lambda _g110581_
        (let ((_g110580_ (let () (declare (not safe)) (##length _g110581_))))
          (cond ((let () (declare (not safe)) (##fx= _g110580_ 1))
                 (apply with-exception-stack-trace__0 _g110581_))
                ((let () (declare (not safe)) (##fx= _g110580_ 2))
                 (apply with-exception-stack-trace__% _g110581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g110581_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk110169%_ _%error-port110170%_)
        (let* ((_%thunk110173%_ _%thunk110169%_)
               (_%error-port110182%_ _%error-port110170%_)
               (__tmp110582
                (let ((_%E110191%_ (current-exception-handler)))
                  (lambda (_%exn110193%_)
                    (let ((__tmp110583
                           (lambda (_%cont110195%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont110195%_
                                  _%exn110193%_
                                  _%error-port110182%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E110191%_ _%exn110193%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp110583))))))
          (declare (not safe))
          (__with-exception-handler __tmp110582 _%thunk110173%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk110200%_)
        (let ((_%error-port110202%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk110200%_
           _%error-port110202%_))))
    (define __with-exception-stack-trace
      (lambda _g110585_
        (let ((_g110584_ (let () (declare (not safe)) (##length _g110585_))))
          (cond ((let () (declare (not safe)) (##fx= _g110584_ 1))
                 (apply __with-exception-stack-trace__0 _g110585_))
                ((let () (declare (not safe)) (##fx= _g110584_ 2))
                 (apply __with-exception-stack-trace__% _g110585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g110585_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont110150%_ _%exn110151%_ _%error-port110152%_)
        (let ((_%out110154%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out110154%_))
          (display '"*** Unhandled exception in " _%out110154%_)
          (display (current-thread) _%out110154%_)
          (newline _%out110154%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn110151%_ _%out110154%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn110151%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out110154%_)
                (newline _%out110154%_)
                (display-continuation-backtrace _%cont110150%_ _%out110154%_)))
          (let ((__tmp110586 (get-output-string _%out110154%_)))
            (declare (not safe))
            (##write-string __tmp110586 _%error-port110152%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont110159%_ _%exn110160%_)
        (let ((_%error-port110162%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont110159%_
           _%exn110160%_
           _%error-port110162%_))))
    (define dump-stack-trace!
      (lambda _g110588_
        (let ((_g110587_ (let () (declare (not safe)) (##length _g110588_))))
          (cond ((let () (declare (not safe)) (##fx= _g110587_ 2))
                 (apply dump-stack-trace!__0 _g110588_))
                ((let () (declare (not safe)) (##fx= _g110587_ 3))
                 (apply dump-stack-trace!__% _g110588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g110588_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
