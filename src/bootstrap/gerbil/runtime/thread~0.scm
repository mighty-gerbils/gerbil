(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712757954)
  (begin
    (define spawn
      (lambda (_%f107261%_ . _%args107262%_)
        (if (procedure? _%f107261%_)
            (let ((_%f107266%_ _%f107261%_))
              (declare (not safe))
              (##apply __spawn _%f107266%_ _%args107262%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f107261%_)
              '#!void))))
    (define __spawn
      (lambda (_%f107248%_ . _%args107249%_)
        (let ((_%f107252%_ _%f107248%_))
          (spawn-actor _%f107252%_ _%args107249%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107232%_ _%f107233%_ . _%args107234%_)
        (if (procedure? _%f107233%_)
            (let ((_%f107238%_ _%f107233%_))
              (declare (not safe))
              (##apply __spawn/name _%name107232%_ _%f107238%_ _%args107234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f107233%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name107218%_ _%f107219%_ . _%args107220%_)
        (let ((_%f107223%_ _%f107219%_))
          (spawn-actor _%f107223%_ _%args107220%_ _%name107218%_ '#f))))
    (define spawn/group
      (lambda (_%name107202%_ _%f107203%_ . _%args107204%_)
        (if (procedure? _%f107203%_)
            (let ((_%f107208%_ _%f107203%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name107202%_
                       _%f107208%_
                       _%args107204%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f107203%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name107186%_ _%f107187%_ . _%args107188%_)
        (let* ((_%f107191%_ _%f107187%_)
               (_%tgroup107200%_ (make-thread-group _%name107186%_)))
          (spawn-actor
           _%f107191%_
           _%args107188%_
           _%name107186%_
           _%tgroup107200%_))))
    (define spawn-actor
      (lambda (_%f107158%_ _%args107159%_ _%name107160%_ _%tgroup107161%_)
        (letrec ((_%thread-main107164%_
                  (lambda (_%thunk107178%_)
                    (lambda ()
                      (let ((__tmp107275
                             (lambda (_%exn107181%_)
                               (let ((__tmp107276
                                      (lambda (_%cont107183%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp107277
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont107183%_
                                                      _%exn107181%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp107277))
                                            '#!void)
                                        (let ((__tmp107278
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont107183%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp107278
                                           ##primordial-exception-handler
                                           _%exn107181%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp107276)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp107275
                         _%thunk107178%_))))))
          (let* ((_%thunk107167%_
                  (if (null? _%args107159%_)
                      _%f107158%_
                      (lambda () (apply _%f107158%_ _%args107159%_))))
                 (_%thunk107170%_
                  (lambda () (with-exception-stack-trace__0 _%thunk107167%_)))
                 (_%tgroup107175%_
                  (let ((_%$e107172%_ _%tgroup107161%_))
                    (if _%$e107172%_ _%$e107172%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main107164%_ _%thunk107170%_)
              _%name107160%_
              _%tgroup107175%_))))))
    (define spawn-thread__%
      (lambda (_%thunk107136%_ _%name107137%_ _%tgroup107138%_)
        (thread-start!
         (make-thread _%thunk107136%_ _%name107137%_ _%tgroup107138%_))))
    (define spawn-thread__0
      (lambda (_%thunk107143%_)
        (let* ((_%name107145%_ absent-obj) (_%tgroup107147%_ absent-obj))
          (spawn-thread__% _%thunk107143%_ _%name107145%_ _%tgroup107147%_))))
    (define spawn-thread__1
      (lambda (_%thunk107149%_ _%name107150%_)
        (let ((_%tgroup107152%_ absent-obj))
          (spawn-thread__% _%thunk107149%_ _%name107150%_ _%tgroup107152%_))))
    (define spawn-thread
      (lambda _g107280_
        (let ((_g107279_ (let () (declare (not safe)) (##length _g107280_))))
          (cond ((let () (declare (not safe)) (##fx= _g107279_ 1))
                 (apply spawn-thread__0 _g107280_))
                ((let () (declare (not safe)) (##fx= _g107279_ 2))
                 (apply spawn-thread__1 _g107280_))
                ((let () (declare (not safe)) (##fx= _g107279_ 3))
                 (apply spawn-thread__% _g107280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g107280_))))))
    (define thread-local-ref__%
      (lambda (_%key107120%_ _%default107121%_)
        (let ((_%tab107123%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab107123%_ _%key107120%_ _%default107121%_))))
    (define thread-local-ref__0
      (lambda (_%key107128%_)
        (let ((_%default107130%_ absent-obj))
          (thread-local-ref__% _%key107128%_ _%default107130%_))))
    (define thread-local-ref
      (lambda _g107282_
        (let ((_g107281_ (let () (declare (not safe)) (##length _g107282_))))
          (cond ((let () (declare (not safe)) (##fx= _g107281_ 1))
                 (apply thread-local-ref__0 _g107282_))
                ((let () (declare (not safe)) (##fx= _g107281_ 2))
                 (apply thread-local-ref__% _g107282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g107282_))))))
    (define thread-local-get
      (lambda (_%key107117%_) (thread-local-ref__% _%key107117%_ '#f)))
    (define thread-local-set!
      (lambda (_%key107112%_ _%value107113%_)
        (let ((_%tab107115%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab107115%_ _%key107112%_ _%value107113%_))))
    (define thread-local-delete!
      (lambda (_%key107108%_)
        (let ((_%tab107110%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab107110%_ _%key107108%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107089%_ (current-thread)))
          (if (actor-thread? _%thr107089%_)
              (let ((_%$e107092%_ (actor-thread-locals _%thr107089%_)))
                (if _%$e107092%_
                    (values _%$e107092%_)
                    (let ((_%tab107096%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107089%_ _%tab107096%_)
                      _%tab107096%_)))
              (if (eq? _%thr107089%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107100%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107089%_))))
                      (if _%$e107100%_
                          ((lambda (_%tab107103%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107103%_)
                           _%$e107100%_)
                          (let ((_%tab107106%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107089%_
                               _%tab107106%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107106%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107074%_)
        (if (procedure? _%proc107074%_)
            (let ((_%proc107078%_ _%proc107074%_))
              (__unhandled-actor-exception-hook-set! _%proc107078%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc107074%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc107062%_)
        (let ((_%proc107065%_ _%proc107062%_))
          (set! __unhandled-actor-exception-hook _%proc107065%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107036%_ _%proc107037%_)
        (if (mutex? _%mx107036%_)
            (let ((_%mx107041%_ _%mx107036%_))
              (if (procedure? _%proc107037%_)
                  (let ((_%proc107051%_ _%proc107037%_))
                    (__with-lock _%mx107041%_ _%proc107051%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107037%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx107036%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx107007%_ _%proc107008%_)
        (let* ((_%mx107011%_ _%mx107007%_)
               (_%proc107019%_ _%proc107008%_)
               (_%handler107028%_ (current-exception-handler)))
          (let ((__tmp107284
                 (lambda (_%e107030%_)
                   (let ((__tmp107285
                          (lambda ()
                            (mutex-unlock! _%mx107011%_)
                            (let ()
                              (declare (not safe))
                              (_%handler107028%_ _%e107030%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp107285))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e107030%_))))
                (__tmp107283
                 (lambda ()
                   (mutex-lock! _%mx107011%_)
                   (let ((_%result107034%_
                          (let () (declare (not safe)) (_%proc107019%_))))
                     (mutex-unlock! _%mx107011%_)
                     _%result107034%_))))
            (declare (not safe))
            (__with-exception-handler __tmp107284 __tmp107283)))))
    (define with-dynamic-lock
      (lambda (_%mx106982%_ _%proc106983%_)
        (if (mutex? _%mx106982%_)
            (let ((_%mx106987%_ _%mx106982%_))
              (if (procedure? _%proc106983%_)
                  (let ((_%proc106997%_ _%proc106983%_))
                    (__with-dynamic-lock _%mx106987%_ _%proc106997%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc106983%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx106982%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx106959%_ _%proc106960%_)
        (let* ((_%mx106963%_ _%mx106959%_) (_%proc106971%_ _%proc106960%_))
          (let ((__tmp107287 (lambda () (mutex-lock! _%mx106963%_)))
                (__tmp107286 (lambda () (mutex-unlock! _%mx106963%_))))
            (declare (not safe))
            (##dynamic-wind __tmp107287 _%proc106971%_ __tmp107286)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk106924%_ _%error-port106925%_)
        (if (procedure? _%thunk106924%_)
            (let ((_%thunk106929%_ _%thunk106924%_))
              (if (port? _%error-port106925%_)
                  (let ((_%error-port106939%_ _%error-port106925%_))
                    (__with-exception-stack-trace__%
                     _%thunk106929%_
                     _%error-port106939%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port106925%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk106924%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk106952%_)
        (let ((_%error-port106954%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk106952%_
           _%error-port106954%_))))
    (define with-exception-stack-trace
      (lambda _g107289_
        (let ((_g107288_ (let () (declare (not safe)) (##length _g107289_))))
          (cond ((let () (declare (not safe)) (##fx= _g107288_ 1))
                 (apply with-exception-stack-trace__0 _g107289_))
                ((let () (declare (not safe)) (##fx= _g107288_ 2))
                 (apply with-exception-stack-trace__% _g107289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g107289_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk106885%_ _%error-port106886%_)
        (let* ((_%thunk106889%_ _%thunk106885%_)
               (_%error-port106898%_ _%error-port106886%_)
               (__tmp107290
                (let ((_%E106907%_ (current-exception-handler)))
                  (lambda (_%exn106909%_)
                    (let ((__tmp107291
                           (lambda (_%cont106911%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont106911%_
                                  _%exn106909%_
                                  _%error-port106898%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E106907%_ _%exn106909%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp107291))))))
          (declare (not safe))
          (__with-exception-handler __tmp107290 _%thunk106889%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk106916%_)
        (let ((_%error-port106918%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk106916%_
           _%error-port106918%_))))
    (define __with-exception-stack-trace
      (lambda _g107293_
        (let ((_g107292_ (let () (declare (not safe)) (##length _g107293_))))
          (cond ((let () (declare (not safe)) (##fx= _g107292_ 1))
                 (apply __with-exception-stack-trace__0 _g107293_))
                ((let () (declare (not safe)) (##fx= _g107292_ 2))
                 (apply __with-exception-stack-trace__% _g107293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g107293_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont106866%_ _%exn106867%_ _%error-port106868%_)
        (let ((_%out106870%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out106870%_))
          (display '"*** Unhandled exception in " _%out106870%_)
          (display (current-thread) _%out106870%_)
          (newline _%out106870%_)
          (display-exception _%exn106867%_ _%out106870%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn106867%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out106870%_)
                (newline _%out106870%_)
                (display-continuation-backtrace _%cont106866%_ _%out106870%_)))
          (let ((__tmp107294 (get-output-string _%out106870%_)))
            (declare (not safe))
            (##write-string __tmp107294 _%error-port106868%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont106875%_ _%exn106876%_)
        (let ((_%error-port106878%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont106875%_
           _%exn106876%_
           _%error-port106878%_))))
    (define dump-stack-trace!
      (lambda _g107296_
        (let ((_g107295_ (let () (declare (not safe)) (##length _g107296_))))
          (cond ((let () (declare (not safe)) (##fx= _g107295_ 2))
                 (apply dump-stack-trace!__0 _g107296_))
                ((let () (declare (not safe)) (##fx= _g107295_ 3))
                 (apply dump-stack-trace!__% _g107296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g107296_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
