(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712697255)
  (begin
    (define spawn
      (lambda (_%f106774%_ . _%args106775%_)
        (if (procedure? _%f106774%_)
            (let ((_%f106779%_ _%f106774%_))
              (declare (not safe))
              (##apply __spawn _%f106779%_ _%args106775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f106774%_)
              '#!void))))
    (define __spawn
      (lambda (_%f106761%_ . _%args106762%_)
        (let ((_%f106765%_ _%f106761%_))
          (spawn-actor _%f106765%_ _%args106762%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name106745%_ _%f106746%_ . _%args106747%_)
        (if (procedure? _%f106746%_)
            (let ((_%f106751%_ _%f106746%_))
              (declare (not safe))
              (##apply __spawn/name _%name106745%_ _%f106751%_ _%args106747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f106746%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name106731%_ _%f106732%_ . _%args106733%_)
        (let ((_%f106736%_ _%f106732%_))
          (spawn-actor _%f106736%_ _%args106733%_ _%name106731%_ '#f))))
    (define spawn/group
      (lambda (_%name106715%_ _%f106716%_ . _%args106717%_)
        (if (procedure? _%f106716%_)
            (let ((_%f106721%_ _%f106716%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name106715%_
                       _%f106721%_
                       _%args106717%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f106716%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name106699%_ _%f106700%_ . _%args106701%_)
        (let* ((_%f106704%_ _%f106700%_)
               (_%tgroup106713%_ (make-thread-group _%name106699%_)))
          (spawn-actor
           _%f106704%_
           _%args106701%_
           _%name106699%_
           _%tgroup106713%_))))
    (define spawn-actor
      (lambda (_%f106671%_ _%args106672%_ _%name106673%_ _%tgroup106674%_)
        (letrec ((_%thread-main106677%_
                  (lambda (_%thunk106691%_)
                    (lambda ()
                      (let ((__tmp106789
                             (lambda (_%exn106694%_)
                               (let ((__tmp106790
                                      (lambda (_%cont106696%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp106791
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont106696%_
                                                      _%exn106694%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp106791))
                                            '#!void)
                                        (let ((__tmp106792
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont106696%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp106792
                                           ##primordial-exception-handler
                                           _%exn106694%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp106790)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp106789
                         _%thunk106691%_))))))
          (let* ((_%thunk106680%_
                  (if (null? _%args106672%_)
                      _%f106671%_
                      (lambda () (apply _%f106671%_ _%args106672%_))))
                 (_%thunk106683%_
                  (lambda () (with-exception-stack-trace__0 _%thunk106680%_)))
                 (_%tgroup106688%_
                  (let ((_%$e106685%_ _%tgroup106674%_))
                    (if _%$e106685%_ _%$e106685%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main106677%_ _%thunk106683%_)
              _%name106673%_
              _%tgroup106688%_))))))
    (define spawn-thread__%
      (lambda (_%thunk106649%_ _%name106650%_ _%tgroup106651%_)
        (thread-start!
         (make-thread _%thunk106649%_ _%name106650%_ _%tgroup106651%_))))
    (define spawn-thread__0
      (lambda (_%thunk106656%_)
        (let* ((_%name106658%_ absent-obj) (_%tgroup106660%_ absent-obj))
          (spawn-thread__% _%thunk106656%_ _%name106658%_ _%tgroup106660%_))))
    (define spawn-thread__1
      (lambda (_%thunk106662%_ _%name106663%_)
        (let ((_%tgroup106665%_ absent-obj))
          (spawn-thread__% _%thunk106662%_ _%name106663%_ _%tgroup106665%_))))
    (define spawn-thread
      (lambda _g106794_
        (let ((_g106793_ (let () (declare (not safe)) (##length _g106794_))))
          (cond ((let () (declare (not safe)) (##fx= _g106793_ 1))
                 (apply spawn-thread__0 _g106794_))
                ((let () (declare (not safe)) (##fx= _g106793_ 2))
                 (apply spawn-thread__1 _g106794_))
                ((let () (declare (not safe)) (##fx= _g106793_ 3))
                 (apply spawn-thread__% _g106794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g106794_))))))
    (define thread-local-ref__%
      (lambda (_%key106633%_ _%default106634%_)
        (let ((_%tab106636%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab106636%_ _%key106633%_ _%default106634%_))))
    (define thread-local-ref__0
      (lambda (_%key106641%_)
        (let ((_%default106643%_ absent-obj))
          (thread-local-ref__% _%key106641%_ _%default106643%_))))
    (define thread-local-ref
      (lambda _g106796_
        (let ((_g106795_ (let () (declare (not safe)) (##length _g106796_))))
          (cond ((let () (declare (not safe)) (##fx= _g106795_ 1))
                 (apply thread-local-ref__0 _g106796_))
                ((let () (declare (not safe)) (##fx= _g106795_ 2))
                 (apply thread-local-ref__% _g106796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g106796_))))))
    (define thread-local-get
      (lambda (_%key106630%_) (thread-local-ref__% _%key106630%_ '#f)))
    (define thread-local-set!
      (lambda (_%key106625%_ _%value106626%_)
        (let ((_%tab106628%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab106628%_ _%key106625%_ _%value106626%_))))
    (define thread-local-delete!
      (lambda (_%key106621%_)
        (let ((_%tab106623%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab106623%_ _%key106621%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106602%_ (current-thread)))
          (if (actor-thread? _%thr106602%_)
              (let ((_%$e106605%_ (actor-thread-locals _%thr106602%_)))
                (if _%$e106605%_
                    (values _%$e106605%_)
                    (let ((_%tab106609%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr106602%_ _%tab106609%_)
                      _%tab106609%_)))
              (if (eq? _%thr106602%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106613%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106602%_))))
                      (if _%$e106613%_
                          ((lambda (_%tab106616%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106616%_)
                           _%$e106613%_)
                          (let ((_%tab106619%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr106602%_
                               _%tab106619%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab106619%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106599%_)
        (if (procedure? _%proc106599%_)
            '#!void
            (let ((__tmp106797
                   (let ((__obj106788
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj106788
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106599%_ '()))
                     __obj106788)))
              (declare (not safe))
              (raise __tmp106797)))
        (set! __unhandled-actor-exception-hook _%proc106599%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx106573%_ _%proc106574%_)
        (if (mutex? _%mx106573%_)
            (let ((_%mx106578%_ _%mx106573%_))
              (if (procedure? _%proc106574%_)
                  (let ((_%proc106588%_ _%proc106574%_))
                    (__with-lock _%mx106578%_ _%proc106588%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc106574%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
               'contract:
               'mutex?
               'value:
               _%mx106573%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx106544%_ _%proc106545%_)
        (let* ((_%mx106548%_ _%mx106544%_)
               (_%proc106556%_ _%proc106545%_)
               (_%handler106565%_ (current-exception-handler)))
          (let ((__tmp106799
                 (lambda (_%e106567%_)
                   (let ((__tmp106800
                          (lambda ()
                            (mutex-unlock! _%mx106548%_)
                            (let ()
                              (declare (not safe))
                              (_%handler106565%_ _%e106567%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp106800))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e106567%_))))
                (__tmp106798
                 (lambda ()
                   (mutex-lock! _%mx106548%_)
                   (let ((_%result106571%_
                          (let () (declare (not safe)) (_%proc106556%_))))
                     (mutex-unlock! _%mx106548%_)
                     _%result106571%_))))
            (declare (not safe))
            (__with-exception-handler __tmp106799 __tmp106798)))))
    (define with-dynamic-lock
      (lambda (_%mx106519%_ _%proc106520%_)
        (if (mutex? _%mx106519%_)
            (let ((_%mx106524%_ _%mx106519%_))
              (if (procedure? _%proc106520%_)
                  (let ((_%proc106534%_ _%proc106520%_))
                    (__with-dynamic-lock _%mx106524%_ _%proc106534%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc106520%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
               'contract:
               'mutex?
               'value:
               _%mx106519%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx106496%_ _%proc106497%_)
        (let* ((_%mx106500%_ _%mx106496%_) (_%proc106508%_ _%proc106497%_))
          (let ((__tmp106802 (lambda () (mutex-lock! _%mx106500%_)))
                (__tmp106801 (lambda () (mutex-unlock! _%mx106500%_))))
            (declare (not safe))
            (##dynamic-wind __tmp106802 _%proc106508%_ __tmp106801)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106461%_ _%error-port106462%_)
        (if (procedure? _%thunk106461%_)
            (let ((_%thunk106466%_ _%thunk106461%_))
              (if (port? _%error-port106462%_)
                  (let ((_%error-port106476%_ _%error-port106462%_))
                    (__with-exception-stack-trace__%
                     _%thunk106466%_
                     _%error-port106476%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port106462%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
               'contract:
               'procedure?
               'value:
               _%thunk106461%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106489%_)
        (let ((_%error-port106491%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk106489%_
           _%error-port106491%_))))
    (define with-exception-stack-trace
      (lambda _g106804_
        (let ((_g106803_ (let () (declare (not safe)) (##length _g106804_))))
          (cond ((let () (declare (not safe)) (##fx= _g106803_ 1))
                 (apply with-exception-stack-trace__0 _g106804_))
                ((let () (declare (not safe)) (##fx= _g106803_ 2))
                 (apply with-exception-stack-trace__% _g106804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g106804_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106422%_ _%error-port106423%_)
        (let* ((_%thunk106426%_ _%thunk106422%_)
               (_%error-port106435%_ _%error-port106423%_)
               (__tmp106805
                (let ((_%E106444%_ (current-exception-handler)))
                  (lambda (_%exn106446%_)
                    (let ((__tmp106806
                           (lambda (_%cont106448%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont106448%_
                                  _%exn106446%_
                                  _%error-port106435%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E106444%_ _%exn106446%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp106806))))))
          (declare (not safe))
          (__with-exception-handler __tmp106805 _%thunk106426%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106453%_)
        (let ((_%error-port106455%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk106453%_
           _%error-port106455%_))))
    (define __with-exception-stack-trace
      (lambda _g106808_
        (let ((_g106807_ (let () (declare (not safe)) (##length _g106808_))))
          (cond ((let () (declare (not safe)) (##fx= _g106807_ 1))
                 (apply __with-exception-stack-trace__0 _g106808_))
                ((let () (declare (not safe)) (##fx= _g106807_ 2))
                 (apply __with-exception-stack-trace__% _g106808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g106808_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106403%_ _%exn106404%_ _%error-port106405%_)
        (let ((_%out106407%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106407%_))
          (display '"*** Unhandled exception in " _%out106407%_)
          (display (current-thread) _%out106407%_)
          (newline _%out106407%_)
          (display-exception _%exn106404%_ _%out106407%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106404%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106407%_)
                (newline _%out106407%_)
                (display-continuation-backtrace _%cont106403%_ _%out106407%_)))
          (let ((__tmp106809 (get-output-string _%out106407%_)))
            (declare (not safe))
            (##write-string __tmp106809 _%error-port106405%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106412%_ _%exn106413%_)
        (let ((_%error-port106415%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont106412%_
           _%exn106413%_
           _%error-port106415%_))))
    (define dump-stack-trace!
      (lambda _g106811_
        (let ((_g106810_ (let () (declare (not safe)) (##length _g106811_))))
          (cond ((let () (declare (not safe)) (##fx= _g106810_ 2))
                 (apply dump-stack-trace!__0 _g106811_))
                ((let () (declare (not safe)) (##fx= _g106810_ 3))
                 (apply dump-stack-trace!__% _g106811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g106811_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
