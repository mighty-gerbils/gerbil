(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771178563)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk164369%_ _%name164370%_)
        (let* ((_%thunk164373%_ _%thunk164369%_)
               (_%name164381%_ _%name164370%_))
          (make-thread
           (lambda () (thread-main _%thunk164373%_))
           _%name164381%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk162249%_ _%name162250%_)
        (if (procedure? _%thunk162249%_)
            (let ((_%thunk162254%_ _%thunk162249%_))
              (if (symbol? _%name162250%_)
                  (let ((_%name162264%_ _%name162250%_))
                    (__make-system-thread _%thunk162254%_ _%name162264%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name162250%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk162249%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk164316%_ _%name164317%_)
        (let* ((_%thunk164320%_ _%thunk164316%_)
               (_%name164328%_ _%name164317%_))
          (thread-start!
           (let* ((_%thunk164337%_ _%thunk164320%_)
                  (_%name164340%_ _%name164328%_)
                  (_%thunk164345%_ _%thunk164337%_)
                  (_%name164359%_ _%name164340%_))
             (__make-system-thread _%thunk164345%_ _%name164359%_))))))
    (define system-thread!
      (lambda (_%thunk162394%_ _%name162395%_)
        (if (procedure? _%thunk162394%_)
            (let ((_%thunk162399%_ _%thunk162394%_))
              (if (symbol? _%name162395%_)
                  (let ((_%name162409%_ _%name162395%_))
                    (__system-thread! _%thunk162399%_ _%name162409%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name162395%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk162394%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk164295%_ _%name164296%_)
        (let* ((_%thunk164299%_ _%thunk164295%_)
               (_%name164307%_ _%name164296%_))
          (spawn-actor
           _%thunk164299%_
           '()
           _%name164307%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk162539%_ _%name162540%_)
        (if (procedure? _%thunk162539%_)
            (let ((_%thunk162544%_ _%thunk162539%_))
              (if (symbol? _%name162540%_)
                  (let ((_%name162554%_ _%name162540%_))
                    (__system-actor! _%thunk162544%_ _%name162554%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name162540%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk162539%_)
              '#!void))))
    (define __spawn
      (lambda (_%f164282%_ . _%args164283%_)
        (let ((_%f164286%_ _%f164282%_))
          (spawn-actor _%f164286%_ _%args164283%_ '#!void '#f))))
    (define spawn
      (lambda (_%f162684%_ . _%args162685%_)
        (if (procedure? _%f162684%_)
            (let ((_%f162689%_ _%f162684%_))
              (declare (not safe))
              (##apply __spawn _%f162689%_ _%args162685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f162684%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name164268%_ _%f164269%_ . _%args164270%_)
        (let ((_%f164273%_ _%f164269%_))
          (spawn-actor _%f164273%_ _%args164270%_ _%name164268%_ '#f))))
    (define spawn/name
      (lambda (_%name162819%_ _%f162820%_ . _%args162821%_)
        (if (procedure? _%f162820%_)
            (let ((_%f162825%_ _%f162820%_))
              (declare (not safe))
              (##apply __spawn/name _%name162819%_ _%f162825%_ _%args162821%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f162820%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name164252%_ _%f164253%_ . _%args164254%_)
        (let* ((_%f164257%_ _%f164253%_)
               (_%tgroup164266%_ (make-thread-group _%name164252%_)))
          (spawn-actor
           _%f164257%_
           _%args164254%_
           _%name164252%_
           _%tgroup164266%_))))
    (define spawn/group
      (lambda (_%name162955%_ _%f162956%_ . _%args162957%_)
        (if (procedure? _%f162956%_)
            (let ((_%f162961%_ _%f162956%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name162955%_
                       _%f162961%_
                       _%args162957%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f162956%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f164200%_ _%args164201%_ _%name164202%_ _%tgroup164203%_)
        (let* ((_%thunk164207%_
                (if (null? _%args164201%_)
                    _%f164200%_
                    (lambda () (apply _%f164200%_ _%args164201%_))))
               (_%thunk164243%_
                (lambda ()
                  (let* ((_%thunk164210%_ _%thunk164207%_)
                         (_%error-port164213%_ (current-error-port)))
                    (if (procedure? _%thunk164210%_)
                        (let* ((_%thunk164218%_ _%thunk164210%_)
                               (_%error-port164233%_ _%error-port164213%_))
                          (__with-exception-stack-trace__%
                           _%thunk164218%_
                           _%error-port164233%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk164210%_)
                          '#!void)))))
               (_%tgroup164248%_
                (let ((_%$e164245%_ _%tgroup164203%_))
                  (if _%$e164245%_ _%$e164245%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk164243%_))
            _%name164202%_
            _%tgroup164248%_)))))
    (define spawn-thread__%
      (lambda (_%thunk164177%_ _%name164178%_ _%tgroup164179%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk164177%_))
          _%name164178%_
          _%tgroup164179%_))))
    (define spawn-thread__0
      (lambda (_%thunk164185%_)
        (let* ((_%name164187%_ absent-obj) (_%tgroup164189%_ absent-obj))
          (spawn-thread__% _%thunk164185%_ _%name164187%_ _%tgroup164189%_))))
    (define spawn-thread__1
      (lambda (_%thunk164191%_ _%name164192%_)
        (let ((_%tgroup164194%_ absent-obj))
          (spawn-thread__% _%thunk164191%_ _%name164192%_ _%tgroup164194%_))))
    (define spawn-thread
      (lambda _g164678_
        (let ((_g164679_ (let () (declare (not safe)) (##length _g164678_))))
          (cond ((let () (declare (not safe)) (##fx= _g164679_ 1))
                 (apply spawn-thread__0 _g164678_))
                ((let () (declare (not safe)) (##fx= _g164679_ 2))
                 (apply spawn-thread__1 _g164678_))
                ((let () (declare (not safe)) (##fx= _g164679_ 3))
                 (apply spawn-thread__% _g164678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g164678_))))))
    (define thread-main
      (lambda (_%thunk164108%_)
        (let* ((_%handler164147%_
                (lambda (_%exn164110%_)
                  (let ((__tmp164680
                         (lambda (_%cont164112%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164114%_ void)
                                      (_%thunk164118%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164112%_
                                            _%exn164110%_))))
                                      (_%handler164123%_ _%handler164114%_)
                                      (_%thunk164137%_ _%thunk164118%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler164123%_
                                  _%thunk164137%_))
                               '#!void)
                           (let ((__tmp164681
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164112%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp164681
                              ##primordial-exception-handler
                              _%exn164110%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp164680))))
               (_%thunk164150%_ _%thunk164108%_)
               (_%handler164155%_ _%handler164147%_))
          (if (procedure? _%thunk164150%_)
              (let ((_%thunk164166%_ _%thunk164150%_))
                (declare (not safe))
                (__with-exception-handler _%handler164155%_ _%thunk164166%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk164150%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164064%_ _%default164065%_)
        (let* ((_%tab164067%_ (thread-local-table))
               (_%h164069%_ _%tab164067%_)
               (_%key164072%_ _%key164064%_)
               (_%default164075%_ _%default164065%_)
               (_%h164082%_
                (let ((_%$obj164079%_ _%h164069%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164079%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164079%_)))
                           '#t)
                      _%$obj164079%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164079%_)))))
               (_%h164084%_ _%h164082%_))
          (declare (not safe))
          (__hash-ref__% _%h164084%_ _%key164072%_ _%default164075%_))))
    (define thread-local-ref__0
      (lambda (_%key164101%_)
        (let ((_%default164103%_ absent-obj))
          (thread-local-ref__% _%key164101%_ _%default164103%_))))
    (define thread-local-ref
      (lambda _g164682_
        (let ((_g164683_ (let () (declare (not safe)) (##length _g164682_))))
          (cond ((let () (declare (not safe)) (##fx= _g164683_ 1))
                 (apply thread-local-ref__0 _g164682_))
                ((let () (declare (not safe)) (##fx= _g164683_ 2))
                 (apply thread-local-ref__% _g164682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g164682_))))))
    (define thread-local-get
      (lambda (_%key164061%_) (thread-local-ref__% _%key164061%_ '#f)))
    (define thread-local-set!
      (lambda (_%key164027%_ _%value164028%_)
        (let* ((_%tab164030%_ (thread-local-table))
               (_%h164032%_ _%tab164030%_)
               (_%key164035%_ _%key164027%_)
               (_%value164038%_ _%value164028%_)
               (_%h164045%_
                (let ((_%$obj164042%_ _%h164032%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164042%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164042%_)))
                           '#t)
                      _%$obj164042%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164042%_)))))
               (_%h164047%_ _%h164045%_))
          (declare (not safe))
          (__hash-put! _%h164047%_ _%key164035%_ _%value164038%_))))
    (define thread-local-delete!
      (lambda (_%key163998%_)
        (let* ((_%tab164000%_ (thread-local-table))
               (_%h164002%_ _%tab164000%_)
               (_%key164005%_ _%key163998%_)
               (_%h164012%_
                (let ((_%$obj164009%_ _%h164002%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164009%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164009%_)))
                           '#t)
                      _%$obj164009%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164009%_)))))
               (_%h164014%_ _%h164012%_))
          (declare (not safe))
          (__hash-remove! _%h164014%_ _%key164005%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr163923%_ (current-thread)))
          (if (actor-thread? _%thr163923%_)
              (let ((_%$e163926%_ (actor-thread-locals _%thr163923%_)))
                (if _%$e163926%_
                    _%$e163926%_
                    (let ((_%tab163930%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr163923%_ _%tab163930%_)
                      _%tab163930%_)))
              (if (eq? _%thr163923%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e163960%_
                           (let* ((_%h163934%_ __thread-locals)
                                  (_%key163937%_ _%thr163923%_)
                                  (_%h163944%_
                                   (let ((_%$obj163941%_ _%h163934%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj163941%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj163941%_)))
                                              '#t)
                                         _%$obj163941%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj163941%_)))))
                                  (_%h163946%_ _%h163944%_))
                             (declare (not safe))
                             (__hash-get _%h163946%_ _%key163937%_))))
                      (if _%$e163960%_
                          ((lambda (_%tab163963%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab163963%_)
                           _%$e163960%_)
                          (let ((_%tab163966%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h163968%_ __thread-locals)
                                   (_%key163971%_ _%thr163923%_)
                                   (_%value163974%_ _%tab163966%_)
                                   (_%h163981%_
                                    (let ((_%$obj163978%_ _%h163968%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj163978%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj163978%_)))
                                               '#t)
                                          _%$obj163978%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj163978%_)))))
                                   (_%h163983%_ _%h163981%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h163983%_
                               _%key163971%_
                               _%value163974%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab163966%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value163909%_)
        (let ((_%new-value163912%_ _%new-value163909%_))
          (set! __unhandled-actor-exception-hook _%new-value163912%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163091%_)
        (if ((lambda (_%$obj163095%_)
               (or (not _%$obj163095%_) (procedure? _%$obj163095%_)))
             _%new-value163091%_)
            (let ((_%new-value163102%_ _%new-value163091%_))
              (__unhandled-actor-exception-hook-set! _%new-value163102%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163091%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx163816%_ _%proc163817%_)
        (let* ((_%mx163820%_ _%mx163816%_)
               (_%proc163828%_ _%proc163817%_)
               (_%handler163837%_ (current-exception-handler))
               (_%handler163876%_
                (lambda (_%e163839%_)
                  (let* ((_%handler163841%_ void)
                         (_%thunk163845%_
                          (lambda ()
                            (mutex-unlock! _%mx163820%_)
                            (let ()
                              (declare (not safe))
                              (_%handler163837%_ _%e163839%_))))
                         (_%handler163850%_ _%handler163841%_)
                         (_%thunk163866%_ _%thunk163845%_))
                    (declare (not safe))
                    (__with-catch _%handler163850%_ _%thunk163866%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e163839%_))))
               (_%thunk163882%_
                (lambda ()
                  (mutex-lock! _%mx163820%_)
                  (let ((_%result163880%_
                         (let () (declare (not safe)) (_%proc163828%_))))
                    (mutex-unlock! _%mx163820%_)
                    _%result163880%_)))
               (_%handler163887%_ _%handler163876%_)
               (_%thunk163898%_ _%thunk163882%_))
          (declare (not safe))
          (__with-exception-handler _%handler163887%_ _%thunk163898%_))))
    (define with-lock
      (lambda (_%mx163232%_ _%proc163233%_)
        (if (mutex? _%mx163232%_)
            (let ((_%mx163237%_ _%mx163232%_))
              (if (procedure? _%proc163233%_)
                  (let ((_%proc163247%_ _%proc163233%_))
                    (__with-lock _%mx163237%_ _%proc163247%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163233%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx163232%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx163793%_ _%proc163794%_)
        (let* ((_%mx163797%_ _%mx163793%_) (_%proc163805%_ _%proc163794%_))
          (let ((__tmp164685 (lambda () (mutex-lock! _%mx163797%_)))
                (__tmp164684 (lambda () (mutex-unlock! _%mx163797%_))))
            (declare (not safe))
            (##dynamic-wind __tmp164685 _%proc163805%_ __tmp164684)))))
    (define with-dynamic-lock
      (lambda (_%mx163377%_ _%proc163378%_)
        (if (mutex? _%mx163377%_)
            (let ((_%mx163382%_ _%mx163377%_))
              (if (procedure? _%proc163378%_)
                  (let ((_%proc163392%_ _%proc163378%_))
                    (__with-dynamic-lock _%mx163382%_ _%proc163392%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163378%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx163377%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk163724%_ _%error-port163725%_)
        (let* ((_%thunk163728%_ _%thunk163724%_)
               (_%error-port163736%_ _%error-port163725%_)
               (_%handler163751%_
                (let ((_%E163745%_ (current-exception-handler)))
                  (lambda (_%exn163747%_)
                    (let ((__tmp164686
                           (lambda (_%cont163749%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont163749%_
                                  _%exn163747%_
                                  _%error-port163736%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E163745%_ _%exn163747%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp164686)))))
               (_%thunk163754%_ _%thunk163728%_)
               (_%handler163759%_ _%handler163751%_)
               (_%thunk163773%_ _%thunk163754%_))
          (declare (not safe))
          (__with-exception-handler _%handler163759%_ _%thunk163773%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk163786%_)
        (let ((_%error-port163788%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk163786%_
           _%error-port163788%_))))
    (define __with-exception-stack-trace
      (lambda _g164687_
        (let ((_g164688_ (let () (declare (not safe)) (##length _g164687_))))
          (cond ((let () (declare (not safe)) (##fx= _g164688_ 1))
                 (apply __with-exception-stack-trace__0 _g164687_))
                ((let () (declare (not safe)) (##fx= _g164688_ 2))
                 (apply __with-exception-stack-trace__% _g164687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g164687_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk163523%_ _%error-port163524%_)
        (if (procedure? _%thunk163523%_)
            (let ((_%thunk163528%_ _%thunk163523%_))
              (if (port? _%error-port163524%_)
                  (let ((_%error-port163538%_ _%error-port163524%_))
                    (__with-exception-stack-trace__%
                     _%thunk163528%_
                     _%error-port163538%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port163524%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk163523%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk163551%_)
        (let ((_%error-port163553%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk163551%_
           _%error-port163553%_))))
    (define with-exception-stack-trace
      (lambda _g164689_
        (let ((_g164690_ (let () (declare (not safe)) (##length _g164689_))))
          (cond ((let () (declare (not safe)) (##fx= _g164690_ 1))
                 (apply with-exception-stack-trace__0 _g164689_))
                ((let () (declare (not safe)) (##fx= _g164690_ 2))
                 (apply with-exception-stack-trace__% _g164689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g164689_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont163705%_ _%exn163706%_ _%error-port163707%_)
        (let ((_%out163709%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out163709%_))
          (display '"*** Unhandled exception in " _%out163709%_)
          (display (current-thread) _%out163709%_)
          (newline _%out163709%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn163706%_ _%out163709%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn163706%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out163709%_)
                (newline _%out163709%_)
                (display-continuation-backtrace _%cont163705%_ _%out163709%_)))
          (let ((__tmp164691 (get-output-string _%out163709%_)))
            (declare (not safe))
            (##write-string __tmp164691 _%error-port163707%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont163714%_ _%exn163715%_)
        (let ((_%error-port163717%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont163714%_
           _%exn163715%_
           _%error-port163717%_))))
    (define dump-stack-trace!
      (lambda _g164692_
        (let ((_g164693_ (let () (declare (not safe)) (##length _g164692_))))
          (cond ((let () (declare (not safe)) (##fx= _g164693_ 2))
                 (apply dump-stack-trace!__0 _g164692_))
                ((let () (declare (not safe)) (##fx= _g164693_ 3))
                 (apply dump-stack-trace!__% _g164692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g164692_))))))
    (define __thread-dead?
      (lambda (_%thread163692%_)
        (let ((_%thread163695%_ _%thread163692%_))
          (not (macro-thread-end-condvar _%thread163695%_)))))
    (define thread-dead?
      (lambda (_%thread163678%_)
        (if (thread? _%thread163678%_)
            (let ((_%thread163682%_ _%thread163678%_))
              (__thread-dead? _%thread163682%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread163678%_)
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
