(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1755903075)
  (begin
    (define spawn
      (lambda (_%f115131%_ . _%args115132%_)
        (if (procedure? _%f115131%_)
            (let ((_%f115136%_ _%f115131%_))
              (declare (not safe))
              (##apply __spawn _%f115136%_ _%args115132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f115131%_)
              '#!void))))
    (define __spawn
      (lambda (_%f115118%_ . _%args115119%_)
        (let ((_%f115122%_ _%f115118%_))
          (spawn-actor _%f115122%_ _%args115119%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name115102%_ _%f115103%_ . _%args115104%_)
        (if (procedure? _%f115103%_)
            (let ((_%f115108%_ _%f115103%_))
              (declare (not safe))
              (##apply __spawn/name _%name115102%_ _%f115108%_ _%args115104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f115103%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name115088%_ _%f115089%_ . _%args115090%_)
        (let ((_%f115093%_ _%f115089%_))
          (spawn-actor _%f115093%_ _%args115090%_ _%name115088%_ '#f))))
    (define spawn/group
      (lambda (_%name115072%_ _%f115073%_ . _%args115074%_)
        (if (procedure? _%f115073%_)
            (let ((_%f115078%_ _%f115073%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name115072%_
                       _%f115078%_
                       _%args115074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f115073%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name115056%_ _%f115057%_ . _%args115058%_)
        (let* ((_%f115061%_ _%f115057%_)
               (_%tgroup115070%_ (make-thread-group _%name115056%_)))
          (spawn-actor
           _%f115061%_
           _%args115058%_
           _%name115056%_
           _%tgroup115070%_))))
    (define spawn-actor
      (lambda (_%f115028%_ _%args115029%_ _%name115030%_ _%tgroup115031%_)
        (letrec ((_%thread-main115034%_
                  (lambda (_%thunk115048%_)
                    (lambda ()
                      (let ((__tmp115145
                             (lambda (_%exn115051%_)
                               (let ((__tmp115146
                                      (lambda (_%cont115053%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp115147
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont115053%_
                                                      _%exn115051%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp115147))
                                            '#!void)
                                        (let ((__tmp115148
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont115053%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp115148
                                           ##primordial-exception-handler
                                           _%exn115051%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp115146)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp115145
                         _%thunk115048%_))))))
          (let* ((_%thunk115037%_
                  (if (null? _%args115029%_)
                      _%f115028%_
                      (lambda () (apply _%f115028%_ _%args115029%_))))
                 (_%thunk115040%_
                  (lambda () (with-exception-stack-trace__0 _%thunk115037%_)))
                 (_%tgroup115045%_
                  (let ((_%$e115042%_ _%tgroup115031%_))
                    (if _%$e115042%_ _%$e115042%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main115034%_ _%thunk115040%_)
              _%name115030%_
              _%tgroup115045%_))))))
    (define spawn-thread__%
      (lambda (_%thunk115006%_ _%name115007%_ _%tgroup115008%_)
        (thread-start!
         (make-thread _%thunk115006%_ _%name115007%_ _%tgroup115008%_))))
    (define spawn-thread__0
      (lambda (_%thunk115013%_)
        (let* ((_%name115015%_ absent-obj) (_%tgroup115017%_ absent-obj))
          (spawn-thread__% _%thunk115013%_ _%name115015%_ _%tgroup115017%_))))
    (define spawn-thread__1
      (lambda (_%thunk115019%_ _%name115020%_)
        (let ((_%tgroup115022%_ absent-obj))
          (spawn-thread__% _%thunk115019%_ _%name115020%_ _%tgroup115022%_))))
    (define spawn-thread
      (lambda _g115149_
        (let ((_g115150_ (let () (declare (not safe)) (##length _g115149_))))
          (cond ((let () (declare (not safe)) (##fx= _g115150_ 1))
                 (apply spawn-thread__0 _g115149_))
                ((let () (declare (not safe)) (##fx= _g115150_ 2))
                 (apply spawn-thread__1 _g115149_))
                ((let () (declare (not safe)) (##fx= _g115150_ 3))
                 (apply spawn-thread__% _g115149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g115149_))))))
    (define thread-local-ref__%
      (lambda (_%key114990%_ _%default114991%_)
        (let ((_%tab114993%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab114993%_ _%key114990%_ _%default114991%_))))
    (define thread-local-ref__0
      (lambda (_%key114998%_)
        (let ((_%default115000%_ absent-obj))
          (thread-local-ref__% _%key114998%_ _%default115000%_))))
    (define thread-local-ref
      (lambda _g115151_
        (let ((_g115152_ (let () (declare (not safe)) (##length _g115151_))))
          (cond ((let () (declare (not safe)) (##fx= _g115152_ 1))
                 (apply thread-local-ref__0 _g115151_))
                ((let () (declare (not safe)) (##fx= _g115152_ 2))
                 (apply thread-local-ref__% _g115151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g115151_))))))
    (define thread-local-get
      (lambda (_%key114987%_) (thread-local-ref__% _%key114987%_ '#f)))
    (define thread-local-set!
      (lambda (_%key114982%_ _%value114983%_)
        (let ((_%tab114985%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab114985%_ _%key114982%_ _%value114983%_))))
    (define thread-local-delete!
      (lambda (_%key114978%_)
        (let ((_%tab114980%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab114980%_ _%key114978%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr114959%_ (current-thread)))
          (if (actor-thread? _%thr114959%_)
              (let ((_%$e114962%_ (actor-thread-locals _%thr114959%_)))
                (if _%$e114962%_
                    _%$e114962%_
                    (let ((_%tab114966%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr114959%_ _%tab114966%_)
                      _%tab114966%_)))
              (if (eq? _%thr114959%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e114970%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr114959%_))))
                      (if _%$e114970%_
                          ((lambda (_%tab114973%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab114973%_)
                           _%$e114970%_)
                          (let ((_%tab114976%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr114959%_
                               _%tab114976%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab114976%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value114937%_)
        (if ((lambda (_%$obj114940%_)
               (or (not _%$obj114940%_) (procedure? _%$obj114940%_)))
             _%new-value114937%_)
            (let ((_%new-value114947%_ _%new-value114937%_))
              (__unhandled-actor-exception-hook-set! _%new-value114947%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value114937%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value114924%_)
        (let ((_%new-value114928%_ _%new-value114924%_))
          (set! __unhandled-actor-exception-hook _%new-value114928%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx114898%_ _%proc114899%_)
        (if (mutex? _%mx114898%_)
            (let ((_%mx114903%_ _%mx114898%_))
              (if (procedure? _%proc114899%_)
                  (let ((_%proc114913%_ _%proc114899%_))
                    (__with-lock _%mx114903%_ _%proc114913%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc114899%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx114898%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx114869%_ _%proc114870%_)
        (let* ((_%mx114873%_ _%mx114869%_)
               (_%proc114881%_ _%proc114870%_)
               (_%handler114890%_ (current-exception-handler)))
          (let ((__tmp115154
                 (lambda (_%e114892%_)
                   (let ((__tmp115155
                          (lambda ()
                            (mutex-unlock! _%mx114873%_)
                            (let ()
                              (declare (not safe))
                              (_%handler114890%_ _%e114892%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp115155))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e114892%_))))
                (__tmp115153
                 (lambda ()
                   (mutex-lock! _%mx114873%_)
                   (let ((_%result114896%_
                          (let () (declare (not safe)) (_%proc114881%_))))
                     (mutex-unlock! _%mx114873%_)
                     _%result114896%_))))
            (declare (not safe))
            (__with-exception-handler __tmp115154 __tmp115153)))))
    (define with-dynamic-lock
      (lambda (_%mx114844%_ _%proc114845%_)
        (if (mutex? _%mx114844%_)
            (let ((_%mx114849%_ _%mx114844%_))
              (if (procedure? _%proc114845%_)
                  (let ((_%proc114859%_ _%proc114845%_))
                    (__with-dynamic-lock _%mx114849%_ _%proc114859%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc114845%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx114844%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx114821%_ _%proc114822%_)
        (let* ((_%mx114825%_ _%mx114821%_) (_%proc114833%_ _%proc114822%_))
          (let ((__tmp115157 (lambda () (mutex-lock! _%mx114825%_)))
                (__tmp115156 (lambda () (mutex-unlock! _%mx114825%_))))
            (declare (not safe))
            (##dynamic-wind __tmp115157 _%proc114833%_ __tmp115156)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk114786%_ _%error-port114787%_)
        (if (procedure? _%thunk114786%_)
            (let ((_%thunk114791%_ _%thunk114786%_))
              (if (port? _%error-port114787%_)
                  (let ((_%error-port114801%_ _%error-port114787%_))
                    (__with-exception-stack-trace__%
                     _%thunk114791%_
                     _%error-port114801%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port114787%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk114786%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk114814%_)
        (let ((_%error-port114816%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk114814%_
           _%error-port114816%_))))
    (define with-exception-stack-trace
      (lambda _g115158_
        (let ((_g115159_ (let () (declare (not safe)) (##length _g115158_))))
          (cond ((let () (declare (not safe)) (##fx= _g115159_ 1))
                 (apply with-exception-stack-trace__0 _g115158_))
                ((let () (declare (not safe)) (##fx= _g115159_ 2))
                 (apply with-exception-stack-trace__% _g115158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g115158_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk114747%_ _%error-port114748%_)
        (let* ((_%thunk114751%_ _%thunk114747%_)
               (_%error-port114760%_ _%error-port114748%_)
               (__tmp115160
                (let ((_%E114769%_ (current-exception-handler)))
                  (lambda (_%exn114771%_)
                    (let ((__tmp115161
                           (lambda (_%cont114773%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont114773%_
                                  _%exn114771%_
                                  _%error-port114760%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E114769%_ _%exn114771%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp115161))))))
          (declare (not safe))
          (__with-exception-handler __tmp115160 _%thunk114751%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk114778%_)
        (let ((_%error-port114780%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk114778%_
           _%error-port114780%_))))
    (define __with-exception-stack-trace
      (lambda _g115162_
        (let ((_g115163_ (let () (declare (not safe)) (##length _g115162_))))
          (cond ((let () (declare (not safe)) (##fx= _g115163_ 1))
                 (apply __with-exception-stack-trace__0 _g115162_))
                ((let () (declare (not safe)) (##fx= _g115163_ 2))
                 (apply __with-exception-stack-trace__% _g115162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g115162_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont114728%_ _%exn114729%_ _%error-port114730%_)
        (let ((_%out114732%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out114732%_))
          (display '"*** Unhandled exception in " _%out114732%_)
          (display (current-thread) _%out114732%_)
          (newline _%out114732%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn114729%_ _%out114732%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn114729%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out114732%_)
                (newline _%out114732%_)
                (display-continuation-backtrace _%cont114728%_ _%out114732%_)))
          (let ((__tmp115164 (get-output-string _%out114732%_)))
            (declare (not safe))
            (##write-string __tmp115164 _%error-port114730%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont114737%_ _%exn114738%_)
        (let ((_%error-port114740%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont114737%_
           _%exn114738%_
           _%error-port114740%_))))
    (define dump-stack-trace!
      (lambda _g115165_
        (let ((_g115166_ (let () (declare (not safe)) (##length _g115165_))))
          (cond ((let () (declare (not safe)) (##fx= _g115166_ 2))
                 (apply dump-stack-trace!__0 _g115165_))
                ((let () (declare (not safe)) (##fx= _g115166_ 3))
                 (apply dump-stack-trace!__% _g115165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g115165_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
