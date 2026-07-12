(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1783878476)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk170073%_ _%name170074%_)
        (let* ((_%thunk170077%_ _%thunk170073%_)
               (_%name170085%_ _%name170074%_))
          (make-thread
           (lambda () (thread-main _%thunk170077%_))
           _%name170085%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk170048%_ _%name170049%_)
        (if (procedure? _%thunk170048%_)
            (let ((_%thunk170053%_ _%thunk170048%_))
              (if (symbol? _%name170049%_)
                  (let ((_%name170063%_ _%name170049%_))
                    (__make-system-thread _%thunk170053%_ _%name170063%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name170049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk170048%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk169995%_ _%name169996%_)
        (let* ((_%thunk169999%_ _%thunk169995%_)
               (_%name170007%_ _%name169996%_))
          (thread-start!
           (let* ((_%thunk170016%_ _%thunk169999%_)
                  (_%name170019%_ _%name170007%_)
                  (_%thunk170024%_ _%thunk170016%_)
                  (_%name170038%_ _%name170019%_))
             (__make-system-thread _%thunk170024%_ _%name170038%_))))))
    (define system-thread!
      (lambda (_%thunk169970%_ _%name169971%_)
        (if (procedure? _%thunk169970%_)
            (let ((_%thunk169975%_ _%thunk169970%_))
              (if (symbol? _%name169971%_)
                  (let ((_%name169985%_ _%name169971%_))
                    (__system-thread! _%thunk169975%_ _%name169985%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name169971%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk169970%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk169949%_ _%name169950%_)
        (let* ((_%thunk169953%_ _%thunk169949%_)
               (_%name169961%_ _%name169950%_))
          (spawn-actor
           _%thunk169953%_
           '()
           _%name169961%_
           (system-thread-group)))))
    (define system-actor!
      (lambda (_%thunk169924%_ _%name169925%_)
        (if (procedure? _%thunk169924%_)
            (let ((_%thunk169929%_ _%thunk169924%_))
              (if (symbol? _%name169925%_)
                  (let ((_%name169939%_ _%name169925%_))
                    (__system-actor! _%thunk169929%_ _%name169939%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name169925%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk169924%_)
              '#!void))))
    (define __spawn
      (lambda (_%f169911%_ . _%args169912%_)
        (let ((_%f169915%_ _%f169911%_))
          (spawn-actor _%f169915%_ _%args169912%_ '#!void '#f))))
    (define spawn
      (lambda (_%f169896%_ . _%args169897%_)
        (if (procedure? _%f169896%_)
            (let ((_%f169901%_ _%f169896%_))
              (declare (not safe))
              (##apply __spawn _%f169901%_ _%args169897%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f169896%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name169882%_ _%f169883%_ . _%args169884%_)
        (let ((_%f169887%_ _%f169883%_))
          (spawn-actor _%f169887%_ _%args169884%_ _%name169882%_ '#f))))
    (define spawn/name
      (lambda (_%name169866%_ _%f169867%_ . _%args169868%_)
        (if (procedure? _%f169867%_)
            (let ((_%f169872%_ _%f169867%_))
              (declare (not safe))
              (##apply __spawn/name _%name169866%_ _%f169872%_ _%args169868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f169867%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name169850%_ _%f169851%_ . _%args169852%_)
        (let* ((_%f169855%_ _%f169851%_)
               (_%tgroup169864%_ (make-thread-group _%name169850%_)))
          (spawn-actor
           _%f169855%_
           _%args169852%_
           _%name169850%_
           _%tgroup169864%_))))
    (define spawn/group
      (lambda (_%name169834%_ _%f169835%_ . _%args169836%_)
        (if (procedure? _%f169835%_)
            (let ((_%f169840%_ _%f169835%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name169834%_
                       _%f169840%_
                       _%args169836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f169835%_)
              '#!void))))
    (define spawn-actor
      (lambda (_%f169782%_ _%args169783%_ _%name169784%_ _%tgroup169785%_)
        (let* ((_%thunk169789%_
                (if (null? _%args169783%_)
                    _%f169782%_
                    (lambda () (apply _%f169782%_ _%args169783%_))))
               (_%thunk169825%_
                (lambda ()
                  (let* ((_%thunk169792%_ _%thunk169789%_)
                         (_%error-port169795%_ (current-error-port)))
                    (if (procedure? _%thunk169792%_)
                        (let* ((_%thunk169800%_ _%thunk169792%_)
                               (_%error-port169815%_ _%error-port169795%_))
                          (__with-exception-stack-trace__%
                           _%thunk169800%_
                           _%error-port169815%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/thread
                           'contract:
                           'procedure?
                           'value:
                           _%thunk169792%_)
                          '#!void)))))
               (_%tgroup169830%_
                (let ((_%$e169827%_ _%tgroup169785%_))
                  (if _%$e169827%_ _%$e169827%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk169825%_))
            _%name169784%_
            _%tgroup169830%_)))))
    (define spawn-thread__%
      (lambda (_%thunk169759%_ _%name169760%_ _%tgroup169761%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk169759%_))
          _%name169760%_
          _%tgroup169761%_))))
    (define spawn-thread__0
      (lambda (_%thunk169767%_)
        (let* ((_%name169769%_ absent-obj) (_%tgroup169771%_ absent-obj))
          (spawn-thread__% _%thunk169767%_ _%name169769%_ _%tgroup169771%_))))
    (define spawn-thread__1
      (lambda (_%thunk169773%_ _%name169774%_)
        (let ((_%tgroup169776%_ absent-obj))
          (spawn-thread__% _%thunk169773%_ _%name169774%_ _%tgroup169776%_))))
    (define spawn-thread
      (lambda _g170382_
        (let ((_g170383_ (let () (declare (not safe)) (##length _g170382_))))
          (cond ((let () (declare (not safe)) (##fx= _g170383_ 1))
                 (apply spawn-thread__0 _g170382_))
                ((let () (declare (not safe)) (##fx= _g170383_ 2))
                 (apply spawn-thread__1 _g170382_))
                ((let () (declare (not safe)) (##fx= _g170383_ 3))
                 (apply spawn-thread__% _g170382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g170382_))))))
    (define thread-main
      (lambda (_%thunk169690%_)
        (let* ((_%handler169729%_
                (lambda (_%exn169692%_)
                  (let ((__tmp170384
                         (lambda (_%cont169694%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler169696%_ void)
                                      (_%thunk169700%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont169694%_
                                            _%exn169692%_))))
                                      (_%handler169705%_ _%handler169696%_)
                                      (_%thunk169719%_ _%thunk169700%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler169705%_
                                  _%thunk169719%_))
                               '#!void)
                           (let ((__tmp170385
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont169694%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp170385
                              ##primordial-exception-handler
                              _%exn169692%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp170384))))
               (_%thunk169732%_ _%thunk169690%_)
               (_%handler169737%_ _%handler169729%_))
          (if (procedure? _%thunk169732%_)
              (let ((_%thunk169748%_ _%thunk169732%_))
                (declare (not safe))
                (__with-exception-handler _%handler169737%_ _%thunk169748%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk169732%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key169646%_ _%default169647%_)
        (let* ((_%tab169649%_ (thread-local-table))
               (_%h169651%_ _%tab169649%_)
               (_%key169654%_ _%key169646%_)
               (_%default169657%_ _%default169647%_)
               (_%h169664%_
                (let ((_%$obj169661%_ _%h169651%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169661%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169661%_)))
                           '#t)
                      _%$obj169661%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169661%_)))))
               (_%h169666%_ _%h169664%_))
          (declare (not safe))
          (__hash-ref__% _%h169666%_ _%key169654%_ _%default169657%_))))
    (define thread-local-ref__0
      (lambda (_%key169683%_)
        (let ((_%default169685%_ absent-obj))
          (thread-local-ref__% _%key169683%_ _%default169685%_))))
    (define thread-local-ref
      (lambda _g170386_
        (let ((_g170387_ (let () (declare (not safe)) (##length _g170386_))))
          (cond ((let () (declare (not safe)) (##fx= _g170387_ 1))
                 (apply thread-local-ref__0 _g170386_))
                ((let () (declare (not safe)) (##fx= _g170387_ 2))
                 (apply thread-local-ref__% _g170386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g170386_))))))
    (define thread-local-get
      (lambda (_%key169643%_) (thread-local-ref__% _%key169643%_ '#f)))
    (define thread-local-set!
      (lambda (_%key169609%_ _%value169610%_)
        (let* ((_%tab169612%_ (thread-local-table))
               (_%h169614%_ _%tab169612%_)
               (_%key169617%_ _%key169609%_)
               (_%value169620%_ _%value169610%_)
               (_%h169627%_
                (let ((_%$obj169624%_ _%h169614%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169624%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169624%_)))
                           '#t)
                      _%$obj169624%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169624%_)))))
               (_%h169629%_ _%h169627%_))
          (declare (not safe))
          (__hash-put! _%h169629%_ _%key169617%_ _%value169620%_))))
    (define thread-local-delete!
      (lambda (_%key169580%_)
        (let* ((_%tab169582%_ (thread-local-table))
               (_%h169584%_ _%tab169582%_)
               (_%key169587%_ _%key169580%_)
               (_%h169594%_
                (let ((_%$obj169591%_ _%h169584%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169591%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169591%_)))
                           '#t)
                      _%$obj169591%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169591%_)))))
               (_%h169596%_ _%h169594%_))
          (declare (not safe))
          (__hash-remove! _%h169596%_ _%key169587%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr169505%_ (current-thread)))
          (if (actor-thread? _%thr169505%_)
              (let ((_%$e169508%_ (actor-thread-locals _%thr169505%_)))
                (if _%$e169508%_
                    _%$e169508%_
                    (let ((_%tab169512%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr169505%_ _%tab169512%_)
                      _%tab169512%_)))
              (if (eq? _%thr169505%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e169542%_
                           (let* ((_%h169516%_ __thread-locals)
                                  (_%key169519%_ _%thr169505%_)
                                  (_%h169526%_
                                   (let ((_%$obj169523%_ _%h169516%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj169523%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj169523%_)))
                                              '#t)
                                         _%$obj169523%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj169523%_)))))
                                  (_%h169528%_ _%h169526%_))
                             (declare (not safe))
                             (__hash-get _%h169528%_ _%key169519%_))))
                      (if _%$e169542%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e169542%_)
                          (let ((_%tab169548%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h169550%_ __thread-locals)
                                   (_%key169553%_ _%thr169505%_)
                                   (_%value169556%_ _%tab169548%_)
                                   (_%h169563%_
                                    (let ((_%$obj169560%_ _%h169550%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj169560%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj169560%_)))
                                               '#t)
                                          _%$obj169560%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj169560%_)))))
                                   (_%h169565%_ _%h169563%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h169565%_
                               _%key169553%_
                               _%value169556%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab169548%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value169491%_)
        (let ((_%new-value169494%_ _%new-value169491%_))
          (set! __unhandled-actor-exception-hook _%new-value169494%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value169470%_)
        (if (or (not _%new-value169470%_) (procedure? _%new-value169470%_))
            (let ((_%new-value169481%_ _%new-value169470%_))
              (__unhandled-actor-exception-hook-set! _%new-value169481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value169470%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx169377%_ _%proc169378%_)
        (let* ((_%mx169381%_ _%mx169377%_)
               (_%proc169389%_ _%proc169378%_)
               (_%handler169398%_ (current-exception-handler))
               (_%handler169437%_
                (lambda (_%e169400%_)
                  (let* ((_%handler169402%_ void)
                         (_%thunk169406%_
                          (lambda ()
                            (mutex-unlock! _%mx169381%_)
                            (let ()
                              (declare (not safe))
                              (_%handler169398%_ _%e169400%_))))
                         (_%handler169411%_ _%handler169402%_)
                         (_%thunk169427%_ _%thunk169406%_))
                    (declare (not safe))
                    (__with-catch _%handler169411%_ _%thunk169427%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e169400%_))))
               (_%thunk169443%_
                (lambda ()
                  (mutex-lock! _%mx169381%_)
                  (let ((_%result169441%_
                         (let () (declare (not safe)) (_%proc169389%_))))
                    (mutex-unlock! _%mx169381%_)
                    _%result169441%_)))
               (_%handler169448%_ _%handler169437%_)
               (_%thunk169459%_ _%thunk169443%_))
          (declare (not safe))
          (__with-exception-handler _%handler169448%_ _%thunk169459%_))))
    (define with-lock
      (lambda (_%mx169352%_ _%proc169353%_)
        (if (mutex? _%mx169352%_)
            (let ((_%mx169357%_ _%mx169352%_))
              (if (procedure? _%proc169353%_)
                  (let ((_%proc169367%_ _%proc169353%_))
                    (__with-lock _%mx169357%_ _%proc169367%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@135.32-135.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc169353%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@135.18-135.20"
               'contract:
               'mutex?
               'value:
               _%mx169352%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx169329%_ _%proc169330%_)
        (let* ((_%mx169333%_ _%mx169329%_) (_%proc169341%_ _%proc169330%_))
          (let ((__tmp170389 (lambda () (mutex-lock! _%mx169333%_)))
                (__tmp170388 (lambda () (mutex-unlock! _%mx169333%_))))
            (declare (not safe))
            (##dynamic-wind __tmp170389 _%proc169341%_ __tmp170388)))))
    (define with-dynamic-lock
      (lambda (_%mx169304%_ _%proc169305%_)
        (if (mutex? _%mx169304%_)
            (let ((_%mx169309%_ _%mx169304%_))
              (if (procedure? _%proc169305%_)
                  (let ((_%proc169319%_ _%proc169305%_))
                    (__with-dynamic-lock _%mx169309%_ _%proc169319%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@151.40-151.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc169305%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@151.26-151.28"
               'contract:
               'mutex?
               'value:
               _%mx169304%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk169235%_ _%error-port169236%_)
        (let* ((_%thunk169239%_ _%thunk169235%_)
               (_%error-port169247%_ _%error-port169236%_)
               (_%handler169262%_
                (let ((_%E169256%_ (current-exception-handler)))
                  (lambda (_%exn169258%_)
                    (let ((__tmp170390
                           (lambda (_%cont169260%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont169260%_
                                  _%exn169258%_
                                  _%error-port169247%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E169256%_ _%exn169258%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp170390)))))
               (_%thunk169265%_ _%thunk169239%_)
               (_%handler169270%_ _%handler169262%_)
               (_%thunk169284%_ _%thunk169265%_))
          (declare (not safe))
          (__with-exception-handler _%handler169270%_ _%thunk169284%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk169297%_)
        (let ((_%error-port169299%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk169297%_
           _%error-port169299%_))))
    (define __with-exception-stack-trace
      (lambda _g170391_
        (let ((_g170392_ (let () (declare (not safe)) (##length _g170391_))))
          (cond ((let () (declare (not safe)) (##fx= _g170392_ 1))
                 (apply __with-exception-stack-trace__0 _g170391_))
                ((let () (declare (not safe)) (##fx= _g170392_ 2))
                 (apply __with-exception-stack-trace__% _g170391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g170391_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk169199%_ _%error-port169200%_)
        (if (procedure? _%thunk169199%_)
            (let ((_%thunk169204%_ _%thunk169199%_))
              (if (port? _%error-port169200%_)
                  (let ((_%error-port169214%_ _%error-port169200%_))
                    (__with-exception-stack-trace__%
                     _%thunk169204%_
                     _%error-port169214%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@159.35-159.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port169200%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@158.35-158.40"
               'contract:
               'procedure?
               'value:
               _%thunk169199%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk169227%_)
        (let ((_%error-port169229%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk169227%_
           _%error-port169229%_))))
    (define with-exception-stack-trace
      (lambda _g170393_
        (let ((_g170394_ (let () (declare (not safe)) (##length _g170393_))))
          (cond ((let () (declare (not safe)) (##fx= _g170394_ 1))
                 (apply with-exception-stack-trace__0 _g170393_))
                ((let () (declare (not safe)) (##fx= _g170394_ 2))
                 (apply with-exception-stack-trace__% _g170393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g170393_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont169180%_ _%exn169181%_ _%error-port169182%_)
        (let ((_%out169184%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out169184%_))
          (display '"*** Unhandled exception in " _%out169184%_)
          (display (current-thread) _%out169184%_)
          (newline _%out169184%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn169181%_ _%out169184%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn169181%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out169184%_)
                (newline _%out169184%_)
                (display-continuation-backtrace _%cont169180%_ _%out169184%_)))
          (let ((__tmp170395 (get-output-string _%out169184%_)))
            (declare (not safe))
            (##write-string __tmp170395 _%error-port169182%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont169189%_ _%exn169190%_)
        (let ((_%error-port169192%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont169189%_
           _%exn169190%_
           _%error-port169192%_))))
    (define dump-stack-trace!
      (lambda _g170396_
        (let ((_g170397_ (let () (declare (not safe)) (##length _g170396_))))
          (cond ((let () (declare (not safe)) (##fx= _g170397_ 2))
                 (apply dump-stack-trace!__0 _g170396_))
                ((let () (declare (not safe)) (##fx= _g170397_ 3))
                 (apply dump-stack-trace!__% _g170396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g170396_))))))
    (define __thread-dead?
      (lambda (_%thread169167%_)
        (let ((_%thread169170%_ _%thread169167%_))
          (not (macro-thread-end-condvar _%thread169170%_)))))
    (define thread-dead?
      (lambda (_%thread169153%_)
        (if (thread? _%thread169153%_)
            (let ((_%thread169157%_ _%thread169153%_))
              (__thread-dead? _%thread169157%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@185.21-185.27"
               'contract:
               'thread?
               'value:
               _%thread169153%_)
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
