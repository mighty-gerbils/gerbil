(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1779274770)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk165247%_ _%name165248%_)
        (let* ((_%thunk165251%_ _%thunk165247%_)
               (_%name165259%_ _%name165248%_))
          (make-thread
           (lambda () (thread-main _%thunk165251%_))
           _%name165259%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk163127%_ _%name163128%_)
        (if (procedure? _%thunk163127%_)
            (let ((_%thunk163132%_ _%thunk163127%_))
              (if (symbol? _%name163128%_)
                  (let ((_%name163142%_ _%name163128%_))
                    (__make-system-thread _%thunk163132%_ _%name163142%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name163128%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk163127%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk165194%_ _%name165195%_)
        (let* ((_%thunk165198%_ _%thunk165194%_)
               (_%name165206%_ _%name165195%_))
          (thread-start!
           (let* ((_%thunk165215%_ _%thunk165198%_)
                  (_%name165218%_ _%name165206%_)
                  (_%thunk165223%_ _%thunk165215%_)
                  (_%name165237%_ _%name165218%_))
             (__make-system-thread _%thunk165223%_ _%name165237%_))))))
    (define system-thread!
      (lambda (_%thunk163272%_ _%name163273%_)
        (if (procedure? _%thunk163272%_)
            (let ((_%thunk163277%_ _%thunk163272%_))
              (if (symbol? _%name163273%_)
                  (let ((_%name163287%_ _%name163273%_))
                    (__system-thread! _%thunk163277%_ _%name163287%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name163273%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk163272%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk165173%_ _%name165174%_)
        (let* ((_%thunk165177%_ _%thunk165173%_)
               (_%name165185%_ _%name165174%_))
          (spawn-actor
           _%thunk165177%_
           '()
           _%name165185%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk163417%_ _%name163418%_)
        (if (procedure? _%thunk163417%_)
            (let ((_%thunk163422%_ _%thunk163417%_))
              (if (symbol? _%name163418%_)
                  (let ((_%name163432%_ _%name163418%_))
                    (__system-actor! _%thunk163422%_ _%name163432%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name163418%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk163417%_)
              '#!void))))
    (define __spawn
      (lambda (_%f165160%_ . _%args165161%_)
        (let ((_%f165164%_ _%f165160%_))
          (spawn-actor _%f165164%_ _%args165161%_ '#!void '#f))))
    (define spawn
      (lambda (_%f163562%_ . _%args163563%_)
        (if (procedure? _%f163562%_)
            (let ((_%f163567%_ _%f163562%_))
              (declare (not safe))
              (##apply __spawn _%f163567%_ _%args163563%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f163562%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name165146%_ _%f165147%_ . _%args165148%_)
        (let ((_%f165151%_ _%f165147%_))
          (spawn-actor _%f165151%_ _%args165148%_ _%name165146%_ '#f))))
    (define spawn/name
      (lambda (_%name163697%_ _%f163698%_ . _%args163699%_)
        (if (procedure? _%f163698%_)
            (let ((_%f163703%_ _%f163698%_))
              (declare (not safe))
              (##apply __spawn/name _%name163697%_ _%f163703%_ _%args163699%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f163698%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name165130%_ _%f165131%_ . _%args165132%_)
        (let* ((_%f165135%_ _%f165131%_)
               (_%tgroup165144%_ (make-thread-group _%name165130%_)))
          (spawn-actor
           _%f165135%_
           _%args165132%_
           _%name165130%_
           _%tgroup165144%_))))
    (define spawn/group
      (lambda (_%name163833%_ _%f163834%_ . _%args163835%_)
        (if (procedure? _%f163834%_)
            (let ((_%f163839%_ _%f163834%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name163833%_
                       _%f163839%_
                       _%args163835%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f163834%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f165078%_ _%args165079%_ _%name165080%_ _%tgroup165081%_)
        (let* ((_%thunk165085%_
                (if (null? _%args165079%_)
                    _%f165078%_
                    (lambda () (apply _%f165078%_ _%args165079%_))))
               (_%thunk165121%_
                (lambda ()
                  (let* ((_%thunk165088%_ _%thunk165085%_)
                         (_%error-port165091%_ (current-error-port)))
                    (if (procedure? _%thunk165088%_)
                        (let* ((_%thunk165096%_ _%thunk165088%_)
                               (_%error-port165111%_ _%error-port165091%_))
                          (__with-exception-stack-trace__%
                           _%thunk165096%_
                           _%error-port165111%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk165088%_)
                          '#!void)))))
               (_%tgroup165126%_
                (let ((_%$e165123%_ _%tgroup165081%_))
                  (if _%$e165123%_ _%$e165123%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk165121%_))
            _%name165080%_
            _%tgroup165126%_)))))
    (define spawn-thread__%
      (lambda (_%thunk165055%_ _%name165056%_ _%tgroup165057%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk165055%_))
          _%name165056%_
          _%tgroup165057%_))))
    (define spawn-thread__0
      (lambda (_%thunk165063%_)
        (let* ((_%name165065%_ absent-obj) (_%tgroup165067%_ absent-obj))
          (spawn-thread__% _%thunk165063%_ _%name165065%_ _%tgroup165067%_))))
    (define spawn-thread__1
      (lambda (_%thunk165069%_ _%name165070%_)
        (let ((_%tgroup165072%_ absent-obj))
          (spawn-thread__% _%thunk165069%_ _%name165070%_ _%tgroup165072%_))))
    (define spawn-thread
      (lambda _g165556_
        (let ((_g165557_ (let () (declare (not safe)) (##length _g165556_))))
          (cond ((let () (declare (not safe)) (##fx= _g165557_ 1))
                 (apply spawn-thread__0 _g165556_))
                ((let () (declare (not safe)) (##fx= _g165557_ 2))
                 (apply spawn-thread__1 _g165556_))
                ((let () (declare (not safe)) (##fx= _g165557_ 3))
                 (apply spawn-thread__% _g165556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g165556_))))))
    (define thread-main
      (lambda (_%thunk164986%_)
        (let* ((_%handler165025%_
                (lambda (_%exn164988%_)
                  (let ((__tmp165558
                         (lambda (_%cont164990%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164992%_ void)
                                      (_%thunk164996%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164990%_
                                            _%exn164988%_))))
                                      (_%handler165001%_ _%handler164992%_)
                                      (_%thunk165015%_ _%thunk164996%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler165001%_
                                  _%thunk165015%_))
                               '#!void)
                           (let ((__tmp165559
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164990%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp165559
                              ##primordial-exception-handler
                              _%exn164988%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165558))))
               (_%thunk165028%_ _%thunk164986%_)
               (_%handler165033%_ _%handler165025%_))
          (if (procedure? _%thunk165028%_)
              (let ((_%thunk165044%_ _%thunk165028%_))
                (declare (not safe))
                (__with-exception-handler _%handler165033%_ _%thunk165044%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk165028%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164942%_ _%default164943%_)
        (let* ((_%tab164945%_ (thread-local-table))
               (_%h164947%_ _%tab164945%_)
               (_%key164950%_ _%key164942%_)
               (_%default164953%_ _%default164943%_)
               (_%h164960%_
                (let ((_%$obj164957%_ _%h164947%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164957%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164957%_)))
                           '#t)
                      _%$obj164957%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164957%_)))))
               (_%h164962%_ _%h164960%_))
          (declare (not safe))
          (__hash-ref__% _%h164962%_ _%key164950%_ _%default164953%_))))
    (define thread-local-ref__0
      (lambda (_%key164979%_)
        (let ((_%default164981%_ absent-obj))
          (thread-local-ref__% _%key164979%_ _%default164981%_))))
    (define thread-local-ref
      (lambda _g165560_
        (let ((_g165561_ (let () (declare (not safe)) (##length _g165560_))))
          (cond ((let () (declare (not safe)) (##fx= _g165561_ 1))
                 (apply thread-local-ref__0 _g165560_))
                ((let () (declare (not safe)) (##fx= _g165561_ 2))
                 (apply thread-local-ref__% _g165560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g165560_))))))
    (define thread-local-get
      (lambda (_%key164939%_) (thread-local-ref__% _%key164939%_ '#f)))
    (define thread-local-set!
      (lambda (_%key164905%_ _%value164906%_)
        (let* ((_%tab164908%_ (thread-local-table))
               (_%h164910%_ _%tab164908%_)
               (_%key164913%_ _%key164905%_)
               (_%value164916%_ _%value164906%_)
               (_%h164923%_
                (let ((_%$obj164920%_ _%h164910%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164920%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164920%_)))
                           '#t)
                      _%$obj164920%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164920%_)))))
               (_%h164925%_ _%h164923%_))
          (declare (not safe))
          (__hash-put! _%h164925%_ _%key164913%_ _%value164916%_))))
    (define thread-local-delete!
      (lambda (_%key164876%_)
        (let* ((_%tab164878%_ (thread-local-table))
               (_%h164880%_ _%tab164878%_)
               (_%key164883%_ _%key164876%_)
               (_%h164890%_
                (let ((_%$obj164887%_ _%h164880%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164887%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164887%_)))
                           '#t)
                      _%$obj164887%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164887%_)))))
               (_%h164892%_ _%h164890%_))
          (declare (not safe))
          (__hash-remove! _%h164892%_ _%key164883%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr164801%_ (current-thread)))
          (if (actor-thread? _%thr164801%_)
              (let ((_%$e164804%_ (actor-thread-locals _%thr164801%_)))
                (if _%$e164804%_
                    _%$e164804%_
                    (let ((_%tab164808%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr164801%_ _%tab164808%_)
                      _%tab164808%_)))
              (if (eq? _%thr164801%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e164838%_
                           (let* ((_%h164812%_ __thread-locals)
                                  (_%key164815%_ _%thr164801%_)
                                  (_%h164822%_
                                   (let ((_%$obj164819%_ _%h164812%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj164819%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj164819%_)))
                                              '#t)
                                         _%$obj164819%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj164819%_)))))
                                  (_%h164824%_ _%h164822%_))
                             (declare (not safe))
                             (__hash-get _%h164824%_ _%key164815%_))))
                      (if _%$e164838%_
                          ((lambda (_%tab164841%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab164841%_)
                           _%$e164838%_)
                          (let ((_%tab164844%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h164846%_ __thread-locals)
                                   (_%key164849%_ _%thr164801%_)
                                   (_%value164852%_ _%tab164844%_)
                                   (_%h164859%_
                                    (let ((_%$obj164856%_ _%h164846%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj164856%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj164856%_)))
                                               '#t)
                                          _%$obj164856%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj164856%_)))))
                                   (_%h164861%_ _%h164859%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h164861%_
                               _%key164849%_
                               _%value164852%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab164844%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value164787%_)
        (let ((_%new-value164790%_ _%new-value164787%_))
          (set! __unhandled-actor-exception-hook _%new-value164790%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163969%_)
        (if ((lambda (_%$obj163973%_)
               (or (not _%$obj163973%_) (procedure? _%$obj163973%_)))
             _%new-value163969%_)
            (let ((_%new-value163980%_ _%new-value163969%_))
              (__unhandled-actor-exception-hook-set! _%new-value163980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163969%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx164694%_ _%proc164695%_)
        (let* ((_%mx164698%_ _%mx164694%_)
               (_%proc164706%_ _%proc164695%_)
               (_%handler164715%_ (current-exception-handler))
               (_%handler164754%_
                (lambda (_%e164717%_)
                  (let* ((_%handler164719%_ void)
                         (_%thunk164723%_
                          (lambda ()
                            (mutex-unlock! _%mx164698%_)
                            (let ()
                              (declare (not safe))
                              (_%handler164715%_ _%e164717%_))))
                         (_%handler164728%_ _%handler164719%_)
                         (_%thunk164744%_ _%thunk164723%_))
                    (declare (not safe))
                    (__with-catch _%handler164728%_ _%thunk164744%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e164717%_))))
               (_%thunk164760%_
                (lambda ()
                  (mutex-lock! _%mx164698%_)
                  (let ((_%result164758%_
                         (let () (declare (not safe)) (_%proc164706%_))))
                    (mutex-unlock! _%mx164698%_)
                    _%result164758%_)))
               (_%handler164765%_ _%handler164754%_)
               (_%thunk164776%_ _%thunk164760%_))
          (declare (not safe))
          (__with-exception-handler _%handler164765%_ _%thunk164776%_))))
    (define with-lock
      (lambda (_%mx164110%_ _%proc164111%_)
        (if (mutex? _%mx164110%_)
            (let ((_%mx164115%_ _%mx164110%_))
              (if (procedure? _%proc164111%_)
                  (let ((_%proc164125%_ _%proc164111%_))
                    (__with-lock _%mx164115%_ _%proc164125%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc164111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx164110%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx164671%_ _%proc164672%_)
        (let* ((_%mx164675%_ _%mx164671%_) (_%proc164683%_ _%proc164672%_))
          (let ((__tmp165563 (lambda () (mutex-lock! _%mx164675%_)))
                (__tmp165562 (lambda () (mutex-unlock! _%mx164675%_))))
            (declare (not safe))
            (##dynamic-wind __tmp165563 _%proc164683%_ __tmp165562)))))
    (define with-dynamic-lock
      (lambda (_%mx164255%_ _%proc164256%_)
        (if (mutex? _%mx164255%_)
            (let ((_%mx164260%_ _%mx164255%_))
              (if (procedure? _%proc164256%_)
                  (let ((_%proc164270%_ _%proc164256%_))
                    (__with-dynamic-lock _%mx164260%_ _%proc164270%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc164256%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx164255%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk164602%_ _%error-port164603%_)
        (let* ((_%thunk164606%_ _%thunk164602%_)
               (_%error-port164614%_ _%error-port164603%_)
               (_%handler164629%_
                (let ((_%E164623%_ (current-exception-handler)))
                  (lambda (_%exn164625%_)
                    (let ((__tmp165564
                           (lambda (_%cont164627%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont164627%_
                                  _%exn164625%_
                                  _%error-port164614%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E164623%_ _%exn164625%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp165564)))))
               (_%thunk164632%_ _%thunk164606%_)
               (_%handler164637%_ _%handler164629%_)
               (_%thunk164651%_ _%thunk164632%_))
          (declare (not safe))
          (__with-exception-handler _%handler164637%_ _%thunk164651%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk164664%_)
        (let ((_%error-port164666%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk164664%_
           _%error-port164666%_))))
    (define __with-exception-stack-trace
      (lambda _g165565_
        (let ((_g165566_ (let () (declare (not safe)) (##length _g165565_))))
          (cond ((let () (declare (not safe)) (##fx= _g165566_ 1))
                 (apply __with-exception-stack-trace__0 _g165565_))
                ((let () (declare (not safe)) (##fx= _g165566_ 2))
                 (apply __with-exception-stack-trace__% _g165565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g165565_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk164401%_ _%error-port164402%_)
        (if (procedure? _%thunk164401%_)
            (let ((_%thunk164406%_ _%thunk164401%_))
              (if (port? _%error-port164402%_)
                  (let ((_%error-port164416%_ _%error-port164402%_))
                    (__with-exception-stack-trace__%
                     _%thunk164406%_
                     _%error-port164416%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port164402%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk164401%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk164429%_)
        (let ((_%error-port164431%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk164429%_
           _%error-port164431%_))))
    (define with-exception-stack-trace
      (lambda _g165567_
        (let ((_g165568_ (let () (declare (not safe)) (##length _g165567_))))
          (cond ((let () (declare (not safe)) (##fx= _g165568_ 1))
                 (apply with-exception-stack-trace__0 _g165567_))
                ((let () (declare (not safe)) (##fx= _g165568_ 2))
                 (apply with-exception-stack-trace__% _g165567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g165567_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont164583%_ _%exn164584%_ _%error-port164585%_)
        (let ((_%out164587%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out164587%_))
          (display '"*** Unhandled exception in " _%out164587%_)
          (display (current-thread) _%out164587%_)
          (newline _%out164587%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn164584%_ _%out164587%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn164584%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out164587%_)
                (newline _%out164587%_)
                (display-continuation-backtrace _%cont164583%_ _%out164587%_)))
          (let ((__tmp165569 (get-output-string _%out164587%_)))
            (declare (not safe))
            (##write-string __tmp165569 _%error-port164585%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont164592%_ _%exn164593%_)
        (let ((_%error-port164595%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont164592%_
           _%exn164593%_
           _%error-port164595%_))))
    (define dump-stack-trace!
      (lambda _g165570_
        (let ((_g165571_ (let () (declare (not safe)) (##length _g165570_))))
          (cond ((let () (declare (not safe)) (##fx= _g165571_ 2))
                 (apply dump-stack-trace!__0 _g165570_))
                ((let () (declare (not safe)) (##fx= _g165571_ 3))
                 (apply dump-stack-trace!__% _g165570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g165570_))))))
    (define __thread-dead?
      (lambda (_%thread164570%_)
        (let ((_%thread164573%_ _%thread164570%_))
          (not (macro-thread-end-condvar _%thread164573%_)))))
    (define thread-dead?
      (lambda (_%thread164556%_)
        (if (thread? _%thread164556%_)
            (let ((_%thread164560%_ _%thread164556%_))
              (__thread-dead? _%thread164560%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread164556%_)
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
