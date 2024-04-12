(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1712949842)
  (begin
    (define spawn
      (lambda (_%f108801%_ . _%args108802%_)
        (if (procedure? _%f108801%_)
            (let ((_%f108806%_ _%f108801%_))
              (declare (not safe))
              (##apply __spawn _%f108806%_ _%args108802%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f108801%_)
              '#!void))))
    (define __spawn
      (lambda (_%f108788%_ . _%args108789%_)
        (let ((_%f108792%_ _%f108788%_))
          (spawn-actor _%f108792%_ _%args108789%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name108772%_ _%f108773%_ . _%args108774%_)
        (if (procedure? _%f108773%_)
            (let ((_%f108778%_ _%f108773%_))
              (declare (not safe))
              (##apply __spawn/name _%name108772%_ _%f108778%_ _%args108774%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f108773%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name108758%_ _%f108759%_ . _%args108760%_)
        (let ((_%f108763%_ _%f108759%_))
          (spawn-actor _%f108763%_ _%args108760%_ _%name108758%_ '#f))))
    (define spawn/group
      (lambda (_%name108742%_ _%f108743%_ . _%args108744%_)
        (if (procedure? _%f108743%_)
            (let ((_%f108748%_ _%f108743%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name108742%_
                       _%f108748%_
                       _%args108744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f108743%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name108726%_ _%f108727%_ . _%args108728%_)
        (let* ((_%f108731%_ _%f108727%_)
               (_%tgroup108740%_ (make-thread-group _%name108726%_)))
          (spawn-actor
           _%f108731%_
           _%args108728%_
           _%name108726%_
           _%tgroup108740%_))))
    (define spawn-actor
      (lambda (_%f108698%_ _%args108699%_ _%name108700%_ _%tgroup108701%_)
        (letrec ((_%thread-main108704%_
                  (lambda (_%thunk108718%_)
                    (lambda ()
                      (let ((__tmp108815
                             (lambda (_%exn108721%_)
                               (let ((__tmp108816
                                      (lambda (_%cont108723%_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp108817
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont108723%_
                                                      _%exn108721%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp108817))
                                            '#!void)
                                        (let ((__tmp108818
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont108723%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp108818
                                           ##primordial-exception-handler
                                           _%exn108721%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp108816)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp108815
                         _%thunk108718%_))))))
          (let* ((_%thunk108707%_
                  (if (null? _%args108699%_)
                      _%f108698%_
                      (lambda () (apply _%f108698%_ _%args108699%_))))
                 (_%thunk108710%_
                  (lambda () (with-exception-stack-trace__0 _%thunk108707%_)))
                 (_%tgroup108715%_
                  (let ((_%$e108712%_ _%tgroup108701%_))
                    (if _%$e108712%_ _%$e108712%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main108704%_ _%thunk108710%_)
              _%name108700%_
              _%tgroup108715%_))))))
    (define spawn-thread__%
      (lambda (_%thunk108676%_ _%name108677%_ _%tgroup108678%_)
        (thread-start!
         (make-thread _%thunk108676%_ _%name108677%_ _%tgroup108678%_))))
    (define spawn-thread__0
      (lambda (_%thunk108683%_)
        (let* ((_%name108685%_ absent-obj) (_%tgroup108687%_ absent-obj))
          (spawn-thread__% _%thunk108683%_ _%name108685%_ _%tgroup108687%_))))
    (define spawn-thread__1
      (lambda (_%thunk108689%_ _%name108690%_)
        (let ((_%tgroup108692%_ absent-obj))
          (spawn-thread__% _%thunk108689%_ _%name108690%_ _%tgroup108692%_))))
    (define spawn-thread
      (lambda _g108820_
        (let ((_g108819_ (let () (declare (not safe)) (##length _g108820_))))
          (cond ((let () (declare (not safe)) (##fx= _g108819_ 1))
                 (apply spawn-thread__0 _g108820_))
                ((let () (declare (not safe)) (##fx= _g108819_ 2))
                 (apply spawn-thread__1 _g108820_))
                ((let () (declare (not safe)) (##fx= _g108819_ 3))
                 (apply spawn-thread__% _g108820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g108820_))))))
    (define thread-local-ref__%
      (lambda (_%key108660%_ _%default108661%_)
        (let ((_%tab108663%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab108663%_ _%key108660%_ _%default108661%_))))
    (define thread-local-ref__0
      (lambda (_%key108668%_)
        (let ((_%default108670%_ absent-obj))
          (thread-local-ref__% _%key108668%_ _%default108670%_))))
    (define thread-local-ref
      (lambda _g108822_
        (let ((_g108821_ (let () (declare (not safe)) (##length _g108822_))))
          (cond ((let () (declare (not safe)) (##fx= _g108821_ 1))
                 (apply thread-local-ref__0 _g108822_))
                ((let () (declare (not safe)) (##fx= _g108821_ 2))
                 (apply thread-local-ref__% _g108822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g108822_))))))
    (define thread-local-get
      (lambda (_%key108657%_) (thread-local-ref__% _%key108657%_ '#f)))
    (define thread-local-set!
      (lambda (_%key108652%_ _%value108653%_)
        (let ((_%tab108655%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab108655%_ _%key108652%_ _%value108653%_))))
    (define thread-local-delete!
      (lambda (_%key108648%_)
        (let ((_%tab108650%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab108650%_ _%key108648%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr108629%_ (current-thread)))
          (if (actor-thread? _%thr108629%_)
              (let ((_%$e108632%_ (actor-thread-locals _%thr108629%_)))
                (if _%$e108632%_
                    _%$e108632%_
                    (let ((_%tab108636%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr108629%_ _%tab108636%_)
                      _%tab108636%_)))
              (if (eq? _%thr108629%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e108640%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr108629%_))))
                      (if _%$e108640%_
                          ((lambda (_%tab108643%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab108643%_)
                           _%$e108640%_)
                          (let ((_%tab108646%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr108629%_
                               _%tab108646%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab108646%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_%proc108614%_)
        (if (procedure? _%proc108614%_)
            (let ((_%proc108618%_ _%proc108614%_))
              (__unhandled-actor-exception-hook-set! _%proc108618%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@115.44-115.48"
               'contract:
               'procedure?
               'value:
               _%proc108614%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%proc108602%_)
        (let ((_%proc108605%_ _%proc108602%_))
          (set! __unhandled-actor-exception-hook _%proc108605%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx108576%_ _%proc108577%_)
        (if (mutex? _%mx108576%_)
            (let ((_%mx108581%_ _%mx108576%_))
              (if (procedure? _%proc108577%_)
                  (let ((_%proc108591%_ _%proc108577%_))
                    (__with-lock _%mx108581%_ _%proc108591%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@122.32-122.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108577%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@122.18-122.20"
               'contract:
               'mutex?
               'value:
               _%mx108576%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx108547%_ _%proc108548%_)
        (let* ((_%mx108551%_ _%mx108547%_)
               (_%proc108559%_ _%proc108548%_)
               (_%handler108568%_ (current-exception-handler)))
          (let ((__tmp108824
                 (lambda (_%e108570%_)
                   (let ((__tmp108825
                          (lambda ()
                            (mutex-unlock! _%mx108551%_)
                            (let ()
                              (declare (not safe))
                              (_%handler108568%_ _%e108570%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp108825))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e108570%_))))
                (__tmp108823
                 (lambda ()
                   (mutex-lock! _%mx108551%_)
                   (let ((_%result108574%_
                          (let () (declare (not safe)) (_%proc108559%_))))
                     (mutex-unlock! _%mx108551%_)
                     _%result108574%_))))
            (declare (not safe))
            (__with-exception-handler __tmp108824 __tmp108823)))))
    (define with-dynamic-lock
      (lambda (_%mx108522%_ _%proc108523%_)
        (if (mutex? _%mx108522%_)
            (let ((_%mx108527%_ _%mx108522%_))
              (if (procedure? _%proc108523%_)
                  (let ((_%proc108537%_ _%proc108523%_))
                    (__with-dynamic-lock _%mx108527%_ _%proc108537%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.40-138.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc108523%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.26-138.28"
               'contract:
               'mutex?
               'value:
               _%mx108522%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx108499%_ _%proc108500%_)
        (let* ((_%mx108503%_ _%mx108499%_) (_%proc108511%_ _%proc108500%_))
          (let ((__tmp108827 (lambda () (mutex-lock! _%mx108503%_)))
                (__tmp108826 (lambda () (mutex-unlock! _%mx108503%_))))
            (declare (not safe))
            (##dynamic-wind __tmp108827 _%proc108511%_ __tmp108826)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk108464%_ _%error-port108465%_)
        (if (procedure? _%thunk108464%_)
            (let ((_%thunk108469%_ _%thunk108464%_))
              (if (port? _%error-port108465%_)
                  (let ((_%error-port108479%_ _%error-port108465%_))
                    (__with-exception-stack-trace__%
                     _%thunk108469%_
                     _%error-port108479%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@146.35-146.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port108465%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@145.35-145.40"
               'contract:
               'procedure?
               'value:
               _%thunk108464%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk108492%_)
        (let ((_%error-port108494%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk108492%_
           _%error-port108494%_))))
    (define with-exception-stack-trace
      (lambda _g108829_
        (let ((_g108828_ (let () (declare (not safe)) (##length _g108829_))))
          (cond ((let () (declare (not safe)) (##fx= _g108828_ 1))
                 (apply with-exception-stack-trace__0 _g108829_))
                ((let () (declare (not safe)) (##fx= _g108828_ 2))
                 (apply with-exception-stack-trace__% _g108829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g108829_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk108425%_ _%error-port108426%_)
        (let* ((_%thunk108429%_ _%thunk108425%_)
               (_%error-port108438%_ _%error-port108426%_)
               (__tmp108830
                (let ((_%E108447%_ (current-exception-handler)))
                  (lambda (_%exn108449%_)
                    (let ((__tmp108831
                           (lambda (_%cont108451%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont108451%_
                                  _%exn108449%_
                                  _%error-port108438%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E108447%_ _%exn108449%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp108831))))))
          (declare (not safe))
          (__with-exception-handler __tmp108830 _%thunk108429%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk108456%_)
        (let ((_%error-port108458%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk108456%_
           _%error-port108458%_))))
    (define __with-exception-stack-trace
      (lambda _g108833_
        (let ((_g108832_ (let () (declare (not safe)) (##length _g108833_))))
          (cond ((let () (declare (not safe)) (##fx= _g108832_ 1))
                 (apply __with-exception-stack-trace__0 _g108833_))
                ((let () (declare (not safe)) (##fx= _g108832_ 2))
                 (apply __with-exception-stack-trace__% _g108833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g108833_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont108406%_ _%exn108407%_ _%error-port108408%_)
        (let ((_%out108410%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out108410%_))
          (display '"*** Unhandled exception in " _%out108410%_)
          (display (current-thread) _%out108410%_)
          (newline _%out108410%_)
          (display-exception _%exn108407%_ _%out108410%_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn108407%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out108410%_)
                (newline _%out108410%_)
                (display-continuation-backtrace _%cont108406%_ _%out108410%_)))
          (let ((__tmp108834 (get-output-string _%out108410%_)))
            (declare (not safe))
            (##write-string __tmp108834 _%error-port108408%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont108415%_ _%exn108416%_)
        (let ((_%error-port108418%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont108415%_
           _%exn108416%_
           _%error-port108418%_))))
    (define dump-stack-trace!
      (lambda _g108836_
        (let ((_g108835_ (let () (declare (not safe)) (##length _g108836_))))
          (cond ((let () (declare (not safe)) (##fx= _g108835_ 2))
                 (apply dump-stack-trace!__0 _g108836_))
                ((let () (declare (not safe)) (##fx= _g108835_ 3))
                 (apply dump-stack-trace!__% _g108836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g108836_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
