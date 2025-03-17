(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1742223872)
  (begin
    (define spawn
      (lambda (_%f111739%_ . _%args111740%_)
        (if (procedure? _%f111739%_)
            (let ((_%f111744%_ _%f111739%_))
              (declare (not safe))
              (##apply __spawn _%f111744%_ _%args111740%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f111739%_)
              '#!void))))
    (define __spawn
      (lambda (_%f111726%_ . _%args111727%_)
        (let ((_%f111730%_ _%f111726%_))
          (spawn-actor _%f111730%_ _%args111727%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name111710%_ _%f111711%_ . _%args111712%_)
        (if (procedure? _%f111711%_)
            (let ((_%f111716%_ _%f111711%_))
              (declare (not safe))
              (##apply __spawn/name _%name111710%_ _%f111716%_ _%args111712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f111711%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name111696%_ _%f111697%_ . _%args111698%_)
        (let ((_%f111701%_ _%f111697%_))
          (spawn-actor _%f111701%_ _%args111698%_ _%name111696%_ '#f))))
    (define spawn/group
      (lambda (_%name111680%_ _%f111681%_ . _%args111682%_)
        (if (procedure? _%f111681%_)
            (let ((_%f111686%_ _%f111681%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name111680%_
                       _%f111686%_
                       _%args111682%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f111681%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name111664%_ _%f111665%_ . _%args111666%_)
        (let* ((_%f111669%_ _%f111665%_)
               (_%tgroup111678%_ (make-thread-group _%name111664%_)))
          (spawn-actor
           _%f111669%_
           _%args111666%_
           _%name111664%_
           _%tgroup111678%_))))
    (define spawn-actor
      (lambda (_%f111636%_ _%args111637%_ _%name111638%_ _%tgroup111639%_)
        (letrec ((_%thread-main111642%_
                  (lambda (_%thunk111656%_)
                    (lambda ()
                      (let ((__tmp111753
                             (lambda (_%exn111659%_)
                               (let ((__tmp111754
                                      (lambda (_%cont111661%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp111755
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont111661%_
                                                      _%exn111659%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp111755))
                                            '#!void)
                                        (let ((__tmp111756
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont111661%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp111756
                                           ##primordial-exception-handler
                                           _%exn111659%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp111754)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp111753
                         _%thunk111656%_))))))
          (let* ((_%thunk111645%_
                  (if (null? _%args111637%_)
                      _%f111636%_
                      (lambda () (apply _%f111636%_ _%args111637%_))))
                 (_%thunk111648%_
                  (lambda () (with-exception-stack-trace__0 _%thunk111645%_)))
                 (_%tgroup111653%_
                  (let ((_%$e111650%_ _%tgroup111639%_))
                    (if _%$e111650%_ _%$e111650%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main111642%_ _%thunk111648%_)
              _%name111638%_
              _%tgroup111653%_))))))
    (define spawn-thread__%
      (lambda (_%thunk111614%_ _%name111615%_ _%tgroup111616%_)
        (thread-start!
         (make-thread _%thunk111614%_ _%name111615%_ _%tgroup111616%_))))
    (define spawn-thread__0
      (lambda (_%thunk111621%_)
        (let* ((_%name111623%_ absent-obj) (_%tgroup111625%_ absent-obj))
          (spawn-thread__% _%thunk111621%_ _%name111623%_ _%tgroup111625%_))))
    (define spawn-thread__1
      (lambda (_%thunk111627%_ _%name111628%_)
        (let ((_%tgroup111630%_ absent-obj))
          (spawn-thread__% _%thunk111627%_ _%name111628%_ _%tgroup111630%_))))
    (define spawn-thread
      (lambda _g111758_
        (let ((_g111757_ (let () (declare (not safe)) (##length _g111758_))))
          (cond ((let () (declare (not safe)) (##fx= _g111757_ 1))
                 (apply spawn-thread__0 _g111758_))
                ((let () (declare (not safe)) (##fx= _g111757_ 2))
                 (apply spawn-thread__1 _g111758_))
                ((let () (declare (not safe)) (##fx= _g111757_ 3))
                 (apply spawn-thread__% _g111758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g111758_))))))
    (define thread-local-ref__%
      (lambda (_%key111598%_ _%default111599%_)
        (let ((_%tab111601%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab111601%_ _%key111598%_ _%default111599%_))))
    (define thread-local-ref__0
      (lambda (_%key111606%_)
        (let ((_%default111608%_ absent-obj))
          (thread-local-ref__% _%key111606%_ _%default111608%_))))
    (define thread-local-ref
      (lambda _g111760_
        (let ((_g111759_ (let () (declare (not safe)) (##length _g111760_))))
          (cond ((let () (declare (not safe)) (##fx= _g111759_ 1))
                 (apply thread-local-ref__0 _g111760_))
                ((let () (declare (not safe)) (##fx= _g111759_ 2))
                 (apply thread-local-ref__% _g111760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g111760_))))))
    (define thread-local-get
      (lambda (_%key111595%_) (thread-local-ref__% _%key111595%_ '#f)))
    (define thread-local-set!
      (lambda (_%key111590%_ _%value111591%_)
        (let ((_%tab111593%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab111593%_ _%key111590%_ _%value111591%_))))
    (define thread-local-delete!
      (lambda (_%key111586%_)
        (let ((_%tab111588%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab111588%_ _%key111586%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr111567%_ (current-thread)))
          (if (actor-thread? _%thr111567%_)
              (let ((_%$e111570%_ (actor-thread-locals _%thr111567%_)))
                (if _%$e111570%_
                    _%$e111570%_
                    (let ((_%tab111574%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr111567%_ _%tab111574%_)
                      _%tab111574%_)))
              (if (eq? _%thr111567%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e111578%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr111567%_))))
                      (if _%$e111578%_
                          ((lambda (_%tab111581%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab111581%_)
                           _%$e111578%_)
                          (let ((_%tab111584%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr111567%_
                               _%tab111584%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab111584%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value111545%_)
        (if ((lambda (_%$obj111548%_)
               (or (not _%$obj111548%_) (procedure? _%$obj111548%_)))
             _%new-value111545%_)
            (let ((_%new-value111555%_ _%new-value111545%_))
              (__unhandled-actor-exception-hook-set! _%new-value111555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value111545%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value111532%_)
        (let ((_%new-value111536%_ _%new-value111532%_))
          (set! __unhandled-actor-exception-hook _%new-value111536%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx111506%_ _%proc111507%_)
        (if (mutex? _%mx111506%_)
            (let ((_%mx111511%_ _%mx111506%_))
              (if (procedure? _%proc111507%_)
                  (let ((_%proc111521%_ _%proc111507%_))
                    (__with-lock _%mx111511%_ _%proc111521%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111507%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx111506%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx111477%_ _%proc111478%_)
        (let* ((_%mx111481%_ _%mx111477%_)
               (_%proc111489%_ _%proc111478%_)
               (_%handler111498%_ (current-exception-handler)))
          (let ((__tmp111762
                 (lambda (_%e111500%_)
                   (let ((__tmp111763
                          (lambda ()
                            (mutex-unlock! _%mx111481%_)
                            (let ()
                              (declare (not safe))
                              (_%handler111498%_ _%e111500%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp111763))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e111500%_))))
                (__tmp111761
                 (lambda ()
                   (mutex-lock! _%mx111481%_)
                   (let ((_%result111504%_
                          (let () (declare (not safe)) (_%proc111489%_))))
                     (mutex-unlock! _%mx111481%_)
                     _%result111504%_))))
            (declare (not safe))
            (__with-exception-handler __tmp111762 __tmp111761)))))
    (define with-dynamic-lock
      (lambda (_%mx111452%_ _%proc111453%_)
        (if (mutex? _%mx111452%_)
            (let ((_%mx111457%_ _%mx111452%_))
              (if (procedure? _%proc111453%_)
                  (let ((_%proc111467%_ _%proc111453%_))
                    (__with-dynamic-lock _%mx111457%_ _%proc111467%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc111453%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx111452%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx111429%_ _%proc111430%_)
        (let* ((_%mx111433%_ _%mx111429%_) (_%proc111441%_ _%proc111430%_))
          (let ((__tmp111765 (lambda () (mutex-lock! _%mx111433%_)))
                (__tmp111764 (lambda () (mutex-unlock! _%mx111433%_))))
            (declare (not safe))
            (##dynamic-wind __tmp111765 _%proc111441%_ __tmp111764)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk111394%_ _%error-port111395%_)
        (if (procedure? _%thunk111394%_)
            (let ((_%thunk111399%_ _%thunk111394%_))
              (if (port? _%error-port111395%_)
                  (let ((_%error-port111409%_ _%error-port111395%_))
                    (__with-exception-stack-trace__%
                     _%thunk111399%_
                     _%error-port111409%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port111395%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk111394%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk111422%_)
        (let ((_%error-port111424%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk111422%_
           _%error-port111424%_))))
    (define with-exception-stack-trace
      (lambda _g111767_
        (let ((_g111766_ (let () (declare (not safe)) (##length _g111767_))))
          (cond ((let () (declare (not safe)) (##fx= _g111766_ 1))
                 (apply with-exception-stack-trace__0 _g111767_))
                ((let () (declare (not safe)) (##fx= _g111766_ 2))
                 (apply with-exception-stack-trace__% _g111767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g111767_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk111355%_ _%error-port111356%_)
        (let* ((_%thunk111359%_ _%thunk111355%_)
               (_%error-port111368%_ _%error-port111356%_)
               (__tmp111768
                (let ((_%E111377%_ (current-exception-handler)))
                  (lambda (_%exn111379%_)
                    (let ((__tmp111769
                           (lambda (_%cont111381%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont111381%_
                                  _%exn111379%_
                                  _%error-port111368%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E111377%_ _%exn111379%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp111769))))))
          (declare (not safe))
          (__with-exception-handler __tmp111768 _%thunk111359%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk111386%_)
        (let ((_%error-port111388%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk111386%_
           _%error-port111388%_))))
    (define __with-exception-stack-trace
      (lambda _g111771_
        (let ((_g111770_ (let () (declare (not safe)) (##length _g111771_))))
          (cond ((let () (declare (not safe)) (##fx= _g111770_ 1))
                 (apply __with-exception-stack-trace__0 _g111771_))
                ((let () (declare (not safe)) (##fx= _g111770_ 2))
                 (apply __with-exception-stack-trace__% _g111771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g111771_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont111336%_ _%exn111337%_ _%error-port111338%_)
        (let ((_%out111340%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out111340%_))
          (display '"*** Unhandled exception in " _%out111340%_)
          (display (current-thread) _%out111340%_)
          (newline _%out111340%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn111337%_ _%out111340%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn111337%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out111340%_)
                (newline _%out111340%_)
                (display-continuation-backtrace _%cont111336%_ _%out111340%_)))
          (let ((__tmp111772 (get-output-string _%out111340%_)))
            (declare (not safe))
            (##write-string __tmp111772 _%error-port111338%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont111345%_ _%exn111346%_)
        (let ((_%error-port111348%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont111345%_
           _%exn111346%_
           _%error-port111348%_))))
    (define dump-stack-trace!
      (lambda _g111774_
        (let ((_g111773_ (let () (declare (not safe)) (##length _g111774_))))
          (cond ((let () (declare (not safe)) (##fx= _g111773_ 2))
                 (apply dump-stack-trace!__0 _g111774_))
                ((let () (declare (not safe)) (##fx= _g111773_ 3))
                 (apply dump-stack-trace!__% _g111774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g111774_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
