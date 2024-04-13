(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713000276)
  (begin
    (define spawn
      (lambda (_%f110031%_ . _%args110032%_)
        (if (procedure? _%f110031%_)
            (let ((_%f110036%_ _%f110031%_))
              (declare (not safe))
              (##apply __spawn _%f110036%_ _%args110032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f110031%_)
              '#!void))))
    (define __spawn
      (lambda (_%f110018%_ . _%args110019%_)
        (let ((_%f110022%_ _%f110018%_))
          (spawn-actor _%f110022%_ _%args110019%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name110002%_ _%f110003%_ . _%args110004%_)
        (if (procedure? _%f110003%_)
            (let ((_%f110008%_ _%f110003%_))
              (declare (not safe))
              (##apply __spawn/name _%name110002%_ _%f110008%_ _%args110004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f110003%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name109988%_ _%f109989%_ . _%args109990%_)
        (let ((_%f109993%_ _%f109989%_))
          (spawn-actor _%f109993%_ _%args109990%_ _%name109988%_ '#f))))
    (define spawn/group
      (lambda (_%name109972%_ _%f109973%_ . _%args109974%_)
        (if (procedure? _%f109973%_)
            (let ((_%f109978%_ _%f109973%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name109972%_
                       _%f109978%_
                       _%args109974%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f109973%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name109956%_ _%f109957%_ . _%args109958%_)
        (let* ((_%f109961%_ _%f109957%_)
               (_%tgroup109970%_ (make-thread-group _%name109956%_)))
          (spawn-actor
           _%f109961%_
           _%args109958%_
           _%name109956%_
           _%tgroup109970%_))))
    (define spawn-actor
      (lambda (_%f109928%_ _%args109929%_ _%name109930%_ _%tgroup109931%_)
        (letrec ((_%thread-main109934%_
                  (lambda (_%thunk109948%_)
                    (lambda ()
                      (let ((__tmp110124
                             (lambda (_%exn109951%_)
                               (let ((__tmp110125
                                      (lambda (_%cont109953%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp110126
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont109953%_
                                                      _%exn109951%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp110126))
                                            '#!void)
                                        (let ((__tmp110127
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont109953%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp110127
                                           ##primordial-exception-handler
                                           _%exn109951%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp110125)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp110124
                         _%thunk109948%_))))))
          (let* ((_%thunk109937%_
                  (if (null? _%args109929%_)
                      _%f109928%_
                      (lambda () (apply _%f109928%_ _%args109929%_))))
                 (_%thunk109940%_
                  (lambda () (with-exception-stack-trace__0 _%thunk109937%_)))
                 (_%tgroup109945%_
                  (let ((_%$e109942%_ _%tgroup109931%_))
                    (if _%$e109942%_ _%$e109942%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main109934%_ _%thunk109940%_)
              _%name109930%_
              _%tgroup109945%_))))))
    (define spawn-thread__%
      (lambda (_%thunk109906%_ _%name109907%_ _%tgroup109908%_)
        (thread-start!
         (make-thread _%thunk109906%_ _%name109907%_ _%tgroup109908%_))))
    (define spawn-thread__0
      (lambda (_%thunk109913%_)
        (let* ((_%name109915%_ absent-obj) (_%tgroup109917%_ absent-obj))
          (spawn-thread__% _%thunk109913%_ _%name109915%_ _%tgroup109917%_))))
    (define spawn-thread__1
      (lambda (_%thunk109919%_ _%name109920%_)
        (let ((_%tgroup109922%_ absent-obj))
          (spawn-thread__% _%thunk109919%_ _%name109920%_ _%tgroup109922%_))))
    (define spawn-thread
      (lambda _g110129_
        (let ((_g110128_ (let () (declare (not safe)) (##length _g110129_))))
          (cond ((let () (declare (not safe)) (##fx= _g110128_ 1))
                 (apply spawn-thread__0 _g110129_))
                ((let () (declare (not safe)) (##fx= _g110128_ 2))
                 (apply spawn-thread__1 _g110129_))
                ((let () (declare (not safe)) (##fx= _g110128_ 3))
                 (apply spawn-thread__% _g110129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g110129_))))))
    (define thread-local-ref__%
      (lambda (_%key109890%_ _%default109891%_)
        (let ((_%tab109893%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab109893%_ _%key109890%_ _%default109891%_))))
    (define thread-local-ref__0
      (lambda (_%key109898%_)
        (let ((_%default109900%_ absent-obj))
          (thread-local-ref__% _%key109898%_ _%default109900%_))))
    (define thread-local-ref
      (lambda _g110131_
        (let ((_g110130_ (let () (declare (not safe)) (##length _g110131_))))
          (cond ((let () (declare (not safe)) (##fx= _g110130_ 1))
                 (apply thread-local-ref__0 _g110131_))
                ((let () (declare (not safe)) (##fx= _g110130_ 2))
                 (apply thread-local-ref__% _g110131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g110131_))))))
    (define thread-local-get
      (lambda (_%key109887%_) (thread-local-ref__% _%key109887%_ '#f)))
    (define thread-local-set!
      (lambda (_%key109882%_ _%value109883%_)
        (let ((_%tab109885%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab109885%_ _%key109882%_ _%value109883%_))))
    (define thread-local-delete!
      (lambda (_%key109878%_)
        (let ((_%tab109880%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab109880%_ _%key109878%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr109859%_ (current-thread)))
          (if (actor-thread? _%thr109859%_)
              (let ((_%$e109862%_ (actor-thread-locals _%thr109859%_)))
                (if _%$e109862%_
                    _%$e109862%_
                    (let ((_%tab109866%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr109859%_ _%tab109866%_)
                      _%tab109866%_)))
              (if (eq? _%thr109859%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e109870%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr109859%_))))
                      (if _%$e109870%_
                          ((lambda (_%tab109873%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab109873%_)
                           _%$e109870%_)
                          (let ((_%tab109876%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr109859%_
                               _%tab109876%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab109876%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value109838%_)
        (if ((lambda (_%$obj109841%_)
               (or (not _%$obj109841%_) (procedure? _%$obj109841%_)))
             _%new-value109838%_)
            (let ((_%new-value109848%_ _%new-value109838%_))
              (__unhandled-actor-exception-hook-set! _%new-value109848%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value109838%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value109826%_)
        (let ((_%new-value109829%_ _%new-value109826%_))
          (set! __unhandled-actor-exception-hook _%new-value109829%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx109800%_ _%proc109801%_)
        (if (mutex? _%mx109800%_)
            (let ((_%mx109805%_ _%mx109800%_))
              (if (procedure? _%proc109801%_)
                  (let ((_%proc109815%_ _%proc109801%_))
                    (__with-lock _%mx109805%_ _%proc109815%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc109801%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx109800%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx109771%_ _%proc109772%_)
        (let* ((_%mx109775%_ _%mx109771%_)
               (_%proc109783%_ _%proc109772%_)
               (_%handler109792%_ (current-exception-handler)))
          (let ((__tmp110133
                 (lambda (_%e109794%_)
                   (let ((__tmp110134
                          (lambda ()
                            (mutex-unlock! _%mx109775%_)
                            (let ()
                              (declare (not safe))
                              (_%handler109792%_ _%e109794%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp110134))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e109794%_))))
                (__tmp110132
                 (lambda ()
                   (mutex-lock! _%mx109775%_)
                   (let ((_%result109798%_
                          (let () (declare (not safe)) (_%proc109783%_))))
                     (mutex-unlock! _%mx109775%_)
                     _%result109798%_))))
            (declare (not safe))
            (__with-exception-handler __tmp110133 __tmp110132)))))
    (define with-dynamic-lock
      (lambda (_%mx109746%_ _%proc109747%_)
        (if (mutex? _%mx109746%_)
            (let ((_%mx109751%_ _%mx109746%_))
              (if (procedure? _%proc109747%_)
                  (let ((_%proc109761%_ _%proc109747%_))
                    (__with-dynamic-lock _%mx109751%_ _%proc109761%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc109747%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx109746%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx109723%_ _%proc109724%_)
        (let* ((_%mx109727%_ _%mx109723%_) (_%proc109735%_ _%proc109724%_))
          (let ((__tmp110136 (lambda () (mutex-lock! _%mx109727%_)))
                (__tmp110135 (lambda () (mutex-unlock! _%mx109727%_))))
            (declare (not safe))
            (##dynamic-wind __tmp110136 _%proc109735%_ __tmp110135)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk109688%_ _%error-port109689%_)
        (if (procedure? _%thunk109688%_)
            (let ((_%thunk109693%_ _%thunk109688%_))
              (if (port? _%error-port109689%_)
                  (let ((_%error-port109703%_ _%error-port109689%_))
                    (__with-exception-stack-trace__%
                     _%thunk109693%_
                     _%error-port109703%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port109689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk109688%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk109716%_)
        (let ((_%error-port109718%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk109716%_
           _%error-port109718%_))))
    (define with-exception-stack-trace
      (lambda _g110138_
        (let ((_g110137_ (let () (declare (not safe)) (##length _g110138_))))
          (cond ((let () (declare (not safe)) (##fx= _g110137_ 1))
                 (apply with-exception-stack-trace__0 _g110138_))
                ((let () (declare (not safe)) (##fx= _g110137_ 2))
                 (apply with-exception-stack-trace__% _g110138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g110138_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk109650%_ _%error-port109651%_)
        (let* ((_%thunk109654%_ _%thunk109650%_)
               (_%error-port109662%_ _%error-port109651%_)
               (__tmp110139
                (let ((_%E109671%_ (current-exception-handler)))
                  (lambda (_%exn109673%_)
                    (let ((__tmp110140
                           (lambda (_%cont109675%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont109675%_
                                  _%exn109673%_
                                  _%error-port109662%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E109671%_ _%exn109673%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp110140))))))
          (declare (not safe))
          (__with-exception-handler __tmp110139 _%thunk109654%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk109680%_)
        (let ((_%error-port109682%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk109680%_
           _%error-port109682%_))))
    (define __with-exception-stack-trace
      (lambda _g110142_
        (let ((_g110141_ (let () (declare (not safe)) (##length _g110142_))))
          (cond ((let () (declare (not safe)) (##fx= _g110141_ 1))
                 (apply __with-exception-stack-trace__0 _g110142_))
                ((let () (declare (not safe)) (##fx= _g110141_ 2))
                 (apply __with-exception-stack-trace__% _g110142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g110142_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont109631%_ _%exn109632%_ _%error-port109633%_)
        (let ((_%out109635%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out109635%_))
          (display '"*** Unhandled exception in " _%out109635%_)
          (display (current-thread) _%out109635%_)
          (newline _%out109635%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn109632%_ _%out109635%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn109632%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out109635%_)
                (newline _%out109635%_)
                (display-continuation-backtrace _%cont109631%_ _%out109635%_)))
          (let ((__tmp110143 (get-output-string _%out109635%_)))
            (declare (not safe))
            (##write-string __tmp110143 _%error-port109633%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont109640%_ _%exn109641%_)
        (let ((_%error-port109643%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont109640%_
           _%exn109641%_
           _%error-port109643%_))))
    (define dump-stack-trace!
      (lambda _g110145_
        (let ((_g110144_ (let () (declare (not safe)) (##length _g110145_))))
          (cond ((let () (declare (not safe)) (##fx= _g110144_ 2))
                 (apply dump-stack-trace!__0 _g110145_))
                ((let () (declare (not safe)) (##fx= _g110144_ 3))
                 (apply dump-stack-trace!__% _g110145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g110145_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
