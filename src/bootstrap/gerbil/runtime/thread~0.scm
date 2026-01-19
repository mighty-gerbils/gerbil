(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1768864948)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk122339%_ _%name122340%_)
        (if (procedure? _%thunk122339%_)
            (let ((_%thunk122344%_ _%thunk122339%_))
              (if (symbol? _%name122340%_)
                  (let ((_%name122354%_ _%name122340%_))
                    (__make-system-thread _%thunk122344%_ _%name122354%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name122340%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk122339%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk122317%_ _%name122318%_)
        (let* ((_%thunk122321%_ _%thunk122317%_)
               (_%name122329%_ _%name122318%_))
          (make-thread
           (lambda () (thread-main _%thunk122321%_))
           _%name122329%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk122292%_ _%name122293%_)
        (if (procedure? _%thunk122292%_)
            (let ((_%thunk122297%_ _%thunk122292%_))
              (if (symbol? _%name122293%_)
                  (let ((_%name122307%_ _%name122293%_))
                    (__system-thread! _%thunk122297%_ _%name122307%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name122293%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk122292%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk122271%_ _%name122272%_)
        (let* ((_%thunk122275%_ _%thunk122271%_)
               (_%name122283%_ _%name122272%_))
          (thread-start!
           (__make-system-thread _%thunk122275%_ _%name122283%_)))))
    (define system-actor!
      (lambda (_%thunk122246%_ _%name122247%_)
        (if (procedure? _%thunk122246%_)
            (let ((_%thunk122251%_ _%thunk122246%_))
              (if (symbol? _%name122247%_)
                  (let ((_%name122261%_ _%name122247%_))
                    (__system-actor! _%thunk122251%_ _%name122261%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name122247%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk122246%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk122225%_ _%name122226%_)
        (let* ((_%thunk122229%_ _%thunk122225%_)
               (_%name122237%_ _%name122226%_))
          (spawn-actor
           _%thunk122229%_
           '()
           _%name122237%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f122210%_ . _%args122211%_)
        (if (procedure? _%f122210%_)
            (let ((_%f122215%_ _%f122210%_))
              (declare (not safe))
              (##apply __spawn _%f122215%_ _%args122211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f122210%_)
              '#!void))))
    (define __spawn
      (lambda (_%f122197%_ . _%args122198%_)
        (let ((_%f122201%_ _%f122197%_))
          (spawn-actor _%f122201%_ _%args122198%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name122181%_ _%f122182%_ . _%args122183%_)
        (if (procedure? _%f122182%_)
            (let ((_%f122187%_ _%f122182%_))
              (declare (not safe))
              (##apply __spawn/name _%name122181%_ _%f122187%_ _%args122183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f122182%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name122167%_ _%f122168%_ . _%args122169%_)
        (let ((_%f122172%_ _%f122168%_))
          (spawn-actor _%f122172%_ _%args122169%_ _%name122167%_ '#f))))
    (define spawn/group
      (lambda (_%name122151%_ _%f122152%_ . _%args122153%_)
        (if (procedure? _%f122152%_)
            (let ((_%f122157%_ _%f122152%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name122151%_
                       _%f122157%_
                       _%args122153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f122152%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name122135%_ _%f122136%_ . _%args122137%_)
        (let* ((_%f122140%_ _%f122136%_)
               (_%tgroup122149%_ (make-thread-group _%name122135%_)))
          (spawn-actor
           _%f122140%_
           _%args122137%_
           _%name122135%_
           _%tgroup122149%_))))
    (define spawn-actor
      (lambda (_%f122116%_ _%args122117%_ _%name122118%_ _%tgroup122119%_)
        (let* ((_%thunk122123%_
                (if (null? _%args122117%_)
                    _%f122116%_
                    (lambda () (apply _%f122116%_ _%args122117%_))))
               (_%thunk122126%_
                (lambda () (with-exception-stack-trace__0 _%thunk122123%_)))
               (_%tgroup122131%_
                (let ((_%$e122128%_ _%tgroup122119%_))
                  (if _%$e122128%_ _%$e122128%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk122126%_))
            _%name122118%_
            _%tgroup122131%_)))))
    (define spawn-thread__%
      (lambda (_%thunk122093%_ _%name122094%_ _%tgroup122095%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk122093%_))
          _%name122094%_
          _%tgroup122095%_))))
    (define spawn-thread__0
      (lambda (_%thunk122101%_)
        (let* ((_%name122103%_ absent-obj) (_%tgroup122105%_ absent-obj))
          (spawn-thread__% _%thunk122101%_ _%name122103%_ _%tgroup122105%_))))
    (define spawn-thread__1
      (lambda (_%thunk122107%_ _%name122108%_)
        (let ((_%tgroup122110%_ absent-obj))
          (spawn-thread__% _%thunk122107%_ _%name122108%_ _%tgroup122110%_))))
    (define spawn-thread
      (lambda _g122365_
        (let ((_g122366_ (let () (declare (not safe)) (##length _g122365_))))
          (cond ((let () (declare (not safe)) (##fx= _g122366_ 1))
                 (apply spawn-thread__0 _g122365_))
                ((let () (declare (not safe)) (##fx= _g122366_ 2))
                 (apply spawn-thread__1 _g122365_))
                ((let () (declare (not safe)) (##fx= _g122366_ 3))
                 (apply spawn-thread__% _g122365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g122365_))))))
    (define thread-main
      (lambda (_%thunk122085%_)
        (let ((__tmp122367
               (lambda (_%exn122087%_)
                 (let ((__tmp122368
                        (lambda (_%cont122089%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp122369
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont122089%_
                                          _%exn122087%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp122369))
                              '#!void)
                          (let ((__tmp122370
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont122089%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp122370
                             ##primordial-exception-handler
                             _%exn122087%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122368)))))
          (declare (not safe))
          (with-exception-handler __tmp122367 _%thunk122085%_))))
    (define thread-local-ref__%
      (lambda (_%key122070%_ _%default122071%_)
        (let ((_%tab122073%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab122073%_ _%key122070%_ _%default122071%_))))
    (define thread-local-ref__0
      (lambda (_%key122078%_)
        (let ((_%default122080%_ absent-obj))
          (thread-local-ref__% _%key122078%_ _%default122080%_))))
    (define thread-local-ref
      (lambda _g122371_
        (let ((_g122372_ (let () (declare (not safe)) (##length _g122371_))))
          (cond ((let () (declare (not safe)) (##fx= _g122372_ 1))
                 (apply thread-local-ref__0 _g122371_))
                ((let () (declare (not safe)) (##fx= _g122372_ 2))
                 (apply thread-local-ref__% _g122371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g122371_))))))
    (define thread-local-get
      (lambda (_%key122067%_) (thread-local-ref__% _%key122067%_ '#f)))
    (define thread-local-set!
      (lambda (_%key122062%_ _%value122063%_)
        (let ((_%tab122065%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab122065%_ _%key122062%_ _%value122063%_))))
    (define thread-local-delete!
      (lambda (_%key122058%_)
        (let ((_%tab122060%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab122060%_ _%key122058%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr122039%_ (current-thread)))
          (if (actor-thread? _%thr122039%_)
              (let ((_%$e122042%_ (actor-thread-locals _%thr122039%_)))
                (if _%$e122042%_
                    _%$e122042%_
                    (let ((_%tab122046%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr122039%_ _%tab122046%_)
                      _%tab122046%_)))
              (if (eq? _%thr122039%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e122050%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr122039%_))))
                      (if _%$e122050%_
                          ((lambda (_%tab122053%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab122053%_)
                           _%$e122050%_)
                          (let ((_%tab122056%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr122039%_
                               _%tab122056%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab122056%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value122017%_)
        (if ((lambda (_%$obj122020%_)
               (or (not _%$obj122020%_) (procedure? _%$obj122020%_)))
             _%new-value122017%_)
            (let ((_%new-value122027%_ _%new-value122017%_))
              (__unhandled-actor-exception-hook-set! _%new-value122027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value122017%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value122004%_)
        (let ((_%new-value122008%_ _%new-value122004%_))
          (set! __unhandled-actor-exception-hook _%new-value122008%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx121978%_ _%proc121979%_)
        (if (mutex? _%mx121978%_)
            (let ((_%mx121983%_ _%mx121978%_))
              (if (procedure? _%proc121979%_)
                  (let ((_%proc121993%_ _%proc121979%_))
                    (__with-lock _%mx121983%_ _%proc121993%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121979%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx121978%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx121949%_ _%proc121950%_)
        (let* ((_%mx121953%_ _%mx121949%_)
               (_%proc121961%_ _%proc121950%_)
               (_%handler121970%_ (current-exception-handler)))
          (let ((__tmp122374
                 (lambda (_%e121972%_)
                   (let ((__tmp122375
                          (lambda ()
                            (mutex-unlock! _%mx121953%_)
                            (let ()
                              (declare (not safe))
                              (_%handler121970%_ _%e121972%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp122375))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e121972%_))))
                (__tmp122373
                 (lambda ()
                   (mutex-lock! _%mx121953%_)
                   (let ((_%result121976%_
                          (let () (declare (not safe)) (_%proc121961%_))))
                     (mutex-unlock! _%mx121953%_)
                     _%result121976%_))))
            (declare (not safe))
            (__with-exception-handler __tmp122374 __tmp122373)))))
    (define with-dynamic-lock
      (lambda (_%mx121924%_ _%proc121925%_)
        (if (mutex? _%mx121924%_)
            (let ((_%mx121929%_ _%mx121924%_))
              (if (procedure? _%proc121925%_)
                  (let ((_%proc121939%_ _%proc121925%_))
                    (__with-dynamic-lock _%mx121929%_ _%proc121939%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121925%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx121924%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx121901%_ _%proc121902%_)
        (let* ((_%mx121905%_ _%mx121901%_) (_%proc121913%_ _%proc121902%_))
          (let ((__tmp122377 (lambda () (mutex-lock! _%mx121905%_)))
                (__tmp122376 (lambda () (mutex-unlock! _%mx121905%_))))
            (declare (not safe))
            (##dynamic-wind __tmp122377 _%proc121913%_ __tmp122376)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk121866%_ _%error-port121867%_)
        (if (procedure? _%thunk121866%_)
            (let ((_%thunk121871%_ _%thunk121866%_))
              (if (port? _%error-port121867%_)
                  (let ((_%error-port121881%_ _%error-port121867%_))
                    (__with-exception-stack-trace__%
                     _%thunk121871%_
                     _%error-port121881%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port121867%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk121866%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk121894%_)
        (let ((_%error-port121896%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk121894%_
           _%error-port121896%_))))
    (define with-exception-stack-trace
      (lambda _g122378_
        (let ((_g122379_ (let () (declare (not safe)) (##length _g122378_))))
          (cond ((let () (declare (not safe)) (##fx= _g122379_ 1))
                 (apply with-exception-stack-trace__0 _g122378_))
                ((let () (declare (not safe)) (##fx= _g122379_ 2))
                 (apply with-exception-stack-trace__% _g122378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g122378_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk121827%_ _%error-port121828%_)
        (let* ((_%thunk121831%_ _%thunk121827%_)
               (_%error-port121840%_ _%error-port121828%_)
               (__tmp122380
                (let ((_%E121849%_ (current-exception-handler)))
                  (lambda (_%exn121851%_)
                    (let ((__tmp122381
                           (lambda (_%cont121853%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont121853%_
                                  _%exn121851%_
                                  _%error-port121840%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E121849%_ _%exn121851%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp122381))))))
          (declare (not safe))
          (__with-exception-handler __tmp122380 _%thunk121831%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk121858%_)
        (let ((_%error-port121860%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk121858%_
           _%error-port121860%_))))
    (define __with-exception-stack-trace
      (lambda _g122382_
        (let ((_g122383_ (let () (declare (not safe)) (##length _g122382_))))
          (cond ((let () (declare (not safe)) (##fx= _g122383_ 1))
                 (apply __with-exception-stack-trace__0 _g122382_))
                ((let () (declare (not safe)) (##fx= _g122383_ 2))
                 (apply __with-exception-stack-trace__% _g122382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g122382_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont121808%_ _%exn121809%_ _%error-port121810%_)
        (let ((_%out121812%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out121812%_))
          (display '"*** Unhandled exception in " _%out121812%_)
          (display (current-thread) _%out121812%_)
          (newline _%out121812%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn121809%_ _%out121812%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn121809%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out121812%_)
                (newline _%out121812%_)
                (display-continuation-backtrace _%cont121808%_ _%out121812%_)))
          (let ((__tmp122384 (get-output-string _%out121812%_)))
            (declare (not safe))
            (##write-string __tmp122384 _%error-port121810%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont121817%_ _%exn121818%_)
        (let ((_%error-port121820%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont121817%_
           _%exn121818%_
           _%error-port121820%_))))
    (define dump-stack-trace!
      (lambda _g122385_
        (let ((_g122386_ (let () (declare (not safe)) (##length _g122385_))))
          (cond ((let () (declare (not safe)) (##fx= _g122386_ 2))
                 (apply dump-stack-trace!__0 _g122385_))
                ((let () (declare (not safe)) (##fx= _g122386_ 3))
                 (apply dump-stack-trace!__% _g122385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g122385_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
