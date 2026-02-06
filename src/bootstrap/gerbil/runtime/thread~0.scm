(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1770342548)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk154212%_ _%name154213%_)
        (let* ((_%thunk154216%_ _%thunk154212%_)
               (_%name154224%_ _%name154213%_))
          (make-thread
           (lambda () (thread-main _%thunk154216%_))
           _%name154224%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk152598%_ _%name152599%_)
        (if (procedure? _%thunk152598%_)
            (let ((_%thunk152603%_ _%thunk152598%_))
              (if (symbol? _%name152599%_)
                  (let ((_%name152613%_ _%name152599%_))
                    (__make-system-thread _%thunk152603%_ _%name152613%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name152599%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk152598%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk154191%_ _%name154192%_)
        (let* ((_%thunk154195%_ _%thunk154191%_)
               (_%name154203%_ _%name154192%_))
          (thread-start!
           (__make-system-thread _%thunk154195%_ _%name154203%_)))))
    (define system-thread!
      (lambda (_%thunk152743%_ _%name152744%_)
        (if (procedure? _%thunk152743%_)
            (let ((_%thunk152748%_ _%thunk152743%_))
              (if (symbol? _%name152744%_)
                  (let ((_%name152758%_ _%name152744%_))
                    (__system-thread! _%thunk152748%_ _%name152758%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name152744%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk152743%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk154170%_ _%name154171%_)
        (let* ((_%thunk154174%_ _%thunk154170%_)
               (_%name154182%_ _%name154171%_))
          (spawn-actor
           _%thunk154174%_
           '()
           _%name154182%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk152888%_ _%name152889%_)
        (if (procedure? _%thunk152888%_)
            (let ((_%thunk152893%_ _%thunk152888%_))
              (if (symbol? _%name152889%_)
                  (let ((_%name152903%_ _%name152889%_))
                    (__system-actor! _%thunk152893%_ _%name152903%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name152889%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk152888%_)
              '#!void))))
    (define __spawn
      (lambda (_%f154157%_ . _%args154158%_)
        (let ((_%f154161%_ _%f154157%_))
          (spawn-actor _%f154161%_ _%args154158%_ '#!void '#f))))
    (define spawn
      (lambda (_%f153033%_ . _%args153034%_)
        (if (procedure? _%f153033%_)
            (let ((_%f153038%_ _%f153033%_))
              (declare (not safe))
              (##apply __spawn _%f153038%_ _%args153034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f153033%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name154143%_ _%f154144%_ . _%args154145%_)
        (let ((_%f154148%_ _%f154144%_))
          (spawn-actor _%f154148%_ _%args154145%_ _%name154143%_ '#f))))
    (define spawn/name
      (lambda (_%name153168%_ _%f153169%_ . _%args153170%_)
        (if (procedure? _%f153169%_)
            (let ((_%f153174%_ _%f153169%_))
              (declare (not safe))
              (##apply __spawn/name _%name153168%_ _%f153174%_ _%args153170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f153169%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name154127%_ _%f154128%_ . _%args154129%_)
        (let* ((_%f154132%_ _%f154128%_)
               (_%tgroup154141%_ (make-thread-group _%name154127%_)))
          (spawn-actor
           _%f154132%_
           _%args154129%_
           _%name154127%_
           _%tgroup154141%_))))
    (define spawn/group
      (lambda (_%name153304%_ _%f153305%_ . _%args153306%_)
        (if (procedure? _%f153305%_)
            (let ((_%f153310%_ _%f153305%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name153304%_
                       _%f153310%_
                       _%args153306%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f153305%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f154108%_ _%args154109%_ _%name154110%_ _%tgroup154111%_)
        (let* ((_%thunk154115%_
                (if (null? _%args154109%_)
                    _%f154108%_
                    (lambda () (apply _%f154108%_ _%args154109%_))))
               (_%thunk154118%_
                (lambda () (with-exception-stack-trace__0 _%thunk154115%_)))
               (_%tgroup154123%_
                (let ((_%$e154120%_ _%tgroup154111%_))
                  (if _%$e154120%_ _%$e154120%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk154118%_))
            _%name154110%_
            _%tgroup154123%_)))))
    (define spawn-thread__%
      (lambda (_%thunk154085%_ _%name154086%_ _%tgroup154087%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk154085%_))
          _%name154086%_
          _%tgroup154087%_))))
    (define spawn-thread__0
      (lambda (_%thunk154093%_)
        (let* ((_%name154095%_ absent-obj) (_%tgroup154097%_ absent-obj))
          (spawn-thread__% _%thunk154093%_ _%name154095%_ _%tgroup154097%_))))
    (define spawn-thread__1
      (lambda (_%thunk154099%_ _%name154100%_)
        (let ((_%tgroup154102%_ absent-obj))
          (spawn-thread__% _%thunk154099%_ _%name154100%_ _%tgroup154102%_))))
    (define spawn-thread
      (lambda _g154495_
        (let ((_g154496_ (let () (declare (not safe)) (##length _g154495_))))
          (cond ((let () (declare (not safe)) (##fx= _g154496_ 1))
                 (apply spawn-thread__0 _g154495_))
                ((let () (declare (not safe)) (##fx= _g154496_ 2))
                 (apply spawn-thread__1 _g154495_))
                ((let () (declare (not safe)) (##fx= _g154496_ 3))
                 (apply spawn-thread__% _g154495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g154495_))))))
    (define thread-main
      (lambda (_%thunk154077%_)
        (let ((__tmp154497
               (lambda (_%exn154079%_)
                 (let ((__tmp154498
                        (lambda (_%cont154081%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp154499
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont154081%_
                                          _%exn154079%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp154499))
                              '#!void)
                          (let ((__tmp154500
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont154081%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp154500
                             ##primordial-exception-handler
                             _%exn154079%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp154498)))))
          (declare (not safe))
          (with-exception-handler __tmp154497 _%thunk154077%_))))
    (define thread-local-ref__%
      (lambda (_%key154062%_ _%default154063%_)
        (let ((_%tab154065%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab154065%_ _%key154062%_ _%default154063%_))))
    (define thread-local-ref__0
      (lambda (_%key154070%_)
        (let ((_%default154072%_ absent-obj))
          (thread-local-ref__% _%key154070%_ _%default154072%_))))
    (define thread-local-ref
      (lambda _g154501_
        (let ((_g154502_ (let () (declare (not safe)) (##length _g154501_))))
          (cond ((let () (declare (not safe)) (##fx= _g154502_ 1))
                 (apply thread-local-ref__0 _g154501_))
                ((let () (declare (not safe)) (##fx= _g154502_ 2))
                 (apply thread-local-ref__% _g154501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g154501_))))))
    (define thread-local-get
      (lambda (_%key154059%_) (thread-local-ref__% _%key154059%_ '#f)))
    (define thread-local-set!
      (lambda (_%key154054%_ _%value154055%_)
        (let ((_%tab154057%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab154057%_ _%key154054%_ _%value154055%_))))
    (define thread-local-delete!
      (lambda (_%key154050%_)
        (let ((_%tab154052%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab154052%_ _%key154050%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr154031%_ (current-thread)))
          (if (actor-thread? _%thr154031%_)
              (let ((_%$e154034%_ (actor-thread-locals _%thr154031%_)))
                (if _%$e154034%_
                    _%$e154034%_
                    (let ((_%tab154038%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr154031%_ _%tab154038%_)
                      _%tab154038%_)))
              (if (eq? _%thr154031%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e154042%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr154031%_))))
                      (if _%$e154042%_
                          ((lambda (_%tab154045%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab154045%_)
                           _%$e154042%_)
                          (let ((_%tab154048%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr154031%_
                               _%tab154048%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab154048%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value154017%_)
        (let ((_%new-value154020%_ _%new-value154017%_))
          (set! __unhandled-actor-exception-hook _%new-value154020%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value153440%_)
        (if ((lambda (_%$obj153444%_)
               (or (not _%$obj153444%_) (procedure? _%$obj153444%_)))
             _%new-value153440%_)
            (let ((_%new-value153451%_ _%new-value153440%_))
              (__unhandled-actor-exception-hook-set! _%new-value153451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value153440%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx153987%_ _%proc153988%_)
        (let* ((_%mx153991%_ _%mx153987%_)
               (_%proc153999%_ _%proc153988%_)
               (_%handler154008%_ (current-exception-handler)))
          (let ((__tmp154504
                 (lambda (_%e154010%_)
                   (let ((__tmp154505
                          (lambda ()
                            (mutex-unlock! _%mx153991%_)
                            (let ()
                              (declare (not safe))
                              (_%handler154008%_ _%e154010%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp154505))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e154010%_))))
                (__tmp154503
                 (lambda ()
                   (mutex-lock! _%mx153991%_)
                   (let ((_%result154014%_
                          (let () (declare (not safe)) (_%proc153999%_))))
                     (mutex-unlock! _%mx153991%_)
                     _%result154014%_))))
            (declare (not safe))
            (__with-exception-handler __tmp154504 __tmp154503)))))
    (define with-lock
      (lambda (_%mx153581%_ _%proc153582%_)
        (if (mutex? _%mx153581%_)
            (let ((_%mx153586%_ _%mx153581%_))
              (if (procedure? _%proc153582%_)
                  (let ((_%proc153596%_ _%proc153582%_))
                    (__with-lock _%mx153586%_ _%proc153596%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc153582%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx153581%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx153964%_ _%proc153965%_)
        (let* ((_%mx153968%_ _%mx153964%_) (_%proc153976%_ _%proc153965%_))
          (let ((__tmp154507 (lambda () (mutex-lock! _%mx153968%_)))
                (__tmp154506 (lambda () (mutex-unlock! _%mx153968%_))))
            (declare (not safe))
            (##dynamic-wind __tmp154507 _%proc153976%_ __tmp154506)))))
    (define with-dynamic-lock
      (lambda (_%mx153726%_ _%proc153727%_)
        (if (mutex? _%mx153726%_)
            (let ((_%mx153731%_ _%mx153726%_))
              (if (procedure? _%proc153727%_)
                  (let ((_%proc153741%_ _%proc153727%_))
                    (__with-dynamic-lock _%mx153731%_ _%proc153741%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc153727%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx153726%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk153927%_ _%error-port153928%_)
        (let* ((_%thunk153931%_ _%thunk153927%_)
               (_%error-port153939%_ _%error-port153928%_)
               (__tmp154508
                (let ((_%E153948%_ (current-exception-handler)))
                  (lambda (_%exn153950%_)
                    (let ((__tmp154509
                           (lambda (_%cont153952%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont153952%_
                                  _%exn153950%_
                                  _%error-port153939%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E153948%_ _%exn153950%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp154509))))))
          (declare (not safe))
          (__with-exception-handler __tmp154508 _%thunk153931%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk153957%_)
        (let ((_%error-port153959%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk153957%_
           _%error-port153959%_))))
    (define __with-exception-stack-trace
      (lambda _g154510_
        (let ((_g154511_ (let () (declare (not safe)) (##length _g154510_))))
          (cond ((let () (declare (not safe)) (##fx= _g154511_ 1))
                 (apply __with-exception-stack-trace__0 _g154510_))
                ((let () (declare (not safe)) (##fx= _g154511_ 2))
                 (apply __with-exception-stack-trace__% _g154510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g154510_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk153872%_ _%error-port153873%_)
        (if (procedure? _%thunk153872%_)
            (let ((_%thunk153877%_ _%thunk153872%_))
              (if (port? _%error-port153873%_)
                  (let ((_%error-port153887%_ _%error-port153873%_))
                    (__with-exception-stack-trace__%
                     _%thunk153877%_
                     _%error-port153887%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port153873%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk153872%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk153900%_)
        (let ((_%error-port153902%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk153900%_
           _%error-port153902%_))))
    (define with-exception-stack-trace
      (lambda _g154512_
        (let ((_g154513_ (let () (declare (not safe)) (##length _g154512_))))
          (cond ((let () (declare (not safe)) (##fx= _g154513_ 1))
                 (apply with-exception-stack-trace__0 _g154512_))
                ((let () (declare (not safe)) (##fx= _g154513_ 2))
                 (apply with-exception-stack-trace__% _g154512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g154512_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont153908%_ _%exn153909%_ _%error-port153910%_)
        (let ((_%out153912%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out153912%_))
          (display '"*** Unhandled exception in " _%out153912%_)
          (display (current-thread) _%out153912%_)
          (newline _%out153912%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn153909%_ _%out153912%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn153909%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out153912%_)
                (newline _%out153912%_)
                (display-continuation-backtrace _%cont153908%_ _%out153912%_)))
          (let ((__tmp154514 (get-output-string _%out153912%_)))
            (declare (not safe))
            (##write-string __tmp154514 _%error-port153910%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont153917%_ _%exn153918%_)
        (let ((_%error-port153920%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont153917%_
           _%exn153918%_
           _%error-port153920%_))))
    (define dump-stack-trace!
      (lambda _g154515_
        (let ((_g154516_ (let () (declare (not safe)) (##length _g154515_))))
          (cond ((let () (declare (not safe)) (##fx= _g154516_ 2))
                 (apply dump-stack-trace!__0 _g154515_))
                ((let () (declare (not safe)) (##fx= _g154516_ 3))
                 (apply dump-stack-trace!__% _g154515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g154515_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
