(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770341476)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk132813%_ _%name132814%_)
        (if (procedure? _%thunk132813%_)
            (let ((_%thunk132818%_ _%thunk132813%_))
              (if (symbol? _%name132814%_)
                  (let ((_%name132828%_ _%name132814%_))
                    (__make-system-thread _%thunk132818%_ _%name132828%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name132814%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk132813%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk132791%_ _%name132792%_)
        (let* ((_%thunk132795%_ _%thunk132791%_)
               (_%name132803%_ _%name132792%_))
          (make-thread
           (lambda () (thread-main _%thunk132795%_))
           _%name132803%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk132766%_ _%name132767%_)
        (if (procedure? _%thunk132766%_)
            (let ((_%thunk132771%_ _%thunk132766%_))
              (if (symbol? _%name132767%_)
                  (let ((_%name132781%_ _%name132767%_))
                    (__system-thread! _%thunk132771%_ _%name132781%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name132767%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk132766%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk132745%_ _%name132746%_)
        (let* ((_%thunk132749%_ _%thunk132745%_)
               (_%name132757%_ _%name132746%_))
          (thread-start!
           (__make-system-thread _%thunk132749%_ _%name132757%_)))))
    (define system-actor!
      (lambda (_%thunk132720%_ _%name132721%_)
        (if (procedure? _%thunk132720%_)
            (let ((_%thunk132725%_ _%thunk132720%_))
              (if (symbol? _%name132721%_)
                  (let ((_%name132735%_ _%name132721%_))
                    (__system-actor! _%thunk132725%_ _%name132735%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name132721%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk132720%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk132699%_ _%name132700%_)
        (let* ((_%thunk132703%_ _%thunk132699%_)
               (_%name132711%_ _%name132700%_))
          (spawn-actor
           _%thunk132703%_
           '()
           _%name132711%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f132684%_ . _%args132685%_)
        (if (procedure? _%f132684%_)
            (let ((_%f132689%_ _%f132684%_))
              (declare (not safe))
              (##apply __spawn _%f132689%_ _%args132685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f132684%_)
              '#!void))))
    (define __spawn
      (lambda (_%f132671%_ . _%args132672%_)
        (let ((_%f132675%_ _%f132671%_))
          (spawn-actor _%f132675%_ _%args132672%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name132655%_ _%f132656%_ . _%args132657%_)
        (if (procedure? _%f132656%_)
            (let ((_%f132661%_ _%f132656%_))
              (declare (not safe))
              (##apply __spawn/name _%name132655%_ _%f132661%_ _%args132657%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f132656%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name132641%_ _%f132642%_ . _%args132643%_)
        (let ((_%f132646%_ _%f132642%_))
          (spawn-actor _%f132646%_ _%args132643%_ _%name132641%_ '#f))))
    (define spawn/group
      (lambda (_%name132625%_ _%f132626%_ . _%args132627%_)
        (if (procedure? _%f132626%_)
            (let ((_%f132631%_ _%f132626%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name132625%_
                       _%f132631%_
                       _%args132627%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f132626%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name132609%_ _%f132610%_ . _%args132611%_)
        (let* ((_%f132614%_ _%f132610%_)
               (_%tgroup132623%_ (make-thread-group _%name132609%_)))
          (spawn-actor
           _%f132614%_
           _%args132611%_
           _%name132609%_
           _%tgroup132623%_))))
    (define spawn-actor
      (lambda (_%f132590%_ _%args132591%_ _%name132592%_ _%tgroup132593%_)
        (let* ((_%thunk132597%_
                (if (null? _%args132591%_)
                    _%f132590%_
                    (lambda () (apply _%f132590%_ _%args132591%_))))
               (_%thunk132600%_
                (lambda () (with-exception-stack-trace__0 _%thunk132597%_)))
               (_%tgroup132605%_
                (let ((_%$e132602%_ _%tgroup132593%_))
                  (if _%$e132602%_ _%$e132602%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk132600%_))
            _%name132592%_
            _%tgroup132605%_)))))
    (define spawn-thread__%
      (lambda (_%thunk132567%_ _%name132568%_ _%tgroup132569%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk132567%_))
          _%name132568%_
          _%tgroup132569%_))))
    (define spawn-thread__0
      (lambda (_%thunk132575%_)
        (let* ((_%name132577%_ absent-obj) (_%tgroup132579%_ absent-obj))
          (spawn-thread__% _%thunk132575%_ _%name132577%_ _%tgroup132579%_))))
    (define spawn-thread__1
      (lambda (_%thunk132581%_ _%name132582%_)
        (let ((_%tgroup132584%_ absent-obj))
          (spawn-thread__% _%thunk132581%_ _%name132582%_ _%tgroup132584%_))))
    (define spawn-thread
      (lambda _g132839_
        (let ((_g132840_ (let () (declare (not safe)) (##length _g132839_))))
          (cond ((let () (declare (not safe)) (##fx= _g132840_ 1))
                 (apply spawn-thread__0 _g132839_))
                ((let () (declare (not safe)) (##fx= _g132840_ 2))
                 (apply spawn-thread__1 _g132839_))
                ((let () (declare (not safe)) (##fx= _g132840_ 3))
                 (apply spawn-thread__% _g132839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g132839_))))))
    (define thread-main
      (lambda (_%thunk132559%_)
        (let ((__tmp132841
               (lambda (_%exn132561%_)
                 (let ((__tmp132842
                        (lambda (_%cont132563%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp132843
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont132563%_
                                          _%exn132561%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp132843))
                              '#!void)
                          (let ((__tmp132844
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont132563%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp132844
                             ##primordial-exception-handler
                             _%exn132561%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp132842)))))
          (declare (not safe))
          (with-exception-handler __tmp132841 _%thunk132559%_))))
    (define thread-local-ref__%
      (lambda (_%key132544%_ _%default132545%_)
        (let ((_%tab132547%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab132547%_ _%key132544%_ _%default132545%_))))
    (define thread-local-ref__0
      (lambda (_%key132552%_)
        (let ((_%default132554%_ absent-obj))
          (thread-local-ref__% _%key132552%_ _%default132554%_))))
    (define thread-local-ref
      (lambda _g132845_
        (let ((_g132846_ (let () (declare (not safe)) (##length _g132845_))))
          (cond ((let () (declare (not safe)) (##fx= _g132846_ 1))
                 (apply thread-local-ref__0 _g132845_))
                ((let () (declare (not safe)) (##fx= _g132846_ 2))
                 (apply thread-local-ref__% _g132845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g132845_))))))
    (define thread-local-get
      (lambda (_%key132541%_) (thread-local-ref__% _%key132541%_ '#f)))
    (define thread-local-set!
      (lambda (_%key132536%_ _%value132537%_)
        (let ((_%tab132539%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab132539%_ _%key132536%_ _%value132537%_))))
    (define thread-local-delete!
      (lambda (_%key132532%_)
        (let ((_%tab132534%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab132534%_ _%key132532%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr132513%_ (current-thread)))
          (if (actor-thread? _%thr132513%_)
              (let ((_%$e132516%_ (actor-thread-locals _%thr132513%_)))
                (if _%$e132516%_
                    _%$e132516%_
                    (let ((_%tab132520%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr132513%_ _%tab132520%_)
                      _%tab132520%_)))
              (if (eq? _%thr132513%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e132524%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr132513%_))))
                      (if _%$e132524%_
                          ((lambda (_%tab132527%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab132527%_)
                           _%$e132524%_)
                          (let ((_%tab132530%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr132513%_
                               _%tab132530%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab132530%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value132491%_)
        (if ((lambda (_%$obj132494%_)
               (or (not _%$obj132494%_) (procedure? _%$obj132494%_)))
             _%new-value132491%_)
            (let ((_%new-value132501%_ _%new-value132491%_))
              (__unhandled-actor-exception-hook-set! _%new-value132501%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value132491%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value132478%_)
        (let ((_%new-value132482%_ _%new-value132478%_))
          (set! __unhandled-actor-exception-hook _%new-value132482%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx132452%_ _%proc132453%_)
        (if (mutex? _%mx132452%_)
            (let ((_%mx132457%_ _%mx132452%_))
              (if (procedure? _%proc132453%_)
                  (let ((_%proc132467%_ _%proc132453%_))
                    (__with-lock _%mx132457%_ _%proc132467%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc132453%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx132452%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx132423%_ _%proc132424%_)
        (let* ((_%mx132427%_ _%mx132423%_)
               (_%proc132435%_ _%proc132424%_)
               (_%handler132444%_ (current-exception-handler)))
          (let ((__tmp132848
                 (lambda (_%e132446%_)
                   (let ((__tmp132849
                          (lambda ()
                            (mutex-unlock! _%mx132427%_)
                            (let ()
                              (declare (not safe))
                              (_%handler132444%_ _%e132446%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp132849))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e132446%_))))
                (__tmp132847
                 (lambda ()
                   (mutex-lock! _%mx132427%_)
                   (let ((_%result132450%_
                          (let () (declare (not safe)) (_%proc132435%_))))
                     (mutex-unlock! _%mx132427%_)
                     _%result132450%_))))
            (declare (not safe))
            (__with-exception-handler __tmp132848 __tmp132847)))))
    (define with-dynamic-lock
      (lambda (_%mx132398%_ _%proc132399%_)
        (if (mutex? _%mx132398%_)
            (let ((_%mx132403%_ _%mx132398%_))
              (if (procedure? _%proc132399%_)
                  (let ((_%proc132413%_ _%proc132399%_))
                    (__with-dynamic-lock _%mx132403%_ _%proc132413%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc132399%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx132398%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx132375%_ _%proc132376%_)
        (let* ((_%mx132379%_ _%mx132375%_) (_%proc132387%_ _%proc132376%_))
          (let ((__tmp132851 (lambda () (mutex-lock! _%mx132379%_)))
                (__tmp132850 (lambda () (mutex-unlock! _%mx132379%_))))
            (declare (not safe))
            (##dynamic-wind __tmp132851 _%proc132387%_ __tmp132850)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk132340%_ _%error-port132341%_)
        (if (procedure? _%thunk132340%_)
            (let ((_%thunk132345%_ _%thunk132340%_))
              (if (port? _%error-port132341%_)
                  (let ((_%error-port132355%_ _%error-port132341%_))
                    (__with-exception-stack-trace__%
                     _%thunk132345%_
                     _%error-port132355%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port132341%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk132340%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk132368%_)
        (let ((_%error-port132370%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk132368%_
           _%error-port132370%_))))
    (define with-exception-stack-trace
      (lambda _g132852_
        (let ((_g132853_ (let () (declare (not safe)) (##length _g132852_))))
          (cond ((let () (declare (not safe)) (##fx= _g132853_ 1))
                 (apply with-exception-stack-trace__0 _g132852_))
                ((let () (declare (not safe)) (##fx= _g132853_ 2))
                 (apply with-exception-stack-trace__% _g132852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g132852_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk132301%_ _%error-port132302%_)
        (let* ((_%thunk132305%_ _%thunk132301%_)
               (_%error-port132314%_ _%error-port132302%_)
               (__tmp132854
                (let ((_%E132323%_ (current-exception-handler)))
                  (lambda (_%exn132325%_)
                    (let ((__tmp132855
                           (lambda (_%cont132327%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont132327%_
                                  _%exn132325%_
                                  _%error-port132314%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E132323%_ _%exn132325%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp132855))))))
          (declare (not safe))
          (__with-exception-handler __tmp132854 _%thunk132305%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk132332%_)
        (let ((_%error-port132334%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk132332%_
           _%error-port132334%_))))
    (define __with-exception-stack-trace
      (lambda _g132856_
        (let ((_g132857_ (let () (declare (not safe)) (##length _g132856_))))
          (cond ((let () (declare (not safe)) (##fx= _g132857_ 1))
                 (apply __with-exception-stack-trace__0 _g132856_))
                ((let () (declare (not safe)) (##fx= _g132857_ 2))
                 (apply __with-exception-stack-trace__% _g132856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g132856_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont132282%_ _%exn132283%_ _%error-port132284%_)
        (let ((_%out132286%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out132286%_))
          (display '"*** Unhandled exception in " _%out132286%_)
          (display (current-thread) _%out132286%_)
          (newline _%out132286%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn132283%_ _%out132286%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn132283%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out132286%_)
                (newline _%out132286%_)
                (display-continuation-backtrace _%cont132282%_ _%out132286%_)))
          (let ((__tmp132858 (get-output-string _%out132286%_)))
            (declare (not safe))
            (##write-string __tmp132858 _%error-port132284%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont132291%_ _%exn132292%_)
        (let ((_%error-port132294%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont132291%_
           _%exn132292%_
           _%error-port132294%_))))
    (define dump-stack-trace!
      (lambda _g132859_
        (let ((_g132860_ (let () (declare (not safe)) (##length _g132859_))))
          (cond ((let () (declare (not safe)) (##fx= _g132860_ 2))
                 (apply dump-stack-trace!__0 _g132859_))
                ((let () (declare (not safe)) (##fx= _g132860_ 3))
                 (apply dump-stack-trace!__% _g132859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g132859_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
