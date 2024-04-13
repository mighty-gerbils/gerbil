(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1713004410)
  (begin
    (define spawn
      (lambda (_%f109199%_ . _%args109200%_)
        (if (procedure? _%f109199%_)
            (let ((_%f109204%_ _%f109199%_))
              (declare (not safe))
              (##apply __spawn _%f109204%_ _%args109200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f109199%_)
              '#!void))))
    (define __spawn
      (lambda (_%f109186%_ . _%args109187%_)
        (let ((_%f109190%_ _%f109186%_))
          (spawn-actor _%f109190%_ _%args109187%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name109170%_ _%f109171%_ . _%args109172%_)
        (if (procedure? _%f109171%_)
            (let ((_%f109176%_ _%f109171%_))
              (declare (not safe))
              (##apply __spawn/name _%name109170%_ _%f109176%_ _%args109172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f109171%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name109156%_ _%f109157%_ . _%args109158%_)
        (let ((_%f109161%_ _%f109157%_))
          (spawn-actor _%f109161%_ _%args109158%_ _%name109156%_ '#f))))
    (define spawn/group
      (lambda (_%name109140%_ _%f109141%_ . _%args109142%_)
        (if (procedure? _%f109141%_)
            (let ((_%f109146%_ _%f109141%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name109140%_
                       _%f109146%_
                       _%args109142%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f109141%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name109124%_ _%f109125%_ . _%args109126%_)
        (let* ((_%f109129%_ _%f109125%_)
               (_%tgroup109138%_ (make-thread-group _%name109124%_)))
          (spawn-actor
           _%f109129%_
           _%args109126%_
           _%name109124%_
           _%tgroup109138%_))))
    (define spawn-actor
      (lambda (_%f109096%_ _%args109097%_ _%name109098%_ _%tgroup109099%_)
        (letrec ((_%thread-main109102%_
                  (lambda (_%thunk109116%_)
                    (lambda ()
                      (let ((__tmp109213
                             (lambda (_%exn109119%_)
                               (let ((__tmp109214
                                      (lambda (_%cont109121%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp109215
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont109121%_
                                                      _%exn109119%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp109215))
                                            '#!void)
                                        (let ((__tmp109216
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont109121%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp109216
                                           ##primordial-exception-handler
                                           _%exn109119%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp109214)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp109213
                         _%thunk109116%_))))))
          (let* ((_%thunk109105%_
                  (if (null? _%args109097%_)
                      _%f109096%_
                      (lambda () (apply _%f109096%_ _%args109097%_))))
                 (_%thunk109108%_
                  (lambda () (with-exception-stack-trace__0 _%thunk109105%_)))
                 (_%tgroup109113%_
                  (let ((_%$e109110%_ _%tgroup109099%_))
                    (if _%$e109110%_ _%$e109110%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main109102%_ _%thunk109108%_)
              _%name109098%_
              _%tgroup109113%_))))))
    (define spawn-thread__%
      (lambda (_%thunk109074%_ _%name109075%_ _%tgroup109076%_)
        (thread-start!
         (make-thread _%thunk109074%_ _%name109075%_ _%tgroup109076%_))))
    (define spawn-thread__0
      (lambda (_%thunk109081%_)
        (let* ((_%name109083%_ absent-obj) (_%tgroup109085%_ absent-obj))
          (spawn-thread__% _%thunk109081%_ _%name109083%_ _%tgroup109085%_))))
    (define spawn-thread__1
      (lambda (_%thunk109087%_ _%name109088%_)
        (let ((_%tgroup109090%_ absent-obj))
          (spawn-thread__% _%thunk109087%_ _%name109088%_ _%tgroup109090%_))))
    (define spawn-thread
      (lambda _g109218_
        (let ((_g109217_ (let () (declare (not safe)) (##length _g109218_))))
          (cond ((let () (declare (not safe)) (##fx= _g109217_ 1))
                 (apply spawn-thread__0 _g109218_))
                ((let () (declare (not safe)) (##fx= _g109217_ 2))
                 (apply spawn-thread__1 _g109218_))
                ((let () (declare (not safe)) (##fx= _g109217_ 3))
                 (apply spawn-thread__% _g109218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g109218_))))))
    (define thread-local-ref__%
      (lambda (_%key109058%_ _%default109059%_)
        (let ((_%tab109061%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab109061%_ _%key109058%_ _%default109059%_))))
    (define thread-local-ref__0
      (lambda (_%key109066%_)
        (let ((_%default109068%_ absent-obj))
          (thread-local-ref__% _%key109066%_ _%default109068%_))))
    (define thread-local-ref
      (lambda _g109220_
        (let ((_g109219_ (let () (declare (not safe)) (##length _g109220_))))
          (cond ((let () (declare (not safe)) (##fx= _g109219_ 1))
                 (apply thread-local-ref__0 _g109220_))
                ((let () (declare (not safe)) (##fx= _g109219_ 2))
                 (apply thread-local-ref__% _g109220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g109220_))))))
    (define thread-local-get
      (lambda (_%key109055%_) (thread-local-ref__% _%key109055%_ '#f)))
    (define thread-local-set!
      (lambda (_%key109050%_ _%value109051%_)
        (let ((_%tab109053%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab109053%_ _%key109050%_ _%value109051%_))))
    (define thread-local-delete!
      (lambda (_%key109046%_)
        (let ((_%tab109048%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab109048%_ _%key109046%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr109027%_ (current-thread)))
          (if (actor-thread? _%thr109027%_)
              (let ((_%$e109030%_ (actor-thread-locals _%thr109027%_)))
                (if _%$e109030%_
                    _%$e109030%_
                    (let ((_%tab109034%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr109027%_ _%tab109034%_)
                      _%tab109034%_)))
              (if (eq? _%thr109027%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e109038%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr109027%_))))
                      (if _%$e109038%_
                          ((lambda (_%tab109041%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab109041%_)
                           _%$e109038%_)
                          (let ((_%tab109044%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr109027%_
                               _%tab109044%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab109044%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value109005%_)
        (if ((lambda (_%$obj109008%_)
               (or (not _%$obj109008%_) (procedure? _%$obj109008%_)))
             _%new-value109005%_)
            (let ((_%new-value109015%_ _%new-value109005%_))
              (__unhandled-actor-exception-hook-set! _%new-value109015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value109005%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value108992%_)
        (let ((_%new-value108996%_ _%new-value108992%_))
          (set! __unhandled-actor-exception-hook _%new-value108996%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108966%_ _%proc108967%_)
        (if (mutex? _%mx108966%_)
            (let ((_%mx108971%_ _%mx108966%_))
              (if (procedure? _%proc108967%_)
                  (let ((_%proc108981%_ _%proc108967%_))
                    (__with-lock _%mx108971%_ _%proc108981%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108967%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx108966%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108937%_ _%proc108938%_)
        (let* ((_%mx108941%_ _%mx108937%_)
               (_%proc108949%_ _%proc108938%_)
               (_%handler108958%_ (current-exception-handler)))
          (let ((__tmp109222
                 (lambda (_%e108960%_)
                   (let ((__tmp109223
                          (lambda ()
                            (mutex-unlock! _%mx108941%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108958%_ _%e108960%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp109223))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108960%_))))
                (__tmp109221
                 (lambda ()
                   (mutex-lock! _%mx108941%_)
                   (let ((_%result108964%_
                          (let () (declare (not safe)) (_%proc108949%_))))
                     (mutex-unlock! _%mx108941%_)
                     _%result108964%_))))
            (declare (not safe))
            (__with-exception-handler __tmp109222 __tmp109221)))))
    (define with-dynamic-lock
      (lambda (_%mx108912%_ _%proc108913%_)
        (if (mutex? _%mx108912%_)
            (let ((_%mx108917%_ _%mx108912%_))
              (if (procedure? _%proc108913%_)
                  (let ((_%proc108927%_ _%proc108913%_))
                    (__with-dynamic-lock _%mx108917%_ _%proc108927%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108913%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx108912%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108889%_ _%proc108890%_)
        (let* ((_%mx108893%_ _%mx108889%_) (_%proc108901%_ _%proc108890%_))
          (let ((__tmp109225 (lambda () (mutex-lock! _%mx108893%_)))
                (__tmp109224 (lambda () (mutex-unlock! _%mx108893%_))))
            (declare (not safe))
            (##dynamic-wind __tmp109225 _%proc108901%_ __tmp109224)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108854%_ _%error-port108855%_)
        (if (procedure? _%thunk108854%_)
            (let ((_%thunk108859%_ _%thunk108854%_))
              (if (port? _%error-port108855%_)
                  (let ((_%error-port108869%_ _%error-port108855%_))
                    (__with-exception-stack-trace__%
                     _%thunk108859%_
                     _%error-port108869%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk108854%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108882%_)
        (let ((_%error-port108884%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108882%_
           _%error-port108884%_))))
    (define with-exception-stack-trace
      (lambda _g109227_
        (let ((_g109226_ (let () (declare (not safe)) (##length _g109227_))))
          (cond ((let () (declare (not safe)) (##fx= _g109226_ 1))
                 (apply with-exception-stack-trace__0 _g109227_))
                ((let () (declare (not safe)) (##fx= _g109226_ 2))
                 (apply with-exception-stack-trace__% _g109227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g109227_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108815%_ _%error-port108816%_)
        (let* ((_%thunk108819%_ _%thunk108815%_)
               (_%error-port108828%_ _%error-port108816%_)
               (__tmp109228
                (let ((_%E108837%_ (current-exception-handler)))
                  (lambda (_%exn108839%_)
                    (let ((__tmp109229
                           (lambda (_%cont108841%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108841%_
                                  _%exn108839%_
                                  _%error-port108828%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108837%_ _%exn108839%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp109229))))))
          (declare (not safe))
          (__with-exception-handler __tmp109228 _%thunk108819%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108846%_)
        (let ((_%error-port108848%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108846%_
           _%error-port108848%_))))
    (define __with-exception-stack-trace
      (lambda _g109231_
        (let ((_g109230_ (let () (declare (not safe)) (##length _g109231_))))
          (cond ((let () (declare (not safe)) (##fx= _g109230_ 1))
                 (apply __with-exception-stack-trace__0 _g109231_))
                ((let () (declare (not safe)) (##fx= _g109230_ 2))
                 (apply __with-exception-stack-trace__% _g109231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g109231_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108796%_ _%exn108797%_ _%error-port108798%_)
        (let ((_%out108800%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108800%_))
          (display '"*** Unhandled exception in " _%out108800%_)
          (display (current-thread) _%out108800%_)
          (newline _%out108800%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn108797%_ _%out108800%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108797%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108800%_)
                (newline _%out108800%_)
                (display-continuation-backtrace _%cont108796%_ _%out108800%_)))
          (let ((__tmp109232 (get-output-string _%out108800%_)))
            (declare (not safe))
            (##write-string __tmp109232 _%error-port108798%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108805%_ _%exn108806%_)
        (let ((_%error-port108808%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108805%_
           _%exn108806%_
           _%error-port108808%_))))
    (define dump-stack-trace!
      (lambda _g109234_
        (let ((_g109233_ (let () (declare (not safe)) (##length _g109234_))))
          (cond ((let () (declare (not safe)) (##fx= _g109233_ 2))
                 (apply dump-stack-trace!__0 _g109234_))
                ((let () (declare (not safe)) (##fx= _g109233_ 3))
                 (apply dump-stack-trace!__% _g109234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g109234_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
