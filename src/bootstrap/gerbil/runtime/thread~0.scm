(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1768863411)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk122312%_ _%name122313%_)
        (if (procedure? _%thunk122312%_)
            (let ((_%thunk122317%_ _%thunk122312%_))
              (if (symbol? _%name122313%_)
                  (let ((_%name122327%_ _%name122313%_))
                    (__make-system-thread _%thunk122317%_ _%name122327%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name122313%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk122312%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk122290%_ _%name122291%_)
        (let* ((_%thunk122294%_ _%thunk122290%_)
               (_%name122302%_ _%name122291%_))
          (make-thread
           (lambda () (thread-main _%thunk122294%_))
           _%name122302%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk122265%_ _%name122266%_)
        (if (procedure? _%thunk122265%_)
            (let ((_%thunk122270%_ _%thunk122265%_))
              (if (symbol? _%name122266%_)
                  (let ((_%name122280%_ _%name122266%_))
                    (__system-thread! _%thunk122270%_ _%name122280%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name122266%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk122265%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk122244%_ _%name122245%_)
        (let* ((_%thunk122248%_ _%thunk122244%_)
               (_%name122256%_ _%name122245%_))
          (thread-start!
           (__make-system-thread _%thunk122248%_ _%name122256%_)))))
    (define system-actor!
      (lambda (_%thunk122219%_ _%name122220%_)
        (if (procedure? _%thunk122219%_)
            (let ((_%thunk122224%_ _%thunk122219%_))
              (if (symbol? _%name122220%_)
                  (let ((_%name122234%_ _%name122220%_))
                    (__system-actor! _%thunk122224%_ _%name122234%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name122220%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk122219%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk122198%_ _%name122199%_)
        (let* ((_%thunk122202%_ _%thunk122198%_)
               (_%name122210%_ _%name122199%_))
          (spawn-actor
           _%thunk122202%_
           '()
           _%name122210%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f122183%_ . _%args122184%_)
        (if (procedure? _%f122183%_)
            (let ((_%f122188%_ _%f122183%_))
              (declare (not safe))
              (##apply __spawn _%f122188%_ _%args122184%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f122183%_)
              '#!void))))
    (define __spawn
      (lambda (_%f122170%_ . _%args122171%_)
        (let ((_%f122174%_ _%f122170%_))
          (spawn-actor _%f122174%_ _%args122171%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name122154%_ _%f122155%_ . _%args122156%_)
        (if (procedure? _%f122155%_)
            (let ((_%f122160%_ _%f122155%_))
              (declare (not safe))
              (##apply __spawn/name _%name122154%_ _%f122160%_ _%args122156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f122155%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name122140%_ _%f122141%_ . _%args122142%_)
        (let ((_%f122145%_ _%f122141%_))
          (spawn-actor _%f122145%_ _%args122142%_ _%name122140%_ '#f))))
    (define spawn/group
      (lambda (_%name122124%_ _%f122125%_ . _%args122126%_)
        (if (procedure? _%f122125%_)
            (let ((_%f122130%_ _%f122125%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name122124%_
                       _%f122130%_
                       _%args122126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f122125%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name122108%_ _%f122109%_ . _%args122110%_)
        (let* ((_%f122113%_ _%f122109%_)
               (_%tgroup122122%_ (make-thread-group _%name122108%_)))
          (spawn-actor
           _%f122113%_
           _%args122110%_
           _%name122108%_
           _%tgroup122122%_))))
    (define spawn-actor
      (lambda (_%f122089%_ _%args122090%_ _%name122091%_ _%tgroup122092%_)
        (let* ((_%thunk122096%_
                (if (null? _%args122090%_)
                    _%f122089%_
                    (lambda () (apply _%f122089%_ _%args122090%_))))
               (_%thunk122099%_
                (lambda () (with-exception-stack-trace__0 _%thunk122096%_)))
               (_%tgroup122104%_
                (let ((_%$e122101%_ _%tgroup122092%_))
                  (if _%$e122101%_ _%$e122101%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk122099%_))
            _%name122091%_
            _%tgroup122104%_)))))
    (define spawn-thread__%
      (lambda (_%thunk122066%_ _%name122067%_ _%tgroup122068%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk122066%_))
          _%name122067%_
          _%tgroup122068%_))))
    (define spawn-thread__0
      (lambda (_%thunk122074%_)
        (let* ((_%name122076%_ absent-obj) (_%tgroup122078%_ absent-obj))
          (spawn-thread__% _%thunk122074%_ _%name122076%_ _%tgroup122078%_))))
    (define spawn-thread__1
      (lambda (_%thunk122080%_ _%name122081%_)
        (let ((_%tgroup122083%_ absent-obj))
          (spawn-thread__% _%thunk122080%_ _%name122081%_ _%tgroup122083%_))))
    (define spawn-thread
      (lambda _g122338_
        (let ((_g122339_ (let () (declare (not safe)) (##length _g122338_))))
          (cond ((let () (declare (not safe)) (##fx= _g122339_ 1))
                 (apply spawn-thread__0 _g122338_))
                ((let () (declare (not safe)) (##fx= _g122339_ 2))
                 (apply spawn-thread__1 _g122338_))
                ((let () (declare (not safe)) (##fx= _g122339_ 3))
                 (apply spawn-thread__% _g122338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g122338_))))))
    (define thread-main
      (lambda (_%thunk122058%_)
        (let ((__tmp122340
               (lambda (_%exn122060%_)
                 (let ((__tmp122341
                        (lambda (_%cont122062%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp122342
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont122062%_
                                          _%exn122060%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp122342))
                              '#!void)
                          (let ((__tmp122343
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont122062%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp122343
                             ##primordial-exception-handler
                             _%exn122060%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122341)))))
          (declare (not safe))
          (with-exception-handler __tmp122340 _%thunk122058%_))))
    (define thread-local-ref__%
      (lambda (_%key122043%_ _%default122044%_)
        (let ((_%tab122046%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab122046%_ _%key122043%_ _%default122044%_))))
    (define thread-local-ref__0
      (lambda (_%key122051%_)
        (let ((_%default122053%_ absent-obj))
          (thread-local-ref__% _%key122051%_ _%default122053%_))))
    (define thread-local-ref
      (lambda _g122344_
        (let ((_g122345_ (let () (declare (not safe)) (##length _g122344_))))
          (cond ((let () (declare (not safe)) (##fx= _g122345_ 1))
                 (apply thread-local-ref__0 _g122344_))
                ((let () (declare (not safe)) (##fx= _g122345_ 2))
                 (apply thread-local-ref__% _g122344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g122344_))))))
    (define thread-local-get
      (lambda (_%key122040%_) (thread-local-ref__% _%key122040%_ '#f)))
    (define thread-local-set!
      (lambda (_%key122035%_ _%value122036%_)
        (let ((_%tab122038%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab122038%_ _%key122035%_ _%value122036%_))))
    (define thread-local-delete!
      (lambda (_%key122031%_)
        (let ((_%tab122033%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab122033%_ _%key122031%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr122012%_ (current-thread)))
          (if (actor-thread? _%thr122012%_)
              (let ((_%$e122015%_ (actor-thread-locals _%thr122012%_)))
                (if _%$e122015%_
                    _%$e122015%_
                    (let ((_%tab122019%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr122012%_ _%tab122019%_)
                      _%tab122019%_)))
              (if (eq? _%thr122012%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e122023%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr122012%_))))
                      (if _%$e122023%_
                          ((lambda (_%tab122026%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab122026%_)
                           _%$e122023%_)
                          (let ((_%tab122029%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr122012%_
                               _%tab122029%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab122029%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value121990%_)
        (if ((lambda (_%$obj121993%_)
               (or (not _%$obj121993%_) (procedure? _%$obj121993%_)))
             _%new-value121990%_)
            (let ((_%new-value122000%_ _%new-value121990%_))
              (__unhandled-actor-exception-hook-set! _%new-value122000%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value121990%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value121977%_)
        (let ((_%new-value121981%_ _%new-value121977%_))
          (set! __unhandled-actor-exception-hook _%new-value121981%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx121951%_ _%proc121952%_)
        (if (mutex? _%mx121951%_)
            (let ((_%mx121956%_ _%mx121951%_))
              (if (procedure? _%proc121952%_)
                  (let ((_%proc121966%_ _%proc121952%_))
                    (__with-lock _%mx121956%_ _%proc121966%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121952%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx121951%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx121922%_ _%proc121923%_)
        (let* ((_%mx121926%_ _%mx121922%_)
               (_%proc121934%_ _%proc121923%_)
               (_%handler121943%_ (current-exception-handler)))
          (let ((__tmp122347
                 (lambda (_%e121945%_)
                   (let ((__tmp122348
                          (lambda ()
                            (mutex-unlock! _%mx121926%_)
                            (let ()
                              (declare (not safe))
                              (_%handler121943%_ _%e121945%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp122348))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e121945%_))))
                (__tmp122346
                 (lambda ()
                   (mutex-lock! _%mx121926%_)
                   (let ((_%result121949%_
                          (let () (declare (not safe)) (_%proc121934%_))))
                     (mutex-unlock! _%mx121926%_)
                     _%result121949%_))))
            (declare (not safe))
            (__with-exception-handler __tmp122347 __tmp122346)))))
    (define with-dynamic-lock
      (lambda (_%mx121897%_ _%proc121898%_)
        (if (mutex? _%mx121897%_)
            (let ((_%mx121902%_ _%mx121897%_))
              (if (procedure? _%proc121898%_)
                  (let ((_%proc121912%_ _%proc121898%_))
                    (__with-dynamic-lock _%mx121902%_ _%proc121912%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx121897%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx121874%_ _%proc121875%_)
        (let* ((_%mx121878%_ _%mx121874%_) (_%proc121886%_ _%proc121875%_))
          (let ((__tmp122350 (lambda () (mutex-lock! _%mx121878%_)))
                (__tmp122349 (lambda () (mutex-unlock! _%mx121878%_))))
            (declare (not safe))
            (##dynamic-wind __tmp122350 _%proc121886%_ __tmp122349)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk121839%_ _%error-port121840%_)
        (if (procedure? _%thunk121839%_)
            (let ((_%thunk121844%_ _%thunk121839%_))
              (if (port? _%error-port121840%_)
                  (let ((_%error-port121854%_ _%error-port121840%_))
                    (__with-exception-stack-trace__%
                     _%thunk121844%_
                     _%error-port121854%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port121840%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk121839%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk121867%_)
        (let ((_%error-port121869%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk121867%_
           _%error-port121869%_))))
    (define with-exception-stack-trace
      (lambda _g122351_
        (let ((_g122352_ (let () (declare (not safe)) (##length _g122351_))))
          (cond ((let () (declare (not safe)) (##fx= _g122352_ 1))
                 (apply with-exception-stack-trace__0 _g122351_))
                ((let () (declare (not safe)) (##fx= _g122352_ 2))
                 (apply with-exception-stack-trace__% _g122351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g122351_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk121800%_ _%error-port121801%_)
        (let* ((_%thunk121804%_ _%thunk121800%_)
               (_%error-port121813%_ _%error-port121801%_)
               (__tmp122353
                (let ((_%E121822%_ (current-exception-handler)))
                  (lambda (_%exn121824%_)
                    (let ((__tmp122354
                           (lambda (_%cont121826%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont121826%_
                                  _%exn121824%_
                                  _%error-port121813%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E121822%_ _%exn121824%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp122354))))))
          (declare (not safe))
          (__with-exception-handler __tmp122353 _%thunk121804%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk121831%_)
        (let ((_%error-port121833%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk121831%_
           _%error-port121833%_))))
    (define __with-exception-stack-trace
      (lambda _g122355_
        (let ((_g122356_ (let () (declare (not safe)) (##length _g122355_))))
          (cond ((let () (declare (not safe)) (##fx= _g122356_ 1))
                 (apply __with-exception-stack-trace__0 _g122355_))
                ((let () (declare (not safe)) (##fx= _g122356_ 2))
                 (apply __with-exception-stack-trace__% _g122355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g122355_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont121781%_ _%exn121782%_ _%error-port121783%_)
        (let ((_%out121785%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out121785%_))
          (display '"*** Unhandled exception in " _%out121785%_)
          (display (current-thread) _%out121785%_)
          (newline _%out121785%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn121782%_ _%out121785%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn121782%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out121785%_)
                (newline _%out121785%_)
                (display-continuation-backtrace _%cont121781%_ _%out121785%_)))
          (let ((__tmp122357 (get-output-string _%out121785%_)))
            (declare (not safe))
            (##write-string __tmp122357 _%error-port121783%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont121790%_ _%exn121791%_)
        (let ((_%error-port121793%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont121790%_
           _%exn121791%_
           _%error-port121793%_))))
    (define dump-stack-trace!
      (lambda _g122358_
        (let ((_g122359_ (let () (declare (not safe)) (##length _g122358_))))
          (cond ((let () (declare (not safe)) (##fx= _g122359_ 2))
                 (apply dump-stack-trace!__0 _g122358_))
                ((let () (declare (not safe)) (##fx= _g122359_ 3))
                 (apply dump-stack-trace!__% _g122358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g122358_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
