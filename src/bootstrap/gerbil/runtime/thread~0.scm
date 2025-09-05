(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1756721295)
  (begin
    (define spawn
      (lambda (_%f119061%_ . _%args119062%_)
        (if (procedure? _%f119061%_)
            (let ((_%f119066%_ _%f119061%_))
              (declare (not safe))
              (##apply __spawn _%f119066%_ _%args119062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f119061%_)
              '#!void))))
    (define __spawn
      (lambda (_%f119048%_ . _%args119049%_)
        (let ((_%f119052%_ _%f119048%_))
          (spawn-actor _%f119052%_ _%args119049%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name119032%_ _%f119033%_ . _%args119034%_)
        (if (procedure? _%f119033%_)
            (let ((_%f119038%_ _%f119033%_))
              (declare (not safe))
              (##apply __spawn/name _%name119032%_ _%f119038%_ _%args119034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f119033%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name119018%_ _%f119019%_ . _%args119020%_)
        (let ((_%f119023%_ _%f119019%_))
          (spawn-actor _%f119023%_ _%args119020%_ _%name119018%_ '#f))))
    (define spawn/group
      (lambda (_%name119002%_ _%f119003%_ . _%args119004%_)
        (if (procedure? _%f119003%_)
            (let ((_%f119008%_ _%f119003%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name119002%_
                       _%f119008%_
                       _%args119004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f119003%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name118986%_ _%f118987%_ . _%args118988%_)
        (let* ((_%f118991%_ _%f118987%_)
               (_%tgroup119000%_ (make-thread-group _%name118986%_)))
          (spawn-actor
           _%f118991%_
           _%args118988%_
           _%name118986%_
           _%tgroup119000%_))))
    (define spawn-actor
      (lambda (_%f118958%_ _%args118959%_ _%name118960%_ _%tgroup118961%_)
        (letrec ((_%thread-main118964%_
                  (lambda (_%thunk118978%_)
                    (lambda ()
                      (let ((__tmp119075
                             (lambda (_%exn118981%_)
                               (let ((__tmp119076
                                      (lambda (_%cont118983%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp119077
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont118983%_
                                                      _%exn118981%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp119077))
                                            '#!void)
                                        (let ((__tmp119078
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont118983%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp119078
                                           ##primordial-exception-handler
                                           _%exn118981%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp119076)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp119075
                         _%thunk118978%_))))))
          (let* ((_%thunk118967%_
                  (if (null? _%args118959%_)
                      _%f118958%_
                      (lambda () (apply _%f118958%_ _%args118959%_))))
                 (_%thunk118970%_
                  (lambda () (with-exception-stack-trace__0 _%thunk118967%_)))
                 (_%tgroup118975%_
                  (let ((_%$e118972%_ _%tgroup118961%_))
                    (if _%$e118972%_ _%$e118972%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main118964%_ _%thunk118970%_)
              _%name118960%_
              _%tgroup118975%_))))))
    (define spawn-thread__%
      (lambda (_%thunk118936%_ _%name118937%_ _%tgroup118938%_)
        (thread-start!
         (make-thread _%thunk118936%_ _%name118937%_ _%tgroup118938%_))))
    (define spawn-thread__0
      (lambda (_%thunk118943%_)
        (let* ((_%name118945%_ absent-obj) (_%tgroup118947%_ absent-obj))
          (spawn-thread__% _%thunk118943%_ _%name118945%_ _%tgroup118947%_))))
    (define spawn-thread__1
      (lambda (_%thunk118949%_ _%name118950%_)
        (let ((_%tgroup118952%_ absent-obj))
          (spawn-thread__% _%thunk118949%_ _%name118950%_ _%tgroup118952%_))))
    (define spawn-thread
      (lambda _g119079_
        (let ((_g119080_ (let () (declare (not safe)) (##length _g119079_))))
          (cond ((let () (declare (not safe)) (##fx= _g119080_ 1))
                 (apply spawn-thread__0 _g119079_))
                ((let () (declare (not safe)) (##fx= _g119080_ 2))
                 (apply spawn-thread__1 _g119079_))
                ((let () (declare (not safe)) (##fx= _g119080_ 3))
                 (apply spawn-thread__% _g119079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g119079_))))))
    (define thread-local-ref__%
      (lambda (_%key118920%_ _%default118921%_)
        (let ((_%tab118923%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab118923%_ _%key118920%_ _%default118921%_))))
    (define thread-local-ref__0
      (lambda (_%key118928%_)
        (let ((_%default118930%_ absent-obj))
          (thread-local-ref__% _%key118928%_ _%default118930%_))))
    (define thread-local-ref
      (lambda _g119081_
        (let ((_g119082_ (let () (declare (not safe)) (##length _g119081_))))
          (cond ((let () (declare (not safe)) (##fx= _g119082_ 1))
                 (apply thread-local-ref__0 _g119081_))
                ((let () (declare (not safe)) (##fx= _g119082_ 2))
                 (apply thread-local-ref__% _g119081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g119081_))))))
    (define thread-local-get
      (lambda (_%key118917%_) (thread-local-ref__% _%key118917%_ '#f)))
    (define thread-local-set!
      (lambda (_%key118912%_ _%value118913%_)
        (let ((_%tab118915%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab118915%_ _%key118912%_ _%value118913%_))))
    (define thread-local-delete!
      (lambda (_%key118908%_)
        (let ((_%tab118910%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab118910%_ _%key118908%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr118889%_ (current-thread)))
          (if (actor-thread? _%thr118889%_)
              (let ((_%$e118892%_ (actor-thread-locals _%thr118889%_)))
                (if _%$e118892%_
                    _%$e118892%_
                    (let ((_%tab118896%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr118889%_ _%tab118896%_)
                      _%tab118896%_)))
              (if (eq? _%thr118889%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e118900%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr118889%_))))
                      (if _%$e118900%_
                          ((lambda (_%tab118903%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab118903%_)
                           _%$e118900%_)
                          (let ((_%tab118906%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr118889%_
                               _%tab118906%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab118906%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value118867%_)
        (if ((lambda (_%$obj118870%_)
               (or (not _%$obj118870%_) (procedure? _%$obj118870%_)))
             _%new-value118867%_)
            (let ((_%new-value118877%_ _%new-value118867%_))
              (__unhandled-actor-exception-hook-set! _%new-value118877%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value118867%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value118854%_)
        (let ((_%new-value118858%_ _%new-value118854%_))
          (set! __unhandled-actor-exception-hook _%new-value118858%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx118828%_ _%proc118829%_)
        (if (mutex? _%mx118828%_)
            (let ((_%mx118833%_ _%mx118828%_))
              (if (procedure? _%proc118829%_)
                  (let ((_%proc118843%_ _%proc118829%_))
                    (__with-lock _%mx118833%_ _%proc118843%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118829%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx118828%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx118799%_ _%proc118800%_)
        (let* ((_%mx118803%_ _%mx118799%_)
               (_%proc118811%_ _%proc118800%_)
               (_%handler118820%_ (current-exception-handler)))
          (let ((__tmp119084
                 (lambda (_%e118822%_)
                   (let ((__tmp119085
                          (lambda ()
                            (mutex-unlock! _%mx118803%_)
                            (let ()
                              (declare (not safe))
                              (_%handler118820%_ _%e118822%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp119085))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e118822%_))))
                (__tmp119083
                 (lambda ()
                   (mutex-lock! _%mx118803%_)
                   (let ((_%result118826%_
                          (let () (declare (not safe)) (_%proc118811%_))))
                     (mutex-unlock! _%mx118803%_)
                     _%result118826%_))))
            (declare (not safe))
            (__with-exception-handler __tmp119084 __tmp119083)))))
    (define with-dynamic-lock
      (lambda (_%mx118774%_ _%proc118775%_)
        (if (mutex? _%mx118774%_)
            (let ((_%mx118779%_ _%mx118774%_))
              (if (procedure? _%proc118775%_)
                  (let ((_%proc118789%_ _%proc118775%_))
                    (__with-dynamic-lock _%mx118779%_ _%proc118789%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc118775%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx118774%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx118751%_ _%proc118752%_)
        (let* ((_%mx118755%_ _%mx118751%_) (_%proc118763%_ _%proc118752%_))
          (let ((__tmp119087 (lambda () (mutex-lock! _%mx118755%_)))
                (__tmp119086 (lambda () (mutex-unlock! _%mx118755%_))))
            (declare (not safe))
            (##dynamic-wind __tmp119087 _%proc118763%_ __tmp119086)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk118716%_ _%error-port118717%_)
        (if (procedure? _%thunk118716%_)
            (let ((_%thunk118721%_ _%thunk118716%_))
              (if (port? _%error-port118717%_)
                  (let ((_%error-port118731%_ _%error-port118717%_))
                    (__with-exception-stack-trace__%
                     _%thunk118721%_
                     _%error-port118731%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port118717%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk118716%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk118744%_)
        (let ((_%error-port118746%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk118744%_
           _%error-port118746%_))))
    (define with-exception-stack-trace
      (lambda _g119088_
        (let ((_g119089_ (let () (declare (not safe)) (##length _g119088_))))
          (cond ((let () (declare (not safe)) (##fx= _g119089_ 1))
                 (apply with-exception-stack-trace__0 _g119088_))
                ((let () (declare (not safe)) (##fx= _g119089_ 2))
                 (apply with-exception-stack-trace__% _g119088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g119088_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk118677%_ _%error-port118678%_)
        (let* ((_%thunk118681%_ _%thunk118677%_)
               (_%error-port118690%_ _%error-port118678%_)
               (__tmp119090
                (let ((_%E118699%_ (current-exception-handler)))
                  (lambda (_%exn118701%_)
                    (let ((__tmp119091
                           (lambda (_%cont118703%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont118703%_
                                  _%exn118701%_
                                  _%error-port118690%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E118699%_ _%exn118701%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp119091))))))
          (declare (not safe))
          (__with-exception-handler __tmp119090 _%thunk118681%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk118708%_)
        (let ((_%error-port118710%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk118708%_
           _%error-port118710%_))))
    (define __with-exception-stack-trace
      (lambda _g119092_
        (let ((_g119093_ (let () (declare (not safe)) (##length _g119092_))))
          (cond ((let () (declare (not safe)) (##fx= _g119093_ 1))
                 (apply __with-exception-stack-trace__0 _g119092_))
                ((let () (declare (not safe)) (##fx= _g119093_ 2))
                 (apply __with-exception-stack-trace__% _g119092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g119092_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont118658%_ _%exn118659%_ _%error-port118660%_)
        (let ((_%out118662%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out118662%_))
          (display '"*** Unhandled exception in " _%out118662%_)
          (display (current-thread) _%out118662%_)
          (newline _%out118662%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn118659%_ _%out118662%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn118659%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out118662%_)
                (newline _%out118662%_)
                (display-continuation-backtrace _%cont118658%_ _%out118662%_)))
          (let ((__tmp119094 (get-output-string _%out118662%_)))
            (declare (not safe))
            (##write-string __tmp119094 _%error-port118660%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont118667%_ _%exn118668%_)
        (let ((_%error-port118670%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont118667%_
           _%exn118668%_
           _%error-port118670%_))))
    (define dump-stack-trace!
      (lambda _g119095_
        (let ((_g119096_ (let () (declare (not safe)) (##length _g119095_))))
          (cond ((let () (declare (not safe)) (##fx= _g119096_ 2))
                 (apply dump-stack-trace!__0 _g119095_))
                ((let () (declare (not safe)) (##fx= _g119096_ 3))
                 (apply dump-stack-trace!__% _g119095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g119095_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
