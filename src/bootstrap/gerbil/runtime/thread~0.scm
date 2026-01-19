(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1768865822)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define make-system-thread
      (lambda (_%thunk122354%_ _%name122355%_)
        (if (procedure? _%thunk122354%_)
            (let ((_%thunk122359%_ _%thunk122354%_))
              (if (symbol? _%name122355%_)
                  (let ((_%name122369%_ _%name122355%_))
                    (__make-system-thread _%thunk122359%_ _%name122369%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name122355%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk122354%_)
              '#!void))))
    (define __make-system-thread
      (lambda (_%thunk122332%_ _%name122333%_)
        (let* ((_%thunk122336%_ _%thunk122332%_)
               (_%name122344%_ _%name122333%_))
          (make-thread
           (lambda () (thread-main _%thunk122336%_))
           _%name122344%_
           (system-thread-group)))))
    (define system-thread!
      (lambda (_%thunk122307%_ _%name122308%_)
        (if (procedure? _%thunk122307%_)
            (let ((_%thunk122312%_ _%thunk122307%_))
              (if (symbol? _%name122308%_)
                  (let ((_%name122322%_ _%name122308%_))
                    (__system-thread! _%thunk122312%_ _%name122322%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name122308%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk122307%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk122286%_ _%name122287%_)
        (let* ((_%thunk122290%_ _%thunk122286%_)
               (_%name122298%_ _%name122287%_))
          (thread-start!
           (__make-system-thread _%thunk122290%_ _%name122298%_)))))
    (define system-actor!
      (lambda (_%thunk122261%_ _%name122262%_)
        (if (procedure? _%thunk122261%_)
            (let ((_%thunk122266%_ _%thunk122261%_))
              (if (symbol? _%name122262%_)
                  (let ((_%name122276%_ _%name122262%_))
                    (__system-actor! _%thunk122266%_ _%name122276%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name122262%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk122261%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk122240%_ _%name122241%_)
        (let* ((_%thunk122244%_ _%thunk122240%_)
               (_%name122252%_ _%name122241%_))
          (spawn-actor
           _%thunk122244%_
           '()
           _%name122252%_
           (system-thread-group)))))
    (define spawn
      (lambda (_%f122225%_ . _%args122226%_)
        (if (procedure? _%f122225%_)
            (let ((_%f122230%_ _%f122225%_))
              (declare (not safe))
              (##apply __spawn _%f122230%_ _%args122226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f122225%_)
              '#!void))))
    (define __spawn
      (lambda (_%f122212%_ . _%args122213%_)
        (let ((_%f122216%_ _%f122212%_))
          (spawn-actor _%f122216%_ _%args122213%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name122196%_ _%f122197%_ . _%args122198%_)
        (if (procedure? _%f122197%_)
            (let ((_%f122202%_ _%f122197%_))
              (declare (not safe))
              (##apply __spawn/name _%name122196%_ _%f122202%_ _%args122198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f122197%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name122182%_ _%f122183%_ . _%args122184%_)
        (let ((_%f122187%_ _%f122183%_))
          (spawn-actor _%f122187%_ _%args122184%_ _%name122182%_ '#f))))
    (define spawn/group
      (lambda (_%name122166%_ _%f122167%_ . _%args122168%_)
        (if (procedure? _%f122167%_)
            (let ((_%f122172%_ _%f122167%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name122166%_
                       _%f122172%_
                       _%args122168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f122167%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name122150%_ _%f122151%_ . _%args122152%_)
        (let* ((_%f122155%_ _%f122151%_)
               (_%tgroup122164%_ (make-thread-group _%name122150%_)))
          (spawn-actor
           _%f122155%_
           _%args122152%_
           _%name122150%_
           _%tgroup122164%_))))
    (define spawn-actor
      (lambda (_%f122131%_ _%args122132%_ _%name122133%_ _%tgroup122134%_)
        (let* ((_%thunk122138%_
                (if (null? _%args122132%_)
                    _%f122131%_
                    (lambda () (apply _%f122131%_ _%args122132%_))))
               (_%thunk122141%_
                (lambda () (with-exception-stack-trace__0 _%thunk122138%_)))
               (_%tgroup122146%_
                (let ((_%$e122143%_ _%tgroup122134%_))
                  (if _%$e122143%_ _%$e122143%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk122141%_))
            _%name122133%_
            _%tgroup122146%_)))))
    (define spawn-thread__%
      (lambda (_%thunk122108%_ _%name122109%_ _%tgroup122110%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk122108%_))
          _%name122109%_
          _%tgroup122110%_))))
    (define spawn-thread__0
      (lambda (_%thunk122116%_)
        (let* ((_%name122118%_ absent-obj) (_%tgroup122120%_ absent-obj))
          (spawn-thread__% _%thunk122116%_ _%name122118%_ _%tgroup122120%_))))
    (define spawn-thread__1
      (lambda (_%thunk122122%_ _%name122123%_)
        (let ((_%tgroup122125%_ absent-obj))
          (spawn-thread__% _%thunk122122%_ _%name122123%_ _%tgroup122125%_))))
    (define spawn-thread
      (lambda _g122380_
        (let ((_g122381_ (let () (declare (not safe)) (##length _g122380_))))
          (cond ((let () (declare (not safe)) (##fx= _g122381_ 1))
                 (apply spawn-thread__0 _g122380_))
                ((let () (declare (not safe)) (##fx= _g122381_ 2))
                 (apply spawn-thread__1 _g122380_))
                ((let () (declare (not safe)) (##fx= _g122381_ 3))
                 (apply spawn-thread__% _g122380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g122380_))))))
    (define thread-main
      (lambda (_%thunk122100%_)
        (let ((__tmp122382
               (lambda (_%exn122102%_)
                 (let ((__tmp122383
                        (lambda (_%cont122104%_)
                          (if (procedure? __unhandled-actor-exception-hook)
                              (let ((__tmp122384
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__unhandled-actor-exception-hook
                                          _%cont122104%_
                                          _%exn122102%_)))))
                                (declare (not safe))
                                (__with-catch void __tmp122384))
                              '#!void)
                          (let ((__tmp122385
                                 (let ()
                                   (declare (not safe))
                                   (##continuation-last _%cont122104%_))))
                            (declare (not safe))
                            (##continuation-graft
                             __tmp122385
                             ##primordial-exception-handler
                             _%exn122102%_)))))
                   (declare (not safe))
                   (##continuation-capture __tmp122383)))))
          (declare (not safe))
          (with-exception-handler __tmp122382 _%thunk122100%_))))
    (define thread-local-ref__%
      (lambda (_%key122085%_ _%default122086%_)
        (let ((_%tab122088%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab122088%_ _%key122085%_ _%default122086%_))))
    (define thread-local-ref__0
      (lambda (_%key122093%_)
        (let ((_%default122095%_ absent-obj))
          (thread-local-ref__% _%key122093%_ _%default122095%_))))
    (define thread-local-ref
      (lambda _g122386_
        (let ((_g122387_ (let () (declare (not safe)) (##length _g122386_))))
          (cond ((let () (declare (not safe)) (##fx= _g122387_ 1))
                 (apply thread-local-ref__0 _g122386_))
                ((let () (declare (not safe)) (##fx= _g122387_ 2))
                 (apply thread-local-ref__% _g122386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g122386_))))))
    (define thread-local-get
      (lambda (_%key122082%_) (thread-local-ref__% _%key122082%_ '#f)))
    (define thread-local-set!
      (lambda (_%key122077%_ _%value122078%_)
        (let ((_%tab122080%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab122080%_ _%key122077%_ _%value122078%_))))
    (define thread-local-delete!
      (lambda (_%key122073%_)
        (let ((_%tab122075%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab122075%_ _%key122073%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr122054%_ (current-thread)))
          (if (actor-thread? _%thr122054%_)
              (let ((_%$e122057%_ (actor-thread-locals _%thr122054%_)))
                (if _%$e122057%_
                    _%$e122057%_
                    (let ((_%tab122061%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr122054%_ _%tab122061%_)
                      _%tab122061%_)))
              (if (eq? _%thr122054%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e122065%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr122054%_))))
                      (if _%$e122065%_
                          ((lambda (_%tab122068%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab122068%_)
                           _%$e122065%_)
                          (let ((_%tab122071%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr122054%_
                               _%tab122071%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab122071%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value122032%_)
        (if ((lambda (_%$obj122035%_)
               (or (not _%$obj122035%_) (procedure? _%$obj122035%_)))
             _%new-value122032%_)
            (let ((_%new-value122042%_ _%new-value122032%_))
              (__unhandled-actor-exception-hook-set! _%new-value122042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value122032%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value122019%_)
        (let ((_%new-value122023%_ _%new-value122019%_))
          (set! __unhandled-actor-exception-hook _%new-value122023%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx121993%_ _%proc121994%_)
        (if (mutex? _%mx121993%_)
            (let ((_%mx121998%_ _%mx121993%_))
              (if (procedure? _%proc121994%_)
                  (let ((_%proc122008%_ _%proc121994%_))
                    (__with-lock _%mx121998%_ _%proc122008%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121994%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx121993%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx121964%_ _%proc121965%_)
        (let* ((_%mx121968%_ _%mx121964%_)
               (_%proc121976%_ _%proc121965%_)
               (_%handler121985%_ (current-exception-handler)))
          (let ((__tmp122389
                 (lambda (_%e121987%_)
                   (let ((__tmp122390
                          (lambda ()
                            (mutex-unlock! _%mx121968%_)
                            (let ()
                              (declare (not safe))
                              (_%handler121985%_ _%e121987%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp122390))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e121987%_))))
                (__tmp122388
                 (lambda ()
                   (mutex-lock! _%mx121968%_)
                   (let ((_%result121991%_
                          (let () (declare (not safe)) (_%proc121976%_))))
                     (mutex-unlock! _%mx121968%_)
                     _%result121991%_))))
            (declare (not safe))
            (__with-exception-handler __tmp122389 __tmp122388)))))
    (define with-dynamic-lock
      (lambda (_%mx121939%_ _%proc121940%_)
        (if (mutex? _%mx121939%_)
            (let ((_%mx121944%_ _%mx121939%_))
              (if (procedure? _%proc121940%_)
                  (let ((_%proc121954%_ _%proc121940%_))
                    (__with-dynamic-lock _%mx121944%_ _%proc121954%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc121940%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx121939%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx121916%_ _%proc121917%_)
        (let* ((_%mx121920%_ _%mx121916%_) (_%proc121928%_ _%proc121917%_))
          (let ((__tmp122392 (lambda () (mutex-lock! _%mx121920%_)))
                (__tmp122391 (lambda () (mutex-unlock! _%mx121920%_))))
            (declare (not safe))
            (##dynamic-wind __tmp122392 _%proc121928%_ __tmp122391)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk121881%_ _%error-port121882%_)
        (if (procedure? _%thunk121881%_)
            (let ((_%thunk121886%_ _%thunk121881%_))
              (if (port? _%error-port121882%_)
                  (let ((_%error-port121896%_ _%error-port121882%_))
                    (__with-exception-stack-trace__%
                     _%thunk121886%_
                     _%error-port121896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port121882%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk121881%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk121909%_)
        (let ((_%error-port121911%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk121909%_
           _%error-port121911%_))))
    (define with-exception-stack-trace
      (lambda _g122393_
        (let ((_g122394_ (let () (declare (not safe)) (##length _g122393_))))
          (cond ((let () (declare (not safe)) (##fx= _g122394_ 1))
                 (apply with-exception-stack-trace__0 _g122393_))
                ((let () (declare (not safe)) (##fx= _g122394_ 2))
                 (apply with-exception-stack-trace__% _g122393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g122393_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk121842%_ _%error-port121843%_)
        (let* ((_%thunk121846%_ _%thunk121842%_)
               (_%error-port121855%_ _%error-port121843%_)
               (__tmp122395
                (let ((_%E121864%_ (current-exception-handler)))
                  (lambda (_%exn121866%_)
                    (let ((__tmp122396
                           (lambda (_%cont121868%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont121868%_
                                  _%exn121866%_
                                  _%error-port121855%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E121864%_ _%exn121866%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp122396))))))
          (declare (not safe))
          (__with-exception-handler __tmp122395 _%thunk121846%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk121873%_)
        (let ((_%error-port121875%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk121873%_
           _%error-port121875%_))))
    (define __with-exception-stack-trace
      (lambda _g122397_
        (let ((_g122398_ (let () (declare (not safe)) (##length _g122397_))))
          (cond ((let () (declare (not safe)) (##fx= _g122398_ 1))
                 (apply __with-exception-stack-trace__0 _g122397_))
                ((let () (declare (not safe)) (##fx= _g122398_ 2))
                 (apply __with-exception-stack-trace__% _g122397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g122397_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont121823%_ _%exn121824%_ _%error-port121825%_)
        (let ((_%out121827%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out121827%_))
          (display '"*** Unhandled exception in " _%out121827%_)
          (display (current-thread) _%out121827%_)
          (newline _%out121827%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn121824%_ _%out121827%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn121824%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out121827%_)
                (newline _%out121827%_)
                (display-continuation-backtrace _%cont121823%_ _%out121827%_)))
          (let ((__tmp122399 (get-output-string _%out121827%_)))
            (declare (not safe))
            (##write-string __tmp122399 _%error-port121825%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont121832%_ _%exn121833%_)
        (let ((_%error-port121835%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont121832%_
           _%exn121833%_
           _%error-port121835%_))))
    (define dump-stack-trace!
      (lambda _g122400_
        (let ((_g122401_ (let () (declare (not safe)) (##length _g122400_))))
          (cond ((let () (declare (not safe)) (##fx= _g122401_ 2))
                 (apply dump-stack-trace!__0 _g122400_))
                ((let () (declare (not safe)) (##fx= _g122401_ 3))
                 (apply dump-stack-trace!__% _g122400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g122400_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
