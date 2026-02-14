(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771093448)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk163893%_ _%name163894%_)
        (let* ((_%thunk163897%_ _%thunk163893%_)
               (_%name163905%_ _%name163894%_))
          (make-thread
           (lambda () (thread-main _%thunk163897%_))
           _%name163905%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk161773%_ _%name161774%_)
        (if (procedure? _%thunk161773%_)
            (let ((_%thunk161778%_ _%thunk161773%_))
              (if (symbol? _%name161774%_)
                  (let ((_%name161788%_ _%name161774%_))
                    (__make-system-thread _%thunk161778%_ _%name161788%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name161774%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk161773%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk163840%_ _%name163841%_)
        (let* ((_%thunk163844%_ _%thunk163840%_)
               (_%name163852%_ _%name163841%_))
          (thread-start!
           (let* ((_%thunk163861%_ _%thunk163844%_)
                  (_%name163864%_ _%name163852%_)
                  (_%thunk163869%_ _%thunk163861%_)
                  (_%name163883%_ _%name163864%_))
             (__make-system-thread _%thunk163869%_ _%name163883%_))))))
    (define system-thread!
      (lambda (_%thunk161918%_ _%name161919%_)
        (if (procedure? _%thunk161918%_)
            (let ((_%thunk161923%_ _%thunk161918%_))
              (if (symbol? _%name161919%_)
                  (let ((_%name161933%_ _%name161919%_))
                    (__system-thread! _%thunk161923%_ _%name161933%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name161919%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk161918%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk163819%_ _%name163820%_)
        (let* ((_%thunk163823%_ _%thunk163819%_)
               (_%name163831%_ _%name163820%_))
          (spawn-actor
           _%thunk163823%_
           '()
           _%name163831%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk162063%_ _%name162064%_)
        (if (procedure? _%thunk162063%_)
            (let ((_%thunk162068%_ _%thunk162063%_))
              (if (symbol? _%name162064%_)
                  (let ((_%name162078%_ _%name162064%_))
                    (__system-actor! _%thunk162068%_ _%name162078%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name162064%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk162063%_)
              '#!void))))
    (define __spawn
      (lambda (_%f163806%_ . _%args163807%_)
        (let ((_%f163810%_ _%f163806%_))
          (spawn-actor _%f163810%_ _%args163807%_ '#!void '#f))))
    (define spawn
      (lambda (_%f162208%_ . _%args162209%_)
        (if (procedure? _%f162208%_)
            (let ((_%f162213%_ _%f162208%_))
              (declare (not safe))
              (##apply __spawn _%f162213%_ _%args162209%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f162208%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name163792%_ _%f163793%_ . _%args163794%_)
        (let ((_%f163797%_ _%f163793%_))
          (spawn-actor _%f163797%_ _%args163794%_ _%name163792%_ '#f))))
    (define spawn/name
      (lambda (_%name162343%_ _%f162344%_ . _%args162345%_)
        (if (procedure? _%f162344%_)
            (let ((_%f162349%_ _%f162344%_))
              (declare (not safe))
              (##apply __spawn/name _%name162343%_ _%f162349%_ _%args162345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f162344%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name163776%_ _%f163777%_ . _%args163778%_)
        (let* ((_%f163781%_ _%f163777%_)
               (_%tgroup163790%_ (make-thread-group _%name163776%_)))
          (spawn-actor
           _%f163781%_
           _%args163778%_
           _%name163776%_
           _%tgroup163790%_))))
    (define spawn/group
      (lambda (_%name162479%_ _%f162480%_ . _%args162481%_)
        (if (procedure? _%f162480%_)
            (let ((_%f162485%_ _%f162480%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name162479%_
                       _%f162485%_
                       _%args162481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f162480%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f163724%_ _%args163725%_ _%name163726%_ _%tgroup163727%_)
        (let* ((_%thunk163731%_
                (if (null? _%args163725%_)
                    _%f163724%_
                    (lambda () (apply _%f163724%_ _%args163725%_))))
               (_%thunk163767%_
                (lambda ()
                  (let* ((_%thunk163734%_ _%thunk163731%_)
                         (_%error-port163737%_ (current-error-port)))
                    (if (procedure? _%thunk163734%_)
                        (let* ((_%thunk163742%_ _%thunk163734%_)
                               (_%error-port163757%_ _%error-port163737%_))
                          (__with-exception-stack-trace__%
                           _%thunk163742%_
                           _%error-port163757%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk163734%_)
                          '#!void)))))
               (_%tgroup163772%_
                (let ((_%$e163769%_ _%tgroup163727%_))
                  (if _%$e163769%_ _%$e163769%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk163767%_))
            _%name163726%_
            _%tgroup163772%_)))))
    (define spawn-thread__%
      (lambda (_%thunk163701%_ _%name163702%_ _%tgroup163703%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk163701%_))
          _%name163702%_
          _%tgroup163703%_))))
    (define spawn-thread__0
      (lambda (_%thunk163709%_)
        (let* ((_%name163711%_ absent-obj) (_%tgroup163713%_ absent-obj))
          (spawn-thread__% _%thunk163709%_ _%name163711%_ _%tgroup163713%_))))
    (define spawn-thread__1
      (lambda (_%thunk163715%_ _%name163716%_)
        (let ((_%tgroup163718%_ absent-obj))
          (spawn-thread__% _%thunk163715%_ _%name163716%_ _%tgroup163718%_))))
    (define spawn-thread
      (lambda _g164202_
        (let ((_g164203_ (let () (declare (not safe)) (##length _g164202_))))
          (cond ((let () (declare (not safe)) (##fx= _g164203_ 1))
                 (apply spawn-thread__0 _g164202_))
                ((let () (declare (not safe)) (##fx= _g164203_ 2))
                 (apply spawn-thread__1 _g164202_))
                ((let () (declare (not safe)) (##fx= _g164203_ 3))
                 (apply spawn-thread__% _g164202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g164202_))))))
    (define thread-main
      (lambda (_%thunk163632%_)
        (let* ((_%handler163671%_
                (lambda (_%exn163634%_)
                  (let ((__tmp164204
                         (lambda (_%cont163636%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler163638%_ void)
                                      (_%thunk163642%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont163636%_
                                            _%exn163634%_))))
                                      (_%handler163647%_ _%handler163638%_)
                                      (_%thunk163661%_ _%thunk163642%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler163647%_
                                  _%thunk163661%_))
                               '#!void)
                           (let ((__tmp164205
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont163636%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp164205
                              ##primordial-exception-handler
                              _%exn163634%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp164204))))
               (_%thunk163674%_ _%thunk163632%_)
               (_%handler163679%_ _%handler163671%_))
          (if (procedure? _%thunk163674%_)
              (let ((_%thunk163690%_ _%thunk163674%_))
                (declare (not safe))
                (__with-exception-handler _%handler163679%_ _%thunk163690%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk163674%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key163588%_ _%default163589%_)
        (let* ((_%tab163591%_ (thread-local-table))
               (_%h163593%_ _%tab163591%_)
               (_%key163596%_ _%key163588%_)
               (_%default163599%_ _%default163589%_)
               (_%h163606%_
                (let ((_%$obj163603%_ _%h163593%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163603%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163603%_)))
                           '#t)
                      _%$obj163603%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163603%_)))))
               (_%h163608%_ _%h163606%_))
          (declare (not safe))
          (__hash-ref__% _%h163608%_ _%key163596%_ _%default163599%_))))
    (define thread-local-ref__0
      (lambda (_%key163625%_)
        (let ((_%default163627%_ absent-obj))
          (thread-local-ref__% _%key163625%_ _%default163627%_))))
    (define thread-local-ref
      (lambda _g164206_
        (let ((_g164207_ (let () (declare (not safe)) (##length _g164206_))))
          (cond ((let () (declare (not safe)) (##fx= _g164207_ 1))
                 (apply thread-local-ref__0 _g164206_))
                ((let () (declare (not safe)) (##fx= _g164207_ 2))
                 (apply thread-local-ref__% _g164206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g164206_))))))
    (define thread-local-get
      (lambda (_%key163585%_) (thread-local-ref__% _%key163585%_ '#f)))
    (define thread-local-set!
      (lambda (_%key163551%_ _%value163552%_)
        (let* ((_%tab163554%_ (thread-local-table))
               (_%h163556%_ _%tab163554%_)
               (_%key163559%_ _%key163551%_)
               (_%value163562%_ _%value163552%_)
               (_%h163569%_
                (let ((_%$obj163566%_ _%h163556%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163566%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163566%_)))
                           '#t)
                      _%$obj163566%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163566%_)))))
               (_%h163571%_ _%h163569%_))
          (declare (not safe))
          (__hash-put! _%h163571%_ _%key163559%_ _%value163562%_))))
    (define thread-local-delete!
      (lambda (_%key163522%_)
        (let* ((_%tab163524%_ (thread-local-table))
               (_%h163526%_ _%tab163524%_)
               (_%key163529%_ _%key163522%_)
               (_%h163536%_
                (let ((_%$obj163533%_ _%h163526%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj163533%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj163533%_)))
                           '#t)
                      _%$obj163533%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj163533%_)))))
               (_%h163538%_ _%h163536%_))
          (declare (not safe))
          (__hash-remove! _%h163538%_ _%key163529%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr163447%_ (current-thread)))
          (if (actor-thread? _%thr163447%_)
              (let ((_%$e163450%_ (actor-thread-locals _%thr163447%_)))
                (if _%$e163450%_
                    _%$e163450%_
                    (let ((_%tab163454%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr163447%_ _%tab163454%_)
                      _%tab163454%_)))
              (if (eq? _%thr163447%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e163484%_
                           (let* ((_%h163458%_ __thread-locals)
                                  (_%key163461%_ _%thr163447%_)
                                  (_%h163468%_
                                   (let ((_%$obj163465%_ _%h163458%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj163465%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj163465%_)))
                                              '#t)
                                         _%$obj163465%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj163465%_)))))
                                  (_%h163470%_ _%h163468%_))
                             (declare (not safe))
                             (__hash-get _%h163470%_ _%key163461%_))))
                      (if _%$e163484%_
                          ((lambda (_%tab163487%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab163487%_)
                           _%$e163484%_)
                          (let ((_%tab163490%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h163492%_ __thread-locals)
                                   (_%key163495%_ _%thr163447%_)
                                   (_%value163498%_ _%tab163490%_)
                                   (_%h163505%_
                                    (let ((_%$obj163502%_ _%h163492%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj163502%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj163502%_)))
                                               '#t)
                                          _%$obj163502%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj163502%_)))))
                                   (_%h163507%_ _%h163505%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h163507%_
                               _%key163495%_
                               _%value163498%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab163490%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value163433%_)
        (let ((_%new-value163436%_ _%new-value163433%_))
          (set! __unhandled-actor-exception-hook _%new-value163436%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value162615%_)
        (if ((lambda (_%$obj162619%_)
               (or (not _%$obj162619%_) (procedure? _%$obj162619%_)))
             _%new-value162615%_)
            (let ((_%new-value162626%_ _%new-value162615%_))
              (__unhandled-actor-exception-hook-set! _%new-value162626%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value162615%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx163340%_ _%proc163341%_)
        (let* ((_%mx163344%_ _%mx163340%_)
               (_%proc163352%_ _%proc163341%_)
               (_%handler163361%_ (current-exception-handler))
               (_%handler163400%_
                (lambda (_%e163363%_)
                  (let* ((_%handler163365%_ void)
                         (_%thunk163369%_
                          (lambda ()
                            (mutex-unlock! _%mx163344%_)
                            (let ()
                              (declare (not safe))
                              (_%handler163361%_ _%e163363%_))))
                         (_%handler163374%_ _%handler163365%_)
                         (_%thunk163390%_ _%thunk163369%_))
                    (declare (not safe))
                    (__with-catch _%handler163374%_ _%thunk163390%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e163363%_))))
               (_%thunk163406%_
                (lambda ()
                  (mutex-lock! _%mx163344%_)
                  (let ((_%result163404%_
                         (let () (declare (not safe)) (_%proc163352%_))))
                    (mutex-unlock! _%mx163344%_)
                    _%result163404%_)))
               (_%handler163411%_ _%handler163400%_)
               (_%thunk163422%_ _%thunk163406%_))
          (declare (not safe))
          (__with-exception-handler _%handler163411%_ _%thunk163422%_))))
    (define with-lock
      (lambda (_%mx162756%_ _%proc162757%_)
        (if (mutex? _%mx162756%_)
            (let ((_%mx162761%_ _%mx162756%_))
              (if (procedure? _%proc162757%_)
                  (let ((_%proc162771%_ _%proc162757%_))
                    (__with-lock _%mx162761%_ _%proc162771%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162757%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx162756%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx163317%_ _%proc163318%_)
        (let* ((_%mx163321%_ _%mx163317%_) (_%proc163329%_ _%proc163318%_))
          (let ((__tmp164209 (lambda () (mutex-lock! _%mx163321%_)))
                (__tmp164208 (lambda () (mutex-unlock! _%mx163321%_))))
            (declare (not safe))
            (##dynamic-wind __tmp164209 _%proc163329%_ __tmp164208)))))
    (define with-dynamic-lock
      (lambda (_%mx162901%_ _%proc162902%_)
        (if (mutex? _%mx162901%_)
            (let ((_%mx162906%_ _%mx162901%_))
              (if (procedure? _%proc162902%_)
                  (let ((_%proc162916%_ _%proc162902%_))
                    (__with-dynamic-lock _%mx162906%_ _%proc162916%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc162902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx162901%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk163248%_ _%error-port163249%_)
        (let* ((_%thunk163252%_ _%thunk163248%_)
               (_%error-port163260%_ _%error-port163249%_)
               (_%handler163275%_
                (let ((_%E163269%_ (current-exception-handler)))
                  (lambda (_%exn163271%_)
                    (let ((__tmp164210
                           (lambda (_%cont163273%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont163273%_
                                  _%exn163271%_
                                  _%error-port163260%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E163269%_ _%exn163271%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp164210)))))
               (_%thunk163278%_ _%thunk163252%_)
               (_%handler163283%_ _%handler163275%_)
               (_%thunk163297%_ _%thunk163278%_))
          (declare (not safe))
          (__with-exception-handler _%handler163283%_ _%thunk163297%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk163310%_)
        (let ((_%error-port163312%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk163310%_
           _%error-port163312%_))))
    (define __with-exception-stack-trace
      (lambda _g164211_
        (let ((_g164212_ (let () (declare (not safe)) (##length _g164211_))))
          (cond ((let () (declare (not safe)) (##fx= _g164212_ 1))
                 (apply __with-exception-stack-trace__0 _g164211_))
                ((let () (declare (not safe)) (##fx= _g164212_ 2))
                 (apply __with-exception-stack-trace__% _g164211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g164211_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk163047%_ _%error-port163048%_)
        (if (procedure? _%thunk163047%_)
            (let ((_%thunk163052%_ _%thunk163047%_))
              (if (port? _%error-port163048%_)
                  (let ((_%error-port163062%_ _%error-port163048%_))
                    (__with-exception-stack-trace__%
                     _%thunk163052%_
                     _%error-port163062%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port163048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk163047%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk163075%_)
        (let ((_%error-port163077%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk163075%_
           _%error-port163077%_))))
    (define with-exception-stack-trace
      (lambda _g164213_
        (let ((_g164214_ (let () (declare (not safe)) (##length _g164213_))))
          (cond ((let () (declare (not safe)) (##fx= _g164214_ 1))
                 (apply with-exception-stack-trace__0 _g164213_))
                ((let () (declare (not safe)) (##fx= _g164214_ 2))
                 (apply with-exception-stack-trace__% _g164213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g164213_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont163229%_ _%exn163230%_ _%error-port163231%_)
        (let ((_%out163233%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out163233%_))
          (display '"*** Unhandled exception in " _%out163233%_)
          (display (current-thread) _%out163233%_)
          (newline _%out163233%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn163230%_ _%out163233%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn163230%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out163233%_)
                (newline _%out163233%_)
                (display-continuation-backtrace _%cont163229%_ _%out163233%_)))
          (let ((__tmp164215 (get-output-string _%out163233%_)))
            (declare (not safe))
            (##write-string __tmp164215 _%error-port163231%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont163238%_ _%exn163239%_)
        (let ((_%error-port163241%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont163238%_
           _%exn163239%_
           _%error-port163241%_))))
    (define dump-stack-trace!
      (lambda _g164216_
        (let ((_g164217_ (let () (declare (not safe)) (##length _g164216_))))
          (cond ((let () (declare (not safe)) (##fx= _g164217_ 2))
                 (apply dump-stack-trace!__0 _g164216_))
                ((let () (declare (not safe)) (##fx= _g164217_ 3))
                 (apply dump-stack-trace!__% _g164216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g164216_))))))
    (define __thread-dead?
      (lambda (_%thread163216%_)
        (let ((_%thread163219%_ _%thread163216%_))
          (not (macro-thread-end-condvar _%thread163219%_)))))
    (define thread-dead?
      (lambda (_%thread163202%_)
        (if (thread? _%thread163202%_)
            (let ((_%thread163206%_ _%thread163202%_))
              (__thread-dead? _%thread163206%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread163202%_)
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
