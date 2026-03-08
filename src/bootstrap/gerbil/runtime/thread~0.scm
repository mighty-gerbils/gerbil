(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1773009265)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk164958%_ _%name164959%_)
        (let* ((_%thunk164962%_ _%thunk164958%_)
               (_%name164970%_ _%name164959%_))
          (make-thread
           (lambda () (thread-main _%thunk164962%_))
           _%name164970%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk162838%_ _%name162839%_)
        (if (procedure? _%thunk162838%_)
            (let ((_%thunk162843%_ _%thunk162838%_))
              (if (symbol? _%name162839%_)
                  (let ((_%name162853%_ _%name162839%_))
                    (__make-system-thread _%thunk162843%_ _%name162853%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name162839%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk162838%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk164905%_ _%name164906%_)
        (let* ((_%thunk164909%_ _%thunk164905%_)
               (_%name164917%_ _%name164906%_))
          (thread-start!
           (let* ((_%thunk164926%_ _%thunk164909%_)
                  (_%name164929%_ _%name164917%_)
                  (_%thunk164934%_ _%thunk164926%_)
                  (_%name164948%_ _%name164929%_))
             (__make-system-thread _%thunk164934%_ _%name164948%_))))))
    (define system-thread!
      (lambda (_%thunk162983%_ _%name162984%_)
        (if (procedure? _%thunk162983%_)
            (let ((_%thunk162988%_ _%thunk162983%_))
              (if (symbol? _%name162984%_)
                  (let ((_%name162998%_ _%name162984%_))
                    (__system-thread! _%thunk162988%_ _%name162998%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name162984%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk162983%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk164884%_ _%name164885%_)
        (let* ((_%thunk164888%_ _%thunk164884%_)
               (_%name164896%_ _%name164885%_))
          (spawn-actor
           _%thunk164888%_
           '()
           _%name164896%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk163128%_ _%name163129%_)
        (if (procedure? _%thunk163128%_)
            (let ((_%thunk163133%_ _%thunk163128%_))
              (if (symbol? _%name163129%_)
                  (let ((_%name163143%_ _%name163129%_))
                    (__system-actor! _%thunk163133%_ _%name163143%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name163129%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk163128%_)
              '#!void))))
    (define __spawn
      (lambda (_%f164871%_ . _%args164872%_)
        (let ((_%f164875%_ _%f164871%_))
          (spawn-actor _%f164875%_ _%args164872%_ '#!void '#f))))
    (define spawn
      (lambda (_%f163273%_ . _%args163274%_)
        (if (procedure? _%f163273%_)
            (let ((_%f163278%_ _%f163273%_))
              (declare (not safe))
              (##apply __spawn _%f163278%_ _%args163274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f163273%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name164857%_ _%f164858%_ . _%args164859%_)
        (let ((_%f164862%_ _%f164858%_))
          (spawn-actor _%f164862%_ _%args164859%_ _%name164857%_ '#f))))
    (define spawn/name
      (lambda (_%name163408%_ _%f163409%_ . _%args163410%_)
        (if (procedure? _%f163409%_)
            (let ((_%f163414%_ _%f163409%_))
              (declare (not safe))
              (##apply __spawn/name _%name163408%_ _%f163414%_ _%args163410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f163409%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name164841%_ _%f164842%_ . _%args164843%_)
        (let* ((_%f164846%_ _%f164842%_)
               (_%tgroup164855%_ (make-thread-group _%name164841%_)))
          (spawn-actor
           _%f164846%_
           _%args164843%_
           _%name164841%_
           _%tgroup164855%_))))
    (define spawn/group
      (lambda (_%name163544%_ _%f163545%_ . _%args163546%_)
        (if (procedure? _%f163545%_)
            (let ((_%f163550%_ _%f163545%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name163544%_
                       _%f163550%_
                       _%args163546%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f163545%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f164789%_ _%args164790%_ _%name164791%_ _%tgroup164792%_)
        (let* ((_%thunk164796%_
                (if (null? _%args164790%_)
                    _%f164789%_
                    (lambda () (apply _%f164789%_ _%args164790%_))))
               (_%thunk164832%_
                (lambda ()
                  (let* ((_%thunk164799%_ _%thunk164796%_)
                         (_%error-port164802%_ (current-error-port)))
                    (if (procedure? _%thunk164799%_)
                        (let* ((_%thunk164807%_ _%thunk164799%_)
                               (_%error-port164822%_ _%error-port164802%_))
                          (__with-exception-stack-trace__%
                           _%thunk164807%_
                           _%error-port164822%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk164799%_)
                          '#!void)))))
               (_%tgroup164837%_
                (let ((_%$e164834%_ _%tgroup164792%_))
                  (if _%$e164834%_ _%$e164834%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk164832%_))
            _%name164791%_
            _%tgroup164837%_)))))
    (define spawn-thread__%
      (lambda (_%thunk164766%_ _%name164767%_ _%tgroup164768%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk164766%_))
          _%name164767%_
          _%tgroup164768%_))))
    (define spawn-thread__0
      (lambda (_%thunk164774%_)
        (let* ((_%name164776%_ absent-obj) (_%tgroup164778%_ absent-obj))
          (spawn-thread__% _%thunk164774%_ _%name164776%_ _%tgroup164778%_))))
    (define spawn-thread__1
      (lambda (_%thunk164780%_ _%name164781%_)
        (let ((_%tgroup164783%_ absent-obj))
          (spawn-thread__% _%thunk164780%_ _%name164781%_ _%tgroup164783%_))))
    (define spawn-thread
      (lambda _g165267_
        (let ((_g165268_ (let () (declare (not safe)) (##length _g165267_))))
          (cond ((let () (declare (not safe)) (##fx= _g165268_ 1))
                 (apply spawn-thread__0 _g165267_))
                ((let () (declare (not safe)) (##fx= _g165268_ 2))
                 (apply spawn-thread__1 _g165267_))
                ((let () (declare (not safe)) (##fx= _g165268_ 3))
                 (apply spawn-thread__% _g165267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g165267_))))))
    (define thread-main
      (lambda (_%thunk164697%_)
        (let* ((_%handler164736%_
                (lambda (_%exn164699%_)
                  (let ((__tmp165269
                         (lambda (_%cont164701%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164703%_ void)
                                      (_%thunk164707%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164701%_
                                            _%exn164699%_))))
                                      (_%handler164712%_ _%handler164703%_)
                                      (_%thunk164726%_ _%thunk164707%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler164712%_
                                  _%thunk164726%_))
                               '#!void)
                           (let ((__tmp165270
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164701%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp165270
                              ##primordial-exception-handler
                              _%exn164699%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165269))))
               (_%thunk164739%_ _%thunk164697%_)
               (_%handler164744%_ _%handler164736%_))
          (if (procedure? _%thunk164739%_)
              (let ((_%thunk164755%_ _%thunk164739%_))
                (declare (not safe))
                (__with-exception-handler _%handler164744%_ _%thunk164755%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk164739%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164653%_ _%default164654%_)
        (let* ((_%tab164656%_ (thread-local-table))
               (_%h164658%_ _%tab164656%_)
               (_%key164661%_ _%key164653%_)
               (_%default164664%_ _%default164654%_)
               (_%h164671%_
                (let ((_%$obj164668%_ _%h164658%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164668%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164668%_)))
                           '#t)
                      _%$obj164668%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164668%_)))))
               (_%h164673%_ _%h164671%_))
          (declare (not safe))
          (__hash-ref__% _%h164673%_ _%key164661%_ _%default164664%_))))
    (define thread-local-ref__0
      (lambda (_%key164690%_)
        (let ((_%default164692%_ absent-obj))
          (thread-local-ref__% _%key164690%_ _%default164692%_))))
    (define thread-local-ref
      (lambda _g165271_
        (let ((_g165272_ (let () (declare (not safe)) (##length _g165271_))))
          (cond ((let () (declare (not safe)) (##fx= _g165272_ 1))
                 (apply thread-local-ref__0 _g165271_))
                ((let () (declare (not safe)) (##fx= _g165272_ 2))
                 (apply thread-local-ref__% _g165271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g165271_))))))
    (define thread-local-get
      (lambda (_%key164650%_) (thread-local-ref__% _%key164650%_ '#f)))
    (define thread-local-set!
      (lambda (_%key164616%_ _%value164617%_)
        (let* ((_%tab164619%_ (thread-local-table))
               (_%h164621%_ _%tab164619%_)
               (_%key164624%_ _%key164616%_)
               (_%value164627%_ _%value164617%_)
               (_%h164634%_
                (let ((_%$obj164631%_ _%h164621%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164631%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164631%_)))
                           '#t)
                      _%$obj164631%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164631%_)))))
               (_%h164636%_ _%h164634%_))
          (declare (not safe))
          (__hash-put! _%h164636%_ _%key164624%_ _%value164627%_))))
    (define thread-local-delete!
      (lambda (_%key164587%_)
        (let* ((_%tab164589%_ (thread-local-table))
               (_%h164591%_ _%tab164589%_)
               (_%key164594%_ _%key164587%_)
               (_%h164601%_
                (let ((_%$obj164598%_ _%h164591%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164598%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164598%_)))
                           '#t)
                      _%$obj164598%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164598%_)))))
               (_%h164603%_ _%h164601%_))
          (declare (not safe))
          (__hash-remove! _%h164603%_ _%key164594%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr164512%_ (current-thread)))
          (if (actor-thread? _%thr164512%_)
              (let ((_%$e164515%_ (actor-thread-locals _%thr164512%_)))
                (if _%$e164515%_
                    _%$e164515%_
                    (let ((_%tab164519%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr164512%_ _%tab164519%_)
                      _%tab164519%_)))
              (if (eq? _%thr164512%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e164549%_
                           (let* ((_%h164523%_ __thread-locals)
                                  (_%key164526%_ _%thr164512%_)
                                  (_%h164533%_
                                   (let ((_%$obj164530%_ _%h164523%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj164530%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj164530%_)))
                                              '#t)
                                         _%$obj164530%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj164530%_)))))
                                  (_%h164535%_ _%h164533%_))
                             (declare (not safe))
                             (__hash-get _%h164535%_ _%key164526%_))))
                      (if _%$e164549%_
                          ((lambda (_%tab164552%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab164552%_)
                           _%$e164549%_)
                          (let ((_%tab164555%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h164557%_ __thread-locals)
                                   (_%key164560%_ _%thr164512%_)
                                   (_%value164563%_ _%tab164555%_)
                                   (_%h164570%_
                                    (let ((_%$obj164567%_ _%h164557%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj164567%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj164567%_)))
                                               '#t)
                                          _%$obj164567%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj164567%_)))))
                                   (_%h164572%_ _%h164570%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h164572%_
                               _%key164560%_
                               _%value164563%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab164555%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value164498%_)
        (let ((_%new-value164501%_ _%new-value164498%_))
          (set! __unhandled-actor-exception-hook _%new-value164501%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163680%_)
        (if ((lambda (_%$obj163684%_)
               (or (not _%$obj163684%_) (procedure? _%$obj163684%_)))
             _%new-value163680%_)
            (let ((_%new-value163691%_ _%new-value163680%_))
              (__unhandled-actor-exception-hook-set! _%new-value163691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163680%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx164405%_ _%proc164406%_)
        (let* ((_%mx164409%_ _%mx164405%_)
               (_%proc164417%_ _%proc164406%_)
               (_%handler164426%_ (current-exception-handler))
               (_%handler164465%_
                (lambda (_%e164428%_)
                  (let* ((_%handler164430%_ void)
                         (_%thunk164434%_
                          (lambda ()
                            (mutex-unlock! _%mx164409%_)
                            (let ()
                              (declare (not safe))
                              (_%handler164426%_ _%e164428%_))))
                         (_%handler164439%_ _%handler164430%_)
                         (_%thunk164455%_ _%thunk164434%_))
                    (declare (not safe))
                    (__with-catch _%handler164439%_ _%thunk164455%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e164428%_))))
               (_%thunk164471%_
                (lambda ()
                  (mutex-lock! _%mx164409%_)
                  (let ((_%result164469%_
                         (let () (declare (not safe)) (_%proc164417%_))))
                    (mutex-unlock! _%mx164409%_)
                    _%result164469%_)))
               (_%handler164476%_ _%handler164465%_)
               (_%thunk164487%_ _%thunk164471%_))
          (declare (not safe))
          (__with-exception-handler _%handler164476%_ _%thunk164487%_))))
    (define with-lock
      (lambda (_%mx163821%_ _%proc163822%_)
        (if (mutex? _%mx163821%_)
            (let ((_%mx163826%_ _%mx163821%_))
              (if (procedure? _%proc163822%_)
                  (let ((_%proc163836%_ _%proc163822%_))
                    (__with-lock _%mx163826%_ _%proc163836%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163822%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx163821%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx164382%_ _%proc164383%_)
        (let* ((_%mx164386%_ _%mx164382%_) (_%proc164394%_ _%proc164383%_))
          (let ((__tmp165274 (lambda () (mutex-lock! _%mx164386%_)))
                (__tmp165273 (lambda () (mutex-unlock! _%mx164386%_))))
            (declare (not safe))
            (##dynamic-wind __tmp165274 _%proc164394%_ __tmp165273)))))
    (define with-dynamic-lock
      (lambda (_%mx163966%_ _%proc163967%_)
        (if (mutex? _%mx163966%_)
            (let ((_%mx163971%_ _%mx163966%_))
              (if (procedure? _%proc163967%_)
                  (let ((_%proc163981%_ _%proc163967%_))
                    (__with-dynamic-lock _%mx163971%_ _%proc163981%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163967%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx163966%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk164313%_ _%error-port164314%_)
        (let* ((_%thunk164317%_ _%thunk164313%_)
               (_%error-port164325%_ _%error-port164314%_)
               (_%handler164340%_
                (let ((_%E164334%_ (current-exception-handler)))
                  (lambda (_%exn164336%_)
                    (let ((__tmp165275
                           (lambda (_%cont164338%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont164338%_
                                  _%exn164336%_
                                  _%error-port164325%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E164334%_ _%exn164336%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp165275)))))
               (_%thunk164343%_ _%thunk164317%_)
               (_%handler164348%_ _%handler164340%_)
               (_%thunk164362%_ _%thunk164343%_))
          (declare (not safe))
          (__with-exception-handler _%handler164348%_ _%thunk164362%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk164375%_)
        (let ((_%error-port164377%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk164375%_
           _%error-port164377%_))))
    (define __with-exception-stack-trace
      (lambda _g165276_
        (let ((_g165277_ (let () (declare (not safe)) (##length _g165276_))))
          (cond ((let () (declare (not safe)) (##fx= _g165277_ 1))
                 (apply __with-exception-stack-trace__0 _g165276_))
                ((let () (declare (not safe)) (##fx= _g165277_ 2))
                 (apply __with-exception-stack-trace__% _g165276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g165276_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk164112%_ _%error-port164113%_)
        (if (procedure? _%thunk164112%_)
            (let ((_%thunk164117%_ _%thunk164112%_))
              (if (port? _%error-port164113%_)
                  (let ((_%error-port164127%_ _%error-port164113%_))
                    (__with-exception-stack-trace__%
                     _%thunk164117%_
                     _%error-port164127%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port164113%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk164112%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk164140%_)
        (let ((_%error-port164142%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk164140%_
           _%error-port164142%_))))
    (define with-exception-stack-trace
      (lambda _g165278_
        (let ((_g165279_ (let () (declare (not safe)) (##length _g165278_))))
          (cond ((let () (declare (not safe)) (##fx= _g165279_ 1))
                 (apply with-exception-stack-trace__0 _g165278_))
                ((let () (declare (not safe)) (##fx= _g165279_ 2))
                 (apply with-exception-stack-trace__% _g165278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g165278_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont164294%_ _%exn164295%_ _%error-port164296%_)
        (let ((_%out164298%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out164298%_))
          (display '"*** Unhandled exception in " _%out164298%_)
          (display (current-thread) _%out164298%_)
          (newline _%out164298%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn164295%_ _%out164298%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn164295%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out164298%_)
                (newline _%out164298%_)
                (display-continuation-backtrace _%cont164294%_ _%out164298%_)))
          (let ((__tmp165280 (get-output-string _%out164298%_)))
            (declare (not safe))
            (##write-string __tmp165280 _%error-port164296%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont164303%_ _%exn164304%_)
        (let ((_%error-port164306%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont164303%_
           _%exn164304%_
           _%error-port164306%_))))
    (define dump-stack-trace!
      (lambda _g165281_
        (let ((_g165282_ (let () (declare (not safe)) (##length _g165281_))))
          (cond ((let () (declare (not safe)) (##fx= _g165282_ 2))
                 (apply dump-stack-trace!__0 _g165281_))
                ((let () (declare (not safe)) (##fx= _g165282_ 3))
                 (apply dump-stack-trace!__% _g165281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g165281_))))))
    (define __thread-dead?
      (lambda (_%thread164281%_)
        (let ((_%thread164284%_ _%thread164281%_))
          (not (macro-thread-end-condvar _%thread164284%_)))))
    (define thread-dead?
      (lambda (_%thread164267%_)
        (if (thread? _%thread164267%_)
            (let ((_%thread164271%_ _%thread164267%_))
              (__thread-dead? _%thread164271%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread164267%_)
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
