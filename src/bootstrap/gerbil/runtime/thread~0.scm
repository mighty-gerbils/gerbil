(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1784279015)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk172870%_ _%name172871%_)
        (let* ((_%thunk172874%_ _%thunk172870%_)
               (_%name172882%_ _%name172871%_))
          (make-thread
           (lambda () (thread-main _%thunk172874%_))
           _%name172882%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk172845%_ _%name172846%_)
        (if (procedure? _%thunk172845%_)
            (let ((_%thunk172850%_ _%thunk172845%_))
              (if (symbol? _%name172846%_)
                  (let ((_%name172860%_ _%name172846%_))
                    (__make-system-thread _%thunk172850%_ _%name172860%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name172846%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk172845%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk172792%_ _%name172793%_)
        (let* ((_%thunk172796%_ _%thunk172792%_)
               (_%name172804%_ _%name172793%_))
          (thread-start!
           (let* ((_%thunk172813%_ _%thunk172796%_)
                  (_%name172816%_ _%name172804%_)
                  (_%thunk172821%_ _%thunk172813%_)
                  (_%name172835%_ _%name172816%_))
             (__make-system-thread _%thunk172821%_ _%name172835%_))))))
    (define system-thread!
      (lambda (_%thunk172767%_ _%name172768%_)
        (if (procedure? _%thunk172767%_)
            (let ((_%thunk172772%_ _%thunk172767%_))
              (if (symbol? _%name172768%_)
                  (let ((_%name172782%_ _%name172768%_))
                    (__system-thread! _%thunk172772%_ _%name172782%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name172768%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk172767%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk172746%_ _%name172747%_)
        (let* ((_%thunk172750%_ _%thunk172746%_)
               (_%name172758%_ _%name172747%_))
          (spawn-actor
           _%thunk172750%_
           '()
           _%name172758%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk172721%_ _%name172722%_)
        (if (procedure? _%thunk172721%_)
            (let ((_%thunk172726%_ _%thunk172721%_))
              (if (symbol? _%name172722%_)
                  (let ((_%name172736%_ _%name172722%_))
                    (__system-actor! _%thunk172726%_ _%name172736%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name172722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk172721%_)
              '#!void))))
    (define __spawn
      (lambda (_%f172708%_ . _%args172709%_)
        (let ((_%f172712%_ _%f172708%_))
          (spawn-actor _%f172712%_ _%args172709%_ '#!void '#f))))
    (define spawn
      (lambda (_%f172693%_ . _%args172694%_)
        (if (procedure? _%f172693%_)
            (let ((_%f172698%_ _%f172693%_))
              (declare (not safe))
              (##apply __spawn _%f172698%_ _%args172694%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f172693%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name172679%_ _%f172680%_ . _%args172681%_)
        (let ((_%f172684%_ _%f172680%_))
          (spawn-actor _%f172684%_ _%args172681%_ _%name172679%_ '#f))))
    (define spawn/name
      (lambda (_%name172663%_ _%f172664%_ . _%args172665%_)
        (if (procedure? _%f172664%_)
            (let ((_%f172669%_ _%f172664%_))
              (declare (not safe))
              (##apply __spawn/name _%name172663%_ _%f172669%_ _%args172665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f172664%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name172647%_ _%f172648%_ . _%args172649%_)
        (let* ((_%f172652%_ _%f172648%_)
               (_%tgroup172661%_ (make-thread-group _%name172647%_)))
          (spawn-actor
           _%f172652%_
           _%args172649%_
           _%name172647%_
           _%tgroup172661%_))))
    (define spawn/group
      (lambda (_%name172631%_ _%f172632%_ . _%args172633%_)
        (if (procedure? _%f172632%_)
            (let ((_%f172637%_ _%f172632%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name172631%_
                       _%f172637%_
                       _%args172633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f172632%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f172579%_ _%args172580%_ _%name172581%_ _%tgroup172582%_)
        (let* ((_%thunk172586%_
                (if (null? _%args172580%_)
                    _%f172579%_
                    (lambda () (apply _%f172579%_ _%args172580%_))))
               (_%thunk172622%_
                (lambda ()
                  (let* ((_%thunk172589%_ _%thunk172586%_)
                         (_%error-port172592%_ (current-error-port)))
                    (if (procedure? _%thunk172589%_)
                        (let* ((_%thunk172597%_ _%thunk172589%_)
                               (_%error-port172612%_ _%error-port172592%_))
                          (__with-exception-stack-trace__%
                           _%thunk172597%_
                           _%error-port172612%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk172589%_)
                          '#!void)))))
               (_%tgroup172627%_
                (let ((_%$e172624%_ _%tgroup172582%_))
                  (if _%$e172624%_ _%$e172624%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk172622%_))
            _%name172581%_
            _%tgroup172627%_)))))
    (define spawn-thread__%
      (lambda (_%thunk172556%_ _%name172557%_ _%tgroup172558%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk172556%_))
          _%name172557%_
          _%tgroup172558%_))))
    (define spawn-thread__0
      (lambda (_%thunk172564%_)
        (let* ((_%name172566%_ absent-obj) (_%tgroup172568%_ absent-obj))
          (spawn-thread__% _%thunk172564%_ _%name172566%_ _%tgroup172568%_))))
    (define spawn-thread__1
      (lambda (_%thunk172570%_ _%name172571%_)
        (let ((_%tgroup172573%_ absent-obj))
          (spawn-thread__% _%thunk172570%_ _%name172571%_ _%tgroup172573%_))))
    (define spawn-thread
      (lambda _g173179_
        (let ((_g173180_ (let () (declare (not safe)) (##length _g173179_))))
          (cond ((let () (declare (not safe)) (##fx= _g173180_ 1))
                 (apply spawn-thread__0 _g173179_))
                ((let () (declare (not safe)) (##fx= _g173180_ 2))
                 (apply spawn-thread__1 _g173179_))
                ((let () (declare (not safe)) (##fx= _g173180_ 3))
                 (apply spawn-thread__% _g173179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g173179_))))))
    (define thread-main
      (lambda (_%thunk172487%_)
        (let* ((_%handler172526%_
                (lambda (_%exn172489%_)
                  (let ((__tmp173181
                         (lambda (_%cont172491%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler172493%_ void)
                                      (_%thunk172497%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont172491%_
                                            _%exn172489%_))))
                                      (_%handler172502%_ _%handler172493%_)
                                      (_%thunk172516%_ _%thunk172497%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler172502%_
                                  _%thunk172516%_))
                               '#!void)
                           (let ((__tmp173182
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont172491%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp173182
                              ##primordial-exception-handler
                              _%exn172489%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp173181))))
               (_%thunk172529%_ _%thunk172487%_)
               (_%handler172534%_ _%handler172526%_))
          (if (procedure? _%thunk172529%_)
              (let ((_%thunk172545%_ _%thunk172529%_))
                (declare (not safe))
                (__with-exception-handler _%handler172534%_ _%thunk172545%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk172529%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172443%_ _%default172444%_)
        (let* ((_%tab172446%_ (thread-local-table))
               (_%h172448%_ _%tab172446%_)
               (_%key172451%_ _%key172443%_)
               (_%default172454%_ _%default172444%_)
               (_%h172461%_
                (let ((_%$obj172458%_ _%h172448%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172458%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172458%_)))
                           '#t)
                      _%$obj172458%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172458%_)))))
               (_%h172463%_ _%h172461%_))
          (declare (not safe))
          (__hash-ref__% _%h172463%_ _%key172451%_ _%default172454%_))))
    (define thread-local-ref__0
      (lambda (_%key172480%_)
        (let ((_%default172482%_ absent-obj))
          (thread-local-ref__% _%key172480%_ _%default172482%_))))
    (define thread-local-ref
      (lambda _g173183_
        (let ((_g173184_ (let () (declare (not safe)) (##length _g173183_))))
          (cond ((let () (declare (not safe)) (##fx= _g173184_ 1))
                 (apply thread-local-ref__0 _g173183_))
                ((let () (declare (not safe)) (##fx= _g173184_ 2))
                 (apply thread-local-ref__% _g173183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g173183_))))))
    (define thread-local-get
      (lambda (_%key172440%_) (thread-local-ref__% _%key172440%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172406%_ _%value172407%_)
        (let* ((_%tab172409%_ (thread-local-table))
               (_%h172411%_ _%tab172409%_)
               (_%key172414%_ _%key172406%_)
               (_%value172417%_ _%value172407%_)
               (_%h172424%_
                (let ((_%$obj172421%_ _%h172411%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172421%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172421%_)))
                           '#t)
                      _%$obj172421%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172421%_)))))
               (_%h172426%_ _%h172424%_))
          (declare (not safe))
          (__hash-put! _%h172426%_ _%key172414%_ _%value172417%_))))
    (define thread-local-delete!
      (lambda (_%key172377%_)
        (let* ((_%tab172379%_ (thread-local-table))
               (_%h172381%_ _%tab172379%_)
               (_%key172384%_ _%key172377%_)
               (_%h172391%_
                (let ((_%$obj172388%_ _%h172381%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj172388%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj172388%_)))
                           '#t)
                      _%$obj172388%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj172388%_)))))
               (_%h172393%_ _%h172391%_))
          (declare (not safe))
          (__hash-remove! _%h172393%_ _%key172384%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172302%_ (current-thread)))
          (if (actor-thread? _%thr172302%_)
              (let ((_%$e172305%_ (actor-thread-locals _%thr172302%_)))
                (if _%$e172305%_
                    _%$e172305%_
                    (let ((_%tab172309%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172302%_ _%tab172309%_)
                      _%tab172309%_)))
              (if (eq? _%thr172302%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172339%_
                           (let* ((_%h172313%_ __thread-locals)
                                  (_%key172316%_ _%thr172302%_)
                                  (_%h172323%_
                                   (let ((_%$obj172320%_ _%h172313%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172320%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172320%_)))
                                              '#t)
                                         _%$obj172320%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172320%_)))))
                                  (_%h172325%_ _%h172323%_))
                             (declare (not safe))
                             (__hash-get _%h172325%_ _%key172316%_))))
                      (if _%$e172339%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e172339%_)
                          (let ((_%tab172345%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172347%_ __thread-locals)
                                   (_%key172350%_ _%thr172302%_)
                                   (_%value172353%_ _%tab172345%_)
                                   (_%h172360%_
                                    (let ((_%$obj172357%_ _%h172347%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172357%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172357%_)))
                                               '#t)
                                          _%$obj172357%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172357%_)))))
                                   (_%h172362%_ _%h172360%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172362%_
                               _%key172350%_
                               _%value172353%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172345%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172288%_)
        (let ((_%new-value172291%_ _%new-value172288%_))
          (set! __unhandled-actor-exception-hook _%new-value172291%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value172267%_)
        (if (or (not _%new-value172267%_) (procedure? _%new-value172267%_))
            (let ((_%new-value172278%_ _%new-value172267%_))
              (__unhandled-actor-exception-hook-set! _%new-value172278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value172267%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172174%_ _%proc172175%_)
        (let* ((_%mx172178%_ _%mx172174%_)
               (_%proc172186%_ _%proc172175%_)
               (_%handler172195%_ (current-exception-handler))
               (_%handler172234%_
                (lambda (_%e172197%_)
                  (let* ((_%handler172199%_ void)
                         (_%thunk172203%_
                          (lambda ()
                            (mutex-unlock! _%mx172178%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172195%_ _%e172197%_))))
                         (_%handler172208%_ _%handler172199%_)
                         (_%thunk172224%_ _%thunk172203%_))
                    (declare (not safe))
                    (__with-catch _%handler172208%_ _%thunk172224%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172197%_))))
               (_%thunk172240%_
                (lambda ()
                  (mutex-lock! _%mx172178%_)
                  (let ((_%result172238%_
                         (let () (declare (not safe)) (_%proc172186%_))))
                    (mutex-unlock! _%mx172178%_)
                    _%result172238%_)))
               (_%handler172245%_ _%handler172234%_)
               (_%thunk172256%_ _%thunk172240%_))
          (declare (not safe))
          (__with-exception-handler _%handler172245%_ _%thunk172256%_))))
    (define with-lock
      (lambda (_%mx172149%_ _%proc172150%_)
        (if (mutex? _%mx172149%_)
            (let ((_%mx172154%_ _%mx172149%_))
              (if (procedure? _%proc172150%_)
                  (let ((_%proc172164%_ _%proc172150%_))
                    (__with-lock _%mx172154%_ _%proc172164%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172150%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx172149%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172126%_ _%proc172127%_)
        (let* ((_%mx172130%_ _%mx172126%_) (_%proc172138%_ _%proc172127%_))
          (let ((__tmp173186 (lambda () (mutex-lock! _%mx172130%_)))
                (__tmp173185 (lambda () (mutex-unlock! _%mx172130%_))))
            (declare (not safe))
            (##dynamic-wind __tmp173186 _%proc172138%_ __tmp173185)))))
    (define with-dynamic-lock
      (lambda (_%mx172101%_ _%proc172102%_)
        (if (mutex? _%mx172101%_)
            (let ((_%mx172106%_ _%mx172101%_))
              (if (procedure? _%proc172102%_)
                  (let ((_%proc172116%_ _%proc172102%_))
                    (__with-dynamic-lock _%mx172106%_ _%proc172116%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172102%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx172101%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172032%_ _%error-port172033%_)
        (let* ((_%thunk172036%_ _%thunk172032%_)
               (_%error-port172044%_ _%error-port172033%_)
               (_%handler172059%_
                (let ((_%E172053%_ (current-exception-handler)))
                  (lambda (_%exn172055%_)
                    (let ((__tmp173187
                           (lambda (_%cont172057%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172057%_
                                  _%exn172055%_
                                  _%error-port172044%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172053%_ _%exn172055%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp173187)))))
               (_%thunk172062%_ _%thunk172036%_)
               (_%handler172067%_ _%handler172059%_)
               (_%thunk172081%_ _%thunk172062%_))
          (declare (not safe))
          (__with-exception-handler _%handler172067%_ _%thunk172081%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172094%_)
        (let ((_%error-port172096%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172094%_
           _%error-port172096%_))))
    (define __with-exception-stack-trace
      (lambda _g173188_
        (let ((_g173189_ (let () (declare (not safe)) (##length _g173188_))))
          (cond ((let () (declare (not safe)) (##fx= _g173189_ 1))
                 (apply __with-exception-stack-trace__0 _g173188_))
                ((let () (declare (not safe)) (##fx= _g173189_ 2))
                 (apply __with-exception-stack-trace__% _g173188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g173188_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk171996%_ _%error-port171997%_)
        (if (procedure? _%thunk171996%_)
            (let ((_%thunk172001%_ _%thunk171996%_))
              (if (port? _%error-port171997%_)
                  (let ((_%error-port172011%_ _%error-port171997%_))
                    (__with-exception-stack-trace__%
                     _%thunk172001%_
                     _%error-port172011%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port171997%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk171996%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172024%_)
        (let ((_%error-port172026%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172024%_
           _%error-port172026%_))))
    (define with-exception-stack-trace
      (lambda _g173190_
        (let ((_g173191_ (let () (declare (not safe)) (##length _g173190_))))
          (cond ((let () (declare (not safe)) (##fx= _g173191_ 1))
                 (apply with-exception-stack-trace__0 _g173190_))
                ((let () (declare (not safe)) (##fx= _g173191_ 2))
                 (apply with-exception-stack-trace__% _g173190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g173190_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont171977%_ _%exn171978%_ _%error-port171979%_)
        (let ((_%out171981%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out171981%_))
          (display '"*** Unhandled exception in " _%out171981%_)
          (display (current-thread) _%out171981%_)
          (newline _%out171981%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn171978%_ _%out171981%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn171978%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out171981%_)
                (newline _%out171981%_)
                (display-continuation-backtrace _%cont171977%_ _%out171981%_)))
          (let ((__tmp173192 (get-output-string _%out171981%_)))
            (declare (not safe))
            (##write-string __tmp173192 _%error-port171979%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont171986%_ _%exn171987%_)
        (let ((_%error-port171989%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont171986%_
           _%exn171987%_
           _%error-port171989%_))))
    (define dump-stack-trace!
      (lambda _g173193_
        (let ((_g173194_ (let () (declare (not safe)) (##length _g173193_))))
          (cond ((let () (declare (not safe)) (##fx= _g173194_ 2))
                 (apply dump-stack-trace!__0 _g173193_))
                ((let () (declare (not safe)) (##fx= _g173194_ 3))
                 (apply dump-stack-trace!__% _g173193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g173193_))))))
    (define __thread-dead?
      (lambda (_%thread171964%_)
        (let ((_%thread171967%_ _%thread171964%_))
          (not (macro-thread-end-condvar _%thread171967%_)))))
    (define thread-dead?
      (lambda (_%thread171950%_)
        (if (thread? _%thread171950%_)
            (let ((_%thread171954%_ _%thread171950%_))
              (__thread-dead? _%thread171954%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread171950%_)
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
