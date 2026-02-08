(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770513295)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk160956%_ _%name160957%_)
        (let* ((_%thunk160960%_ _%thunk160956%_)
               (_%name160968%_ _%name160957%_))
          (make-thread
           (lambda () (thread-main _%thunk160960%_))
           _%name160968%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk158982%_ _%name158983%_)
        (if (procedure? _%thunk158982%_)
            (let ((_%thunk158987%_ _%thunk158982%_))
              (if (symbol? _%name158983%_)
                  (let ((_%name158997%_ _%name158983%_))
                    (__make-system-thread _%thunk158987%_ _%name158997%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name158983%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk158982%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk160903%_ _%name160904%_)
        (let* ((_%thunk160907%_ _%thunk160903%_)
               (_%name160915%_ _%name160904%_))
          (thread-start!
           (let* ((_%thunk160924%_ _%thunk160907%_)
                  (_%name160927%_ _%name160915%_)
                  (_%thunk160932%_ _%thunk160924%_)
                  (_%name160946%_ _%name160927%_))
             (__make-system-thread _%thunk160932%_ _%name160946%_))))))
    (define system-thread!
      (lambda (_%thunk159127%_ _%name159128%_)
        (if (procedure? _%thunk159127%_)
            (let ((_%thunk159132%_ _%thunk159127%_))
              (if (symbol? _%name159128%_)
                  (let ((_%name159142%_ _%name159128%_))
                    (__system-thread! _%thunk159132%_ _%name159142%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name159128%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk159127%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk160882%_ _%name160883%_)
        (let* ((_%thunk160886%_ _%thunk160882%_)
               (_%name160894%_ _%name160883%_))
          (spawn-actor
           _%thunk160886%_
           '()
           _%name160894%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk159272%_ _%name159273%_)
        (if (procedure? _%thunk159272%_)
            (let ((_%thunk159277%_ _%thunk159272%_))
              (if (symbol? _%name159273%_)
                  (let ((_%name159287%_ _%name159273%_))
                    (__system-actor! _%thunk159277%_ _%name159287%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name159273%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk159272%_)
              '#!void))))
    (define __spawn
      (lambda (_%f160869%_ . _%args160870%_)
        (let ((_%f160873%_ _%f160869%_))
          (spawn-actor _%f160873%_ _%args160870%_ '#!void '#f))))
    (define spawn
      (lambda (_%f159417%_ . _%args159418%_)
        (if (procedure? _%f159417%_)
            (let ((_%f159422%_ _%f159417%_))
              (declare (not safe))
              (##apply __spawn _%f159422%_ _%args159418%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f159417%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name160855%_ _%f160856%_ . _%args160857%_)
        (let ((_%f160860%_ _%f160856%_))
          (spawn-actor _%f160860%_ _%args160857%_ _%name160855%_ '#f))))
    (define spawn/name
      (lambda (_%name159552%_ _%f159553%_ . _%args159554%_)
        (if (procedure? _%f159553%_)
            (let ((_%f159558%_ _%f159553%_))
              (declare (not safe))
              (##apply __spawn/name _%name159552%_ _%f159558%_ _%args159554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f159553%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name160839%_ _%f160840%_ . _%args160841%_)
        (let* ((_%f160844%_ _%f160840%_)
               (_%tgroup160853%_ (make-thread-group _%name160839%_)))
          (spawn-actor
           _%f160844%_
           _%args160841%_
           _%name160839%_
           _%tgroup160853%_))))
    (define spawn/group
      (lambda (_%name159688%_ _%f159689%_ . _%args159690%_)
        (if (procedure? _%f159689%_)
            (let ((_%f159694%_ _%f159689%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name159688%_
                       _%f159694%_
                       _%args159690%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f159689%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f160787%_ _%args160788%_ _%name160789%_ _%tgroup160790%_)
        (let* ((_%thunk160794%_
                (if (null? _%args160788%_)
                    _%f160787%_
                    (lambda () (apply _%f160787%_ _%args160788%_))))
               (_%thunk160830%_
                (lambda ()
                  (let* ((_%thunk160797%_ _%thunk160794%_)
                         (_%error-port160800%_ (current-error-port)))
                    (if (procedure? _%thunk160797%_)
                        (let* ((_%thunk160805%_ _%thunk160797%_)
                               (_%error-port160820%_ _%error-port160800%_))
                          (__with-exception-stack-trace__%
                           _%thunk160805%_
                           _%error-port160820%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk160797%_)
                          '#!void)))))
               (_%tgroup160835%_
                (let ((_%$e160832%_ _%tgroup160790%_))
                  (if _%$e160832%_ _%$e160832%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk160830%_))
            _%name160789%_
            _%tgroup160835%_)))))
    (define spawn-thread__%
      (lambda (_%thunk160764%_ _%name160765%_ _%tgroup160766%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk160764%_))
          _%name160765%_
          _%tgroup160766%_))))
    (define spawn-thread__0
      (lambda (_%thunk160772%_)
        (let* ((_%name160774%_ absent-obj) (_%tgroup160776%_ absent-obj))
          (spawn-thread__% _%thunk160772%_ _%name160774%_ _%tgroup160776%_))))
    (define spawn-thread__1
      (lambda (_%thunk160778%_ _%name160779%_)
        (let ((_%tgroup160781%_ absent-obj))
          (spawn-thread__% _%thunk160778%_ _%name160779%_ _%tgroup160781%_))))
    (define spawn-thread
      (lambda _g161239_
        (let ((_g161240_ (let () (declare (not safe)) (##length _g161239_))))
          (cond ((let () (declare (not safe)) (##fx= _g161240_ 1))
                 (apply spawn-thread__0 _g161239_))
                ((let () (declare (not safe)) (##fx= _g161240_ 2))
                 (apply spawn-thread__1 _g161239_))
                ((let () (declare (not safe)) (##fx= _g161240_ 3))
                 (apply spawn-thread__% _g161239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g161239_))))))
    (define thread-main
      (lambda (_%thunk160695%_)
        (let* ((_%handler160734%_
                (lambda (_%exn160697%_)
                  (let ((__tmp161241
                         (lambda (_%cont160699%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler160701%_ void)
                                      (_%thunk160705%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont160699%_
                                            _%exn160697%_))))
                                      (_%handler160710%_ _%handler160701%_)
                                      (_%thunk160724%_ _%thunk160705%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler160710%_
                                  _%thunk160724%_))
                               '#!void)
                           (let ((__tmp161242
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont160699%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp161242
                              ##primordial-exception-handler
                              _%exn160697%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp161241))))
               (_%thunk160737%_ _%thunk160695%_)
               (_%handler160742%_ _%handler160734%_))
          (if (procedure? _%thunk160737%_)
              (let ((_%thunk160753%_ _%thunk160737%_))
                (declare (not safe))
                (__with-exception-handler _%handler160742%_ _%thunk160753%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk160737%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key160651%_ _%default160652%_)
        (let* ((_%tab160654%_ (thread-local-table))
               (_%h160656%_ _%tab160654%_)
               (_%key160659%_ _%key160651%_)
               (_%default160662%_ _%default160652%_)
               (_%h160669%_
                (let ((_%$obj160666%_ _%h160656%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160666%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160666%_)))
                           '#t)
                      _%$obj160666%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160666%_)))))
               (_%h160671%_ _%h160669%_))
          (declare (not safe))
          (__hash-ref__% _%h160671%_ _%key160659%_ _%default160662%_))))
    (define thread-local-ref__0
      (lambda (_%key160688%_)
        (let ((_%default160690%_ absent-obj))
          (thread-local-ref__% _%key160688%_ _%default160690%_))))
    (define thread-local-ref
      (lambda _g161243_
        (let ((_g161244_ (let () (declare (not safe)) (##length _g161243_))))
          (cond ((let () (declare (not safe)) (##fx= _g161244_ 1))
                 (apply thread-local-ref__0 _g161243_))
                ((let () (declare (not safe)) (##fx= _g161244_ 2))
                 (apply thread-local-ref__% _g161243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g161243_))))))
    (define thread-local-get
      (lambda (_%key160648%_) (thread-local-ref__% _%key160648%_ '#f)))
    (define thread-local-set!
      (lambda (_%key160614%_ _%value160615%_)
        (let* ((_%tab160617%_ (thread-local-table))
               (_%h160619%_ _%tab160617%_)
               (_%key160622%_ _%key160614%_)
               (_%value160625%_ _%value160615%_)
               (_%h160632%_
                (let ((_%$obj160629%_ _%h160619%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160629%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160629%_)))
                           '#t)
                      _%$obj160629%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160629%_)))))
               (_%h160634%_ _%h160632%_))
          (declare (not safe))
          (__hash-put! _%h160634%_ _%key160622%_ _%value160625%_))))
    (define thread-local-delete!
      (lambda (_%key160585%_)
        (let* ((_%tab160587%_ (thread-local-table))
               (_%h160589%_ _%tab160587%_)
               (_%key160592%_ _%key160585%_)
               (_%h160599%_
                (let ((_%$obj160596%_ _%h160589%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160596%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160596%_)))
                           '#t)
                      _%$obj160596%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160596%_)))))
               (_%h160601%_ _%h160599%_))
          (declare (not safe))
          (__hash-remove! _%h160601%_ _%key160592%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr160510%_ (current-thread)))
          (if (actor-thread? _%thr160510%_)
              (let ((_%$e160513%_ (actor-thread-locals _%thr160510%_)))
                (if _%$e160513%_
                    _%$e160513%_
                    (let ((_%tab160517%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr160510%_ _%tab160517%_)
                      _%tab160517%_)))
              (if (eq? _%thr160510%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e160547%_
                           (let* ((_%h160521%_ __thread-locals)
                                  (_%key160524%_ _%thr160510%_)
                                  (_%h160531%_
                                   (let ((_%$obj160528%_ _%h160521%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj160528%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj160528%_)))
                                              '#t)
                                         _%$obj160528%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj160528%_)))))
                                  (_%h160533%_ _%h160531%_))
                             (declare (not safe))
                             (__hash-get _%h160533%_ _%key160524%_))))
                      (if _%$e160547%_
                          ((lambda (_%tab160550%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab160550%_)
                           _%$e160547%_)
                          (let ((_%tab160553%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h160555%_ __thread-locals)
                                   (_%key160558%_ _%thr160510%_)
                                   (_%value160561%_ _%tab160553%_)
                                   (_%h160568%_
                                    (let ((_%$obj160565%_ _%h160555%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj160565%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj160565%_)))
                                               '#t)
                                          _%$obj160565%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj160565%_)))))
                                   (_%h160570%_ _%h160568%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h160570%_
                               _%key160558%_
                               _%value160561%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab160553%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value160496%_)
        (let ((_%new-value160499%_ _%new-value160496%_))
          (set! __unhandled-actor-exception-hook _%new-value160499%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value159824%_)
        (if ((lambda (_%$obj159828%_)
               (or (not _%$obj159828%_) (procedure? _%$obj159828%_)))
             _%new-value159824%_)
            (let ((_%new-value159835%_ _%new-value159824%_))
              (__unhandled-actor-exception-hook-set! _%new-value159835%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value159824%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx160403%_ _%proc160404%_)
        (let* ((_%mx160407%_ _%mx160403%_)
               (_%proc160415%_ _%proc160404%_)
               (_%handler160424%_ (current-exception-handler))
               (_%handler160463%_
                (lambda (_%e160426%_)
                  (let* ((_%handler160428%_ void)
                         (_%thunk160432%_
                          (lambda ()
                            (mutex-unlock! _%mx160407%_)
                            (let ()
                              (declare (not safe))
                              (_%handler160424%_ _%e160426%_))))
                         (_%handler160437%_ _%handler160428%_)
                         (_%thunk160453%_ _%thunk160432%_))
                    (declare (not safe))
                    (__with-catch _%handler160437%_ _%thunk160453%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e160426%_))))
               (_%thunk160469%_
                (lambda ()
                  (mutex-lock! _%mx160407%_)
                  (let ((_%result160467%_
                         (let () (declare (not safe)) (_%proc160415%_))))
                    (mutex-unlock! _%mx160407%_)
                    _%result160467%_)))
               (_%handler160474%_ _%handler160463%_)
               (_%thunk160485%_ _%thunk160469%_))
          (declare (not safe))
          (__with-exception-handler _%handler160474%_ _%thunk160485%_))))
    (define with-lock
      (lambda (_%mx159965%_ _%proc159966%_)
        (if (mutex? _%mx159965%_)
            (let ((_%mx159970%_ _%mx159965%_))
              (if (procedure? _%proc159966%_)
                  (let ((_%proc159980%_ _%proc159966%_))
                    (__with-lock _%mx159970%_ _%proc159980%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc159966%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx159965%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx160380%_ _%proc160381%_)
        (let* ((_%mx160384%_ _%mx160380%_) (_%proc160392%_ _%proc160381%_))
          (let ((__tmp161246 (lambda () (mutex-lock! _%mx160384%_)))
                (__tmp161245 (lambda () (mutex-unlock! _%mx160384%_))))
            (declare (not safe))
            (##dynamic-wind __tmp161246 _%proc160392%_ __tmp161245)))))
    (define with-dynamic-lock
      (lambda (_%mx160110%_ _%proc160111%_)
        (if (mutex? _%mx160110%_)
            (let ((_%mx160115%_ _%mx160110%_))
              (if (procedure? _%proc160111%_)
                  (let ((_%proc160125%_ _%proc160111%_))
                    (__with-dynamic-lock _%mx160115%_ _%proc160125%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc160111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx160110%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk160311%_ _%error-port160312%_)
        (let* ((_%thunk160315%_ _%thunk160311%_)
               (_%error-port160323%_ _%error-port160312%_)
               (_%handler160338%_
                (let ((_%E160332%_ (current-exception-handler)))
                  (lambda (_%exn160334%_)
                    (let ((__tmp161247
                           (lambda (_%cont160336%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont160336%_
                                  _%exn160334%_
                                  _%error-port160323%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E160332%_ _%exn160334%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp161247)))))
               (_%thunk160341%_ _%thunk160315%_)
               (_%handler160346%_ _%handler160338%_)
               (_%thunk160360%_ _%thunk160341%_))
          (declare (not safe))
          (__with-exception-handler _%handler160346%_ _%thunk160360%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk160373%_)
        (let ((_%error-port160375%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk160373%_
           _%error-port160375%_))))
    (define __with-exception-stack-trace
      (lambda _g161248_
        (let ((_g161249_ (let () (declare (not safe)) (##length _g161248_))))
          (cond ((let () (declare (not safe)) (##fx= _g161249_ 1))
                 (apply __with-exception-stack-trace__0 _g161248_))
                ((let () (declare (not safe)) (##fx= _g161249_ 2))
                 (apply __with-exception-stack-trace__% _g161248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g161248_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk160256%_ _%error-port160257%_)
        (if (procedure? _%thunk160256%_)
            (let ((_%thunk160261%_ _%thunk160256%_))
              (if (port? _%error-port160257%_)
                  (let ((_%error-port160271%_ _%error-port160257%_))
                    (__with-exception-stack-trace__%
                     _%thunk160261%_
                     _%error-port160271%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port160257%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk160256%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk160284%_)
        (let ((_%error-port160286%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk160284%_
           _%error-port160286%_))))
    (define with-exception-stack-trace
      (lambda _g161250_
        (let ((_g161251_ (let () (declare (not safe)) (##length _g161250_))))
          (cond ((let () (declare (not safe)) (##fx= _g161251_ 1))
                 (apply with-exception-stack-trace__0 _g161250_))
                ((let () (declare (not safe)) (##fx= _g161251_ 2))
                 (apply with-exception-stack-trace__% _g161250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g161250_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont160292%_ _%exn160293%_ _%error-port160294%_)
        (let ((_%out160296%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out160296%_))
          (display '"*** Unhandled exception in " _%out160296%_)
          (display (current-thread) _%out160296%_)
          (newline _%out160296%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn160293%_ _%out160296%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn160293%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out160296%_)
                (newline _%out160296%_)
                (display-continuation-backtrace _%cont160292%_ _%out160296%_)))
          (let ((__tmp161252 (get-output-string _%out160296%_)))
            (declare (not safe))
            (##write-string __tmp161252 _%error-port160294%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont160301%_ _%exn160302%_)
        (let ((_%error-port160304%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont160301%_
           _%exn160302%_
           _%error-port160304%_))))
    (define dump-stack-trace!
      (lambda _g161253_
        (let ((_g161254_ (let () (declare (not safe)) (##length _g161253_))))
          (cond ((let () (declare (not safe)) (##fx= _g161254_ 2))
                 (apply dump-stack-trace!__0 _g161253_))
                ((let () (declare (not safe)) (##fx= _g161254_ 3))
                 (apply dump-stack-trace!__% _g161253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g161253_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
