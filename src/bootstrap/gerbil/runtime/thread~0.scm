(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1769384628)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk122826%_ _%name122827%_)
        (if (procedure? _%thunk122826%_)
            (let ((_%thunk122831%_ _%thunk122826%_))
              (if (symbol? _%name122827%_)
                  (let ((_%name122841%_ _%name122827%_))
                    (__make-system-thread _%thunk122831%_ _%name122841%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name122827%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk122826%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk122804%_ _%name122805%_)
        (let* ((_%thunk122808%_ _%thunk122804%_)
               (_%name122816%_ _%name122805%_))
          (make-thread
           (lambda () (thread-main _%thunk122808%_))
           _%name122816%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk122779%_ _%name122780%_)
        (if (procedure? _%thunk122779%_)
            (let ((_%thunk122784%_ _%thunk122779%_))
              (if (symbol? _%name122780%_)
                  (let ((_%name122794%_ _%name122780%_))
                    (__system-thread! _%thunk122784%_ _%name122794%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name122780%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk122779%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk122758%_ _%name122759%_)
        (let* ((_%thunk122762%_ _%thunk122758%_)
               (_%name122770%_ _%name122759%_))
          (thread-start!
           (__make-system-thread _%thunk122762%_ _%name122770%_)))))
    (define system-actor!
      (lambda (_%thunk122733%_ _%name122734%_)
        (if (procedure? _%thunk122733%_)
            (let ((_%thunk122738%_ _%thunk122733%_))
              (if (symbol? _%name122734%_)
                  (let ((_%name122748%_ _%name122734%_))
                    (__system-actor! _%thunk122738%_ _%name122748%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name122734%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk122733%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk122712%_ _%name122713%_)
        (let* ((_%thunk122716%_ _%thunk122712%_)
               (_%name122724%_ _%name122713%_))
          (spawn-actor
           _%thunk122716%_
           '()
           _%name122724%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f122697%_ . _%args122698%_)
        (if (procedure? _%f122697%_)
            (let ((_%f122702%_ _%f122697%_))
              (declare (not safe))
              (##apply __spawn _%f122702%_ _%args122698%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f122697%_)
              '#!void))))
    (define __spawn
      (lambda (_%f122684%_ . _%args122685%_)
        (let ((_%f122688%_ _%f122684%_))
          (spawn-actor _%f122688%_ _%args122685%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name122668%_ _%f122669%_ . _%args122670%_)
        (if (procedure? _%f122669%_)
            (let ((_%f122674%_ _%f122669%_))
              (declare (not safe))
              (##apply __spawn/name _%name122668%_ _%f122674%_ _%args122670%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f122669%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name122654%_ _%f122655%_ . _%args122656%_)
        (let ((_%f122659%_ _%f122655%_))
          (spawn-actor _%f122659%_ _%args122656%_ _%name122654%_ '#f))))
    (define spawn/group
      (lambda (_%name122638%_ _%f122639%_ . _%args122640%_)
        (if (procedure? _%f122639%_)
            (let ((_%f122644%_ _%f122639%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name122638%_
                       _%f122644%_
                       _%args122640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f122639%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name122622%_ _%f122623%_ . _%args122624%_)
        (let* ((_%f122627%_ _%f122623%_)
               (_%tgroup122636%_ (make-thread-group _%name122622%_)))
          (spawn-actor
           _%f122627%_
           _%args122624%_
           _%name122622%_
           _%tgroup122636%_))))
    (define spawn-actor
      (lambda (_%f122603%_ _%args122604%_ _%name122605%_ _%tgroup122606%_)
        (let* ((_%thunk122610%_
                (if (null? _%args122604%_)
                    _%f122603%_
                    (lambda () (apply _%f122603%_ _%args122604%_))))
               (_%thunk122613%_
                (lambda () (with-exception-stack-trace__0 _%thunk122610%_)))
               (_%tgroup122618%_
                (let ((_%$e122615%_ _%tgroup122606%_))
                  (if _%$e122615%_ _%$e122615%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk122613%_))
            _%name122605%_
            _%tgroup122618%_)))))
    (define spawn-thread__%
      (lambda (_%thunk122580%_ _%name122581%_ _%tgroup122582%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk122580%_))
          _%name122581%_
          _%tgroup122582%_))))
    (define spawn-thread__0
      (lambda (_%thunk122588%_)
        (let* ((_%name122590%_ absent-obj) (_%tgroup122592%_ absent-obj))
          (spawn-thread__% _%thunk122588%_ _%name122590%_ _%tgroup122592%_))))
    (define spawn-thread__1
      (lambda (_%thunk122594%_ _%name122595%_)
        (let ((_%tgroup122597%_ absent-obj))
          (spawn-thread__% _%thunk122594%_ _%name122595%_ _%tgroup122597%_))))
    (define spawn-thread
      (lambda _g122852_
        (let ((_g122853_ (let () (declare (not safe)) (##length _g122852_))))
          (cond ((let () (declare (not safe)) (##fx= _g122853_ 1))
                 (apply spawn-thread__0 _g122852_))
                ((let () (declare (not safe)) (##fx= _g122853_ 2))
                 (apply spawn-thread__1 _g122852_))
                ((let () (declare (not safe)) (##fx= _g122853_ 3))
                 (apply spawn-thread__% _g122852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g122852_))))))
    (define thread-main
      (lambda (_%thunk122572%_)
        (let ((__tmp122854
               (lambda (_%exn122574%_)
                 (let ((__tmp122855
                        (lambda (_%cont122576%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp122856
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont122576%_
                                          _%exn122574%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp122856))
                              '#!void)
                          (let ((__tmp122857
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont122576%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp122857
                             ##primordial-exception-handler
                             _%exn122574%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122855)))))
          (declare (not safe))
          (with-exception-handler __tmp122854 _%thunk122572%_))))
    (define thread-local-ref__%
      (lambda (_%key122557%_ _%default122558%_)
        (let ((_%tab122560%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab122560%_ _%key122557%_ _%default122558%_))))
    (define thread-local-ref__0
      (lambda (_%key122565%_)
        (let ((_%default122567%_ absent-obj))
          (thread-local-ref__% _%key122565%_ _%default122567%_))))
    (define thread-local-ref
      (lambda _g122858_
        (let ((_g122859_ (let () (declare (not safe)) (##length _g122858_))))
          (cond ((let () (declare (not safe)) (##fx= _g122859_ 1))
                 (apply thread-local-ref__0 _g122858_))
                ((let () (declare (not safe)) (##fx= _g122859_ 2))
                 (apply thread-local-ref__% _g122858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g122858_))))))
    (define thread-local-get
      (lambda (_%key122554%_) (thread-local-ref__% _%key122554%_ '#f)))
    (define thread-local-set!
      (lambda (_%key122549%_ _%value122550%_)
        (let ((_%tab122552%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab122552%_ _%key122549%_ _%value122550%_))))
    (define thread-local-delete!
      (lambda (_%key122545%_)
        (let ((_%tab122547%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab122547%_ _%key122545%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr122526%_ (current-thread)))
          (if (actor-thread? _%thr122526%_)
              (let ((_%$e122529%_ (actor-thread-locals _%thr122526%_)))
                (if _%$e122529%_
                    _%$e122529%_
                    (let ((_%tab122533%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr122526%_ _%tab122533%_)
                      _%tab122533%_)))
              (if (eq? _%thr122526%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e122537%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr122526%_))))
                      (if _%$e122537%_
                          ((lambda (_%tab122540%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab122540%_)
                           _%$e122537%_)
                          (let ((_%tab122543%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr122526%_
                               _%tab122543%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab122543%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value122504%_)
        (if ((lambda (_%$obj122507%_)
               (or (not _%$obj122507%_) (procedure? _%$obj122507%_)))
             _%new-value122504%_)
            (let ((_%new-value122514%_ _%new-value122504%_))
              (__unhandled-actor-exception-hook-set! _%new-value122514%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value122504%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value122491%_)
        (let ((_%new-value122495%_ _%new-value122491%_))
          (set! __unhandled-actor-exception-hook _%new-value122495%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx122465%_ _%proc122466%_)
        (if (mutex? _%mx122465%_)
            (let ((_%mx122470%_ _%mx122465%_))
              (if (procedure? _%proc122466%_)
                  (let ((_%proc122480%_ _%proc122466%_))
                    (__with-lock _%mx122470%_ _%proc122480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc122466%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx122465%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx122436%_ _%proc122437%_)
        (let* ((_%mx122440%_ _%mx122436%_)
               (_%proc122448%_ _%proc122437%_)
               (_%handler122457%_ (current-exception-handler)))
          (let ((__tmp122861
                 (lambda (_%e122459%_)
                   (let ((__tmp122862
                          (lambda ()
                            (mutex-unlock! _%mx122440%_)
                            (let ()
                              (declare (not safe))
                              (_%handler122457%_ _%e122459%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp122862))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e122459%_))))
                (__tmp122860
                 (lambda ()
                   (mutex-lock! _%mx122440%_)
                   (let ((_%result122463%_
                          (let () (declare (not safe)) (_%proc122448%_))))
                     (mutex-unlock! _%mx122440%_)
                     _%result122463%_))))
            (declare (not safe))
            (__with-exception-handler __tmp122861 __tmp122860)))))
    (define with-dynamic-lock
      (lambda (_%mx122411%_ _%proc122412%_)
        (if (mutex? _%mx122411%_)
            (let ((_%mx122416%_ _%mx122411%_))
              (if (procedure? _%proc122412%_)
                  (let ((_%proc122426%_ _%proc122412%_))
                    (__with-dynamic-lock _%mx122416%_ _%proc122426%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc122412%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx122411%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx122388%_ _%proc122389%_)
        (let* ((_%mx122392%_ _%mx122388%_) (_%proc122400%_ _%proc122389%_))
          (let ((__tmp122864 (lambda () (mutex-lock! _%mx122392%_)))
                (__tmp122863 (lambda () (mutex-unlock! _%mx122392%_))))
            (declare (not safe))
            (##dynamic-wind __tmp122864 _%proc122400%_ __tmp122863)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk122353%_ _%error-port122354%_)
        (if (procedure? _%thunk122353%_)
            (let ((_%thunk122358%_ _%thunk122353%_))
              (if (port? _%error-port122354%_)
                  (let ((_%error-port122368%_ _%error-port122354%_))
                    (__with-exception-stack-trace__%
                     _%thunk122358%_
                     _%error-port122368%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port122354%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk122353%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk122381%_)
        (let ((_%error-port122383%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk122381%_
           _%error-port122383%_))))
    (define with-exception-stack-trace
      (lambda _g122865_
        (let ((_g122866_ (let () (declare (not safe)) (##length _g122865_))))
          (cond ((let () (declare (not safe)) (##fx= _g122866_ 1))
                 (apply with-exception-stack-trace__0 _g122865_))
                ((let () (declare (not safe)) (##fx= _g122866_ 2))
                 (apply with-exception-stack-trace__% _g122865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g122865_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk122314%_ _%error-port122315%_)
        (let* ((_%thunk122318%_ _%thunk122314%_)
               (_%error-port122327%_ _%error-port122315%_)
               (__tmp122867
                (let ((_%E122336%_ (current-exception-handler)))
                  (lambda (_%exn122338%_)
                    (let ((__tmp122868
                           (lambda (_%cont122340%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont122340%_
                                  _%exn122338%_
                                  _%error-port122327%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E122336%_ _%exn122338%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp122868))))))
          (declare (not safe))
          (__with-exception-handler __tmp122867 _%thunk122318%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk122345%_)
        (let ((_%error-port122347%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk122345%_
           _%error-port122347%_))))
    (define __with-exception-stack-trace
      (lambda _g122869_
        (let ((_g122870_ (let () (declare (not safe)) (##length _g122869_))))
          (cond ((let () (declare (not safe)) (##fx= _g122870_ 1))
                 (apply __with-exception-stack-trace__0 _g122869_))
                ((let () (declare (not safe)) (##fx= _g122870_ 2))
                 (apply __with-exception-stack-trace__% _g122869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g122869_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont122295%_ _%exn122296%_ _%error-port122297%_)
        (let ((_%out122299%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out122299%_))
          (display '"*** Unhandled exception in " _%out122299%_)
          (display (current-thread) _%out122299%_)
          (newline _%out122299%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn122296%_ _%out122299%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn122296%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out122299%_)
                (newline _%out122299%_)
                (display-continuation-backtrace _%cont122295%_ _%out122299%_)))
          (let ((__tmp122871 (get-output-string _%out122299%_)))
            (declare (not safe))
            (##write-string __tmp122871 _%error-port122297%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont122304%_ _%exn122305%_)
        (let ((_%error-port122307%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont122304%_
           _%exn122305%_
           _%error-port122307%_))))
    (define dump-stack-trace!
      (lambda _g122872_
        (let ((_g122873_ (let () (declare (not safe)) (##length _g122872_))))
          (cond ((let () (declare (not safe)) (##fx= _g122873_ 2))
                 (apply dump-stack-trace!__0 _g122872_))
                ((let () (declare (not safe)) (##fx= _g122873_ 3))
                 (apply dump-stack-trace!__% _g122872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g122872_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
