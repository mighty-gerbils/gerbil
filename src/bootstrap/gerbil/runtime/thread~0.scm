(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1734278444)
  (begin
    (define spawn
      (lambda (_%f111710%_ . _%args111711%_)
        (if (procedure? _%f111710%_)
            (let ((_%f111715%_ _%f111710%_))
              (declare (not safe))
              (##apply __spawn _%f111715%_ _%args111711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111710%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111697%_ . _%args111698%_)
        (let ((_%f111701%_ _%f111697%_))
          (spawn-actor _%f111701%_ _%args111698%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111681%_ _%f111682%_ . _%args111683%_)
        (if (procedure? _%f111682%_)
            (let ((_%f111687%_ _%f111682%_))
              (declare (not safe))
              (##apply __spawn/name _%name111681%_ _%f111687%_ _%args111683%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111682%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111667%_ _%f111668%_ . _%args111669%_)
        (let ((_%f111672%_ _%f111668%_))
          (spawn-actor _%f111672%_ _%args111669%_ _%name111667%_ '#f))))
    (define spawn/group
      (lambda (_%name111651%_ _%f111652%_ . _%args111653%_)
        (if (procedure? _%f111652%_)
            (let ((_%f111657%_ _%f111652%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111651%_
                       _%f111657%_
                       _%args111653%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111652%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111635%_ _%f111636%_ . _%args111637%_)
        (let* ((_%f111640%_ _%f111636%_)
               (_%tgroup111649%_ (make-thread-group _%name111635%_)))
          (spawn-actor
           _%f111640%_
           _%args111637%_
           _%name111635%_
           _%tgroup111649%_))))
    (define spawn-actor
      (lambda (_%f111607%_ _%args111608%_ _%name111609%_ _%tgroup111610%_)
        (letrec ((_%thread-main111613%_
                  (lambda (_%thunk111627%_)
                    (lambda ()
                      (let ((__tmp111724
                             (lambda (_%exn111630%_)
                               (let ((__tmp111725
                                      (lambda (_%cont111632%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111726
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111632%_
                                                      _%exn111630%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111726))
                                            '#!void)
                                        (let ((__tmp111727
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111632%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111727
                                           ##primordial-exception-handler
                                           _%exn111630%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111725)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111724
                         _%thunk111627%_))))))
          (let* ((_%thunk111616%_
                  (if (null? _%args111608%_)
                      _%f111607%_
                      (lambda () (apply _%f111607%_ _%args111608%_))))
                 (_%thunk111619%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111616%_)))
                 (_%tgroup111624%_
                  (let ((_%$e111621%_ _%tgroup111610%_))
                    (if _%$e111621%_ _%$e111621%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111613%_ _%thunk111619%_)
              _%name111609%_
              _%tgroup111624%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111585%_ _%name111586%_ _%tgroup111587%_)
        (thread-start!
         (make-thread _%thunk111585%_ _%name111586%_ _%tgroup111587%_))))
    (define spawn-thread__0
      (lambda (_%thunk111592%_)
        (let* ((_%name111594%_ absent-obj) (_%tgroup111596%_ absent-obj))
          (spawn-thread__% _%thunk111592%_ _%name111594%_ _%tgroup111596%_))))
    (define spawn-thread__1
      (lambda (_%thunk111598%_ _%name111599%_)
        (let ((_%tgroup111601%_ absent-obj))
          (spawn-thread__% _%thunk111598%_ _%name111599%_ _%tgroup111601%_))))
    (define spawn-thread
      (lambda _g111729_
        (let ((_g111728_ (let () (declare (not safe)) (##length _g111729_))))
          (cond ((let () (declare (not safe)) (##fx= _g111728_ 1))
                 (apply spawn-thread__0 _g111729_))
                ((let () (declare (not safe)) (##fx= _g111728_ 2))
                 (apply spawn-thread__1 _g111729_))
                ((let () (declare (not safe)) (##fx= _g111728_ 3))
                 (apply spawn-thread__% _g111729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111729_))))))
    (define thread-local-ref__%
      (lambda (_%key111569%_ _%default111570%_)
        (let ((_%tab111572%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111572%_ _%key111569%_ _%default111570%_))))
    (define thread-local-ref__0
      (lambda (_%key111577%_)
        (let ((_%default111579%_ absent-obj))
          (thread-local-ref__% _%key111577%_ _%default111579%_))))
    (define thread-local-ref
      (lambda _g111731_
        (let ((_g111730_ (let () (declare (not safe)) (##length _g111731_))))
          (cond ((let () (declare (not safe)) (##fx= _g111730_ 1))
                 (apply thread-local-ref__0 _g111731_))
                ((let () (declare (not safe)) (##fx= _g111730_ 2))
                 (apply thread-local-ref__% _g111731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111731_))))))
    (define thread-local-get
      (lambda (_%key111566%_) (thread-local-ref__% _%key111566%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111561%_ _%value111562%_)
        (let ((_%tab111564%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111564%_ _%key111561%_ _%value111562%_))))
    (define thread-local-delete!
      (lambda (_%key111557%_)
        (let ((_%tab111559%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111559%_ _%key111557%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111538%_ (current-thread)))
          (if (actor-thread? _%thr111538%_)
              (let ((_%$e111541%_ (actor-thread-locals _%thr111538%_)))
                (if _%$e111541%_
                    _%$e111541%_
                    (let ((_%tab111545%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111538%_ _%tab111545%_)
                      _%tab111545%_)))
              (if (eq? _%thr111538%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111549%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111538%_))))
                      (if _%$e111549%_
                          ((lambda (_%tab111552%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111552%_)
                           _%$e111549%_)
                          (let ((_%tab111555%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111538%_
                               _%tab111555%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111555%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111516%_)
        (if ((lambda (_%$obj111519%_)
               (or (not _%$obj111519%_) (procedure? _%$obj111519%_)))
             _%new-value111516%_)
            (let ((_%new-value111526%_ _%new-value111516%_))
              (__unhandled-actor-exception-hook-set! _%new-value111526%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111516%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111503%_)
        (let ((_%new-value111507%_ _%new-value111503%_))
          (set! __unhandled-actor-exception-hook _%new-value111507%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111477%_ _%proc111478%_)
        (if (mutex? _%mx111477%_)
            (let ((_%mx111482%_ _%mx111477%_))
              (if (procedure? _%proc111478%_)
                  (let ((_%proc111492%_ _%proc111478%_))
                    (__with-lock _%mx111482%_ _%proc111492%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111478%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111477%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111448%_ _%proc111449%_)
        (let* ((_%mx111452%_ _%mx111448%_)
               (_%proc111460%_ _%proc111449%_)
               (_%handler111469%_ (current-exception-handler)))
          (let ((__tmp111733
                 (lambda (_%e111471%_)
                   (let ((__tmp111734
                          (lambda ()
                            (mutex-unlock! _%mx111452%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111469%_ _%e111471%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111734))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111471%_))))
                (__tmp111732
                 (lambda ()
                   (mutex-lock! _%mx111452%_)
                   (let ((_%result111475%_
                          (let () (declare (not safe)) (_%proc111460%_))))
                     (mutex-unlock! _%mx111452%_)
                     _%result111475%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111733 __tmp111732)))))
    (define with-dynamic-lock
      (lambda (_%mx111423%_ _%proc111424%_)
        (if (mutex? _%mx111423%_)
            (let ((_%mx111428%_ _%mx111423%_))
              (if (procedure? _%proc111424%_)
                  (let ((_%proc111438%_ _%proc111424%_))
                    (__with-dynamic-lock _%mx111428%_ _%proc111438%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111424%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111423%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111400%_ _%proc111401%_)
        (let* ((_%mx111404%_ _%mx111400%_) (_%proc111412%_ _%proc111401%_))
          (let ((__tmp111736 (lambda () (mutex-lock! _%mx111404%_)))
                (__tmp111735 (lambda () (mutex-unlock! _%mx111404%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111736 _%proc111412%_ __tmp111735)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111365%_ _%error-port111366%_)
        (if (procedure? _%thunk111365%_)
            (let ((_%thunk111370%_ _%thunk111365%_))
              (if (port? _%error-port111366%_)
                  (let ((_%error-port111380%_ _%error-port111366%_))
                    (__with-exception-stack-trace__%
                     _%thunk111370%_
                     _%error-port111380%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111366%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111365%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111393%_)
        (let ((_%error-port111395%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111393%_
           _%error-port111395%_))))
    (define with-exception-stack-trace
      (lambda _g111738_
        (let ((_g111737_ (let () (declare (not safe)) (##length _g111738_))))
          (cond ((let () (declare (not safe)) (##fx= _g111737_ 1))
                 (apply with-exception-stack-trace__0 _g111738_))
                ((let () (declare (not safe)) (##fx= _g111737_ 2))
                 (apply with-exception-stack-trace__% _g111738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111738_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111326%_ _%error-port111327%_)
        (let* ((_%thunk111330%_ _%thunk111326%_)
               (_%error-port111339%_ _%error-port111327%_)
               (__tmp111739
                (let ((_%E111348%_ (current-exception-handler)))
                  (lambda (_%exn111350%_)
                    (let ((__tmp111740
                           (lambda (_%cont111352%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111352%_
                                  _%exn111350%_
                                  _%error-port111339%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111348%_ _%exn111350%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111740))))))
          (declare (not safe))
          (__with-exception-handler __tmp111739 _%thunk111330%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111357%_)
        (let ((_%error-port111359%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111357%_
           _%error-port111359%_))))
    (define __with-exception-stack-trace
      (lambda _g111742_
        (let ((_g111741_ (let () (declare (not safe)) (##length _g111742_))))
          (cond ((let () (declare (not safe)) (##fx= _g111741_ 1))
                 (apply __with-exception-stack-trace__0 _g111742_))
                ((let () (declare (not safe)) (##fx= _g111741_ 2))
                 (apply __with-exception-stack-trace__% _g111742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111742_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111307%_ _%exn111308%_ _%error-port111309%_)
        (let ((_%out111311%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111311%_))
          (display '"*** Unhandled exception in " _%out111311%_)
          (display (current-thread) _%out111311%_)
          (newline _%out111311%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111308%_ _%out111311%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111308%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111311%_)
                (newline _%out111311%_)
                (display-continuation-backtrace _%cont111307%_ _%out111311%_)))
          (let ((__tmp111743 (get-output-string _%out111311%_)))
            (declare (not safe))
            (##write-string __tmp111743 _%error-port111309%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111316%_ _%exn111317%_)
        (let ((_%error-port111319%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111316%_
           _%exn111317%_
           _%error-port111319%_))))
    (define dump-stack-trace!
      (lambda _g111745_
        (let ((_g111744_ (let () (declare (not safe)) (##length _g111745_))))
          (cond ((let () (declare (not safe)) (##fx= _g111744_ 2))
                 (apply dump-stack-trace!__0 _g111745_))
                ((let () (declare (not safe)) (##fx= _g111744_ 3))
                 (apply dump-stack-trace!__% _g111745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111745_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
