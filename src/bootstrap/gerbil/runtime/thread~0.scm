(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1783939348)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk170370%_ _%name170371%_)
        (let* ((_%thunk170374%_ _%thunk170370%_)
               (_%name170382%_ _%name170371%_))
          (make-thread
           (lambda () (thread-main _%thunk170374%_))
           _%name170382%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk170345%_ _%name170346%_)
        (if (procedure? _%thunk170345%_)
            (let ((_%thunk170350%_ _%thunk170345%_))
              (if (symbol? _%name170346%_)
                  (let ((_%name170360%_ _%name170346%_))
                    (__make-system-thread _%thunk170350%_ _%name170360%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name170346%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk170345%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk170292%_ _%name170293%_)
        (let* ((_%thunk170296%_ _%thunk170292%_)
               (_%name170304%_ _%name170293%_))
          (thread-start!
           (let* ((_%thunk170313%_ _%thunk170296%_)
                  (_%name170316%_ _%name170304%_)
                  (_%thunk170321%_ _%thunk170313%_)
                  (_%name170335%_ _%name170316%_))
             (__make-system-thread _%thunk170321%_ _%name170335%_))))))
    (define system-thread!
      (lambda (_%thunk170267%_ _%name170268%_)
        (if (procedure? _%thunk170267%_)
            (let ((_%thunk170272%_ _%thunk170267%_))
              (if (symbol? _%name170268%_)
                  (let ((_%name170282%_ _%name170268%_))
                    (__system-thread! _%thunk170272%_ _%name170282%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name170268%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk170267%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk170180%_ _%name170181%_)
        (let* ((_%thunk170184%_ _%thunk170180%_)
               (_%name170192%_ _%name170181%_)
               (_%f170201%_ _%thunk170184%_)
               (_%args170204%_ '())
               (_%name170207%_ _%name170192%_)
               (_%tgroup170210%_ (system-thread-group))
               (_%f170215%_ _%f170201%_)
               (_%args170231%_ _%args170204%_))
          (if '#t
              (let ((_%name170241%_ _%name170207%_))
                (if (or (not _%tgroup170210%_) '#t)
                    (let ((_%tgroup170257%_ _%tgroup170210%_))
                      (__spawn-actor
                       _%f170215%_
                       _%args170231%_
                       _%name170241%_
                       _%tgroup170257%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup170210%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name170207%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk170155%_ _%name170156%_)
        (if (procedure? _%thunk170155%_)
            (let ((_%thunk170160%_ _%thunk170155%_))
              (if (symbol? _%name170156%_)
                  (let ((_%name170170%_ _%name170156%_))
                    (__system-actor! _%thunk170160%_ _%name170170%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name170156%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk170155%_)
              '#!void))))
    (define __spawn
      (lambda (_%f170076%_ . _%args170077%_)
        (let* ((_%f170080%_ _%f170076%_)
               (_%f170089%_ _%f170080%_)
               (_%args170092%_ _%args170077%_)
               (_%name170095%_ '#!void)
               (_%tgroup170098%_ '#f)
               (_%f170103%_ _%f170089%_)
               (_%args170119%_ _%args170092%_))
          (if '#t
              (let ((_%name170129%_ _%name170095%_))
                (if (let ((_%$e170141%_ '#t)) (and _%$e170141%_ _%$e170141%_))
                    (let ((_%tgroup170145%_ _%tgroup170098%_))
                      (__spawn-actor
                       _%f170103%_
                       _%args170119%_
                       _%name170129%_
                       _%tgroup170145%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup170098%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name170095%_)
                '#!void)))))
    (define spawn
      (lambda (_%f170061%_ . _%args170062%_)
        (if (procedure? _%f170061%_)
            (let ((_%f170066%_ _%f170061%_))
              (declare (not safe))
              (##apply __spawn _%f170066%_ _%args170062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f170061%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name169981%_ _%f169982%_ . _%args169983%_)
        (let* ((_%f169986%_ _%f169982%_)
               (_%f169995%_ _%f169986%_)
               (_%args169998%_ _%args169983%_)
               (_%name170001%_ _%name169981%_)
               (_%tgroup170004%_ '#f)
               (_%f170009%_ _%f169995%_)
               (_%args170025%_ _%args169998%_))
          (if '#t
              (let ((_%name170035%_ _%name170001%_))
                (if (let ((_%$e170047%_ '#t)) (and _%$e170047%_ _%$e170047%_))
                    (let ((_%tgroup170051%_ _%tgroup170004%_))
                      (__spawn-actor
                       _%f170009%_
                       _%args170025%_
                       _%name170035%_
                       _%tgroup170051%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup170004%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name170001%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name169965%_ _%f169966%_ . _%args169967%_)
        (if (procedure? _%f169966%_)
            (let ((_%f169971%_ _%f169966%_))
              (declare (not safe))
              (##apply __spawn/name _%name169965%_ _%f169971%_ _%args169967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f169966%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name169882%_ _%f169883%_ . _%args169884%_)
        (let* ((_%f169887%_ _%f169883%_)
               (_%tgroup169896%_ (make-thread-group _%name169882%_))
               (_%f169898%_ _%f169887%_)
               (_%args169901%_ _%args169884%_)
               (_%name169904%_ _%name169882%_)
               (_%tgroup169907%_ _%tgroup169896%_)
               (_%f169912%_ _%f169898%_)
               (_%args169929%_ _%args169901%_))
          (if '#t
              (let ((_%name169939%_ _%name169904%_))
                (if (or (not _%tgroup169907%_) '#t)
                    (let ((_%tgroup169955%_ _%tgroup169907%_))
                      (__spawn-actor
                       _%f169912%_
                       _%args169929%_
                       _%name169939%_
                       _%tgroup169955%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup169907%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name169904%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name169866%_ _%f169867%_ . _%args169868%_)
        (if (procedure? _%f169867%_)
            (let ((_%f169872%_ _%f169867%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name169866%_
                       _%f169872%_
                       _%args169868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f169867%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f169780%_ _%args169781%_ _%name169782%_ _%tgroup169783%_)
        (let* ((_%f169786%_ _%f169780%_)
               (_%args169794%_ _%args169781%_)
               (_%name169802%_ _%name169782%_)
               (_%tgroup169810%_ _%tgroup169783%_)
               (_%thunk169820%_
                (if (null? _%args169794%_)
                    _%f169786%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f169786%_ _%args169794%_)))))
               (_%thunk169857%_
                (lambda ()
                  (let* ((_%thunk169823%_ _%thunk169820%_)
                         (_%error-port169826%_ (current-error-port))
                         (_%thunk169831%_ _%thunk169823%_)
                         (_%error-port169847%_ _%error-port169826%_))
                    (__with-exception-stack-trace__%
                     _%thunk169831%_
                     _%error-port169847%_))))
               (_%tgroup169862%_
                (let ((_%$e169859%_ _%tgroup169810%_))
                  (if _%$e169859%_ _%$e169859%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk169857%_))
            _%name169802%_
            _%tgroup169862%_)))))
    (define spawn-actor
      (lambda (_%f169727%_ _%args169728%_ _%name169729%_ _%tgroup169730%_)
        (if (procedure? _%f169727%_)
            (let ((_%f169734%_ _%f169727%_))
              (if (list? _%args169728%_)
                  (let ((_%args169744%_ _%args169728%_))
                    (if '#t
                        (let ((_%name169754%_ _%name169729%_))
                          (if (or (not _%tgroup169730%_)
                                  (thread-group? _%tgroup169730%_))
                              (let ((_%tgroup169770%_ _%tgroup169730%_))
                                (__spawn-actor
                                 _%f169734%_
                                 _%args169744%_
                                 _%name169754%_
                                 _%tgroup169770%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                                 'contract:
                                 '(? (or not thread-group?))
                                 'value:
                                 _%tgroup169730%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@45.20-45.24"
                           'contract:
                           'true
                           'value:
                           _%name169729%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args169728%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f169727%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk169704%_ _%name169705%_ _%tgroup169706%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk169704%_))
          _%name169705%_
          _%tgroup169706%_))))
    (define spawn-thread__0
      (lambda (_%thunk169712%_)
        (let* ((_%name169714%_ absent-obj) (_%tgroup169716%_ absent-obj))
          (spawn-thread__% _%thunk169712%_ _%name169714%_ _%tgroup169716%_))))
    (define spawn-thread__1
      (lambda (_%thunk169718%_ _%name169719%_)
        (let ((_%tgroup169721%_ absent-obj))
          (spawn-thread__% _%thunk169718%_ _%name169719%_ _%tgroup169721%_))))
    (define spawn-thread
      (lambda _g170705_
        (let ((_g170706_ (let () (declare (not safe)) (##length _g170705_))))
          (cond ((let () (declare (not safe)) (##fx= _g170706_ 1))
                 (apply spawn-thread__0 _g170705_))
                ((let () (declare (not safe)) (##fx= _g170706_ 2))
                 (apply spawn-thread__1 _g170705_))
                ((let () (declare (not safe)) (##fx= _g170706_ 3))
                 (apply spawn-thread__% _g170705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g170705_))))))
    (define thread-main
      (lambda (_%thunk169635%_)
        (let* ((_%handler169674%_
                (lambda (_%exn169637%_)
                  (let ((__tmp170707
                         (lambda (_%cont169639%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler169641%_ void)
                                      (_%thunk169645%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont169639%_
                                            _%exn169637%_))))
                                      (_%handler169650%_ _%handler169641%_)
                                      (_%thunk169664%_ _%thunk169645%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler169650%_
                                  _%thunk169664%_))
                               '#!void)
                           (let ((__tmp170708
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont169639%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp170708
                              ##primordial-exception-handler
                              _%exn169637%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170707))))
               (_%thunk169677%_ _%thunk169635%_)
               (_%handler169682%_ _%handler169674%_))
          (if (procedure? _%thunk169677%_)
              (let ((_%thunk169693%_ _%thunk169677%_))
                (declare (not safe))
                (__with-exception-handler _%handler169682%_ _%thunk169693%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169677%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key169594%_ _%default169595%_)
        (let* ((_%tab169597%_ (thread-local-table))
               (_%h169599%_ _%tab169597%_)
               (_%key169602%_ _%key169594%_)
               (_%default169605%_ _%default169595%_)
               (_%h169609%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h169599%_)))
               (_%h169611%_ _%h169609%_))
          (declare (not safe))
          (__hash-ref__% _%h169611%_ _%key169602%_ _%default169605%_))))
    (define thread-local-ref__0
      (lambda (_%key169628%_)
        (let ((_%default169630%_ absent-obj))
          (thread-local-ref__% _%key169628%_ _%default169630%_))))
    (define thread-local-ref
      (lambda _g170709_
        (let ((_g170710_ (let () (declare (not safe)) (##length _g170709_))))
          (cond ((let () (declare (not safe)) (##fx= _g170710_ 1))
                 (apply thread-local-ref__0 _g170709_))
                ((let () (declare (not safe)) (##fx= _g170710_ 2))
                 (apply thread-local-ref__% _g170709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g170709_))))))
    (define thread-local-get
      (lambda (_%key169591%_) (thread-local-ref__% _%key169591%_ '#f)))
    (define thread-local-set!
      (lambda (_%key169560%_ _%value169561%_)
        (let* ((_%tab169563%_ (thread-local-table))
               (_%h169565%_ _%tab169563%_)
               (_%key169568%_ _%key169560%_)
               (_%value169571%_ _%value169561%_)
               (_%h169575%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h169565%_)))
               (_%h169577%_ _%h169575%_))
          (declare (not safe))
          (__hash-put! _%h169577%_ _%key169568%_ _%value169571%_))))
    (define thread-local-delete!
      (lambda (_%key169534%_)
        (let* ((_%tab169536%_ (thread-local-table))
               (_%h169538%_ _%tab169536%_)
               (_%key169541%_ _%key169534%_)
               (_%h169545%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h169538%_)))
               (_%h169547%_ _%h169545%_))
          (declare (not safe))
          (__hash-remove! _%h169547%_ _%key169541%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr169465%_ (current-thread)))
          (if (actor-thread? _%thr169465%_)
              (let ((_%$e169468%_ (actor-thread-locals _%thr169465%_)))
                (if _%$e169468%_
                    _%$e169468%_
                    (let ((_%tab169472%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr169465%_ _%tab169472%_)
                      _%tab169472%_)))
              (if (eq? _%thr169465%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e169499%_
                           (let* ((_%h169476%_ __thread-locals)
                                  (_%key169479%_ _%thr169465%_)
                                  (_%h169483%_ _%h169476%_)
                                  (_%h169485%_ _%h169483%_))
                             (declare (not safe))
                             (__hash-get _%h169485%_ _%key169479%_))))
                      (if _%$e169499%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e169499%_)
                          (let ((_%tab169505%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h169507%_ __thread-locals)
                                   (_%key169510%_ _%thr169465%_)
                                   (_%value169513%_ _%tab169505%_)
                                   (_%h169517%_ _%h169507%_)
                                   (_%h169519%_ _%h169517%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h169519%_
                               _%key169510%_
                               _%value169513%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab169505%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value169451%_)
        (let ((_%new-value169454%_ _%new-value169451%_))
          (set! __unhandled-actor-exception-hook _%new-value169454%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value169430%_)
        (if (or (not _%new-value169430%_) (procedure? _%new-value169430%_))
            (let ((_%new-value169441%_ _%new-value169430%_))
              (__unhandled-actor-exception-hook-set! _%new-value169441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value169430%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx169337%_ _%proc169338%_)
        (let* ((_%mx169341%_ _%mx169337%_)
               (_%proc169349%_ _%proc169338%_)
               (_%handler169358%_ (current-exception-handler))
               (_%handler169397%_
                (lambda (_%e169360%_)
                  (let* ((_%handler169362%_ void)
                         (_%thunk169366%_
                          (lambda ()
                            (mutex-unlock! _%mx169341%_)
                            (let ()
                              (declare (not safe))
                              (_%handler169358%_ _%e169360%_))))
                         (_%handler169371%_ _%handler169362%_)
                         (_%thunk169387%_ _%thunk169366%_))
                    (declare (not safe))
                    (__with-catch _%handler169371%_ _%thunk169387%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e169360%_))))
               (_%thunk169403%_
                (lambda ()
                  (mutex-lock! _%mx169341%_)
                  (let ((_%result169401%_
                         (let () (declare (not safe)) (_%proc169349%_))))
                    (mutex-unlock! _%mx169341%_)
                    _%result169401%_)))
               (_%handler169408%_ _%handler169397%_)
               (_%thunk169419%_ _%thunk169403%_))
          (declare (not safe))
          (__with-exception-handler _%handler169408%_ _%thunk169419%_))))
    (define with-lock
      (lambda (_%mx169312%_ _%proc169313%_)
        (if (mutex? _%mx169312%_)
            (let ((_%mx169317%_ _%mx169312%_))
              (if (procedure? _%proc169313%_)
                  (let ((_%proc169327%_ _%proc169313%_))
                    (__with-lock _%mx169317%_ _%proc169327%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc169313%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx169312%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx169289%_ _%proc169290%_)
        (let* ((_%mx169293%_ _%mx169289%_) (_%proc169301%_ _%proc169290%_))
          (let ((__tmp170712 (lambda () (mutex-lock! _%mx169293%_)))
                (__tmp170711 (lambda () (mutex-unlock! _%mx169293%_))))
            (declare (not safe))
            (##dynamic-wind __tmp170712 _%proc169301%_ __tmp170711)))))
    (define with-dynamic-lock
      (lambda (_%mx169264%_ _%proc169265%_)
        (if (mutex? _%mx169264%_)
            (let ((_%mx169269%_ _%mx169264%_))
              (if (procedure? _%proc169265%_)
                  (let ((_%proc169279%_ _%proc169265%_))
                    (__with-dynamic-lock _%mx169269%_ _%proc169279%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc169265%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx169264%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk169195%_ _%error-port169196%_)
        (let* ((_%thunk169199%_ _%thunk169195%_)
               (_%error-port169207%_ _%error-port169196%_)
               (_%handler169222%_
                (let ((_%E169216%_ (current-exception-handler)))
                  (lambda (_%exn169218%_)
                    (let ((__tmp170713
                           (lambda (_%cont169220%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont169220%_
                                  _%exn169218%_
                                  _%error-port169207%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E169216%_ _%exn169218%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp170713)))))
               (_%thunk169225%_ _%thunk169199%_)
               (_%handler169230%_ _%handler169222%_)
               (_%thunk169244%_ _%thunk169225%_))
          (declare (not safe))
          (__with-exception-handler _%handler169230%_ _%thunk169244%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk169257%_)
        (let ((_%error-port169259%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk169257%_
           _%error-port169259%_))))
    (define __with-exception-stack-trace
      (lambda _g170714_
        (let ((_g170715_ (let () (declare (not safe)) (##length _g170714_))))
          (cond ((let () (declare (not safe)) (##fx= _g170715_ 1))
                 (apply __with-exception-stack-trace__0 _g170714_))
                ((let () (declare (not safe)) (##fx= _g170715_ 2))
                 (apply __with-exception-stack-trace__% _g170714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g170714_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk169159%_ _%error-port169160%_)
        (if (procedure? _%thunk169159%_)
            (let ((_%thunk169164%_ _%thunk169159%_))
              (if (port? _%error-port169160%_)
                  (let ((_%error-port169174%_ _%error-port169160%_))
                    (__with-exception-stack-trace__%
                     _%thunk169164%_
                     _%error-port169174%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port169160%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk169159%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk169187%_)
        (let ((_%error-port169189%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk169187%_
           _%error-port169189%_))))
    (define with-exception-stack-trace
      (lambda _g170716_
        (let ((_g170717_ (let () (declare (not safe)) (##length _g170716_))))
          (cond ((let () (declare (not safe)) (##fx= _g170717_ 1))
                 (apply with-exception-stack-trace__0 _g170716_))
                ((let () (declare (not safe)) (##fx= _g170717_ 2))
                 (apply with-exception-stack-trace__% _g170716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g170716_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont169140%_ _%exn169141%_ _%error-port169142%_)
        (let ((_%out169144%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out169144%_))
          (display '"*** Unhandled exception in " _%out169144%_)
          (display (current-thread) _%out169144%_)
          (newline _%out169144%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn169141%_ _%out169144%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn169141%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out169144%_)
                (newline _%out169144%_)
                (display-continuation-backtrace _%cont169140%_ _%out169144%_)))
          (let ((__tmp170718 (get-output-string _%out169144%_)))
            (declare (not safe))
            (##write-string __tmp170718 _%error-port169142%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont169149%_ _%exn169150%_)
        (let ((_%error-port169152%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont169149%_
           _%exn169150%_
           _%error-port169152%_))))
    (define dump-stack-trace!
      (lambda _g170719_
        (let ((_g170720_ (let () (declare (not safe)) (##length _g170719_))))
          (cond ((let () (declare (not safe)) (##fx= _g170720_ 2))
                 (apply dump-stack-trace!__0 _g170719_))
                ((let () (declare (not safe)) (##fx= _g170720_ 3))
                 (apply dump-stack-trace!__% _g170719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g170719_))))))
    (define __thread-dead?
      (lambda (_%thread169127%_)
        (let ((_%thread169130%_ _%thread169127%_))
          (not (macro-thread-end-condvar _%thread169130%_)))))
    (define thread-dead?
      (lambda (_%thread169113%_)
        (if (thread? _%thread169113%_)
            (let ((_%thread169117%_ _%thread169113%_))
              (__thread-dead? _%thread169117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread169113%_)
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
