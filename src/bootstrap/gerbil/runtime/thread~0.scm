(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771022575)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk163299%_ _%name163300%_)
        (let* ((_%thunk163303%_ _%thunk163299%_)
               (_%name163311%_ _%name163300%_))
          (make-thread
           (lambda () (thread-main _%thunk163303%_))
           _%name163311%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk161179%_ _%name161180%_)
        (if (procedure? _%thunk161179%_)
            (let ((_%thunk161184%_ _%thunk161179%_))
              (if (symbol? _%name161180%_)
                  (let ((_%name161194%_ _%name161180%_))
                    (__make-system-thread _%thunk161184%_ _%name161194%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name161180%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk161179%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk163246%_ _%name163247%_)
        (let* ((_%thunk163250%_ _%thunk163246%_)
               (_%name163258%_ _%name163247%_))
          (thread-start!
           (let* ((_%thunk163267%_ _%thunk163250%_)
                  (_%name163270%_ _%name163258%_)
                  (_%thunk163275%_ _%thunk163267%_)
                  (_%name163289%_ _%name163270%_))
             (__make-system-thread _%thunk163275%_ _%name163289%_))))))
    (define system-thread!
      (lambda (_%thunk161324%_ _%name161325%_)
        (if (procedure? _%thunk161324%_)
            (let ((_%thunk161329%_ _%thunk161324%_))
              (if (symbol? _%name161325%_)
                  (let ((_%name161339%_ _%name161325%_))
                    (__system-thread! _%thunk161329%_ _%name161339%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name161325%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk161324%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk163225%_ _%name163226%_)
        (let* ((_%thunk163229%_ _%thunk163225%_)
               (_%name163237%_ _%name163226%_))
          (spawn-actor
           _%thunk163229%_
           '()
           _%name163237%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk161469%_ _%name161470%_)
        (if (procedure? _%thunk161469%_)
            (let ((_%thunk161474%_ _%thunk161469%_))
              (if (symbol? _%name161470%_)
                  (let ((_%name161484%_ _%name161470%_))
                    (__system-actor! _%thunk161474%_ _%name161484%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name161470%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk161469%_)
              '#!void))))
    (define __spawn
      (lambda (_%f163212%_ . _%args163213%_)
        (let ((_%f163216%_ _%f163212%_))
          (spawn-actor _%f163216%_ _%args163213%_ '#!void '#f))))
    (define spawn
      (lambda (_%f161614%_ . _%args161615%_)
        (if (procedure? _%f161614%_)
            (let ((_%f161619%_ _%f161614%_))
              (declare (not safe))
              (##apply __spawn _%f161619%_ _%args161615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f161614%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name163198%_ _%f163199%_ . _%args163200%_)
        (let ((_%f163203%_ _%f163199%_))
          (spawn-actor _%f163203%_ _%args163200%_ _%name163198%_ '#f))))
    (define spawn/name
      (lambda (_%name161749%_ _%f161750%_ . _%args161751%_)
        (if (procedure? _%f161750%_)
            (let ((_%f161755%_ _%f161750%_))
              (declare (not safe))
              (##apply __spawn/name _%name161749%_ _%f161755%_ _%args161751%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f161750%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name163182%_ _%f163183%_ . _%args163184%_)
        (let* ((_%f163187%_ _%f163183%_)
               (_%tgroup163196%_ (make-thread-group _%name163182%_)))
          (spawn-actor
           _%f163187%_
           _%args163184%_
           _%name163182%_
           _%tgroup163196%_))))
    (define spawn/group
      (lambda (_%name161885%_ _%f161886%_ . _%args161887%_)
        (if (procedure? _%f161886%_)
            (let ((_%f161891%_ _%f161886%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name161885%_
                       _%f161891%_
                       _%args161887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f161886%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f163130%_ _%args163131%_ _%name163132%_ _%tgroup163133%_)
        (let* ((_%thunk163137%_
                (if (null? _%args163131%_)
                    _%f163130%_
                    (lambda () (apply _%f163130%_ _%args163131%_))))
               (_%thunk163173%_
                (lambda ()
                  (let* ((_%thunk163140%_ _%thunk163137%_)
                         (_%error-port163143%_ (current-error-port)))
                    (if (procedure? _%thunk163140%_)
                        (let* ((_%thunk163148%_ _%thunk163140%_)
                               (_%error-port163163%_ _%error-port163143%_))
                          (__with-exception-stack-trace__%
                           _%thunk163148%_
                           _%error-port163163%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk163140%_)
                          '#!void)))))
               (_%tgroup163178%_
                (let ((_%$e163175%_ _%tgroup163133%_))
                  (if _%$e163175%_ _%$e163175%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk163173%_))
            _%name163132%_
            _%tgroup163178%_)))))
    (define spawn-thread__%
      (lambda (_%thunk163107%_ _%name163108%_ _%tgroup163109%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk163107%_))
          _%name163108%_
          _%tgroup163109%_))))
    (define spawn-thread__0
      (lambda (_%thunk163115%_)
        (let* ((_%name163117%_ absent-obj) (_%tgroup163119%_ absent-obj))
          (spawn-thread__% _%thunk163115%_ _%name163117%_ _%tgroup163119%_))))
    (define spawn-thread__1
      (lambda (_%thunk163121%_ _%name163122%_)
        (let ((_%tgroup163124%_ absent-obj))
          (spawn-thread__% _%thunk163121%_ _%name163122%_ _%tgroup163124%_))))
    (define spawn-thread
      (lambda _g163608_
        (let ((_g163609_ (let () (declare (not safe)) (##length _g163608_))))
          (cond ((let () (declare (not safe)) (##fx= _g163609_ 1))
                 (apply spawn-thread__0 _g163608_))
                ((let () (declare (not safe)) (##fx= _g163609_ 2))
                 (apply spawn-thread__1 _g163608_))
                ((let () (declare (not safe)) (##fx= _g163609_ 3))
                 (apply spawn-thread__% _g163608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g163608_))))))
    (define thread-main
      (lambda (_%thunk163038%_)
        (let* ((_%handler163077%_
                (lambda (_%exn163040%_)
                  (let ((__tmp163610
                         (lambda (_%cont163042%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler163044%_ void)
                                      (_%thunk163048%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont163042%_
                                            _%exn163040%_))))
                                      (_%handler163053%_ _%handler163044%_)
                                      (_%thunk163067%_ _%thunk163048%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler163053%_
                                  _%thunk163067%_))
                               '#!void)
                           (let ((__tmp163611
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont163042%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp163611
                              ##primordial-exception-handler
                              _%exn163040%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp163610))))
               (_%thunk163080%_ _%thunk163038%_)
               (_%handler163085%_ _%handler163077%_))
          (if (procedure? _%thunk163080%_)
              (let ((_%thunk163096%_ _%thunk163080%_))
                (declare (not safe))
                (__with-exception-handler _%handler163085%_ _%thunk163096%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk163080%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key162994%_ _%default162995%_)
        (let* ((_%tab162997%_ (thread-local-table))
               (_%h162999%_ _%tab162997%_)
               (_%key163002%_ _%key162994%_)
               (_%default163005%_ _%default162995%_)
               (_%h163012%_
                (let ((_%$obj163009%_ _%h162999%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163009%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163009%_)))
                           '#t)
                      _%$obj163009%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163009%_)))))
               (_%h163014%_ _%h163012%_))
          (declare (not safe))
          (__hash-ref__% _%h163014%_ _%key163002%_ _%default163005%_))))
    (define thread-local-ref__0
      (lambda (_%key163031%_)
        (let ((_%default163033%_ absent-obj))
          (thread-local-ref__% _%key163031%_ _%default163033%_))))
    (define thread-local-ref
      (lambda _g163612_
        (let ((_g163613_ (let () (declare (not safe)) (##length _g163612_))))
          (cond ((let () (declare (not safe)) (##fx= _g163613_ 1))
                 (apply thread-local-ref__0 _g163612_))
                ((let () (declare (not safe)) (##fx= _g163613_ 2))
                 (apply thread-local-ref__% _g163612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g163612_))))))
    (define thread-local-get
      (lambda (_%key162991%_) (thread-local-ref__% _%key162991%_ '#f)))
    (define thread-local-set!
      (lambda (_%key162957%_ _%value162958%_)
        (let* ((_%tab162960%_ (thread-local-table))
               (_%h162962%_ _%tab162960%_)
               (_%key162965%_ _%key162957%_)
               (_%value162968%_ _%value162958%_)
               (_%h162975%_
                (let ((_%$obj162972%_ _%h162962%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162972%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162972%_)))
                           '#t)
                      _%$obj162972%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162972%_)))))
               (_%h162977%_ _%h162975%_))
          (declare (not safe))
          (__hash-put! _%h162977%_ _%key162965%_ _%value162968%_))))
    (define thread-local-delete!
      (lambda (_%key162928%_)
        (let* ((_%tab162930%_ (thread-local-table))
               (_%h162932%_ _%tab162930%_)
               (_%key162935%_ _%key162928%_)
               (_%h162942%_
                (let ((_%$obj162939%_ _%h162932%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj162939%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj162939%_)))
                           '#t)
                      _%$obj162939%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj162939%_)))))
               (_%h162944%_ _%h162942%_))
          (declare (not safe))
          (__hash-remove! _%h162944%_ _%key162935%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr162853%_ (current-thread)))
          (if (actor-thread? _%thr162853%_)
              (let ((_%$e162856%_ (actor-thread-locals _%thr162853%_)))
                (if _%$e162856%_
                    _%$e162856%_
                    (let ((_%tab162860%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr162853%_ _%tab162860%_)
                      _%tab162860%_)))
              (if (eq? _%thr162853%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e162890%_
                           (let* ((_%h162864%_ __thread-locals)
                                  (_%key162867%_ _%thr162853%_)
                                  (_%h162874%_
                                   (let ((_%$obj162871%_ _%h162864%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj162871%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj162871%_)))
                                              '#t)
                                         _%$obj162871%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj162871%_)))))
                                  (_%h162876%_ _%h162874%_))
                             (declare (not safe))
                             (__hash-get _%h162876%_ _%key162867%_))))
                      (if _%$e162890%_
                          ((lambda (_%tab162893%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab162893%_)
                           _%$e162890%_)
                          (let ((_%tab162896%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h162898%_ __thread-locals)
                                   (_%key162901%_ _%thr162853%_)
                                   (_%value162904%_ _%tab162896%_)
                                   (_%h162911%_
                                    (let ((_%$obj162908%_ _%h162898%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj162908%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj162908%_)))
                                               '#t)
                                          _%$obj162908%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj162908%_)))))
                                   (_%h162913%_ _%h162911%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h162913%_
                               _%key162901%_
                               _%value162904%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab162896%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value162839%_)
        (let ((_%new-value162842%_ _%new-value162839%_))
          (set! __unhandled-actor-exception-hook _%new-value162842%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value162021%_)
        (if ((lambda (_%$obj162025%_)
               (or (not _%$obj162025%_) (procedure? _%$obj162025%_)))
             _%new-value162021%_)
            (let ((_%new-value162032%_ _%new-value162021%_))
              (__unhandled-actor-exception-hook-set! _%new-value162032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value162021%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx162746%_ _%proc162747%_)
        (let* ((_%mx162750%_ _%mx162746%_)
               (_%proc162758%_ _%proc162747%_)
               (_%handler162767%_ (current-exception-handler))
               (_%handler162806%_
                (lambda (_%e162769%_)
                  (let* ((_%handler162771%_ void)
                         (_%thunk162775%_
                          (lambda ()
                            (mutex-unlock! _%mx162750%_)
                            (let ()
                              (declare (not safe))
                              (_%handler162767%_ _%e162769%_))))
                         (_%handler162780%_ _%handler162771%_)
                         (_%thunk162796%_ _%thunk162775%_))
                    (declare (not safe))
                    (__with-catch _%handler162780%_ _%thunk162796%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e162769%_))))
               (_%thunk162812%_
                (lambda ()
                  (mutex-lock! _%mx162750%_)
                  (let ((_%result162810%_
                         (let () (declare (not safe)) (_%proc162758%_))))
                    (mutex-unlock! _%mx162750%_)
                    _%result162810%_)))
               (_%handler162817%_ _%handler162806%_)
               (_%thunk162828%_ _%thunk162812%_))
          (declare (not safe))
          (__with-exception-handler _%handler162817%_ _%thunk162828%_))))
    (define with-lock
      (lambda (_%mx162162%_ _%proc162163%_)
        (if (mutex? _%mx162162%_)
            (let ((_%mx162167%_ _%mx162162%_))
              (if (procedure? _%proc162163%_)
                  (let ((_%proc162177%_ _%proc162163%_))
                    (__with-lock _%mx162167%_ _%proc162177%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162163%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx162162%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx162723%_ _%proc162724%_)
        (let* ((_%mx162727%_ _%mx162723%_) (_%proc162735%_ _%proc162724%_))
          (let ((__tmp163615 (lambda () (mutex-lock! _%mx162727%_)))
                (__tmp163614 (lambda () (mutex-unlock! _%mx162727%_))))
            (declare (not safe))
            (##dynamic-wind __tmp163615 _%proc162735%_ __tmp163614)))))
    (define with-dynamic-lock
      (lambda (_%mx162307%_ _%proc162308%_)
        (if (mutex? _%mx162307%_)
            (let ((_%mx162312%_ _%mx162307%_))
              (if (procedure? _%proc162308%_)
                  (let ((_%proc162322%_ _%proc162308%_))
                    (__with-dynamic-lock _%mx162312%_ _%proc162322%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162308%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx162307%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk162654%_ _%error-port162655%_)
        (let* ((_%thunk162658%_ _%thunk162654%_)
               (_%error-port162666%_ _%error-port162655%_)
               (_%handler162681%_
                (let ((_%E162675%_ (current-exception-handler)))
                  (lambda (_%exn162677%_)
                    (let ((__tmp163616
                           (lambda (_%cont162679%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont162679%_
                                  _%exn162677%_
                                  _%error-port162666%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E162675%_ _%exn162677%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp163616)))))
               (_%thunk162684%_ _%thunk162658%_)
               (_%handler162689%_ _%handler162681%_)
               (_%thunk162703%_ _%thunk162684%_))
          (declare (not safe))
          (__with-exception-handler _%handler162689%_ _%thunk162703%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk162716%_)
        (let ((_%error-port162718%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk162716%_
           _%error-port162718%_))))
    (define __with-exception-stack-trace
      (lambda _g163617_
        (let ((_g163618_ (let () (declare (not safe)) (##length _g163617_))))
          (cond ((let () (declare (not safe)) (##fx= _g163618_ 1))
                 (apply __with-exception-stack-trace__0 _g163617_))
                ((let () (declare (not safe)) (##fx= _g163618_ 2))
                 (apply __with-exception-stack-trace__% _g163617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g163617_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk162453%_ _%error-port162454%_)
        (if (procedure? _%thunk162453%_)
            (let ((_%thunk162458%_ _%thunk162453%_))
              (if (port? _%error-port162454%_)
                  (let ((_%error-port162468%_ _%error-port162454%_))
                    (__with-exception-stack-trace__%
                     _%thunk162458%_
                     _%error-port162468%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port162454%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk162453%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk162481%_)
        (let ((_%error-port162483%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk162481%_
           _%error-port162483%_))))
    (define with-exception-stack-trace
      (lambda _g163619_
        (let ((_g163620_ (let () (declare (not safe)) (##length _g163619_))))
          (cond ((let () (declare (not safe)) (##fx= _g163620_ 1))
                 (apply with-exception-stack-trace__0 _g163619_))
                ((let () (declare (not safe)) (##fx= _g163620_ 2))
                 (apply with-exception-stack-trace__% _g163619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g163619_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont162635%_ _%exn162636%_ _%error-port162637%_)
        (let ((_%out162639%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out162639%_))
          (display '"*** Unhandled exception in " _%out162639%_)
          (display (current-thread) _%out162639%_)
          (newline _%out162639%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn162636%_ _%out162639%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn162636%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out162639%_)
                (newline _%out162639%_)
                (display-continuation-backtrace _%cont162635%_ _%out162639%_)))
          (let ((__tmp163621 (get-output-string _%out162639%_)))
            (declare (not safe))
            (##write-string __tmp163621 _%error-port162637%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont162644%_ _%exn162645%_)
        (let ((_%error-port162647%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont162644%_
           _%exn162645%_
           _%error-port162647%_))))
    (define dump-stack-trace!
      (lambda _g163622_
        (let ((_g163623_ (let () (declare (not safe)) (##length _g163622_))))
          (cond ((let () (declare (not safe)) (##fx= _g163623_ 2))
                 (apply dump-stack-trace!__0 _g163622_))
                ((let () (declare (not safe)) (##fx= _g163623_ 3))
                 (apply dump-stack-trace!__% _g163622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g163622_))))))
    (define __thread-dead?
      (lambda (_%thread162622%_)
        (let ((_%thread162625%_ _%thread162622%_))
          (not (macro-thread-end-condvar _%thread162625%_)))))
    (define thread-dead?
      (lambda (_%thread162608%_)
        (if (thread? _%thread162608%_)
            (let ((_%thread162612%_ _%thread162608%_))
              (__thread-dead? _%thread162612%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread162608%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
