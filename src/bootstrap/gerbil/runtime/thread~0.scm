(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1773012984)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk164968%_ _%name164969%_)
        (let* ((_%thunk164972%_ _%thunk164968%_)
               (_%name164980%_ _%name164969%_))
          (make-thread
           (lambda () (thread-main _%thunk164972%_))
           _%name164980%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk162848%_ _%name162849%_)
        (if (procedure? _%thunk162848%_)
            (let ((_%thunk162853%_ _%thunk162848%_))
              (if (symbol? _%name162849%_)
                  (let ((_%name162863%_ _%name162849%_))
                    (__make-system-thread _%thunk162853%_ _%name162863%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name162849%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk162848%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk164915%_ _%name164916%_)
        (let* ((_%thunk164919%_ _%thunk164915%_)
               (_%name164927%_ _%name164916%_))
          (thread-start!
           (let* ((_%thunk164936%_ _%thunk164919%_)
                  (_%name164939%_ _%name164927%_)
                  (_%thunk164944%_ _%thunk164936%_)
                  (_%name164958%_ _%name164939%_))
             (__make-system-thread _%thunk164944%_ _%name164958%_))))))
    (define system-thread!
      (lambda (_%thunk162993%_ _%name162994%_)
        (if (procedure? _%thunk162993%_)
            (let ((_%thunk162998%_ _%thunk162993%_))
              (if (symbol? _%name162994%_)
                  (let ((_%name163008%_ _%name162994%_))
                    (__system-thread! _%thunk162998%_ _%name163008%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name162994%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk162993%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk164894%_ _%name164895%_)
        (let* ((_%thunk164898%_ _%thunk164894%_)
               (_%name164906%_ _%name164895%_))
          (spawn-actor
           _%thunk164898%_
           '()
           _%name164906%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk163138%_ _%name163139%_)
        (if (procedure? _%thunk163138%_)
            (let ((_%thunk163143%_ _%thunk163138%_))
              (if (symbol? _%name163139%_)
                  (let ((_%name163153%_ _%name163139%_))
                    (__system-actor! _%thunk163143%_ _%name163153%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name163139%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk163138%_)
              '#!void))))
    (define __spawn
      (lambda (_%f164881%_ . _%args164882%_)
        (let ((_%f164885%_ _%f164881%_))
          (spawn-actor _%f164885%_ _%args164882%_ '#!void '#f))))
    (define spawn
      (lambda (_%f163283%_ . _%args163284%_)
        (if (procedure? _%f163283%_)
            (let ((_%f163288%_ _%f163283%_))
              (declare (not safe))
              (##apply __spawn _%f163288%_ _%args163284%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f163283%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name164867%_ _%f164868%_ . _%args164869%_)
        (let ((_%f164872%_ _%f164868%_))
          (spawn-actor _%f164872%_ _%args164869%_ _%name164867%_ '#f))))
    (define spawn/name
      (lambda (_%name163418%_ _%f163419%_ . _%args163420%_)
        (if (procedure? _%f163419%_)
            (let ((_%f163424%_ _%f163419%_))
              (declare (not safe))
              (##apply __spawn/name _%name163418%_ _%f163424%_ _%args163420%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f163419%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name164851%_ _%f164852%_ . _%args164853%_)
        (let* ((_%f164856%_ _%f164852%_)
               (_%tgroup164865%_ (make-thread-group _%name164851%_)))
          (spawn-actor
           _%f164856%_
           _%args164853%_
           _%name164851%_
           _%tgroup164865%_))))
    (define spawn/group
      (lambda (_%name163554%_ _%f163555%_ . _%args163556%_)
        (if (procedure? _%f163555%_)
            (let ((_%f163560%_ _%f163555%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name163554%_
                       _%f163560%_
                       _%args163556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f163555%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f164799%_ _%args164800%_ _%name164801%_ _%tgroup164802%_)
        (let* ((_%thunk164806%_
                (if (null? _%args164800%_)
                    _%f164799%_
                    (lambda () (apply _%f164799%_ _%args164800%_))))
               (_%thunk164842%_
                (lambda ()
                  (let* ((_%thunk164809%_ _%thunk164806%_)
                         (_%error-port164812%_ (current-error-port)))
                    (if (procedure? _%thunk164809%_)
                        (let* ((_%thunk164817%_ _%thunk164809%_)
                               (_%error-port164832%_ _%error-port164812%_))
                          (__with-exception-stack-trace__%
                           _%thunk164817%_
                           _%error-port164832%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk164809%_)
                          '#!void)))))
               (_%tgroup164847%_
                (let ((_%$e164844%_ _%tgroup164802%_))
                  (if _%$e164844%_ _%$e164844%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk164842%_))
            _%name164801%_
            _%tgroup164847%_)))))
    (define spawn-thread__%
      (lambda (_%thunk164776%_ _%name164777%_ _%tgroup164778%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk164776%_))
          _%name164777%_
          _%tgroup164778%_))))
    (define spawn-thread__0
      (lambda (_%thunk164784%_)
        (let* ((_%name164786%_ absent-obj) (_%tgroup164788%_ absent-obj))
          (spawn-thread__% _%thunk164784%_ _%name164786%_ _%tgroup164788%_))))
    (define spawn-thread__1
      (lambda (_%thunk164790%_ _%name164791%_)
        (let ((_%tgroup164793%_ absent-obj))
          (spawn-thread__% _%thunk164790%_ _%name164791%_ _%tgroup164793%_))))
    (define spawn-thread
      (lambda _g165277_
        (let ((_g165278_ (let () (declare (not safe)) (##length _g165277_))))
          (cond ((let () (declare (not safe)) (##fx= _g165278_ 1))
                 (apply spawn-thread__0 _g165277_))
                ((let () (declare (not safe)) (##fx= _g165278_ 2))
                 (apply spawn-thread__1 _g165277_))
                ((let () (declare (not safe)) (##fx= _g165278_ 3))
                 (apply spawn-thread__% _g165277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g165277_))))))
    (define thread-main
      (lambda (_%thunk164707%_)
        (let* ((_%handler164746%_
                (lambda (_%exn164709%_)
                  (let ((__tmp165279
                         (lambda (_%cont164711%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164713%_ void)
                                      (_%thunk164717%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164711%_
                                            _%exn164709%_))))
                                      (_%handler164722%_ _%handler164713%_)
                                      (_%thunk164736%_ _%thunk164717%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler164722%_
                                  _%thunk164736%_))
                               '#!void)
                           (let ((__tmp165280
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164711%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp165280
                              ##primordial-exception-handler
                              _%exn164709%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp165279))))
               (_%thunk164749%_ _%thunk164707%_)
               (_%handler164754%_ _%handler164746%_))
          (if (procedure? _%thunk164749%_)
              (let ((_%thunk164765%_ _%thunk164749%_))
                (declare (not safe))
                (__with-exception-handler _%handler164754%_ _%thunk164765%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk164749%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164663%_ _%default164664%_)
        (let* ((_%tab164666%_ (thread-local-table))
               (_%h164668%_ _%tab164666%_)
               (_%key164671%_ _%key164663%_)
               (_%default164674%_ _%default164664%_)
               (_%h164681%_
                (let ((_%$obj164678%_ _%h164668%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164678%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164678%_)))
                           '#t)
                      _%$obj164678%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164678%_)))))
               (_%h164683%_ _%h164681%_))
          (declare (not safe))
          (__hash-ref__% _%h164683%_ _%key164671%_ _%default164674%_))))
    (define thread-local-ref__0
      (lambda (_%key164700%_)
        (let ((_%default164702%_ absent-obj))
          (thread-local-ref__% _%key164700%_ _%default164702%_))))
    (define thread-local-ref
      (lambda _g165281_
        (let ((_g165282_ (let () (declare (not safe)) (##length _g165281_))))
          (cond ((let () (declare (not safe)) (##fx= _g165282_ 1))
                 (apply thread-local-ref__0 _g165281_))
                ((let () (declare (not safe)) (##fx= _g165282_ 2))
                 (apply thread-local-ref__% _g165281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g165281_))))))
    (define thread-local-get
      (lambda (_%key164660%_) (thread-local-ref__% _%key164660%_ '#f)))
    (define thread-local-set!
      (lambda (_%key164626%_ _%value164627%_)
        (let* ((_%tab164629%_ (thread-local-table))
               (_%h164631%_ _%tab164629%_)
               (_%key164634%_ _%key164626%_)
               (_%value164637%_ _%value164627%_)
               (_%h164644%_
                (let ((_%$obj164641%_ _%h164631%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164641%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164641%_)))
                           '#t)
                      _%$obj164641%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164641%_)))))
               (_%h164646%_ _%h164644%_))
          (declare (not safe))
          (__hash-put! _%h164646%_ _%key164634%_ _%value164637%_))))
    (define thread-local-delete!
      (lambda (_%key164597%_)
        (let* ((_%tab164599%_ (thread-local-table))
               (_%h164601%_ _%tab164599%_)
               (_%key164604%_ _%key164597%_)
               (_%h164611%_
                (let ((_%$obj164608%_ _%h164601%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164608%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164608%_)))
                           '#t)
                      _%$obj164608%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164608%_)))))
               (_%h164613%_ _%h164611%_))
          (declare (not safe))
          (__hash-remove! _%h164613%_ _%key164604%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr164522%_ (current-thread)))
          (if (actor-thread? _%thr164522%_)
              (let ((_%$e164525%_ (actor-thread-locals _%thr164522%_)))
                (if _%$e164525%_
                    _%$e164525%_
                    (let ((_%tab164529%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr164522%_ _%tab164529%_)
                      _%tab164529%_)))
              (if (eq? _%thr164522%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e164559%_
                           (let* ((_%h164533%_ __thread-locals)
                                  (_%key164536%_ _%thr164522%_)
                                  (_%h164543%_
                                   (let ((_%$obj164540%_ _%h164533%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj164540%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj164540%_)))
                                              '#t)
                                         _%$obj164540%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj164540%_)))))
                                  (_%h164545%_ _%h164543%_))
                             (declare (not safe))
                             (__hash-get _%h164545%_ _%key164536%_))))
                      (if _%$e164559%_
                          ((lambda (_%tab164562%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab164562%_)
                           _%$e164559%_)
                          (let ((_%tab164565%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h164567%_ __thread-locals)
                                   (_%key164570%_ _%thr164522%_)
                                   (_%value164573%_ _%tab164565%_)
                                   (_%h164580%_
                                    (let ((_%$obj164577%_ _%h164567%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj164577%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj164577%_)))
                                               '#t)
                                          _%$obj164577%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj164577%_)))))
                                   (_%h164582%_ _%h164580%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h164582%_
                               _%key164570%_
                               _%value164573%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab164565%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value164508%_)
        (let ((_%new-value164511%_ _%new-value164508%_))
          (set! __unhandled-actor-exception-hook _%new-value164511%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163690%_)
        (if ((lambda (_%$obj163694%_)
               (or (not _%$obj163694%_) (procedure? _%$obj163694%_)))
             _%new-value163690%_)
            (let ((_%new-value163701%_ _%new-value163690%_))
              (__unhandled-actor-exception-hook-set! _%new-value163701%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163690%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx164415%_ _%proc164416%_)
        (let* ((_%mx164419%_ _%mx164415%_)
               (_%proc164427%_ _%proc164416%_)
               (_%handler164436%_ (current-exception-handler))
               (_%handler164475%_
                (lambda (_%e164438%_)
                  (let* ((_%handler164440%_ void)
                         (_%thunk164444%_
                          (lambda ()
                            (mutex-unlock! _%mx164419%_)
                            (let ()
                              (declare (not safe))
                              (_%handler164436%_ _%e164438%_))))
                         (_%handler164449%_ _%handler164440%_)
                         (_%thunk164465%_ _%thunk164444%_))
                    (declare (not safe))
                    (__with-catch _%handler164449%_ _%thunk164465%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e164438%_))))
               (_%thunk164481%_
                (lambda ()
                  (mutex-lock! _%mx164419%_)
                  (let ((_%result164479%_
                         (let () (declare (not safe)) (_%proc164427%_))))
                    (mutex-unlock! _%mx164419%_)
                    _%result164479%_)))
               (_%handler164486%_ _%handler164475%_)
               (_%thunk164497%_ _%thunk164481%_))
          (declare (not safe))
          (__with-exception-handler _%handler164486%_ _%thunk164497%_))))
    (define with-lock
      (lambda (_%mx163831%_ _%proc163832%_)
        (if (mutex? _%mx163831%_)
            (let ((_%mx163836%_ _%mx163831%_))
              (if (procedure? _%proc163832%_)
                  (let ((_%proc163846%_ _%proc163832%_))
                    (__with-lock _%mx163836%_ _%proc163846%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163832%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx163831%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx164392%_ _%proc164393%_)
        (let* ((_%mx164396%_ _%mx164392%_) (_%proc164404%_ _%proc164393%_))
          (let ((__tmp165284 (lambda () (mutex-lock! _%mx164396%_)))
                (__tmp165283 (lambda () (mutex-unlock! _%mx164396%_))))
            (declare (not safe))
            (##dynamic-wind __tmp165284 _%proc164404%_ __tmp165283)))))
    (define with-dynamic-lock
      (lambda (_%mx163976%_ _%proc163977%_)
        (if (mutex? _%mx163976%_)
            (let ((_%mx163981%_ _%mx163976%_))
              (if (procedure? _%proc163977%_)
                  (let ((_%proc163991%_ _%proc163977%_))
                    (__with-dynamic-lock _%mx163981%_ _%proc163991%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163977%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx163976%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk164323%_ _%error-port164324%_)
        (let* ((_%thunk164327%_ _%thunk164323%_)
               (_%error-port164335%_ _%error-port164324%_)
               (_%handler164350%_
                (let ((_%E164344%_ (current-exception-handler)))
                  (lambda (_%exn164346%_)
                    (let ((__tmp165285
                           (lambda (_%cont164348%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont164348%_
                                  _%exn164346%_
                                  _%error-port164335%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E164344%_ _%exn164346%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp165285)))))
               (_%thunk164353%_ _%thunk164327%_)
               (_%handler164358%_ _%handler164350%_)
               (_%thunk164372%_ _%thunk164353%_))
          (declare (not safe))
          (__with-exception-handler _%handler164358%_ _%thunk164372%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk164385%_)
        (let ((_%error-port164387%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk164385%_
           _%error-port164387%_))))
    (define __with-exception-stack-trace
      (lambda _g165286_
        (let ((_g165287_ (let () (declare (not safe)) (##length _g165286_))))
          (cond ((let () (declare (not safe)) (##fx= _g165287_ 1))
                 (apply __with-exception-stack-trace__0 _g165286_))
                ((let () (declare (not safe)) (##fx= _g165287_ 2))
                 (apply __with-exception-stack-trace__% _g165286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g165286_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk164122%_ _%error-port164123%_)
        (if (procedure? _%thunk164122%_)
            (let ((_%thunk164127%_ _%thunk164122%_))
              (if (port? _%error-port164123%_)
                  (let ((_%error-port164137%_ _%error-port164123%_))
                    (__with-exception-stack-trace__%
                     _%thunk164127%_
                     _%error-port164137%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port164123%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk164122%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk164150%_)
        (let ((_%error-port164152%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk164150%_
           _%error-port164152%_))))
    (define with-exception-stack-trace
      (lambda _g165288_
        (let ((_g165289_ (let () (declare (not safe)) (##length _g165288_))))
          (cond ((let () (declare (not safe)) (##fx= _g165289_ 1))
                 (apply with-exception-stack-trace__0 _g165288_))
                ((let () (declare (not safe)) (##fx= _g165289_ 2))
                 (apply with-exception-stack-trace__% _g165288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g165288_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont164304%_ _%exn164305%_ _%error-port164306%_)
        (let ((_%out164308%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out164308%_))
          (display '"*** Unhandled exception in " _%out164308%_)
          (display (current-thread) _%out164308%_)
          (newline _%out164308%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn164305%_ _%out164308%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn164305%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out164308%_)
                (newline _%out164308%_)
                (display-continuation-backtrace _%cont164304%_ _%out164308%_)))
          (let ((__tmp165290 (get-output-string _%out164308%_)))
            (declare (not safe))
            (##write-string __tmp165290 _%error-port164306%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont164313%_ _%exn164314%_)
        (let ((_%error-port164316%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont164313%_
           _%exn164314%_
           _%error-port164316%_))))
    (define dump-stack-trace!
      (lambda _g165291_
        (let ((_g165292_ (let () (declare (not safe)) (##length _g165291_))))
          (cond ((let () (declare (not safe)) (##fx= _g165292_ 2))
                 (apply dump-stack-trace!__0 _g165291_))
                ((let () (declare (not safe)) (##fx= _g165292_ 3))
                 (apply dump-stack-trace!__% _g165291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g165291_))))))
    (define __thread-dead?
      (lambda (_%thread164291%_)
        (let ((_%thread164294%_ _%thread164291%_))
          (not (macro-thread-end-condvar _%thread164294%_)))))
    (define thread-dead?
      (lambda (_%thread164277%_)
        (if (thread? _%thread164277%_)
            (let ((_%thread164281%_ _%thread164277%_))
              (__thread-dead? _%thread164281%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread164277%_)
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
