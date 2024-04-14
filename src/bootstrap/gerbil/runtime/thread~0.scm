(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713453199)
  (begin
    (define spawn
      (lambda (_%f109421%_ . _%args109422%_)
        (if (procedure? _%f109421%_)
            (let ((_%f109426%_ _%f109421%_))
              (declare (not safe))
              (##apply __spawn _%f109426%_ _%args109422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f109421%_)
              '#!void))))
    (define __spawn
      (lambda (_%f109408%_ . _%args109409%_)
        (let ((_%f109412%_ _%f109408%_))
          (spawn-actor _%f109412%_ _%args109409%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name109392%_ _%f109393%_ . _%args109394%_)
        (if (procedure? _%f109393%_)
            (let ((_%f109398%_ _%f109393%_))
              (declare (not safe))
              (##apply __spawn/name _%name109392%_ _%f109398%_ _%args109394%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f109393%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name109378%_ _%f109379%_ . _%args109380%_)
        (let ((_%f109383%_ _%f109379%_))
          (spawn-actor _%f109383%_ _%args109380%_ _%name109378%_ '#f))))
    (define spawn/group
      (lambda (_%name109362%_ _%f109363%_ . _%args109364%_)
        (if (procedure? _%f109363%_)
            (let ((_%f109368%_ _%f109363%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name109362%_
                       _%f109368%_
                       _%args109364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f109363%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name109346%_ _%f109347%_ . _%args109348%_)
        (let* ((_%f109351%_ _%f109347%_)
               (_%tgroup109360%_ (make-thread-group _%name109346%_)))
          (spawn-actor
           _%f109351%_
           _%args109348%_
           _%name109346%_
           _%tgroup109360%_))))
    (define spawn-actor
      (lambda (_%f109318%_ _%args109319%_ _%name109320%_ _%tgroup109321%_)
        (letrec ((_%thread-main109324%_
                  (lambda (_%thunk109338%_)
                    (lambda ()
                      (let ((__tmp109435
                             (lambda (_%exn109341%_)
                               (let ((__tmp109436
                                      (lambda (_%cont109343%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp109437
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont109343%_
                                                      _%exn109341%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp109437))
                                            '#!void)
                                        (let ((__tmp109438
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont109343%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp109438
                                           ##primordial-exception-handler
                                           _%exn109341%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp109436)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp109435
                         _%thunk109338%_))))))
          (let* ((_%thunk109327%_
                  (if (null? _%args109319%_)
                      _%f109318%_
                      (lambda () (apply _%f109318%_ _%args109319%_))))
                 (_%thunk109330%_
                  (lambda () (with-exception-stack-trace__0 _%thunk109327%_)))
                 (_%tgroup109335%_
                  (let ((_%$e109332%_ _%tgroup109321%_))
                    (if _%$e109332%_ _%$e109332%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main109324%_ _%thunk109330%_)
              _%name109320%_
              _%tgroup109335%_))))))
    (define spawn-thread__%
      (lambda (_%thunk109296%_ _%name109297%_ _%tgroup109298%_)
        (thread-start!
         (make-thread _%thunk109296%_ _%name109297%_ _%tgroup109298%_))))
    (define spawn-thread__0
      (lambda (_%thunk109303%_)
        (let* ((_%name109305%_ absent-obj) (_%tgroup109307%_ absent-obj))
          (spawn-thread__% _%thunk109303%_ _%name109305%_ _%tgroup109307%_))))
    (define spawn-thread__1
      (lambda (_%thunk109309%_ _%name109310%_)
        (let ((_%tgroup109312%_ absent-obj))
          (spawn-thread__% _%thunk109309%_ _%name109310%_ _%tgroup109312%_))))
    (define spawn-thread
      (lambda _g109440_
        (let ((_g109439_ (let () (declare (not safe)) (##length _g109440_))))
          (cond ((let () (declare (not safe)) (##fx= _g109439_ 1))
                 (apply spawn-thread__0 _g109440_))
                ((let () (declare (not safe)) (##fx= _g109439_ 2))
                 (apply spawn-thread__1 _g109440_))
                ((let () (declare (not safe)) (##fx= _g109439_ 3))
                 (apply spawn-thread__% _g109440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g109440_))))))
    (define thread-local-ref__%
      (lambda (_%key109280%_ _%default109281%_)
        (let ((_%tab109283%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab109283%_ _%key109280%_ _%default109281%_))))
    (define thread-local-ref__0
      (lambda (_%key109288%_)
        (let ((_%default109290%_ absent-obj))
          (thread-local-ref__% _%key109288%_ _%default109290%_))))
    (define thread-local-ref
      (lambda _g109442_
        (let ((_g109441_ (let () (declare (not safe)) (##length _g109442_))))
          (cond ((let () (declare (not safe)) (##fx= _g109441_ 1))
                 (apply thread-local-ref__0 _g109442_))
                ((let () (declare (not safe)) (##fx= _g109441_ 2))
                 (apply thread-local-ref__% _g109442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g109442_))))))
    (define thread-local-get
      (lambda (_%key109277%_) (thread-local-ref__% _%key109277%_ '#f)))
    (define thread-local-set!
      (lambda (_%key109272%_ _%value109273%_)
        (let ((_%tab109275%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab109275%_ _%key109272%_ _%value109273%_))))
    (define thread-local-delete!
      (lambda (_%key109268%_)
        (let ((_%tab109270%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab109270%_ _%key109268%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr109249%_ (current-thread)))
          (if (actor-thread? _%thr109249%_)
              (let ((_%$e109252%_ (actor-thread-locals _%thr109249%_)))
                (if _%$e109252%_
                    _%$e109252%_
                    (let ((_%tab109256%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr109249%_ _%tab109256%_)
                      _%tab109256%_)))
              (if (eq? _%thr109249%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e109260%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr109249%_))))
                      (if _%$e109260%_
                          ((lambda (_%tab109263%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab109263%_)
                           _%$e109260%_)
                          (let ((_%tab109266%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr109249%_
                               _%tab109266%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab109266%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value109227%_)
        (if ((lambda (_%$obj109230%_)
               (or (not _%$obj109230%_) (procedure? _%$obj109230%_)))
             _%new-value109227%_)
            (let ((_%new-value109237%_ _%new-value109227%_))
              (__unhandled-actor-exception-hook-set! _%new-value109237%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value109227%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value109214%_)
        (let ((_%new-value109218%_ _%new-value109214%_))
          (set! __unhandled-actor-exception-hook _%new-value109218%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx109188%_ _%proc109189%_)
        (if (mutex? _%mx109188%_)
            (let ((_%mx109193%_ _%mx109188%_))
              (if (procedure? _%proc109189%_)
                  (let ((_%proc109203%_ _%proc109189%_))
                    (__with-lock _%mx109193%_ _%proc109203%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc109189%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx109188%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx109159%_ _%proc109160%_)
        (let* ((_%mx109163%_ _%mx109159%_)
               (_%proc109171%_ _%proc109160%_)
               (_%handler109180%_ (current-exception-handler)))
          (let ((__tmp109444
                 (lambda (_%e109182%_)
                   (let ((__tmp109445
                          (lambda ()
                            (mutex-unlock! _%mx109163%_)
                            (let ()
                              (declare (not safe))
                              (_%handler109180%_ _%e109182%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp109445))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e109182%_))))
                (__tmp109443
                 (lambda ()
                   (mutex-lock! _%mx109163%_)
                   (let ((_%result109186%_
                          (let () (declare (not safe)) (_%proc109171%_))))
                     (mutex-unlock! _%mx109163%_)
                     _%result109186%_))))
            (declare (not safe))
            (__with-exception-handler __tmp109444 __tmp109443)))))
    (define with-dynamic-lock
      (lambda (_%mx109134%_ _%proc109135%_)
        (if (mutex? _%mx109134%_)
            (let ((_%mx109139%_ _%mx109134%_))
              (if (procedure? _%proc109135%_)
                  (let ((_%proc109149%_ _%proc109135%_))
                    (__with-dynamic-lock _%mx109139%_ _%proc109149%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc109135%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx109134%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx109111%_ _%proc109112%_)
        (let* ((_%mx109115%_ _%mx109111%_) (_%proc109123%_ _%proc109112%_))
          (let ((__tmp109447 (lambda () (mutex-lock! _%mx109115%_)))
                (__tmp109446 (lambda () (mutex-unlock! _%mx109115%_))))
            (declare (not safe))
            (##dynamic-wind __tmp109447 _%proc109123%_ __tmp109446)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk109076%_ _%error-port109077%_)
        (if (procedure? _%thunk109076%_)
            (let ((_%thunk109081%_ _%thunk109076%_))
              (if (port? _%error-port109077%_)
                  (let ((_%error-port109091%_ _%error-port109077%_))
                    (__with-exception-stack-trace__%
                     _%thunk109081%_
                     _%error-port109091%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port109077%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk109076%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk109104%_)
        (let ((_%error-port109106%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk109104%_
           _%error-port109106%_))))
    (define with-exception-stack-trace
      (lambda _g109449_
        (let ((_g109448_ (let () (declare (not safe)) (##length _g109449_))))
          (cond ((let () (declare (not safe)) (##fx= _g109448_ 1))
                 (apply with-exception-stack-trace__0 _g109449_))
                ((let () (declare (not safe)) (##fx= _g109448_ 2))
                 (apply with-exception-stack-trace__% _g109449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g109449_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk109037%_ _%error-port109038%_)
        (let* ((_%thunk109041%_ _%thunk109037%_)
               (_%error-port109050%_ _%error-port109038%_)
               (__tmp109450
                (let ((_%E109059%_ (current-exception-handler)))
                  (lambda (_%exn109061%_)
                    (let ((__tmp109451
                           (lambda (_%cont109063%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont109063%_
                                  _%exn109061%_
                                  _%error-port109050%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E109059%_ _%exn109061%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp109451))))))
          (declare (not safe))
          (__with-exception-handler __tmp109450 _%thunk109041%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk109068%_)
        (let ((_%error-port109070%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk109068%_
           _%error-port109070%_))))
    (define __with-exception-stack-trace
      (lambda _g109453_
        (let ((_g109452_ (let () (declare (not safe)) (##length _g109453_))))
          (cond ((let () (declare (not safe)) (##fx= _g109452_ 1))
                 (apply __with-exception-stack-trace__0 _g109453_))
                ((let () (declare (not safe)) (##fx= _g109452_ 2))
                 (apply __with-exception-stack-trace__% _g109453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g109453_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont109018%_ _%exn109019%_ _%error-port109020%_)
        (let ((_%out109022%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out109022%_))
          (display '"*** Unhandled exception in " _%out109022%_)
          (display (current-thread) _%out109022%_)
          (newline _%out109022%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn109019%_ _%out109022%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn109019%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out109022%_)
                (newline _%out109022%_)
                (display-continuation-backtrace _%cont109018%_ _%out109022%_)))
          (let ((__tmp109454 (get-output-string _%out109022%_)))
            (declare (not safe))
            (##write-string __tmp109454 _%error-port109020%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont109027%_ _%exn109028%_)
        (let ((_%error-port109030%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont109027%_
           _%exn109028%_
           _%error-port109030%_))))
    (define dump-stack-trace!
      (lambda _g109456_
        (let ((_g109455_ (let () (declare (not safe)) (##length _g109456_))))
          (cond ((let () (declare (not safe)) (##fx= _g109455_ 2))
                 (apply dump-stack-trace!__0 _g109456_))
                ((let () (declare (not safe)) (##fx= _g109455_ 3))
                 (apply dump-stack-trace!__% _g109456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g109456_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
