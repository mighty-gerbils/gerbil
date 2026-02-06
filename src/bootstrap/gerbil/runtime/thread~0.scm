(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770405372)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk160864%_ _%name160865%_)
        (let* ((_%thunk160868%_ _%thunk160864%_)
               (_%name160876%_ _%name160865%_))
          (make-thread
           (lambda () (thread-main _%thunk160868%_))
           _%name160876%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk158890%_ _%name158891%_)
        (if (procedure? _%thunk158890%_)
            (let ((_%thunk158895%_ _%thunk158890%_))
              (if (symbol? _%name158891%_)
                  (let ((_%name158905%_ _%name158891%_))
                    (__make-system-thread _%thunk158895%_ _%name158905%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name158891%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk158890%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk160811%_ _%name160812%_)
        (let* ((_%thunk160815%_ _%thunk160811%_)
               (_%name160823%_ _%name160812%_))
          (thread-start!
           (let* ((_%thunk160832%_ _%thunk160815%_)
                  (_%name160835%_ _%name160823%_)
                  (_%thunk160840%_ _%thunk160832%_)
                  (_%name160854%_ _%name160835%_))
             (__make-system-thread _%thunk160840%_ _%name160854%_))))))
    (define system-thread!
      (lambda (_%thunk159035%_ _%name159036%_)
        (if (procedure? _%thunk159035%_)
            (let ((_%thunk159040%_ _%thunk159035%_))
              (if (symbol? _%name159036%_)
                  (let ((_%name159050%_ _%name159036%_))
                    (__system-thread! _%thunk159040%_ _%name159050%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name159036%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk159035%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk160790%_ _%name160791%_)
        (let* ((_%thunk160794%_ _%thunk160790%_)
               (_%name160802%_ _%name160791%_))
          (spawn-actor
           _%thunk160794%_
           '()
           _%name160802%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk159180%_ _%name159181%_)
        (if (procedure? _%thunk159180%_)
            (let ((_%thunk159185%_ _%thunk159180%_))
              (if (symbol? _%name159181%_)
                  (let ((_%name159195%_ _%name159181%_))
                    (__system-actor! _%thunk159185%_ _%name159195%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name159181%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk159180%_)
              '#!void))))
    (define __spawn
      (lambda (_%f160777%_ . _%args160778%_)
        (let ((_%f160781%_ _%f160777%_))
          (spawn-actor _%f160781%_ _%args160778%_ '#!void '#f))))
    (define spawn
      (lambda (_%f159325%_ . _%args159326%_)
        (if (procedure? _%f159325%_)
            (let ((_%f159330%_ _%f159325%_))
              (declare (not safe))
              (##apply __spawn _%f159330%_ _%args159326%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f159325%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name160763%_ _%f160764%_ . _%args160765%_)
        (let ((_%f160768%_ _%f160764%_))
          (spawn-actor _%f160768%_ _%args160765%_ _%name160763%_ '#f))))
    (define spawn/name
      (lambda (_%name159460%_ _%f159461%_ . _%args159462%_)
        (if (procedure? _%f159461%_)
            (let ((_%f159466%_ _%f159461%_))
              (declare (not safe))
              (##apply __spawn/name _%name159460%_ _%f159466%_ _%args159462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f159461%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name160747%_ _%f160748%_ . _%args160749%_)
        (let* ((_%f160752%_ _%f160748%_)
               (_%tgroup160761%_ (make-thread-group _%name160747%_)))
          (spawn-actor
           _%f160752%_
           _%args160749%_
           _%name160747%_
           _%tgroup160761%_))))
    (define spawn/group
      (lambda (_%name159596%_ _%f159597%_ . _%args159598%_)
        (if (procedure? _%f159597%_)
            (let ((_%f159602%_ _%f159597%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name159596%_
                       _%f159602%_
                       _%args159598%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f159597%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f160695%_ _%args160696%_ _%name160697%_ _%tgroup160698%_)
        (let* ((_%thunk160702%_
                (if (null? _%args160696%_)
                    _%f160695%_
                    (lambda () (apply _%f160695%_ _%args160696%_))))
               (_%thunk160738%_
                (lambda ()
                  (let* ((_%thunk160705%_ _%thunk160702%_)
                         (_%error-port160708%_ (current-error-port)))
                    (if (procedure? _%thunk160705%_)
                        (let* ((_%thunk160713%_ _%thunk160705%_)
                               (_%error-port160728%_ _%error-port160708%_))
                          (__with-exception-stack-trace__%
                           _%thunk160713%_
                           _%error-port160728%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk160705%_)
                          '#!void)))))
               (_%tgroup160743%_
                (let ((_%$e160740%_ _%tgroup160698%_))
                  (if _%$e160740%_ _%$e160740%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk160738%_))
            _%name160697%_
            _%tgroup160743%_)))))
    (define spawn-thread__%
      (lambda (_%thunk160672%_ _%name160673%_ _%tgroup160674%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk160672%_))
          _%name160673%_
          _%tgroup160674%_))))
    (define spawn-thread__0
      (lambda (_%thunk160680%_)
        (let* ((_%name160682%_ absent-obj) (_%tgroup160684%_ absent-obj))
          (spawn-thread__% _%thunk160680%_ _%name160682%_ _%tgroup160684%_))))
    (define spawn-thread__1
      (lambda (_%thunk160686%_ _%name160687%_)
        (let ((_%tgroup160689%_ absent-obj))
          (spawn-thread__% _%thunk160686%_ _%name160687%_ _%tgroup160689%_))))
    (define spawn-thread
      (lambda _g161147_
        (let ((_g161148_ (let () (declare (not safe)) (##length _g161147_))))
          (cond ((let () (declare (not safe)) (##fx= _g161148_ 1))
                 (apply spawn-thread__0 _g161147_))
                ((let () (declare (not safe)) (##fx= _g161148_ 2))
                 (apply spawn-thread__1 _g161147_))
                ((let () (declare (not safe)) (##fx= _g161148_ 3))
                 (apply spawn-thread__% _g161147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g161147_))))))
    (define thread-main
      (lambda (_%thunk160603%_)
        (let* ((_%handler160642%_
                (lambda (_%exn160605%_)
                  (let ((__tmp161149
                         (lambda (_%cont160607%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler160609%_ void)
                                      (_%thunk160613%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont160607%_
                                            _%exn160605%_))))
                                      (_%handler160618%_ _%handler160609%_)
                                      (_%thunk160632%_ _%thunk160613%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler160618%_
                                  _%thunk160632%_))
                               '#!void)
                           (let ((__tmp161150
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont160607%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp161150
                              ##primordial-exception-handler
                              _%exn160605%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp161149))))
               (_%thunk160645%_ _%thunk160603%_)
               (_%handler160650%_ _%handler160642%_))
          (if (procedure? _%thunk160645%_)
              (let ((_%thunk160661%_ _%thunk160645%_))
                (declare (not safe))
                (__with-exception-handler _%handler160650%_ _%thunk160661%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk160645%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key160559%_ _%default160560%_)
        (let* ((_%tab160562%_ (thread-local-table))
               (_%h160564%_ _%tab160562%_)
               (_%key160567%_ _%key160559%_)
               (_%default160570%_ _%default160560%_)
               (_%h160577%_
                (let ((_%$obj160574%_ _%h160564%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160574%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160574%_)))
                           '#t)
                      _%$obj160574%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160574%_)))))
               (_%h160579%_ _%h160577%_))
          (declare (not safe))
          (__hash-ref__% _%h160579%_ _%key160567%_ _%default160570%_))))
    (define thread-local-ref__0
      (lambda (_%key160596%_)
        (let ((_%default160598%_ absent-obj))
          (thread-local-ref__% _%key160596%_ _%default160598%_))))
    (define thread-local-ref
      (lambda _g161151_
        (let ((_g161152_ (let () (declare (not safe)) (##length _g161151_))))
          (cond ((let () (declare (not safe)) (##fx= _g161152_ 1))
                 (apply thread-local-ref__0 _g161151_))
                ((let () (declare (not safe)) (##fx= _g161152_ 2))
                 (apply thread-local-ref__% _g161151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g161151_))))))
    (define thread-local-get
      (lambda (_%key160556%_) (thread-local-ref__% _%key160556%_ '#f)))
    (define thread-local-set!
      (lambda (_%key160522%_ _%value160523%_)
        (let* ((_%tab160525%_ (thread-local-table))
               (_%h160527%_ _%tab160525%_)
               (_%key160530%_ _%key160522%_)
               (_%value160533%_ _%value160523%_)
               (_%h160540%_
                (let ((_%$obj160537%_ _%h160527%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160537%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160537%_)))
                           '#t)
                      _%$obj160537%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160537%_)))))
               (_%h160542%_ _%h160540%_))
          (declare (not safe))
          (__hash-put! _%h160542%_ _%key160530%_ _%value160533%_))))
    (define thread-local-delete!
      (lambda (_%key160493%_)
        (let* ((_%tab160495%_ (thread-local-table))
               (_%h160497%_ _%tab160495%_)
               (_%key160500%_ _%key160493%_)
               (_%h160507%_
                (let ((_%$obj160504%_ _%h160497%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj160504%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj160504%_)))
                           '#t)
                      _%$obj160504%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj160504%_)))))
               (_%h160509%_ _%h160507%_))
          (declare (not safe))
          (__hash-remove! _%h160509%_ _%key160500%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr160418%_ (current-thread)))
          (if (actor-thread? _%thr160418%_)
              (let ((_%$e160421%_ (actor-thread-locals _%thr160418%_)))
                (if _%$e160421%_
                    _%$e160421%_
                    (let ((_%tab160425%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr160418%_ _%tab160425%_)
                      _%tab160425%_)))
              (if (eq? _%thr160418%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e160455%_
                           (let* ((_%h160429%_ __thread-locals)
                                  (_%key160432%_ _%thr160418%_)
                                  (_%h160439%_
                                   (let ((_%$obj160436%_ _%h160429%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj160436%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj160436%_)))
                                              '#t)
                                         _%$obj160436%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj160436%_)))))
                                  (_%h160441%_ _%h160439%_))
                             (declare (not safe))
                             (__hash-get _%h160441%_ _%key160432%_))))
                      (if _%$e160455%_
                          ((lambda (_%tab160458%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab160458%_)
                           _%$e160455%_)
                          (let ((_%tab160461%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h160463%_ __thread-locals)
                                   (_%key160466%_ _%thr160418%_)
                                   (_%value160469%_ _%tab160461%_)
                                   (_%h160476%_
                                    (let ((_%$obj160473%_ _%h160463%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj160473%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj160473%_)))
                                               '#t)
                                          _%$obj160473%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj160473%_)))))
                                   (_%h160478%_ _%h160476%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h160478%_
                               _%key160466%_
                               _%value160469%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab160461%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value160404%_)
        (let ((_%new-value160407%_ _%new-value160404%_))
          (set! __unhandled-actor-exception-hook _%new-value160407%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value159732%_)
        (if ((lambda (_%$obj159736%_)
               (or (not _%$obj159736%_) (procedure? _%$obj159736%_)))
             _%new-value159732%_)
            (let ((_%new-value159743%_ _%new-value159732%_))
              (__unhandled-actor-exception-hook-set! _%new-value159743%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value159732%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx160311%_ _%proc160312%_)
        (let* ((_%mx160315%_ _%mx160311%_)
               (_%proc160323%_ _%proc160312%_)
               (_%handler160332%_ (current-exception-handler))
               (_%handler160371%_
                (lambda (_%e160334%_)
                  (let* ((_%handler160336%_ void)
                         (_%thunk160340%_
                          (lambda ()
                            (mutex-unlock! _%mx160315%_)
                            (let ()
                              (declare (not safe))
                              (_%handler160332%_ _%e160334%_))))
                         (_%handler160345%_ _%handler160336%_)
                         (_%thunk160361%_ _%thunk160340%_))
                    (declare (not safe))
                    (__with-catch _%handler160345%_ _%thunk160361%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e160334%_))))
               (_%thunk160377%_
                (lambda ()
                  (mutex-lock! _%mx160315%_)
                  (let ((_%result160375%_
                         (let () (declare (not safe)) (_%proc160323%_))))
                    (mutex-unlock! _%mx160315%_)
                    _%result160375%_)))
               (_%handler160382%_ _%handler160371%_)
               (_%thunk160393%_ _%thunk160377%_))
          (declare (not safe))
          (__with-exception-handler _%handler160382%_ _%thunk160393%_))))
    (define with-lock
      (lambda (_%mx159873%_ _%proc159874%_)
        (if (mutex? _%mx159873%_)
            (let ((_%mx159878%_ _%mx159873%_))
              (if (procedure? _%proc159874%_)
                  (let ((_%proc159888%_ _%proc159874%_))
                    (__with-lock _%mx159878%_ _%proc159888%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc159874%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx159873%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx160288%_ _%proc160289%_)
        (let* ((_%mx160292%_ _%mx160288%_) (_%proc160300%_ _%proc160289%_))
          (let ((__tmp161154 (lambda () (mutex-lock! _%mx160292%_)))
                (__tmp161153 (lambda () (mutex-unlock! _%mx160292%_))))
            (declare (not safe))
            (##dynamic-wind __tmp161154 _%proc160300%_ __tmp161153)))))
    (define with-dynamic-lock
      (lambda (_%mx160018%_ _%proc160019%_)
        (if (mutex? _%mx160018%_)
            (let ((_%mx160023%_ _%mx160018%_))
              (if (procedure? _%proc160019%_)
                  (let ((_%proc160033%_ _%proc160019%_))
                    (__with-dynamic-lock _%mx160023%_ _%proc160033%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc160019%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx160018%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk160219%_ _%error-port160220%_)
        (let* ((_%thunk160223%_ _%thunk160219%_)
               (_%error-port160231%_ _%error-port160220%_)
               (_%handler160246%_
                (let ((_%E160240%_ (current-exception-handler)))
                  (lambda (_%exn160242%_)
                    (let ((__tmp161155
                           (lambda (_%cont160244%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont160244%_
                                  _%exn160242%_
                                  _%error-port160231%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E160240%_ _%exn160242%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp161155)))))
               (_%thunk160249%_ _%thunk160223%_)
               (_%handler160254%_ _%handler160246%_)
               (_%thunk160268%_ _%thunk160249%_))
          (declare (not safe))
          (__with-exception-handler _%handler160254%_ _%thunk160268%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk160281%_)
        (let ((_%error-port160283%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk160281%_
           _%error-port160283%_))))
    (define __with-exception-stack-trace
      (lambda _g161156_
        (let ((_g161157_ (let () (declare (not safe)) (##length _g161156_))))
          (cond ((let () (declare (not safe)) (##fx= _g161157_ 1))
                 (apply __with-exception-stack-trace__0 _g161156_))
                ((let () (declare (not safe)) (##fx= _g161157_ 2))
                 (apply __with-exception-stack-trace__% _g161156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g161156_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk160164%_ _%error-port160165%_)
        (if (procedure? _%thunk160164%_)
            (let ((_%thunk160169%_ _%thunk160164%_))
              (if (port? _%error-port160165%_)
                  (let ((_%error-port160179%_ _%error-port160165%_))
                    (__with-exception-stack-trace__%
                     _%thunk160169%_
                     _%error-port160179%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port160165%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk160164%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk160192%_)
        (let ((_%error-port160194%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk160192%_
           _%error-port160194%_))))
    (define with-exception-stack-trace
      (lambda _g161158_
        (let ((_g161159_ (let () (declare (not safe)) (##length _g161158_))))
          (cond ((let () (declare (not safe)) (##fx= _g161159_ 1))
                 (apply with-exception-stack-trace__0 _g161158_))
                ((let () (declare (not safe)) (##fx= _g161159_ 2))
                 (apply with-exception-stack-trace__% _g161158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g161158_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont160200%_ _%exn160201%_ _%error-port160202%_)
        (let ((_%out160204%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out160204%_))
          (display '"*** Unhandled exception in " _%out160204%_)
          (display (current-thread) _%out160204%_)
          (newline _%out160204%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn160201%_ _%out160204%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn160201%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out160204%_)
                (newline _%out160204%_)
                (display-continuation-backtrace _%cont160200%_ _%out160204%_)))
          (let ((__tmp161160 (get-output-string _%out160204%_)))
            (declare (not safe))
            (##write-string __tmp161160 _%error-port160202%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont160209%_ _%exn160210%_)
        (let ((_%error-port160212%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont160209%_
           _%exn160210%_
           _%error-port160212%_))))
    (define dump-stack-trace!
      (lambda _g161161_
        (let ((_g161162_ (let () (declare (not safe)) (##length _g161161_))))
          (cond ((let () (declare (not safe)) (##fx= _g161162_ 2))
                 (apply dump-stack-trace!__0 _g161161_))
                ((let () (declare (not safe)) (##fx= _g161162_ 3))
                 (apply dump-stack-trace!__% _g161161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g161161_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
