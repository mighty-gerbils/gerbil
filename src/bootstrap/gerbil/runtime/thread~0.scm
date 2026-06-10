(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1781119043)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk144752%_ _%name144753%_)
        (let* ((_%thunk144756%_ _%thunk144752%_)
               (_%name144764%_ _%name144753%_))
          (make-thread
           (lambda () (thread-main _%thunk144756%_))
           _%name144764%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk144727%_ _%name144728%_)
        (if (procedure? _%thunk144727%_)
            (let ((_%thunk144732%_ _%thunk144727%_))
              (if (symbol? _%name144728%_)
                  (let ((_%name144742%_ _%name144728%_))
                    (__make-system-thread _%thunk144732%_ _%name144742%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name144728%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk144727%_)
              (void)))))
    (define __system-thread!
      (lambda (_%thunk144674%_ _%name144675%_)
        (let* ((_%thunk144678%_ _%thunk144674%_)
               (_%name144686%_ _%name144675%_))
          (thread-start!
           (let* ((_%thunk144695%_ _%thunk144678%_)
                  (_%name144698%_ _%name144686%_))
             (if (procedure? _%thunk144695%_)
                 (let ((_%thunk144703%_ _%thunk144695%_))
                   (if (symbol? _%name144698%_)
                       (let ((_%name144717%_ _%name144698%_))
                         (__make-system-thread _%thunk144703%_ _%name144717%_))
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/runtime/thread
                          'contract:
                          'symbol?
                          'value:
                          _%name144698%_)
                         (void))))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/thread
                    'contract:
                    'procedure?
                    'value:
                    _%thunk144695%_)
                   (void))))))))
    (define system-thread!
      (lambda (_%thunk144649%_ _%name144650%_)
        (if (procedure? _%thunk144649%_)
            (let ((_%thunk144654%_ _%thunk144649%_))
              (if (symbol? _%name144650%_)
                  (let ((_%name144664%_ _%name144650%_))
                    (__system-thread! _%thunk144654%_ _%name144664%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name144650%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk144649%_)
              (void)))))
    (define __system-actor!
      (lambda (_%thunk144628%_ _%name144629%_)
        (let* ((_%thunk144632%_ _%thunk144628%_)
               (_%name144640%_ _%name144629%_))
          (spawn-actor
           _%thunk144632%_
           '()
           _%name144640%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk144603%_ _%name144604%_)
        (if (procedure? _%thunk144603%_)
            (let ((_%thunk144608%_ _%thunk144603%_))
              (if (symbol? _%name144604%_)
                  (let ((_%name144618%_ _%name144604%_))
                    (__system-actor! _%thunk144608%_ _%name144618%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name144604%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk144603%_)
              (void)))))
    (define __spawn
      (lambda (_%f144590%_ . _%args144591%_)
        (let ((_%f144594%_ _%f144590%_))
          (spawn-actor _%f144594%_ _%args144591%_ '#!void '#f))))
    (define spawn
      (lambda (_%f144575%_ . _%args144576%_)
        (if (procedure? _%f144575%_)
            (let ((_%f144580%_ _%f144575%_))
              (declare (not safe))
              (##apply __spawn _%f144580%_ _%args144576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f144575%_)
              (void)))))
    (define __spawn/name
      (lambda (_%name144561%_ _%f144562%_ . _%args144563%_)
        (let ((_%f144566%_ _%f144562%_))
          (spawn-actor _%f144566%_ _%args144563%_ _%name144561%_ '#f))))
    (define spawn/name
      (lambda (_%name144545%_ _%f144546%_ . _%args144547%_)
        (if (procedure? _%f144546%_)
            (let ((_%f144551%_ _%f144546%_))
              (declare (not safe))
              (##apply __spawn/name _%name144545%_ _%f144551%_ _%args144547%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f144546%_)
              (void)))))
    (define __spawn/group
      (lambda (_%name144529%_ _%f144530%_ . _%args144531%_)
        (let* ((_%f144534%_ _%f144530%_)
               (_%tgroup144543%_ (make-thread-group _%name144529%_)))
          (spawn-actor
           _%f144534%_
           _%args144531%_
           _%name144529%_
           _%tgroup144543%_))))
    (define spawn/group
      (lambda (_%name144513%_ _%f144514%_ . _%args144515%_)
        (if (procedure? _%f144514%_)
            (let ((_%f144519%_ _%f144514%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name144513%_
                       _%f144519%_
                       _%args144515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f144514%_)
              (void)))))
    (define spawn-actor
      (lambda (_%f144461%_ _%args144462%_ _%name144463%_ _%tgroup144464%_)
        (let* ((_%thunk144468%_
                (if (null? _%args144462%_)
                    _%f144461%_
                    (lambda () (apply _%f144461%_ _%args144462%_))))
               (_%thunk144504%_
                (lambda ()
                  (let* ((_%thunk144471%_ _%thunk144468%_)
                         (_%error-port144474%_ (current-error-port)))
                    (if (procedure? _%thunk144471%_)
                        (let ((_%thunk144479%_ _%thunk144471%_))
                          (if (port? _%error-port144474%_)
                              (let ((_%error-port144494%_
                                     _%error-port144474%_))
                                (__with-exception-stack-trace
                                 _%thunk144479%_
                                 _%error-port144494%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/thread
                                 'contract:
                                 'port?
                                 'value:
                                 _%error-port144474%_)
                                (void))))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk144471%_)
                          (void))))))
               (_%tgroup144509%_
                (let ((_%$e144506%_ _%tgroup144464%_))
                  (if _%$e144506%_ _%$e144506%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk144504%_))
            _%name144463%_
            _%tgroup144509%_)))))
    (define spawn-thread
      (let ((_%$%opt-lambda144436144443%_
             (lambda (_%thunk144438%_ _%name144439%_ _%tgroup144440%_)
               (thread-start!
                (make-thread
                 (lambda () (thread-main _%thunk144438%_))
                 _%name144439%_
                 _%tgroup144440%_)))))
        (lambda _g144775_
          (let ((_g144776_ (let () (declare (not safe)) (##length _g144775_))))
            (cond ((let () (declare (not safe)) (##fx= _g144776_ 1))
                   (apply (lambda (_%thunk144446%_)
                            (let* ((_%name144448%_ absent-obj)
                                   (_%tgroup144450%_ absent-obj))
                              (_%$%opt-lambda144436144443%_
                               _%thunk144446%_
                               _%name144448%_
                               _%tgroup144450%_)))
                          _g144775_))
                  ((let () (declare (not safe)) (##fx= _g144776_ 2))
                   (apply (lambda (_%thunk144452%_ _%name144453%_)
                            (let ((_%tgroup144455%_ absent-obj))
                              (_%$%opt-lambda144436144443%_
                               _%thunk144452%_
                               _%name144453%_
                               _%tgroup144455%_)))
                          _g144775_))
                  ((let () (declare (not safe)) (##fx= _g144776_ 3))
                   (apply _%$%opt-lambda144436144443%_ _g144775_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    spawn-thread
                    _g144775_)))))))
    (define thread-main
      (lambda (_%thunk144369%_)
        (let* ((_%handler144408%_
                (lambda (_%exn144371%_)
                  (let ((__tmp144777
                         (lambda (_%cont144373%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler144375%_ void)
                                      (_%thunk144379%_
                                       (lambda ()
                                         (__unhandled-actor-exception-hook
                                          _%cont144373%_
                                          _%exn144371%_))))
                                 (if (procedure? _%handler144375%_)
                                     (let ((_%handler144384%_
                                            _%handler144375%_))
                                       (if (procedure? _%thunk144379%_)
                                           (let ((_%thunk144398%_
                                                  _%thunk144379%_))
                                             (__with-catch
                                              _%handler144384%_
                                              _%thunk144398%_))
                                           (begin
                                             (raise-contract-violation-error
                                              '"contract violation"
                                              'context:
                                              'gerbil/runtime/thread
                                              'contract:
                                              'procedure?
                                              'value:
                                              _%thunk144379%_)
                                             (void))))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/thread
                                        'contract:
                                        'procedure?
                                        'value:
                                        _%handler144375%_)
                                       (void))))
                               '#!void)
                           (let ((__tmp144778
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont144373%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp144778
                              ##primordial-exception-handler
                              _%exn144371%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp144777))))
               (_%thunk144411%_ _%thunk144369%_))
          (if (procedure? _%handler144408%_)
              (let ((_%handler144416%_ _%handler144408%_))
                (if (procedure? _%thunk144411%_)
                    (let ((_%thunk144427%_ _%thunk144411%_))
                      (__with-exception-handler
                       _%handler144416%_
                       _%thunk144427%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       'procedure?
                       'value:
                       _%thunk144411%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%handler144408%_)
                (void))))))
    (define thread-local-ref
      (let ((_%$%opt-lambda144323144359%_
             (lambda (_%key144325%_ _%default144326%_)
               (let* ((_%tab144328%_ (thread-local-table))
                      (_%h144330%_ _%tab144328%_)
                      (_%key144333%_ _%key144325%_)
                      (_%default144336%_ _%default144326%_)
                      (_%h144343%_
                       (let ((_%$obj144340%_ _%h144330%_))
                         (if (immediate-instance-of?
                              HashTable::t
                              _%$obj144340%_)
                             _%$obj144340%_
                             (cast HashTable::interface _%$obj144340%_))))
                      (_%h144345%_ _%h144343%_))
                 (__hash-ref _%h144345%_ _%key144333%_ _%default144336%_)))))
        (lambda _g144779_
          (let ((_g144780_ (let () (declare (not safe)) (##length _g144779_))))
            (cond ((let () (declare (not safe)) (##fx= _g144780_ 1))
                   (apply (lambda (_%key144362%_)
                            (let ((_%default144364%_ absent-obj))
                              (_%$%opt-lambda144323144359%_
                               _%key144362%_
                               _%default144364%_)))
                          _g144779_))
                  ((let () (declare (not safe)) (##fx= _g144780_ 2))
                   (apply _%$%opt-lambda144323144359%_ _g144779_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    thread-local-ref
                    _g144779_)))))))
    (define thread-local-get
      (lambda (_%key144322%_) (thread-local-ref _%key144322%_ '#f)))
    (define thread-local-set!
      (lambda (_%key144288%_ _%value144289%_)
        (let* ((_%tab144291%_ (thread-local-table))
               (_%h144293%_ _%tab144291%_)
               (_%key144296%_ _%key144288%_)
               (_%value144299%_ _%value144289%_)
               (_%h144306%_
                (let ((_%$obj144303%_ _%h144293%_))
                  (if (immediate-instance-of? HashTable::t _%$obj144303%_)
                      _%$obj144303%_
                      (cast HashTable::interface _%$obj144303%_))))
               (_%h144308%_ _%h144306%_))
          (__hash-put! _%h144308%_ _%key144296%_ _%value144299%_))))
    (define thread-local-delete!
      (lambda (_%key144259%_)
        (let* ((_%tab144261%_ (thread-local-table))
               (_%h144263%_ _%tab144261%_)
               (_%key144266%_ _%key144259%_)
               (_%h144273%_
                (let ((_%$obj144270%_ _%h144263%_))
                  (if (immediate-instance-of? HashTable::t _%$obj144270%_)
                      _%$obj144270%_
                      (cast HashTable::interface _%$obj144270%_))))
               (_%h144275%_ _%h144273%_))
          (__hash-remove! _%h144275%_ _%key144266%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr144184%_ (current-thread)))
          (if (actor-thread? _%thr144184%_)
              (let ((_%$e144187%_ (actor-thread-locals _%thr144184%_)))
                (if _%$e144187%_
                    _%$e144187%_
                    (let ((_%tab144191%_ (make-hash-table-eq)))
                      (actor-thread-locals-set! _%thr144184%_ _%tab144191%_)
                      _%tab144191%_)))
              (if (eq? _%thr144184%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e144221%_
                           (let* ((_%h144195%_ __thread-locals)
                                  (_%key144198%_ _%thr144184%_)
                                  (_%h144205%_
                                   (let ((_%$obj144202%_ _%h144195%_))
                                     (if (immediate-instance-of?
                                          HashTable::t
                                          _%$obj144202%_)
                                         _%$obj144202%_
                                         (cast HashTable::interface
                                               _%$obj144202%_))))
                                  (_%h144207%_ _%h144205%_))
                             (__hash-get _%h144207%_ _%key144198%_))))
                      (if _%$e144221%_
                          ((lambda (_%tab144224%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab144224%_)
                           _%$e144221%_)
                          (let ((_%tab144227%_ (make-hash-table-eq)))
                            (let* ((_%h144229%_ __thread-locals)
                                   (_%key144232%_ _%thr144184%_)
                                   (_%value144235%_ _%tab144227%_)
                                   (_%h144242%_
                                    (let ((_%$obj144239%_ _%h144229%_))
                                      (if (immediate-instance-of?
                                           HashTable::t
                                           _%$obj144239%_)
                                          _%$obj144239%_
                                          (cast HashTable::interface
                                                _%$obj144239%_))))
                                   (_%h144244%_ _%h144242%_))
                              (__hash-put!
                               _%h144244%_
                               _%key144232%_
                               _%value144235%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab144227%_)))))))))
    (define __primordial-thread-locals (make-hash-table-eq))
    (define __thread-locals (make-hash-table-eq 'weak-keys: '#t))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value144170%_)
        (let ((_%new-value144173%_ _%new-value144170%_))
          (set! __unhandled-actor-exception-hook _%new-value144173%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value144149%_)
        (if ((lambda (_%$obj144153%_)
               (or (not _%$obj144153%_) (procedure? _%$obj144153%_)))
             _%new-value144149%_)
            (let ((_%new-value144160%_ _%new-value144149%_))
              (__unhandled-actor-exception-hook-set! _%new-value144160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value144149%_)
              (void)))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx144056%_ _%proc144057%_)
        (let* ((_%mx144060%_ _%mx144056%_)
               (_%proc144068%_ _%proc144057%_)
               (_%handler144077%_ (current-exception-handler))
               (_%handler144116%_
                (lambda (_%e144079%_)
                  (let* ((_%handler144081%_ void)
                         (_%thunk144085%_
                          (lambda ()
                            (mutex-unlock! _%mx144060%_)
                            (_%handler144077%_ _%e144079%_))))
                    (if (procedure? _%handler144081%_)
                        (let ((_%handler144090%_ _%handler144081%_))
                          (if (procedure? _%thunk144085%_)
                              (let ((_%thunk144106%_ _%thunk144085%_))
                                (__with-catch
                                 _%handler144090%_
                                 _%thunk144106%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/thread
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%thunk144085%_)
                                (void))))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%handler144081%_)
                          (void))))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e144079%_))))
               (_%thunk144122%_
                (lambda ()
                  (mutex-lock! _%mx144060%_)
                  (let ((_%result144120%_ (_%proc144068%_)))
                    (mutex-unlock! _%mx144060%_)
                    _%result144120%_))))
          (if (procedure? _%handler144116%_)
              (let ((_%handler144127%_ _%handler144116%_))
                (if (procedure? _%thunk144122%_)
                    (let ((_%thunk144138%_ _%thunk144122%_))
                      (__with-exception-handler
                       _%handler144127%_
                       _%thunk144138%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       'procedure?
                       'value:
                       _%thunk144122%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%handler144116%_)
                (void))))))
    (define with-lock
      (lambda (_%mx144031%_ _%proc144032%_)
        (if (mutex? _%mx144031%_)
            (let ((_%mx144036%_ _%mx144031%_))
              (if (procedure? _%proc144032%_)
                  (let ((_%proc144046%_ _%proc144032%_))
                    (__with-lock _%mx144036%_ _%proc144046%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc144032%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx144031%_)
              (void)))))
    (define __with-dynamic-lock
      (lambda (_%mx144008%_ _%proc144009%_)
        (let* ((_%mx144012%_ _%mx144008%_) (_%proc144020%_ _%proc144009%_))
          (dynamic-wind
           (lambda () (mutex-lock! _%mx144012%_))
           _%proc144020%_
           (lambda () (mutex-unlock! _%mx144012%_))))))
    (define with-dynamic-lock
      (lambda (_%mx143983%_ _%proc143984%_)
        (if (mutex? _%mx143983%_)
            (let ((_%mx143988%_ _%mx143983%_))
              (if (procedure? _%proc143984%_)
                  (let ((_%proc143998%_ _%proc143984%_))
                    (__with-dynamic-lock _%mx143988%_ _%proc143998%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc143984%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx143983%_)
              (void)))))
    (define __with-exception-stack-trace
      (let ((_%$%opt-lambda143912143973%_
             (lambda (_%thunk143914%_ _%error-port143915%_)
               (let* ((_%thunk143918%_ _%thunk143914%_)
                      (_%error-port143926%_ _%error-port143915%_)
                      (_%handler143941%_
                       (let ((_%E143935%_ (current-exception-handler)))
                         (lambda (_%exn143937%_)
                           (continuation-capture
                            (lambda (_%cont143939%_)
                              (if (dump-stack-trace?)
                                  (dump-stack-trace!
                                   _%cont143939%_
                                   _%exn143937%_
                                   _%error-port143926%_)
                                  '#!void)
                              (_%E143935%_ _%exn143937%_))))))
                      (_%thunk143944%_ _%thunk143918%_))
                 (if (procedure? _%handler143941%_)
                     (let ((_%handler143949%_ _%handler143941%_))
                       (if (procedure? _%thunk143944%_)
                           (let ((_%thunk143963%_ _%thunk143944%_))
                             (__with-exception-handler
                              _%handler143949%_
                              _%thunk143963%_))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/thread
                              'contract:
                              'procedure?
                              'value:
                              _%thunk143944%_)
                             (void))))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/thread
                        'contract:
                        'procedure?
                        'value:
                        _%handler143941%_)
                       (void)))))))
        (lambda _g144781_
          (let ((_g144782_ (let () (declare (not safe)) (##length _g144781_))))
            (cond ((let () (declare (not safe)) (##fx= _g144782_ 1))
                   (apply (lambda (_%thunk143976%_)
                            (let ((_%error-port143978%_ (current-error-port)))
                              (_%$%opt-lambda143912143973%_
                               _%thunk143976%_
                               _%error-port143978%_)))
                          _g144781_))
                  ((let () (declare (not safe)) (##fx= _g144782_ 2))
                   (apply _%$%opt-lambda143912143973%_ _g144781_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __with-exception-stack-trace
                    _g144781_)))))))
    (define with-exception-stack-trace
      (let ((_%$%opt-lambda143876143903%_
             (lambda (_%thunk143878%_ _%error-port143879%_)
               (if (procedure? _%thunk143878%_)
                   (let ((_%thunk143883%_ _%thunk143878%_))
                     (if (port? _%error-port143879%_)
                         (let ((_%error-port143893%_ _%error-port143879%_))
                           (__with-exception-stack-trace
                            _%thunk143883%_
                            _%error-port143893%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                            'contract:
                            'port?
                            'value:
                            _%error-port143879%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
                      'contract:
                      'procedure?
                      'value:
                      _%thunk143878%_)
                     (void))))))
        (lambda _g144783_
          (let ((_g144784_ (let () (declare (not safe)) (##length _g144783_))))
            (cond ((let () (declare (not safe)) (##fx= _g144784_ 1))
                   (apply (lambda (_%thunk143906%_)
                            (let ((_%error-port143908%_ (current-error-port)))
                              (_%$%opt-lambda143876143903%_
                               _%thunk143906%_
                               _%error-port143908%_)))
                          _g144783_))
                  ((let () (declare (not safe)) (##fx= _g144784_ 2))
                   (apply _%$%opt-lambda143876143903%_ _g144783_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    with-exception-stack-trace
                    _g144783_)))))))
    (define dump-stack-trace!
      (let ((_%$%opt-lambda143857143865%_
             (lambda (_%cont143859%_ _%exn143860%_ _%error-port143861%_)
               (let ((_%out143863%_ (open-output-string)))
                 (fix-port-width! _%out143863%_)
                 (display '"*** Unhandled exception in " _%out143863%_)
                 (display (current-thread) _%out143863%_)
                 (newline _%out143863%_)
                 (display-exception _%exn143860%_ _%out143863%_)
                 (if (StackTrace? _%exn143860%_)
                     '#!void
                     (begin
                       (display '"Continuation backtrace: " _%out143863%_)
                       (newline _%out143863%_)
                       (display-continuation-backtrace
                        _%cont143859%_
                        _%out143863%_)))
                 (let ((__tmp144785 (get-output-string _%out143863%_)))
                   (declare (not safe))
                   (##write-string __tmp144785 _%error-port143861%_))))))
        (lambda _g144786_
          (let ((_g144787_ (let () (declare (not safe)) (##length _g144786_))))
            (cond ((let () (declare (not safe)) (##fx= _g144787_ 2))
                   (apply (lambda (_%cont143868%_ _%exn143869%_)
                            (let ((_%error-port143871%_ (current-error-port)))
                              (_%$%opt-lambda143857143865%_
                               _%cont143868%_
                               _%exn143869%_
                               _%error-port143871%_)))
                          _g144786_))
                  ((let () (declare (not safe)) (##fx= _g144787_ 3))
                   (apply _%$%opt-lambda143857143865%_ _g144786_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    dump-stack-trace!
                    _g144786_)))))))
    (define __thread-dead?
      (lambda (_%thread143846%_)
        (let ((_%thread143849%_ _%thread143846%_))
          (not (macro-thread-end-condvar _%thread143849%_)))))
    (define thread-dead?
      (lambda (_%thread143832%_)
        (if (thread? _%thread143832%_)
            (let ((_%thread143836%_ _%thread143832%_))
              (__thread-dead? _%thread143836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread143832%_)
              (void)))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals
     nonce)))
