(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1781697560)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk168807%_ _%name168808%_)
        (let* ((_%thunk168811%_ _%thunk168807%_)
               (_%name168819%_ _%name168808%_))
          (make-thread
           (lambda () (thread-main _%thunk168811%_))
           _%name168819%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk168782%_ _%name168783%_)
        (if (procedure? _%thunk168782%_)
            (let ((_%thunk168787%_ _%thunk168782%_))
              (if (symbol? _%name168783%_)
                  (let ((_%name168797%_ _%name168783%_))
                    (__make-system-thread _%thunk168787%_ _%name168797%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name168783%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk168782%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk168729%_ _%name168730%_)
        (let* ((_%thunk168733%_ _%thunk168729%_)
               (_%name168741%_ _%name168730%_))
          (thread-start!
           (let* ((_%thunk168750%_ _%thunk168733%_)
                  (_%name168753%_ _%name168741%_)
                  (_%thunk168758%_ _%thunk168750%_)
                  (_%name168772%_ _%name168753%_))
             (__make-system-thread _%thunk168758%_ _%name168772%_))))))
    (define system-thread!
      (lambda (_%thunk168704%_ _%name168705%_)
        (if (procedure? _%thunk168704%_)
            (let ((_%thunk168709%_ _%thunk168704%_))
              (if (symbol? _%name168705%_)
                  (let ((_%name168719%_ _%name168705%_))
                    (__system-thread! _%thunk168709%_ _%name168719%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name168705%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk168704%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk168683%_ _%name168684%_)
        (let* ((_%thunk168687%_ _%thunk168683%_)
               (_%name168695%_ _%name168684%_))
          (spawn-actor
           _%thunk168687%_
           '()
           _%name168695%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk168658%_ _%name168659%_)
        (if (procedure? _%thunk168658%_)
            (let ((_%thunk168663%_ _%thunk168658%_))
              (if (symbol? _%name168659%_)
                  (let ((_%name168673%_ _%name168659%_))
                    (__system-actor! _%thunk168663%_ _%name168673%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name168659%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk168658%_)
              '#!void))))
    (define __spawn
      (lambda (_%f168645%_ . _%args168646%_)
        (let ((_%f168649%_ _%f168645%_))
          (spawn-actor _%f168649%_ _%args168646%_ '#!void '#f))))
    (define spawn
      (lambda (_%f168630%_ . _%args168631%_)
        (if (procedure? _%f168630%_)
            (let ((_%f168635%_ _%f168630%_))
              (declare (not safe))
              (##apply __spawn _%f168635%_ _%args168631%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f168630%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name168616%_ _%f168617%_ . _%args168618%_)
        (let ((_%f168621%_ _%f168617%_))
          (spawn-actor _%f168621%_ _%args168618%_ _%name168616%_ '#f))))
    (define spawn/name
      (lambda (_%name168600%_ _%f168601%_ . _%args168602%_)
        (if (procedure? _%f168601%_)
            (let ((_%f168606%_ _%f168601%_))
              (declare (not safe))
              (##apply __spawn/name _%name168600%_ _%f168606%_ _%args168602%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f168601%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name168584%_ _%f168585%_ . _%args168586%_)
        (let* ((_%f168589%_ _%f168585%_)
               (_%tgroup168598%_ (make-thread-group _%name168584%_)))
          (spawn-actor
           _%f168589%_
           _%args168586%_
           _%name168584%_
           _%tgroup168598%_))))
    (define spawn/group
      (lambda (_%name168568%_ _%f168569%_ . _%args168570%_)
        (if (procedure? _%f168569%_)
            (let ((_%f168574%_ _%f168569%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name168568%_
                       _%f168574%_
                       _%args168570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f168569%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f168516%_ _%args168517%_ _%name168518%_ _%tgroup168519%_)
        (let* ((_%thunk168523%_
                (if (null? _%args168517%_)
                    _%f168516%_
                    (lambda () (apply _%f168516%_ _%args168517%_))))
               (_%thunk168559%_
                (lambda ()
                  (let* ((_%thunk168526%_ _%thunk168523%_)
                         (_%error-port168529%_ (current-error-port)))
                    (if (procedure? _%thunk168526%_)
                        (let* ((_%thunk168534%_ _%thunk168526%_)
                               (_%error-port168549%_ _%error-port168529%_))
                          (__with-exception-stack-trace__%
                           _%thunk168534%_
                           _%error-port168549%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk168526%_)
                          '#!void)))))
               (_%tgroup168564%_
                (let ((_%$e168561%_ _%tgroup168519%_))
                  (if _%$e168561%_ _%$e168561%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk168559%_))
            _%name168518%_
            _%tgroup168564%_)))))
    (define spawn-thread__%
      (lambda (_%thunk168493%_ _%name168494%_ _%tgroup168495%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk168493%_))
          _%name168494%_
          _%tgroup168495%_))))
    (define spawn-thread__0
      (lambda (_%thunk168501%_)
        (let* ((_%name168503%_ absent-obj) (_%tgroup168505%_ absent-obj))
          (spawn-thread__% _%thunk168501%_ _%name168503%_ _%tgroup168505%_))))
    (define spawn-thread__1
      (lambda (_%thunk168507%_ _%name168508%_)
        (let ((_%tgroup168510%_ absent-obj))
          (spawn-thread__% _%thunk168507%_ _%name168508%_ _%tgroup168510%_))))
    (define spawn-thread
      (lambda _g169116_
        (let ((_g169117_ (let () (declare (not safe)) (##length _g169116_))))
          (cond ((let () (declare (not safe)) (##fx= _g169117_ 1))
                 (apply spawn-thread__0 _g169116_))
                ((let () (declare (not safe)) (##fx= _g169117_ 2))
                 (apply spawn-thread__1 _g169116_))
                ((let () (declare (not safe)) (##fx= _g169117_ 3))
                 (apply spawn-thread__% _g169116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g169116_))))))
    (define thread-main
      (lambda (_%thunk168424%_)
        (let* ((_%handler168463%_
                (lambda (_%exn168426%_)
                  (let ((__tmp169118
                         (lambda (_%cont168428%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler168430%_ void)
                                      (_%thunk168434%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont168428%_
                                            _%exn168426%_))))
                                      (_%handler168439%_ _%handler168430%_)
                                      (_%thunk168453%_ _%thunk168434%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler168439%_
                                  _%thunk168453%_))
                               '#!void)
                           (let ((__tmp169119
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont168428%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp169119
                              ##primordial-exception-handler
                              _%exn168426%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp169118))))
               (_%thunk168466%_ _%thunk168424%_)
               (_%handler168471%_ _%handler168463%_))
          (if (procedure? _%thunk168466%_)
              (let ((_%thunk168482%_ _%thunk168466%_))
                (declare (not safe))
                (__with-exception-handler _%handler168471%_ _%thunk168482%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk168466%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key168380%_ _%default168381%_)
        (let* ((_%tab168383%_ (thread-local-table))
               (_%h168385%_ _%tab168383%_)
               (_%key168388%_ _%key168380%_)
               (_%default168391%_ _%default168381%_)
               (_%h168398%_
                (let ((_%$obj168395%_ _%h168385%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168395%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168395%_)))
                           '#t)
                      _%$obj168395%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168395%_)))))
               (_%h168400%_ _%h168398%_))
          (declare (not safe))
          (__hash-ref__% _%h168400%_ _%key168388%_ _%default168391%_))))
    (define thread-local-ref__0
      (lambda (_%key168417%_)
        (let ((_%default168419%_ absent-obj))
          (thread-local-ref__% _%key168417%_ _%default168419%_))))
    (define thread-local-ref
      (lambda _g169120_
        (let ((_g169121_ (let () (declare (not safe)) (##length _g169120_))))
          (cond ((let () (declare (not safe)) (##fx= _g169121_ 1))
                 (apply thread-local-ref__0 _g169120_))
                ((let () (declare (not safe)) (##fx= _g169121_ 2))
                 (apply thread-local-ref__% _g169120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g169120_))))))
    (define thread-local-get
      (lambda (_%key168377%_) (thread-local-ref__% _%key168377%_ '#f)))
    (define thread-local-set!
      (lambda (_%key168343%_ _%value168344%_)
        (let* ((_%tab168346%_ (thread-local-table))
               (_%h168348%_ _%tab168346%_)
               (_%key168351%_ _%key168343%_)
               (_%value168354%_ _%value168344%_)
               (_%h168361%_
                (let ((_%$obj168358%_ _%h168348%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168358%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168358%_)))
                           '#t)
                      _%$obj168358%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168358%_)))))
               (_%h168363%_ _%h168361%_))
          (declare (not safe))
          (__hash-put! _%h168363%_ _%key168351%_ _%value168354%_))))
    (define thread-local-delete!
      (lambda (_%key168314%_)
        (let* ((_%tab168316%_ (thread-local-table))
               (_%h168318%_ _%tab168316%_)
               (_%key168321%_ _%key168314%_)
               (_%h168328%_
                (let ((_%$obj168325%_ _%h168318%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168325%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168325%_)))
                           '#t)
                      _%$obj168325%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168325%_)))))
               (_%h168330%_ _%h168328%_))
          (declare (not safe))
          (__hash-remove! _%h168330%_ _%key168321%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr168239%_ (current-thread)))
          (if (actor-thread? _%thr168239%_)
              (let ((_%$e168242%_ (actor-thread-locals _%thr168239%_)))
                (if _%$e168242%_
                    _%$e168242%_
                    (let ((_%tab168246%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr168239%_ _%tab168246%_)
                      _%tab168246%_)))
              (if (eq? _%thr168239%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e168276%_
                           (let* ((_%h168250%_ __thread-locals)
                                  (_%key168253%_ _%thr168239%_)
                                  (_%h168260%_
                                   (let ((_%$obj168257%_ _%h168250%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj168257%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj168257%_)))
                                              '#t)
                                         _%$obj168257%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj168257%_)))))
                                  (_%h168262%_ _%h168260%_))
                             (declare (not safe))
                             (__hash-get _%h168262%_ _%key168253%_))))
                      (if _%$e168276%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e168276%_)
                          (let ((_%tab168282%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h168284%_ __thread-locals)
                                   (_%key168287%_ _%thr168239%_)
                                   (_%value168290%_ _%tab168282%_)
                                   (_%h168297%_
                                    (let ((_%$obj168294%_ _%h168284%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj168294%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj168294%_)))
                                               '#t)
                                          _%$obj168294%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj168294%_)))))
                                   (_%h168299%_ _%h168297%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h168299%_
                               _%key168287%_
                               _%value168290%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab168282%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value168225%_)
        (let ((_%new-value168228%_ _%new-value168225%_))
          (set! __unhandled-actor-exception-hook _%new-value168228%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value168204%_)
        (if (or (not _%new-value168204%_) (procedure? _%new-value168204%_))
            (let ((_%new-value168215%_ _%new-value168204%_))
              (__unhandled-actor-exception-hook-set! _%new-value168215%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value168204%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx168111%_ _%proc168112%_)
        (let* ((_%mx168115%_ _%mx168111%_)
               (_%proc168123%_ _%proc168112%_)
               (_%handler168132%_ (current-exception-handler))
               (_%handler168171%_
                (lambda (_%e168134%_)
                  (let* ((_%handler168136%_ void)
                         (_%thunk168140%_
                          (lambda ()
                            (mutex-unlock! _%mx168115%_)
                            (let ()
                              (declare (not safe))
                              (_%handler168132%_ _%e168134%_))))
                         (_%handler168145%_ _%handler168136%_)
                         (_%thunk168161%_ _%thunk168140%_))
                    (declare (not safe))
                    (__with-catch _%handler168145%_ _%thunk168161%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e168134%_))))
               (_%thunk168177%_
                (lambda ()
                  (mutex-lock! _%mx168115%_)
                  (let ((_%result168175%_
                         (let () (declare (not safe)) (_%proc168123%_))))
                    (mutex-unlock! _%mx168115%_)
                    _%result168175%_)))
               (_%handler168182%_ _%handler168171%_)
               (_%thunk168193%_ _%thunk168177%_))
          (declare (not safe))
          (__with-exception-handler _%handler168182%_ _%thunk168193%_))))
    (define with-lock
      (lambda (_%mx168086%_ _%proc168087%_)
        (if (mutex? _%mx168086%_)
            (let ((_%mx168091%_ _%mx168086%_))
              (if (procedure? _%proc168087%_)
                  (let ((_%proc168101%_ _%proc168087%_))
                    (__with-lock _%mx168091%_ _%proc168101%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc168087%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx168086%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx168063%_ _%proc168064%_)
        (let* ((_%mx168067%_ _%mx168063%_) (_%proc168075%_ _%proc168064%_))
          (let ((__tmp169123 (lambda () (mutex-lock! _%mx168067%_)))
                (__tmp169122 (lambda () (mutex-unlock! _%mx168067%_))))
            (declare (not safe))
            (##dynamic-wind __tmp169123 _%proc168075%_ __tmp169122)))))
    (define with-dynamic-lock
      (lambda (_%mx168038%_ _%proc168039%_)
        (if (mutex? _%mx168038%_)
            (let ((_%mx168043%_ _%mx168038%_))
              (if (procedure? _%proc168039%_)
                  (let ((_%proc168053%_ _%proc168039%_))
                    (__with-dynamic-lock _%mx168043%_ _%proc168053%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc168039%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx168038%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk167969%_ _%error-port167970%_)
        (let* ((_%thunk167973%_ _%thunk167969%_)
               (_%error-port167981%_ _%error-port167970%_)
               (_%handler167996%_
                (let ((_%E167990%_ (current-exception-handler)))
                  (lambda (_%exn167992%_)
                    (let ((__tmp169124
                           (lambda (_%cont167994%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont167994%_
                                  _%exn167992%_
                                  _%error-port167981%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E167990%_ _%exn167992%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp169124)))))
               (_%thunk167999%_ _%thunk167973%_)
               (_%handler168004%_ _%handler167996%_)
               (_%thunk168018%_ _%thunk167999%_))
          (declare (not safe))
          (__with-exception-handler _%handler168004%_ _%thunk168018%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk168031%_)
        (let ((_%error-port168033%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk168031%_
           _%error-port168033%_))))
    (define __with-exception-stack-trace
      (lambda _g169125_
        (let ((_g169126_ (let () (declare (not safe)) (##length _g169125_))))
          (cond ((let () (declare (not safe)) (##fx= _g169126_ 1))
                 (apply __with-exception-stack-trace__0 _g169125_))
                ((let () (declare (not safe)) (##fx= _g169126_ 2))
                 (apply __with-exception-stack-trace__% _g169125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g169125_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk167933%_ _%error-port167934%_)
        (if (procedure? _%thunk167933%_)
            (let ((_%thunk167938%_ _%thunk167933%_))
              (if (port? _%error-port167934%_)
                  (let ((_%error-port167948%_ _%error-port167934%_))
                    (__with-exception-stack-trace__%
                     _%thunk167938%_
                     _%error-port167948%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port167934%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk167933%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk167961%_)
        (let ((_%error-port167963%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk167961%_
           _%error-port167963%_))))
    (define with-exception-stack-trace
      (lambda _g169127_
        (let ((_g169128_ (let () (declare (not safe)) (##length _g169127_))))
          (cond ((let () (declare (not safe)) (##fx= _g169128_ 1))
                 (apply with-exception-stack-trace__0 _g169127_))
                ((let () (declare (not safe)) (##fx= _g169128_ 2))
                 (apply with-exception-stack-trace__% _g169127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g169127_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont167914%_ _%exn167915%_ _%error-port167916%_)
        (let ((_%out167918%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out167918%_))
          (display '"*** Unhandled exception in " _%out167918%_)
          (display (current-thread) _%out167918%_)
          (newline _%out167918%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn167915%_ _%out167918%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn167915%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out167918%_)
                (newline _%out167918%_)
                (display-continuation-backtrace _%cont167914%_ _%out167918%_)))
          (let ((__tmp169129 (get-output-string _%out167918%_)))
            (declare (not safe))
            (##write-string __tmp169129 _%error-port167916%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont167923%_ _%exn167924%_)
        (let ((_%error-port167926%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont167923%_
           _%exn167924%_
           _%error-port167926%_))))
    (define dump-stack-trace!
      (lambda _g169130_
        (let ((_g169131_ (let () (declare (not safe)) (##length _g169130_))))
          (cond ((let () (declare (not safe)) (##fx= _g169131_ 2))
                 (apply dump-stack-trace!__0 _g169130_))
                ((let () (declare (not safe)) (##fx= _g169131_ 3))
                 (apply dump-stack-trace!__% _g169130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g169130_))))))
    (define __thread-dead?
      (lambda (_%thread167901%_)
        (let ((_%thread167904%_ _%thread167901%_))
          (not (macro-thread-end-condvar _%thread167904%_)))))
    (define thread-dead?
      (lambda (_%thread167887%_)
        (if (thread? _%thread167887%_)
            (let ((_%thread167891%_ _%thread167887%_))
              (__thread-dead? _%thread167891%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread167887%_)
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
