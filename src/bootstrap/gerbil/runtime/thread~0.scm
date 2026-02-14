(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1771104505)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk164420%_ _%name164421%_)
        (let* ((_%thunk164424%_ _%thunk164420%_)
               (_%name164432%_ _%name164421%_))
          (make-thread
           (lambda () (thread-main _%thunk164424%_))
           _%name164432%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk162300%_ _%name162301%_)
        (if (procedure? _%thunk162300%_)
            (let ((_%thunk162305%_ _%thunk162300%_))
              (if (symbol? _%name162301%_)
                  (let ((_%name162315%_ _%name162301%_))
                    (__make-system-thread _%thunk162305%_ _%name162315%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name162301%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk162300%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk164367%_ _%name164368%_)
        (let* ((_%thunk164371%_ _%thunk164367%_)
               (_%name164379%_ _%name164368%_))
          (thread-start!
           (let* ((_%thunk164388%_ _%thunk164371%_)
                  (_%name164391%_ _%name164379%_)
                  (_%thunk164396%_ _%thunk164388%_)
                  (_%name164410%_ _%name164391%_))
             (__make-system-thread _%thunk164396%_ _%name164410%_))))))
    (define system-thread!
      (lambda (_%thunk162445%_ _%name162446%_)
        (if (procedure? _%thunk162445%_)
            (let ((_%thunk162450%_ _%thunk162445%_))
              (if (symbol? _%name162446%_)
                  (let ((_%name162460%_ _%name162446%_))
                    (__system-thread! _%thunk162450%_ _%name162460%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name162446%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk162445%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk164346%_ _%name164347%_)
        (let* ((_%thunk164350%_ _%thunk164346%_)
               (_%name164358%_ _%name164347%_))
          (spawn-actor
           _%thunk164350%_
           '()
           _%name164358%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk162590%_ _%name162591%_)
        (if (procedure? _%thunk162590%_)
            (let ((_%thunk162595%_ _%thunk162590%_))
              (if (symbol? _%name162591%_)
                  (let ((_%name162605%_ _%name162591%_))
                    (__system-actor! _%thunk162595%_ _%name162605%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name162591%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk162590%_)
              '#!void))))
    (define __spawn
      (lambda (_%f164333%_ . _%args164334%_)
        (let ((_%f164337%_ _%f164333%_))
          (spawn-actor _%f164337%_ _%args164334%_ '#!void '#f))))
    (define spawn
      (lambda (_%f162735%_ . _%args162736%_)
        (if (procedure? _%f162735%_)
            (let ((_%f162740%_ _%f162735%_))
              (declare (not safe))
              (##apply __spawn _%f162740%_ _%args162736%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f162735%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name164319%_ _%f164320%_ . _%args164321%_)
        (let ((_%f164324%_ _%f164320%_))
          (spawn-actor _%f164324%_ _%args164321%_ _%name164319%_ '#f))))
    (define spawn/name
      (lambda (_%name162870%_ _%f162871%_ . _%args162872%_)
        (if (procedure? _%f162871%_)
            (let ((_%f162876%_ _%f162871%_))
              (declare (not safe))
              (##apply __spawn/name _%name162870%_ _%f162876%_ _%args162872%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f162871%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name164303%_ _%f164304%_ . _%args164305%_)
        (let* ((_%f164308%_ _%f164304%_)
               (_%tgroup164317%_ (make-thread-group _%name164303%_)))
          (spawn-actor
           _%f164308%_
           _%args164305%_
           _%name164303%_
           _%tgroup164317%_))))
    (define spawn/group
      (lambda (_%name163006%_ _%f163007%_ . _%args163008%_)
        (if (procedure? _%f163007%_)
            (let ((_%f163012%_ _%f163007%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name163006%_
                       _%f163012%_
                       _%args163008%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f163007%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f164251%_ _%args164252%_ _%name164253%_ _%tgroup164254%_)
        (let* ((_%thunk164258%_
                (if (null? _%args164252%_)
                    _%f164251%_
                    (lambda () (apply _%f164251%_ _%args164252%_))))
               (_%thunk164294%_
                (lambda ()
                  (let* ((_%thunk164261%_ _%thunk164258%_)
                         (_%error-port164264%_ (current-error-port)))
                    (if (procedure? _%thunk164261%_)
                        (let* ((_%thunk164269%_ _%thunk164261%_)
                               (_%error-port164284%_ _%error-port164264%_))
                          (__with-exception-stack-trace__%
                           _%thunk164269%_
                           _%error-port164284%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk164261%_)
                          '#!void)))))
               (_%tgroup164299%_
                (let ((_%$e164296%_ _%tgroup164254%_))
                  (if _%$e164296%_ _%$e164296%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk164294%_))
            _%name164253%_
            _%tgroup164299%_)))))
    (define spawn-thread__%
      (lambda (_%thunk164228%_ _%name164229%_ _%tgroup164230%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk164228%_))
          _%name164229%_
          _%tgroup164230%_))))
    (define spawn-thread__0
      (lambda (_%thunk164236%_)
        (let* ((_%name164238%_ absent-obj) (_%tgroup164240%_ absent-obj))
          (spawn-thread__% _%thunk164236%_ _%name164238%_ _%tgroup164240%_))))
    (define spawn-thread__1
      (lambda (_%thunk164242%_ _%name164243%_)
        (let ((_%tgroup164245%_ absent-obj))
          (spawn-thread__% _%thunk164242%_ _%name164243%_ _%tgroup164245%_))))
    (define spawn-thread
      (lambda _g164729_
        (let ((_g164730_ (let () (declare (not safe)) (##length _g164729_))))
          (cond ((let () (declare (not safe)) (##fx= _g164730_ 1))
                 (apply spawn-thread__0 _g164729_))
                ((let () (declare (not safe)) (##fx= _g164730_ 2))
                 (apply spawn-thread__1 _g164729_))
                ((let () (declare (not safe)) (##fx= _g164730_ 3))
                 (apply spawn-thread__% _g164729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g164729_))))))
    (define thread-main
      (lambda (_%thunk164159%_)
        (let* ((_%handler164198%_
                (lambda (_%exn164161%_)
                  (let ((__tmp164731
                         (lambda (_%cont164163%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler164165%_ void)
                                      (_%thunk164169%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont164163%_
                                            _%exn164161%_))))
                                      (_%handler164174%_ _%handler164165%_)
                                      (_%thunk164188%_ _%thunk164169%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler164174%_
                                  _%thunk164188%_))
                               '#!void)
                           (let ((__tmp164732
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont164163%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp164732
                              ##primordial-exception-handler
                              _%exn164161%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp164731))))
               (_%thunk164201%_ _%thunk164159%_)
               (_%handler164206%_ _%handler164198%_))
          (if (procedure? _%thunk164201%_)
              (let ((_%thunk164217%_ _%thunk164201%_))
                (declare (not safe))
                (__with-exception-handler _%handler164206%_ _%thunk164217%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk164201%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key164115%_ _%default164116%_)
        (let* ((_%tab164118%_ (thread-local-table))
               (_%h164120%_ _%tab164118%_)
               (_%key164123%_ _%key164115%_)
               (_%default164126%_ _%default164116%_)
               (_%h164133%_
                (let ((_%$obj164130%_ _%h164120%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164130%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164130%_)))
                           '#t)
                      _%$obj164130%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164130%_)))))
               (_%h164135%_ _%h164133%_))
          (declare (not safe))
          (__hash-ref__% _%h164135%_ _%key164123%_ _%default164126%_))))
    (define thread-local-ref__0
      (lambda (_%key164152%_)
        (let ((_%default164154%_ absent-obj))
          (thread-local-ref__% _%key164152%_ _%default164154%_))))
    (define thread-local-ref
      (lambda _g164733_
        (let ((_g164734_ (let () (declare (not safe)) (##length _g164733_))))
          (cond ((let () (declare (not safe)) (##fx= _g164734_ 1))
                 (apply thread-local-ref__0 _g164733_))
                ((let () (declare (not safe)) (##fx= _g164734_ 2))
                 (apply thread-local-ref__% _g164733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g164733_))))))
    (define thread-local-get
      (lambda (_%key164112%_) (thread-local-ref__% _%key164112%_ '#f)))
    (define thread-local-set!
      (lambda (_%key164078%_ _%value164079%_)
        (let* ((_%tab164081%_ (thread-local-table))
               (_%h164083%_ _%tab164081%_)
               (_%key164086%_ _%key164078%_)
               (_%value164089%_ _%value164079%_)
               (_%h164096%_
                (let ((_%$obj164093%_ _%h164083%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164093%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164093%_)))
                           '#t)
                      _%$obj164093%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164093%_)))))
               (_%h164098%_ _%h164096%_))
          (declare (not safe))
          (__hash-put! _%h164098%_ _%key164086%_ _%value164089%_))))
    (define thread-local-delete!
      (lambda (_%key164049%_)
        (let* ((_%tab164051%_ (thread-local-table))
               (_%h164053%_ _%tab164051%_)
               (_%key164056%_ _%key164049%_)
               (_%h164063%_
                (let ((_%$obj164060%_ _%h164053%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj164060%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj164060%_)))
                           '#t)
                      _%$obj164060%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj164060%_)))))
               (_%h164065%_ _%h164063%_))
          (declare (not safe))
          (__hash-remove! _%h164065%_ _%key164056%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr163974%_ (current-thread)))
          (if (actor-thread? _%thr163974%_)
              (let ((_%$e163977%_ (actor-thread-locals _%thr163974%_)))
                (if _%$e163977%_
                    _%$e163977%_
                    (let ((_%tab163981%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr163974%_ _%tab163981%_)
                      _%tab163981%_)))
              (if (eq? _%thr163974%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e164011%_
                           (let* ((_%h163985%_ __thread-locals)
                                  (_%key163988%_ _%thr163974%_)
                                  (_%h163995%_
                                   (let ((_%$obj163992%_ _%h163985%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj163992%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj163992%_)))
                                              '#t)
                                         _%$obj163992%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj163992%_)))))
                                  (_%h163997%_ _%h163995%_))
                             (declare (not safe))
                             (__hash-get _%h163997%_ _%key163988%_))))
                      (if _%$e164011%_
                          ((lambda (_%tab164014%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab164014%_)
                           _%$e164011%_)
                          (let ((_%tab164017%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h164019%_ __thread-locals)
                                   (_%key164022%_ _%thr163974%_)
                                   (_%value164025%_ _%tab164017%_)
                                   (_%h164032%_
                                    (let ((_%$obj164029%_ _%h164019%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj164029%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj164029%_)))
                                               '#t)
                                          _%$obj164029%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj164029%_)))))
                                   (_%h164034%_ _%h164032%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h164034%_
                               _%key164022%_
                               _%value164025%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab164017%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value163960%_)
        (let ((_%new-value163963%_ _%new-value163960%_))
          (set! __unhandled-actor-exception-hook _%new-value163963%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value163142%_)
        (if ((lambda (_%$obj163146%_)
               (or (not _%$obj163146%_) (procedure? _%$obj163146%_)))
             _%new-value163142%_)
            (let ((_%new-value163153%_ _%new-value163142%_))
              (__unhandled-actor-exception-hook-set! _%new-value163153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value163142%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx163867%_ _%proc163868%_)
        (let* ((_%mx163871%_ _%mx163867%_)
               (_%proc163879%_ _%proc163868%_)
               (_%handler163888%_ (current-exception-handler))
               (_%handler163927%_
                (lambda (_%e163890%_)
                  (let* ((_%handler163892%_ void)
                         (_%thunk163896%_
                          (lambda ()
                            (mutex-unlock! _%mx163871%_)
                            (let ()
                              (declare (not safe))
                              (_%handler163888%_ _%e163890%_))))
                         (_%handler163901%_ _%handler163892%_)
                         (_%thunk163917%_ _%thunk163896%_))
                    (declare (not safe))
                    (__with-catch _%handler163901%_ _%thunk163917%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e163890%_))))
               (_%thunk163933%_
                (lambda ()
                  (mutex-lock! _%mx163871%_)
                  (let ((_%result163931%_
                         (let () (declare (not safe)) (_%proc163879%_))))
                    (mutex-unlock! _%mx163871%_)
                    _%result163931%_)))
               (_%handler163938%_ _%handler163927%_)
               (_%thunk163949%_ _%thunk163933%_))
          (declare (not safe))
          (__with-exception-handler _%handler163938%_ _%thunk163949%_))))
    (define with-lock
      (lambda (_%mx163283%_ _%proc163284%_)
        (if (mutex? _%mx163283%_)
            (let ((_%mx163288%_ _%mx163283%_))
              (if (procedure? _%proc163284%_)
                  (let ((_%proc163298%_ _%proc163284%_))
                    (__with-lock _%mx163288%_ _%proc163298%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163284%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx163283%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx163844%_ _%proc163845%_)
        (let* ((_%mx163848%_ _%mx163844%_) (_%proc163856%_ _%proc163845%_))
          (let ((__tmp164736 (lambda () (mutex-lock! _%mx163848%_)))
                (__tmp164735 (lambda () (mutex-unlock! _%mx163848%_))))
            (declare (not safe))
            (##dynamic-wind __tmp164736 _%proc163856%_ __tmp164735)))))
    (define with-dynamic-lock
      (lambda (_%mx163428%_ _%proc163429%_)
        (if (mutex? _%mx163428%_)
            (let ((_%mx163433%_ _%mx163428%_))
              (if (procedure? _%proc163429%_)
                  (let ((_%proc163443%_ _%proc163429%_))
                    (__with-dynamic-lock _%mx163433%_ _%proc163443%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc163429%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx163428%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk163775%_ _%error-port163776%_)
        (let* ((_%thunk163779%_ _%thunk163775%_)
               (_%error-port163787%_ _%error-port163776%_)
               (_%handler163802%_
                (let ((_%E163796%_ (current-exception-handler)))
                  (lambda (_%exn163798%_)
                    (let ((__tmp164737
                           (lambda (_%cont163800%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont163800%_
                                  _%exn163798%_
                                  _%error-port163787%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E163796%_ _%exn163798%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp164737)))))
               (_%thunk163805%_ _%thunk163779%_)
               (_%handler163810%_ _%handler163802%_)
               (_%thunk163824%_ _%thunk163805%_))
          (declare (not safe))
          (__with-exception-handler _%handler163810%_ _%thunk163824%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk163837%_)
        (let ((_%error-port163839%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk163837%_
           _%error-port163839%_))))
    (define __with-exception-stack-trace
      (lambda _g164738_
        (let ((_g164739_ (let () (declare (not safe)) (##length _g164738_))))
          (cond ((let () (declare (not safe)) (##fx= _g164739_ 1))
                 (apply __with-exception-stack-trace__0 _g164738_))
                ((let () (declare (not safe)) (##fx= _g164739_ 2))
                 (apply __with-exception-stack-trace__% _g164738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g164738_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk163574%_ _%error-port163575%_)
        (if (procedure? _%thunk163574%_)
            (let ((_%thunk163579%_ _%thunk163574%_))
              (if (port? _%error-port163575%_)
                  (let ((_%error-port163589%_ _%error-port163575%_))
                    (__with-exception-stack-trace__%
                     _%thunk163579%_
                     _%error-port163589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port163575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk163574%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk163602%_)
        (let ((_%error-port163604%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk163602%_
           _%error-port163604%_))))
    (define with-exception-stack-trace
      (lambda _g164740_
        (let ((_g164741_ (let () (declare (not safe)) (##length _g164740_))))
          (cond ((let () (declare (not safe)) (##fx= _g164741_ 1))
                 (apply with-exception-stack-trace__0 _g164740_))
                ((let () (declare (not safe)) (##fx= _g164741_ 2))
                 (apply with-exception-stack-trace__% _g164740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g164740_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont163756%_ _%exn163757%_ _%error-port163758%_)
        (let ((_%out163760%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out163760%_))
          (display '"*** Unhandled exception in " _%out163760%_)
          (display (current-thread) _%out163760%_)
          (newline _%out163760%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn163757%_ _%out163760%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn163757%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out163760%_)
                (newline _%out163760%_)
                (display-continuation-backtrace _%cont163756%_ _%out163760%_)))
          (let ((__tmp164742 (get-output-string _%out163760%_)))
            (declare (not safe))
            (##write-string __tmp164742 _%error-port163758%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont163765%_ _%exn163766%_)
        (let ((_%error-port163768%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont163765%_
           _%exn163766%_
           _%error-port163768%_))))
    (define dump-stack-trace!
      (lambda _g164743_
        (let ((_g164744_ (let () (declare (not safe)) (##length _g164743_))))
          (cond ((let () (declare (not safe)) (##fx= _g164744_ 2))
                 (apply dump-stack-trace!__0 _g164743_))
                ((let () (declare (not safe)) (##fx= _g164744_ 3))
                 (apply dump-stack-trace!__% _g164743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g164743_))))))
    (define __thread-dead?
      (lambda (_%thread163743%_)
        (let ((_%thread163746%_ _%thread163743%_))
          (not (macro-thread-end-condvar _%thread163746%_)))))
    (define thread-dead?
      (lambda (_%thread163729%_)
        (if (thread? _%thread163729%_)
            (let ((_%thread163733%_ _%thread163729%_))
              (__thread-dead? _%thread163733%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread163729%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     state
     locals
     nonce)))
