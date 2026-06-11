(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1781138352)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk166121%_ _%name166122%_)
        (let* ((_%thunk166125%_ _%thunk166121%_)
               (_%name166133%_ _%name166122%_))
          (make-thread
           (lambda () (thread-main _%thunk166125%_))
           _%name166133%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk166096%_ _%name166097%_)
        (if (procedure? _%thunk166096%_)
            (let ((_%thunk166101%_ _%thunk166096%_))
              (if (symbol? _%name166097%_)
                  (let ((_%name166111%_ _%name166097%_))
                    (__make-system-thread _%thunk166101%_ _%name166111%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name166097%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk166096%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk166043%_ _%name166044%_)
        (let* ((_%thunk166047%_ _%thunk166043%_)
               (_%name166055%_ _%name166044%_))
          (thread-start!
           (let* ((_%thunk166064%_ _%thunk166047%_)
                  (_%name166067%_ _%name166055%_)
                  (_%thunk166072%_ _%thunk166064%_)
                  (_%name166086%_ _%name166067%_))
             (__make-system-thread _%thunk166072%_ _%name166086%_))))))
    (define system-thread!
      (lambda (_%thunk166018%_ _%name166019%_)
        (if (procedure? _%thunk166018%_)
            (let ((_%thunk166023%_ _%thunk166018%_))
              (if (symbol? _%name166019%_)
                  (let ((_%name166033%_ _%name166019%_))
                    (__system-thread! _%thunk166023%_ _%name166033%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name166019%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk166018%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk165997%_ _%name165998%_)
        (let* ((_%thunk166001%_ _%thunk165997%_)
               (_%name166009%_ _%name165998%_))
          (spawn-actor
           _%thunk166001%_
           '()
           _%name166009%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk165972%_ _%name165973%_)
        (if (procedure? _%thunk165972%_)
            (let ((_%thunk165977%_ _%thunk165972%_))
              (if (symbol? _%name165973%_)
                  (let ((_%name165987%_ _%name165973%_))
                    (__system-actor! _%thunk165977%_ _%name165987%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name165973%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk165972%_)
              '#!void))))
    (define __spawn
      (lambda (_%f165959%_ . _%args165960%_)
        (let ((_%f165963%_ _%f165959%_))
          (spawn-actor _%f165963%_ _%args165960%_ '#!void '#f))))
    (define spawn
      (lambda (_%f165944%_ . _%args165945%_)
        (if (procedure? _%f165944%_)
            (let ((_%f165949%_ _%f165944%_))
              (declare (not safe))
              (##apply __spawn _%f165949%_ _%args165945%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f165944%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name165930%_ _%f165931%_ . _%args165932%_)
        (let ((_%f165935%_ _%f165931%_))
          (spawn-actor _%f165935%_ _%args165932%_ _%name165930%_ '#f))))
    (define spawn/name
      (lambda (_%name165914%_ _%f165915%_ . _%args165916%_)
        (if (procedure? _%f165915%_)
            (let ((_%f165920%_ _%f165915%_))
              (declare (not safe))
              (##apply __spawn/name _%name165914%_ _%f165920%_ _%args165916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f165915%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name165898%_ _%f165899%_ . _%args165900%_)
        (let* ((_%f165903%_ _%f165899%_)
               (_%tgroup165912%_ (make-thread-group _%name165898%_)))
          (spawn-actor
           _%f165903%_
           _%args165900%_
           _%name165898%_
           _%tgroup165912%_))))
    (define spawn/group
      (lambda (_%name165882%_ _%f165883%_ . _%args165884%_)
        (if (procedure? _%f165883%_)
            (let ((_%f165888%_ _%f165883%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name165882%_
                       _%f165888%_
                       _%args165884%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f165883%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f165830%_ _%args165831%_ _%name165832%_ _%tgroup165833%_)
        (let* ((_%thunk165837%_
                (if (null? _%args165831%_)
                    _%f165830%_
                    (lambda () (apply _%f165830%_ _%args165831%_))))
               (_%thunk165873%_
                (lambda ()
                  (let* ((_%thunk165840%_ _%thunk165837%_)
                         (_%error-port165843%_ (current-error-port)))
                    (if (procedure? _%thunk165840%_)
                        (let* ((_%thunk165848%_ _%thunk165840%_)
                               (_%error-port165863%_ _%error-port165843%_))
                          (__with-exception-stack-trace__%
                           _%thunk165848%_
                           _%error-port165863%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk165840%_)
                          '#!void)))))
               (_%tgroup165878%_
                (let ((_%$e165875%_ _%tgroup165833%_))
                  (if _%$e165875%_ _%$e165875%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk165873%_))
            _%name165832%_
            _%tgroup165878%_)))))
    (define spawn-thread__%
      (lambda (_%thunk165807%_ _%name165808%_ _%tgroup165809%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk165807%_))
          _%name165808%_
          _%tgroup165809%_))))
    (define spawn-thread__0
      (lambda (_%thunk165815%_)
        (let* ((_%name165817%_ absent-obj) (_%tgroup165819%_ absent-obj))
          (spawn-thread__% _%thunk165815%_ _%name165817%_ _%tgroup165819%_))))
    (define spawn-thread__1
      (lambda (_%thunk165821%_ _%name165822%_)
        (let ((_%tgroup165824%_ absent-obj))
          (spawn-thread__% _%thunk165821%_ _%name165822%_ _%tgroup165824%_))))
    (define spawn-thread
      (lambda _g166430_
        (let ((_g166431_ (let () (declare (not safe)) (##length _g166430_))))
          (cond ((let () (declare (not safe)) (##fx= _g166431_ 1))
                 (apply spawn-thread__0 _g166430_))
                ((let () (declare (not safe)) (##fx= _g166431_ 2))
                 (apply spawn-thread__1 _g166430_))
                ((let () (declare (not safe)) (##fx= _g166431_ 3))
                 (apply spawn-thread__% _g166430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g166430_))))))
    (define thread-main
      (lambda (_%thunk165738%_)
        (let* ((_%handler165777%_
                (lambda (_%exn165740%_)
                  (let ((__tmp166432
                         (lambda (_%cont165742%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler165744%_ void)
                                      (_%thunk165748%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont165742%_
                                            _%exn165740%_))))
                                      (_%handler165753%_ _%handler165744%_)
                                      (_%thunk165767%_ _%thunk165748%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler165753%_
                                  _%thunk165767%_))
                               '#!void)
                           (let ((__tmp166433
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont165742%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp166433
                              ##primordial-exception-handler
                              _%exn165740%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp166432))))
               (_%thunk165780%_ _%thunk165738%_)
               (_%handler165785%_ _%handler165777%_))
          (if (procedure? _%thunk165780%_)
              (let ((_%thunk165796%_ _%thunk165780%_))
                (declare (not safe))
                (__with-exception-handler _%handler165785%_ _%thunk165796%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165780%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key165694%_ _%default165695%_)
        (let* ((_%tab165697%_ (thread-local-table))
               (_%h165699%_ _%tab165697%_)
               (_%key165702%_ _%key165694%_)
               (_%default165705%_ _%default165695%_)
               (_%h165712%_
                (let ((_%$obj165709%_ _%h165699%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165709%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165709%_)))
                           '#t)
                      _%$obj165709%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165709%_)))))
               (_%h165714%_ _%h165712%_))
          (declare (not safe))
          (__hash-ref__% _%h165714%_ _%key165702%_ _%default165705%_))))
    (define thread-local-ref__0
      (lambda (_%key165731%_)
        (let ((_%default165733%_ absent-obj))
          (thread-local-ref__% _%key165731%_ _%default165733%_))))
    (define thread-local-ref
      (lambda _g166434_
        (let ((_g166435_ (let () (declare (not safe)) (##length _g166434_))))
          (cond ((let () (declare (not safe)) (##fx= _g166435_ 1))
                 (apply thread-local-ref__0 _g166434_))
                ((let () (declare (not safe)) (##fx= _g166435_ 2))
                 (apply thread-local-ref__% _g166434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g166434_))))))
    (define thread-local-get
      (lambda (_%key165691%_) (thread-local-ref__% _%key165691%_ '#f)))
    (define thread-local-set!
      (lambda (_%key165657%_ _%value165658%_)
        (let* ((_%tab165660%_ (thread-local-table))
               (_%h165662%_ _%tab165660%_)
               (_%key165665%_ _%key165657%_)
               (_%value165668%_ _%value165658%_)
               (_%h165675%_
                (let ((_%$obj165672%_ _%h165662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165672%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165672%_)))
                           '#t)
                      _%$obj165672%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165672%_)))))
               (_%h165677%_ _%h165675%_))
          (declare (not safe))
          (__hash-put! _%h165677%_ _%key165665%_ _%value165668%_))))
    (define thread-local-delete!
      (lambda (_%key165628%_)
        (let* ((_%tab165630%_ (thread-local-table))
               (_%h165632%_ _%tab165630%_)
               (_%key165635%_ _%key165628%_)
               (_%h165642%_
                (let ((_%$obj165639%_ _%h165632%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165639%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165639%_)))
                           '#t)
                      _%$obj165639%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165639%_)))))
               (_%h165644%_ _%h165642%_))
          (declare (not safe))
          (__hash-remove! _%h165644%_ _%key165635%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr165553%_ (current-thread)))
          (if (actor-thread? _%thr165553%_)
              (let ((_%$e165556%_ (actor-thread-locals _%thr165553%_)))
                (if _%$e165556%_
                    _%$e165556%_
                    (let ((_%tab165560%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr165553%_ _%tab165560%_)
                      _%tab165560%_)))
              (if (eq? _%thr165553%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e165590%_
                           (let* ((_%h165564%_ __thread-locals)
                                  (_%key165567%_ _%thr165553%_)
                                  (_%h165574%_
                                   (let ((_%$obj165571%_ _%h165564%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj165571%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj165571%_)))
                                              '#t)
                                         _%$obj165571%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj165571%_)))))
                                  (_%h165576%_ _%h165574%_))
                             (declare (not safe))
                             (__hash-get _%h165576%_ _%key165567%_))))
                      (if _%$e165590%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e165590%_)
                          (let ((_%tab165596%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h165598%_ __thread-locals)
                                   (_%key165601%_ _%thr165553%_)
                                   (_%value165604%_ _%tab165596%_)
                                   (_%h165611%_
                                    (let ((_%$obj165608%_ _%h165598%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj165608%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj165608%_)))
                                               '#t)
                                          _%$obj165608%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj165608%_)))))
                                   (_%h165613%_ _%h165611%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h165613%_
                               _%key165601%_
                               _%value165604%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab165596%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value165539%_)
        (let ((_%new-value165542%_ _%new-value165539%_))
          (set! __unhandled-actor-exception-hook _%new-value165542%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value165518%_)
        (if (or (not _%new-value165518%_) (procedure? _%new-value165518%_))
            (let ((_%new-value165529%_ _%new-value165518%_))
              (__unhandled-actor-exception-hook-set! _%new-value165529%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value165518%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx165425%_ _%proc165426%_)
        (let* ((_%mx165429%_ _%mx165425%_)
               (_%proc165437%_ _%proc165426%_)
               (_%handler165446%_ (current-exception-handler))
               (_%handler165485%_
                (lambda (_%e165448%_)
                  (let* ((_%handler165450%_ void)
                         (_%thunk165454%_
                          (lambda ()
                            (mutex-unlock! _%mx165429%_)
                            (let ()
                              (declare (not safe))
                              (_%handler165446%_ _%e165448%_))))
                         (_%handler165459%_ _%handler165450%_)
                         (_%thunk165475%_ _%thunk165454%_))
                    (declare (not safe))
                    (__with-catch _%handler165459%_ _%thunk165475%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e165448%_))))
               (_%thunk165491%_
                (lambda ()
                  (mutex-lock! _%mx165429%_)
                  (let ((_%result165489%_
                         (let () (declare (not safe)) (_%proc165437%_))))
                    (mutex-unlock! _%mx165429%_)
                    _%result165489%_)))
               (_%handler165496%_ _%handler165485%_)
               (_%thunk165507%_ _%thunk165491%_))
          (declare (not safe))
          (__with-exception-handler _%handler165496%_ _%thunk165507%_))))
    (define with-lock
      (lambda (_%mx165400%_ _%proc165401%_)
        (if (mutex? _%mx165400%_)
            (let ((_%mx165405%_ _%mx165400%_))
              (if (procedure? _%proc165401%_)
                  (let ((_%proc165415%_ _%proc165401%_))
                    (__with-lock _%mx165405%_ _%proc165415%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc165401%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx165400%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx165377%_ _%proc165378%_)
        (let* ((_%mx165381%_ _%mx165377%_) (_%proc165389%_ _%proc165378%_))
          (let ((__tmp166437 (lambda () (mutex-lock! _%mx165381%_)))
                (__tmp166436 (lambda () (mutex-unlock! _%mx165381%_))))
            (declare (not safe))
            (##dynamic-wind __tmp166437 _%proc165389%_ __tmp166436)))))
    (define with-dynamic-lock
      (lambda (_%mx165352%_ _%proc165353%_)
        (if (mutex? _%mx165352%_)
            (let ((_%mx165357%_ _%mx165352%_))
              (if (procedure? _%proc165353%_)
                  (let ((_%proc165367%_ _%proc165353%_))
                    (__with-dynamic-lock _%mx165357%_ _%proc165367%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc165353%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx165352%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk165283%_ _%error-port165284%_)
        (let* ((_%thunk165287%_ _%thunk165283%_)
               (_%error-port165295%_ _%error-port165284%_)
               (_%handler165310%_
                (let ((_%E165304%_ (current-exception-handler)))
                  (lambda (_%exn165306%_)
                    (let ((__tmp166438
                           (lambda (_%cont165308%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont165308%_
                                  _%exn165306%_
                                  _%error-port165295%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E165304%_ _%exn165306%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp166438)))))
               (_%thunk165313%_ _%thunk165287%_)
               (_%handler165318%_ _%handler165310%_)
               (_%thunk165332%_ _%thunk165313%_))
          (declare (not safe))
          (__with-exception-handler _%handler165318%_ _%thunk165332%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk165345%_)
        (let ((_%error-port165347%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk165345%_
           _%error-port165347%_))))
    (define __with-exception-stack-trace
      (lambda _g166439_
        (let ((_g166440_ (let () (declare (not safe)) (##length _g166439_))))
          (cond ((let () (declare (not safe)) (##fx= _g166440_ 1))
                 (apply __with-exception-stack-trace__0 _g166439_))
                ((let () (declare (not safe)) (##fx= _g166440_ 2))
                 (apply __with-exception-stack-trace__% _g166439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g166439_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk165247%_ _%error-port165248%_)
        (if (procedure? _%thunk165247%_)
            (let ((_%thunk165252%_ _%thunk165247%_))
              (if (port? _%error-port165248%_)
                  (let ((_%error-port165262%_ _%error-port165248%_))
                    (__with-exception-stack-trace__%
                     _%thunk165252%_
                     _%error-port165262%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port165248%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk165247%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk165275%_)
        (let ((_%error-port165277%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk165275%_
           _%error-port165277%_))))
    (define with-exception-stack-trace
      (lambda _g166441_
        (let ((_g166442_ (let () (declare (not safe)) (##length _g166441_))))
          (cond ((let () (declare (not safe)) (##fx= _g166442_ 1))
                 (apply with-exception-stack-trace__0 _g166441_))
                ((let () (declare (not safe)) (##fx= _g166442_ 2))
                 (apply with-exception-stack-trace__% _g166441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g166441_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont165228%_ _%exn165229%_ _%error-port165230%_)
        (let ((_%out165232%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out165232%_))
          (display '"*** Unhandled exception in " _%out165232%_)
          (display (current-thread) _%out165232%_)
          (newline _%out165232%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn165229%_ _%out165232%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn165229%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out165232%_)
                (newline _%out165232%_)
                (display-continuation-backtrace _%cont165228%_ _%out165232%_)))
          (let ((__tmp166443 (get-output-string _%out165232%_)))
            (declare (not safe))
            (##write-string __tmp166443 _%error-port165230%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont165237%_ _%exn165238%_)
        (let ((_%error-port165240%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont165237%_
           _%exn165238%_
           _%error-port165240%_))))
    (define dump-stack-trace!
      (lambda _g166444_
        (let ((_g166445_ (let () (declare (not safe)) (##length _g166444_))))
          (cond ((let () (declare (not safe)) (##fx= _g166445_ 2))
                 (apply dump-stack-trace!__0 _g166444_))
                ((let () (declare (not safe)) (##fx= _g166445_ 3))
                 (apply dump-stack-trace!__% _g166444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g166444_))))))
    (define __thread-dead?
      (lambda (_%thread165215%_)
        (let ((_%thread165218%_ _%thread165215%_))
          (not (macro-thread-end-condvar _%thread165218%_)))))
    (define thread-dead?
      (lambda (_%thread165201%_)
        (if (thread? _%thread165201%_)
            (let ((_%thread165205%_ _%thread165201%_))
              (__thread-dead? _%thread165205%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread165201%_)
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
