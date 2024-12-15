(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734225193)
  (begin
    (define spawn
      (lambda (_%f111714%_ . _%args111715%_)
        (if (procedure? _%f111714%_)
            (let ((_%f111719%_ _%f111714%_))
              (declare (not safe))
              (##apply __spawn _%f111719%_ _%args111715%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111714%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111701%_ . _%args111702%_)
        (let ((_%f111705%_ _%f111701%_))
          (spawn-actor _%f111705%_ _%args111702%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111685%_ _%f111686%_ . _%args111687%_)
        (if (procedure? _%f111686%_)
            (let ((_%f111691%_ _%f111686%_))
              (declare (not safe))
              (##apply __spawn/name _%name111685%_ _%f111691%_ _%args111687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111686%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111671%_ _%f111672%_ . _%args111673%_)
        (let ((_%f111676%_ _%f111672%_))
          (spawn-actor _%f111676%_ _%args111673%_ _%name111671%_ '#f))))
    (define spawn/group
      (lambda (_%name111655%_ _%f111656%_ . _%args111657%_)
        (if (procedure? _%f111656%_)
            (let ((_%f111661%_ _%f111656%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111655%_
                       _%f111661%_
                       _%args111657%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111656%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111639%_ _%f111640%_ . _%args111641%_)
        (let* ((_%f111644%_ _%f111640%_)
               (_%tgroup111653%_ (make-thread-group _%name111639%_)))
          (spawn-actor
           _%f111644%_
           _%args111641%_
           _%name111639%_
           _%tgroup111653%_))))
    (define spawn-actor
      (lambda (_%f111611%_ _%args111612%_ _%name111613%_ _%tgroup111614%_)
        (letrec ((_%thread-main111617%_
                  (lambda (_%thunk111631%_)
                    (lambda ()
                      (let ((__tmp111728
                             (lambda (_%exn111634%_)
                               (let ((__tmp111729
                                      (lambda (_%cont111636%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111730
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111636%_
                                                      _%exn111634%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111730))
                                            '#!void)
                                        (let ((__tmp111731
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111636%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111731
                                           ##primordial-exception-handler
                                           _%exn111634%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111729)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111728
                         _%thunk111631%_))))))
          (let* ((_%thunk111620%_
                  (if (null? _%args111612%_)
                      _%f111611%_
                      (lambda () (apply _%f111611%_ _%args111612%_))))
                 (_%thunk111623%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111620%_)))
                 (_%tgroup111628%_
                  (let ((_%$e111625%_ _%tgroup111614%_))
                    (if _%$e111625%_ _%$e111625%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111617%_ _%thunk111623%_)
              _%name111613%_
              _%tgroup111628%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111589%_ _%name111590%_ _%tgroup111591%_)
        (thread-start!
         (make-thread _%thunk111589%_ _%name111590%_ _%tgroup111591%_))))
    (define spawn-thread__0
      (lambda (_%thunk111596%_)
        (let* ((_%name111598%_ absent-obj) (_%tgroup111600%_ absent-obj))
          (spawn-thread__% _%thunk111596%_ _%name111598%_ _%tgroup111600%_))))
    (define spawn-thread__1
      (lambda (_%thunk111602%_ _%name111603%_)
        (let ((_%tgroup111605%_ absent-obj))
          (spawn-thread__% _%thunk111602%_ _%name111603%_ _%tgroup111605%_))))
    (define spawn-thread
      (lambda _g111733_
        (let ((_g111732_ (let () (declare (not safe)) (##length _g111733_))))
          (cond ((let () (declare (not safe)) (##fx= _g111732_ 1))
                 (apply spawn-thread__0 _g111733_))
                ((let () (declare (not safe)) (##fx= _g111732_ 2))
                 (apply spawn-thread__1 _g111733_))
                ((let () (declare (not safe)) (##fx= _g111732_ 3))
                 (apply spawn-thread__% _g111733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111733_))))))
    (define thread-local-ref__%
      (lambda (_%key111573%_ _%default111574%_)
        (let ((_%tab111576%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111576%_ _%key111573%_ _%default111574%_))))
    (define thread-local-ref__0
      (lambda (_%key111581%_)
        (let ((_%default111583%_ absent-obj))
          (thread-local-ref__% _%key111581%_ _%default111583%_))))
    (define thread-local-ref
      (lambda _g111735_
        (let ((_g111734_ (let () (declare (not safe)) (##length _g111735_))))
          (cond ((let () (declare (not safe)) (##fx= _g111734_ 1))
                 (apply thread-local-ref__0 _g111735_))
                ((let () (declare (not safe)) (##fx= _g111734_ 2))
                 (apply thread-local-ref__% _g111735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111735_))))))
    (define thread-local-get
      (lambda (_%key111570%_) (thread-local-ref__% _%key111570%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111565%_ _%value111566%_)
        (let ((_%tab111568%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111568%_ _%key111565%_ _%value111566%_))))
    (define thread-local-delete!
      (lambda (_%key111561%_)
        (let ((_%tab111563%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111563%_ _%key111561%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111542%_ (current-thread)))
          (if (actor-thread? _%thr111542%_)
              (let ((_%$e111545%_ (actor-thread-locals _%thr111542%_)))
                (if _%$e111545%_
                    _%$e111545%_
                    (let ((_%tab111549%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111542%_ _%tab111549%_)
                      _%tab111549%_)))
              (if (eq? _%thr111542%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111553%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111542%_))))
                      (if _%$e111553%_
                          ((lambda (_%tab111556%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111556%_)
                           _%$e111553%_)
                          (let ((_%tab111559%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111542%_
                               _%tab111559%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111559%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111520%_)
        (if ((lambda (_%$obj111523%_)
               (or (not _%$obj111523%_) (procedure? _%$obj111523%_)))
             _%new-value111520%_)
            (let ((_%new-value111530%_ _%new-value111520%_))
              (__unhandled-actor-exception-hook-set! _%new-value111530%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111520%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111507%_)
        (let ((_%new-value111511%_ _%new-value111507%_))
          (set! __unhandled-actor-exception-hook _%new-value111511%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111481%_ _%proc111482%_)
        (if (mutex? _%mx111481%_)
            (let ((_%mx111486%_ _%mx111481%_))
              (if (procedure? _%proc111482%_)
                  (let ((_%proc111496%_ _%proc111482%_))
                    (__with-lock _%mx111486%_ _%proc111496%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111481%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111452%_ _%proc111453%_)
        (let* ((_%mx111456%_ _%mx111452%_)
               (_%proc111464%_ _%proc111453%_)
               (_%handler111473%_ (current-exception-handler)))
          (let ((__tmp111737
                 (lambda (_%e111475%_)
                   (let ((__tmp111738
                          (lambda ()
                            (mutex-unlock! _%mx111456%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111473%_ _%e111475%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111738))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111475%_))))
                (__tmp111736
                 (lambda ()
                   (mutex-lock! _%mx111456%_)
                   (let ((_%result111479%_
                          (let () (declare (not safe)) (_%proc111464%_))))
                     (mutex-unlock! _%mx111456%_)
                     _%result111479%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111737 __tmp111736)))))
    (define with-dynamic-lock
      (lambda (_%mx111427%_ _%proc111428%_)
        (if (mutex? _%mx111427%_)
            (let ((_%mx111432%_ _%mx111427%_))
              (if (procedure? _%proc111428%_)
                  (let ((_%proc111442%_ _%proc111428%_))
                    (__with-dynamic-lock _%mx111432%_ _%proc111442%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111428%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111427%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111404%_ _%proc111405%_)
        (let* ((_%mx111408%_ _%mx111404%_) (_%proc111416%_ _%proc111405%_))
          (let ((__tmp111740 (lambda () (mutex-lock! _%mx111408%_)))
                (__tmp111739 (lambda () (mutex-unlock! _%mx111408%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111740 _%proc111416%_ __tmp111739)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111369%_ _%error-port111370%_)
        (if (procedure? _%thunk111369%_)
            (let ((_%thunk111374%_ _%thunk111369%_))
              (if (port? _%error-port111370%_)
                  (let ((_%error-port111384%_ _%error-port111370%_))
                    (__with-exception-stack-trace__%
                     _%thunk111374%_
                     _%error-port111384%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111370%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111369%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111397%_)
        (let ((_%error-port111399%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111397%_
           _%error-port111399%_))))
    (define with-exception-stack-trace
      (lambda _g111742_
        (let ((_g111741_ (let () (declare (not safe)) (##length _g111742_))))
          (cond ((let () (declare (not safe)) (##fx= _g111741_ 1))
                 (apply with-exception-stack-trace__0 _g111742_))
                ((let () (declare (not safe)) (##fx= _g111741_ 2))
                 (apply with-exception-stack-trace__% _g111742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111742_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111330%_ _%error-port111331%_)
        (let* ((_%thunk111334%_ _%thunk111330%_)
               (_%error-port111343%_ _%error-port111331%_)
               (__tmp111743
                (let ((_%E111352%_ (current-exception-handler)))
                  (lambda (_%exn111354%_)
                    (let ((__tmp111744
                           (lambda (_%cont111356%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111356%_
                                  _%exn111354%_
                                  _%error-port111343%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111352%_ _%exn111354%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111744))))))
          (declare (not safe))
          (__with-exception-handler __tmp111743 _%thunk111334%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111361%_)
        (let ((_%error-port111363%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111361%_
           _%error-port111363%_))))
    (define __with-exception-stack-trace
      (lambda _g111746_
        (let ((_g111745_ (let () (declare (not safe)) (##length _g111746_))))
          (cond ((let () (declare (not safe)) (##fx= _g111745_ 1))
                 (apply __with-exception-stack-trace__0 _g111746_))
                ((let () (declare (not safe)) (##fx= _g111745_ 2))
                 (apply __with-exception-stack-trace__% _g111746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111746_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111311%_ _%exn111312%_ _%error-port111313%_)
        (let ((_%out111315%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111315%_))
          (display '"*** Unhandled exception in " _%out111315%_)
          (display (current-thread) _%out111315%_)
          (newline _%out111315%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111312%_ _%out111315%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111312%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111315%_)
                (newline _%out111315%_)
                (display-continuation-backtrace _%cont111311%_ _%out111315%_)))
          (let ((__tmp111747 (get-output-string _%out111315%_)))
            (declare (not safe))
            (##write-string __tmp111747 _%error-port111313%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111320%_ _%exn111321%_)
        (let ((_%error-port111323%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111320%_
           _%exn111321%_
           _%error-port111323%_))))
    (define dump-stack-trace!
      (lambda _g111749_
        (let ((_g111748_ (let () (declare (not safe)) (##length _g111749_))))
          (cond ((let () (declare (not safe)) (##fx= _g111748_ 2))
                 (apply dump-stack-trace!__0 _g111749_))
                ((let () (declare (not safe)) (##fx= _g111748_ 3))
                 (apply dump-stack-trace!__% _g111749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111749_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
