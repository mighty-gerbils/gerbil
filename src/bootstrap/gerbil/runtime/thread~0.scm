(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771037608)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk172896%_ _%name172897%_)
        (let* ((_%thunk172900%_ _%thunk172896%_)
               (_%name172908%_ _%name172897%_))
          (make-thread
           (lambda () (thread-main _%thunk172900%_))
           _%name172908%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk170776%_ _%name170777%_)
        (if (procedure? _%thunk170776%_)
            (let ((_%thunk170781%_ _%thunk170776%_))
              (if (symbol? _%name170777%_)
                  (let ((_%name170791%_ _%name170777%_))
                    (__make-system-thread _%thunk170781%_ _%name170791%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name170777%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk170776%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk172843%_ _%name172844%_)
        (let* ((_%thunk172847%_ _%thunk172843%_)
               (_%name172855%_ _%name172844%_))
          (thread-start!
           (let* ((_%thunk172864%_ _%thunk172847%_)
                  (_%name172867%_ _%name172855%_)
                  (_%thunk172872%_ _%thunk172864%_)
                  (_%name172886%_ _%name172867%_))
             (__make-system-thread _%thunk172872%_ _%name172886%_))))))
    (define system-thread!
      (lambda (_%thunk170921%_ _%name170922%_)
        (if (procedure? _%thunk170921%_)
            (let ((_%thunk170926%_ _%thunk170921%_))
              (if (symbol? _%name170922%_)
                  (let ((_%name170936%_ _%name170922%_))
                    (__system-thread! _%thunk170926%_ _%name170936%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name170922%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk170921%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk172822%_ _%name172823%_)
        (let* ((_%thunk172826%_ _%thunk172822%_)
               (_%name172834%_ _%name172823%_))
          (spawn-actor
           _%thunk172826%_
           '()
           _%name172834%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk171066%_ _%name171067%_)
        (if (procedure? _%thunk171066%_)
            (let ((_%thunk171071%_ _%thunk171066%_))
              (if (symbol? _%name171067%_)
                  (let ((_%name171081%_ _%name171067%_))
                    (__system-actor! _%thunk171071%_ _%name171081%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name171067%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk171066%_)
              '#!void))))
    (define __spawn
      (lambda (_%f172809%_ . _%args172810%_)
        (let ((_%f172813%_ _%f172809%_))
          (spawn-actor _%f172813%_ _%args172810%_ '#!void '#f))))
    (define spawn
      (lambda (_%f171211%_ . _%args171212%_)
        (if (procedure? _%f171211%_)
            (let ((_%f171216%_ _%f171211%_))
              (declare (not safe))
              (##apply __spawn _%f171216%_ _%args171212%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f171211%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name172795%_ _%f172796%_ . _%args172797%_)
        (let ((_%f172800%_ _%f172796%_))
          (spawn-actor _%f172800%_ _%args172797%_ _%name172795%_ '#f))))
    (define spawn/name
      (lambda (_%name171346%_ _%f171347%_ . _%args171348%_)
        (if (procedure? _%f171347%_)
            (let ((_%f171352%_ _%f171347%_))
              (declare (not safe))
              (##apply __spawn/name _%name171346%_ _%f171352%_ _%args171348%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f171347%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name172779%_ _%f172780%_ . _%args172781%_)
        (let* ((_%f172784%_ _%f172780%_)
               (_%tgroup172793%_ (make-thread-group _%name172779%_)))
          (spawn-actor
           _%f172784%_
           _%args172781%_
           _%name172779%_
           _%tgroup172793%_))))
    (define spawn/group
      (lambda (_%name171482%_ _%f171483%_ . _%args171484%_)
        (if (procedure? _%f171483%_)
            (let ((_%f171488%_ _%f171483%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name171482%_
                       _%f171488%_
                       _%args171484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f171483%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f172727%_ _%args172728%_ _%name172729%_ _%tgroup172730%_)
        (let* ((_%thunk172734%_
                (if (null? _%args172728%_)
                    _%f172727%_
                    (lambda () (apply _%f172727%_ _%args172728%_))))
               (_%thunk172770%_
                (lambda ()
                  (let* ((_%thunk172737%_ _%thunk172734%_)
                         (_%error-port172740%_ (current-error-port)))
                    (if (procedure? _%thunk172737%_)
                        (let* ((_%thunk172745%_ _%thunk172737%_)
                               (_%error-port172760%_ _%error-port172740%_))
                          (__with-exception-stack-trace__%
                           _%thunk172745%_
                           _%error-port172760%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk172737%_)
                          '#!void)))))
               (_%tgroup172775%_
                (let ((_%$e172772%_ _%tgroup172730%_))
                  (if _%$e172772%_ _%$e172772%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk172770%_))
            _%name172729%_
            _%tgroup172775%_)))))
    (define spawn-thread__%
      (lambda (_%thunk172704%_ _%name172705%_ _%tgroup172706%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk172704%_))
          _%name172705%_
          _%tgroup172706%_))))
    (define spawn-thread__0
      (lambda (_%thunk172712%_)
        (let* ((_%name172714%_ absent-obj) (_%tgroup172716%_ absent-obj))
          (spawn-thread__% _%thunk172712%_ _%name172714%_ _%tgroup172716%_))))
    (define spawn-thread__1
      (lambda (_%thunk172718%_ _%name172719%_)
        (let ((_%tgroup172721%_ absent-obj))
          (spawn-thread__% _%thunk172718%_ _%name172719%_ _%tgroup172721%_))))
    (define spawn-thread
      (lambda _g173205_
        (let ((_g173206_ (let () (declare (not safe)) (##length _g173205_))))
          (cond ((let () (declare (not safe)) (##fx= _g173206_ 1))
                 (apply spawn-thread__0 _g173205_))
                ((let () (declare (not safe)) (##fx= _g173206_ 2))
                 (apply spawn-thread__1 _g173205_))
                ((let () (declare (not safe)) (##fx= _g173206_ 3))
                 (apply spawn-thread__% _g173205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g173205_))))))
    (define thread-main
      (lambda (_%thunk172635%_)
        (let* ((_%handler172674%_
                (lambda (_%exn172637%_)
                  (let ((__tmp173207
                         (lambda (_%cont172639%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler172641%_ void)
                                      (_%thunk172645%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont172639%_
                                            _%exn172637%_))))
                                      (_%handler172650%_ _%handler172641%_)
                                      (_%thunk172664%_ _%thunk172645%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler172650%_
                                  _%thunk172664%_))
                               '#!void)
                           (let ((__tmp173208
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont172639%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp173208
                              ##primordial-exception-handler
                              _%exn172637%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp173207))))
               (_%thunk172677%_ _%thunk172635%_)
               (_%handler172682%_ _%handler172674%_))
          (if (procedure? _%thunk172677%_)
              (let ((_%thunk172693%_ _%thunk172677%_))
                (declare (not safe))
                (__with-exception-handler _%handler172682%_ _%thunk172693%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk172677%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172591%_ _%default172592%_)
        (let* ((_%tab172594%_ (thread-local-table))
               (_%h172596%_ _%tab172594%_)
               (_%key172599%_ _%key172591%_)
               (_%default172602%_ _%default172592%_)
               (_%h172609%_
                (let ((_%$obj172606%_ _%h172596%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172606%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172606%_)))
                           '#t)
                      _%$obj172606%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172606%_)))))
               (_%h172611%_ _%h172609%_))
          (declare (not safe))
          (__hash-ref__% _%h172611%_ _%key172599%_ _%default172602%_))))
    (define thread-local-ref__0
      (lambda (_%key172628%_)
        (let ((_%default172630%_ absent-obj))
          (thread-local-ref__% _%key172628%_ _%default172630%_))))
    (define thread-local-ref
      (lambda _g173209_
        (let ((_g173210_ (let () (declare (not safe)) (##length _g173209_))))
          (cond ((let () (declare (not safe)) (##fx= _g173210_ 1))
                 (apply thread-local-ref__0 _g173209_))
                ((let () (declare (not safe)) (##fx= _g173210_ 2))
                 (apply thread-local-ref__% _g173209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g173209_))))))
    (define thread-local-get
      (lambda (_%key172588%_) (thread-local-ref__% _%key172588%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172554%_ _%value172555%_)
        (let* ((_%tab172557%_ (thread-local-table))
               (_%h172559%_ _%tab172557%_)
               (_%key172562%_ _%key172554%_)
               (_%value172565%_ _%value172555%_)
               (_%h172572%_
                (let ((_%$obj172569%_ _%h172559%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172569%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172569%_)))
                           '#t)
                      _%$obj172569%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172569%_)))))
               (_%h172574%_ _%h172572%_))
          (declare (not safe))
          (__hash-put! _%h172574%_ _%key172562%_ _%value172565%_))))
    (define thread-local-delete!
      (lambda (_%key172525%_)
        (let* ((_%tab172527%_ (thread-local-table))
               (_%h172529%_ _%tab172527%_)
               (_%key172532%_ _%key172525%_)
               (_%h172539%_
                (let ((_%$obj172536%_ _%h172529%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172536%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172536%_)))
                           '#t)
                      _%$obj172536%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172536%_)))))
               (_%h172541%_ _%h172539%_))
          (declare (not safe))
          (__hash-remove! _%h172541%_ _%key172532%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172450%_ (current-thread)))
          (if (actor-thread? _%thr172450%_)
              (let ((_%$e172453%_ (actor-thread-locals _%thr172450%_)))
                (if _%$e172453%_
                    _%$e172453%_
                    (let ((_%tab172457%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172450%_ _%tab172457%_)
                      _%tab172457%_)))
              (if (eq? _%thr172450%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172487%_
                           (let* ((_%h172461%_ __thread-locals)
                                  (_%key172464%_ _%thr172450%_)
                                  (_%h172471%_
                                   (let ((_%$obj172468%_ _%h172461%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172468%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172468%_)))
                                              '#t)
                                         _%$obj172468%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172468%_)))))
                                  (_%h172473%_ _%h172471%_))
                             (declare (not safe))
                             (__hash-get _%h172473%_ _%key172464%_))))
                      (if _%$e172487%_
                          ((lambda (_%tab172490%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab172490%_)
                           _%$e172487%_)
                          (let ((_%tab172493%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172495%_ __thread-locals)
                                   (_%key172498%_ _%thr172450%_)
                                   (_%value172501%_ _%tab172493%_)
                                   (_%h172508%_
                                    (let ((_%$obj172505%_ _%h172495%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172505%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172505%_)))
                                               '#t)
                                          _%$obj172505%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172505%_)))))
                                   (_%h172510%_ _%h172508%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172510%_
                               _%key172498%_
                               _%value172501%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172493%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172436%_)
        (let ((_%new-value172439%_ _%new-value172436%_))
          (set! __unhandled-actor-exception-hook _%new-value172439%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value171618%_)
        (if ((lambda (_%$obj171622%_)
               (or (not _%$obj171622%_) (procedure? _%$obj171622%_)))
             _%new-value171618%_)
            (let ((_%new-value171629%_ _%new-value171618%_))
              (__unhandled-actor-exception-hook-set! _%new-value171629%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value171618%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172343%_ _%proc172344%_)
        (let* ((_%mx172347%_ _%mx172343%_)
               (_%proc172355%_ _%proc172344%_)
               (_%handler172364%_ (current-exception-handler))
               (_%handler172403%_
                (lambda (_%e172366%_)
                  (let* ((_%handler172368%_ void)
                         (_%thunk172372%_
                          (lambda ()
                            (mutex-unlock! _%mx172347%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172364%_ _%e172366%_))))
                         (_%handler172377%_ _%handler172368%_)
                         (_%thunk172393%_ _%thunk172372%_))
                    (declare (not safe))
                    (__with-catch _%handler172377%_ _%thunk172393%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172366%_))))
               (_%thunk172409%_
                (lambda ()
                  (mutex-lock! _%mx172347%_)
                  (let ((_%result172407%_
                         (let () (declare (not safe)) (_%proc172355%_))))
                    (mutex-unlock! _%mx172347%_)
                    _%result172407%_)))
               (_%handler172414%_ _%handler172403%_)
               (_%thunk172425%_ _%thunk172409%_))
          (declare (not safe))
          (__with-exception-handler _%handler172414%_ _%thunk172425%_))))
    (define with-lock
      (lambda (_%mx171759%_ _%proc171760%_)
        (if (mutex? _%mx171759%_)
            (let ((_%mx171764%_ _%mx171759%_))
              (if (procedure? _%proc171760%_)
                  (let ((_%proc171774%_ _%proc171760%_))
                    (__with-lock _%mx171764%_ _%proc171774%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc171760%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx171759%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172320%_ _%proc172321%_)
        (let* ((_%mx172324%_ _%mx172320%_) (_%proc172332%_ _%proc172321%_))
          (let ((__tmp173212 (lambda () (mutex-lock! _%mx172324%_)))
                (__tmp173211 (lambda () (mutex-unlock! _%mx172324%_))))
            (declare (not safe))
            (##dynamic-wind __tmp173212 _%proc172332%_ __tmp173211)))))
    (define with-dynamic-lock
      (lambda (_%mx171904%_ _%proc171905%_)
        (if (mutex? _%mx171904%_)
            (let ((_%mx171909%_ _%mx171904%_))
              (if (procedure? _%proc171905%_)
                  (let ((_%proc171919%_ _%proc171905%_))
                    (__with-dynamic-lock _%mx171909%_ _%proc171919%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc171905%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx171904%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172251%_ _%error-port172252%_)
        (let* ((_%thunk172255%_ _%thunk172251%_)
               (_%error-port172263%_ _%error-port172252%_)
               (_%handler172278%_
                (let ((_%E172272%_ (current-exception-handler)))
                  (lambda (_%exn172274%_)
                    (let ((__tmp173213
                           (lambda (_%cont172276%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172276%_
                                  _%exn172274%_
                                  _%error-port172263%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172272%_ _%exn172274%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp173213)))))
               (_%thunk172281%_ _%thunk172255%_)
               (_%handler172286%_ _%handler172278%_)
               (_%thunk172300%_ _%thunk172281%_))
          (declare (not safe))
          (__with-exception-handler _%handler172286%_ _%thunk172300%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172313%_)
        (let ((_%error-port172315%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172313%_
           _%error-port172315%_))))
    (define __with-exception-stack-trace
      (lambda _g173214_
        (let ((_g173215_ (let () (declare (not safe)) (##length _g173214_))))
          (cond ((let () (declare (not safe)) (##fx= _g173215_ 1))
                 (apply __with-exception-stack-trace__0 _g173214_))
                ((let () (declare (not safe)) (##fx= _g173215_ 2))
                 (apply __with-exception-stack-trace__% _g173214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g173214_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk172050%_ _%error-port172051%_)
        (if (procedure? _%thunk172050%_)
            (let ((_%thunk172055%_ _%thunk172050%_))
              (if (port? _%error-port172051%_)
                  (let ((_%error-port172065%_ _%error-port172051%_))
                    (__with-exception-stack-trace__%
                     _%thunk172055%_
                     _%error-port172065%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port172051%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk172050%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172078%_)
        (let ((_%error-port172080%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172078%_
           _%error-port172080%_))))
    (define with-exception-stack-trace
      (lambda _g173216_
        (let ((_g173217_ (let () (declare (not safe)) (##length _g173216_))))
          (cond ((let () (declare (not safe)) (##fx= _g173217_ 1))
                 (apply with-exception-stack-trace__0 _g173216_))
                ((let () (declare (not safe)) (##fx= _g173217_ 2))
                 (apply with-exception-stack-trace__% _g173216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g173216_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont172232%_ _%exn172233%_ _%error-port172234%_)
        (let ((_%out172236%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out172236%_))
          (display '"*** Unhandled exception in " _%out172236%_)
          (display (current-thread) _%out172236%_)
          (newline _%out172236%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn172233%_ _%out172236%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn172233%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out172236%_)
                (newline _%out172236%_)
                (display-continuation-backtrace _%cont172232%_ _%out172236%_)))
          (let ((__tmp173218 (get-output-string _%out172236%_)))
            (declare (not safe))
            (##write-string __tmp173218 _%error-port172234%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont172241%_ _%exn172242%_)
        (let ((_%error-port172244%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont172241%_
           _%exn172242%_
           _%error-port172244%_))))
    (define dump-stack-trace!
      (lambda _g173219_
        (let ((_g173220_ (let () (declare (not safe)) (##length _g173219_))))
          (cond ((let () (declare (not safe)) (##fx= _g173220_ 2))
                 (apply dump-stack-trace!__0 _g173219_))
                ((let () (declare (not safe)) (##fx= _g173220_ 3))
                 (apply dump-stack-trace!__% _g173219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g173219_))))))
    (define __thread-dead?
      (lambda (_%thread172219%_)
        (let ((_%thread172222%_ _%thread172219%_))
          (not (macro-thread-end-condvar _%thread172222%_)))))
    (define thread-dead?
      (lambda (_%thread172205%_)
        (if (thread? _%thread172205%_)
            (let ((_%thread172209%_ _%thread172205%_))
              (__thread-dead? _%thread172209%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread172205%_)
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
