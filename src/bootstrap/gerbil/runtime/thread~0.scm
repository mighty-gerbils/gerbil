(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713001407)
  (begin
    (define spawn
      (lambda (_%f109088%_ . _%args109089%_)
        (if (procedure? _%f109088%_)
            (let ((_%f109093%_ _%f109088%_))
              (declare (not safe))
              (##apply __spawn _%f109093%_ _%args109089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f109088%_)
              '#!void))))
    (define __spawn
      (lambda (_%f109075%_ . _%args109076%_)
        (let ((_%f109079%_ _%f109075%_))
          (spawn-actor _%f109079%_ _%args109076%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name109059%_ _%f109060%_ . _%args109061%_)
        (if (procedure? _%f109060%_)
            (let ((_%f109065%_ _%f109060%_))
              (declare (not safe))
              (##apply __spawn/name _%name109059%_ _%f109065%_ _%args109061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f109060%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name109045%_ _%f109046%_ . _%args109047%_)
        (let ((_%f109050%_ _%f109046%_))
          (spawn-actor _%f109050%_ _%args109047%_ _%name109045%_ '#f))))
    (define spawn/group
      (lambda (_%name109029%_ _%f109030%_ . _%args109031%_)
        (if (procedure? _%f109030%_)
            (let ((_%f109035%_ _%f109030%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name109029%_
                       _%f109035%_
                       _%args109031%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f109030%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name109013%_ _%f109014%_ . _%args109015%_)
        (let* ((_%f109018%_ _%f109014%_)
               (_%tgroup109027%_ (make-thread-group _%name109013%_)))
          (spawn-actor
           _%f109018%_
           _%args109015%_
           _%name109013%_
           _%tgroup109027%_))))
    (define spawn-actor
      (lambda (_%f108985%_ _%args108986%_ _%name108987%_ _%tgroup108988%_)
        (letrec ((_%thread-main108991%_
                  (lambda (_%thunk109005%_)
                    (lambda ()
                      (let ((__tmp109102
                             (lambda (_%exn109008%_)
                               (let ((__tmp109103
                                      (lambda (_%cont109010%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp109104
                                                   (lambda ()
                                                     (unhandled-actor-exception-hook
                                                      _%cont109010%_
                                                      _%exn109008%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp109104))
                                            '#!void)
                                        (let ((__tmp109105
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont109010%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp109105
                                           ##primordial-exception-handler
                                           _%exn109008%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp109103)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp109102
                         _%thunk109005%_))))))
          (let* ((_%thunk108994%_
                  (if (null? _%args108986%_)
                      _%f108985%_
                      (lambda () (apply _%f108985%_ _%args108986%_))))
                 (_%thunk108997%_
                  (lambda () (with-exception-stack-trace__0 _%thunk108994%_)))
                 (_%tgroup109002%_
                  (let ((_%$e108999%_ _%tgroup108988%_))
                    (if _%$e108999%_ _%$e108999%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main108991%_ _%thunk108997%_)
              _%name108987%_
              _%tgroup109002%_))))))
    (define spawn-thread__%
      (lambda (_%thunk108963%_ _%name108964%_ _%tgroup108965%_)
        (thread-start!
         (make-thread _%thunk108963%_ _%name108964%_ _%tgroup108965%_))))
    (define spawn-thread__0
      (lambda (_%thunk108970%_)
        (let* ((_%name108972%_ absent-obj) (_%tgroup108974%_ absent-obj))
          (spawn-thread__% _%thunk108970%_ _%name108972%_ _%tgroup108974%_))))
    (define spawn-thread__1
      (lambda (_%thunk108976%_ _%name108977%_)
        (let ((_%tgroup108979%_ absent-obj))
          (spawn-thread__% _%thunk108976%_ _%name108977%_ _%tgroup108979%_))))
    (define spawn-thread
      (lambda _g109107_
        (let ((_g109106_ (let () (declare (not safe)) (##length _g109107_))))
          (cond ((let () (declare (not safe)) (##fx= _g109106_ 1))
                 (apply spawn-thread__0 _g109107_))
                ((let () (declare (not safe)) (##fx= _g109106_ 2))
                 (apply spawn-thread__1 _g109107_))
                ((let () (declare (not safe)) (##fx= _g109106_ 3))
                 (apply spawn-thread__% _g109107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g109107_))))))
    (define thread-local-ref__%
      (lambda (_%key108947%_ _%default108948%_)
        (let ((_%tab108950%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab108950%_ _%key108947%_ _%default108948%_))))
    (define thread-local-ref__0
      (lambda (_%key108955%_)
        (let ((_%default108957%_ absent-obj))
          (thread-local-ref__% _%key108955%_ _%default108957%_))))
    (define thread-local-ref
      (lambda _g109109_
        (let ((_g109108_ (let () (declare (not safe)) (##length _g109109_))))
          (cond ((let () (declare (not safe)) (##fx= _g109108_ 1))
                 (apply thread-local-ref__0 _g109109_))
                ((let () (declare (not safe)) (##fx= _g109108_ 2))
                 (apply thread-local-ref__% _g109109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g109109_))))))
    (define thread-local-get
      (lambda (_%key108944%_) (thread-local-ref__% _%key108944%_ '#f)))
    (define thread-local-set!
      (lambda (_%key108939%_ _%value108940%_)
        (let ((_%tab108942%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab108942%_ _%key108939%_ _%value108940%_))))
    (define thread-local-delete!
      (lambda (_%key108935%_)
        (let ((_%tab108937%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab108937%_ _%key108935%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr108916%_ (current-thread)))
          (if (actor-thread? _%thr108916%_)
              (let ((_%$e108919%_ (actor-thread-locals _%thr108916%_)))
                (if _%$e108919%_
                    _%$e108919%_
                    (let ((_%tab108923%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr108916%_ _%tab108923%_)
                      _%tab108923%_)))
              (if (eq? _%thr108916%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e108927%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr108916%_))))
                      (if _%$e108927%_
                          ((lambda (_%tab108930%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab108930%_)
                           _%$e108927%_)
                          (let ((_%tab108933%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr108916%_
                               _%tab108933%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab108933%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value108895%_)
        (if ((lambda (_%$obj108898%_)
               (or (not _%$obj108898%_) (procedure? _%$obj108898%_)))
             _%new-value108895%_)
            (let ((_%new-value108905%_ _%new-value108895%_))
              (__unhandled-actor-exception-hook-set! _%new-value108905%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value108895%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value108882%_)
        (let ((_%new-value108886%_ _%new-value108882%_))
          (set! unhandled-actor-exception-hook _%new-value108886%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108856%_ _%proc108857%_)
        (if (mutex? _%mx108856%_)
            (let ((_%mx108861%_ _%mx108856%_))
              (if (procedure? _%proc108857%_)
                  (let ((_%proc108871%_ _%proc108857%_))
                    (__with-lock _%mx108861%_ _%proc108871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108857%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx108856%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108827%_ _%proc108828%_)
        (let* ((_%mx108831%_ _%mx108827%_)
               (_%proc108839%_ _%proc108828%_)
               (_%handler108848%_ (current-exception-handler)))
          (let ((__tmp109111
                 (lambda (_%e108850%_)
                   (let ((__tmp109112
                          (lambda ()
                            (mutex-unlock! _%mx108831%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108848%_ _%e108850%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp109112))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108850%_))))
                (__tmp109110
                 (lambda ()
                   (mutex-lock! _%mx108831%_)
                   (let ((_%result108854%_
                          (let () (declare (not safe)) (_%proc108839%_))))
                     (mutex-unlock! _%mx108831%_)
                     _%result108854%_))))
            (declare (not safe))
            (__with-exception-handler __tmp109111 __tmp109110)))))
    (define with-dynamic-lock
      (lambda (_%mx108802%_ _%proc108803%_)
        (if (mutex? _%mx108802%_)
            (let ((_%mx108807%_ _%mx108802%_))
              (if (procedure? _%proc108803%_)
                  (let ((_%proc108817%_ _%proc108803%_))
                    (__with-dynamic-lock _%mx108807%_ _%proc108817%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108803%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx108802%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108779%_ _%proc108780%_)
        (let* ((_%mx108783%_ _%mx108779%_) (_%proc108791%_ _%proc108780%_))
          (let ((__tmp109114 (lambda () (mutex-lock! _%mx108783%_)))
                (__tmp109113 (lambda () (mutex-unlock! _%mx108783%_))))
            (declare (not safe))
            (##dynamic-wind __tmp109114 _%proc108791%_ __tmp109113)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108744%_ _%error-port108745%_)
        (if (procedure? _%thunk108744%_)
            (let ((_%thunk108749%_ _%thunk108744%_))
              (if (port? _%error-port108745%_)
                  (let ((_%error-port108759%_ _%error-port108745%_))
                    (__with-exception-stack-trace__%
                     _%thunk108749%_
                     _%error-port108759%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108745%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk108744%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108772%_)
        (let ((_%error-port108774%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108772%_
           _%error-port108774%_))))
    (define with-exception-stack-trace
      (lambda _g109116_
        (let ((_g109115_ (let () (declare (not safe)) (##length _g109116_))))
          (cond ((let () (declare (not safe)) (##fx= _g109115_ 1))
                 (apply with-exception-stack-trace__0 _g109116_))
                ((let () (declare (not safe)) (##fx= _g109115_ 2))
                 (apply with-exception-stack-trace__% _g109116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g109116_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108705%_ _%error-port108706%_)
        (let* ((_%thunk108709%_ _%thunk108705%_)
               (_%error-port108718%_ _%error-port108706%_)
               (__tmp109117
                (let ((_%E108727%_ (current-exception-handler)))
                  (lambda (_%exn108729%_)
                    (let ((__tmp109118
                           (lambda (_%cont108731%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108731%_
                                  _%exn108729%_
                                  _%error-port108718%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108727%_ _%exn108729%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp109118))))))
          (declare (not safe))
          (__with-exception-handler __tmp109117 _%thunk108709%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108736%_)
        (let ((_%error-port108738%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108736%_
           _%error-port108738%_))))
    (define __with-exception-stack-trace
      (lambda _g109120_
        (let ((_g109119_ (let () (declare (not safe)) (##length _g109120_))))
          (cond ((let () (declare (not safe)) (##fx= _g109119_ 1))
                 (apply __with-exception-stack-trace__0 _g109120_))
                ((let () (declare (not safe)) (##fx= _g109119_ 2))
                 (apply __with-exception-stack-trace__% _g109120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g109120_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108686%_ _%exn108687%_ _%error-port108688%_)
        (let ((_%out108690%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108690%_))
          (display '"*** Unhandled exception in " _%out108690%_)
          (display (current-thread) _%out108690%_)
          (newline _%out108690%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn108687%_ _%out108690%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108687%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108690%_)
                (newline _%out108690%_)
                (display-continuation-backtrace _%cont108686%_ _%out108690%_)))
          (let ((__tmp109121 (get-output-string _%out108690%_)))
            (declare (not safe))
            (##write-string __tmp109121 _%error-port108688%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108695%_ _%exn108696%_)
        (let ((_%error-port108698%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108695%_
           _%exn108696%_
           _%error-port108698%_))))
    (define dump-stack-trace!
      (lambda _g109123_
        (let ((_g109122_ (let () (declare (not safe)) (##length _g109123_))))
          (cond ((let () (declare (not safe)) (##fx= _g109122_ 2))
                 (apply dump-stack-trace!__0 _g109123_))
                ((let () (declare (not safe)) (##fx= _g109122_ 3))
                 (apply dump-stack-trace!__% _g109123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g109123_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
