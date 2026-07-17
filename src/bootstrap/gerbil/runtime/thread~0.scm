(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1784471380)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk173003%_ _%name173004%_)
        (let* ((_%thunk173007%_ _%thunk173003%_)
               (_%name173015%_ _%name173004%_))
          (make-thread
           (lambda () (thread-main _%thunk173007%_))
           _%name173015%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk172978%_ _%name172979%_)
        (if (procedure? _%thunk172978%_)
            (let ((_%thunk172983%_ _%thunk172978%_))
              (if (symbol? _%name172979%_)
                  (let ((_%name172993%_ _%name172979%_))
                    (__make-system-thread _%thunk172983%_ _%name172993%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name172979%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk172978%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk172925%_ _%name172926%_)
        (let* ((_%thunk172929%_ _%thunk172925%_)
               (_%name172937%_ _%name172926%_))
          (thread-start!
           (let* ((_%thunk172946%_ _%thunk172929%_)
                  (_%name172949%_ _%name172937%_)
                  (_%thunk172954%_ _%thunk172946%_)
                  (_%name172968%_ _%name172949%_))
             (__make-system-thread _%thunk172954%_ _%name172968%_))))))
    (define system-thread!
      (lambda (_%thunk172900%_ _%name172901%_)
        (if (procedure? _%thunk172900%_)
            (let ((_%thunk172905%_ _%thunk172900%_))
              (if (symbol? _%name172901%_)
                  (let ((_%name172915%_ _%name172901%_))
                    (__system-thread! _%thunk172905%_ _%name172915%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name172901%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk172900%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk172879%_ _%name172880%_)
        (let* ((_%thunk172883%_ _%thunk172879%_)
               (_%name172891%_ _%name172880%_))
          (spawn-actor
           _%thunk172883%_
           '()
           _%name172891%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk172854%_ _%name172855%_)
        (if (procedure? _%thunk172854%_)
            (let ((_%thunk172859%_ _%thunk172854%_))
              (if (symbol? _%name172855%_)
                  (let ((_%name172869%_ _%name172855%_))
                    (__system-actor! _%thunk172859%_ _%name172869%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name172855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk172854%_)
              '#!void))))
    (define __spawn
      (lambda (_%f172841%_ . _%args172842%_)
        (let ((_%f172845%_ _%f172841%_))
          (spawn-actor _%f172845%_ _%args172842%_ '#!void '#f))))
    (define spawn
      (lambda (_%f172826%_ . _%args172827%_)
        (if (procedure? _%f172826%_)
            (let ((_%f172831%_ _%f172826%_))
              (declare (not safe))
              (##apply __spawn _%f172831%_ _%args172827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f172826%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name172812%_ _%f172813%_ . _%args172814%_)
        (let ((_%f172817%_ _%f172813%_))
          (spawn-actor _%f172817%_ _%args172814%_ _%name172812%_ '#f))))
    (define spawn/name
      (lambda (_%name172796%_ _%f172797%_ . _%args172798%_)
        (if (procedure? _%f172797%_)
            (let ((_%f172802%_ _%f172797%_))
              (declare (not safe))
              (##apply __spawn/name _%name172796%_ _%f172802%_ _%args172798%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f172797%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name172780%_ _%f172781%_ . _%args172782%_)
        (let* ((_%f172785%_ _%f172781%_)
               (_%tgroup172794%_ (make-thread-group _%name172780%_)))
          (spawn-actor
           _%f172785%_
           _%args172782%_
           _%name172780%_
           _%tgroup172794%_))))
    (define spawn/group
      (lambda (_%name172764%_ _%f172765%_ . _%args172766%_)
        (if (procedure? _%f172765%_)
            (let ((_%f172770%_ _%f172765%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name172764%_
                       _%f172770%_
                       _%args172766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f172765%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f172712%_ _%args172713%_ _%name172714%_ _%tgroup172715%_)
        (let* ((_%thunk172719%_
                (if (null? _%args172713%_)
                    _%f172712%_
                    (lambda () (apply _%f172712%_ _%args172713%_))))
               (_%thunk172755%_
                (lambda ()
                  (let* ((_%thunk172722%_ _%thunk172719%_)
                         (_%error-port172725%_ (current-error-port)))
                    (if (procedure? _%thunk172722%_)
                        (let* ((_%thunk172730%_ _%thunk172722%_)
                               (_%error-port172745%_ _%error-port172725%_))
                          (__with-exception-stack-trace__%
                           _%thunk172730%_
                           _%error-port172745%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk172722%_)
                          '#!void)))))
               (_%tgroup172760%_
                (let ((_%$e172757%_ _%tgroup172715%_))
                  (if _%$e172757%_ _%$e172757%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk172755%_))
            _%name172714%_
            _%tgroup172760%_)))))
    (define spawn-thread__%
      (lambda (_%thunk172689%_ _%name172690%_ _%tgroup172691%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk172689%_))
          _%name172690%_
          _%tgroup172691%_))))
    (define spawn-thread__0
      (lambda (_%thunk172697%_)
        (let* ((_%name172699%_ absent-obj) (_%tgroup172701%_ absent-obj))
          (spawn-thread__% _%thunk172697%_ _%name172699%_ _%tgroup172701%_))))
    (define spawn-thread__1
      (lambda (_%thunk172703%_ _%name172704%_)
        (let ((_%tgroup172706%_ absent-obj))
          (spawn-thread__% _%thunk172703%_ _%name172704%_ _%tgroup172706%_))))
    (define spawn-thread
      (lambda _g173312_
        (let ((_g173313_ (let () (declare (not safe)) (##length _g173312_))))
          (cond ((let () (declare (not safe)) (##fx= _g173313_ 1))
                 (apply spawn-thread__0 _g173312_))
                ((let () (declare (not safe)) (##fx= _g173313_ 2))
                 (apply spawn-thread__1 _g173312_))
                ((let () (declare (not safe)) (##fx= _g173313_ 3))
                 (apply spawn-thread__% _g173312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g173312_))))))
    (define thread-main
      (lambda (_%thunk172620%_)
        (let* ((_%handler172659%_
                (lambda (_%exn172622%_)
                  (let ((__tmp173314
                         (lambda (_%cont172624%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler172626%_ void)
                                      (_%thunk172630%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont172624%_
                                            _%exn172622%_))))
                                      (_%handler172635%_ _%handler172626%_)
                                      (_%thunk172649%_ _%thunk172630%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler172635%_
                                  _%thunk172649%_))
                               '#!void)
                           (let ((__tmp173315
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont172624%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp173315
                              ##primordial-exception-handler
                              _%exn172622%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp173314))))
               (_%thunk172662%_ _%thunk172620%_)
               (_%handler172667%_ _%handler172659%_))
          (if (procedure? _%thunk172662%_)
              (let ((_%thunk172678%_ _%thunk172662%_))
                (declare (not safe))
                (__with-exception-handler _%handler172667%_ _%thunk172678%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk172662%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172576%_ _%default172577%_)
        (let* ((_%tab172579%_ (thread-local-table))
               (_%h172581%_ _%tab172579%_)
               (_%key172584%_ _%key172576%_)
               (_%default172587%_ _%default172577%_)
               (_%h172594%_
                (let ((_%$obj172591%_ _%h172581%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172591%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172591%_)))
                           '#t)
                      _%$obj172591%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172591%_)))))
               (_%h172596%_ _%h172594%_))
          (declare (not safe))
          (__hash-ref__% _%h172596%_ _%key172584%_ _%default172587%_))))
    (define thread-local-ref__0
      (lambda (_%key172613%_)
        (let ((_%default172615%_ absent-obj))
          (thread-local-ref__% _%key172613%_ _%default172615%_))))
    (define thread-local-ref
      (lambda _g173316_
        (let ((_g173317_ (let () (declare (not safe)) (##length _g173316_))))
          (cond ((let () (declare (not safe)) (##fx= _g173317_ 1))
                 (apply thread-local-ref__0 _g173316_))
                ((let () (declare (not safe)) (##fx= _g173317_ 2))
                 (apply thread-local-ref__% _g173316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g173316_))))))
    (define thread-local-get
      (lambda (_%key172573%_) (thread-local-ref__% _%key172573%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172539%_ _%value172540%_)
        (let* ((_%tab172542%_ (thread-local-table))
               (_%h172544%_ _%tab172542%_)
               (_%key172547%_ _%key172539%_)
               (_%value172550%_ _%value172540%_)
               (_%h172557%_
                (let ((_%$obj172554%_ _%h172544%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172554%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172554%_)))
                           '#t)
                      _%$obj172554%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172554%_)))))
               (_%h172559%_ _%h172557%_))
          (declare (not safe))
          (__hash-put! _%h172559%_ _%key172547%_ _%value172550%_))))
    (define thread-local-delete!
      (lambda (_%key172510%_)
        (let* ((_%tab172512%_ (thread-local-table))
               (_%h172514%_ _%tab172512%_)
               (_%key172517%_ _%key172510%_)
               (_%h172524%_
                (let ((_%$obj172521%_ _%h172514%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172521%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172521%_)))
                           '#t)
                      _%$obj172521%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172521%_)))))
               (_%h172526%_ _%h172524%_))
          (declare (not safe))
          (__hash-remove! _%h172526%_ _%key172517%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172435%_ (current-thread)))
          (if (actor-thread? _%thr172435%_)
              (let ((_%$e172438%_ (actor-thread-locals _%thr172435%_)))
                (if _%$e172438%_
                    _%$e172438%_
                    (let ((_%tab172442%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172435%_ _%tab172442%_)
                      _%tab172442%_)))
              (if (eq? _%thr172435%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172472%_
                           (let* ((_%h172446%_ __thread-locals)
                                  (_%key172449%_ _%thr172435%_)
                                  (_%h172456%_
                                   (let ((_%$obj172453%_ _%h172446%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172453%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172453%_)))
                                              '#t)
                                         _%$obj172453%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172453%_)))))
                                  (_%h172458%_ _%h172456%_))
                             (declare (not safe))
                             (__hash-get _%h172458%_ _%key172449%_))))
                      (if _%$e172472%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e172472%_)
                          (let ((_%tab172478%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172480%_ __thread-locals)
                                   (_%key172483%_ _%thr172435%_)
                                   (_%value172486%_ _%tab172478%_)
                                   (_%h172493%_
                                    (let ((_%$obj172490%_ _%h172480%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172490%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172490%_)))
                                               '#t)
                                          _%$obj172490%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172490%_)))))
                                   (_%h172495%_ _%h172493%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172495%_
                               _%key172483%_
                               _%value172486%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172478%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172421%_)
        (let ((_%new-value172424%_ _%new-value172421%_))
          (set! __unhandled-actor-exception-hook _%new-value172424%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value172400%_)
        (if (or (not _%new-value172400%_) (procedure? _%new-value172400%_))
            (let ((_%new-value172411%_ _%new-value172400%_))
              (__unhandled-actor-exception-hook-set! _%new-value172411%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value172400%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172307%_ _%proc172308%_)
        (let* ((_%mx172311%_ _%mx172307%_)
               (_%proc172319%_ _%proc172308%_)
               (_%handler172328%_ (current-exception-handler))
               (_%handler172367%_
                (lambda (_%e172330%_)
                  (let* ((_%handler172332%_ void)
                         (_%thunk172336%_
                          (lambda ()
                            (mutex-unlock! _%mx172311%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172328%_ _%e172330%_))))
                         (_%handler172341%_ _%handler172332%_)
                         (_%thunk172357%_ _%thunk172336%_))
                    (declare (not safe))
                    (__with-catch _%handler172341%_ _%thunk172357%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172330%_))))
               (_%thunk172373%_
                (lambda ()
                  (mutex-lock! _%mx172311%_)
                  (let ((_%result172371%_
                         (let () (declare (not safe)) (_%proc172319%_))))
                    (mutex-unlock! _%mx172311%_)
                    _%result172371%_)))
               (_%handler172378%_ _%handler172367%_)
               (_%thunk172389%_ _%thunk172373%_))
          (declare (not safe))
          (__with-exception-handler _%handler172378%_ _%thunk172389%_))))
    (define with-lock
      (lambda (_%mx172282%_ _%proc172283%_)
        (if (mutex? _%mx172282%_)
            (let ((_%mx172287%_ _%mx172282%_))
              (if (procedure? _%proc172283%_)
                  (let ((_%proc172297%_ _%proc172283%_))
                    (__with-lock _%mx172287%_ _%proc172297%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172283%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx172282%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172259%_ _%proc172260%_)
        (let* ((_%mx172263%_ _%mx172259%_) (_%proc172271%_ _%proc172260%_))
          (let ((__tmp173319 (lambda () (mutex-lock! _%mx172263%_)))
                (__tmp173318 (lambda () (mutex-unlock! _%mx172263%_))))
            (declare (not safe))
            (##dynamic-wind __tmp173319 _%proc172271%_ __tmp173318)))))
    (define with-dynamic-lock
      (lambda (_%mx172234%_ _%proc172235%_)
        (if (mutex? _%mx172234%_)
            (let ((_%mx172239%_ _%mx172234%_))
              (if (procedure? _%proc172235%_)
                  (let ((_%proc172249%_ _%proc172235%_))
                    (__with-dynamic-lock _%mx172239%_ _%proc172249%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172235%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx172234%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172165%_ _%error-port172166%_)
        (let* ((_%thunk172169%_ _%thunk172165%_)
               (_%error-port172177%_ _%error-port172166%_)
               (_%handler172192%_
                (let ((_%E172186%_ (current-exception-handler)))
                  (lambda (_%exn172188%_)
                    (let ((__tmp173320
                           (lambda (_%cont172190%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172190%_
                                  _%exn172188%_
                                  _%error-port172177%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172186%_ _%exn172188%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp173320)))))
               (_%thunk172195%_ _%thunk172169%_)
               (_%handler172200%_ _%handler172192%_)
               (_%thunk172214%_ _%thunk172195%_))
          (declare (not safe))
          (__with-exception-handler _%handler172200%_ _%thunk172214%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172227%_)
        (let ((_%error-port172229%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172227%_
           _%error-port172229%_))))
    (define __with-exception-stack-trace
      (lambda _g173321_
        (let ((_g173322_ (let () (declare (not safe)) (##length _g173321_))))
          (cond ((let () (declare (not safe)) (##fx= _g173322_ 1))
                 (apply __with-exception-stack-trace__0 _g173321_))
                ((let () (declare (not safe)) (##fx= _g173322_ 2))
                 (apply __with-exception-stack-trace__% _g173321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g173321_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk172129%_ _%error-port172130%_)
        (if (procedure? _%thunk172129%_)
            (let ((_%thunk172134%_ _%thunk172129%_))
              (if (port? _%error-port172130%_)
                  (let ((_%error-port172144%_ _%error-port172130%_))
                    (__with-exception-stack-trace__%
                     _%thunk172134%_
                     _%error-port172144%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port172130%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk172129%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172157%_)
        (let ((_%error-port172159%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172157%_
           _%error-port172159%_))))
    (define with-exception-stack-trace
      (lambda _g173323_
        (let ((_g173324_ (let () (declare (not safe)) (##length _g173323_))))
          (cond ((let () (declare (not safe)) (##fx= _g173324_ 1))
                 (apply with-exception-stack-trace__0 _g173323_))
                ((let () (declare (not safe)) (##fx= _g173324_ 2))
                 (apply with-exception-stack-trace__% _g173323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g173323_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont172110%_ _%exn172111%_ _%error-port172112%_)
        (let ((_%out172114%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out172114%_))
          (display '"*** Unhandled exception in " _%out172114%_)
          (display (current-thread) _%out172114%_)
          (newline _%out172114%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn172111%_ _%out172114%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn172111%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out172114%_)
                (newline _%out172114%_)
                (display-continuation-backtrace _%cont172110%_ _%out172114%_)))
          (let ((__tmp173325 (get-output-string _%out172114%_)))
            (declare (not safe))
            (##write-string __tmp173325 _%error-port172112%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont172119%_ _%exn172120%_)
        (let ((_%error-port172122%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont172119%_
           _%exn172120%_
           _%error-port172122%_))))
    (define dump-stack-trace!
      (lambda _g173326_
        (let ((_g173327_ (let () (declare (not safe)) (##length _g173326_))))
          (cond ((let () (declare (not safe)) (##fx= _g173327_ 2))
                 (apply dump-stack-trace!__0 _g173326_))
                ((let () (declare (not safe)) (##fx= _g173327_ 3))
                 (apply dump-stack-trace!__% _g173326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g173326_))))))
    (define __thread-dead?
      (lambda (_%thread172097%_)
        (let ((_%thread172100%_ _%thread172097%_))
          (not (macro-thread-end-condvar _%thread172100%_)))))
    (define thread-dead?
      (lambda (_%thread172083%_)
        (if (thread? _%thread172083%_)
            (let ((_%thread172087%_ _%thread172083%_))
              (__thread-dead? _%thread172087%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread172083%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals
     nonce)))
