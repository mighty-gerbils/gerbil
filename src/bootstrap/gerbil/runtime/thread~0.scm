(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771036673)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk346711%_ _%name346712%_)
        (let* ((_%thunk346715%_ _%thunk346711%_)
               (_%name346723%_ _%name346712%_))
          (make-thread
           (lambda () (thread-main _%thunk346715%_))
           _%name346723%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk344591%_ _%name344592%_)
        (if (procedure? _%thunk344591%_)
            (let ((_%thunk344596%_ _%thunk344591%_))
              (if (symbol? _%name344592%_)
                  (let ((_%name344606%_ _%name344592%_))
                    (__make-system-thread _%thunk344596%_ _%name344606%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name344592%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk344591%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk346658%_ _%name346659%_)
        (let* ((_%thunk346662%_ _%thunk346658%_)
               (_%name346670%_ _%name346659%_))
          (thread-start!
           (let* ((_%thunk346679%_ _%thunk346662%_)
                  (_%name346682%_ _%name346670%_)
                  (_%thunk346687%_ _%thunk346679%_)
                  (_%name346701%_ _%name346682%_))
             (__make-system-thread _%thunk346687%_ _%name346701%_))))))
    (define system-thread!
      (lambda (_%thunk344736%_ _%name344737%_)
        (if (procedure? _%thunk344736%_)
            (let ((_%thunk344741%_ _%thunk344736%_))
              (if (symbol? _%name344737%_)
                  (let ((_%name344751%_ _%name344737%_))
                    (__system-thread! _%thunk344741%_ _%name344751%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name344737%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk344736%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk346637%_ _%name346638%_)
        (let* ((_%thunk346641%_ _%thunk346637%_)
               (_%name346649%_ _%name346638%_))
          (spawn-actor
           _%thunk346641%_
           '()
           _%name346649%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk344881%_ _%name344882%_)
        (if (procedure? _%thunk344881%_)
            (let ((_%thunk344886%_ _%thunk344881%_))
              (if (symbol? _%name344882%_)
                  (let ((_%name344896%_ _%name344882%_))
                    (__system-actor! _%thunk344886%_ _%name344896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name344882%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk344881%_)
              '#!void))))
    (define __spawn
      (lambda (_%f346624%_ . _%args346625%_)
        (let ((_%f346628%_ _%f346624%_))
          (spawn-actor _%f346628%_ _%args346625%_ '#!void '#f))))
    (define spawn
      (lambda (_%f345026%_ . _%args345027%_)
        (if (procedure? _%f345026%_)
            (let ((_%f345031%_ _%f345026%_))
              (declare (not safe))
              (##apply __spawn _%f345031%_ _%args345027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f345026%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name346610%_ _%f346611%_ . _%args346612%_)
        (let ((_%f346615%_ _%f346611%_))
          (spawn-actor _%f346615%_ _%args346612%_ _%name346610%_ '#f))))
    (define spawn/name
      (lambda (_%name345161%_ _%f345162%_ . _%args345163%_)
        (if (procedure? _%f345162%_)
            (let ((_%f345167%_ _%f345162%_))
              (declare (not safe))
              (##apply __spawn/name _%name345161%_ _%f345167%_ _%args345163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f345162%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name346594%_ _%f346595%_ . _%args346596%_)
        (let* ((_%f346599%_ _%f346595%_)
               (_%tgroup346608%_ (make-thread-group _%name346594%_)))
          (spawn-actor
           _%f346599%_
           _%args346596%_
           _%name346594%_
           _%tgroup346608%_))))
    (define spawn/group
      (lambda (_%name345297%_ _%f345298%_ . _%args345299%_)
        (if (procedure? _%f345298%_)
            (let ((_%f345303%_ _%f345298%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name345297%_
                       _%f345303%_
                       _%args345299%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f345298%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f346542%_ _%args346543%_ _%name346544%_ _%tgroup346545%_)
        (let* ((_%thunk346549%_
                (if (null? _%args346543%_)
                    _%f346542%_
                    (lambda () (apply _%f346542%_ _%args346543%_))))
               (_%thunk346585%_
                (lambda ()
                  (let* ((_%thunk346552%_ _%thunk346549%_)
                         (_%error-port346555%_ (current-error-port)))
                    (if (procedure? _%thunk346552%_)
                        (let* ((_%thunk346560%_ _%thunk346552%_)
                               (_%error-port346575%_ _%error-port346555%_))
                          (__with-exception-stack-trace__%
                           _%thunk346560%_
                           _%error-port346575%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk346552%_)
                          '#!void)))))
               (_%tgroup346590%_
                (let ((_%$e346587%_ _%tgroup346545%_))
                  (if _%$e346587%_ _%$e346587%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk346585%_))
            _%name346544%_
            _%tgroup346590%_)))))
    (define spawn-thread__%
      (lambda (_%thunk346519%_ _%name346520%_ _%tgroup346521%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk346519%_))
          _%name346520%_
          _%tgroup346521%_))))
    (define spawn-thread__0
      (lambda (_%thunk346527%_)
        (let* ((_%name346529%_ absent-obj) (_%tgroup346531%_ absent-obj))
          (spawn-thread__% _%thunk346527%_ _%name346529%_ _%tgroup346531%_))))
    (define spawn-thread__1
      (lambda (_%thunk346533%_ _%name346534%_)
        (let ((_%tgroup346536%_ absent-obj))
          (spawn-thread__% _%thunk346533%_ _%name346534%_ _%tgroup346536%_))))
    (define spawn-thread
      (lambda _g347020_
        (let ((_g347021_ (let () (declare (not safe)) (##length _g347020_))))
          (cond ((let () (declare (not safe)) (##fx= _g347021_ 1))
                 (apply spawn-thread__0 _g347020_))
                ((let () (declare (not safe)) (##fx= _g347021_ 2))
                 (apply spawn-thread__1 _g347020_))
                ((let () (declare (not safe)) (##fx= _g347021_ 3))
                 (apply spawn-thread__% _g347020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g347020_))))))
    (define thread-main
      (lambda (_%thunk346450%_)
        (let* ((_%handler346489%_
                (lambda (_%exn346452%_)
                  (let ((__tmp347022
                         (lambda (_%cont346454%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler346456%_ void)
                                      (_%thunk346460%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont346454%_
                                            _%exn346452%_))))
                                      (_%handler346465%_ _%handler346456%_)
                                      (_%thunk346479%_ _%thunk346460%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler346465%_
                                  _%thunk346479%_))
                               '#!void)
                           (let ((__tmp347023
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont346454%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp347023
                              ##primordial-exception-handler
                              _%exn346452%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp347022))))
               (_%thunk346492%_ _%thunk346450%_)
               (_%handler346497%_ _%handler346489%_))
          (if (procedure? _%thunk346492%_)
              (let ((_%thunk346508%_ _%thunk346492%_))
                (declare (not safe))
                (__with-exception-handler _%handler346497%_ _%thunk346508%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk346492%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key346406%_ _%default346407%_)
        (let* ((_%tab346409%_ (thread-local-table))
               (_%h346411%_ _%tab346409%_)
               (_%key346414%_ _%key346406%_)
               (_%default346417%_ _%default346407%_)
               (_%h346424%_
                (let ((_%$obj346421%_ _%h346411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj346421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj346421%_)))
                           '#t)
                      _%$obj346421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj346421%_)))))
               (_%h346426%_ _%h346424%_))
          (declare (not safe))
          (__hash-ref__% _%h346426%_ _%key346414%_ _%default346417%_))))
    (define thread-local-ref__0
      (lambda (_%key346443%_)
        (let ((_%default346445%_ absent-obj))
          (thread-local-ref__% _%key346443%_ _%default346445%_))))
    (define thread-local-ref
      (lambda _g347024_
        (let ((_g347025_ (let () (declare (not safe)) (##length _g347024_))))
          (cond ((let () (declare (not safe)) (##fx= _g347025_ 1))
                 (apply thread-local-ref__0 _g347024_))
                ((let () (declare (not safe)) (##fx= _g347025_ 2))
                 (apply thread-local-ref__% _g347024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g347024_))))))
    (define thread-local-get
      (lambda (_%key346403%_) (thread-local-ref__% _%key346403%_ '#f)))
    (define thread-local-set!
      (lambda (_%key346369%_ _%value346370%_)
        (let* ((_%tab346372%_ (thread-local-table))
               (_%h346374%_ _%tab346372%_)
               (_%key346377%_ _%key346369%_)
               (_%value346380%_ _%value346370%_)
               (_%h346387%_
                (let ((_%$obj346384%_ _%h346374%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj346384%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj346384%_)))
                           '#t)
                      _%$obj346384%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj346384%_)))))
               (_%h346389%_ _%h346387%_))
          (declare (not safe))
          (__hash-put! _%h346389%_ _%key346377%_ _%value346380%_))))
    (define thread-local-delete!
      (lambda (_%key346340%_)
        (let* ((_%tab346342%_ (thread-local-table))
               (_%h346344%_ _%tab346342%_)
               (_%key346347%_ _%key346340%_)
               (_%h346354%_
                (let ((_%$obj346351%_ _%h346344%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj346351%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj346351%_)))
                           '#t)
                      _%$obj346351%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj346351%_)))))
               (_%h346356%_ _%h346354%_))
          (declare (not safe))
          (__hash-remove! _%h346356%_ _%key346347%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr346265%_ (current-thread)))
          (if (actor-thread? _%thr346265%_)
              (let ((_%$e346268%_ (actor-thread-locals _%thr346265%_)))
                (if _%$e346268%_
                    _%$e346268%_
                    (let ((_%tab346272%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr346265%_ _%tab346272%_)
                      _%tab346272%_)))
              (if (eq? _%thr346265%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e346302%_
                           (let* ((_%h346276%_ __thread-locals)
                                  (_%key346279%_ _%thr346265%_)
                                  (_%h346286%_
                                   (let ((_%$obj346283%_ _%h346276%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj346283%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj346283%_)))
                                              '#t)
                                         _%$obj346283%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj346283%_)))))
                                  (_%h346288%_ _%h346286%_))
                             (declare (not safe))
                             (__hash-get _%h346288%_ _%key346279%_))))
                      (if _%$e346302%_
                          ((lambda (_%tab346305%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab346305%_)
                           _%$e346302%_)
                          (let ((_%tab346308%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h346310%_ __thread-locals)
                                   (_%key346313%_ _%thr346265%_)
                                   (_%value346316%_ _%tab346308%_)
                                   (_%h346323%_
                                    (let ((_%$obj346320%_ _%h346310%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj346320%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj346320%_)))
                                               '#t)
                                          _%$obj346320%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj346320%_)))))
                                   (_%h346325%_ _%h346323%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h346325%_
                               _%key346313%_
                               _%value346316%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab346308%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value346251%_)
        (let ((_%new-value346254%_ _%new-value346251%_))
          (set! __unhandled-actor-exception-hook _%new-value346254%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value345433%_)
        (if ((lambda (_%$obj345437%_)
               (or (not _%$obj345437%_) (procedure? _%$obj345437%_)))
             _%new-value345433%_)
            (let ((_%new-value345444%_ _%new-value345433%_))
              (__unhandled-actor-exception-hook-set! _%new-value345444%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value345433%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx346158%_ _%proc346159%_)
        (let* ((_%mx346162%_ _%mx346158%_)
               (_%proc346170%_ _%proc346159%_)
               (_%handler346179%_ (current-exception-handler))
               (_%handler346218%_
                (lambda (_%e346181%_)
                  (let* ((_%handler346183%_ void)
                         (_%thunk346187%_
                          (lambda ()
                            (mutex-unlock! _%mx346162%_)
                            (let ()
                              (declare (not safe))
                              (_%handler346179%_ _%e346181%_))))
                         (_%handler346192%_ _%handler346183%_)
                         (_%thunk346208%_ _%thunk346187%_))
                    (declare (not safe))
                    (__with-catch _%handler346192%_ _%thunk346208%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e346181%_))))
               (_%thunk346224%_
                (lambda ()
                  (mutex-lock! _%mx346162%_)
                  (let ((_%result346222%_
                         (let () (declare (not safe)) (_%proc346170%_))))
                    (mutex-unlock! _%mx346162%_)
                    _%result346222%_)))
               (_%handler346229%_ _%handler346218%_)
               (_%thunk346240%_ _%thunk346224%_))
          (declare (not safe))
          (__with-exception-handler _%handler346229%_ _%thunk346240%_))))
    (define with-lock
      (lambda (_%mx345574%_ _%proc345575%_)
        (if (mutex? _%mx345574%_)
            (let ((_%mx345579%_ _%mx345574%_))
              (if (procedure? _%proc345575%_)
                  (let ((_%proc345589%_ _%proc345575%_))
                    (__with-lock _%mx345579%_ _%proc345589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc345575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx345574%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx346135%_ _%proc346136%_)
        (let* ((_%mx346139%_ _%mx346135%_) (_%proc346147%_ _%proc346136%_))
          (let ((__tmp347027 (lambda () (mutex-lock! _%mx346139%_)))
                (__tmp347026 (lambda () (mutex-unlock! _%mx346139%_))))
            (declare (not safe))
            (##dynamic-wind __tmp347027 _%proc346147%_ __tmp347026)))))
    (define with-dynamic-lock
      (lambda (_%mx345719%_ _%proc345720%_)
        (if (mutex? _%mx345719%_)
            (let ((_%mx345724%_ _%mx345719%_))
              (if (procedure? _%proc345720%_)
                  (let ((_%proc345734%_ _%proc345720%_))
                    (__with-dynamic-lock _%mx345724%_ _%proc345734%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc345720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx345719%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk346066%_ _%error-port346067%_)
        (let* ((_%thunk346070%_ _%thunk346066%_)
               (_%error-port346078%_ _%error-port346067%_)
               (_%handler346093%_
                (let ((_%E346087%_ (current-exception-handler)))
                  (lambda (_%exn346089%_)
                    (let ((__tmp347028
                           (lambda (_%cont346091%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont346091%_
                                  _%exn346089%_
                                  _%error-port346078%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E346087%_ _%exn346089%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp347028)))))
               (_%thunk346096%_ _%thunk346070%_)
               (_%handler346101%_ _%handler346093%_)
               (_%thunk346115%_ _%thunk346096%_))
          (declare (not safe))
          (__with-exception-handler _%handler346101%_ _%thunk346115%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk346128%_)
        (let ((_%error-port346130%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk346128%_
           _%error-port346130%_))))
    (define __with-exception-stack-trace
      (lambda _g347029_
        (let ((_g347030_ (let () (declare (not safe)) (##length _g347029_))))
          (cond ((let () (declare (not safe)) (##fx= _g347030_ 1))
                 (apply __with-exception-stack-trace__0 _g347029_))
                ((let () (declare (not safe)) (##fx= _g347030_ 2))
                 (apply __with-exception-stack-trace__% _g347029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g347029_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk345865%_ _%error-port345866%_)
        (if (procedure? _%thunk345865%_)
            (let ((_%thunk345870%_ _%thunk345865%_))
              (if (port? _%error-port345866%_)
                  (let ((_%error-port345880%_ _%error-port345866%_))
                    (__with-exception-stack-trace__%
                     _%thunk345870%_
                     _%error-port345880%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port345866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk345865%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk345893%_)
        (let ((_%error-port345895%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk345893%_
           _%error-port345895%_))))
    (define with-exception-stack-trace
      (lambda _g347031_
        (let ((_g347032_ (let () (declare (not safe)) (##length _g347031_))))
          (cond ((let () (declare (not safe)) (##fx= _g347032_ 1))
                 (apply with-exception-stack-trace__0 _g347031_))
                ((let () (declare (not safe)) (##fx= _g347032_ 2))
                 (apply with-exception-stack-trace__% _g347031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g347031_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont346047%_ _%exn346048%_ _%error-port346049%_)
        (let ((_%out346051%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out346051%_))
          (display '"*** Unhandled exception in " _%out346051%_)
          (display (current-thread) _%out346051%_)
          (newline _%out346051%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn346048%_ _%out346051%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn346048%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out346051%_)
                (newline _%out346051%_)
                (display-continuation-backtrace _%cont346047%_ _%out346051%_)))
          (let ((__tmp347033 (get-output-string _%out346051%_)))
            (declare (not safe))
            (##write-string __tmp347033 _%error-port346049%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont346056%_ _%exn346057%_)
        (let ((_%error-port346059%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont346056%_
           _%exn346057%_
           _%error-port346059%_))))
    (define dump-stack-trace!
      (lambda _g347034_
        (let ((_g347035_ (let () (declare (not safe)) (##length _g347034_))))
          (cond ((let () (declare (not safe)) (##fx= _g347035_ 2))
                 (apply dump-stack-trace!__0 _g347034_))
                ((let () (declare (not safe)) (##fx= _g347035_ 3))
                 (apply dump-stack-trace!__% _g347034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g347034_))))))
    (define __thread-dead?
      (lambda (_%thread346034%_)
        (let ((_%thread346037%_ _%thread346034%_))
          (not (macro-thread-end-condvar _%thread346037%_)))))
    (define thread-dead?
      (lambda (_%thread346020%_)
        (if (thread? _%thread346020%_)
            (let ((_%thread346024%_ _%thread346020%_))
              (__thread-dead? _%thread346024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread346020%_)
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
