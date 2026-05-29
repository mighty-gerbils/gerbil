(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1779967242)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk166025%_ _%name166026%_)
        (let* ((_%thunk166029%_ _%thunk166025%_)
               (_%name166037%_ _%name166026%_))
          (make-thread
           (lambda () (thread-main _%thunk166029%_))
           _%name166037%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk166000%_ _%name166001%_)
        (if (procedure? _%thunk166000%_)
            (let ((_%thunk166005%_ _%thunk166000%_))
              (if (symbol? _%name166001%_)
                  (let ((_%name166015%_ _%name166001%_))
                    (__make-system-thread _%thunk166005%_ _%name166015%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name166001%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk166000%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk165947%_ _%name165948%_)
        (let* ((_%thunk165951%_ _%thunk165947%_)
               (_%name165959%_ _%name165948%_))
          (thread-start!
           (let* ((_%thunk165968%_ _%thunk165951%_)
                  (_%name165971%_ _%name165959%_)
                  (_%thunk165976%_ _%thunk165968%_)
                  (_%name165990%_ _%name165971%_))
             (__make-system-thread _%thunk165976%_ _%name165990%_))))))
    (define system-thread!
      (lambda (_%thunk165922%_ _%name165923%_)
        (if (procedure? _%thunk165922%_)
            (let ((_%thunk165927%_ _%thunk165922%_))
              (if (symbol? _%name165923%_)
                  (let ((_%name165937%_ _%name165923%_))
                    (__system-thread! _%thunk165927%_ _%name165937%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name165923%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk165922%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk165901%_ _%name165902%_)
        (let* ((_%thunk165905%_ _%thunk165901%_)
               (_%name165913%_ _%name165902%_))
          (spawn-actor
           _%thunk165905%_
           '()
           _%name165913%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk165876%_ _%name165877%_)
        (if (procedure? _%thunk165876%_)
            (let ((_%thunk165881%_ _%thunk165876%_))
              (if (symbol? _%name165877%_)
                  (let ((_%name165891%_ _%name165877%_))
                    (__system-actor! _%thunk165881%_ _%name165891%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name165877%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk165876%_)
              '#!void))))
    (define __spawn
      (lambda (_%f165863%_ . _%args165864%_)
        (let ((_%f165867%_ _%f165863%_))
          (spawn-actor _%f165867%_ _%args165864%_ '#!void '#f))))
    (define spawn
      (lambda (_%f165848%_ . _%args165849%_)
        (if (procedure? _%f165848%_)
            (let ((_%f165853%_ _%f165848%_))
              (declare (not safe))
              (##apply __spawn _%f165853%_ _%args165849%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f165848%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name165834%_ _%f165835%_ . _%args165836%_)
        (let ((_%f165839%_ _%f165835%_))
          (spawn-actor _%f165839%_ _%args165836%_ _%name165834%_ '#f))))
    (define spawn/name
      (lambda (_%name165818%_ _%f165819%_ . _%args165820%_)
        (if (procedure? _%f165819%_)
            (let ((_%f165824%_ _%f165819%_))
              (declare (not safe))
              (##apply __spawn/name _%name165818%_ _%f165824%_ _%args165820%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f165819%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name165802%_ _%f165803%_ . _%args165804%_)
        (let* ((_%f165807%_ _%f165803%_)
               (_%tgroup165816%_ (make-thread-group _%name165802%_)))
          (spawn-actor
           _%f165807%_
           _%args165804%_
           _%name165802%_
           _%tgroup165816%_))))
    (define spawn/group
      (lambda (_%name165786%_ _%f165787%_ . _%args165788%_)
        (if (procedure? _%f165787%_)
            (let ((_%f165792%_ _%f165787%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name165786%_
                       _%f165792%_
                       _%args165788%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f165787%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f165734%_ _%args165735%_ _%name165736%_ _%tgroup165737%_)
        (let* ((_%thunk165741%_
                (if (null? _%args165735%_)
                    _%f165734%_
                    (lambda () (apply _%f165734%_ _%args165735%_))))
               (_%thunk165777%_
                (lambda ()
                  (let* ((_%thunk165744%_ _%thunk165741%_)
                         (_%error-port165747%_ (current-error-port)))
                    (if (procedure? _%thunk165744%_)
                        (let* ((_%thunk165752%_ _%thunk165744%_)
                               (_%error-port165767%_ _%error-port165747%_))
                          (__with-exception-stack-trace__%
                           _%thunk165752%_
                           _%error-port165767%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk165744%_)
                          '#!void)))))
               (_%tgroup165782%_
                (let ((_%$e165779%_ _%tgroup165737%_))
                  (if _%$e165779%_ _%$e165779%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk165777%_))
            _%name165736%_
            _%tgroup165782%_)))))
    (define spawn-thread__%
      (lambda (_%thunk165711%_ _%name165712%_ _%tgroup165713%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk165711%_))
          _%name165712%_
          _%tgroup165713%_))))
    (define spawn-thread__0
      (lambda (_%thunk165719%_)
        (let* ((_%name165721%_ absent-obj) (_%tgroup165723%_ absent-obj))
          (spawn-thread__% _%thunk165719%_ _%name165721%_ _%tgroup165723%_))))
    (define spawn-thread__1
      (lambda (_%thunk165725%_ _%name165726%_)
        (let ((_%tgroup165728%_ absent-obj))
          (spawn-thread__% _%thunk165725%_ _%name165726%_ _%tgroup165728%_))))
    (define spawn-thread
      (lambda _g166334_
        (let ((_g166335_ (let () (declare (not safe)) (##length _g166334_))))
          (cond ((let () (declare (not safe)) (##fx= _g166335_ 1))
                 (apply spawn-thread__0 _g166334_))
                ((let () (declare (not safe)) (##fx= _g166335_ 2))
                 (apply spawn-thread__1 _g166334_))
                ((let () (declare (not safe)) (##fx= _g166335_ 3))
                 (apply spawn-thread__% _g166334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g166334_))))))
    (define thread-main
      (lambda (_%thunk165642%_)
        (let* ((_%handler165681%_
                (lambda (_%exn165644%_)
                  (let ((__tmp166336
                         (lambda (_%cont165646%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler165648%_ void)
                                      (_%thunk165652%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont165646%_
                                            _%exn165644%_))))
                                      (_%handler165657%_ _%handler165648%_)
                                      (_%thunk165671%_ _%thunk165652%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler165657%_
                                  _%thunk165671%_))
                               '#!void)
                           (let ((__tmp166337
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont165646%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp166337
                              ##primordial-exception-handler
                              _%exn165644%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp166336))))
               (_%thunk165684%_ _%thunk165642%_)
               (_%handler165689%_ _%handler165681%_))
          (if (procedure? _%thunk165684%_)
              (let ((_%thunk165700%_ _%thunk165684%_))
                (declare (not safe))
                (__with-exception-handler _%handler165689%_ _%thunk165700%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165684%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key165598%_ _%default165599%_)
        (let* ((_%tab165601%_ (thread-local-table))
               (_%h165603%_ _%tab165601%_)
               (_%key165606%_ _%key165598%_)
               (_%default165609%_ _%default165599%_)
               (_%h165616%_
                (let ((_%$obj165613%_ _%h165603%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165613%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165613%_)))
                           '#t)
                      _%$obj165613%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165613%_)))))
               (_%h165618%_ _%h165616%_))
          (declare (not safe))
          (__hash-ref__% _%h165618%_ _%key165606%_ _%default165609%_))))
    (define thread-local-ref__0
      (lambda (_%key165635%_)
        (let ((_%default165637%_ absent-obj))
          (thread-local-ref__% _%key165635%_ _%default165637%_))))
    (define thread-local-ref
      (lambda _g166338_
        (let ((_g166339_ (let () (declare (not safe)) (##length _g166338_))))
          (cond ((let () (declare (not safe)) (##fx= _g166339_ 1))
                 (apply thread-local-ref__0 _g166338_))
                ((let () (declare (not safe)) (##fx= _g166339_ 2))
                 (apply thread-local-ref__% _g166338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g166338_))))))
    (define thread-local-get
      (lambda (_%key165595%_) (thread-local-ref__% _%key165595%_ '#f)))
    (define thread-local-set!
      (lambda (_%key165561%_ _%value165562%_)
        (let* ((_%tab165564%_ (thread-local-table))
               (_%h165566%_ _%tab165564%_)
               (_%key165569%_ _%key165561%_)
               (_%value165572%_ _%value165562%_)
               (_%h165579%_
                (let ((_%$obj165576%_ _%h165566%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165576%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165576%_)))
                           '#t)
                      _%$obj165576%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165576%_)))))
               (_%h165581%_ _%h165579%_))
          (declare (not safe))
          (__hash-put! _%h165581%_ _%key165569%_ _%value165572%_))))
    (define thread-local-delete!
      (lambda (_%key165532%_)
        (let* ((_%tab165534%_ (thread-local-table))
               (_%h165536%_ _%tab165534%_)
               (_%key165539%_ _%key165532%_)
               (_%h165546%_
                (let ((_%$obj165543%_ _%h165536%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165543%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165543%_)))
                           '#t)
                      _%$obj165543%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165543%_)))))
               (_%h165548%_ _%h165546%_))
          (declare (not safe))
          (__hash-remove! _%h165548%_ _%key165539%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr165457%_ (current-thread)))
          (if (actor-thread? _%thr165457%_)
              (let ((_%$e165460%_ (actor-thread-locals _%thr165457%_)))
                (if _%$e165460%_
                    _%$e165460%_
                    (let ((_%tab165464%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr165457%_ _%tab165464%_)
                      _%tab165464%_)))
              (if (eq? _%thr165457%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e165494%_
                           (let* ((_%h165468%_ __thread-locals)
                                  (_%key165471%_ _%thr165457%_)
                                  (_%h165478%_
                                   (let ((_%$obj165475%_ _%h165468%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj165475%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj165475%_)))
                                              '#t)
                                         _%$obj165475%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj165475%_)))))
                                  (_%h165480%_ _%h165478%_))
                             (declare (not safe))
                             (__hash-get _%h165480%_ _%key165471%_))))
                      (if _%$e165494%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e165494%_)
                          (let ((_%tab165500%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h165502%_ __thread-locals)
                                   (_%key165505%_ _%thr165457%_)
                                   (_%value165508%_ _%tab165500%_)
                                   (_%h165515%_
                                    (let ((_%$obj165512%_ _%h165502%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj165512%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj165512%_)))
                                               '#t)
                                          _%$obj165512%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj165512%_)))))
                                   (_%h165517%_ _%h165515%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h165517%_
                               _%key165505%_
                               _%value165508%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab165500%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value165443%_)
        (let ((_%new-value165446%_ _%new-value165443%_))
          (set! __unhandled-actor-exception-hook _%new-value165446%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value165422%_)
        (if (or (not _%new-value165422%_) (procedure? _%new-value165422%_))
            (let ((_%new-value165433%_ _%new-value165422%_))
              (__unhandled-actor-exception-hook-set! _%new-value165433%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value165422%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx165329%_ _%proc165330%_)
        (let* ((_%mx165333%_ _%mx165329%_)
               (_%proc165341%_ _%proc165330%_)
               (_%handler165350%_ (current-exception-handler))
               (_%handler165389%_
                (lambda (_%e165352%_)
                  (let* ((_%handler165354%_ void)
                         (_%thunk165358%_
                          (lambda ()
                            (mutex-unlock! _%mx165333%_)
                            (let ()
                              (declare (not safe))
                              (_%handler165350%_ _%e165352%_))))
                         (_%handler165363%_ _%handler165354%_)
                         (_%thunk165379%_ _%thunk165358%_))
                    (declare (not safe))
                    (__with-catch _%handler165363%_ _%thunk165379%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e165352%_))))
               (_%thunk165395%_
                (lambda ()
                  (mutex-lock! _%mx165333%_)
                  (let ((_%result165393%_
                         (let () (declare (not safe)) (_%proc165341%_))))
                    (mutex-unlock! _%mx165333%_)
                    _%result165393%_)))
               (_%handler165400%_ _%handler165389%_)
               (_%thunk165411%_ _%thunk165395%_))
          (declare (not safe))
          (__with-exception-handler _%handler165400%_ _%thunk165411%_))))
    (define with-lock
      (lambda (_%mx165304%_ _%proc165305%_)
        (if (mutex? _%mx165304%_)
            (let ((_%mx165309%_ _%mx165304%_))
              (if (procedure? _%proc165305%_)
                  (let ((_%proc165319%_ _%proc165305%_))
                    (__with-lock _%mx165309%_ _%proc165319%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc165305%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx165304%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx165281%_ _%proc165282%_)
        (let* ((_%mx165285%_ _%mx165281%_) (_%proc165293%_ _%proc165282%_))
          (let ((__tmp166341 (lambda () (mutex-lock! _%mx165285%_)))
                (__tmp166340 (lambda () (mutex-unlock! _%mx165285%_))))
            (declare (not safe))
            (##dynamic-wind __tmp166341 _%proc165293%_ __tmp166340)))))
    (define with-dynamic-lock
      (lambda (_%mx165256%_ _%proc165257%_)
        (if (mutex? _%mx165256%_)
            (let ((_%mx165261%_ _%mx165256%_))
              (if (procedure? _%proc165257%_)
                  (let ((_%proc165271%_ _%proc165257%_))
                    (__with-dynamic-lock _%mx165261%_ _%proc165271%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc165257%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx165256%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk165187%_ _%error-port165188%_)
        (let* ((_%thunk165191%_ _%thunk165187%_)
               (_%error-port165199%_ _%error-port165188%_)
               (_%handler165214%_
                (let ((_%E165208%_ (current-exception-handler)))
                  (lambda (_%exn165210%_)
                    (let ((__tmp166342
                           (lambda (_%cont165212%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont165212%_
                                  _%exn165210%_
                                  _%error-port165199%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E165208%_ _%exn165210%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp166342)))))
               (_%thunk165217%_ _%thunk165191%_)
               (_%handler165222%_ _%handler165214%_)
               (_%thunk165236%_ _%thunk165217%_))
          (declare (not safe))
          (__with-exception-handler _%handler165222%_ _%thunk165236%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk165249%_)
        (let ((_%error-port165251%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk165249%_
           _%error-port165251%_))))
    (define __with-exception-stack-trace
      (lambda _g166343_
        (let ((_g166344_ (let () (declare (not safe)) (##length _g166343_))))
          (cond ((let () (declare (not safe)) (##fx= _g166344_ 1))
                 (apply __with-exception-stack-trace__0 _g166343_))
                ((let () (declare (not safe)) (##fx= _g166344_ 2))
                 (apply __with-exception-stack-trace__% _g166343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g166343_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk165151%_ _%error-port165152%_)
        (if (procedure? _%thunk165151%_)
            (let ((_%thunk165156%_ _%thunk165151%_))
              (if (port? _%error-port165152%_)
                  (let ((_%error-port165166%_ _%error-port165152%_))
                    (__with-exception-stack-trace__%
                     _%thunk165156%_
                     _%error-port165166%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port165152%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk165151%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk165179%_)
        (let ((_%error-port165181%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk165179%_
           _%error-port165181%_))))
    (define with-exception-stack-trace
      (lambda _g166345_
        (let ((_g166346_ (let () (declare (not safe)) (##length _g166345_))))
          (cond ((let () (declare (not safe)) (##fx= _g166346_ 1))
                 (apply with-exception-stack-trace__0 _g166345_))
                ((let () (declare (not safe)) (##fx= _g166346_ 2))
                 (apply with-exception-stack-trace__% _g166345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g166345_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont165132%_ _%exn165133%_ _%error-port165134%_)
        (let ((_%out165136%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out165136%_))
          (display '"*** Unhandled exception in " _%out165136%_)
          (display (current-thread) _%out165136%_)
          (newline _%out165136%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn165133%_ _%out165136%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn165133%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out165136%_)
                (newline _%out165136%_)
                (display-continuation-backtrace _%cont165132%_ _%out165136%_)))
          (let ((__tmp166347 (get-output-string _%out165136%_)))
            (declare (not safe))
            (##write-string __tmp166347 _%error-port165134%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont165141%_ _%exn165142%_)
        (let ((_%error-port165144%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont165141%_
           _%exn165142%_
           _%error-port165144%_))))
    (define dump-stack-trace!
      (lambda _g166348_
        (let ((_g166349_ (let () (declare (not safe)) (##length _g166348_))))
          (cond ((let () (declare (not safe)) (##fx= _g166349_ 2))
                 (apply dump-stack-trace!__0 _g166348_))
                ((let () (declare (not safe)) (##fx= _g166349_ 3))
                 (apply dump-stack-trace!__% _g166348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g166348_))))))
    (define __thread-dead?
      (lambda (_%thread165119%_)
        (let ((_%thread165122%_ _%thread165119%_))
          (not (macro-thread-end-condvar _%thread165122%_)))))
    (define thread-dead?
      (lambda (_%thread165105%_)
        (if (thread? _%thread165105%_)
            (let ((_%thread165109%_ _%thread165105%_))
              (__thread-dead? _%thread165109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread165105%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals
     nonce)))
