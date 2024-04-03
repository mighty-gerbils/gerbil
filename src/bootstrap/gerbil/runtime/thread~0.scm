(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712124234)
  (begin
    (define spawn
      (lambda (_%f106937%_ . _%args106938%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106937%_))
              (let ()
                (let ((_%f106942%_ _%f106937%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn _%f106942%_ _%args106938%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f106937%_)))))
    (define __spawn
      (lambda (_%f106924%_ . _%args106925%_)
        (let ()
          (let ((_%f106928%_ _%f106924%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor _%f106928%_ _%args106925%_ '#!void '#f)))))))
    (define spawn/name
      (lambda (_%name106908%_ _%f106909%_ . _%args106910%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106909%_))
              (let ()
                (let ((_%f106914%_ _%f106909%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/name
                               _%name106908%_
                               _%f106914%_
                               _%args106910%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f106909%_)))))
    (define __spawn/name
      (lambda (_%name106894%_ _%f106895%_ . _%args106896%_)
        (let ()
          (let ((_%f106899%_ _%f106895%_))
            (let ()
              (let ()
                (declare (not safe))
                (spawn-actor
                 _%f106899%_
                 _%args106896%_
                 _%name106894%_
                 '#f)))))))
    (define spawn/group
      (lambda (_%name106878%_ _%f106879%_ . _%args106880%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%f106879%_))
              (let ()
                (let ((_%f106884%_ _%f106879%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __spawn/group
                               _%name106878%_
                               _%f106884%_
                               _%args106880%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f106879%_)))))
    (define __spawn/group
      (lambda (_%name106862%_ _%f106863%_ . _%args106864%_)
        (let ()
          (let ((_%f106867%_ _%f106863%_))
            (let ()
              (let ((_%tgroup106876%_ (make-thread-group _%name106862%_)))
                (declare (not safe))
                (spawn-actor
                 _%f106867%_
                 _%args106864%_
                 _%name106862%_
                 _%tgroup106876%_)))))))
    (define spawn-actor
      (lambda (_%f106834%_ _%args106835%_ _%name106836%_ _%tgroup106837%_)
        (let ()
          (letrec ((_%thread-main106840%_
                    (lambda (_%thunk106854%_)
                      (lambda ()
                        (let ((__tmp106952
                               (lambda (_%exn106857%_)
                                 (let ((__tmp106953
                                        (lambda (_%cont106859%_)
                                          (if __unhandled-actor-exception-hook
                                              (let ((__tmp106954
                                                     (lambda ()
                                                       (__unhandled-actor-exception-hook
                                                        _%cont106859%_
                                                        _%exn106857%_))))
                                                (declare (not safe))
                                                (__with-catch
                                                 void
                                                 __tmp106954))
                                              '#!void)
                                          (let ((__tmp106955
                                                 (let ()
                                                   (declare (not safe))
                                                   (##continuation-last
                                                    _%cont106859%_))))
                                            (declare (not safe))
                                            (##continuation-graft
                                             __tmp106955
                                             ##primordial-exception-handler
                                             _%exn106857%_)))))
                                   (declare (not safe))
                                   (##continuation-capture __tmp106953)))))
                          (declare (not safe))
                          (with-exception-handler
                           __tmp106952
                           _%thunk106854%_))))))
            (let* ((_%thunk106843%_
                    (if (let () (declare (not safe)) (null? _%args106835%_))
                        _%f106834%_
                        (lambda () (apply _%f106834%_ _%args106835%_))))
                   (_%thunk106846%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (with-exception-stack-trace__0 _%thunk106843%_))))
                   (_%tgroup106851%_
                    (let ((_%$e106848%_ _%tgroup106837%_))
                      (if _%$e106848%_
                          _%$e106848%_
                          (let ()
                            (declare (not safe))
                            (current-thread-group))))))
              (thread-start!
               (thread-init!
                (construct-actor-thread '#f '0)
                (let ()
                  (declare (not safe))
                  (_%thread-main106840%_ _%thunk106846%_))
                _%name106836%_
                _%tgroup106851%_)))))))
    (define spawn-thread__%
      (lambda (_%thunk106812%_ _%name106813%_ _%tgroup106814%_)
        (thread-start!
         (make-thread _%thunk106812%_ _%name106813%_ _%tgroup106814%_))))
    (define spawn-thread__0
      (lambda (_%thunk106819%_)
        (let* ((_%name106821%_ absent-obj) (_%tgroup106823%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106819%_ _%name106821%_ _%tgroup106823%_))))
    (define spawn-thread__1
      (lambda (_%thunk106825%_ _%name106826%_)
        (let ((_%tgroup106828%_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _%thunk106825%_ _%name106826%_ _%tgroup106828%_))))
    (define spawn-thread
      (lambda _g106957_
        (let ((_g106956_ (let () (declare (not safe)) (##length _g106957_))))
          (cond ((let () (declare (not safe)) (##fx= _g106956_ 1))
                 (apply (lambda (_%thunk106819%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _%thunk106819%_)))
                        _g106957_))
                ((let () (declare (not safe)) (##fx= _g106956_ 2))
                 (apply (lambda (_%thunk106825%_ _%name106826%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _%thunk106825%_ _%name106826%_)))
                        _g106957_))
                ((let () (declare (not safe)) (##fx= _g106956_ 3))
                 (apply (lambda (_%thunk106830%_
                                 _%name106831%_
                                 _%tgroup106832%_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _%thunk106830%_
                             _%name106831%_
                             _%tgroup106832%_)))
                        _g106957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g106957_))))))
    (define thread-local-ref__%
      (lambda (_%key106796%_ _%default106797%_)
        (let ((_%tab106799%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _%tab106799%_ _%key106796%_ _%default106797%_))))
    (define thread-local-ref__0
      (lambda (_%key106804%_)
        (let ((_%default106806%_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _%key106804%_ _%default106806%_))))
    (define thread-local-ref
      (lambda _g106959_
        (let ((_g106958_ (let () (declare (not safe)) (##length _g106959_))))
          (cond ((let () (declare (not safe)) (##fx= _g106958_ 1))
                 (apply (lambda (_%key106804%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _%key106804%_)))
                        _g106959_))
                ((let () (declare (not safe)) (##fx= _g106958_ 2))
                 (apply (lambda (_%key106808%_ _%default106809%_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__%
                             _%key106808%_
                             _%default106809%_)))
                        _g106959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g106959_))))))
    (define thread-local-get
      (lambda (_%key106793%_)
        (let () (declare (not safe)) (thread-local-ref__% _%key106793%_ '#f))))
    (define thread-local-set!
      (lambda (_%key106788%_ _%value106789%_)
        (let ((_%tab106791%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _%tab106791%_ _%key106788%_ _%value106789%_))))
    (define thread-local-delete!
      (lambda (_%key106784%_)
        (let ((_%tab106786%_
               (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _%tab106786%_ _%key106784%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr106765%_ (current-thread)))
          (if (actor-thread? _%thr106765%_)
              (let ()
                (let ((_%$e106768%_ (actor-thread-locals _%thr106765%_)))
                  (if _%$e106768%_
                      (values _%$e106768%_)
                      (let ()
                        (let ((_%tab106772%_
                               (let ()
                                 (declare (not safe))
                                 (make-hash-table-eq))))
                          (actor-thread-locals-set!
                           _%thr106765%_
                           _%tab106772%_)
                          _%tab106772%_)))))
              (if (eq? _%thr106765%_ ##primordial-thread)
                  (let () __primordial-thread-locals)
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e106776%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr106765%_))))
                      (if _%$e106776%_
                          ((lambda (_%tab106779%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab106779%_)
                           _%$e106776%_)
                          (let ()
                            (let ((_%tab106782%_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let ()
                                (declare (not safe))
                                (hash-put!
                                 __thread-locals
                                 _%thr106765%_
                                 _%tab106782%_))
                              (mutex-unlock! __thread-locals-mutex)
                              _%tab106782%_))))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc106762%_)
        (if (let () (declare (not safe)) (procedure? _%proc106762%_))
            '#!void
            (let ((__tmp106960
                   (let ((__obj106951
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj106951
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (cons _%proc106762%_ '()))
                     __obj106951)))
              (declare (not safe))
              (raise __tmp106960)))
        (set! __unhandled-actor-exception-hook _%proc106762%_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
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
                              (__with-lock _%mx106741%_ _%proc106751%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@126.32-126.36"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106737%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@126.18-126.20"
               'contract:
               'mutex?
               'value:
               _%mx106736%_)))))
    (define __with-lock
      (lambda (_%mx106707%_ _%proc106708%_)
        (let ()
          (let ((_%mx106711%_ _%mx106707%_))
            (let ((_%proc106719%_ _%proc106708%_))
              (let ()
                (let ((_%handler106728%_ (current-exception-handler)))
                  (let ((__tmp106962
                         (lambda (_%e106730%_)
                           (let ((__tmp106963
                                  (lambda ()
                                    (mutex-unlock! _%mx106711%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%handler106728%_ _%e106730%_)))))
                             (declare (not safe))
                             (__with-catch void __tmp106963))
                           (let ()
                             (declare (not safe))
                             (##thread-end-with-uncaught-exception!
                              _%e106730%_))))
                        (__tmp106961
                         (lambda ()
                           (mutex-lock! _%mx106711%_)
                           (let ((_%result106734%_
                                  (let ()
                                    (declare (not safe))
                                    (_%proc106719%_))))
                             (mutex-unlock! _%mx106711%_)
                             _%result106734%_))))
                    (declare (not safe))
                    (__with-exception-handler __tmp106962 __tmp106961)))))))))
    (define with-dynamic-lock
      (lambda (_%mx106682%_ _%proc106683%_)
        (let ()
          (if (let () (declare (not safe)) (mutex? _%mx106682%_))
              (let ()
                (let ((_%mx106687%_ _%mx106682%_))
                  (if (let () (declare (not safe)) (procedure? _%proc106683%_))
                      (let ()
                        (let ((_%proc106697%_ _%proc106683%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-dynamic-lock
                               _%mx106687%_
                               _%proc106697%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@142.40-142.44"
                       'contract:
                       'procedure?
                       'value:
                       _%proc106683%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@142.26-142.28"
               'contract:
               'mutex?
               'value:
               _%mx106682%_)))))
    (define __with-dynamic-lock
      (lambda (_%mx106659%_ _%proc106660%_)
        (let ()
          (let ((_%mx106663%_ _%mx106659%_))
            (let ((_%proc106671%_ _%proc106660%_))
              (let ()
                (let ((__tmp106965 (lambda () (mutex-lock! _%mx106663%_)))
                      (__tmp106964 (lambda () (mutex-unlock! _%mx106663%_))))
                  (declare (not safe))
                  (##dynamic-wind
                   __tmp106965
                   _%proc106671%_
                   __tmp106964))))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106624%_ _%error-port106625%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk106624%_))
              (let ()
                (let ((_%thunk106629%_ _%thunk106624%_))
                  (if (let ()
                        (declare (not safe))
                        (port? _%error-port106625%_))
                      (let ()
                        (let ((_%error-port106639%_ _%error-port106625%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-exception-stack-trace__%
                               _%thunk106629%_
                               _%error-port106639%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/thread.ss\"@150.35-150.45"
                       'contract:
                       'port?
                       'value:
                       _%error-port106625%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@149.35-149.40"
               'contract:
               'procedure?
               'value:
               _%thunk106624%_)))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106652%_)
        (let ((_%error-port106654%_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__%
           _%thunk106652%_
           _%error-port106654%_))))
    (define with-exception-stack-trace
      (lambda _g106967_
        (let ((_g106966_ (let () (declare (not safe)) (##length _g106967_))))
          (cond ((let () (declare (not safe)) (##fx= _g106966_ 1))
                 (apply (lambda (_%thunk106652%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _%thunk106652%_)))
                        _g106967_))
                ((let () (declare (not safe)) (##fx= _g106966_ 2))
                 (apply (lambda (_%thunk106656%_ _%error-port106657%_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _%thunk106656%_
                             _%error-port106657%_)))
                        _g106967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g106967_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106585%_ _%error-port106586%_)
        (let ()
          (let ((_%thunk106589%_ _%thunk106585%_))
            (let ((_%error-port106598%_ _%error-port106586%_))
              (let ()
                (let ((__tmp106968
                       (let ((_%E106607%_ (current-exception-handler)))
                         (lambda (_%exn106609%_)
                           (let ((__tmp106969
                                  (lambda (_%cont106611%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (dump-stack-trace?))
                                        (let ()
                                          (declare (not safe))
                                          (dump-stack-trace!__%
                                           _%cont106611%_
                                           _%exn106609%_
                                           _%error-port106598%_))
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_%E106607%_ _%exn106609%_)))))
                             (declare (not safe))
                             (##continuation-capture __tmp106969))))))
                  (declare (not safe))
                  (__with-exception-handler __tmp106968 _%thunk106589%_))))))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106616%_)
        (let ((_%error-port106618%_ (current-error-port)))
          (declare (not safe))
          (__with-exception-stack-trace__%
           _%thunk106616%_
           _%error-port106618%_))))
    (define __with-exception-stack-trace
      (lambda _g106971_
        (let ((_g106970_ (let () (declare (not safe)) (##length _g106971_))))
          (cond ((let () (declare (not safe)) (##fx= _g106970_ 1))
                 (apply (lambda (_%thunk106616%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__0 _%thunk106616%_)))
                        _g106971_))
                ((let () (declare (not safe)) (##fx= _g106970_ 2))
                 (apply (lambda (_%thunk106620%_ _%error-port106621%_)
                          (let ()
                            (declare (not safe))
                            (__with-exception-stack-trace__%
                             _%thunk106620%_
                             _%error-port106621%_)))
                        _g106971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g106971_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106566%_ _%exn106567%_ _%error-port106568%_)
        (let ((_%out106570%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106570%_))
          (display '"*** Unhandled exception in " _%out106570%_)
          (display (current-thread) _%out106570%_)
          (newline _%out106570%_)
          (display-exception _%exn106567%_ _%out106570%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106567%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106570%_)
                (newline _%out106570%_)
                (display-continuation-backtrace _%cont106566%_ _%out106570%_)))
          (let ((__tmp106972 (get-output-string _%out106570%_)))
            (declare (not safe))
            (##write-string __tmp106972 _%error-port106568%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106575%_ _%exn106576%_)
        (let ((_%error-port106578%_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__%
           _%cont106575%_
           _%exn106576%_
           _%error-port106578%_))))
    (define dump-stack-trace!
      (lambda _g106974_
        (let ((_g106973_ (let () (declare (not safe)) (##length _g106974_))))
          (cond ((let () (declare (not safe)) (##fx= _g106973_ 2))
                 (apply (lambda (_%cont106575%_ _%exn106576%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0
                             _%cont106575%_
                             _%exn106576%_)))
                        _g106974_))
                ((let () (declare (not safe)) (##fx= _g106973_ 3))
                 (apply (lambda (_%cont106580%_
                                 _%exn106581%_
                                 _%error-port106582%_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _%cont106580%_
                             _%exn106581%_
                             _%error-port106582%_)))
                        _g106974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g106974_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
