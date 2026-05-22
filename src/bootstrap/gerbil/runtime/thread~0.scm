(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1779435580)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk165694%_ _%name165695%_)
        (let* ((_%thunk165698%_ _%thunk165694%_)
               (_%name165706%_ _%name165695%_))
          (make-thread
           (lambda () (thread-main _%thunk165698%_))
           _%name165706%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk163574%_ _%name163575%_)
        (if (procedure? _%thunk163574%_)
            (let ((_%thunk163579%_ _%thunk163574%_))
              (if (symbol? _%name163575%_)
                  (let ((_%name163589%_ _%name163575%_))
                    (__make-system-thread _%thunk163579%_ _%name163589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name163575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk163574%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk165641%_ _%name165642%_)
        (let* ((_%thunk165645%_ _%thunk165641%_)
               (_%name165653%_ _%name165642%_))
          (thread-start!
           (let* ((_%thunk165662%_ _%thunk165645%_)
                  (_%name165665%_ _%name165653%_)
                  (_%thunk165670%_ _%thunk165662%_)
                  (_%name165684%_ _%name165665%_))
             (__make-system-thread _%thunk165670%_ _%name165684%_))))))
    (define system-thread!
      (lambda (_%thunk163719%_ _%name163720%_)
        (if (procedure? _%thunk163719%_)
            (let ((_%thunk163724%_ _%thunk163719%_))
              (if (symbol? _%name163720%_)
                  (let ((_%name163734%_ _%name163720%_))
                    (__system-thread! _%thunk163724%_ _%name163734%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name163720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk163719%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk165620%_ _%name165621%_)
        (let* ((_%thunk165624%_ _%thunk165620%_)
               (_%name165632%_ _%name165621%_))
          (spawn-actor
           _%thunk165624%_
           '()
           _%name165632%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk163864%_ _%name163865%_)
        (if (procedure? _%thunk163864%_)
            (let ((_%thunk163869%_ _%thunk163864%_))
              (if (symbol? _%name163865%_)
                  (let ((_%name163879%_ _%name163865%_))
                    (__system-actor! _%thunk163869%_ _%name163879%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name163865%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk163864%_)
              '#!void))))
    (define __spawn
      (lambda (_%f165607%_ . _%args165608%_)
        (let ((_%f165611%_ _%f165607%_))
          (spawn-actor _%f165611%_ _%args165608%_ '#!void '#f))))
    (define spawn
      (lambda (_%f164009%_ . _%args164010%_)
        (if (procedure? _%f164009%_)
            (let ((_%f164014%_ _%f164009%_))
              (declare (not safe))
              (##apply __spawn _%f164014%_ _%args164010%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f164009%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name165593%_ _%f165594%_ . _%args165595%_)
        (let ((_%f165598%_ _%f165594%_))
          (spawn-actor _%f165598%_ _%args165595%_ _%name165593%_ '#f))))
    (define spawn/name
      (lambda (_%name164144%_ _%f164145%_ . _%args164146%_)
        (if (procedure? _%f164145%_)
            (let ((_%f164150%_ _%f164145%_))
              (declare (not safe))
              (##apply __spawn/name _%name164144%_ _%f164150%_ _%args164146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f164145%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name165577%_ _%f165578%_ . _%args165579%_)
        (let* ((_%f165582%_ _%f165578%_)
               (_%tgroup165591%_ (make-thread-group _%name165577%_)))
          (spawn-actor
           _%f165582%_
           _%args165579%_
           _%name165577%_
           _%tgroup165591%_))))
    (define spawn/group
      (lambda (_%name164280%_ _%f164281%_ . _%args164282%_)
        (if (procedure? _%f164281%_)
            (let ((_%f164286%_ _%f164281%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name164280%_
                       _%f164286%_
                       _%args164282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f164281%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f165525%_ _%args165526%_ _%name165527%_ _%tgroup165528%_)
        (let* ((_%thunk165532%_
                (if (null? _%args165526%_)
                    _%f165525%_
                    (lambda () (apply _%f165525%_ _%args165526%_))))
               (_%thunk165568%_
                (lambda ()
                  (let* ((_%thunk165535%_ _%thunk165532%_)
                         (_%error-port165538%_ (current-error-port)))
                    (if (procedure? _%thunk165535%_)
                        (let* ((_%thunk165543%_ _%thunk165535%_)
                               (_%error-port165558%_ _%error-port165538%_))
                          (__with-exception-stack-trace__%
                           _%thunk165543%_
                           _%error-port165558%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk165535%_)
                          '#!void)))))
               (_%tgroup165573%_
                (let ((_%$e165570%_ _%tgroup165528%_))
                  (if _%$e165570%_ _%$e165570%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk165568%_))
            _%name165527%_
            _%tgroup165573%_)))))
    (define spawn-thread__%
      (lambda (_%thunk165502%_ _%name165503%_ _%tgroup165504%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk165502%_))
          _%name165503%_
          _%tgroup165504%_))))
    (define spawn-thread__0
      (lambda (_%thunk165510%_)
        (let* ((_%name165512%_ absent-obj) (_%tgroup165514%_ absent-obj))
          (spawn-thread__% _%thunk165510%_ _%name165512%_ _%tgroup165514%_))))
    (define spawn-thread__1
      (lambda (_%thunk165516%_ _%name165517%_)
        (let ((_%tgroup165519%_ absent-obj))
          (spawn-thread__% _%thunk165516%_ _%name165517%_ _%tgroup165519%_))))
    (define spawn-thread
      (lambda _g166003_
        (let ((_g166004_ (let () (declare (not safe)) (##length _g166003_))))
          (cond ((let () (declare (not safe)) (##fx= _g166004_ 1))
                 (apply spawn-thread__0 _g166003_))
                ((let () (declare (not safe)) (##fx= _g166004_ 2))
                 (apply spawn-thread__1 _g166003_))
                ((let () (declare (not safe)) (##fx= _g166004_ 3))
                 (apply spawn-thread__% _g166003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g166003_))))))
    (define thread-main
      (lambda (_%thunk165433%_)
        (let* ((_%handler165472%_
                (lambda (_%exn165435%_)
                  (let ((__tmp166005
                         (lambda (_%cont165437%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler165439%_ void)
                                      (_%thunk165443%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont165437%_
                                            _%exn165435%_))))
                                      (_%handler165448%_ _%handler165439%_)
                                      (_%thunk165462%_ _%thunk165443%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler165448%_
                                  _%thunk165462%_))
                               '#!void)
                           (let ((__tmp166006
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont165437%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp166006
                              ##primordial-exception-handler
                              _%exn165435%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp166005))))
               (_%thunk165475%_ _%thunk165433%_)
               (_%handler165480%_ _%handler165472%_))
          (if (procedure? _%thunk165475%_)
              (let ((_%thunk165491%_ _%thunk165475%_))
                (declare (not safe))
                (__with-exception-handler _%handler165480%_ _%thunk165491%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165475%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key165389%_ _%default165390%_)
        (let* ((_%tab165392%_ (thread-local-table))
               (_%h165394%_ _%tab165392%_)
               (_%key165397%_ _%key165389%_)
               (_%default165400%_ _%default165390%_)
               (_%h165407%_
                (let ((_%$obj165404%_ _%h165394%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165404%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165404%_)))
                           '#t)
                      _%$obj165404%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165404%_)))))
               (_%h165409%_ _%h165407%_))
          (declare (not safe))
          (__hash-ref__% _%h165409%_ _%key165397%_ _%default165400%_))))
    (define thread-local-ref__0
      (lambda (_%key165426%_)
        (let ((_%default165428%_ absent-obj))
          (thread-local-ref__% _%key165426%_ _%default165428%_))))
    (define thread-local-ref
      (lambda _g166007_
        (let ((_g166008_ (let () (declare (not safe)) (##length _g166007_))))
          (cond ((let () (declare (not safe)) (##fx= _g166008_ 1))
                 (apply thread-local-ref__0 _g166007_))
                ((let () (declare (not safe)) (##fx= _g166008_ 2))
                 (apply thread-local-ref__% _g166007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g166007_))))))
    (define thread-local-get
      (lambda (_%key165386%_) (thread-local-ref__% _%key165386%_ '#f)))
    (define thread-local-set!
      (lambda (_%key165352%_ _%value165353%_)
        (let* ((_%tab165355%_ (thread-local-table))
               (_%h165357%_ _%tab165355%_)
               (_%key165360%_ _%key165352%_)
               (_%value165363%_ _%value165353%_)
               (_%h165370%_
                (let ((_%$obj165367%_ _%h165357%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165367%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165367%_)))
                           '#t)
                      _%$obj165367%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165367%_)))))
               (_%h165372%_ _%h165370%_))
          (declare (not safe))
          (__hash-put! _%h165372%_ _%key165360%_ _%value165363%_))))
    (define thread-local-delete!
      (lambda (_%key165323%_)
        (let* ((_%tab165325%_ (thread-local-table))
               (_%h165327%_ _%tab165325%_)
               (_%key165330%_ _%key165323%_)
               (_%h165337%_
                (let ((_%$obj165334%_ _%h165327%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165334%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165334%_)))
                           '#t)
                      _%$obj165334%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165334%_)))))
               (_%h165339%_ _%h165337%_))
          (declare (not safe))
          (__hash-remove! _%h165339%_ _%key165330%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr165248%_ (current-thread)))
          (if (actor-thread? _%thr165248%_)
              (let ((_%$e165251%_ (actor-thread-locals _%thr165248%_)))
                (if _%$e165251%_
                    _%$e165251%_
                    (let ((_%tab165255%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr165248%_ _%tab165255%_)
                      _%tab165255%_)))
              (if (eq? _%thr165248%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e165285%_
                           (let* ((_%h165259%_ __thread-locals)
                                  (_%key165262%_ _%thr165248%_)
                                  (_%h165269%_
                                   (let ((_%$obj165266%_ _%h165259%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj165266%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj165266%_)))
                                              '#t)
                                         _%$obj165266%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj165266%_)))))
                                  (_%h165271%_ _%h165269%_))
                             (declare (not safe))
                             (__hash-get _%h165271%_ _%key165262%_))))
                      (if _%$e165285%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e165285%_)
                          (let ((_%tab165291%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h165293%_ __thread-locals)
                                   (_%key165296%_ _%thr165248%_)
                                   (_%value165299%_ _%tab165291%_)
                                   (_%h165306%_
                                    (let ((_%$obj165303%_ _%h165293%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj165303%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj165303%_)))
                                               '#t)
                                          _%$obj165303%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj165303%_)))))
                                   (_%h165308%_ _%h165306%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h165308%_
                               _%key165296%_
                               _%value165299%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab165291%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value165234%_)
        (let ((_%new-value165237%_ _%new-value165234%_))
          (set! __unhandled-actor-exception-hook _%new-value165237%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value164416%_)
        (if (or (not _%new-value164416%_) (procedure? _%new-value164416%_))
            (let ((_%new-value164427%_ _%new-value164416%_))
              (__unhandled-actor-exception-hook-set! _%new-value164427%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value164416%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx165141%_ _%proc165142%_)
        (let* ((_%mx165145%_ _%mx165141%_)
               (_%proc165153%_ _%proc165142%_)
               (_%handler165162%_ (current-exception-handler))
               (_%handler165201%_
                (lambda (_%e165164%_)
                  (let* ((_%handler165166%_ void)
                         (_%thunk165170%_
                          (lambda ()
                            (mutex-unlock! _%mx165145%_)
                            (let ()
                              (declare (not safe))
                              (_%handler165162%_ _%e165164%_))))
                         (_%handler165175%_ _%handler165166%_)
                         (_%thunk165191%_ _%thunk165170%_))
                    (declare (not safe))
                    (__with-catch _%handler165175%_ _%thunk165191%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e165164%_))))
               (_%thunk165207%_
                (lambda ()
                  (mutex-lock! _%mx165145%_)
                  (let ((_%result165205%_
                         (let () (declare (not safe)) (_%proc165153%_))))
                    (mutex-unlock! _%mx165145%_)
                    _%result165205%_)))
               (_%handler165212%_ _%handler165201%_)
               (_%thunk165223%_ _%thunk165207%_))
          (declare (not safe))
          (__with-exception-handler _%handler165212%_ _%thunk165223%_))))
    (define with-lock
      (lambda (_%mx164557%_ _%proc164558%_)
        (if (mutex? _%mx164557%_)
            (let ((_%mx164562%_ _%mx164557%_))
              (if (procedure? _%proc164558%_)
                  (let ((_%proc164572%_ _%proc164558%_))
                    (__with-lock _%mx164562%_ _%proc164572%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc164558%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx164557%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx165118%_ _%proc165119%_)
        (let* ((_%mx165122%_ _%mx165118%_) (_%proc165130%_ _%proc165119%_))
          (let ((__tmp166010 (lambda () (mutex-lock! _%mx165122%_)))
                (__tmp166009 (lambda () (mutex-unlock! _%mx165122%_))))
            (declare (not safe))
            (##dynamic-wind __tmp166010 _%proc165130%_ __tmp166009)))))
    (define with-dynamic-lock
      (lambda (_%mx164702%_ _%proc164703%_)
        (if (mutex? _%mx164702%_)
            (let ((_%mx164707%_ _%mx164702%_))
              (if (procedure? _%proc164703%_)
                  (let ((_%proc164717%_ _%proc164703%_))
                    (__with-dynamic-lock _%mx164707%_ _%proc164717%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc164703%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx164702%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk165049%_ _%error-port165050%_)
        (let* ((_%thunk165053%_ _%thunk165049%_)
               (_%error-port165061%_ _%error-port165050%_)
               (_%handler165076%_
                (let ((_%E165070%_ (current-exception-handler)))
                  (lambda (_%exn165072%_)
                    (let ((__tmp166011
                           (lambda (_%cont165074%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont165074%_
                                  _%exn165072%_
                                  _%error-port165061%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E165070%_ _%exn165072%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp166011)))))
               (_%thunk165079%_ _%thunk165053%_)
               (_%handler165084%_ _%handler165076%_)
               (_%thunk165098%_ _%thunk165079%_))
          (declare (not safe))
          (__with-exception-handler _%handler165084%_ _%thunk165098%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk165111%_)
        (let ((_%error-port165113%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk165111%_
           _%error-port165113%_))))
    (define __with-exception-stack-trace
      (lambda _g166012_
        (let ((_g166013_ (let () (declare (not safe)) (##length _g166012_))))
          (cond ((let () (declare (not safe)) (##fx= _g166013_ 1))
                 (apply __with-exception-stack-trace__0 _g166012_))
                ((let () (declare (not safe)) (##fx= _g166013_ 2))
                 (apply __with-exception-stack-trace__% _g166012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g166012_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk164848%_ _%error-port164849%_)
        (if (procedure? _%thunk164848%_)
            (let ((_%thunk164853%_ _%thunk164848%_))
              (if (port? _%error-port164849%_)
                  (let ((_%error-port164863%_ _%error-port164849%_))
                    (__with-exception-stack-trace__%
                     _%thunk164853%_
                     _%error-port164863%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port164849%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk164848%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk164876%_)
        (let ((_%error-port164878%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk164876%_
           _%error-port164878%_))))
    (define with-exception-stack-trace
      (lambda _g166014_
        (let ((_g166015_ (let () (declare (not safe)) (##length _g166014_))))
          (cond ((let () (declare (not safe)) (##fx= _g166015_ 1))
                 (apply with-exception-stack-trace__0 _g166014_))
                ((let () (declare (not safe)) (##fx= _g166015_ 2))
                 (apply with-exception-stack-trace__% _g166014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g166014_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont165030%_ _%exn165031%_ _%error-port165032%_)
        (let ((_%out165034%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out165034%_))
          (display '"*** Unhandled exception in " _%out165034%_)
          (display (current-thread) _%out165034%_)
          (newline _%out165034%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn165031%_ _%out165034%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn165031%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out165034%_)
                (newline _%out165034%_)
                (display-continuation-backtrace _%cont165030%_ _%out165034%_)))
          (let ((__tmp166016 (get-output-string _%out165034%_)))
            (declare (not safe))
            (##write-string __tmp166016 _%error-port165032%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont165039%_ _%exn165040%_)
        (let ((_%error-port165042%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont165039%_
           _%exn165040%_
           _%error-port165042%_))))
    (define dump-stack-trace!
      (lambda _g166017_
        (let ((_g166018_ (let () (declare (not safe)) (##length _g166017_))))
          (cond ((let () (declare (not safe)) (##fx= _g166018_ 2))
                 (apply dump-stack-trace!__0 _g166017_))
                ((let () (declare (not safe)) (##fx= _g166018_ 3))
                 (apply dump-stack-trace!__% _g166017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g166017_))))))
    (define __thread-dead?
      (lambda (_%thread165017%_)
        (let ((_%thread165020%_ _%thread165017%_))
          (not (macro-thread-end-condvar _%thread165020%_)))))
    (define thread-dead?
      (lambda (_%thread165003%_)
        (if (thread? _%thread165003%_)
            (let ((_%thread165007%_ _%thread165003%_))
              (__thread-dead? _%thread165007%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread165003%_)
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
