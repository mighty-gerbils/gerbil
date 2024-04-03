(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712121898)
  (begin
    (define spawn
      (lambda (_%f106902%_ . _%args106903%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106902%_))
              (let ()
                (let ((_%f106907%_ _%f106902%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn _%f106907%_ _%args106903%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f106902%_)))))
    (define __spawn
      (lambda (_%f106889%_ . _%args106890%_)
        (let ()
          (let ((_%f106893%_ _%f106889%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor _%f106893%_ _%args106890%_ '#!void '#f)))))))
    (define spawn/name
      (lambda (_%name106873%_ _%f106874%_ . _%args106875%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106874%_))
              (let ()
                (let ((_%f106879%_ _%f106874%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/name
                               _%name106873%_
                               _%f106879%_
                               _%args106875%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f106874%_)))))
    (define __spawn/name
      (lambda (_%name106859%_ _%f106860%_ . _%args106861%_)
        (let ()
          (let ((_%f106864%_ _%f106860%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor
                 _%f106864%_
                 _%args106861%_
                 _%name106859%_
                 '#f)))))))
    (define spawn/group
      (lambda (_%name106843%_ _%f106844%_ . _%args106845%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106844%_))
              (let ()
                (let ((_%f106849%_ _%f106844%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/group
                               _%name106843%_
                               _%f106849%_
                               _%args106845%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f106844%_)))))
    (define __spawn/group
      (lambda (_%name106827%_ _%f106828%_ . _%args106829%_)
        (let ()
          (let ((_%f106832%_ _%f106828%_))
            (let ()
              (let ((_%tgroup106841%_ (make-thread-group _%name106827%_)))
                (declare (not safe))
                (spawn-actor
                 _%f106832%_
                 _%args106829%_
                 _%name106827%_
                 _%tgroup106841%_)))))))
    (define spawn-actor
      (lambda (_%f106799%_ _%args106800%_ _%name106801%_ _%tgroup106802%_)
        (let ()
          (letrec ((_%thread-main106805%_
                    (lambda (_%thunk106819%_)
                      (lambda ()
                        (let ((__tmp106917
                               (lambda (_%exn106822%_)
                                 (let ((__tmp106918
                                        (lambda (_%cont106824%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp106919
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont106824%_
                                                        _%exn106822%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp106919))
                                              '#!void)
                                          (let ((__tmp106920
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont106824%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp106920
                                             ##primordial-exception-handler
                                             _%exn106822%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp106918)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp106917
                           _%thunk106819%_))))))
            (let* ((_%thunk106808%_
                    (if (let () (declare (not safe)) (null? _%args106800%_))
                        _%f106799%_
                        (lambda () (apply _%f106799%_ _%args106800%_))))
                   (_%thunk106811%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk106808%_))))
                   (_%tgroup106816%_
                    (let ((_%$e106813%_ _%tgroup106802%_))
                      (if _%$e106813%_
                          _%$e106813%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main106805%_ _%thunk106811%_))
                _%name106801%_
                _%tgroup106816%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk106777%_ _%name106778%_ _%tgroup106779%_)
        (thread-start!
         (make-thread _%thunk106777%_ _%name106778%_ _%tgroup106779%_))))
    (define spawn-thread__0
      (lambda (_%thunk106784%_)
        (let* ((_%name106786%_ absent-obj) (_%tgroup106788%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106784%_ _%name106786%_ _%tgroup106788%_))))
    (define spawn-thread__1
      (lambda (_%thunk106790%_ _%name106791%_)
        (let ((_%tgroup106793%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106790%_ _%name106791%_ _%tgroup106793%_))))
    (define spawn-thread
      (lambda _g106922_
        (let ((_g106921_ (let () (declare (not safe)) (##length _g106922_))))
          (cond ((let () (declare (not safe)) (##fx= _g106921_ 1))
                 (apply (lambda (_%thunk106784%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk106784%_)))
                        _g106922_))
                ((let () (declare (not safe)) (##fx= _g106921_ 2))
                 (apply (lambda (_%thunk106790%_ _%name106791%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk106790%_ _%name106791%_)))
                        _g106922_))
                ((let () (declare (not safe)) (##fx= _g106921_ 3))
                 (apply (lambda (_%thunk106795%_
                                 _%name106796%_
                                 _%tgroup106797%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk106795%_
                             _%name106796%_
                             _%tgroup106797%_)))
                        _g106922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g106922_))))))
    (define thread-local-ref__%
      (lambda (_%key106761%_ _%default106762%_)
        (let ((_%tab106764%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab106764%_ _%key106761%_ _%default106762%_))))
    (define thread-local-ref__0
      (lambda (_%key106769%_)
        (let ((_%default106771%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key106769%_ _%default106771%_))))
    (define thread-local-ref
      (lambda _g106924_
        (let ((_g106923_ (let () (declare (not safe)) (##length _g106924_))))
          (cond ((let () (declare (not safe)) (##fx= _g106923_ 1))
                 (apply (lambda (_%key106769%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key106769%_)))
                        _g106924_))
                ((let () (declare (not safe)) (##fx= _g106923_ 2))
                 (apply (lambda (_%key106773%_ _%default106774%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key106773%_
                             _%default106774%_)))
                        _g106924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g106924_))))))
    (define thread-local-get
      (lambda (_%key106758%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key106758%_ '#f))))
    (define thread-local-set!
      (lambda (_%key106753%_ _%value106754%_)
        (let ((_%tab106756%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab106756%_ _%key106753%_ _%value106754%_))))
    (define thread-local-delete!
      (lambda (_%key106749%_)
        (let ((_%tab106751%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab106751%_ _%key106749%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106730%_ (current-thread)))
          (if (actor-thread? _%thr106730%_)
              (let ()
                (let ((_%$e106733%_ (actor-thread-locals _%thr106730%_)))
                  (if _%$e106733%_
                      (values _%$e106733%_)
                      (let ()
                        (let ((_%tab106737%_
                               (let ()
                                 (declare (not safe))
                                 (make-hash-table-eq))))
                          (actor-thread-locals-set!
                           _%thr106730%_
                           _%tab106737%_)
                          _%tab106737%_)))))
              (if (eq? _%thr106730%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106741%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106730%_))))
                      (if _%$e106741%_
                          ((lambda (_%tab106744%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106744%_)
                           _%$e106741%_)
                          (let ()
                            (let ((_%tab106747%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let ()
                                (declare (not safe))
                                (hash-put!
                                 __thread-locals
                                 _%thr106730%_
                                 _%tab106747%_))
                              (mutex-unlock! __thread-locals-mutex)
                              _%tab106747%_))))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106727%_)
        (if (let () (declare (not safe)) (procedure? _%proc106727%_))
            '#!void
            (let ((__tmp106925
                   (let ((__obj106916
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj106916
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106727%_ '()))
                     __obj106916)))
              (declare (not safe))
              (raise __tmp106925)))
        (set! __unhandled-actor-exception-hook _%proc106727%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx106701%_ _%proc106702%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106701%_))
              (let ()
                (let ((_%mx106706%_ _%mx106701%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106702%_))
                      (let ()
                        (let ((_%proc106716%_ _%proc106702%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-lock _%mx106706%_ _%proc106716%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106702%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
               'contract:
               'mutex?
               'value:
               _%mx106701%_)))))
    (define __with-lock
      (lambda (_%mx106672%_ _%proc106673%_)
        (let ()
          (let ((_%mx106676%_ _%mx106672%_))
            (let ((_%proc106684%_ _%proc106673%_))
              (let ()
                (let ((_%handler106693%_ (current-exception-handler)))
                  (let ((__tmp106927
                         (lambda (_%e106695%_)
                           (let ((__tmp106928
                                  (lambda ()
                                    (mutex-unlock! _%mx106676%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%handler106693%_ _%e106695%_)))))
                             (declare (not safe))
                             (__with-catch void __tmp106928))
                           (let ()
                             (declare (not safe))
                             (##thread-end-with-uncaught-exception!
                              _%e106695%_))))
                        (__tmp106926
                         (lambda ()
                           (mutex-lock! _%mx106676%_)
                           (let ((_%result106699%_
                                  (let ()
                                    (declare (not safe))
                                    (_%proc106684%_))))
                             (mutex-unlock! _%mx106676%_)
                             _%result106699%_))))
                    (declare (not safe))
                    (__with-exception-handler __tmp106927 __tmp106926)))))))))
    (define with-dynamic-lock
      (lambda (_%mx106647%_ _%proc106648%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106647%_))
              (let ()
                (let ((_%mx106652%_ _%mx106647%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106648%_))
                      (let ()
                        (let ((_%proc106662%_ _%proc106648%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-dynamic-lock
                               _%mx106652%_
                               _%proc106662%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106648%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
               'contract:
               'mutex?
               'value:
               _%mx106647%_)))))
    (define __with-dynamic-lock
      (lambda (_%mx106624%_ _%proc106625%_)
        (let ()
          (let ((_%mx106628%_ _%mx106624%_))
            (let ((_%proc106636%_ _%proc106625%_))
              (let ()
                (let ((__tmp106930 (lambda () (mutex-lock! _%mx106628%_)))
                      (__tmp106929 (lambda () (mutex-unlock! _%mx106628%_))))
                  (declare (not safe))
                  (##dynamic-wind
                   __tmp106930
                   _%proc106636%_
                   __tmp106929))))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106589%_ _%error-port106590%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk106589%_))
              (let ()
                (let ((_%thunk106594%_ _%thunk106589%_))
                  (if (let ()
                        (declare (not safe))
                        (port? _%error-port106590%_))
                      (let ()
                        (let ((_%error-port106604%_ _%error-port106590%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-stack-trace__%
                               _%thunk106594%_
                               _%error-port106604%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port106590%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
               'contract:
               'procedure?
               'value:
               _%thunk106589%_)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106617%_)
        (let ((_%error-port106619%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk106617%_
           _%error-port106619%_))))
    (define with-exception-stack-trace
      (lambda _g106932_
        (let ((_g106931_ (let () (declare (not safe)) (##length _g106932_))))
          (cond ((let () (declare (not safe)) (##fx= _g106931_ 1))
                 (apply (lambda (_%thunk106617%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk106617%_)))
                        _g106932_))
                ((let () (declare (not safe)) (##fx= _g106931_ 2))
                 (apply (lambda (_%thunk106621%_ _%error-port106622%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk106621%_
                             _%error-port106622%_)))
                        _g106932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g106932_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106550%_ _%error-port106551%_)
        (let ()
          (let ((_%thunk106554%_ _%thunk106550%_))
            (let ((_%error-port106563%_ _%error-port106551%_))
              (let ()
                (let ((__tmp106933
                       (let ((_%E106572%_ (current-exception-handler)))
                         (lambda (_%exn106574%_)
                           (let ((__tmp106934
                                  (lambda (_%cont106576%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (dump-stack-trace?))
                                        (let ()
                                          (declare (not safe))
                                          (dump-stack-trace!__%
                                           _%cont106576%_
                                           _%exn106574%_
                                           _%error-port106563%_))
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%E106572%_ _%exn106574%_)))))
                             (declare (not safe))
                             (##continuation-capture __tmp106934))))))
                  (declare (not safe))
                  (__with-exception-handler __tmp106933 _%thunk106554%_))))))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106581%_)
        (let ((_%error-port106583%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk106581%_
           _%error-port106583%_))))
    (define __with-exception-stack-trace
      (lambda _g106936_
        (let ((_g106935_ (let () (declare (not safe)) (##length _g106936_))))
          (cond ((let () (declare (not safe)) (##fx= _g106935_ 1))
                 (apply (lambda (_%thunk106581%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk106581%_)))
                        _g106936_))
                ((let () (declare (not safe)) (##fx= _g106935_ 2))
                 (apply (lambda (_%thunk106585%_ _%error-port106586%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk106585%_
                             _%error-port106586%_)))
                        _g106936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g106936_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106531%_ _%exn106532%_ _%error-port106533%_)
        (let ((_%out106535%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106535%_))
          (display '"*** Unhandled exception in " _%out106535%_)
          (display (current-thread) _%out106535%_)
          (newline _%out106535%_)
          (display-exception _%exn106532%_ _%out106535%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106532%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106535%_)
                (newline _%out106535%_)
                (display-continuation-backtrace _%cont106531%_ _%out106535%_)))
          (let ((__tmp106937 (get-output-string _%out106535%_)))
            (declare (not safe))
            (##write-string __tmp106937 _%error-port106533%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106540%_ _%exn106541%_)
        (let ((_%error-port106543%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont106540%_
           _%exn106541%_
           _%error-port106543%_))))
    (define dump-stack-trace!
      (lambda _g106939_
        (let ((_g106938_ (let () (declare (not safe)) (##length _g106939_))))
          (cond ((let () (declare (not safe)) (##fx= _g106938_ 2))
                 (apply (lambda (_%cont106540%_ _%exn106541%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont106540%_
                             _%exn106541%_)))
                        _g106939_))
                ((let () (declare (not safe)) (##fx= _g106938_ 3))
                 (apply (lambda (_%cont106545%_
                                 _%exn106546%_
                                 _%error-port106547%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont106545%_
                             _%exn106546%_
                             _%error-port106547%_)))
                        _g106939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g106939_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
