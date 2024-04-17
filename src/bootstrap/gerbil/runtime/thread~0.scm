(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713044315)
  (begin
    (define spawn
      (lambda (_%f109147%_ . _%args109148%_)
        (if (procedure? _%f109147%_)
            (let ((_%f109152%_ _%f109147%_))
              (declare (not safe))
              (##apply __spawn _%f109152%_ _%args109148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f109147%_)
              '#!void))))
    (define __spawn
      (lambda (_%f109134%_ . _%args109135%_)
        (let ((_%f109138%_ _%f109134%_))
          (spawn-actor _%f109138%_ _%args109135%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name109118%_ _%f109119%_ . _%args109120%_)
        (if (procedure? _%f109119%_)
            (let ((_%f109124%_ _%f109119%_))
              (declare (not safe))
              (##apply __spawn/name _%name109118%_ _%f109124%_ _%args109120%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f109119%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name109104%_ _%f109105%_ . _%args109106%_)
        (let ((_%f109109%_ _%f109105%_))
          (spawn-actor _%f109109%_ _%args109106%_ _%name109104%_ '#f))))
    (define spawn/group
      (lambda (_%name109088%_ _%f109089%_ . _%args109090%_)
        (if (procedure? _%f109089%_)
            (let ((_%f109094%_ _%f109089%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name109088%_
                       _%f109094%_
                       _%args109090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f109089%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name109072%_ _%f109073%_ . _%args109074%_)
        (let* ((_%f109077%_ _%f109073%_)
               (_%tgroup109086%_ (make-thread-group _%name109072%_)))
          (spawn-actor
           _%f109077%_
           _%args109074%_
           _%name109072%_
           _%tgroup109086%_))))
    (define spawn-actor
      (lambda (_%f109044%_ _%args109045%_ _%name109046%_ _%tgroup109047%_)
        (letrec ((_%thread-main109050%_
                  (lambda (_%thunk109064%_)
                    (lambda ()
                      (let ((__tmp109161
                             (lambda (_%exn109067%_)
                               (let ((__tmp109162
                                      (lambda (_%cont109069%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp109163
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont109069%_
                                                      _%exn109067%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp109163))
                                            '#!void)
                                        (let ((__tmp109164
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont109069%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp109164
                                           ##primordial-exception-handler
                                           _%exn109067%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp109162)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp109161
                         _%thunk109064%_))))))
          (let* ((_%thunk109053%_
                  (if (null? _%args109045%_)
                      _%f109044%_
                      (lambda () (apply _%f109044%_ _%args109045%_))))
                 (_%thunk109056%_
                  (lambda () (with-exception-stack-trace__0 _%thunk109053%_)))
                 (_%tgroup109061%_
                  (let ((_%$e109058%_ _%tgroup109047%_))
                    (if _%$e109058%_ _%$e109058%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main109050%_ _%thunk109056%_)
              _%name109046%_
              _%tgroup109061%_))))))
    (define spawn-thread__%
      (lambda (_%thunk109022%_ _%name109023%_ _%tgroup109024%_)
        (thread-start!
         (make-thread _%thunk109022%_ _%name109023%_ _%tgroup109024%_))))
    (define spawn-thread__0
      (lambda (_%thunk109029%_)
        (let* ((_%name109031%_ absent-obj) (_%tgroup109033%_ absent-obj))
          (spawn-thread__% _%thunk109029%_ _%name109031%_ _%tgroup109033%_))))
    (define spawn-thread__1
      (lambda (_%thunk109035%_ _%name109036%_)
        (let ((_%tgroup109038%_ absent-obj))
          (spawn-thread__% _%thunk109035%_ _%name109036%_ _%tgroup109038%_))))
    (define spawn-thread
      (lambda _g109166_
        (let ((_g109165_ (let () (declare (not safe)) (##length _g109166_))))
          (cond ((let () (declare (not safe)) (##fx= _g109165_ 1))
                 (apply spawn-thread__0 _g109166_))
                ((let () (declare (not safe)) (##fx= _g109165_ 2))
                 (apply spawn-thread__1 _g109166_))
                ((let () (declare (not safe)) (##fx= _g109165_ 3))
                 (apply spawn-thread__% _g109166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g109166_))))))
    (define thread-local-ref__%
      (lambda (_%key109006%_ _%default109007%_)
        (let ((_%tab109009%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab109009%_ _%key109006%_ _%default109007%_))))
    (define thread-local-ref__0
      (lambda (_%key109014%_)
        (let ((_%default109016%_ absent-obj))
          (thread-local-ref__% _%key109014%_ _%default109016%_))))
    (define thread-local-ref
      (lambda _g109168_
        (let ((_g109167_ (let () (declare (not safe)) (##length _g109168_))))
          (cond ((let () (declare (not safe)) (##fx= _g109167_ 1))
                 (apply thread-local-ref__0 _g109168_))
                ((let () (declare (not safe)) (##fx= _g109167_ 2))
                 (apply thread-local-ref__% _g109168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g109168_))))))
    (define thread-local-get
      (lambda (_%key109003%_) (thread-local-ref__% _%key109003%_ '#f)))
    (define thread-local-set!
      (lambda (_%key108998%_ _%value108999%_)
        (let ((_%tab109001%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab109001%_ _%key108998%_ _%value108999%_))))
    (define thread-local-delete!
      (lambda (_%key108994%_)
        (let ((_%tab108996%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab108996%_ _%key108994%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr108975%_ (current-thread)))
          (if (actor-thread? _%thr108975%_)
              (let ((_%$e108978%_ (actor-thread-locals _%thr108975%_)))
                (if _%$e108978%_
                    _%$e108978%_
                    (let ((_%tab108982%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr108975%_ _%tab108982%_)
                      _%tab108982%_)))
              (if (eq? _%thr108975%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e108986%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr108975%_))))
                      (if _%$e108986%_
                          ((lambda (_%tab108989%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab108989%_)
                           _%$e108986%_)
                          (let ((_%tab108992%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr108975%_
                               _%tab108992%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab108992%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value108953%_)
        (if ((lambda (_%$obj108956%_)
               (or (not _%$obj108956%_) (procedure? _%$obj108956%_)))
             _%new-value108953%_)
            (let ((_%new-value108963%_ _%new-value108953%_))
              (__unhandled-actor-exception-hook-set! _%new-value108963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value108953%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value108940%_)
        (let ((_%new-value108944%_ _%new-value108940%_))
          (set! __unhandled-actor-exception-hook _%new-value108944%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108914%_ _%proc108915%_)
        (if (mutex? _%mx108914%_)
            (let ((_%mx108919%_ _%mx108914%_))
              (if (procedure? _%proc108915%_)
                  (let ((_%proc108929%_ _%proc108915%_))
                    (__with-lock _%mx108919%_ _%proc108929%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108915%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx108914%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108885%_ _%proc108886%_)
        (let* ((_%mx108889%_ _%mx108885%_)
               (_%proc108897%_ _%proc108886%_)
               (_%handler108906%_ (current-exception-handler)))
          (let ((__tmp109170
                 (lambda (_%e108908%_)
                   (let ((__tmp109171
                          (lambda ()
                            (mutex-unlock! _%mx108889%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108906%_ _%e108908%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp109171))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108908%_))))
                (__tmp109169
                 (lambda ()
                   (mutex-lock! _%mx108889%_)
                   (let ((_%result108912%_
                          (let () (declare (not safe)) (_%proc108897%_))))
                     (mutex-unlock! _%mx108889%_)
                     _%result108912%_))))
            (declare (not safe))
            (__with-exception-handler __tmp109170 __tmp109169)))))
    (define with-dynamic-lock
      (lambda (_%mx108860%_ _%proc108861%_)
        (if (mutex? _%mx108860%_)
            (let ((_%mx108865%_ _%mx108860%_))
              (if (procedure? _%proc108861%_)
                  (let ((_%proc108875%_ _%proc108861%_))
                    (__with-dynamic-lock _%mx108865%_ _%proc108875%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108861%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx108860%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108837%_ _%proc108838%_)
        (let* ((_%mx108841%_ _%mx108837%_) (_%proc108849%_ _%proc108838%_))
          (let ((__tmp109173 (lambda () (mutex-lock! _%mx108841%_)))
                (__tmp109172 (lambda () (mutex-unlock! _%mx108841%_))))
            (declare (not safe))
            (##dynamic-wind __tmp109173 _%proc108849%_ __tmp109172)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108802%_ _%error-port108803%_)
        (if (procedure? _%thunk108802%_)
            (let ((_%thunk108807%_ _%thunk108802%_))
              (if (port? _%error-port108803%_)
                  (let ((_%error-port108817%_ _%error-port108803%_))
                    (__with-exception-stack-trace__%
                     _%thunk108807%_
                     _%error-port108817%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108803%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk108802%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108830%_)
        (let ((_%error-port108832%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108830%_
           _%error-port108832%_))))
    (define with-exception-stack-trace
      (lambda _g109175_
        (let ((_g109174_ (let () (declare (not safe)) (##length _g109175_))))
          (cond ((let () (declare (not safe)) (##fx= _g109174_ 1))
                 (apply with-exception-stack-trace__0 _g109175_))
                ((let () (declare (not safe)) (##fx= _g109174_ 2))
                 (apply with-exception-stack-trace__% _g109175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g109175_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108763%_ _%error-port108764%_)
        (let* ((_%thunk108767%_ _%thunk108763%_)
               (_%error-port108776%_ _%error-port108764%_)
               (__tmp109176
                (let ((_%E108785%_ (current-exception-handler)))
                  (lambda (_%exn108787%_)
                    (let ((__tmp109177
                           (lambda (_%cont108789%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108789%_
                                  _%exn108787%_
                                  _%error-port108776%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108785%_ _%exn108787%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp109177))))))
          (declare (not safe))
          (__with-exception-handler __tmp109176 _%thunk108767%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108794%_)
        (let ((_%error-port108796%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108794%_
           _%error-port108796%_))))
    (define __with-exception-stack-trace
      (lambda _g109179_
        (let ((_g109178_ (let () (declare (not safe)) (##length _g109179_))))
          (cond ((let () (declare (not safe)) (##fx= _g109178_ 1))
                 (apply __with-exception-stack-trace__0 _g109179_))
                ((let () (declare (not safe)) (##fx= _g109178_ 2))
                 (apply __with-exception-stack-trace__% _g109179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g109179_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108744%_ _%exn108745%_ _%error-port108746%_)
        (let ((_%out108748%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108748%_))
          (display '"*** Unhandled exception in " _%out108748%_)
          (display (current-thread) _%out108748%_)
          (newline _%out108748%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn108745%_ _%out108748%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108745%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108748%_)
                (newline _%out108748%_)
                (display-continuation-backtrace _%cont108744%_ _%out108748%_)))
          (let ((__tmp109180 (get-output-string _%out108748%_)))
            (declare (not safe))
            (##write-string __tmp109180 _%error-port108746%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108753%_ _%exn108754%_)
        (let ((_%error-port108756%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108753%_
           _%exn108754%_
           _%error-port108756%_))))
    (define dump-stack-trace!
      (lambda _g109182_
        (let ((_g109181_ (let () (declare (not safe)) (##length _g109182_))))
          (cond ((let () (declare (not safe)) (##fx= _g109181_ 2))
                 (apply dump-stack-trace!__0 _g109182_))
                ((let () (declare (not safe)) (##fx= _g109181_ 3))
                 (apply dump-stack-trace!__% _g109182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g109182_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
