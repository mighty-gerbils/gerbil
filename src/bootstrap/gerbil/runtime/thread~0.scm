(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712084084)
  (begin
    (define spawn
      (lambda (_%f106796%_ . _%args106797%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106796%_))
              (let ()
                (let ((_%f106801%_ _%f106796%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn _%f106801%_ _%args106797%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f106796%_)))))
    (define __spawn
      (lambda (_%f106783%_ . _%args106784%_)
        (let ()
          (let ((_%f106787%_ _%f106783%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor _%f106787%_ _%args106784%_ '#!void '#f)))))))
    (define spawn/name
      (lambda (_%name106767%_ _%f106768%_ . _%args106769%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106768%_))
              (let ()
                (let ((_%f106773%_ _%f106768%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/name
                               _%name106767%_
                               _%f106773%_
                               _%args106769%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f106768%_)))))
    (define __spawn/name
      (lambda (_%name106753%_ _%f106754%_ . _%args106755%_)
        (let ()
          (let ((_%f106758%_ _%f106754%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor
                 _%f106758%_
                 _%args106755%_
                 _%name106753%_
                 '#f)))))))
    (define spawn/group
      (lambda (_%name106737%_ _%f106738%_ . _%args106739%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106738%_))
              (let ()
                (let ((_%f106743%_ _%f106738%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/group
                               _%name106737%_
                               _%f106743%_
                               _%args106739%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f106738%_)))))
    (define __spawn/group
      (lambda (_%name106721%_ _%f106722%_ . _%args106723%_)
        (let ()
          (let ((_%f106726%_ _%f106722%_))
            (let ()
              (let ((_%tgroup106735%_ (make-thread-group _%name106721%_)))
                (declare (not safe))
                (spawn-actor
                 _%f106726%_
                 _%args106723%_
                 _%name106721%_
                 _%tgroup106735%_)))))))
    (define spawn-actor
      (lambda (_%f106693%_ _%args106694%_ _%name106695%_ _%tgroup106696%_)
        (let ()
          (letrec ((_%thread-main106699%_
                    (lambda (_%thunk106713%_)
                      (lambda ()
                        (let ((__tmp106811
                               (lambda (_%exn106716%_)
                                 (let ((__tmp106812
                                        (lambda (_%cont106718%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp106813
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont106718%_
                                                        _%exn106716%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp106813))
                                              '#!void)
                                          (let ((__tmp106814
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont106718%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp106814
                                             ##primordial-exception-handler
                                             _%exn106716%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp106812)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp106811
                           _%thunk106713%_))))))
            (let* ((_%thunk106702%_
                    (if (let () (declare (not safe)) (null? _%args106694%_))
                        _%f106693%_
                        (lambda () (apply _%f106693%_ _%args106694%_))))
                   (_%thunk106705%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk106702%_))))
                   (_%tgroup106710%_
                    (let ((_%$e106707%_ _%tgroup106696%_))
                      (if _%$e106707%_
                          _%$e106707%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main106699%_ _%thunk106705%_))
                _%name106695%_
                _%tgroup106710%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk106671%_ _%name106672%_ _%tgroup106673%_)
        (thread-start!
         (make-thread _%thunk106671%_ _%name106672%_ _%tgroup106673%_))))
    (define spawn-thread__0
      (lambda (_%thunk106678%_)
        (let* ((_%name106680%_ absent-obj) (_%tgroup106682%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106678%_ _%name106680%_ _%tgroup106682%_))))
    (define spawn-thread__1
      (lambda (_%thunk106684%_ _%name106685%_)
        (let ((_%tgroup106687%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106684%_ _%name106685%_ _%tgroup106687%_))))
    (define spawn-thread
      (lambda _g106816_
        (let ((_g106815_ (let () (declare (not safe)) (##length _g106816_))))
          (cond ((let () (declare (not safe)) (##fx= _g106815_ 1))
                 (apply (lambda (_%thunk106678%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk106678%_)))
                        _g106816_))
                ((let () (declare (not safe)) (##fx= _g106815_ 2))
                 (apply (lambda (_%thunk106684%_ _%name106685%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk106684%_ _%name106685%_)))
                        _g106816_))
                ((let () (declare (not safe)) (##fx= _g106815_ 3))
                 (apply (lambda (_%thunk106689%_
                                 _%name106690%_
                                 _%tgroup106691%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk106689%_
                             _%name106690%_
                             _%tgroup106691%_)))
                        _g106816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g106816_))))))
    (define thread-local-ref__%
      (lambda (_%key106655%_ _%default106656%_)
        (let ((_%tab106658%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab106658%_ _%key106655%_ _%default106656%_))))
    (define thread-local-ref__0
      (lambda (_%key106663%_)
        (let ((_%default106665%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key106663%_ _%default106665%_))))
    (define thread-local-ref
      (lambda _g106818_
        (let ((_g106817_ (let () (declare (not safe)) (##length _g106818_))))
          (cond ((let () (declare (not safe)) (##fx= _g106817_ 1))
                 (apply (lambda (_%key106663%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key106663%_)))
                        _g106818_))
                ((let () (declare (not safe)) (##fx= _g106817_ 2))
                 (apply (lambda (_%key106667%_ _%default106668%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key106667%_
                             _%default106668%_)))
                        _g106818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g106818_))))))
    (define thread-local-get
      (lambda (_%key106652%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key106652%_ '#f))))
    (define thread-local-set!
      (lambda (_%key106647%_ _%value106648%_)
        (let ((_%tab106650%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab106650%_ _%key106647%_ _%value106648%_))))
    (define thread-local-delete!
      (lambda (_%key106643%_)
        (let ((_%tab106645%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab106645%_ _%key106643%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106624%_ (current-thread)))
          (if (actor-thread? _%thr106624%_)
              (let ()
                (let ((_%$e106627%_ (actor-thread-locals _%thr106624%_)))
                  (if _%$e106627%_
                      (values _%$e106627%_)
                      (let ()
                        (let ((_%tab106631%_
                               (let ()
                                 (declare (not safe))
                                 (make-hash-table-eq))))
                          (actor-thread-locals-set!
                           _%thr106624%_
                           _%tab106631%_)
                          _%tab106631%_)))))
              (if (eq? _%thr106624%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106635%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106624%_))))
                      (if _%$e106635%_
                          ((lambda (_%tab106638%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106638%_)
                           _%$e106635%_)
                          (let ()
                            (let ((_%tab106641%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let ()
                                (declare (not safe))
                                (hash-put!
                                 __thread-locals
                                 _%thr106624%_
                                 _%tab106641%_))
                              (mutex-unlock! __thread-locals-mutex)
                              _%tab106641%_))))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106621%_)
        (if (let () (declare (not safe)) (procedure? _%proc106621%_))
            '#!void
            (let ((__tmp106819
                   (let ((__obj106810
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj106810
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106621%_ '()))
                     __obj106810)))
              (declare (not safe))
              (raise __tmp106819)))
        (set! __unhandled-actor-exception-hook _%proc106621%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx106595%_ _%proc106596%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106595%_))
              (let ()
                (let ((_%mx106600%_ _%mx106595%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106596%_))
                      (let ()
                        (let ((_%proc106610%_ _%proc106596%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-lock _%mx106600%_ _%proc106610%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106596%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
               'contract:
               'mutex?
               'value:
               _%mx106595%_)))))
    (define __with-lock
      (lambda (_%mx106566%_ _%proc106567%_)
        (let ()
          (let ((_%mx106570%_ _%mx106566%_))
            (let ((_%proc106578%_ _%proc106567%_))
              (let ()
                (let ((_%handler106587%_ (current-exception-handler)))
                  (let ((__tmp106821
                         (lambda (_%e106589%_)
                           (let ((__tmp106822
                                  (lambda ()
                                    (mutex-unlock! _%mx106570%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%handler106587%_ _%e106589%_)))))
                             (declare (not safe))
                             (__with-catch void __tmp106822))
                           (let ()
                             (declare (not safe))
                             (##thread-end-with-uncaught-exception!
                              _%e106589%_))))
                        (__tmp106820
                         (lambda ()
                           (mutex-lock! _%mx106570%_)
                           (let ((_%result106593%_
                                  (let ()
                                    (declare (not safe))
                                    (_%proc106578%_))))
                             (mutex-unlock! _%mx106570%_)
                             _%result106593%_))))
                    (declare (not safe))
                    (__with-exception-handler __tmp106821 __tmp106820)))))))))
    (define with-dynamic-lock
      (lambda (_%mx106541%_ _%proc106542%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106541%_))
              (let ()
                (let ((_%mx106546%_ _%mx106541%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106542%_))
                      (let ()
                        (let ((_%proc106556%_ _%proc106542%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-dynamic-lock
                               _%mx106546%_
                               _%proc106556%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106542%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
               'contract:
               'mutex?
               'value:
               _%mx106541%_)))))
    (define __with-dynamic-lock
      (lambda (_%mx106518%_ _%proc106519%_)
        (let ()
          (let ((_%mx106522%_ _%mx106518%_))
            (let ((_%proc106530%_ _%proc106519%_))
              (let ()
                (let ((__tmp106824 (lambda () (mutex-lock! _%mx106522%_)))
                      (__tmp106823 (lambda () (mutex-unlock! _%mx106522%_))))
                  (declare (not safe))
                  (##dynamic-wind
                   __tmp106824
                   _%proc106530%_
                   __tmp106823))))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106483%_ _%error-port106484%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk106483%_))
              (let ()
                (let ((_%thunk106488%_ _%thunk106483%_))
                  (if (let ()
                        (declare (not safe))
                        (port? _%error-port106484%_))
                      (let ()
                        (let ((_%error-port106498%_ _%error-port106484%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-stack-trace__%
                               _%thunk106488%_
                               _%error-port106498%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port106484%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
               'contract:
               'procedure?
               'value:
               _%thunk106483%_)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106511%_)
        (let ((_%error-port106513%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk106511%_
           _%error-port106513%_))))
    (define with-exception-stack-trace
      (lambda _g106826_
        (let ((_g106825_ (let () (declare (not safe)) (##length _g106826_))))
          (cond ((let () (declare (not safe)) (##fx= _g106825_ 1))
                 (apply (lambda (_%thunk106511%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk106511%_)))
                        _g106826_))
                ((let () (declare (not safe)) (##fx= _g106825_ 2))
                 (apply (lambda (_%thunk106515%_ _%error-port106516%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk106515%_
                             _%error-port106516%_)))
                        _g106826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g106826_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106444%_ _%error-port106445%_)
        (let ()
          (let ((_%thunk106448%_ _%thunk106444%_))
            (let ((_%error-port106457%_ _%error-port106445%_))
              (let ()
                (let ((__tmp106827
                       (let ((_%E106466%_ (current-exception-handler)))
                         (lambda (_%exn106468%_)
                           (let ((__tmp106828
                                  (lambda (_%cont106470%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (dump-stack-trace?))
                                        (let ()
                                          (declare (not safe))
                                          (dump-stack-trace!__%
                                           _%cont106470%_
                                           _%exn106468%_
                                           _%error-port106457%_))
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%E106466%_ _%exn106468%_)))))
                             (declare (not safe))
                             (##continuation-capture __tmp106828))))))
                  (declare (not safe))
                  (__with-exception-handler __tmp106827 _%thunk106448%_))))))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106475%_)
        (let ((_%error-port106477%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk106475%_
           _%error-port106477%_))))
    (define __with-exception-stack-trace
      (lambda _g106830_
        (let ((_g106829_ (let () (declare (not safe)) (##length _g106830_))))
          (cond ((let () (declare (not safe)) (##fx= _g106829_ 1))
                 (apply (lambda (_%thunk106475%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk106475%_)))
                        _g106830_))
                ((let () (declare (not safe)) (##fx= _g106829_ 2))
                 (apply (lambda (_%thunk106479%_ _%error-port106480%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk106479%_
                             _%error-port106480%_)))
                        _g106830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g106830_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106425%_ _%exn106426%_ _%error-port106427%_)
        (let ((_%out106429%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106429%_))
          (display '"*** Unhandled exception in " _%out106429%_)
          (display (current-thread) _%out106429%_)
          (newline _%out106429%_)
          (display-exception _%exn106426%_ _%out106429%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106426%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106429%_)
                (newline _%out106429%_)
                (display-continuation-backtrace _%cont106425%_ _%out106429%_)))
          (let ((__tmp106831 (get-output-string _%out106429%_)))
            (declare (not safe))
            (##write-string __tmp106831 _%error-port106427%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106434%_ _%exn106435%_)
        (let ((_%error-port106437%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont106434%_
           _%exn106435%_
           _%error-port106437%_))))
    (define dump-stack-trace!
      (lambda _g106833_
        (let ((_g106832_ (let () (declare (not safe)) (##length _g106833_))))
          (cond ((let () (declare (not safe)) (##fx= _g106832_ 2))
                 (apply (lambda (_%cont106434%_ _%exn106435%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont106434%_
                             _%exn106435%_)))
                        _g106833_))
                ((let () (declare (not safe)) (##fx= _g106832_ 3))
                 (apply (lambda (_%cont106439%_
                                 _%exn106440%_
                                 _%error-port106441%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont106439%_
                             _%exn106440%_
                             _%error-port106441%_)))
                        _g106833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g106833_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
