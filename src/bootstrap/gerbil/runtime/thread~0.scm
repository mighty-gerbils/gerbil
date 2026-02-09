(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770660765)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk162026%_ _%name162027%_)
        (let* ((_%thunk162030%_ _%thunk162026%_)
               (_%name162038%_ _%name162027%_))
          (make-thread
           (lambda () (thread-main _%thunk162030%_))
           _%name162038%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk160052%_ _%name160053%_)
        (if (procedure? _%thunk160052%_)
            (let ((_%thunk160057%_ _%thunk160052%_))
              (if (symbol? _%name160053%_)
                  (let ((_%name160067%_ _%name160053%_))
                    (__make-system-thread _%thunk160057%_ _%name160067%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name160053%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk160052%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk161973%_ _%name161974%_)
        (let* ((_%thunk161977%_ _%thunk161973%_)
               (_%name161985%_ _%name161974%_))
          (thread-start!
           (let* ((_%thunk161994%_ _%thunk161977%_)
                  (_%name161997%_ _%name161985%_)
                  (_%thunk162002%_ _%thunk161994%_)
                  (_%name162016%_ _%name161997%_))
             (__make-system-thread _%thunk162002%_ _%name162016%_))))))
    (define system-thread!
      (lambda (_%thunk160197%_ _%name160198%_)
        (if (procedure? _%thunk160197%_)
            (let ((_%thunk160202%_ _%thunk160197%_))
              (if (symbol? _%name160198%_)
                  (let ((_%name160212%_ _%name160198%_))
                    (__system-thread! _%thunk160202%_ _%name160212%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name160198%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk160197%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk161952%_ _%name161953%_)
        (let* ((_%thunk161956%_ _%thunk161952%_)
               (_%name161964%_ _%name161953%_))
          (spawn-actor
           _%thunk161956%_
           '()
           _%name161964%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk160342%_ _%name160343%_)
        (if (procedure? _%thunk160342%_)
            (let ((_%thunk160347%_ _%thunk160342%_))
              (if (symbol? _%name160343%_)
                  (let ((_%name160357%_ _%name160343%_))
                    (__system-actor! _%thunk160347%_ _%name160357%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name160343%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk160342%_)
              '#!void))))
    (define __spawn
      (lambda (_%f161939%_ . _%args161940%_)
        (let ((_%f161943%_ _%f161939%_))
          (spawn-actor _%f161943%_ _%args161940%_ '#!void '#f))))
    (define spawn
      (lambda (_%f160487%_ . _%args160488%_)
        (if (procedure? _%f160487%_)
            (let ((_%f160492%_ _%f160487%_))
              (declare (not safe))
              (##apply __spawn _%f160492%_ _%args160488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f160487%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name161925%_ _%f161926%_ . _%args161927%_)
        (let ((_%f161930%_ _%f161926%_))
          (spawn-actor _%f161930%_ _%args161927%_ _%name161925%_ '#f))))
    (define spawn/name
      (lambda (_%name160622%_ _%f160623%_ . _%args160624%_)
        (if (procedure? _%f160623%_)
            (let ((_%f160628%_ _%f160623%_))
              (declare (not safe))
              (##apply __spawn/name _%name160622%_ _%f160628%_ _%args160624%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f160623%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name161909%_ _%f161910%_ . _%args161911%_)
        (let* ((_%f161914%_ _%f161910%_)
               (_%tgroup161923%_ (make-thread-group _%name161909%_)))
          (spawn-actor
           _%f161914%_
           _%args161911%_
           _%name161909%_
           _%tgroup161923%_))))
    (define spawn/group
      (lambda (_%name160758%_ _%f160759%_ . _%args160760%_)
        (if (procedure? _%f160759%_)
            (let ((_%f160764%_ _%f160759%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name160758%_
                       _%f160764%_
                       _%args160760%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f160759%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f161857%_ _%args161858%_ _%name161859%_ _%tgroup161860%_)
        (let* ((_%thunk161864%_
                (if (null? _%args161858%_)
                    _%f161857%_
                    (lambda () (apply _%f161857%_ _%args161858%_))))
               (_%thunk161900%_
                (lambda ()
                  (let* ((_%thunk161867%_ _%thunk161864%_)
                         (_%error-port161870%_ (current-error-port)))
                    (if (procedure? _%thunk161867%_)
                        (let* ((_%thunk161875%_ _%thunk161867%_)
                               (_%error-port161890%_ _%error-port161870%_))
                          (__with-exception-stack-trace__%
                           _%thunk161875%_
                           _%error-port161890%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk161867%_)
                          '#!void)))))
               (_%tgroup161905%_
                (let ((_%$e161902%_ _%tgroup161860%_))
                  (if _%$e161902%_ _%$e161902%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk161900%_))
            _%name161859%_
            _%tgroup161905%_)))))
    (define spawn-thread__%
      (lambda (_%thunk161834%_ _%name161835%_ _%tgroup161836%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk161834%_))
          _%name161835%_
          _%tgroup161836%_))))
    (define spawn-thread__0
      (lambda (_%thunk161842%_)
        (let* ((_%name161844%_ absent-obj) (_%tgroup161846%_ absent-obj))
          (spawn-thread__% _%thunk161842%_ _%name161844%_ _%tgroup161846%_))))
    (define spawn-thread__1
      (lambda (_%thunk161848%_ _%name161849%_)
        (let ((_%tgroup161851%_ absent-obj))
          (spawn-thread__% _%thunk161848%_ _%name161849%_ _%tgroup161851%_))))
    (define spawn-thread
      (lambda _g162309_
        (let ((_g162310_ (let () (declare (not safe)) (##length _g162309_))))
          (cond ((let () (declare (not safe)) (##fx= _g162310_ 1))
                 (apply spawn-thread__0 _g162309_))
                ((let () (declare (not safe)) (##fx= _g162310_ 2))
                 (apply spawn-thread__1 _g162309_))
                ((let () (declare (not safe)) (##fx= _g162310_ 3))
                 (apply spawn-thread__% _g162309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g162309_))))))
    (define thread-main
      (lambda (_%thunk161765%_)
        (let* ((_%handler161804%_
                (lambda (_%exn161767%_)
                  (let ((__tmp162311
                         (lambda (_%cont161769%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler161771%_ void)
                                      (_%thunk161775%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont161769%_
                                            _%exn161767%_))))
                                      (_%handler161780%_ _%handler161771%_)
                                      (_%thunk161794%_ _%thunk161775%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler161780%_
                                  _%thunk161794%_))
                               '#!void)
                           (let ((__tmp162312
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont161769%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp162312
                              ##primordial-exception-handler
                              _%exn161767%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp162311))))
               (_%thunk161807%_ _%thunk161765%_)
               (_%handler161812%_ _%handler161804%_))
          (if (procedure? _%thunk161807%_)
              (let ((_%thunk161823%_ _%thunk161807%_))
                (declare (not safe))
                (__with-exception-handler _%handler161812%_ _%thunk161823%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk161807%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key161721%_ _%default161722%_)
        (let* ((_%tab161724%_ (thread-local-table))
               (_%h161726%_ _%tab161724%_)
               (_%key161729%_ _%key161721%_)
               (_%default161732%_ _%default161722%_)
               (_%h161739%_
                (let ((_%$obj161736%_ _%h161726%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161736%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161736%_)))
                           '#t)
                      _%$obj161736%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161736%_)))))
               (_%h161741%_ _%h161739%_))
          (declare (not safe))
          (__hash-ref__% _%h161741%_ _%key161729%_ _%default161732%_))))
    (define thread-local-ref__0
      (lambda (_%key161758%_)
        (let ((_%default161760%_ absent-obj))
          (thread-local-ref__% _%key161758%_ _%default161760%_))))
    (define thread-local-ref
      (lambda _g162313_
        (let ((_g162314_ (let () (declare (not safe)) (##length _g162313_))))
          (cond ((let () (declare (not safe)) (##fx= _g162314_ 1))
                 (apply thread-local-ref__0 _g162313_))
                ((let () (declare (not safe)) (##fx= _g162314_ 2))
                 (apply thread-local-ref__% _g162313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g162313_))))))
    (define thread-local-get
      (lambda (_%key161718%_) (thread-local-ref__% _%key161718%_ '#f)))
    (define thread-local-set!
      (lambda (_%key161684%_ _%value161685%_)
        (let* ((_%tab161687%_ (thread-local-table))
               (_%h161689%_ _%tab161687%_)
               (_%key161692%_ _%key161684%_)
               (_%value161695%_ _%value161685%_)
               (_%h161702%_
                (let ((_%$obj161699%_ _%h161689%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161699%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161699%_)))
                           '#t)
                      _%$obj161699%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161699%_)))))
               (_%h161704%_ _%h161702%_))
          (declare (not safe))
          (__hash-put! _%h161704%_ _%key161692%_ _%value161695%_))))
    (define thread-local-delete!
      (lambda (_%key161655%_)
        (let* ((_%tab161657%_ (thread-local-table))
               (_%h161659%_ _%tab161657%_)
               (_%key161662%_ _%key161655%_)
               (_%h161669%_
                (let ((_%$obj161666%_ _%h161659%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj161666%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj161666%_)))
                           '#t)
                      _%$obj161666%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj161666%_)))))
               (_%h161671%_ _%h161669%_))
          (declare (not safe))
          (__hash-remove! _%h161671%_ _%key161662%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr161580%_ (current-thread)))
          (if (actor-thread? _%thr161580%_)
              (let ((_%$e161583%_ (actor-thread-locals _%thr161580%_)))
                (if _%$e161583%_
                    _%$e161583%_
                    (let ((_%tab161587%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr161580%_ _%tab161587%_)
                      _%tab161587%_)))
              (if (eq? _%thr161580%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e161617%_
                           (let* ((_%h161591%_ __thread-locals)
                                  (_%key161594%_ _%thr161580%_)
                                  (_%h161601%_
                                   (let ((_%$obj161598%_ _%h161591%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj161598%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj161598%_)))
                                              '#t)
                                         _%$obj161598%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj161598%_)))))
                                  (_%h161603%_ _%h161601%_))
                             (declare (not safe))
                             (__hash-get _%h161603%_ _%key161594%_))))
                      (if _%$e161617%_
                          ((lambda (_%tab161620%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab161620%_)
                           _%$e161617%_)
                          (let ((_%tab161623%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h161625%_ __thread-locals)
                                   (_%key161628%_ _%thr161580%_)
                                   (_%value161631%_ _%tab161623%_)
                                   (_%h161638%_
                                    (let ((_%$obj161635%_ _%h161625%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj161635%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj161635%_)))
                                               '#t)
                                          _%$obj161635%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj161635%_)))))
                                   (_%h161640%_ _%h161638%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h161640%_
                               _%key161628%_
                               _%value161631%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab161623%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value161566%_)
        (let ((_%new-value161569%_ _%new-value161566%_))
          (set! __unhandled-actor-exception-hook _%new-value161569%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value160894%_)
        (if ((lambda (_%$obj160898%_)
               (or (not _%$obj160898%_) (procedure? _%$obj160898%_)))
             _%new-value160894%_)
            (let ((_%new-value160905%_ _%new-value160894%_))
              (__unhandled-actor-exception-hook-set! _%new-value160905%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value160894%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx161473%_ _%proc161474%_)
        (let* ((_%mx161477%_ _%mx161473%_)
               (_%proc161485%_ _%proc161474%_)
               (_%handler161494%_ (current-exception-handler))
               (_%handler161533%_
                (lambda (_%e161496%_)
                  (let* ((_%handler161498%_ void)
                         (_%thunk161502%_
                          (lambda ()
                            (mutex-unlock! _%mx161477%_)
                            (let ()
                              (declare (not safe))
                              (_%handler161494%_ _%e161496%_))))
                         (_%handler161507%_ _%handler161498%_)
                         (_%thunk161523%_ _%thunk161502%_))
                    (declare (not safe))
                    (__with-catch _%handler161507%_ _%thunk161523%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e161496%_))))
               (_%thunk161539%_
                (lambda ()
                  (mutex-lock! _%mx161477%_)
                  (let ((_%result161537%_
                         (let () (declare (not safe)) (_%proc161485%_))))
                    (mutex-unlock! _%mx161477%_)
                    _%result161537%_)))
               (_%handler161544%_ _%handler161533%_)
               (_%thunk161555%_ _%thunk161539%_))
          (declare (not safe))
          (__with-exception-handler _%handler161544%_ _%thunk161555%_))))
    (define with-lock
      (lambda (_%mx161035%_ _%proc161036%_)
        (if (mutex? _%mx161035%_)
            (let ((_%mx161040%_ _%mx161035%_))
              (if (procedure? _%proc161036%_)
                  (let ((_%proc161050%_ _%proc161036%_))
                    (__with-lock _%mx161040%_ _%proc161050%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc161036%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx161035%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx161450%_ _%proc161451%_)
        (let* ((_%mx161454%_ _%mx161450%_) (_%proc161462%_ _%proc161451%_))
          (let ((__tmp162316 (lambda () (mutex-lock! _%mx161454%_)))
                (__tmp162315 (lambda () (mutex-unlock! _%mx161454%_))))
            (declare (not safe))
            (##dynamic-wind __tmp162316 _%proc161462%_ __tmp162315)))))
    (define with-dynamic-lock
      (lambda (_%mx161180%_ _%proc161181%_)
        (if (mutex? _%mx161180%_)
            (let ((_%mx161185%_ _%mx161180%_))
              (if (procedure? _%proc161181%_)
                  (let ((_%proc161195%_ _%proc161181%_))
                    (__with-dynamic-lock _%mx161185%_ _%proc161195%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc161181%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx161180%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk161381%_ _%error-port161382%_)
        (let* ((_%thunk161385%_ _%thunk161381%_)
               (_%error-port161393%_ _%error-port161382%_)
               (_%handler161408%_
                (let ((_%E161402%_ (current-exception-handler)))
                  (lambda (_%exn161404%_)
                    (let ((__tmp162317
                           (lambda (_%cont161406%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont161406%_
                                  _%exn161404%_
                                  _%error-port161393%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E161402%_ _%exn161404%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp162317)))))
               (_%thunk161411%_ _%thunk161385%_)
               (_%handler161416%_ _%handler161408%_)
               (_%thunk161430%_ _%thunk161411%_))
          (declare (not safe))
          (__with-exception-handler _%handler161416%_ _%thunk161430%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk161443%_)
        (let ((_%error-port161445%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk161443%_
           _%error-port161445%_))))
    (define __with-exception-stack-trace
      (lambda _g162318_
        (let ((_g162319_ (let () (declare (not safe)) (##length _g162318_))))
          (cond ((let () (declare (not safe)) (##fx= _g162319_ 1))
                 (apply __with-exception-stack-trace__0 _g162318_))
                ((let () (declare (not safe)) (##fx= _g162319_ 2))
                 (apply __with-exception-stack-trace__% _g162318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g162318_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk161326%_ _%error-port161327%_)
        (if (procedure? _%thunk161326%_)
            (let ((_%thunk161331%_ _%thunk161326%_))
              (if (port? _%error-port161327%_)
                  (let ((_%error-port161341%_ _%error-port161327%_))
                    (__with-exception-stack-trace__%
                     _%thunk161331%_
                     _%error-port161341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port161327%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk161326%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk161354%_)
        (let ((_%error-port161356%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk161354%_
           _%error-port161356%_))))
    (define with-exception-stack-trace
      (lambda _g162320_
        (let ((_g162321_ (let () (declare (not safe)) (##length _g162320_))))
          (cond ((let () (declare (not safe)) (##fx= _g162321_ 1))
                 (apply with-exception-stack-trace__0 _g162320_))
                ((let () (declare (not safe)) (##fx= _g162321_ 2))
                 (apply with-exception-stack-trace__% _g162320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g162320_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont161362%_ _%exn161363%_ _%error-port161364%_)
        (let ((_%out161366%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out161366%_))
          (display '"*** Unhandled exception in " _%out161366%_)
          (display (current-thread) _%out161366%_)
          (newline _%out161366%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn161363%_ _%out161366%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn161363%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out161366%_)
                (newline _%out161366%_)
                (display-continuation-backtrace _%cont161362%_ _%out161366%_)))
          (let ((__tmp162322 (get-output-string _%out161366%_)))
            (declare (not safe))
            (##write-string __tmp162322 _%error-port161364%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont161371%_ _%exn161372%_)
        (let ((_%error-port161374%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont161371%_
           _%exn161372%_
           _%error-port161374%_))))
    (define dump-stack-trace!
      (lambda _g162323_
        (let ((_g162324_ (let () (declare (not safe)) (##length _g162323_))))
          (cond ((let () (declare (not safe)) (##fx= _g162324_ 2))
                 (apply dump-stack-trace!__0 _g162323_))
                ((let () (declare (not safe)) (##fx= _g162324_ 3))
                 (apply dump-stack-trace!__% _g162323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g162323_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
