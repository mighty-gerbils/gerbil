(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712823026)
  (begin
    (define spawn
      (lambda (_%f108741%_ . _%args108742%_)
        (if (procedure? _%f108741%_)
            (let ((_%f108746%_ _%f108741%_))
              (declare (not safe))
              (##apply __spawn _%f108746%_ _%args108742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f108741%_)
              '#!void))))
    (define __spawn
      (lambda (_%f108728%_ . _%args108729%_)
        (let ((_%f108732%_ _%f108728%_))
          (spawn-actor _%f108732%_ _%args108729%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name108712%_ _%f108713%_ . _%args108714%_)
        (if (procedure? _%f108713%_)
            (let ((_%f108718%_ _%f108713%_))
              (declare (not safe))
              (##apply __spawn/name _%name108712%_ _%f108718%_ _%args108714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f108713%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name108698%_ _%f108699%_ . _%args108700%_)
        (let ((_%f108703%_ _%f108699%_))
          (spawn-actor _%f108703%_ _%args108700%_ _%name108698%_ '#f))))
    (define spawn/group
      (lambda (_%name108682%_ _%f108683%_ . _%args108684%_)
        (if (procedure? _%f108683%_)
            (let ((_%f108688%_ _%f108683%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name108682%_
                       _%f108688%_
                       _%args108684%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f108683%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name108666%_ _%f108667%_ . _%args108668%_)
        (let* ((_%f108671%_ _%f108667%_)
               (_%tgroup108680%_ (make-thread-group _%name108666%_)))
          (spawn-actor
           _%f108671%_
           _%args108668%_
           _%name108666%_
           _%tgroup108680%_))))
    (define spawn-actor
      (lambda (_%f108638%_ _%args108639%_ _%name108640%_ _%tgroup108641%_)
        (letrec ((_%thread-main108644%_
                  (lambda (_%thunk108658%_)
                    (lambda ()
                      (let ((__tmp108755
                             (lambda (_%exn108661%_)
                               (let ((__tmp108756
                                      (lambda (_%cont108663%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp108757
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont108663%_
                                                      _%exn108661%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp108757))
                                            '#!void)
                                        (let ((__tmp108758
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont108663%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp108758
                                           ##primordial-exception-handler
                                           _%exn108661%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp108756)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp108755
                         _%thunk108658%_))))))
          (let* ((_%thunk108647%_
                  (if (null? _%args108639%_)
                      _%f108638%_
                      (lambda () (apply _%f108638%_ _%args108639%_))))
                 (_%thunk108650%_
                  (lambda () (with-exception-stack-trace__0 _%thunk108647%_)))
                 (_%tgroup108655%_
                  (let ((_%$e108652%_ _%tgroup108641%_))
                    (if _%$e108652%_ _%$e108652%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main108644%_ _%thunk108650%_)
              _%name108640%_
              _%tgroup108655%_))))))
    (define spawn-thread__%
      (lambda (_%thunk108616%_ _%name108617%_ _%tgroup108618%_)
        (thread-start!
         (make-thread _%thunk108616%_ _%name108617%_ _%tgroup108618%_))))
    (define spawn-thread__0
      (lambda (_%thunk108623%_)
        (let* ((_%name108625%_ absent-obj) (_%tgroup108627%_ absent-obj))
          (spawn-thread__% _%thunk108623%_ _%name108625%_ _%tgroup108627%_))))
    (define spawn-thread__1
      (lambda (_%thunk108629%_ _%name108630%_)
        (let ((_%tgroup108632%_ absent-obj))
          (spawn-thread__% _%thunk108629%_ _%name108630%_ _%tgroup108632%_))))
    (define spawn-thread
      (lambda _g108760_
        (let ((_g108759_ (let () (declare (not safe)) (##length _g108760_))))
          (cond ((let () (declare (not safe)) (##fx= _g108759_ 1))
                 (apply spawn-thread__0 _g108760_))
                ((let () (declare (not safe)) (##fx= _g108759_ 2))
                 (apply spawn-thread__1 _g108760_))
                ((let () (declare (not safe)) (##fx= _g108759_ 3))
                 (apply spawn-thread__% _g108760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g108760_))))))
    (define thread-local-ref__%
      (lambda (_%key108600%_ _%default108601%_)
        (let ((_%tab108603%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab108603%_ _%key108600%_ _%default108601%_))))
    (define thread-local-ref__0
      (lambda (_%key108608%_)
        (let ((_%default108610%_ absent-obj))
          (thread-local-ref__% _%key108608%_ _%default108610%_))))
    (define thread-local-ref
      (lambda _g108762_
        (let ((_g108761_ (let () (declare (not safe)) (##length _g108762_))))
          (cond ((let () (declare (not safe)) (##fx= _g108761_ 1))
                 (apply thread-local-ref__0 _g108762_))
                ((let () (declare (not safe)) (##fx= _g108761_ 2))
                 (apply thread-local-ref__% _g108762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g108762_))))))
    (define thread-local-get
      (lambda (_%key108597%_) (thread-local-ref__% _%key108597%_ '#f)))
    (define thread-local-set!
      (lambda (_%key108592%_ _%value108593%_)
        (let ((_%tab108595%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab108595%_ _%key108592%_ _%value108593%_))))
    (define thread-local-delete!
      (lambda (_%key108588%_)
        (let ((_%tab108590%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab108590%_ _%key108588%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr108569%_ (current-thread)))
          (if (actor-thread? _%thr108569%_)
              (let ((_%$e108572%_ (actor-thread-locals _%thr108569%_)))
                (if _%$e108572%_
                    (values _%$e108572%_)
                    (let ((_%tab108576%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr108569%_ _%tab108576%_)
                      _%tab108576%_)))
              (if (eq? _%thr108569%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e108580%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr108569%_))))
                      (if _%$e108580%_
                          ((lambda (_%tab108583%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab108583%_)
                           _%$e108580%_)
                          (let ((_%tab108586%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr108569%_
                               _%tab108586%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab108586%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc108554%_)
        (if (procedure? _%proc108554%_)
            (let ((_%proc108558%_ _%proc108554%_))
              (__unhandled-actor-exception-hook-set! _%proc108558%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc108554%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc108542%_)
        (let ((_%proc108545%_ _%proc108542%_))
          (set! __unhandled-actor-exception-hook _%proc108545%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108516%_ _%proc108517%_)
        (if (mutex? _%mx108516%_)
            (let ((_%mx108521%_ _%mx108516%_))
              (if (procedure? _%proc108517%_)
                  (let ((_%proc108531%_ _%proc108517%_))
                    (__with-lock _%mx108521%_ _%proc108531%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108517%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx108516%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108487%_ _%proc108488%_)
        (let* ((_%mx108491%_ _%mx108487%_)
               (_%proc108499%_ _%proc108488%_)
               (_%handler108508%_ (current-exception-handler)))
          (let ((__tmp108764
                 (lambda (_%e108510%_)
                   (let ((__tmp108765
                          (lambda ()
                            (mutex-unlock! _%mx108491%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108508%_ _%e108510%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp108765))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108510%_))))
                (__tmp108763
                 (lambda ()
                   (mutex-lock! _%mx108491%_)
                   (let ((_%result108514%_
                          (let () (declare (not safe)) (_%proc108499%_))))
                     (mutex-unlock! _%mx108491%_)
                     _%result108514%_))))
            (declare (not safe))
            (__with-exception-handler __tmp108764 __tmp108763)))))
    (define with-dynamic-lock
      (lambda (_%mx108462%_ _%proc108463%_)
        (if (mutex? _%mx108462%_)
            (let ((_%mx108467%_ _%mx108462%_))
              (if (procedure? _%proc108463%_)
                  (let ((_%proc108477%_ _%proc108463%_))
                    (__with-dynamic-lock _%mx108467%_ _%proc108477%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx108462%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108439%_ _%proc108440%_)
        (let* ((_%mx108443%_ _%mx108439%_) (_%proc108451%_ _%proc108440%_))
          (let ((__tmp108767 (lambda () (mutex-lock! _%mx108443%_)))
                (__tmp108766 (lambda () (mutex-unlock! _%mx108443%_))))
            (declare (not safe))
            (##dynamic-wind __tmp108767 _%proc108451%_ __tmp108766)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108404%_ _%error-port108405%_)
        (if (procedure? _%thunk108404%_)
            (let ((_%thunk108409%_ _%thunk108404%_))
              (if (port? _%error-port108405%_)
                  (let ((_%error-port108419%_ _%error-port108405%_))
                    (__with-exception-stack-trace__%
                     _%thunk108409%_
                     _%error-port108419%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108405%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk108404%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108432%_)
        (let ((_%error-port108434%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108432%_
           _%error-port108434%_))))
    (define with-exception-stack-trace
      (lambda _g108769_
        (let ((_g108768_ (let () (declare (not safe)) (##length _g108769_))))
          (cond ((let () (declare (not safe)) (##fx= _g108768_ 1))
                 (apply with-exception-stack-trace__0 _g108769_))
                ((let () (declare (not safe)) (##fx= _g108768_ 2))
                 (apply with-exception-stack-trace__% _g108769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g108769_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108365%_ _%error-port108366%_)
        (let* ((_%thunk108369%_ _%thunk108365%_)
               (_%error-port108378%_ _%error-port108366%_)
               (__tmp108770
                (let ((_%E108387%_ (current-exception-handler)))
                  (lambda (_%exn108389%_)
                    (let ((__tmp108771
                           (lambda (_%cont108391%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108391%_
                                  _%exn108389%_
                                  _%error-port108378%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108387%_ _%exn108389%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp108771))))))
          (declare (not safe))
          (__with-exception-handler __tmp108770 _%thunk108369%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108396%_)
        (let ((_%error-port108398%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108396%_
           _%error-port108398%_))))
    (define __with-exception-stack-trace
      (lambda _g108773_
        (let ((_g108772_ (let () (declare (not safe)) (##length _g108773_))))
          (cond ((let () (declare (not safe)) (##fx= _g108772_ 1))
                 (apply __with-exception-stack-trace__0 _g108773_))
                ((let () (declare (not safe)) (##fx= _g108772_ 2))
                 (apply __with-exception-stack-trace__% _g108773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g108773_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108346%_ _%exn108347%_ _%error-port108348%_)
        (let ((_%out108350%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108350%_))
          (display '"*** Unhandled exception in " _%out108350%_)
          (display (current-thread) _%out108350%_)
          (newline _%out108350%_)
          (display-exception _%exn108347%_ _%out108350%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108347%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108350%_)
                (newline _%out108350%_)
                (display-continuation-backtrace _%cont108346%_ _%out108350%_)))
          (let ((__tmp108774 (get-output-string _%out108350%_)))
            (declare (not safe))
            (##write-string __tmp108774 _%error-port108348%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108355%_ _%exn108356%_)
        (let ((_%error-port108358%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108355%_
           _%exn108356%_
           _%error-port108358%_))))
    (define dump-stack-trace!
      (lambda _g108776_
        (let ((_g108775_ (let () (declare (not safe)) (##length _g108776_))))
          (cond ((let () (declare (not safe)) (##fx= _g108775_ 2))
                 (apply dump-stack-trace!__0 _g108776_))
                ((let () (declare (not safe)) (##fx= _g108775_ 3))
                 (apply dump-stack-trace!__% _g108776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g108776_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
