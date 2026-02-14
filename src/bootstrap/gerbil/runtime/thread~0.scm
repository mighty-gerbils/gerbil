(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771092627)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk163889%_ _%name163890%_)
        (let* ((_%thunk163893%_ _%thunk163889%_)
               (_%name163901%_ _%name163890%_))
          (make-thread
           (lambda () (thread-main _%thunk163893%_))
           _%name163901%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk161769%_ _%name161770%_)
        (if (procedure? _%thunk161769%_)
            (let ((_%thunk161774%_ _%thunk161769%_))
              (if (symbol? _%name161770%_)
                  (let ((_%name161784%_ _%name161770%_))
                    (__make-system-thread _%thunk161774%_ _%name161784%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name161770%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk161769%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk163836%_ _%name163837%_)
        (let* ((_%thunk163840%_ _%thunk163836%_)
               (_%name163848%_ _%name163837%_))
          (thread-start!
           (let* ((_%thunk163857%_ _%thunk163840%_)
                  (_%name163860%_ _%name163848%_)
                  (_%thunk163865%_ _%thunk163857%_)
                  (_%name163879%_ _%name163860%_))
             (__make-system-thread _%thunk163865%_ _%name163879%_))))))
    (define system-thread!
      (lambda (_%thunk161914%_ _%name161915%_)
        (if (procedure? _%thunk161914%_)
            (let ((_%thunk161919%_ _%thunk161914%_))
              (if (symbol? _%name161915%_)
                  (let ((_%name161929%_ _%name161915%_))
                    (__system-thread! _%thunk161919%_ _%name161929%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name161915%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk161914%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk163815%_ _%name163816%_)
        (let* ((_%thunk163819%_ _%thunk163815%_)
               (_%name163827%_ _%name163816%_))
          (spawn-actor
           _%thunk163819%_
           '()
           _%name163827%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk162059%_ _%name162060%_)
        (if (procedure? _%thunk162059%_)
            (let ((_%thunk162064%_ _%thunk162059%_))
              (if (symbol? _%name162060%_)
                  (let ((_%name162074%_ _%name162060%_))
                    (__system-actor! _%thunk162064%_ _%name162074%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name162060%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk162059%_)
              '#!void))))
    (define __spawn
      (lambda (_%f163802%_ . _%args163803%_)
        (let ((_%f163806%_ _%f163802%_))
          (spawn-actor _%f163806%_ _%args163803%_ '#!void '#f))))
    (define spawn
      (lambda (_%f162204%_ . _%args162205%_)
        (if (procedure? _%f162204%_)
            (let ((_%f162209%_ _%f162204%_))
              (declare (not safe))
              (##apply __spawn _%f162209%_ _%args162205%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f162204%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name163788%_ _%f163789%_ . _%args163790%_)
        (let ((_%f163793%_ _%f163789%_))
          (spawn-actor _%f163793%_ _%args163790%_ _%name163788%_ '#f))))
    (define spawn/name
      (lambda (_%name162339%_ _%f162340%_ . _%args162341%_)
        (if (procedure? _%f162340%_)
            (let ((_%f162345%_ _%f162340%_))
              (declare (not safe))
              (##apply __spawn/name _%name162339%_ _%f162345%_ _%args162341%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f162340%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name163772%_ _%f163773%_ . _%args163774%_)
        (let* ((_%f163777%_ _%f163773%_)
               (_%tgroup163786%_ (make-thread-group _%name163772%_)))
          (spawn-actor
           _%f163777%_
           _%args163774%_
           _%name163772%_
           _%tgroup163786%_))))
    (define spawn/group
      (lambda (_%name162475%_ _%f162476%_ . _%args162477%_)
        (if (procedure? _%f162476%_)
            (let ((_%f162481%_ _%f162476%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name162475%_
                       _%f162481%_
                       _%args162477%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f162476%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f163720%_ _%args163721%_ _%name163722%_ _%tgroup163723%_)
        (let* ((_%thunk163727%_
                (if (null? _%args163721%_)
                    _%f163720%_
                    (lambda () (apply _%f163720%_ _%args163721%_))))
               (_%thunk163763%_
                (lambda ()
                  (let* ((_%thunk163730%_ _%thunk163727%_)
                         (_%error-port163733%_ (current-error-port)))
                    (if (procedure? _%thunk163730%_)
                        (let* ((_%thunk163738%_ _%thunk163730%_)
                               (_%error-port163753%_ _%error-port163733%_))
                          (__with-exception-stack-trace__%
                           _%thunk163738%_
                           _%error-port163753%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk163730%_)
                          '#!void)))))
               (_%tgroup163768%_
                (let ((_%$e163765%_ _%tgroup163723%_))
                  (if _%$e163765%_ _%$e163765%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk163763%_))
            _%name163722%_
            _%tgroup163768%_)))))
    (define spawn-thread__%
      (lambda (_%thunk163697%_ _%name163698%_ _%tgroup163699%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk163697%_))
          _%name163698%_
          _%tgroup163699%_))))
    (define spawn-thread__0
      (lambda (_%thunk163705%_)
        (let* ((_%name163707%_ absent-obj) (_%tgroup163709%_ absent-obj))
          (spawn-thread__% _%thunk163705%_ _%name163707%_ _%tgroup163709%_))))
    (define spawn-thread__1
      (lambda (_%thunk163711%_ _%name163712%_)
        (let ((_%tgroup163714%_ absent-obj))
          (spawn-thread__% _%thunk163711%_ _%name163712%_ _%tgroup163714%_))))
    (define spawn-thread
      (lambda _g164198_
        (let ((_g164199_ (let () (declare (not safe)) (##length _g164198_))))
          (cond ((let () (declare (not safe)) (##fx= _g164199_ 1))
                 (apply spawn-thread__0 _g164198_))
                ((let () (declare (not safe)) (##fx= _g164199_ 2))
                 (apply spawn-thread__1 _g164198_))
                ((let () (declare (not safe)) (##fx= _g164199_ 3))
                 (apply spawn-thread__% _g164198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g164198_))))))
    (define thread-main
      (lambda (_%thunk163628%_)
        (let* ((_%handler163667%_
                (lambda (_%exn163630%_)
                  (let ((__tmp164200
                         (lambda (_%cont163632%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler163634%_ void)
                                      (_%thunk163638%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont163632%_
                                            _%exn163630%_))))
                                      (_%handler163643%_ _%handler163634%_)
                                      (_%thunk163657%_ _%thunk163638%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler163643%_
                                  _%thunk163657%_))
                               '#!void)
                           (let ((__tmp164201
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont163632%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp164201
                              ##primordial-exception-handler
                              _%exn163630%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp164200))))
               (_%thunk163670%_ _%thunk163628%_)
               (_%handler163675%_ _%handler163667%_))
          (if (procedure? _%thunk163670%_)
              (let ((_%thunk163686%_ _%thunk163670%_))
                (declare (not safe))
                (__with-exception-handler _%handler163675%_ _%thunk163686%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk163670%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key163584%_ _%default163585%_)
        (let* ((_%tab163587%_ (thread-local-table))
               (_%h163589%_ _%tab163587%_)
               (_%key163592%_ _%key163584%_)
               (_%default163595%_ _%default163585%_)
               (_%h163602%_
                (let ((_%$obj163599%_ _%h163589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163599%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163599%_)))
                           '#t)
                      _%$obj163599%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163599%_)))))
               (_%h163604%_ _%h163602%_))
          (declare (not safe))
          (__hash-ref__% _%h163604%_ _%key163592%_ _%default163595%_))))
    (define thread-local-ref__0
      (lambda (_%key163621%_)
        (let ((_%default163623%_ absent-obj))
          (thread-local-ref__% _%key163621%_ _%default163623%_))))
    (define thread-local-ref
      (lambda _g164202_
        (let ((_g164203_ (let () (declare (not safe)) (##length _g164202_))))
          (cond ((let () (declare (not safe)) (##fx= _g164203_ 1))
                 (apply thread-local-ref__0 _g164202_))
                ((let () (declare (not safe)) (##fx= _g164203_ 2))
                 (apply thread-local-ref__% _g164202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g164202_))))))
    (define thread-local-get
      (lambda (_%key163581%_) (thread-local-ref__% _%key163581%_ '#f)))
    (define thread-local-set!
      (lambda (_%key163547%_ _%value163548%_)
        (let* ((_%tab163550%_ (thread-local-table))
               (_%h163552%_ _%tab163550%_)
               (_%key163555%_ _%key163547%_)
               (_%value163558%_ _%value163548%_)
               (_%h163565%_
                (let ((_%$obj163562%_ _%h163552%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163562%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163562%_)))
                           '#t)
                      _%$obj163562%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163562%_)))))
               (_%h163567%_ _%h163565%_))
          (declare (not safe))
          (__hash-put! _%h163567%_ _%key163555%_ _%value163558%_))))
    (define thread-local-delete!
      (lambda (_%key163518%_)
        (let* ((_%tab163520%_ (thread-local-table))
               (_%h163522%_ _%tab163520%_)
               (_%key163525%_ _%key163518%_)
               (_%h163532%_
                (let ((_%$obj163529%_ _%h163522%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163529%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163529%_)))
                           '#t)
                      _%$obj163529%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163529%_)))))
               (_%h163534%_ _%h163532%_))
          (declare (not safe))
          (__hash-remove! _%h163534%_ _%key163525%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr163443%_ (current-thread)))
          (if (actor-thread? _%thr163443%_)
              (let ((_%$e163446%_ (actor-thread-locals _%thr163443%_)))
                (if _%$e163446%_
                    _%$e163446%_
                    (let ((_%tab163450%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr163443%_ _%tab163450%_)
                      _%tab163450%_)))
              (if (eq? _%thr163443%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e163480%_
                           (let* ((_%h163454%_ __thread-locals)
                                  (_%key163457%_ _%thr163443%_)
                                  (_%h163464%_
                                   (let ((_%$obj163461%_ _%h163454%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj163461%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj163461%_)))
                                              '#t)
                                         _%$obj163461%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj163461%_)))))
                                  (_%h163466%_ _%h163464%_))
                             (declare (not safe))
                             (__hash-get _%h163466%_ _%key163457%_))))
                      (if _%$e163480%_
                          ((lambda (_%tab163483%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab163483%_)
                           _%$e163480%_)
                          (let ((_%tab163486%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h163488%_ __thread-locals)
                                   (_%key163491%_ _%thr163443%_)
                                   (_%value163494%_ _%tab163486%_)
                                   (_%h163501%_
                                    (let ((_%$obj163498%_ _%h163488%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj163498%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj163498%_)))
                                               '#t)
                                          _%$obj163498%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj163498%_)))))
                                   (_%h163503%_ _%h163501%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h163503%_
                               _%key163491%_
                               _%value163494%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab163486%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value163429%_)
        (let ((_%new-value163432%_ _%new-value163429%_))
          (set! __unhandled-actor-exception-hook _%new-value163432%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value162611%_)
        (if ((lambda (_%$obj162615%_)
               (or (not _%$obj162615%_) (procedure? _%$obj162615%_)))
             _%new-value162611%_)
            (let ((_%new-value162622%_ _%new-value162611%_))
              (__unhandled-actor-exception-hook-set! _%new-value162622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value162611%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx163336%_ _%proc163337%_)
        (let* ((_%mx163340%_ _%mx163336%_)
               (_%proc163348%_ _%proc163337%_)
               (_%handler163357%_ (current-exception-handler))
               (_%handler163396%_
                (lambda (_%e163359%_)
                  (let* ((_%handler163361%_ void)
                         (_%thunk163365%_
                          (lambda ()
                            (mutex-unlock! _%mx163340%_)
                            (let ()
                              (declare (not safe))
                              (_%handler163357%_ _%e163359%_))))
                         (_%handler163370%_ _%handler163361%_)
                         (_%thunk163386%_ _%thunk163365%_))
                    (declare (not safe))
                    (__with-catch _%handler163370%_ _%thunk163386%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e163359%_))))
               (_%thunk163402%_
                (lambda ()
                  (mutex-lock! _%mx163340%_)
                  (let ((_%result163400%_
                         (let () (declare (not safe)) (_%proc163348%_))))
                    (mutex-unlock! _%mx163340%_)
                    _%result163400%_)))
               (_%handler163407%_ _%handler163396%_)
               (_%thunk163418%_ _%thunk163402%_))
          (declare (not safe))
          (__with-exception-handler _%handler163407%_ _%thunk163418%_))))
    (define with-lock
      (lambda (_%mx162752%_ _%proc162753%_)
        (if (mutex? _%mx162752%_)
            (let ((_%mx162757%_ _%mx162752%_))
              (if (procedure? _%proc162753%_)
                  (let ((_%proc162767%_ _%proc162753%_))
                    (__with-lock _%mx162757%_ _%proc162767%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162753%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx162752%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx163313%_ _%proc163314%_)
        (let* ((_%mx163317%_ _%mx163313%_) (_%proc163325%_ _%proc163314%_))
          (let ((__tmp164205 (lambda () (mutex-lock! _%mx163317%_)))
                (__tmp164204 (lambda () (mutex-unlock! _%mx163317%_))))
            (declare (not safe))
            (##dynamic-wind __tmp164205 _%proc163325%_ __tmp164204)))))
    (define with-dynamic-lock
      (lambda (_%mx162897%_ _%proc162898%_)
        (if (mutex? _%mx162897%_)
            (let ((_%mx162902%_ _%mx162897%_))
              (if (procedure? _%proc162898%_)
                  (let ((_%proc162912%_ _%proc162898%_))
                    (__with-dynamic-lock _%mx162902%_ _%proc162912%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx162897%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk163244%_ _%error-port163245%_)
        (let* ((_%thunk163248%_ _%thunk163244%_)
               (_%error-port163256%_ _%error-port163245%_)
               (_%handler163271%_
                (let ((_%E163265%_ (current-exception-handler)))
                  (lambda (_%exn163267%_)
                    (let ((__tmp164206
                           (lambda (_%cont163269%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont163269%_
                                  _%exn163267%_
                                  _%error-port163256%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E163265%_ _%exn163267%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp164206)))))
               (_%thunk163274%_ _%thunk163248%_)
               (_%handler163279%_ _%handler163271%_)
               (_%thunk163293%_ _%thunk163274%_))
          (declare (not safe))
          (__with-exception-handler _%handler163279%_ _%thunk163293%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk163306%_)
        (let ((_%error-port163308%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk163306%_
           _%error-port163308%_))))
    (define __with-exception-stack-trace
      (lambda _g164207_
        (let ((_g164208_ (let () (declare (not safe)) (##length _g164207_))))
          (cond ((let () (declare (not safe)) (##fx= _g164208_ 1))
                 (apply __with-exception-stack-trace__0 _g164207_))
                ((let () (declare (not safe)) (##fx= _g164208_ 2))
                 (apply __with-exception-stack-trace__% _g164207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g164207_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk163043%_ _%error-port163044%_)
        (if (procedure? _%thunk163043%_)
            (let ((_%thunk163048%_ _%thunk163043%_))
              (if (port? _%error-port163044%_)
                  (let ((_%error-port163058%_ _%error-port163044%_))
                    (__with-exception-stack-trace__%
                     _%thunk163048%_
                     _%error-port163058%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port163044%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk163043%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk163071%_)
        (let ((_%error-port163073%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk163071%_
           _%error-port163073%_))))
    (define with-exception-stack-trace
      (lambda _g164209_
        (let ((_g164210_ (let () (declare (not safe)) (##length _g164209_))))
          (cond ((let () (declare (not safe)) (##fx= _g164210_ 1))
                 (apply with-exception-stack-trace__0 _g164209_))
                ((let () (declare (not safe)) (##fx= _g164210_ 2))
                 (apply with-exception-stack-trace__% _g164209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g164209_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont163225%_ _%exn163226%_ _%error-port163227%_)
        (let ((_%out163229%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out163229%_))
          (display '"*** Unhandled exception in " _%out163229%_)
          (display (current-thread) _%out163229%_)
          (newline _%out163229%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn163226%_ _%out163229%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn163226%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out163229%_)
                (newline _%out163229%_)
                (display-continuation-backtrace _%cont163225%_ _%out163229%_)))
          (let ((__tmp164211 (get-output-string _%out163229%_)))
            (declare (not safe))
            (##write-string __tmp164211 _%error-port163227%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont163234%_ _%exn163235%_)
        (let ((_%error-port163237%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont163234%_
           _%exn163235%_
           _%error-port163237%_))))
    (define dump-stack-trace!
      (lambda _g164212_
        (let ((_g164213_ (let () (declare (not safe)) (##length _g164212_))))
          (cond ((let () (declare (not safe)) (##fx= _g164213_ 2))
                 (apply dump-stack-trace!__0 _g164212_))
                ((let () (declare (not safe)) (##fx= _g164213_ 3))
                 (apply dump-stack-trace!__% _g164212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g164212_))))))
    (define __thread-dead?
      (lambda (_%thread163212%_)
        (let ((_%thread163215%_ _%thread163212%_))
          (not (macro-thread-end-condvar _%thread163215%_)))))
    (define thread-dead?
      (lambda (_%thread163198%_)
        (if (thread? _%thread163198%_)
            (let ((_%thread163202%_ _%thread163198%_))
              (__thread-dead? _%thread163202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread163198%_)
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
