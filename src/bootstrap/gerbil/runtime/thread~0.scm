(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712836657)
  (begin
    (define spawn
      (lambda (_%f108743%_ . _%args108744%_)
        (if (procedure? _%f108743%_)
            (let ((_%f108748%_ _%f108743%_))
              (declare (not safe))
              (##apply __spawn _%f108748%_ _%args108744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f108743%_)
              '#!void))))
    (define __spawn
      (lambda (_%f108730%_ . _%args108731%_)
        (let ((_%f108734%_ _%f108730%_))
          (spawn-actor _%f108734%_ _%args108731%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name108714%_ _%f108715%_ . _%args108716%_)
        (if (procedure? _%f108715%_)
            (let ((_%f108720%_ _%f108715%_))
              (declare (not safe))
              (##apply __spawn/name _%name108714%_ _%f108720%_ _%args108716%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f108715%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name108700%_ _%f108701%_ . _%args108702%_)
        (let ((_%f108705%_ _%f108701%_))
          (spawn-actor _%f108705%_ _%args108702%_ _%name108700%_ '#f))))
    (define spawn/group
      (lambda (_%name108684%_ _%f108685%_ . _%args108686%_)
        (if (procedure? _%f108685%_)
            (let ((_%f108690%_ _%f108685%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name108684%_
                       _%f108690%_
                       _%args108686%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f108685%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name108668%_ _%f108669%_ . _%args108670%_)
        (let* ((_%f108673%_ _%f108669%_)
               (_%tgroup108682%_ (make-thread-group _%name108668%_)))
          (spawn-actor
           _%f108673%_
           _%args108670%_
           _%name108668%_
           _%tgroup108682%_))))
    (define spawn-actor
      (lambda (_%f108640%_ _%args108641%_ _%name108642%_ _%tgroup108643%_)
        (letrec ((_%thread-main108646%_
                  (lambda (_%thunk108660%_)
                    (lambda ()
                      (let ((__tmp108757
                             (lambda (_%exn108663%_)
                               (let ((__tmp108758
                                      (lambda (_%cont108665%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp108759
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont108665%_
                                                      _%exn108663%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp108759))
                                            '#!void)
                                        (let ((__tmp108760
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont108665%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp108760
                                           ##primordial-exception-handler
                                           _%exn108663%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp108758)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp108757
                         _%thunk108660%_))))))
          (let* ((_%thunk108649%_
                  (if (null? _%args108641%_)
                      _%f108640%_
                      (lambda () (apply _%f108640%_ _%args108641%_))))
                 (_%thunk108652%_
                  (lambda () (with-exception-stack-trace__0 _%thunk108649%_)))
                 (_%tgroup108657%_
                  (let ((_%$e108654%_ _%tgroup108643%_))
                    (if _%$e108654%_ _%$e108654%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main108646%_ _%thunk108652%_)
              _%name108642%_
              _%tgroup108657%_))))))
    (define spawn-thread__%
      (lambda (_%thunk108618%_ _%name108619%_ _%tgroup108620%_)
        (thread-start!
         (make-thread _%thunk108618%_ _%name108619%_ _%tgroup108620%_))))
    (define spawn-thread__0
      (lambda (_%thunk108625%_)
        (let* ((_%name108627%_ absent-obj) (_%tgroup108629%_ absent-obj))
          (spawn-thread__% _%thunk108625%_ _%name108627%_ _%tgroup108629%_))))
    (define spawn-thread__1
      (lambda (_%thunk108631%_ _%name108632%_)
        (let ((_%tgroup108634%_ absent-obj))
          (spawn-thread__% _%thunk108631%_ _%name108632%_ _%tgroup108634%_))))
    (define spawn-thread
      (lambda _g108762_
        (let ((_g108761_ (let () (declare (not safe)) (##length _g108762_))))
          (cond ((let () (declare (not safe)) (##fx= _g108761_ 1))
                 (apply spawn-thread__0 _g108762_))
                ((let () (declare (not safe)) (##fx= _g108761_ 2))
                 (apply spawn-thread__1 _g108762_))
                ((let () (declare (not safe)) (##fx= _g108761_ 3))
                 (apply spawn-thread__% _g108762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g108762_))))))
    (define thread-local-ref__%
      (lambda (_%key108602%_ _%default108603%_)
        (let ((_%tab108605%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab108605%_ _%key108602%_ _%default108603%_))))
    (define thread-local-ref__0
      (lambda (_%key108610%_)
        (let ((_%default108612%_ absent-obj))
          (thread-local-ref__% _%key108610%_ _%default108612%_))))
    (define thread-local-ref
      (lambda _g108764_
        (let ((_g108763_ (let () (declare (not safe)) (##length _g108764_))))
          (cond ((let () (declare (not safe)) (##fx= _g108763_ 1))
                 (apply thread-local-ref__0 _g108764_))
                ((let () (declare (not safe)) (##fx= _g108763_ 2))
                 (apply thread-local-ref__% _g108764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g108764_))))))
    (define thread-local-get
      (lambda (_%key108599%_) (thread-local-ref__% _%key108599%_ '#f)))
    (define thread-local-set!
      (lambda (_%key108594%_ _%value108595%_)
        (let ((_%tab108597%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab108597%_ _%key108594%_ _%value108595%_))))
    (define thread-local-delete!
      (lambda (_%key108590%_)
        (let ((_%tab108592%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab108592%_ _%key108590%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr108571%_ (current-thread)))
          (if (actor-thread? _%thr108571%_)
              (let ((_%$e108574%_ (actor-thread-locals _%thr108571%_)))
                (if _%$e108574%_
                    (values _%$e108574%_)
                    (let ((_%tab108578%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr108571%_ _%tab108578%_)
                      _%tab108578%_)))
              (if (eq? _%thr108571%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e108582%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr108571%_))))
                      (if _%$e108582%_
                          ((lambda (_%tab108585%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab108585%_)
                           _%$e108582%_)
                          (let ((_%tab108588%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr108571%_
                               _%tab108588%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab108588%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc108556%_)
        (if (procedure? _%proc108556%_)
            (let ((_%proc108560%_ _%proc108556%_))
              (__unhandled-actor-exception-hook-set! _%proc108560%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc108556%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc108544%_)
        (let ((_%proc108547%_ _%proc108544%_))
          (set! __unhandled-actor-exception-hook _%proc108547%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108518%_ _%proc108519%_)
        (if (mutex? _%mx108518%_)
            (let ((_%mx108523%_ _%mx108518%_))
              (if (procedure? _%proc108519%_)
                  (let ((_%proc108533%_ _%proc108519%_))
                    (__with-lock _%mx108523%_ _%proc108533%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108519%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx108518%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108489%_ _%proc108490%_)
        (let* ((_%mx108493%_ _%mx108489%_)
               (_%proc108501%_ _%proc108490%_)
               (_%handler108510%_ (current-exception-handler)))
          (let ((__tmp108766
                 (lambda (_%e108512%_)
                   (let ((__tmp108767
                          (lambda ()
                            (mutex-unlock! _%mx108493%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108510%_ _%e108512%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp108767))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108512%_))))
                (__tmp108765
                 (lambda ()
                   (mutex-lock! _%mx108493%_)
                   (let ((_%result108516%_
                          (let () (declare (not safe)) (_%proc108501%_))))
                     (mutex-unlock! _%mx108493%_)
                     _%result108516%_))))
            (declare (not safe))
            (__with-exception-handler __tmp108766 __tmp108765)))))
    (define with-dynamic-lock
      (lambda (_%mx108464%_ _%proc108465%_)
        (if (mutex? _%mx108464%_)
            (let ((_%mx108469%_ _%mx108464%_))
              (if (procedure? _%proc108465%_)
                  (let ((_%proc108479%_ _%proc108465%_))
                    (__with-dynamic-lock _%mx108469%_ _%proc108479%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108465%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx108464%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108441%_ _%proc108442%_)
        (let* ((_%mx108445%_ _%mx108441%_) (_%proc108453%_ _%proc108442%_))
          (let ((__tmp108769 (lambda () (mutex-lock! _%mx108445%_)))
                (__tmp108768 (lambda () (mutex-unlock! _%mx108445%_))))
            (declare (not safe))
            (##dynamic-wind __tmp108769 _%proc108453%_ __tmp108768)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108406%_ _%error-port108407%_)
        (if (procedure? _%thunk108406%_)
            (let ((_%thunk108411%_ _%thunk108406%_))
              (if (port? _%error-port108407%_)
                  (let ((_%error-port108421%_ _%error-port108407%_))
                    (__with-exception-stack-trace__%
                     _%thunk108411%_
                     _%error-port108421%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108407%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk108406%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108434%_)
        (let ((_%error-port108436%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108434%_
           _%error-port108436%_))))
    (define with-exception-stack-trace
      (lambda _g108771_
        (let ((_g108770_ (let () (declare (not safe)) (##length _g108771_))))
          (cond ((let () (declare (not safe)) (##fx= _g108770_ 1))
                 (apply with-exception-stack-trace__0 _g108771_))
                ((let () (declare (not safe)) (##fx= _g108770_ 2))
                 (apply with-exception-stack-trace__% _g108771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g108771_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108367%_ _%error-port108368%_)
        (let* ((_%thunk108371%_ _%thunk108367%_)
               (_%error-port108380%_ _%error-port108368%_)
               (__tmp108772
                (let ((_%E108389%_ (current-exception-handler)))
                  (lambda (_%exn108391%_)
                    (let ((__tmp108773
                           (lambda (_%cont108393%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108393%_
                                  _%exn108391%_
                                  _%error-port108380%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108389%_ _%exn108391%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp108773))))))
          (declare (not safe))
          (__with-exception-handler __tmp108772 _%thunk108371%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108398%_)
        (let ((_%error-port108400%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108398%_
           _%error-port108400%_))))
    (define __with-exception-stack-trace
      (lambda _g108775_
        (let ((_g108774_ (let () (declare (not safe)) (##length _g108775_))))
          (cond ((let () (declare (not safe)) (##fx= _g108774_ 1))
                 (apply __with-exception-stack-trace__0 _g108775_))
                ((let () (declare (not safe)) (##fx= _g108774_ 2))
                 (apply __with-exception-stack-trace__% _g108775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g108775_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108348%_ _%exn108349%_ _%error-port108350%_)
        (let ((_%out108352%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108352%_))
          (display '"*** Unhandled exception in " _%out108352%_)
          (display (current-thread) _%out108352%_)
          (newline _%out108352%_)
          (display-exception _%exn108349%_ _%out108352%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108349%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108352%_)
                (newline _%out108352%_)
                (display-continuation-backtrace _%cont108348%_ _%out108352%_)))
          (let ((__tmp108776 (get-output-string _%out108352%_)))
            (declare (not safe))
            (##write-string __tmp108776 _%error-port108350%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108357%_ _%exn108358%_)
        (let ((_%error-port108360%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108357%_
           _%exn108358%_
           _%error-port108360%_))))
    (define dump-stack-trace!
      (lambda _g108778_
        (let ((_g108777_ (let () (declare (not safe)) (##length _g108778_))))
          (cond ((let () (declare (not safe)) (##fx= _g108777_ 2))
                 (apply dump-stack-trace!__0 _g108778_))
                ((let () (declare (not safe)) (##fx= _g108777_ 3))
                 (apply dump-stack-trace!__% _g108778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g108778_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
