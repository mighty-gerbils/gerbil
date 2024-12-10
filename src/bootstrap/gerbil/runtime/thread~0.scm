(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1733868035)
  (begin
    (define spawn
      (lambda (_%f110712%_ . _%args110713%_)
        (if (procedure? _%f110712%_)
            (let ((_%f110717%_ _%f110712%_))
              (declare (not safe))
              (##apply __spawn _%f110717%_ _%args110713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f110712%_)
              '#!void))))
    (define __spawn
      (lambda (_%f110699%_ . _%args110700%_)
        (let ((_%f110703%_ _%f110699%_))
          (spawn-actor _%f110703%_ _%args110700%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name110683%_ _%f110684%_ . _%args110685%_)
        (if (procedure? _%f110684%_)
            (let ((_%f110689%_ _%f110684%_))
              (declare (not safe))
              (##apply __spawn/name _%name110683%_ _%f110689%_ _%args110685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f110684%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name110669%_ _%f110670%_ . _%args110671%_)
        (let ((_%f110674%_ _%f110670%_))
          (spawn-actor _%f110674%_ _%args110671%_ _%name110669%_ '#f))))
    (define spawn/group
      (lambda (_%name110653%_ _%f110654%_ . _%args110655%_)
        (if (procedure? _%f110654%_)
            (let ((_%f110659%_ _%f110654%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name110653%_
                       _%f110659%_
                       _%args110655%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f110654%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name110637%_ _%f110638%_ . _%args110639%_)
        (let* ((_%f110642%_ _%f110638%_)
               (_%tgroup110651%_ (make-thread-group _%name110637%_)))
          (spawn-actor
           _%f110642%_
           _%args110639%_
           _%name110637%_
           _%tgroup110651%_))))
    (define spawn-actor
      (lambda (_%f110609%_ _%args110610%_ _%name110611%_ _%tgroup110612%_)
        (letrec ((_%thread-main110615%_
                  (lambda (_%thunk110629%_)
                    (lambda ()
                      (let ((__tmp110726
                             (lambda (_%exn110632%_)
                               (let ((__tmp110727
                                      (lambda (_%cont110634%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp110728
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont110634%_
                                                      _%exn110632%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp110728))
                                            '#!void)
                                        (let ((__tmp110729
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont110634%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp110729
                                           ##primordial-exception-handler
                                           _%exn110632%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp110727)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp110726
                         _%thunk110629%_))))))
          (let* ((_%thunk110618%_
                  (if (null? _%args110610%_)
                      _%f110609%_
                      (lambda () (apply _%f110609%_ _%args110610%_))))
                 (_%thunk110621%_
                  (lambda () (with-exception-stack-trace__0 _%thunk110618%_)))
                 (_%tgroup110626%_
                  (let ((_%$e110623%_ _%tgroup110612%_))
                    (if _%$e110623%_ _%$e110623%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main110615%_ _%thunk110621%_)
              _%name110611%_
              _%tgroup110626%_))))))
    (define spawn-thread__%
      (lambda (_%thunk110587%_ _%name110588%_ _%tgroup110589%_)
        (thread-start!
         (make-thread _%thunk110587%_ _%name110588%_ _%tgroup110589%_))))
    (define spawn-thread__0
      (lambda (_%thunk110594%_)
        (let* ((_%name110596%_ absent-obj) (_%tgroup110598%_ absent-obj))
          (spawn-thread__% _%thunk110594%_ _%name110596%_ _%tgroup110598%_))))
    (define spawn-thread__1
      (lambda (_%thunk110600%_ _%name110601%_)
        (let ((_%tgroup110603%_ absent-obj))
          (spawn-thread__% _%thunk110600%_ _%name110601%_ _%tgroup110603%_))))
    (define spawn-thread
      (lambda _g110731_
        (let ((_g110730_ (let () (declare (not safe)) (##length _g110731_))))
          (cond ((let () (declare (not safe)) (##fx= _g110730_ 1))
                 (apply spawn-thread__0 _g110731_))
                ((let () (declare (not safe)) (##fx= _g110730_ 2))
                 (apply spawn-thread__1 _g110731_))
                ((let () (declare (not safe)) (##fx= _g110730_ 3))
                 (apply spawn-thread__% _g110731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g110731_))))))
    (define thread-local-ref__%
      (lambda (_%key110571%_ _%default110572%_)
        (let ((_%tab110574%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab110574%_ _%key110571%_ _%default110572%_))))
    (define thread-local-ref__0
      (lambda (_%key110579%_)
        (let ((_%default110581%_ absent-obj))
          (thread-local-ref__% _%key110579%_ _%default110581%_))))
    (define thread-local-ref
      (lambda _g110733_
        (let ((_g110732_ (let () (declare (not safe)) (##length _g110733_))))
          (cond ((let () (declare (not safe)) (##fx= _g110732_ 1))
                 (apply thread-local-ref__0 _g110733_))
                ((let () (declare (not safe)) (##fx= _g110732_ 2))
                 (apply thread-local-ref__% _g110733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g110733_))))))
    (define thread-local-get
      (lambda (_%key110568%_) (thread-local-ref__% _%key110568%_ '#f)))
    (define thread-local-set!
      (lambda (_%key110563%_ _%value110564%_)
        (let ((_%tab110566%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab110566%_ _%key110563%_ _%value110564%_))))
    (define thread-local-delete!
      (lambda (_%key110559%_)
        (let ((_%tab110561%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab110561%_ _%key110559%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr110540%_ (current-thread)))
          (if (actor-thread? _%thr110540%_)
              (let ((_%$e110543%_ (actor-thread-locals _%thr110540%_)))
                (if _%$e110543%_
                    _%$e110543%_
                    (let ((_%tab110547%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr110540%_ _%tab110547%_)
                      _%tab110547%_)))
              (if (eq? _%thr110540%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e110551%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr110540%_))))
                      (if _%$e110551%_
                          ((lambda (_%tab110554%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab110554%_)
                           _%$e110551%_)
                          (let ((_%tab110557%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr110540%_
                               _%tab110557%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab110557%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value110518%_)
        (if ((lambda (_%$obj110521%_)
               (or (not _%$obj110521%_) (procedure? _%$obj110521%_)))
             _%new-value110518%_)
            (let ((_%new-value110528%_ _%new-value110518%_))
              (__unhandled-actor-exception-hook-set! _%new-value110528%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value110518%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value110505%_)
        (let ((_%new-value110509%_ _%new-value110505%_))
          (set! __unhandled-actor-exception-hook _%new-value110509%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx110479%_ _%proc110480%_)
        (if (mutex? _%mx110479%_)
            (let ((_%mx110484%_ _%mx110479%_))
              (if (procedure? _%proc110480%_)
                  (let ((_%proc110494%_ _%proc110480%_))
                    (__with-lock _%mx110484%_ _%proc110494%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110480%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx110479%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx110450%_ _%proc110451%_)
        (let* ((_%mx110454%_ _%mx110450%_)
               (_%proc110462%_ _%proc110451%_)
               (_%handler110471%_ (current-exception-handler)))
          (let ((__tmp110735
                 (lambda (_%e110473%_)
                   (let ((__tmp110736
                          (lambda ()
                            (mutex-unlock! _%mx110454%_)
                            (let ()
                              (declare (not safe))
                              (_%handler110471%_ _%e110473%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp110736))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e110473%_))))
                (__tmp110734
                 (lambda ()
                   (mutex-lock! _%mx110454%_)
                   (let ((_%result110477%_
                          (let () (declare (not safe)) (_%proc110462%_))))
                     (mutex-unlock! _%mx110454%_)
                     _%result110477%_))))
            (declare (not safe))
            (__with-exception-handler __tmp110735 __tmp110734)))))
    (define with-dynamic-lock
      (lambda (_%mx110425%_ _%proc110426%_)
        (if (mutex? _%mx110425%_)
            (let ((_%mx110430%_ _%mx110425%_))
              (if (procedure? _%proc110426%_)
                  (let ((_%proc110440%_ _%proc110426%_))
                    (__with-dynamic-lock _%mx110430%_ _%proc110440%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc110426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx110425%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx110402%_ _%proc110403%_)
        (let* ((_%mx110406%_ _%mx110402%_) (_%proc110414%_ _%proc110403%_))
          (let ((__tmp110738 (lambda () (mutex-lock! _%mx110406%_)))
                (__tmp110737 (lambda () (mutex-unlock! _%mx110406%_))))
            (declare (not safe))
            (##dynamic-wind __tmp110738 _%proc110414%_ __tmp110737)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk110367%_ _%error-port110368%_)
        (if (procedure? _%thunk110367%_)
            (let ((_%thunk110372%_ _%thunk110367%_))
              (if (port? _%error-port110368%_)
                  (let ((_%error-port110382%_ _%error-port110368%_))
                    (__with-exception-stack-trace__%
                     _%thunk110372%_
                     _%error-port110382%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port110368%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk110367%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk110395%_)
        (let ((_%error-port110397%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk110395%_
           _%error-port110397%_))))
    (define with-exception-stack-trace
      (lambda _g110740_
        (let ((_g110739_ (let () (declare (not safe)) (##length _g110740_))))
          (cond ((let () (declare (not safe)) (##fx= _g110739_ 1))
                 (apply with-exception-stack-trace__0 _g110740_))
                ((let () (declare (not safe)) (##fx= _g110739_ 2))
                 (apply with-exception-stack-trace__% _g110740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g110740_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk110328%_ _%error-port110329%_)
        (let* ((_%thunk110332%_ _%thunk110328%_)
               (_%error-port110341%_ _%error-port110329%_)
               (__tmp110741
                (let ((_%E110350%_ (current-exception-handler)))
                  (lambda (_%exn110352%_)
                    (let ((__tmp110742
                           (lambda (_%cont110354%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont110354%_
                                  _%exn110352%_
                                  _%error-port110341%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E110350%_ _%exn110352%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp110742))))))
          (declare (not safe))
          (__with-exception-handler __tmp110741 _%thunk110332%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk110359%_)
        (let ((_%error-port110361%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk110359%_
           _%error-port110361%_))))
    (define __with-exception-stack-trace
      (lambda _g110744_
        (let ((_g110743_ (let () (declare (not safe)) (##length _g110744_))))
          (cond ((let () (declare (not safe)) (##fx= _g110743_ 1))
                 (apply __with-exception-stack-trace__0 _g110744_))
                ((let () (declare (not safe)) (##fx= _g110743_ 2))
                 (apply __with-exception-stack-trace__% _g110744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g110744_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont110309%_ _%exn110310%_ _%error-port110311%_)
        (let ((_%out110313%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out110313%_))
          (display '"*** Unhandled exception in " _%out110313%_)
          (display (current-thread) _%out110313%_)
          (newline _%out110313%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn110310%_ _%out110313%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn110310%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out110313%_)
                (newline _%out110313%_)
                (display-continuation-backtrace _%cont110309%_ _%out110313%_)))
          (let ((__tmp110745 (get-output-string _%out110313%_)))
            (declare (not safe))
            (##write-string __tmp110745 _%error-port110311%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont110318%_ _%exn110319%_)
        (let ((_%error-port110321%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont110318%_
           _%exn110319%_
           _%error-port110321%_))))
    (define dump-stack-trace!
      (lambda _g110747_
        (let ((_g110746_ (let () (declare (not safe)) (##length _g110747_))))
          (cond ((let () (declare (not safe)) (##fx= _g110746_ 2))
                 (apply dump-stack-trace!__0 _g110747_))
                ((let () (declare (not safe)) (##fx= _g110746_ 3))
                 (apply dump-stack-trace!__% _g110747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g110747_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
