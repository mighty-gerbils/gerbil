(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1769382894)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk122770%_ _%name122771%_)
        (if (procedure? _%thunk122770%_)
            (let ((_%thunk122775%_ _%thunk122770%_))
              (if (symbol? _%name122771%_)
                  (let ((_%name122785%_ _%name122771%_))
                    (__make-system-thread _%thunk122775%_ _%name122785%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name122771%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk122770%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk122748%_ _%name122749%_)
        (let* ((_%thunk122752%_ _%thunk122748%_)
               (_%name122760%_ _%name122749%_))
          (make-thread
           (lambda () (thread-main _%thunk122752%_))
           _%name122760%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk122723%_ _%name122724%_)
        (if (procedure? _%thunk122723%_)
            (let ((_%thunk122728%_ _%thunk122723%_))
              (if (symbol? _%name122724%_)
                  (let ((_%name122738%_ _%name122724%_))
                    (__system-thread! _%thunk122728%_ _%name122738%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name122724%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk122723%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk122702%_ _%name122703%_)
        (let* ((_%thunk122706%_ _%thunk122702%_)
               (_%name122714%_ _%name122703%_))
          (thread-start!
           (__make-system-thread _%thunk122706%_ _%name122714%_)))))
    (define system-actor!
      (lambda (_%thunk122677%_ _%name122678%_)
        (if (procedure? _%thunk122677%_)
            (let ((_%thunk122682%_ _%thunk122677%_))
              (if (symbol? _%name122678%_)
                  (let ((_%name122692%_ _%name122678%_))
                    (__system-actor! _%thunk122682%_ _%name122692%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name122678%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk122677%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk122656%_ _%name122657%_)
        (let* ((_%thunk122660%_ _%thunk122656%_)
               (_%name122668%_ _%name122657%_))
          (spawn-actor
           _%thunk122660%_
           '()
           _%name122668%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f122641%_ . _%args122642%_)
        (if (procedure? _%f122641%_)
            (let ((_%f122646%_ _%f122641%_))
              (declare (not safe))
              (##apply __spawn _%f122646%_ _%args122642%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f122641%_)
              '#!void))))
    (define __spawn
      (lambda (_%f122628%_ . _%args122629%_)
        (let ((_%f122632%_ _%f122628%_))
          (spawn-actor _%f122632%_ _%args122629%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name122612%_ _%f122613%_ . _%args122614%_)
        (if (procedure? _%f122613%_)
            (let ((_%f122618%_ _%f122613%_))
              (declare (not safe))
              (##apply __spawn/name _%name122612%_ _%f122618%_ _%args122614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f122613%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name122598%_ _%f122599%_ . _%args122600%_)
        (let ((_%f122603%_ _%f122599%_))
          (spawn-actor _%f122603%_ _%args122600%_ _%name122598%_ '#f))))
    (define spawn/group
      (lambda (_%name122582%_ _%f122583%_ . _%args122584%_)
        (if (procedure? _%f122583%_)
            (let ((_%f122588%_ _%f122583%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name122582%_
                       _%f122588%_
                       _%args122584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f122583%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name122566%_ _%f122567%_ . _%args122568%_)
        (let* ((_%f122571%_ _%f122567%_)
               (_%tgroup122580%_ (make-thread-group _%name122566%_)))
          (spawn-actor
           _%f122571%_
           _%args122568%_
           _%name122566%_
           _%tgroup122580%_))))
    (define spawn-actor
      (lambda (_%f122547%_ _%args122548%_ _%name122549%_ _%tgroup122550%_)
        (let* ((_%thunk122554%_
                (if (null? _%args122548%_)
                    _%f122547%_
                    (lambda () (apply _%f122547%_ _%args122548%_))))
               (_%thunk122557%_
                (lambda () (with-exception-stack-trace__0 _%thunk122554%_)))
               (_%tgroup122562%_
                (let ((_%$e122559%_ _%tgroup122550%_))
                  (if _%$e122559%_ _%$e122559%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk122557%_))
            _%name122549%_
            _%tgroup122562%_)))))
    (define spawn-thread__%
      (lambda (_%thunk122524%_ _%name122525%_ _%tgroup122526%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk122524%_))
          _%name122525%_
          _%tgroup122526%_))))
    (define spawn-thread__0
      (lambda (_%thunk122532%_)
        (let* ((_%name122534%_ absent-obj) (_%tgroup122536%_ absent-obj))
          (spawn-thread__% _%thunk122532%_ _%name122534%_ _%tgroup122536%_))))
    (define spawn-thread__1
      (lambda (_%thunk122538%_ _%name122539%_)
        (let ((_%tgroup122541%_ absent-obj))
          (spawn-thread__% _%thunk122538%_ _%name122539%_ _%tgroup122541%_))))
    (define spawn-thread
      (lambda _g122796_
        (let ((_g122797_ (let () (declare (not safe)) (##length _g122796_))))
          (cond ((let () (declare (not safe)) (##fx= _g122797_ 1))
                 (apply spawn-thread__0 _g122796_))
                ((let () (declare (not safe)) (##fx= _g122797_ 2))
                 (apply spawn-thread__1 _g122796_))
                ((let () (declare (not safe)) (##fx= _g122797_ 3))
                 (apply spawn-thread__% _g122796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g122796_))))))
    (define thread-main
      (lambda (_%thunk122516%_)
        (let ((__tmp122798
               (lambda (_%exn122518%_)
                 (let ((__tmp122799
                        (lambda (_%cont122520%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp122800
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont122520%_
                                          _%exn122518%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp122800))
                              '#!void)
                          (let ((__tmp122801
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont122520%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp122801
                             ##primordial-exception-handler
                             _%exn122518%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122799)))))
          (declare (not safe))
          (with-exception-handler __tmp122798 _%thunk122516%_))))
    (define thread-local-ref__%
      (lambda (_%key122501%_ _%default122502%_)
        (let ((_%tab122504%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab122504%_ _%key122501%_ _%default122502%_))))
    (define thread-local-ref__0
      (lambda (_%key122509%_)
        (let ((_%default122511%_ absent-obj))
          (thread-local-ref__% _%key122509%_ _%default122511%_))))
    (define thread-local-ref
      (lambda _g122802_
        (let ((_g122803_ (let () (declare (not safe)) (##length _g122802_))))
          (cond ((let () (declare (not safe)) (##fx= _g122803_ 1))
                 (apply thread-local-ref__0 _g122802_))
                ((let () (declare (not safe)) (##fx= _g122803_ 2))
                 (apply thread-local-ref__% _g122802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g122802_))))))
    (define thread-local-get
      (lambda (_%key122498%_) (thread-local-ref__% _%key122498%_ '#f)))
    (define thread-local-set!
      (lambda (_%key122493%_ _%value122494%_)
        (let ((_%tab122496%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab122496%_ _%key122493%_ _%value122494%_))))
    (define thread-local-delete!
      (lambda (_%key122489%_)
        (let ((_%tab122491%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab122491%_ _%key122489%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr122470%_ (current-thread)))
          (if (actor-thread? _%thr122470%_)
              (let ((_%$e122473%_ (actor-thread-locals _%thr122470%_)))
                (if _%$e122473%_
                    _%$e122473%_
                    (let ((_%tab122477%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr122470%_ _%tab122477%_)
                      _%tab122477%_)))
              (if (eq? _%thr122470%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e122481%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr122470%_))))
                      (if _%$e122481%_
                          ((lambda (_%tab122484%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab122484%_)
                           _%$e122481%_)
                          (let ((_%tab122487%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr122470%_
                               _%tab122487%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab122487%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value122448%_)
        (if ((lambda (_%$obj122451%_)
               (or (not _%$obj122451%_) (procedure? _%$obj122451%_)))
             _%new-value122448%_)
            (let ((_%new-value122458%_ _%new-value122448%_))
              (__unhandled-actor-exception-hook-set! _%new-value122458%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value122448%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value122435%_)
        (let ((_%new-value122439%_ _%new-value122435%_))
          (set! __unhandled-actor-exception-hook _%new-value122439%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx122409%_ _%proc122410%_)
        (if (mutex? _%mx122409%_)
            (let ((_%mx122414%_ _%mx122409%_))
              (if (procedure? _%proc122410%_)
                  (let ((_%proc122424%_ _%proc122410%_))
                    (__with-lock _%mx122414%_ _%proc122424%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc122410%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx122409%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx122380%_ _%proc122381%_)
        (let* ((_%mx122384%_ _%mx122380%_)
               (_%proc122392%_ _%proc122381%_)
               (_%handler122401%_ (current-exception-handler)))
          (let ((__tmp122805
                 (lambda (_%e122403%_)
                   (let ((__tmp122806
                          (lambda ()
                            (mutex-unlock! _%mx122384%_)
                            (let ()
                              (declare (not safe))
                              (_%handler122401%_ _%e122403%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp122806))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e122403%_))))
                (__tmp122804
                 (lambda ()
                   (mutex-lock! _%mx122384%_)
                   (let ((_%result122407%_
                          (let () (declare (not safe)) (_%proc122392%_))))
                     (mutex-unlock! _%mx122384%_)
                     _%result122407%_))))
            (declare (not safe))
            (__with-exception-handler __tmp122805 __tmp122804)))))
    (define with-dynamic-lock
      (lambda (_%mx122355%_ _%proc122356%_)
        (if (mutex? _%mx122355%_)
            (let ((_%mx122360%_ _%mx122355%_))
              (if (procedure? _%proc122356%_)
                  (let ((_%proc122370%_ _%proc122356%_))
                    (__with-dynamic-lock _%mx122360%_ _%proc122370%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc122356%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx122355%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx122332%_ _%proc122333%_)
        (let* ((_%mx122336%_ _%mx122332%_) (_%proc122344%_ _%proc122333%_))
          (let ((__tmp122808 (lambda () (mutex-lock! _%mx122336%_)))
                (__tmp122807 (lambda () (mutex-unlock! _%mx122336%_))))
            (declare (not safe))
            (##dynamic-wind __tmp122808 _%proc122344%_ __tmp122807)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk122297%_ _%error-port122298%_)
        (if (procedure? _%thunk122297%_)
            (let ((_%thunk122302%_ _%thunk122297%_))
              (if (port? _%error-port122298%_)
                  (let ((_%error-port122312%_ _%error-port122298%_))
                    (__with-exception-stack-trace__%
                     _%thunk122302%_
                     _%error-port122312%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port122298%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk122297%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk122325%_)
        (let ((_%error-port122327%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk122325%_
           _%error-port122327%_))))
    (define with-exception-stack-trace
      (lambda _g122809_
        (let ((_g122810_ (let () (declare (not safe)) (##length _g122809_))))
          (cond ((let () (declare (not safe)) (##fx= _g122810_ 1))
                 (apply with-exception-stack-trace__0 _g122809_))
                ((let () (declare (not safe)) (##fx= _g122810_ 2))
                 (apply with-exception-stack-trace__% _g122809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g122809_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk122258%_ _%error-port122259%_)
        (let* ((_%thunk122262%_ _%thunk122258%_)
               (_%error-port122271%_ _%error-port122259%_)
               (__tmp122811
                (let ((_%E122280%_ (current-exception-handler)))
                  (lambda (_%exn122282%_)
                    (let ((__tmp122812
                           (lambda (_%cont122284%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont122284%_
                                  _%exn122282%_
                                  _%error-port122271%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E122280%_ _%exn122282%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp122812))))))
          (declare (not safe))
          (__with-exception-handler __tmp122811 _%thunk122262%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk122289%_)
        (let ((_%error-port122291%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk122289%_
           _%error-port122291%_))))
    (define __with-exception-stack-trace
      (lambda _g122813_
        (let ((_g122814_ (let () (declare (not safe)) (##length _g122813_))))
          (cond ((let () (declare (not safe)) (##fx= _g122814_ 1))
                 (apply __with-exception-stack-trace__0 _g122813_))
                ((let () (declare (not safe)) (##fx= _g122814_ 2))
                 (apply __with-exception-stack-trace__% _g122813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g122813_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont122239%_ _%exn122240%_ _%error-port122241%_)
        (let ((_%out122243%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out122243%_))
          (display '"*** Unhandled exception in " _%out122243%_)
          (display (current-thread) _%out122243%_)
          (newline _%out122243%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn122240%_ _%out122243%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn122240%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out122243%_)
                (newline _%out122243%_)
                (display-continuation-backtrace _%cont122239%_ _%out122243%_)))
          (let ((__tmp122815 (get-output-string _%out122243%_)))
            (declare (not safe))
            (##write-string __tmp122815 _%error-port122241%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont122248%_ _%exn122249%_)
        (let ((_%error-port122251%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont122248%_
           _%exn122249%_
           _%error-port122251%_))))
    (define dump-stack-trace!
      (lambda _g122816_
        (let ((_g122817_ (let () (declare (not safe)) (##length _g122816_))))
          (cond ((let () (declare (not safe)) (##fx= _g122817_ 2))
                 (apply dump-stack-trace!__0 _g122816_))
                ((let () (declare (not safe)) (##fx= _g122817_ 3))
                 (apply dump-stack-trace!__% _g122816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g122816_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
