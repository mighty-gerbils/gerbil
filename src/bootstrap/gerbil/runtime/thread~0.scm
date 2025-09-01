(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1756715352)
  (begin
    (define spawn
      (lambda (_%f119063%_ . _%args119064%_)
        (if (procedure? _%f119063%_)
            (let ((_%f119068%_ _%f119063%_))
              (declare (not safe))
              (##apply __spawn _%f119068%_ _%args119064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f119063%_)
              '#!void))))
    (define __spawn
      (lambda (_%f119050%_ . _%args119051%_)
        (let ((_%f119054%_ _%f119050%_))
          (spawn-actor _%f119054%_ _%args119051%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name119034%_ _%f119035%_ . _%args119036%_)
        (if (procedure? _%f119035%_)
            (let ((_%f119040%_ _%f119035%_))
              (declare (not safe))
              (##apply __spawn/name _%name119034%_ _%f119040%_ _%args119036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f119035%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name119020%_ _%f119021%_ . _%args119022%_)
        (let ((_%f119025%_ _%f119021%_))
          (spawn-actor _%f119025%_ _%args119022%_ _%name119020%_ '#f))))
    (define spawn/group
      (lambda (_%name119004%_ _%f119005%_ . _%args119006%_)
        (if (procedure? _%f119005%_)
            (let ((_%f119010%_ _%f119005%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name119004%_
                       _%f119010%_
                       _%args119006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f119005%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name118988%_ _%f118989%_ . _%args118990%_)
        (let* ((_%f118993%_ _%f118989%_)
               (_%tgroup119002%_ (make-thread-group _%name118988%_)))
          (spawn-actor
           _%f118993%_
           _%args118990%_
           _%name118988%_
           _%tgroup119002%_))))
    (define spawn-actor
      (lambda (_%f118960%_ _%args118961%_ _%name118962%_ _%tgroup118963%_)
        (letrec ((_%thread-main118966%_
                  (lambda (_%thunk118980%_)
                    (lambda ()
                      (let ((__tmp119077
                             (lambda (_%exn118983%_)
                               (let ((__tmp119078
                                      (lambda (_%cont118985%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp119079
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont118985%_
                                                      _%exn118983%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp119079))
                                            '#!void)
                                        (let ((__tmp119080
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont118985%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp119080
                                           ##primordial-exception-handler
                                           _%exn118983%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp119078)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp119077
                         _%thunk118980%_))))))
          (let* ((_%thunk118969%_
                  (if (null? _%args118961%_)
                      _%f118960%_
                      (lambda () (apply _%f118960%_ _%args118961%_))))
                 (_%thunk118972%_
                  (lambda () (with-exception-stack-trace__0 _%thunk118969%_)))
                 (_%tgroup118977%_
                  (let ((_%$e118974%_ _%tgroup118963%_))
                    (if _%$e118974%_ _%$e118974%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main118966%_ _%thunk118972%_)
              _%name118962%_
              _%tgroup118977%_))))))
    (define spawn-thread__%
      (lambda (_%thunk118938%_ _%name118939%_ _%tgroup118940%_)
        (thread-start!
         (make-thread _%thunk118938%_ _%name118939%_ _%tgroup118940%_))))
    (define spawn-thread__0
      (lambda (_%thunk118945%_)
        (let* ((_%name118947%_ absent-obj) (_%tgroup118949%_ absent-obj))
          (spawn-thread__% _%thunk118945%_ _%name118947%_ _%tgroup118949%_))))
    (define spawn-thread__1
      (lambda (_%thunk118951%_ _%name118952%_)
        (let ((_%tgroup118954%_ absent-obj))
          (spawn-thread__% _%thunk118951%_ _%name118952%_ _%tgroup118954%_))))
    (define spawn-thread
      (lambda _g119081_
        (let ((_g119082_ (let () (declare (not safe)) (##length _g119081_))))
          (cond ((let () (declare (not safe)) (##fx= _g119082_ 1))
                 (apply spawn-thread__0 _g119081_))
                ((let () (declare (not safe)) (##fx= _g119082_ 2))
                 (apply spawn-thread__1 _g119081_))
                ((let () (declare (not safe)) (##fx= _g119082_ 3))
                 (apply spawn-thread__% _g119081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g119081_))))))
    (define thread-local-ref__%
      (lambda (_%key118922%_ _%default118923%_)
        (let ((_%tab118925%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab118925%_ _%key118922%_ _%default118923%_))))
    (define thread-local-ref__0
      (lambda (_%key118930%_)
        (let ((_%default118932%_ absent-obj))
          (thread-local-ref__% _%key118930%_ _%default118932%_))))
    (define thread-local-ref
      (lambda _g119083_
        (let ((_g119084_ (let () (declare (not safe)) (##length _g119083_))))
          (cond ((let () (declare (not safe)) (##fx= _g119084_ 1))
                 (apply thread-local-ref__0 _g119083_))
                ((let () (declare (not safe)) (##fx= _g119084_ 2))
                 (apply thread-local-ref__% _g119083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g119083_))))))
    (define thread-local-get
      (lambda (_%key118919%_) (thread-local-ref__% _%key118919%_ '#f)))
    (define thread-local-set!
      (lambda (_%key118914%_ _%value118915%_)
        (let ((_%tab118917%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab118917%_ _%key118914%_ _%value118915%_))))
    (define thread-local-delete!
      (lambda (_%key118910%_)
        (let ((_%tab118912%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab118912%_ _%key118910%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr118891%_ (current-thread)))
          (if (actor-thread? _%thr118891%_)
              (let ((_%$e118894%_ (actor-thread-locals _%thr118891%_)))
                (if _%$e118894%_
                    _%$e118894%_
                    (let ((_%tab118898%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr118891%_ _%tab118898%_)
                      _%tab118898%_)))
              (if (eq? _%thr118891%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e118902%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr118891%_))))
                      (if _%$e118902%_
                          ((lambda (_%tab118905%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab118905%_)
                           _%$e118902%_)
                          (let ((_%tab118908%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr118891%_
                               _%tab118908%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab118908%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value118869%_)
        (if ((lambda (_%$obj118872%_)
               (or (not _%$obj118872%_) (procedure? _%$obj118872%_)))
             _%new-value118869%_)
            (let ((_%new-value118879%_ _%new-value118869%_))
              (__unhandled-actor-exception-hook-set! _%new-value118879%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value118869%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value118856%_)
        (let ((_%new-value118860%_ _%new-value118856%_))
          (set! __unhandled-actor-exception-hook _%new-value118860%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx118830%_ _%proc118831%_)
        (if (mutex? _%mx118830%_)
            (let ((_%mx118835%_ _%mx118830%_))
              (if (procedure? _%proc118831%_)
                  (let ((_%proc118845%_ _%proc118831%_))
                    (__with-lock _%mx118835%_ _%proc118845%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118831%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx118830%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx118801%_ _%proc118802%_)
        (let* ((_%mx118805%_ _%mx118801%_)
               (_%proc118813%_ _%proc118802%_)
               (_%handler118822%_ (current-exception-handler)))
          (let ((__tmp119086
                 (lambda (_%e118824%_)
                   (let ((__tmp119087
                          (lambda ()
                            (mutex-unlock! _%mx118805%_)
                            (let ()
                              (declare (not safe))
                              (_%handler118822%_ _%e118824%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp119087))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e118824%_))))
                (__tmp119085
                 (lambda ()
                   (mutex-lock! _%mx118805%_)
                   (let ((_%result118828%_
                          (let () (declare (not safe)) (_%proc118813%_))))
                     (mutex-unlock! _%mx118805%_)
                     _%result118828%_))))
            (declare (not safe))
            (__with-exception-handler __tmp119086 __tmp119085)))))
    (define with-dynamic-lock
      (lambda (_%mx118776%_ _%proc118777%_)
        (if (mutex? _%mx118776%_)
            (let ((_%mx118781%_ _%mx118776%_))
              (if (procedure? _%proc118777%_)
                  (let ((_%proc118791%_ _%proc118777%_))
                    (__with-dynamic-lock _%mx118781%_ _%proc118791%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118777%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx118776%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx118753%_ _%proc118754%_)
        (let* ((_%mx118757%_ _%mx118753%_) (_%proc118765%_ _%proc118754%_))
          (let ((__tmp119089 (lambda () (mutex-lock! _%mx118757%_)))
                (__tmp119088 (lambda () (mutex-unlock! _%mx118757%_))))
            (declare (not safe))
            (##dynamic-wind __tmp119089 _%proc118765%_ __tmp119088)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk118718%_ _%error-port118719%_)
        (if (procedure? _%thunk118718%_)
            (let ((_%thunk118723%_ _%thunk118718%_))
              (if (port? _%error-port118719%_)
                  (let ((_%error-port118733%_ _%error-port118719%_))
                    (__with-exception-stack-trace__%
                     _%thunk118723%_
                     _%error-port118733%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port118719%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk118718%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk118746%_)
        (let ((_%error-port118748%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk118746%_
           _%error-port118748%_))))
    (define with-exception-stack-trace
      (lambda _g119090_
        (let ((_g119091_ (let () (declare (not safe)) (##length _g119090_))))
          (cond ((let () (declare (not safe)) (##fx= _g119091_ 1))
                 (apply with-exception-stack-trace__0 _g119090_))
                ((let () (declare (not safe)) (##fx= _g119091_ 2))
                 (apply with-exception-stack-trace__% _g119090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g119090_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk118679%_ _%error-port118680%_)
        (let* ((_%thunk118683%_ _%thunk118679%_)
               (_%error-port118692%_ _%error-port118680%_)
               (__tmp119092
                (let ((_%E118701%_ (current-exception-handler)))
                  (lambda (_%exn118703%_)
                    (let ((__tmp119093
                           (lambda (_%cont118705%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont118705%_
                                  _%exn118703%_
                                  _%error-port118692%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E118701%_ _%exn118703%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp119093))))))
          (declare (not safe))
          (__with-exception-handler __tmp119092 _%thunk118683%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk118710%_)
        (let ((_%error-port118712%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk118710%_
           _%error-port118712%_))))
    (define __with-exception-stack-trace
      (lambda _g119094_
        (let ((_g119095_ (let () (declare (not safe)) (##length _g119094_))))
          (cond ((let () (declare (not safe)) (##fx= _g119095_ 1))
                 (apply __with-exception-stack-trace__0 _g119094_))
                ((let () (declare (not safe)) (##fx= _g119095_ 2))
                 (apply __with-exception-stack-trace__% _g119094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g119094_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont118660%_ _%exn118661%_ _%error-port118662%_)
        (let ((_%out118664%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out118664%_))
          (display '"*** Unhandled exception in " _%out118664%_)
          (display (current-thread) _%out118664%_)
          (newline _%out118664%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn118661%_ _%out118664%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn118661%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out118664%_)
                (newline _%out118664%_)
                (display-continuation-backtrace _%cont118660%_ _%out118664%_)))
          (let ((__tmp119096 (get-output-string _%out118664%_)))
            (declare (not safe))
            (##write-string __tmp119096 _%error-port118662%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont118669%_ _%exn118670%_)
        (let ((_%error-port118672%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont118669%_
           _%exn118670%_
           _%error-port118672%_))))
    (define dump-stack-trace!
      (lambda _g119097_
        (let ((_g119098_ (let () (declare (not safe)) (##length _g119097_))))
          (cond ((let () (declare (not safe)) (##fx= _g119098_ 2))
                 (apply dump-stack-trace!__0 _g119097_))
                ((let () (declare (not safe)) (##fx= _g119098_ 3))
                 (apply dump-stack-trace!__% _g119097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g119097_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
