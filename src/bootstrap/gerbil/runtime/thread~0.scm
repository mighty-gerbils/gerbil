(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1756156299)
  (begin
    (define spawn
      (lambda (_%f118646%_ . _%args118647%_)
        (if (procedure? _%f118646%_)
            (let ((_%f118651%_ _%f118646%_))
              (declare (not safe))
              (##apply __spawn _%f118651%_ _%args118647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f118646%_)
              '#!void))))
    (define __spawn
      (lambda (_%f118633%_ . _%args118634%_)
        (let ((_%f118637%_ _%f118633%_))
          (spawn-actor _%f118637%_ _%args118634%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name118617%_ _%f118618%_ . _%args118619%_)
        (if (procedure? _%f118618%_)
            (let ((_%f118623%_ _%f118618%_))
              (declare (not safe))
              (##apply __spawn/name _%name118617%_ _%f118623%_ _%args118619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f118618%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name118603%_ _%f118604%_ . _%args118605%_)
        (let ((_%f118608%_ _%f118604%_))
          (spawn-actor _%f118608%_ _%args118605%_ _%name118603%_ '#f))))
    (define spawn/group
      (lambda (_%name118587%_ _%f118588%_ . _%args118589%_)
        (if (procedure? _%f118588%_)
            (let ((_%f118593%_ _%f118588%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name118587%_
                       _%f118593%_
                       _%args118589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f118588%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name118571%_ _%f118572%_ . _%args118573%_)
        (let* ((_%f118576%_ _%f118572%_)
               (_%tgroup118585%_ (make-thread-group _%name118571%_)))
          (spawn-actor
           _%f118576%_
           _%args118573%_
           _%name118571%_
           _%tgroup118585%_))))
    (define spawn-actor
      (lambda (_%f118543%_ _%args118544%_ _%name118545%_ _%tgroup118546%_)
        (letrec ((_%thread-main118549%_
                  (lambda (_%thunk118563%_)
                    (lambda ()
                      (let ((__tmp118660
                             (lambda (_%exn118566%_)
                               (let ((__tmp118661
                                      (lambda (_%cont118568%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp118662
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont118568%_
                                                      _%exn118566%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp118662))
                                            '#!void)
                                        (let ((__tmp118663
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont118568%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp118663
                                           ##primordial-exception-handler
                                           _%exn118566%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp118661)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp118660
                         _%thunk118563%_))))))
          (let* ((_%thunk118552%_
                  (if (null? _%args118544%_)
                      _%f118543%_
                      (lambda () (apply _%f118543%_ _%args118544%_))))
                 (_%thunk118555%_
                  (lambda () (with-exception-stack-trace__0 _%thunk118552%_)))
                 (_%tgroup118560%_
                  (let ((_%$e118557%_ _%tgroup118546%_))
                    (if _%$e118557%_ _%$e118557%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main118549%_ _%thunk118555%_)
              _%name118545%_
              _%tgroup118560%_))))))
    (define spawn-thread__%
      (lambda (_%thunk118521%_ _%name118522%_ _%tgroup118523%_)
        (thread-start!
         (make-thread _%thunk118521%_ _%name118522%_ _%tgroup118523%_))))
    (define spawn-thread__0
      (lambda (_%thunk118528%_)
        (let* ((_%name118530%_ absent-obj) (_%tgroup118532%_ absent-obj))
          (spawn-thread__% _%thunk118528%_ _%name118530%_ _%tgroup118532%_))))
    (define spawn-thread__1
      (lambda (_%thunk118534%_ _%name118535%_)
        (let ((_%tgroup118537%_ absent-obj))
          (spawn-thread__% _%thunk118534%_ _%name118535%_ _%tgroup118537%_))))
    (define spawn-thread
      (lambda _g118664_
        (let ((_g118665_ (let () (declare (not safe)) (##length _g118664_))))
          (cond ((let () (declare (not safe)) (##fx= _g118665_ 1))
                 (apply spawn-thread__0 _g118664_))
                ((let () (declare (not safe)) (##fx= _g118665_ 2))
                 (apply spawn-thread__1 _g118664_))
                ((let () (declare (not safe)) (##fx= _g118665_ 3))
                 (apply spawn-thread__% _g118664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g118664_))))))
    (define thread-local-ref__%
      (lambda (_%key118505%_ _%default118506%_)
        (let ((_%tab118508%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab118508%_ _%key118505%_ _%default118506%_))))
    (define thread-local-ref__0
      (lambda (_%key118513%_)
        (let ((_%default118515%_ absent-obj))
          (thread-local-ref__% _%key118513%_ _%default118515%_))))
    (define thread-local-ref
      (lambda _g118666_
        (let ((_g118667_ (let () (declare (not safe)) (##length _g118666_))))
          (cond ((let () (declare (not safe)) (##fx= _g118667_ 1))
                 (apply thread-local-ref__0 _g118666_))
                ((let () (declare (not safe)) (##fx= _g118667_ 2))
                 (apply thread-local-ref__% _g118666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g118666_))))))
    (define thread-local-get
      (lambda (_%key118502%_) (thread-local-ref__% _%key118502%_ '#f)))
    (define thread-local-set!
      (lambda (_%key118497%_ _%value118498%_)
        (let ((_%tab118500%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab118500%_ _%key118497%_ _%value118498%_))))
    (define thread-local-delete!
      (lambda (_%key118493%_)
        (let ((_%tab118495%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab118495%_ _%key118493%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr118474%_ (current-thread)))
          (if (actor-thread? _%thr118474%_)
              (let ((_%$e118477%_ (actor-thread-locals _%thr118474%_)))
                (if _%$e118477%_
                    _%$e118477%_
                    (let ((_%tab118481%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr118474%_ _%tab118481%_)
                      _%tab118481%_)))
              (if (eq? _%thr118474%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e118485%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr118474%_))))
                      (if _%$e118485%_
                          ((lambda (_%tab118488%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab118488%_)
                           _%$e118485%_)
                          (let ((_%tab118491%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr118474%_
                               _%tab118491%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab118491%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value118452%_)
        (if ((lambda (_%$obj118455%_)
               (or (not _%$obj118455%_) (procedure? _%$obj118455%_)))
             _%new-value118452%_)
            (let ((_%new-value118462%_ _%new-value118452%_))
              (__unhandled-actor-exception-hook-set! _%new-value118462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value118452%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value118439%_)
        (let ((_%new-value118443%_ _%new-value118439%_))
          (set! __unhandled-actor-exception-hook _%new-value118443%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx118413%_ _%proc118414%_)
        (if (mutex? _%mx118413%_)
            (let ((_%mx118418%_ _%mx118413%_))
              (if (procedure? _%proc118414%_)
                  (let ((_%proc118428%_ _%proc118414%_))
                    (__with-lock _%mx118418%_ _%proc118428%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118414%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx118413%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx118384%_ _%proc118385%_)
        (let* ((_%mx118388%_ _%mx118384%_)
               (_%proc118396%_ _%proc118385%_)
               (_%handler118405%_ (current-exception-handler)))
          (let ((__tmp118669
                 (lambda (_%e118407%_)
                   (let ((__tmp118670
                          (lambda ()
                            (mutex-unlock! _%mx118388%_)
                            (let ()
                              (declare (not safe))
                              (_%handler118405%_ _%e118407%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp118670))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e118407%_))))
                (__tmp118668
                 (lambda ()
                   (mutex-lock! _%mx118388%_)
                   (let ((_%result118411%_
                          (let () (declare (not safe)) (_%proc118396%_))))
                     (mutex-unlock! _%mx118388%_)
                     _%result118411%_))))
            (declare (not safe))
            (__with-exception-handler __tmp118669 __tmp118668)))))
    (define with-dynamic-lock
      (lambda (_%mx118359%_ _%proc118360%_)
        (if (mutex? _%mx118359%_)
            (let ((_%mx118364%_ _%mx118359%_))
              (if (procedure? _%proc118360%_)
                  (let ((_%proc118374%_ _%proc118360%_))
                    (__with-dynamic-lock _%mx118364%_ _%proc118374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118360%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx118359%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx118336%_ _%proc118337%_)
        (let* ((_%mx118340%_ _%mx118336%_) (_%proc118348%_ _%proc118337%_))
          (let ((__tmp118672 (lambda () (mutex-lock! _%mx118340%_)))
                (__tmp118671 (lambda () (mutex-unlock! _%mx118340%_))))
            (declare (not safe))
            (##dynamic-wind __tmp118672 _%proc118348%_ __tmp118671)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk118301%_ _%error-port118302%_)
        (if (procedure? _%thunk118301%_)
            (let ((_%thunk118306%_ _%thunk118301%_))
              (if (port? _%error-port118302%_)
                  (let ((_%error-port118316%_ _%error-port118302%_))
                    (__with-exception-stack-trace__%
                     _%thunk118306%_
                     _%error-port118316%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port118302%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk118301%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk118329%_)
        (let ((_%error-port118331%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk118329%_
           _%error-port118331%_))))
    (define with-exception-stack-trace
      (lambda _g118673_
        (let ((_g118674_ (let () (declare (not safe)) (##length _g118673_))))
          (cond ((let () (declare (not safe)) (##fx= _g118674_ 1))
                 (apply with-exception-stack-trace__0 _g118673_))
                ((let () (declare (not safe)) (##fx= _g118674_ 2))
                 (apply with-exception-stack-trace__% _g118673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g118673_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk118262%_ _%error-port118263%_)
        (let* ((_%thunk118266%_ _%thunk118262%_)
               (_%error-port118275%_ _%error-port118263%_)
               (__tmp118675
                (let ((_%E118284%_ (current-exception-handler)))
                  (lambda (_%exn118286%_)
                    (let ((__tmp118676
                           (lambda (_%cont118288%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont118288%_
                                  _%exn118286%_
                                  _%error-port118275%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E118284%_ _%exn118286%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp118676))))))
          (declare (not safe))
          (__with-exception-handler __tmp118675 _%thunk118266%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk118293%_)
        (let ((_%error-port118295%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk118293%_
           _%error-port118295%_))))
    (define __with-exception-stack-trace
      (lambda _g118677_
        (let ((_g118678_ (let () (declare (not safe)) (##length _g118677_))))
          (cond ((let () (declare (not safe)) (##fx= _g118678_ 1))
                 (apply __with-exception-stack-trace__0 _g118677_))
                ((let () (declare (not safe)) (##fx= _g118678_ 2))
                 (apply __with-exception-stack-trace__% _g118677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g118677_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont118243%_ _%exn118244%_ _%error-port118245%_)
        (let ((_%out118247%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out118247%_))
          (display '"*** Unhandled exception in " _%out118247%_)
          (display (current-thread) _%out118247%_)
          (newline _%out118247%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn118244%_ _%out118247%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn118244%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out118247%_)
                (newline _%out118247%_)
                (display-continuation-backtrace _%cont118243%_ _%out118247%_)))
          (let ((__tmp118679 (get-output-string _%out118247%_)))
            (declare (not safe))
            (##write-string __tmp118679 _%error-port118245%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont118252%_ _%exn118253%_)
        (let ((_%error-port118255%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont118252%_
           _%exn118253%_
           _%error-port118255%_))))
    (define dump-stack-trace!
      (lambda _g118680_
        (let ((_g118681_ (let () (declare (not safe)) (##length _g118680_))))
          (cond ((let () (declare (not safe)) (##fx= _g118681_ 2))
                 (apply dump-stack-trace!__0 _g118680_))
                ((let () (declare (not safe)) (##fx= _g118681_ 3))
                 (apply dump-stack-trace!__% _g118680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g118680_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
