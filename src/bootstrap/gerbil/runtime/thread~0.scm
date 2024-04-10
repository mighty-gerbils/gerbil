(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712784664)
  (begin
    (define spawn
      (lambda (_%f108025%_ . _%args108026%_)
        (if (procedure? _%f108025%_)
            (let ((_%f108030%_ _%f108025%_))
              (declare (not safe))
              (##apply __spawn _%f108030%_ _%args108026%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f108025%_)
              '#!void))))
    (define __spawn
      (lambda (_%f108012%_ . _%args108013%_)
        (let ((_%f108016%_ _%f108012%_))
          (spawn-actor _%f108016%_ _%args108013%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name107996%_ _%f107997%_ . _%args107998%_)
        (if (procedure? _%f107997%_)
            (let ((_%f108002%_ _%f107997%_))
              (declare (not safe))
              (##apply __spawn/name _%name107996%_ _%f108002%_ _%args107998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f107997%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name107982%_ _%f107983%_ . _%args107984%_)
        (let ((_%f107987%_ _%f107983%_))
          (spawn-actor _%f107987%_ _%args107984%_ _%name107982%_ '#f))))
    (define spawn/group
      (lambda (_%name107966%_ _%f107967%_ . _%args107968%_)
        (if (procedure? _%f107967%_)
            (let ((_%f107972%_ _%f107967%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name107966%_
                       _%f107972%_
                       _%args107968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f107967%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name107950%_ _%f107951%_ . _%args107952%_)
        (let* ((_%f107955%_ _%f107951%_)
               (_%tgroup107964%_ (make-thread-group _%name107950%_)))
          (spawn-actor
           _%f107955%_
           _%args107952%_
           _%name107950%_
           _%tgroup107964%_))))
    (define spawn-actor
      (lambda (_%f107922%_ _%args107923%_ _%name107924%_ _%tgroup107925%_)
        (letrec ((_%thread-main107928%_
                  (lambda (_%thunk107942%_)
                    (lambda ()
                      (let ((__tmp108039
                             (lambda (_%exn107945%_)
                               (let ((__tmp108040
                                      (lambda (_%cont107947%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp108041
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont107947%_
                                                      _%exn107945%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp108041))
                                            '#!void)
                                        (let ((__tmp108042
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont107947%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp108042
                                           ##primordial-exception-handler
                                           _%exn107945%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp108040)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp108039
                         _%thunk107942%_))))))
          (let* ((_%thunk107931%_
                  (if (null? _%args107923%_)
                      _%f107922%_
                      (lambda () (apply _%f107922%_ _%args107923%_))))
                 (_%thunk107934%_
                  (lambda () (with-exception-stack-trace__0 _%thunk107931%_)))
                 (_%tgroup107939%_
                  (let ((_%$e107936%_ _%tgroup107925%_))
                    (if _%$e107936%_ _%$e107936%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main107928%_ _%thunk107934%_)
              _%name107924%_
              _%tgroup107939%_))))))
    (define spawn-thread__%
      (lambda (_%thunk107900%_ _%name107901%_ _%tgroup107902%_)
        (thread-start!
         (make-thread _%thunk107900%_ _%name107901%_ _%tgroup107902%_))))
    (define spawn-thread__0
      (lambda (_%thunk107907%_)
        (let* ((_%name107909%_ absent-obj) (_%tgroup107911%_ absent-obj))
          (spawn-thread__% _%thunk107907%_ _%name107909%_ _%tgroup107911%_))))
    (define spawn-thread__1
      (lambda (_%thunk107913%_ _%name107914%_)
        (let ((_%tgroup107916%_ absent-obj))
          (spawn-thread__% _%thunk107913%_ _%name107914%_ _%tgroup107916%_))))
    (define spawn-thread
      (lambda _g108044_
        (let ((_g108043_ (let () (declare (not safe)) (##length _g108044_))))
          (cond ((let () (declare (not safe)) (##fx= _g108043_ 1))
                 (apply spawn-thread__0 _g108044_))
                ((let () (declare (not safe)) (##fx= _g108043_ 2))
                 (apply spawn-thread__1 _g108044_))
                ((let () (declare (not safe)) (##fx= _g108043_ 3))
                 (apply spawn-thread__% _g108044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g108044_))))))
    (define thread-local-ref__%
      (lambda (_%key107884%_ _%default107885%_)
        (let ((_%tab107887%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab107887%_ _%key107884%_ _%default107885%_))))
    (define thread-local-ref__0
      (lambda (_%key107892%_)
        (let ((_%default107894%_ absent-obj))
          (thread-local-ref__% _%key107892%_ _%default107894%_))))
    (define thread-local-ref
      (lambda _g108046_
        (let ((_g108045_ (let () (declare (not safe)) (##length _g108046_))))
          (cond ((let () (declare (not safe)) (##fx= _g108045_ 1))
                 (apply thread-local-ref__0 _g108046_))
                ((let () (declare (not safe)) (##fx= _g108045_ 2))
                 (apply thread-local-ref__% _g108046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g108046_))))))
    (define thread-local-get
      (lambda (_%key107881%_) (thread-local-ref__% _%key107881%_ '#f)))
    (define thread-local-set!
      (lambda (_%key107876%_ _%value107877%_)
        (let ((_%tab107879%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab107879%_ _%key107876%_ _%value107877%_))))
    (define thread-local-delete!
      (lambda (_%key107872%_)
        (let ((_%tab107874%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab107874%_ _%key107872%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr107853%_ (current-thread)))
          (if (actor-thread? _%thr107853%_)
              (let ((_%$e107856%_ (actor-thread-locals _%thr107853%_)))
                (if _%$e107856%_
                    (values _%$e107856%_)
                    (let ((_%tab107860%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr107853%_ _%tab107860%_)
                      _%tab107860%_)))
              (if (eq? _%thr107853%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e107864%_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _%thr107853%_))))
                      (if _%$e107864%_
                          ((lambda (_%tab107867%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab107867%_)
                           _%$e107864%_)
                          (let ((_%tab107870%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _%thr107853%_
                               _%tab107870%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab107870%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc107838%_)
        (if (procedure? _%proc107838%_)
            (let ((_%proc107842%_ _%proc107838%_))
              (__unhandled-actor-exception-hook-set! _%proc107842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc107838%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc107826%_)
        (let ((_%proc107829%_ _%proc107826%_))
          (set! __unhandled-actor-exception-hook _%proc107829%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx107800%_ _%proc107801%_)
        (if (mutex? _%mx107800%_)
            (let ((_%mx107805%_ _%mx107800%_))
              (if (procedure? _%proc107801%_)
                  (let ((_%proc107815%_ _%proc107801%_))
                    (__with-lock _%mx107805%_ _%proc107815%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107801%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx107800%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx107771%_ _%proc107772%_)
        (let* ((_%mx107775%_ _%mx107771%_)
               (_%proc107783%_ _%proc107772%_)
               (_%handler107792%_ (current-exception-handler)))
          (let ((__tmp108048
                 (lambda (_%e107794%_)
                   (let ((__tmp108049
                          (lambda ()
                            (mutex-unlock! _%mx107775%_)
                            (let ()
                              (declare (not safe))
                              (_%handler107792%_ _%e107794%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp108049))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e107794%_))))
                (__tmp108047
                 (lambda ()
                   (mutex-lock! _%mx107775%_)
                   (let ((_%result107798%_
                          (let () (declare (not safe)) (_%proc107783%_))))
                     (mutex-unlock! _%mx107775%_)
                     _%result107798%_))))
            (declare (not safe))
            (__with-exception-handler __tmp108048 __tmp108047)))))
    (define with-dynamic-lock
      (lambda (_%mx107746%_ _%proc107747%_)
        (if (mutex? _%mx107746%_)
            (let ((_%mx107751%_ _%mx107746%_))
              (if (procedure? _%proc107747%_)
                  (let ((_%proc107761%_ _%proc107747%_))
                    (__with-dynamic-lock _%mx107751%_ _%proc107761%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107747%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx107746%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx107723%_ _%proc107724%_)
        (let* ((_%mx107727%_ _%mx107723%_) (_%proc107735%_ _%proc107724%_))
          (let ((__tmp108051 (lambda () (mutex-lock! _%mx107727%_)))
                (__tmp108050 (lambda () (mutex-unlock! _%mx107727%_))))
            (declare (not safe))
            (##dynamic-wind __tmp108051 _%proc107735%_ __tmp108050)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk107688%_ _%error-port107689%_)
        (if (procedure? _%thunk107688%_)
            (let ((_%thunk107693%_ _%thunk107688%_))
              (if (port? _%error-port107689%_)
                  (let ((_%error-port107703%_ _%error-port107689%_))
                    (__with-exception-stack-trace__%
                     _%thunk107693%_
                     _%error-port107703%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port107689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk107688%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk107716%_)
        (let ((_%error-port107718%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk107716%_
           _%error-port107718%_))))
    (define with-exception-stack-trace
      (lambda _g108053_
        (let ((_g108052_ (let () (declare (not safe)) (##length _g108053_))))
          (cond ((let () (declare (not safe)) (##fx= _g108052_ 1))
                 (apply with-exception-stack-trace__0 _g108053_))
                ((let () (declare (not safe)) (##fx= _g108052_ 2))
                 (apply with-exception-stack-trace__% _g108053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g108053_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk107649%_ _%error-port107650%_)
        (let* ((_%thunk107653%_ _%thunk107649%_)
               (_%error-port107662%_ _%error-port107650%_)
               (__tmp108054
                (let ((_%E107671%_ (current-exception-handler)))
                  (lambda (_%exn107673%_)
                    (let ((__tmp108055
                           (lambda (_%cont107675%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont107675%_
                                  _%exn107673%_
                                  _%error-port107662%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E107671%_ _%exn107673%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp108055))))))
          (declare (not safe))
          (__with-exception-handler __tmp108054 _%thunk107653%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk107680%_)
        (let ((_%error-port107682%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk107680%_
           _%error-port107682%_))))
    (define __with-exception-stack-trace
      (lambda _g108057_
        (let ((_g108056_ (let () (declare (not safe)) (##length _g108057_))))
          (cond ((let () (declare (not safe)) (##fx= _g108056_ 1))
                 (apply __with-exception-stack-trace__0 _g108057_))
                ((let () (declare (not safe)) (##fx= _g108056_ 2))
                 (apply __with-exception-stack-trace__% _g108057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g108057_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont107630%_ _%exn107631%_ _%error-port107632%_)
        (let ((_%out107634%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out107634%_))
          (display '"*** Unhandled exception in " _%out107634%_)
          (display (current-thread) _%out107634%_)
          (newline _%out107634%_)
          (display-exception _%exn107631%_ _%out107634%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn107631%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out107634%_)
                (newline _%out107634%_)
                (display-continuation-backtrace _%cont107630%_ _%out107634%_)))
          (let ((__tmp108058 (get-output-string _%out107634%_)))
            (declare (not safe))
            (##write-string __tmp108058 _%error-port107632%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont107639%_ _%exn107640%_)
        (let ((_%error-port107642%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont107639%_
           _%exn107640%_
           _%error-port107642%_))))
    (define dump-stack-trace!
      (lambda _g108060_
        (let ((_g108059_ (let () (declare (not safe)) (##length _g108060_))))
          (cond ((let () (declare (not safe)) (##fx= _g108059_ 2))
                 (apply dump-stack-trace!__0 _g108060_))
                ((let () (declare (not safe)) (##fx= _g108059_ 3))
                 (apply dump-stack-trace!__% _g108060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g108060_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
