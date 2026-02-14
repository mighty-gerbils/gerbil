(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771101399)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk164316%_ _%name164317%_)
        (let* ((_%thunk164320%_ _%thunk164316%_)
               (_%name164328%_ _%name164317%_))
          (make-thread
           (lambda () (thread-main _%thunk164320%_))
           _%name164328%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk162196%_ _%name162197%_)
        (if (procedure? _%thunk162196%_)
            (let ((_%thunk162201%_ _%thunk162196%_))
              (if (symbol? _%name162197%_)
                  (let ((_%name162211%_ _%name162197%_))
                    (__make-system-thread _%thunk162201%_ _%name162211%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name162197%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk162196%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk164263%_ _%name164264%_)
        (let* ((_%thunk164267%_ _%thunk164263%_)
               (_%name164275%_ _%name164264%_))
          (thread-start!
           (let* ((_%thunk164284%_ _%thunk164267%_)
                  (_%name164287%_ _%name164275%_)
                  (_%thunk164292%_ _%thunk164284%_)
                  (_%name164306%_ _%name164287%_))
             (__make-system-thread _%thunk164292%_ _%name164306%_))))))
    (define system-thread!
      (lambda (_%thunk162341%_ _%name162342%_)
        (if (procedure? _%thunk162341%_)
            (let ((_%thunk162346%_ _%thunk162341%_))
              (if (symbol? _%name162342%_)
                  (let ((_%name162356%_ _%name162342%_))
                    (__system-thread! _%thunk162346%_ _%name162356%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name162342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk162341%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk164242%_ _%name164243%_)
        (let* ((_%thunk164246%_ _%thunk164242%_)
               (_%name164254%_ _%name164243%_))
          (spawn-actor
           _%thunk164246%_
           '()
           _%name164254%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk162486%_ _%name162487%_)
        (if (procedure? _%thunk162486%_)
            (let ((_%thunk162491%_ _%thunk162486%_))
              (if (symbol? _%name162487%_)
                  (let ((_%name162501%_ _%name162487%_))
                    (__system-actor! _%thunk162491%_ _%name162501%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name162487%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk162486%_)
              '#!void))))
    (define __spawn
      (lambda (_%f164229%_ . _%args164230%_)
        (let ((_%f164233%_ _%f164229%_))
          (spawn-actor _%f164233%_ _%args164230%_ '#!void '#f))))
    (define spawn
      (lambda (_%f162631%_ . _%args162632%_)
        (if (procedure? _%f162631%_)
            (let ((_%f162636%_ _%f162631%_))
              (declare (not safe))
              (##apply __spawn _%f162636%_ _%args162632%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f162631%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name164215%_ _%f164216%_ . _%args164217%_)
        (let ((_%f164220%_ _%f164216%_))
          (spawn-actor _%f164220%_ _%args164217%_ _%name164215%_ '#f))))
    (define spawn/name
      (lambda (_%name162766%_ _%f162767%_ . _%args162768%_)
        (if (procedure? _%f162767%_)
            (let ((_%f162772%_ _%f162767%_))
              (declare (not safe))
              (##apply __spawn/name _%name162766%_ _%f162772%_ _%args162768%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f162767%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name164199%_ _%f164200%_ . _%args164201%_)
        (let* ((_%f164204%_ _%f164200%_)
               (_%tgroup164213%_ (make-thread-group _%name164199%_)))
          (spawn-actor
           _%f164204%_
           _%args164201%_
           _%name164199%_
           _%tgroup164213%_))))
    (define spawn/group
      (lambda (_%name162902%_ _%f162903%_ . _%args162904%_)
        (if (procedure? _%f162903%_)
            (let ((_%f162908%_ _%f162903%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name162902%_
                       _%f162908%_
                       _%args162904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f162903%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f164147%_ _%args164148%_ _%name164149%_ _%tgroup164150%_)
        (let* ((_%thunk164154%_
                (if (null? _%args164148%_)
                    _%f164147%_
                    (lambda () (apply _%f164147%_ _%args164148%_))))
               (_%thunk164190%_
                (lambda ()
                  (let* ((_%thunk164157%_ _%thunk164154%_)
                         (_%error-port164160%_ (current-error-port)))
                    (if (procedure? _%thunk164157%_)
                        (let* ((_%thunk164165%_ _%thunk164157%_)
                               (_%error-port164180%_ _%error-port164160%_))
                          (__with-exception-stack-trace__%
                           _%thunk164165%_
                           _%error-port164180%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk164157%_)
                          '#!void)))))
               (_%tgroup164195%_
                (let ((_%$e164192%_ _%tgroup164150%_))
                  (if _%$e164192%_ _%$e164192%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk164190%_))
            _%name164149%_
            _%tgroup164195%_)))))
    (define spawn-thread__%
      (lambda (_%thunk164124%_ _%name164125%_ _%tgroup164126%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk164124%_))
          _%name164125%_
          _%tgroup164126%_))))
    (define spawn-thread__0
      (lambda (_%thunk164132%_)
        (let* ((_%name164134%_ absent-obj) (_%tgroup164136%_ absent-obj))
          (spawn-thread__% _%thunk164132%_ _%name164134%_ _%tgroup164136%_))))
    (define spawn-thread__1
      (lambda (_%thunk164138%_ _%name164139%_)
        (let ((_%tgroup164141%_ absent-obj))
          (spawn-thread__% _%thunk164138%_ _%name164139%_ _%tgroup164141%_))))
    (define spawn-thread
      (lambda _g164625_
        (let ((_g164626_ (let () (declare (not safe)) (##length _g164625_))))
          (cond ((let () (declare (not safe)) (##fx= _g164626_ 1))
                 (apply spawn-thread__0 _g164625_))
                ((let () (declare (not safe)) (##fx= _g164626_ 2))
                 (apply spawn-thread__1 _g164625_))
                ((let () (declare (not safe)) (##fx= _g164626_ 3))
                 (apply spawn-thread__% _g164625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g164625_))))))
    (define thread-main
      (lambda (_%thunk164055%_)
        (let* ((_%handler164094%_
                (lambda (_%exn164057%_)
                  (let ((__tmp164627
                         (lambda (_%cont164059%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164061%_ void)
                                      (_%thunk164065%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164059%_
                                            _%exn164057%_))))
                                      (_%handler164070%_ _%handler164061%_)
                                      (_%thunk164084%_ _%thunk164065%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler164070%_
                                  _%thunk164084%_))
                               '#!void)
                           (let ((__tmp164628
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164059%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp164628
                              ##primordial-exception-handler
                              _%exn164057%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp164627))))
               (_%thunk164097%_ _%thunk164055%_)
               (_%handler164102%_ _%handler164094%_))
          (if (procedure? _%thunk164097%_)
              (let ((_%thunk164113%_ _%thunk164097%_))
                (declare (not safe))
                (__with-exception-handler _%handler164102%_ _%thunk164113%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk164097%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164011%_ _%default164012%_)
        (let* ((_%tab164014%_ (thread-local-table))
               (_%h164016%_ _%tab164014%_)
               (_%key164019%_ _%key164011%_)
               (_%default164022%_ _%default164012%_)
               (_%h164029%_
                (let ((_%$obj164026%_ _%h164016%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164026%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164026%_)))
                           '#t)
                      _%$obj164026%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164026%_)))))
               (_%h164031%_ _%h164029%_))
          (declare (not safe))
          (__hash-ref__% _%h164031%_ _%key164019%_ _%default164022%_))))
    (define thread-local-ref__0
      (lambda (_%key164048%_)
        (let ((_%default164050%_ absent-obj))
          (thread-local-ref__% _%key164048%_ _%default164050%_))))
    (define thread-local-ref
      (lambda _g164629_
        (let ((_g164630_ (let () (declare (not safe)) (##length _g164629_))))
          (cond ((let () (declare (not safe)) (##fx= _g164630_ 1))
                 (apply thread-local-ref__0 _g164629_))
                ((let () (declare (not safe)) (##fx= _g164630_ 2))
                 (apply thread-local-ref__% _g164629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g164629_))))))
    (define thread-local-get
      (lambda (_%key164008%_) (thread-local-ref__% _%key164008%_ '#f)))
    (define thread-local-set!
      (lambda (_%key163974%_ _%value163975%_)
        (let* ((_%tab163977%_ (thread-local-table))
               (_%h163979%_ _%tab163977%_)
               (_%key163982%_ _%key163974%_)
               (_%value163985%_ _%value163975%_)
               (_%h163992%_
                (let ((_%$obj163989%_ _%h163979%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163989%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163989%_)))
                           '#t)
                      _%$obj163989%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163989%_)))))
               (_%h163994%_ _%h163992%_))
          (declare (not safe))
          (__hash-put! _%h163994%_ _%key163982%_ _%value163985%_))))
    (define thread-local-delete!
      (lambda (_%key163945%_)
        (let* ((_%tab163947%_ (thread-local-table))
               (_%h163949%_ _%tab163947%_)
               (_%key163952%_ _%key163945%_)
               (_%h163959%_
                (let ((_%$obj163956%_ _%h163949%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163956%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163956%_)))
                           '#t)
                      _%$obj163956%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163956%_)))))
               (_%h163961%_ _%h163959%_))
          (declare (not safe))
          (__hash-remove! _%h163961%_ _%key163952%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr163870%_ (current-thread)))
          (if (actor-thread? _%thr163870%_)
              (let ((_%$e163873%_ (actor-thread-locals _%thr163870%_)))
                (if _%$e163873%_
                    _%$e163873%_
                    (let ((_%tab163877%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr163870%_ _%tab163877%_)
                      _%tab163877%_)))
              (if (eq? _%thr163870%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e163907%_
                           (let* ((_%h163881%_ __thread-locals)
                                  (_%key163884%_ _%thr163870%_)
                                  (_%h163891%_
                                   (let ((_%$obj163888%_ _%h163881%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj163888%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj163888%_)))
                                              '#t)
                                         _%$obj163888%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj163888%_)))))
                                  (_%h163893%_ _%h163891%_))
                             (declare (not safe))
                             (__hash-get _%h163893%_ _%key163884%_))))
                      (if _%$e163907%_
                          ((lambda (_%tab163910%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab163910%_)
                           _%$e163907%_)
                          (let ((_%tab163913%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h163915%_ __thread-locals)
                                   (_%key163918%_ _%thr163870%_)
                                   (_%value163921%_ _%tab163913%_)
                                   (_%h163928%_
                                    (let ((_%$obj163925%_ _%h163915%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj163925%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj163925%_)))
                                               '#t)
                                          _%$obj163925%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj163925%_)))))
                                   (_%h163930%_ _%h163928%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h163930%_
                               _%key163918%_
                               _%value163921%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab163913%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value163856%_)
        (let ((_%new-value163859%_ _%new-value163856%_))
          (set! __unhandled-actor-exception-hook _%new-value163859%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163038%_)
        (if ((lambda (_%$obj163042%_)
               (or (not _%$obj163042%_) (procedure? _%$obj163042%_)))
             _%new-value163038%_)
            (let ((_%new-value163049%_ _%new-value163038%_))
              (__unhandled-actor-exception-hook-set! _%new-value163049%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163038%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx163763%_ _%proc163764%_)
        (let* ((_%mx163767%_ _%mx163763%_)
               (_%proc163775%_ _%proc163764%_)
               (_%handler163784%_ (current-exception-handler))
               (_%handler163823%_
                (lambda (_%e163786%_)
                  (let* ((_%handler163788%_ void)
                         (_%thunk163792%_
                          (lambda ()
                            (mutex-unlock! _%mx163767%_)
                            (let ()
                              (declare (not safe))
                              (_%handler163784%_ _%e163786%_))))
                         (_%handler163797%_ _%handler163788%_)
                         (_%thunk163813%_ _%thunk163792%_))
                    (declare (not safe))
                    (__with-catch _%handler163797%_ _%thunk163813%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e163786%_))))
               (_%thunk163829%_
                (lambda ()
                  (mutex-lock! _%mx163767%_)
                  (let ((_%result163827%_
                         (let () (declare (not safe)) (_%proc163775%_))))
                    (mutex-unlock! _%mx163767%_)
                    _%result163827%_)))
               (_%handler163834%_ _%handler163823%_)
               (_%thunk163845%_ _%thunk163829%_))
          (declare (not safe))
          (__with-exception-handler _%handler163834%_ _%thunk163845%_))))
    (define with-lock
      (lambda (_%mx163179%_ _%proc163180%_)
        (if (mutex? _%mx163179%_)
            (let ((_%mx163184%_ _%mx163179%_))
              (if (procedure? _%proc163180%_)
                  (let ((_%proc163194%_ _%proc163180%_))
                    (__with-lock _%mx163184%_ _%proc163194%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163180%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx163179%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx163740%_ _%proc163741%_)
        (let* ((_%mx163744%_ _%mx163740%_) (_%proc163752%_ _%proc163741%_))
          (let ((__tmp164632 (lambda () (mutex-lock! _%mx163744%_)))
                (__tmp164631 (lambda () (mutex-unlock! _%mx163744%_))))
            (declare (not safe))
            (##dynamic-wind __tmp164632 _%proc163752%_ __tmp164631)))))
    (define with-dynamic-lock
      (lambda (_%mx163324%_ _%proc163325%_)
        (if (mutex? _%mx163324%_)
            (let ((_%mx163329%_ _%mx163324%_))
              (if (procedure? _%proc163325%_)
                  (let ((_%proc163339%_ _%proc163325%_))
                    (__with-dynamic-lock _%mx163329%_ _%proc163339%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163325%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx163324%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk163671%_ _%error-port163672%_)
        (let* ((_%thunk163675%_ _%thunk163671%_)
               (_%error-port163683%_ _%error-port163672%_)
               (_%handler163698%_
                (let ((_%E163692%_ (current-exception-handler)))
                  (lambda (_%exn163694%_)
                    (let ((__tmp164633
                           (lambda (_%cont163696%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont163696%_
                                  _%exn163694%_
                                  _%error-port163683%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E163692%_ _%exn163694%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp164633)))))
               (_%thunk163701%_ _%thunk163675%_)
               (_%handler163706%_ _%handler163698%_)
               (_%thunk163720%_ _%thunk163701%_))
          (declare (not safe))
          (__with-exception-handler _%handler163706%_ _%thunk163720%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk163733%_)
        (let ((_%error-port163735%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk163733%_
           _%error-port163735%_))))
    (define __with-exception-stack-trace
      (lambda _g164634_
        (let ((_g164635_ (let () (declare (not safe)) (##length _g164634_))))
          (cond ((let () (declare (not safe)) (##fx= _g164635_ 1))
                 (apply __with-exception-stack-trace__0 _g164634_))
                ((let () (declare (not safe)) (##fx= _g164635_ 2))
                 (apply __with-exception-stack-trace__% _g164634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g164634_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk163470%_ _%error-port163471%_)
        (if (procedure? _%thunk163470%_)
            (let ((_%thunk163475%_ _%thunk163470%_))
              (if (port? _%error-port163471%_)
                  (let ((_%error-port163485%_ _%error-port163471%_))
                    (__with-exception-stack-trace__%
                     _%thunk163475%_
                     _%error-port163485%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port163471%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk163470%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk163498%_)
        (let ((_%error-port163500%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk163498%_
           _%error-port163500%_))))
    (define with-exception-stack-trace
      (lambda _g164636_
        (let ((_g164637_ (let () (declare (not safe)) (##length _g164636_))))
          (cond ((let () (declare (not safe)) (##fx= _g164637_ 1))
                 (apply with-exception-stack-trace__0 _g164636_))
                ((let () (declare (not safe)) (##fx= _g164637_ 2))
                 (apply with-exception-stack-trace__% _g164636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g164636_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont163652%_ _%exn163653%_ _%error-port163654%_)
        (let ((_%out163656%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out163656%_))
          (display '"*** Unhandled exception in " _%out163656%_)
          (display (current-thread) _%out163656%_)
          (newline _%out163656%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn163653%_ _%out163656%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn163653%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out163656%_)
                (newline _%out163656%_)
                (display-continuation-backtrace _%cont163652%_ _%out163656%_)))
          (let ((__tmp164638 (get-output-string _%out163656%_)))
            (declare (not safe))
            (##write-string __tmp164638 _%error-port163654%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont163661%_ _%exn163662%_)
        (let ((_%error-port163664%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont163661%_
           _%exn163662%_
           _%error-port163664%_))))
    (define dump-stack-trace!
      (lambda _g164639_
        (let ((_g164640_ (let () (declare (not safe)) (##length _g164639_))))
          (cond ((let () (declare (not safe)) (##fx= _g164640_ 2))
                 (apply dump-stack-trace!__0 _g164639_))
                ((let () (declare (not safe)) (##fx= _g164640_ 3))
                 (apply dump-stack-trace!__% _g164639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g164639_))))))
    (define __thread-dead?
      (lambda (_%thread163639%_)
        (let ((_%thread163642%_ _%thread163639%_))
          (not (macro-thread-end-condvar _%thread163642%_)))))
    (define thread-dead?
      (lambda (_%thread163625%_)
        (if (thread? _%thread163625%_)
            (let ((_%thread163629%_ _%thread163625%_))
              (__thread-dead? _%thread163629%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread163625%_)
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
