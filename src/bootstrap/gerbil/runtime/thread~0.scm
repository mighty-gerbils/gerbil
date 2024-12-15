(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734280445)
  (begin
    (define spawn
      (lambda (_%f111704%_ . _%args111705%_)
        (if (procedure? _%f111704%_)
            (let ((_%f111709%_ _%f111704%_))
              (declare (not safe))
              (##apply __spawn _%f111709%_ _%args111705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111704%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111691%_ . _%args111692%_)
        (let ((_%f111695%_ _%f111691%_))
          (spawn-actor _%f111695%_ _%args111692%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111675%_ _%f111676%_ . _%args111677%_)
        (if (procedure? _%f111676%_)
            (let ((_%f111681%_ _%f111676%_))
              (declare (not safe))
              (##apply __spawn/name _%name111675%_ _%f111681%_ _%args111677%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111676%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111661%_ _%f111662%_ . _%args111663%_)
        (let ((_%f111666%_ _%f111662%_))
          (spawn-actor _%f111666%_ _%args111663%_ _%name111661%_ '#f))))
    (define spawn/group
      (lambda (_%name111645%_ _%f111646%_ . _%args111647%_)
        (if (procedure? _%f111646%_)
            (let ((_%f111651%_ _%f111646%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111645%_
                       _%f111651%_
                       _%args111647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111646%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111629%_ _%f111630%_ . _%args111631%_)
        (let* ((_%f111634%_ _%f111630%_)
               (_%tgroup111643%_ (make-thread-group _%name111629%_)))
          (spawn-actor
           _%f111634%_
           _%args111631%_
           _%name111629%_
           _%tgroup111643%_))))
    (define spawn-actor
      (lambda (_%f111601%_ _%args111602%_ _%name111603%_ _%tgroup111604%_)
        (letrec ((_%thread-main111607%_
                  (lambda (_%thunk111621%_)
                    (lambda ()
                      (let ((__tmp111718
                             (lambda (_%exn111624%_)
                               (let ((__tmp111719
                                      (lambda (_%cont111626%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111720
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111626%_
                                                      _%exn111624%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111720))
                                            '#!void)
                                        (let ((__tmp111721
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111626%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111721
                                           ##primordial-exception-handler
                                           _%exn111624%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111719)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111718
                         _%thunk111621%_))))))
          (let* ((_%thunk111610%_
                  (if (null? _%args111602%_)
                      _%f111601%_
                      (lambda () (apply _%f111601%_ _%args111602%_))))
                 (_%thunk111613%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111610%_)))
                 (_%tgroup111618%_
                  (let ((_%$e111615%_ _%tgroup111604%_))
                    (if _%$e111615%_ _%$e111615%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111607%_ _%thunk111613%_)
              _%name111603%_
              _%tgroup111618%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111579%_ _%name111580%_ _%tgroup111581%_)
        (thread-start!
         (make-thread _%thunk111579%_ _%name111580%_ _%tgroup111581%_))))
    (define spawn-thread__0
      (lambda (_%thunk111586%_)
        (let* ((_%name111588%_ absent-obj) (_%tgroup111590%_ absent-obj))
          (spawn-thread__% _%thunk111586%_ _%name111588%_ _%tgroup111590%_))))
    (define spawn-thread__1
      (lambda (_%thunk111592%_ _%name111593%_)
        (let ((_%tgroup111595%_ absent-obj))
          (spawn-thread__% _%thunk111592%_ _%name111593%_ _%tgroup111595%_))))
    (define spawn-thread
      (lambda _g111723_
        (let ((_g111722_ (let () (declare (not safe)) (##length _g111723_))))
          (cond ((let () (declare (not safe)) (##fx= _g111722_ 1))
                 (apply spawn-thread__0 _g111723_))
                ((let () (declare (not safe)) (##fx= _g111722_ 2))
                 (apply spawn-thread__1 _g111723_))
                ((let () (declare (not safe)) (##fx= _g111722_ 3))
                 (apply spawn-thread__% _g111723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111723_))))))
    (define thread-local-ref__%
      (lambda (_%key111563%_ _%default111564%_)
        (let ((_%tab111566%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111566%_ _%key111563%_ _%default111564%_))))
    (define thread-local-ref__0
      (lambda (_%key111571%_)
        (let ((_%default111573%_ absent-obj))
          (thread-local-ref__% _%key111571%_ _%default111573%_))))
    (define thread-local-ref
      (lambda _g111725_
        (let ((_g111724_ (let () (declare (not safe)) (##length _g111725_))))
          (cond ((let () (declare (not safe)) (##fx= _g111724_ 1))
                 (apply thread-local-ref__0 _g111725_))
                ((let () (declare (not safe)) (##fx= _g111724_ 2))
                 (apply thread-local-ref__% _g111725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111725_))))))
    (define thread-local-get
      (lambda (_%key111560%_) (thread-local-ref__% _%key111560%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111555%_ _%value111556%_)
        (let ((_%tab111558%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111558%_ _%key111555%_ _%value111556%_))))
    (define thread-local-delete!
      (lambda (_%key111551%_)
        (let ((_%tab111553%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111553%_ _%key111551%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111532%_ (current-thread)))
          (if (actor-thread? _%thr111532%_)
              (let ((_%$e111535%_ (actor-thread-locals _%thr111532%_)))
                (if _%$e111535%_
                    _%$e111535%_
                    (let ((_%tab111539%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111532%_ _%tab111539%_)
                      _%tab111539%_)))
              (if (eq? _%thr111532%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111543%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111532%_))))
                      (if _%$e111543%_
                          ((lambda (_%tab111546%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111546%_)
                           _%$e111543%_)
                          (let ((_%tab111549%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111532%_
                               _%tab111549%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111549%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111510%_)
        (if ((lambda (_%$obj111513%_)
               (or (not _%$obj111513%_) (procedure? _%$obj111513%_)))
             _%new-value111510%_)
            (let ((_%new-value111520%_ _%new-value111510%_))
              (__unhandled-actor-exception-hook-set! _%new-value111520%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111510%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111497%_)
        (let ((_%new-value111501%_ _%new-value111497%_))
          (set! __unhandled-actor-exception-hook _%new-value111501%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111471%_ _%proc111472%_)
        (if (mutex? _%mx111471%_)
            (let ((_%mx111476%_ _%mx111471%_))
              (if (procedure? _%proc111472%_)
                  (let ((_%proc111486%_ _%proc111472%_))
                    (__with-lock _%mx111476%_ _%proc111486%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111472%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111471%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111442%_ _%proc111443%_)
        (let* ((_%mx111446%_ _%mx111442%_)
               (_%proc111454%_ _%proc111443%_)
               (_%handler111463%_ (current-exception-handler)))
          (let ((__tmp111727
                 (lambda (_%e111465%_)
                   (let ((__tmp111728
                          (lambda ()
                            (mutex-unlock! _%mx111446%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111463%_ _%e111465%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111728))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111465%_))))
                (__tmp111726
                 (lambda ()
                   (mutex-lock! _%mx111446%_)
                   (let ((_%result111469%_
                          (let () (declare (not safe)) (_%proc111454%_))))
                     (mutex-unlock! _%mx111446%_)
                     _%result111469%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111727 __tmp111726)))))
    (define with-dynamic-lock
      (lambda (_%mx111417%_ _%proc111418%_)
        (if (mutex? _%mx111417%_)
            (let ((_%mx111422%_ _%mx111417%_))
              (if (procedure? _%proc111418%_)
                  (let ((_%proc111432%_ _%proc111418%_))
                    (__with-dynamic-lock _%mx111422%_ _%proc111432%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111418%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111417%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111394%_ _%proc111395%_)
        (let* ((_%mx111398%_ _%mx111394%_) (_%proc111406%_ _%proc111395%_))
          (let ((__tmp111730 (lambda () (mutex-lock! _%mx111398%_)))
                (__tmp111729 (lambda () (mutex-unlock! _%mx111398%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111730 _%proc111406%_ __tmp111729)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111359%_ _%error-port111360%_)
        (if (procedure? _%thunk111359%_)
            (let ((_%thunk111364%_ _%thunk111359%_))
              (if (port? _%error-port111360%_)
                  (let ((_%error-port111374%_ _%error-port111360%_))
                    (__with-exception-stack-trace__%
                     _%thunk111364%_
                     _%error-port111374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111360%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111359%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111387%_)
        (let ((_%error-port111389%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111387%_
           _%error-port111389%_))))
    (define with-exception-stack-trace
      (lambda _g111732_
        (let ((_g111731_ (let () (declare (not safe)) (##length _g111732_))))
          (cond ((let () (declare (not safe)) (##fx= _g111731_ 1))
                 (apply with-exception-stack-trace__0 _g111732_))
                ((let () (declare (not safe)) (##fx= _g111731_ 2))
                 (apply with-exception-stack-trace__% _g111732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111732_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111320%_ _%error-port111321%_)
        (let* ((_%thunk111324%_ _%thunk111320%_)
               (_%error-port111333%_ _%error-port111321%_)
               (__tmp111733
                (let ((_%E111342%_ (current-exception-handler)))
                  (lambda (_%exn111344%_)
                    (let ((__tmp111734
                           (lambda (_%cont111346%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111346%_
                                  _%exn111344%_
                                  _%error-port111333%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111342%_ _%exn111344%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111734))))))
          (declare (not safe))
          (__with-exception-handler __tmp111733 _%thunk111324%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111351%_)
        (let ((_%error-port111353%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111351%_
           _%error-port111353%_))))
    (define __with-exception-stack-trace
      (lambda _g111736_
        (let ((_g111735_ (let () (declare (not safe)) (##length _g111736_))))
          (cond ((let () (declare (not safe)) (##fx= _g111735_ 1))
                 (apply __with-exception-stack-trace__0 _g111736_))
                ((let () (declare (not safe)) (##fx= _g111735_ 2))
                 (apply __with-exception-stack-trace__% _g111736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111736_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111301%_ _%exn111302%_ _%error-port111303%_)
        (let ((_%out111305%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111305%_))
          (display '"*** Unhandled exception in " _%out111305%_)
          (display (current-thread) _%out111305%_)
          (newline _%out111305%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111302%_ _%out111305%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111302%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111305%_)
                (newline _%out111305%_)
                (display-continuation-backtrace _%cont111301%_ _%out111305%_)))
          (let ((__tmp111737 (get-output-string _%out111305%_)))
            (declare (not safe))
            (##write-string __tmp111737 _%error-port111303%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111310%_ _%exn111311%_)
        (let ((_%error-port111313%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111310%_
           _%exn111311%_
           _%error-port111313%_))))
    (define dump-stack-trace!
      (lambda _g111739_
        (let ((_g111738_ (let () (declare (not safe)) (##length _g111739_))))
          (cond ((let () (declare (not safe)) (##fx= _g111738_ 2))
                 (apply dump-stack-trace!__0 _g111739_))
                ((let () (declare (not safe)) (##fx= _g111738_ 3))
                 (apply dump-stack-trace!__% _g111739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111739_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
