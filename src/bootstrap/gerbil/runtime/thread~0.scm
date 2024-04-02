(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712093475)
  (begin
    (define spawn
      (lambda (_%f106991%_ . _%args106992%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106991%_))
              (let ()
                (let ((_%f106996%_ _%f106991%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn _%f106996%_ _%args106992%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f106991%_)))))
    (define __spawn
      (lambda (_%f106978%_ . _%args106979%_)
        (let ()
          (let ((_%f106982%_ _%f106978%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor _%f106982%_ _%args106979%_ '#!void '#f)))))))
    (define spawn/name
      (lambda (_%name106962%_ _%f106963%_ . _%args106964%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106963%_))
              (let ()
                (let ((_%f106968%_ _%f106963%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/name
                               _%name106962%_
                               _%f106968%_
                               _%args106964%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f106963%_)))))
    (define __spawn/name
      (lambda (_%name106948%_ _%f106949%_ . _%args106950%_)
        (let ()
          (let ((_%f106953%_ _%f106949%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor
                 _%f106953%_
                 _%args106950%_
                 _%name106948%_
                 '#f)))))))
    (define spawn/group
      (lambda (_%name106932%_ _%f106933%_ . _%args106934%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106933%_))
              (let ()
                (let ((_%f106938%_ _%f106933%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/group
                               _%name106932%_
                               _%f106938%_
                               _%args106934%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f106933%_)))))
    (define __spawn/group
      (lambda (_%name106916%_ _%f106917%_ . _%args106918%_)
        (let ()
          (let ((_%f106921%_ _%f106917%_))
            (let ()
              (let ((_%tgroup106930%_ (make-thread-group _%name106916%_)))
                (declare (not safe))
                (spawn-actor
                 _%f106921%_
                 _%args106918%_
                 _%name106916%_
                 _%tgroup106930%_)))))))
    (define spawn-actor
      (lambda (_%f106888%_ _%args106889%_ _%name106890%_ _%tgroup106891%_)
        (let ()
          (letrec ((_%thread-main106894%_
                    (lambda (_%thunk106908%_)
                      (lambda ()
                        (let ((__tmp107006
                               (lambda (_%exn106911%_)
                                 (let ((__tmp107007
                                        (lambda (_%cont106913%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp107008
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont106913%_
                                                        _%exn106911%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp107008))
                                              '#!void)
                                          (let ((__tmp107009
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont106913%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp107009
                                             ##primordial-exception-handler
                                             _%exn106911%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp107007)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp107006
                           _%thunk106908%_))))))
            (let* ((_%thunk106897%_
                    (if (let () (declare (not safe)) (null? _%args106889%_))
                        _%f106888%_
                        (lambda () (apply _%f106888%_ _%args106889%_))))
                   (_%thunk106900%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk106897%_))))
                   (_%tgroup106905%_
                    (let ((_%$e106902%_ _%tgroup106891%_))
                      (if _%$e106902%_
                          _%$e106902%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main106894%_ _%thunk106900%_))
                _%name106890%_
                _%tgroup106905%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk106866%_ _%name106867%_ _%tgroup106868%_)
        (thread-start!
         (make-thread _%thunk106866%_ _%name106867%_ _%tgroup106868%_))))
    (define spawn-thread__0
      (lambda (_%thunk106873%_)
        (let* ((_%name106875%_ absent-obj) (_%tgroup106877%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106873%_ _%name106875%_ _%tgroup106877%_))))
    (define spawn-thread__1
      (lambda (_%thunk106879%_ _%name106880%_)
        (let ((_%tgroup106882%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106879%_ _%name106880%_ _%tgroup106882%_))))
    (define spawn-thread
      (lambda _g107011_
        (let ((_g107010_ (let () (declare (not safe)) (##length _g107011_))))
          (cond ((let () (declare (not safe)) (##fx= _g107010_ 1))
                 (apply (lambda (_%thunk106873%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk106873%_)))
                        _g107011_))
                ((let () (declare (not safe)) (##fx= _g107010_ 2))
                 (apply (lambda (_%thunk106879%_ _%name106880%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk106879%_ _%name106880%_)))
                        _g107011_))
                ((let () (declare (not safe)) (##fx= _g107010_ 3))
                 (apply (lambda (_%thunk106884%_
                                 _%name106885%_
                                 _%tgroup106886%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk106884%_
                             _%name106885%_
                             _%tgroup106886%_)))
                        _g107011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107011_))))))
    (define thread-local-ref__%
      (lambda (_%key106850%_ _%default106851%_)
        (let ((_%tab106853%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab106853%_ _%key106850%_ _%default106851%_))))
    (define thread-local-ref__0
      (lambda (_%key106858%_)
        (let ((_%default106860%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key106858%_ _%default106860%_))))
    (define thread-local-ref
      (lambda _g107013_
        (let ((_g107012_ (let () (declare (not safe)) (##length _g107013_))))
          (cond ((let () (declare (not safe)) (##fx= _g107012_ 1))
                 (apply (lambda (_%key106858%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key106858%_)))
                        _g107013_))
                ((let () (declare (not safe)) (##fx= _g107012_ 2))
                 (apply (lambda (_%key106862%_ _%default106863%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key106862%_
                             _%default106863%_)))
                        _g107013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107013_))))))
    (define thread-local-get
      (lambda (_%key106847%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key106847%_ '#f))))
    (define thread-local-set!
      (lambda (_%key106842%_ _%value106843%_)
        (let ((_%tab106845%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab106845%_ _%key106842%_ _%value106843%_))))
    (define thread-local-delete!
      (lambda (_%key106838%_)
        (let ((_%tab106840%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab106840%_ _%key106838%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106819%_ (current-thread)))
          (if (actor-thread? _%thr106819%_)
              (let ()
                (let ((_%$e106822%_ (actor-thread-locals _%thr106819%_)))
                  (if _%$e106822%_
                      (values _%$e106822%_)
                      (let ()
                        (let ((_%tab106826%_
                               (let ()
                                 (declare (not safe))
                                 (make-hash-table-eq))))
                          (actor-thread-locals-set!
                           _%thr106819%_
                           _%tab106826%_)
                          _%tab106826%_)))))
              (if (eq? _%thr106819%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106830%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106819%_))))
                      (if _%$e106830%_
                          ((lambda (_%tab106833%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106833%_)
                           _%$e106830%_)
                          (let ()
                            (let ((_%tab106836%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let ()
                                (declare (not safe))
                                (hash-put!
                                 __thread-locals
                                 _%thr106819%_
                                 _%tab106836%_))
                              (mutex-unlock! __thread-locals-mutex)
                              _%tab106836%_))))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106816%_)
        (if (let () (declare (not safe)) (procedure? _%proc106816%_))
            '#!void
            (let ((__tmp107014
                   (let ((__obj107005
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj107005
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106816%_ '()))
                     __obj107005)))
              (declare (not safe))
              (raise __tmp107014)))
        (set! __unhandled-actor-exception-hook _%proc106816%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx106790%_ _%proc106791%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106790%_))
              (let ()
                (let ((_%mx106795%_ _%mx106790%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106791%_))
                      (let ()
                        (let ((_%proc106805%_ _%proc106791%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-lock _%mx106795%_ _%proc106805%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106791%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
               'contract:
               'mutex?
               'value:
               _%mx106790%_)))))
    (define __with-lock
      (lambda (_%mx106761%_ _%proc106762%_)
        (let ()
          (let ((_%mx106765%_ _%mx106761%_))
            (let ((_%proc106773%_ _%proc106762%_))
              (let ()
                (let ((_%handler106782%_ (current-exception-handler)))
                  (let ((__tmp107016
                         (lambda (_%e106784%_)
                           (let ((__tmp107017
                                  (lambda ()
                                    (mutex-unlock! _%mx106765%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%handler106782%_ _%e106784%_)))))
                             (declare (not safe))
                             (__with-catch void __tmp107017))
                           (let ()
                             (declare (not safe))
                             (##thread-end-with-uncaught-exception!
                              _%e106784%_))))
                        (__tmp107015
                         (lambda ()
                           (mutex-lock! _%mx106765%_)
                           (let ((_%result106788%_
                                  (let ()
                                    (declare (not safe))
                                    (_%proc106773%_))))
                             (mutex-unlock! _%mx106765%_)
                             _%result106788%_))))
                    (declare (not safe))
                    (__with-exception-handler __tmp107016 __tmp107015)))))))))
    (define with-dynamic-lock
      (lambda (_%mx106736%_ _%proc106737%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106736%_))
              (let ()
                (let ((_%mx106741%_ _%mx106736%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106737%_))
                      (let ()
                        (let ((_%proc106751%_ _%proc106737%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-dynamic-lock
                               _%mx106741%_
                               _%proc106751%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106737%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
               'contract:
               'mutex?
               'value:
               _%mx106736%_)))))
    (define __with-dynamic-lock
      (lambda (_%mx106713%_ _%proc106714%_)
        (let ()
          (let ((_%mx106717%_ _%mx106713%_))
            (let ((_%proc106725%_ _%proc106714%_))
              (let ()
                (let ((__tmp107019 (lambda () (mutex-lock! _%mx106717%_)))
                      (__tmp107018 (lambda () (mutex-unlock! _%mx106717%_))))
                  (declare (not safe))
                  (##dynamic-wind
                   __tmp107019
                   _%proc106725%_
                   __tmp107018))))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106678%_ _%error-port106679%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk106678%_))
              (let ()
                (let ((_%thunk106683%_ _%thunk106678%_))
                  (if (let ()
                        (declare (not safe))
                        (port? _%error-port106679%_))
                      (let ()
                        (let ((_%error-port106693%_ _%error-port106679%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-stack-trace__%
                               _%thunk106683%_
                               _%error-port106693%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port106679%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
               'contract:
               'procedure?
               'value:
               _%thunk106678%_)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106706%_)
        (let ((_%error-port106708%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk106706%_
           _%error-port106708%_))))
    (define with-exception-stack-trace
      (lambda _g107021_
        (let ((_g107020_ (let () (declare (not safe)) (##length _g107021_))))
          (cond ((let () (declare (not safe)) (##fx= _g107020_ 1))
                 (apply (lambda (_%thunk106706%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk106706%_)))
                        _g107021_))
                ((let () (declare (not safe)) (##fx= _g107020_ 2))
                 (apply (lambda (_%thunk106710%_ _%error-port106711%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk106710%_
                             _%error-port106711%_)))
                        _g107021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107021_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106639%_ _%error-port106640%_)
        (let ()
          (let ((_%thunk106643%_ _%thunk106639%_))
            (let ((_%error-port106652%_ _%error-port106640%_))
              (let ()
                (let ((__tmp107022
                       (let ((_%E106661%_ (current-exception-handler)))
                         (lambda (_%exn106663%_)
                           (let ((__tmp107023
                                  (lambda (_%cont106665%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (dump-stack-trace?))
                                        (let ()
                                          (declare (not safe))
                                          (dump-stack-trace!__%
                                           _%cont106665%_
                                           _%exn106663%_
                                           _%error-port106652%_))
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%E106661%_ _%exn106663%_)))))
                             (declare (not safe))
                             (##continuation-capture __tmp107023))))))
                  (declare (not safe))
                  (__with-exception-handler __tmp107022 _%thunk106643%_))))))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106670%_)
        (let ((_%error-port106672%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk106670%_
           _%error-port106672%_))))
    (define __with-exception-stack-trace
      (lambda _g107025_
        (let ((_g107024_ (let () (declare (not safe)) (##length _g107025_))))
          (cond ((let () (declare (not safe)) (##fx= _g107024_ 1))
                 (apply (lambda (_%thunk106670%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk106670%_)))
                        _g107025_))
                ((let () (declare (not safe)) (##fx= _g107024_ 2))
                 (apply (lambda (_%thunk106674%_ _%error-port106675%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk106674%_
                             _%error-port106675%_)))
                        _g107025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107025_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106620%_ _%exn106621%_ _%error-port106622%_)
        (let ((_%out106624%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106624%_))
          (display '"*** Unhandled exception in " _%out106624%_)
          (display (current-thread) _%out106624%_)
          (newline _%out106624%_)
          (display-exception _%exn106621%_ _%out106624%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106621%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106624%_)
                (newline _%out106624%_)
                (display-continuation-backtrace _%cont106620%_ _%out106624%_)))
          (let ((__tmp107026 (get-output-string _%out106624%_)))
            (declare (not safe))
            (##write-string __tmp107026 _%error-port106622%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106629%_ _%exn106630%_)
        (let ((_%error-port106632%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont106629%_
           _%exn106630%_
           _%error-port106632%_))))
    (define dump-stack-trace!
      (lambda _g107028_
        (let ((_g107027_ (let () (declare (not safe)) (##length _g107028_))))
          (cond ((let () (declare (not safe)) (##fx= _g107027_ 2))
                 (apply (lambda (_%cont106629%_ _%exn106630%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont106629%_
                             _%exn106630%_)))
                        _g107028_))
                ((let () (declare (not safe)) (##fx= _g107027_ 3))
                 (apply (lambda (_%cont106634%_
                                 _%exn106635%_
                                 _%error-port106636%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont106634%_
                             _%exn106635%_
                             _%error-port106636%_)))
                        _g107028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107028_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
