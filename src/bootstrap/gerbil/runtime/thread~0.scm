(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770505715)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk160872%_ _%name160873%_)
        (let* ((_%thunk160876%_ _%thunk160872%_)
               (_%name160884%_ _%name160873%_))
          (make-thread
           (lambda () (thread-main _%thunk160876%_))
           _%name160884%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk158898%_ _%name158899%_)
        (if (procedure? _%thunk158898%_)
            (let ((_%thunk158903%_ _%thunk158898%_))
              (if (symbol? _%name158899%_)
                  (let ((_%name158913%_ _%name158899%_))
                    (__make-system-thread _%thunk158903%_ _%name158913%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name158899%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk158898%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk160819%_ _%name160820%_)
        (let* ((_%thunk160823%_ _%thunk160819%_)
               (_%name160831%_ _%name160820%_))
          (thread-start!
           (let* ((_%thunk160840%_ _%thunk160823%_)
                  (_%name160843%_ _%name160831%_)
                  (_%thunk160848%_ _%thunk160840%_)
                  (_%name160862%_ _%name160843%_))
             (__make-system-thread _%thunk160848%_ _%name160862%_))))))
    (define system-thread!
      (lambda (_%thunk159043%_ _%name159044%_)
        (if (procedure? _%thunk159043%_)
            (let ((_%thunk159048%_ _%thunk159043%_))
              (if (symbol? _%name159044%_)
                  (let ((_%name159058%_ _%name159044%_))
                    (__system-thread! _%thunk159048%_ _%name159058%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name159044%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk159043%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk160798%_ _%name160799%_)
        (let* ((_%thunk160802%_ _%thunk160798%_)
               (_%name160810%_ _%name160799%_))
          (spawn-actor
           _%thunk160802%_
           '()
           _%name160810%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk159188%_ _%name159189%_)
        (if (procedure? _%thunk159188%_)
            (let ((_%thunk159193%_ _%thunk159188%_))
              (if (symbol? _%name159189%_)
                  (let ((_%name159203%_ _%name159189%_))
                    (__system-actor! _%thunk159193%_ _%name159203%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name159189%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk159188%_)
              '#!void))))
    (define __spawn
      (lambda (_%f160785%_ . _%args160786%_)
        (let ((_%f160789%_ _%f160785%_))
          (spawn-actor _%f160789%_ _%args160786%_ '#!void '#f))))
    (define spawn
      (lambda (_%f159333%_ . _%args159334%_)
        (if (procedure? _%f159333%_)
            (let ((_%f159338%_ _%f159333%_))
              (declare (not safe))
              (##apply __spawn _%f159338%_ _%args159334%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f159333%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name160771%_ _%f160772%_ . _%args160773%_)
        (let ((_%f160776%_ _%f160772%_))
          (spawn-actor _%f160776%_ _%args160773%_ _%name160771%_ '#f))))
    (define spawn/name
      (lambda (_%name159468%_ _%f159469%_ . _%args159470%_)
        (if (procedure? _%f159469%_)
            (let ((_%f159474%_ _%f159469%_))
              (declare (not safe))
              (##apply __spawn/name _%name159468%_ _%f159474%_ _%args159470%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f159469%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name160755%_ _%f160756%_ . _%args160757%_)
        (let* ((_%f160760%_ _%f160756%_)
               (_%tgroup160769%_ (make-thread-group _%name160755%_)))
          (spawn-actor
           _%f160760%_
           _%args160757%_
           _%name160755%_
           _%tgroup160769%_))))
    (define spawn/group
      (lambda (_%name159604%_ _%f159605%_ . _%args159606%_)
        (if (procedure? _%f159605%_)
            (let ((_%f159610%_ _%f159605%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name159604%_
                       _%f159610%_
                       _%args159606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f159605%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f160703%_ _%args160704%_ _%name160705%_ _%tgroup160706%_)
        (let* ((_%thunk160710%_
                (if (null? _%args160704%_)
                    _%f160703%_
                    (lambda () (apply _%f160703%_ _%args160704%_))))
               (_%thunk160746%_
                (lambda ()
                  (let* ((_%thunk160713%_ _%thunk160710%_)
                         (_%error-port160716%_ (current-error-port)))
                    (if (procedure? _%thunk160713%_)
                        (let* ((_%thunk160721%_ _%thunk160713%_)
                               (_%error-port160736%_ _%error-port160716%_))
                          (__with-exception-stack-trace__%
                           _%thunk160721%_
                           _%error-port160736%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk160713%_)
                          '#!void)))))
               (_%tgroup160751%_
                (let ((_%$e160748%_ _%tgroup160706%_))
                  (if _%$e160748%_ _%$e160748%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk160746%_))
            _%name160705%_
            _%tgroup160751%_)))))
    (define spawn-thread__%
      (lambda (_%thunk160680%_ _%name160681%_ _%tgroup160682%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk160680%_))
          _%name160681%_
          _%tgroup160682%_))))
    (define spawn-thread__0
      (lambda (_%thunk160688%_)
        (let* ((_%name160690%_ absent-obj) (_%tgroup160692%_ absent-obj))
          (spawn-thread__% _%thunk160688%_ _%name160690%_ _%tgroup160692%_))))
    (define spawn-thread__1
      (lambda (_%thunk160694%_ _%name160695%_)
        (let ((_%tgroup160697%_ absent-obj))
          (spawn-thread__% _%thunk160694%_ _%name160695%_ _%tgroup160697%_))))
    (define spawn-thread
      (lambda _g161155_
        (let ((_g161156_ (let () (declare (not safe)) (##length _g161155_))))
          (cond ((let () (declare (not safe)) (##fx= _g161156_ 1))
                 (apply spawn-thread__0 _g161155_))
                ((let () (declare (not safe)) (##fx= _g161156_ 2))
                 (apply spawn-thread__1 _g161155_))
                ((let () (declare (not safe)) (##fx= _g161156_ 3))
                 (apply spawn-thread__% _g161155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g161155_))))))
    (define thread-main
      (lambda (_%thunk160611%_)
        (let* ((_%handler160650%_
                (lambda (_%exn160613%_)
                  (let ((__tmp161157
                         (lambda (_%cont160615%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler160617%_ void)
                                      (_%thunk160621%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont160615%_
                                            _%exn160613%_))))
                                      (_%handler160626%_ _%handler160617%_)
                                      (_%thunk160640%_ _%thunk160621%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler160626%_
                                  _%thunk160640%_))
                               '#!void)
                           (let ((__tmp161158
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont160615%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp161158
                              ##primordial-exception-handler
                              _%exn160613%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp161157))))
               (_%thunk160653%_ _%thunk160611%_)
               (_%handler160658%_ _%handler160650%_))
          (if (procedure? _%thunk160653%_)
              (let ((_%thunk160669%_ _%thunk160653%_))
                (declare (not safe))
                (__with-exception-handler _%handler160658%_ _%thunk160669%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk160653%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key160567%_ _%default160568%_)
        (let* ((_%tab160570%_ (thread-local-table))
               (_%h160572%_ _%tab160570%_)
               (_%key160575%_ _%key160567%_)
               (_%default160578%_ _%default160568%_)
               (_%h160585%_
                (let ((_%$obj160582%_ _%h160572%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160582%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160582%_)))
                           '#t)
                      _%$obj160582%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160582%_)))))
               (_%h160587%_ _%h160585%_))
          (declare (not safe))
          (__hash-ref__% _%h160587%_ _%key160575%_ _%default160578%_))))
    (define thread-local-ref__0
      (lambda (_%key160604%_)
        (let ((_%default160606%_ absent-obj))
          (thread-local-ref__% _%key160604%_ _%default160606%_))))
    (define thread-local-ref
      (lambda _g161159_
        (let ((_g161160_ (let () (declare (not safe)) (##length _g161159_))))
          (cond ((let () (declare (not safe)) (##fx= _g161160_ 1))
                 (apply thread-local-ref__0 _g161159_))
                ((let () (declare (not safe)) (##fx= _g161160_ 2))
                 (apply thread-local-ref__% _g161159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g161159_))))))
    (define thread-local-get
      (lambda (_%key160564%_) (thread-local-ref__% _%key160564%_ '#f)))
    (define thread-local-set!
      (lambda (_%key160530%_ _%value160531%_)
        (let* ((_%tab160533%_ (thread-local-table))
               (_%h160535%_ _%tab160533%_)
               (_%key160538%_ _%key160530%_)
               (_%value160541%_ _%value160531%_)
               (_%h160548%_
                (let ((_%$obj160545%_ _%h160535%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160545%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160545%_)))
                           '#t)
                      _%$obj160545%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160545%_)))))
               (_%h160550%_ _%h160548%_))
          (declare (not safe))
          (__hash-put! _%h160550%_ _%key160538%_ _%value160541%_))))
    (define thread-local-delete!
      (lambda (_%key160501%_)
        (let* ((_%tab160503%_ (thread-local-table))
               (_%h160505%_ _%tab160503%_)
               (_%key160508%_ _%key160501%_)
               (_%h160515%_
                (let ((_%$obj160512%_ _%h160505%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160512%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160512%_)))
                           '#t)
                      _%$obj160512%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160512%_)))))
               (_%h160517%_ _%h160515%_))
          (declare (not safe))
          (__hash-remove! _%h160517%_ _%key160508%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr160426%_ (current-thread)))
          (if (actor-thread? _%thr160426%_)
              (let ((_%$e160429%_ (actor-thread-locals _%thr160426%_)))
                (if _%$e160429%_
                    _%$e160429%_
                    (let ((_%tab160433%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr160426%_ _%tab160433%_)
                      _%tab160433%_)))
              (if (eq? _%thr160426%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e160463%_
                           (let* ((_%h160437%_ __thread-locals)
                                  (_%key160440%_ _%thr160426%_)
                                  (_%h160447%_
                                   (let ((_%$obj160444%_ _%h160437%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj160444%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj160444%_)))
                                              '#t)
                                         _%$obj160444%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj160444%_)))))
                                  (_%h160449%_ _%h160447%_))
                             (declare (not safe))
                             (__hash-get _%h160449%_ _%key160440%_))))
                      (if _%$e160463%_
                          ((lambda (_%tab160466%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab160466%_)
                           _%$e160463%_)
                          (let ((_%tab160469%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h160471%_ __thread-locals)
                                   (_%key160474%_ _%thr160426%_)
                                   (_%value160477%_ _%tab160469%_)
                                   (_%h160484%_
                                    (let ((_%$obj160481%_ _%h160471%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj160481%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj160481%_)))
                                               '#t)
                                          _%$obj160481%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj160481%_)))))
                                   (_%h160486%_ _%h160484%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h160486%_
                               _%key160474%_
                               _%value160477%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab160469%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value160412%_)
        (let ((_%new-value160415%_ _%new-value160412%_))
          (set! __unhandled-actor-exception-hook _%new-value160415%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value159740%_)
        (if ((lambda (_%$obj159744%_)
               (or (not _%$obj159744%_) (procedure? _%$obj159744%_)))
             _%new-value159740%_)
            (let ((_%new-value159751%_ _%new-value159740%_))
              (__unhandled-actor-exception-hook-set! _%new-value159751%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value159740%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx160319%_ _%proc160320%_)
        (let* ((_%mx160323%_ _%mx160319%_)
               (_%proc160331%_ _%proc160320%_)
               (_%handler160340%_ (current-exception-handler))
               (_%handler160379%_
                (lambda (_%e160342%_)
                  (let* ((_%handler160344%_ void)
                         (_%thunk160348%_
                          (lambda ()
                            (mutex-unlock! _%mx160323%_)
                            (let ()
                              (declare (not safe))
                              (_%handler160340%_ _%e160342%_))))
                         (_%handler160353%_ _%handler160344%_)
                         (_%thunk160369%_ _%thunk160348%_))
                    (declare (not safe))
                    (__with-catch _%handler160353%_ _%thunk160369%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e160342%_))))
               (_%thunk160385%_
                (lambda ()
                  (mutex-lock! _%mx160323%_)
                  (let ((_%result160383%_
                         (let () (declare (not safe)) (_%proc160331%_))))
                    (mutex-unlock! _%mx160323%_)
                    _%result160383%_)))
               (_%handler160390%_ _%handler160379%_)
               (_%thunk160401%_ _%thunk160385%_))
          (declare (not safe))
          (__with-exception-handler _%handler160390%_ _%thunk160401%_))))
    (define with-lock
      (lambda (_%mx159881%_ _%proc159882%_)
        (if (mutex? _%mx159881%_)
            (let ((_%mx159886%_ _%mx159881%_))
              (if (procedure? _%proc159882%_)
                  (let ((_%proc159896%_ _%proc159882%_))
                    (__with-lock _%mx159886%_ _%proc159896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc159882%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx159881%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx160296%_ _%proc160297%_)
        (let* ((_%mx160300%_ _%mx160296%_) (_%proc160308%_ _%proc160297%_))
          (let ((__tmp161162 (lambda () (mutex-lock! _%mx160300%_)))
                (__tmp161161 (lambda () (mutex-unlock! _%mx160300%_))))
            (declare (not safe))
            (##dynamic-wind __tmp161162 _%proc160308%_ __tmp161161)))))
    (define with-dynamic-lock
      (lambda (_%mx160026%_ _%proc160027%_)
        (if (mutex? _%mx160026%_)
            (let ((_%mx160031%_ _%mx160026%_))
              (if (procedure? _%proc160027%_)
                  (let ((_%proc160041%_ _%proc160027%_))
                    (__with-dynamic-lock _%mx160031%_ _%proc160041%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc160027%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx160026%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk160227%_ _%error-port160228%_)
        (let* ((_%thunk160231%_ _%thunk160227%_)
               (_%error-port160239%_ _%error-port160228%_)
               (_%handler160254%_
                (let ((_%E160248%_ (current-exception-handler)))
                  (lambda (_%exn160250%_)
                    (let ((__tmp161163
                           (lambda (_%cont160252%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont160252%_
                                  _%exn160250%_
                                  _%error-port160239%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E160248%_ _%exn160250%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp161163)))))
               (_%thunk160257%_ _%thunk160231%_)
               (_%handler160262%_ _%handler160254%_)
               (_%thunk160276%_ _%thunk160257%_))
          (declare (not safe))
          (__with-exception-handler _%handler160262%_ _%thunk160276%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk160289%_)
        (let ((_%error-port160291%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk160289%_
           _%error-port160291%_))))
    (define __with-exception-stack-trace
      (lambda _g161164_
        (let ((_g161165_ (let () (declare (not safe)) (##length _g161164_))))
          (cond ((let () (declare (not safe)) (##fx= _g161165_ 1))
                 (apply __with-exception-stack-trace__0 _g161164_))
                ((let () (declare (not safe)) (##fx= _g161165_ 2))
                 (apply __with-exception-stack-trace__% _g161164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g161164_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk160172%_ _%error-port160173%_)
        (if (procedure? _%thunk160172%_)
            (let ((_%thunk160177%_ _%thunk160172%_))
              (if (port? _%error-port160173%_)
                  (let ((_%error-port160187%_ _%error-port160173%_))
                    (__with-exception-stack-trace__%
                     _%thunk160177%_
                     _%error-port160187%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port160173%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk160172%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk160200%_)
        (let ((_%error-port160202%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk160200%_
           _%error-port160202%_))))
    (define with-exception-stack-trace
      (lambda _g161166_
        (let ((_g161167_ (let () (declare (not safe)) (##length _g161166_))))
          (cond ((let () (declare (not safe)) (##fx= _g161167_ 1))
                 (apply with-exception-stack-trace__0 _g161166_))
                ((let () (declare (not safe)) (##fx= _g161167_ 2))
                 (apply with-exception-stack-trace__% _g161166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g161166_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont160208%_ _%exn160209%_ _%error-port160210%_)
        (let ((_%out160212%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out160212%_))
          (display '"*** Unhandled exception in " _%out160212%_)
          (display (current-thread) _%out160212%_)
          (newline _%out160212%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn160209%_ _%out160212%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn160209%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out160212%_)
                (newline _%out160212%_)
                (display-continuation-backtrace _%cont160208%_ _%out160212%_)))
          (let ((__tmp161168 (get-output-string _%out160212%_)))
            (declare (not safe))
            (##write-string __tmp161168 _%error-port160210%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont160217%_ _%exn160218%_)
        (let ((_%error-port160220%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont160217%_
           _%exn160218%_
           _%error-port160220%_))))
    (define dump-stack-trace!
      (lambda _g161169_
        (let ((_g161170_ (let () (declare (not safe)) (##length _g161169_))))
          (cond ((let () (declare (not safe)) (##fx= _g161170_ 2))
                 (apply dump-stack-trace!__0 _g161169_))
                ((let () (declare (not safe)) (##fx= _g161170_ 3))
                 (apply dump-stack-trace!__% _g161169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g161169_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
