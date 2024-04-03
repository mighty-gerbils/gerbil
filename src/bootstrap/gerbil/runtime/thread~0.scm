(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712155161)
  (begin
    (define spawn
      (lambda (_%f106921%_ . _%args106922%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106921%_))
              (let ((_%f106926%_ _%f106921%_))
                (declare (not safe))
                (##apply __spawn _%f106926%_ _%args106922%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
                 'contract:
                 'procedure?
                 'value:
                 _%f106921%_)
                '#!void)))))
    (define __spawn
      (lambda (_%f106908%_ . _%args106909%_)
        (let ((_%f106912%_ _%f106908%_))
          (declare (not safe))
          (spawn-actor _%f106912%_ _%args106909%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name106892%_ _%f106893%_ . _%args106894%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106893%_))
              (let ((_%f106898%_ _%f106893%_))
                (declare (not safe))
                (##apply __spawn/name
                         _%name106892%_
                         _%f106898%_
                         _%args106894%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
                 'contract:
                 'procedure?
                 'value:
                 _%f106893%_)
                '#!void)))))
    (define __spawn/name
      (lambda (_%name106878%_ _%f106879%_ . _%args106880%_)
        (let ((_%f106883%_ _%f106879%_))
          (declare (not safe))
          (spawn-actor _%f106883%_ _%args106880%_ _%name106878%_ '#f))))
    (define spawn/group
      (lambda (_%name106862%_ _%f106863%_ . _%args106864%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106863%_))
              (let ((_%f106868%_ _%f106863%_))
                (declare (not safe))
                (##apply __spawn/group
                         _%name106862%_
                         _%f106868%_
                         _%args106864%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
                 'contract:
                 'procedure?
                 'value:
                 _%f106863%_)
                '#!void)))))
    (define __spawn/group
      (lambda (_%name106846%_ _%f106847%_ . _%args106848%_)
        (let ()
          (let* ((_%f106851%_ _%f106847%_)
                 (_%tgroup106860%_ (make-thread-group _%name106846%_)))
            (declare (not safe))
            (spawn-actor
             _%f106851%_
             _%args106848%_
             _%name106846%_
             _%tgroup106860%_)))))
    (define spawn-actor
      (lambda (_%f106818%_ _%args106819%_ _%name106820%_ _%tgroup106821%_)
        (let ()
          (letrec ((_%thread-main106824%_
                    (lambda (_%thunk106838%_)
                      (lambda ()
                        (let ((__tmp106936
                               (lambda (_%exn106841%_)
                                 (let ((__tmp106937
                                        (lambda (_%cont106843%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp106938
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont106843%_
                                                        _%exn106841%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp106938))
                                              '#!void)
                                          (let ((__tmp106939
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont106843%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp106939
                                             ##primordial-exception-handler
                                             _%exn106841%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp106937)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp106936
                           _%thunk106838%_))))))
            (let* ((_%thunk106827%_
                    (if (let () (declare (not safe)) (null? _%args106819%_))
                        _%f106818%_
                        (lambda () (apply _%f106818%_ _%args106819%_))))
                   (_%thunk106830%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk106827%_))))
                   (_%tgroup106835%_
                    (let ((_%$e106832%_ _%tgroup106821%_))
                      (if _%$e106832%_
                          _%$e106832%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main106824%_ _%thunk106830%_))
                _%name106820%_
                _%tgroup106835%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk106796%_ _%name106797%_ _%tgroup106798%_)
        (thread-start!
         (make-thread _%thunk106796%_ _%name106797%_ _%tgroup106798%_))))
    (define spawn-thread__0
      (lambda (_%thunk106803%_)
        (let* ((_%name106805%_ absent-obj) (_%tgroup106807%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106803%_ _%name106805%_ _%tgroup106807%_))))
    (define spawn-thread__1
      (lambda (_%thunk106809%_ _%name106810%_)
        (let ((_%tgroup106812%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106809%_ _%name106810%_ _%tgroup106812%_))))
    (define spawn-thread
      (lambda _g106941_
        (let ((_g106940_ (let () (declare (not safe)) (##length _g106941_))))
          (cond ((let () (declare (not safe)) (##fx= _g106940_ 1))
                 (apply (lambda (_%thunk106803%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk106803%_)))
                        _g106941_))
                ((let () (declare (not safe)) (##fx= _g106940_ 2))
                 (apply (lambda (_%thunk106809%_ _%name106810%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk106809%_ _%name106810%_)))
                        _g106941_))
                ((let () (declare (not safe)) (##fx= _g106940_ 3))
                 (apply (lambda (_%thunk106814%_
                                 _%name106815%_
                                 _%tgroup106816%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk106814%_
                             _%name106815%_
                             _%tgroup106816%_)))
                        _g106941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g106941_))))))
    (define thread-local-ref__%
      (lambda (_%key106780%_ _%default106781%_)
        (let ((_%tab106783%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab106783%_ _%key106780%_ _%default106781%_))))
    (define thread-local-ref__0
      (lambda (_%key106788%_)
        (let ((_%default106790%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key106788%_ _%default106790%_))))
    (define thread-local-ref
      (lambda _g106943_
        (let ((_g106942_ (let () (declare (not safe)) (##length _g106943_))))
          (cond ((let () (declare (not safe)) (##fx= _g106942_ 1))
                 (apply (lambda (_%key106788%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key106788%_)))
                        _g106943_))
                ((let () (declare (not safe)) (##fx= _g106942_ 2))
                 (apply (lambda (_%key106792%_ _%default106793%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key106792%_
                             _%default106793%_)))
                        _g106943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g106943_))))))
    (define thread-local-get
      (lambda (_%key106777%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key106777%_ '#f))))
    (define thread-local-set!
      (lambda (_%key106772%_ _%value106773%_)
        (let ((_%tab106775%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab106775%_ _%key106772%_ _%value106773%_))))
    (define thread-local-delete!
      (lambda (_%key106768%_)
        (let ((_%tab106770%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab106770%_ _%key106768%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106749%_ (current-thread)))
          (if (actor-thread? _%thr106749%_)
              (let ((_%$e106752%_ (actor-thread-locals _%thr106749%_)))
                (if _%$e106752%_
                    (values _%$e106752%_)
                    (let ((_%tab106756%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr106749%_ _%tab106756%_)
                      _%tab106756%_)))
              (if (eq? _%thr106749%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106760%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106749%_))))
                      (if _%$e106760%_
                          ((lambda (_%tab106763%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106763%_)
                           _%$e106760%_)
                          (let ((_%tab106766%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr106749%_
                               _%tab106766%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab106766%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106746%_)
        (if (let () (declare (not safe)) (procedure? _%proc106746%_))
            '#!void
            (let ((__tmp106944
                   (let ((__obj106935
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj106935
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106746%_ '()))
                     __obj106935)))
              (declare (not safe))
              (raise __tmp106944)))
        (set! __unhandled-actor-exception-hook _%proc106746%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx106720%_ _%proc106721%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106720%_))
              (let ((_%mx106725%_ _%mx106720%_))
                (if (let () (declare (not safe)) (procedure? _%proc106721%_))
                    (let ((_%proc106735%_ _%proc106721%_))
                      (declare (not safe))
                      (__with-lock _%mx106725%_ _%proc106735%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106721%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
                 'contract:
                 'mutex?
                 'value:
                 _%mx106720%_)
                '#!void)))))
    (define __with-lock
      (lambda (_%mx106691%_ _%proc106692%_)
        (let ((_%mx106695%_ _%mx106691%_))
          (let* ((_%proc106703%_ _%proc106692%_)
                 (_%handler106712%_ (current-exception-handler)))
            (let ((__tmp106946
                   (lambda (_%e106714%_)
                     (let ((__tmp106947
                            (lambda ()
                              (mutex-unlock! _%mx106695%_)
                              (let ()
                                (declare (not safe))
                                (_%handler106712%_ _%e106714%_)))))
                       (declare (not safe))
                       (__with-catch void __tmp106947))
                     (let ()
                       (declare (not safe))
                       (##thread-end-with-uncaught-exception! _%e106714%_))))
                  (__tmp106945
                   (lambda ()
                     (mutex-lock! _%mx106695%_)
                     (let ((_%result106718%_
                            (let () (declare (not safe)) (_%proc106703%_))))
                       (mutex-unlock! _%mx106695%_)
                       _%result106718%_))))
              (declare (not safe))
              (__with-exception-handler __tmp106946 __tmp106945))))))
    (define with-dynamic-lock
      (lambda (_%mx106666%_ _%proc106667%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106666%_))
              (let ((_%mx106671%_ _%mx106666%_))
                (if (let () (declare (not safe)) (procedure? _%proc106667%_))
                    (let ((_%proc106681%_ _%proc106667%_))
                      (declare (not safe))
                      (__with-dynamic-lock _%mx106671%_ _%proc106681%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106667%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
                 'contract:
                 'mutex?
                 'value:
                 _%mx106666%_)
                '#!void)))))
    (define __with-dynamic-lock
      (lambda (_%mx106643%_ _%proc106644%_)
        (let ()
          (let* ((_%mx106647%_ _%mx106643%_) (_%proc106655%_ _%proc106644%_))
            (let ((__tmp106949 (lambda () (mutex-lock! _%mx106647%_)))
                  (__tmp106948 (lambda () (mutex-unlock! _%mx106647%_))))
              (declare (not safe))
              (##dynamic-wind __tmp106949 _%proc106655%_ __tmp106948))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106608%_ _%error-port106609%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk106608%_))
              (let ((_%thunk106613%_ _%thunk106608%_))
                (if (let () (declare (not safe)) (port? _%error-port106609%_))
                    (let ((_%error-port106623%_ _%error-port106609%_))
                      (declare (not safe))
                      (__with-exception-stack-trace__%
                       _%thunk106613%_
                       _%error-port106623%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port106609%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk106608%_)
                '#!void)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106636%_)
        (let ((_%error-port106638%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk106636%_
           _%error-port106638%_))))
    (define with-exception-stack-trace
      (lambda _g106951_
        (let ((_g106950_ (let () (declare (not safe)) (##length _g106951_))))
          (cond ((let () (declare (not safe)) (##fx= _g106950_ 1))
                 (apply (lambda (_%thunk106636%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk106636%_)))
                        _g106951_))
                ((let () (declare (not safe)) (##fx= _g106950_ 2))
                 (apply (lambda (_%thunk106640%_ _%error-port106641%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk106640%_
                             _%error-port106641%_)))
                        _g106951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g106951_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106569%_ _%error-port106570%_)
        (let ((_%thunk106573%_ _%thunk106569%_))
          (let* ((_%error-port106582%_ _%error-port106570%_)
                 (__tmp106952
                  (let ((_%E106591%_ (current-exception-handler)))
                    (lambda (_%exn106593%_)
                      (let ((__tmp106953
                             (lambda (_%cont106595%_)
                               (if (let ()
                                     (declare (not safe))
                                     (dump-stack-trace?))
                                   (let ()
                                     (declare (not safe))
                                     (dump-stack-trace!__%
                                      _%cont106595%_
                                      _%exn106593%_
                                      _%error-port106582%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (_%E106591%_ _%exn106593%_)))))
                        (declare (not safe))
                        (##continuation-capture __tmp106953))))))
            (declare (not safe))
            (__with-exception-handler __tmp106952 _%thunk106573%_)))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106600%_)
        (let ((_%error-port106602%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk106600%_
           _%error-port106602%_))))
    (define __with-exception-stack-trace
      (lambda _g106955_
        (let ((_g106954_ (let () (declare (not safe)) (##length _g106955_))))
          (cond ((let () (declare (not safe)) (##fx= _g106954_ 1))
                 (apply (lambda (_%thunk106600%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk106600%_)))
                        _g106955_))
                ((let () (declare (not safe)) (##fx= _g106954_ 2))
                 (apply (lambda (_%thunk106604%_ _%error-port106605%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk106604%_
                             _%error-port106605%_)))
                        _g106955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g106955_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106550%_ _%exn106551%_ _%error-port106552%_)
        (let ((_%out106554%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106554%_))
          (display '"*** Unhandled exception in " _%out106554%_)
          (display (current-thread) _%out106554%_)
          (newline _%out106554%_)
          (display-exception _%exn106551%_ _%out106554%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106551%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106554%_)
                (newline _%out106554%_)
                (display-continuation-backtrace _%cont106550%_ _%out106554%_)))
          (let ((__tmp106956 (get-output-string _%out106554%_)))
            (declare (not safe))
            (##write-string __tmp106956 _%error-port106552%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106559%_ _%exn106560%_)
        (let ((_%error-port106562%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont106559%_
           _%exn106560%_
           _%error-port106562%_))))
    (define dump-stack-trace!
      (lambda _g106958_
        (let ((_g106957_ (let () (declare (not safe)) (##length _g106958_))))
          (cond ((let () (declare (not safe)) (##fx= _g106957_ 2))
                 (apply (lambda (_%cont106559%_ _%exn106560%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont106559%_
                             _%exn106560%_)))
                        _g106958_))
                ((let () (declare (not safe)) (##fx= _g106957_ 3))
                 (apply (lambda (_%cont106564%_
                                 _%exn106565%_
                                 _%error-port106566%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont106564%_
                             _%exn106565%_
                             _%error-port106566%_)))
                        _g106958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g106958_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
