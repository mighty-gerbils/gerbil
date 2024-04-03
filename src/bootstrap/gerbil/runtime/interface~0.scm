(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712124234)
  (begin
    (define CastError::t
      (let ((__tmp101371 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101371
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101364%_
        (apply make-instance CastError::t _%$args101364%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where101238%_ _%message101239%_ . _%irritants101240%_)
        (let ((__tmp101372
               (let ((__obj101367
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101367
                  _%message101239%_
                  'where:
                  _%where101238%_
                  'irritants:
                  _%irritants101240%_)
                 __obj101367)))
          (declare (not safe))
          (raise __tmp101372))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101374 (list)) (__tmp101373 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101374
         '(__object)
         __tmp101373
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp101376 (list))
            (__tmp101375
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101376
         '(type methods)
         __tmp101375
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101235%_
        (apply make-instance interface-descriptor::t _%$args101235%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define __interface-hash-key
      (lambda (_%key101233%_)
        (let ((__tmp101378
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101233%_))))
              (__tmp101377
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101233%_)))))
          (declare (not safe))
          (##fxxor __tmp101378 __tmp101377))))
    (define __interface-test-key
      (lambda (_%a101230%_ _%b101231%_)
        (if (let ((__tmp101380
                   (let () (declare (not safe)) (##car _%a101230%_)))
                  (__tmp101379
                   (let () (declare (not safe)) (##car _%b101231%_))))
              (declare (not safe))
              (##eq? __tmp101380 __tmp101379))
            (let ((__tmp101382
                   (let () (declare (not safe)) (##cdr _%a101230%_)))
                  (__tmp101381
                   (let () (declare (not safe)) (##cdr _%b101231%_))))
              (declare (not safe))
              (##eq? __tmp101382 __tmp101381))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101211%_ _%seed101213%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101211%_
           __interface-hash-key
           __interface-test-key
           _%seed101213%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101219%_ '#f) (_%seed101221%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101219%_ _%seed101221%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101223%_)
        (let ((_%seed101225%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101223%_ _%seed101225%_))))
    (define make-prototype-table
      (lambda _g101384_
        (let ((_g101383_ (let () (declare (not safe)) (##length _g101384_))))
          (cond ((let () (declare (not safe)) (##fx= _g101383_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101384_))
                ((let () (declare (not safe)) (##fx= _g101383_ 1))
                 (apply (lambda (_%size-hint101223%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101223%_)))
                        _g101384_))
                ((let () (declare (not safe)) (##fx= _g101383_ 2))
                 (apply (lambda (_%size-hint101227%_ _%seed101228%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101227%_
                             _%seed101228%_)))
                        _g101384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101384_))))))
    (define prototype-table-ref
      (lambda (_%tab101164%_ _%key101165%_ _%default101166%_)
        (let ((_%table101168%_
               (let () (declare (not safe)) (&raw-table-table _%tab101164%_)))
              (_%seed101169%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101164%_))))
          (let* ((_%h101171%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101165%_))
                         _%seed101169%_))
                 (_%size101174%_ (vector-length _%table101168%_))
                 (_%entries101177%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101174%_ '2)))
                 (_%start101180%_
                  (let ((__tmp101385
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101171%_ _%entries101177%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101385 '1))))
            (let _%loop101184%_ ((_%probe101187%_ _%start101180%_)
                                 (_%i101189%_ '1)
                                 (_%deleted101191%_ '#f))
              (let ((_%k101194%_ (vector-ref _%table101168%_ _%probe101187%_)))
                (if (eq? _%k101194%_ (macro-unused-obj))
                    (let () _%default101166%_)
                    (if (eq? _%k101194%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101388
                                 (let ((_%next-probe101199%_
                                        (fx+ _%start101180%_
                                             _%i101189%_
                                             (fx* _%i101189%_ _%i101189%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101199%_
                                    _%size101174%_)))
                                (__tmp101387
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101189%_ '1)))
                                (__tmp101386
                                 (let ((_%$e101202%_ _%deleted101191%_))
                                   (if _%$e101202%_
                                       _%$e101202%_
                                       _%probe101187%_))))
                            (declare (not safe))
                            (_%loop101184%_
                             __tmp101388
                             __tmp101387
                             __tmp101386)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101165%_ _%k101194%_))
                            (let ()
                              (vector-ref
                               _%table101168%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101187%_ '1))))
                            (let ()
                              (let ((__tmp101390
                                     (let ((_%next-probe101207%_
                                            (fx+ _%start101180%_
                                                 _%i101189%_
                                                 (fx* _%i101189%_
                                                      _%i101189%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101207%_
                                        _%size101174%_)))
                                    (__tmp101389
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101189%_ '1))))
                                (declare (not safe))
                                (_%loop101184%_
                                 __tmp101390
                                 __tmp101389
                                 _%deleted101191%_))))))))))))
    (define prototype-table-set!
      (lambda (_%tab101160%_ _%key101161%_ _%value101162%_)
        (if (let ((__tmp101393
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101160%_)))
                  (__tmp101391
                   (let ((__tmp101392
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101160%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101392 '4))))
              (declare (not safe))
              (##fx< __tmp101393 __tmp101391))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101160%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101160%_
           _%key101161%_
           _%value101162%_))))
    (define __prototype-table-set!
      (lambda (_%tab101111%_ _%key101112%_ _%value101113%_)
        (let ((_%table101116%_
               (let () (declare (not safe)) (&raw-table-table _%tab101111%_)))
              (_%seed101117%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101111%_))))
          (let* ((_%h101119%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101112%_))
                         _%seed101117%_))
                 (_%size101122%_ (vector-length _%table101116%_))
                 (_%entries101125%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101122%_ '2)))
                 (_%start101128%_
                  (let ((__tmp101394
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101119%_ _%entries101125%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101394 '1))))
            (let _%loop101132%_ ((_%probe101135%_ _%start101128%_)
                                 (_%i101137%_ '1)
                                 (_%deleted101139%_ '#f))
              (let ((_%k101142%_ (vector-ref _%table101116%_ _%probe101135%_)))
                (if (eq? _%k101142%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101139%_
                          (begin
                            (vector-set!
                             _%table101116%_
                             _%deleted101139%_
                             _%key101112%_)
                            (vector-set!
                             _%table101116%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101139%_ '1))
                             _%value101113%_)
                            ((lambda ()
                               (let ((__tmp101395
                                      (let ((__tmp101396
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101111%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101396 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101111%_
                                  __tmp101395)))))
                          (begin
                            (vector-set!
                             _%table101116%_
                             _%probe101135%_
                             _%key101112%_)
                            (vector-set!
                             _%table101116%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101135%_ '1))
                             _%value101113%_)
                            ((lambda ()
                               (let ((__tmp101397
                                      (let ((__tmp101398
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101111%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101398 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101111%_
                                  __tmp101397))
                               (let ((__tmp101399
                                      (let ((__tmp101400
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101111%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101400 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101111%_
                                  __tmp101399)))))))
                    (if (eq? _%k101142%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101403
                                 (let ((_%next-probe101149%_
                                        (fx+ _%start101128%_
                                             _%i101137%_
                                             (fx* _%i101137%_ _%i101137%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101149%_
                                    _%size101122%_)))
                                (__tmp101402
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101137%_ '1)))
                                (__tmp101401
                                 (let ((_%$e101152%_ _%deleted101139%_))
                                   (if _%$e101152%_
                                       _%$e101152%_
                                       _%probe101135%_))))
                            (declare (not safe))
                            (_%loop101132%_
                             __tmp101403
                             __tmp101402
                             __tmp101401)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101112%_ _%k101142%_))
                            (let ()
                              (vector-set!
                               _%table101116%_
                               _%probe101135%_
                               _%key101112%_)
                              (vector-set!
                               _%table101116%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101135%_ '1))
                               _%value101113%_))
                            (let ()
                              (let ((__tmp101405
                                     (let ((_%next-probe101157%_
                                            (fx+ _%start101128%_
                                                 _%i101137%_
                                                 (fx* _%i101137%_
                                                      _%i101137%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101157%_
                                        _%size101122%_)))
                                    (__tmp101404
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101137%_ '1))))
                                (declare (not safe))
                                (_%loop101132%_
                                 __tmp101405
                                 __tmp101404
                                 _%deleted101139%_))))))))))))
    (define prototype-table-update!
      (lambda (_%tab101106%_
               _%key101107%_
               _%prototype-table-update!101108%_
               _%default101109%_)
        (if (let ((__tmp101408
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101106%_)))
                  (__tmp101406
                   (let ((__tmp101407
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101106%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101407 '4))))
              (declare (not safe))
              (##fx< __tmp101408 __tmp101406))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101106%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101106%_
           _%key101107%_
           _%prototype-table-update!101108%_
           _%default101109%_))))
    (define __prototype-table-update!
      (lambda (_%tab101056%_
               _%key101057%_
               _%prototype-table-update!101058%_
               _%default101059%_)
        (let ((_%table101062%_
               (let () (declare (not safe)) (&raw-table-table _%tab101056%_)))
              (_%seed101063%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101056%_))))
          (let* ((_%h101065%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101057%_))
                         _%seed101063%_))
                 (_%size101068%_ (vector-length _%table101062%_))
                 (_%entries101071%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101068%_ '2)))
                 (_%start101074%_
                  (let ((__tmp101409
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101065%_ _%entries101071%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101409 '1))))
            (let _%loop101078%_ ((_%probe101081%_ _%start101074%_)
                                 (_%i101083%_ '1)
                                 (_%deleted101085%_ '#f))
              (let ((_%k101088%_ (vector-ref _%table101062%_ _%probe101081%_)))
                (if (eq? _%k101088%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101085%_
                          (begin
                            (vector-set!
                             _%table101062%_
                             _%deleted101085%_
                             _%key101057%_)
                            (vector-set!
                             _%table101062%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101085%_ '1))
                             (_%prototype-table-update!101058%_
                              _%default101059%_))
                            ((lambda ()
                               (let ((__tmp101410
                                      (let ((__tmp101411
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101056%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101411 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101056%_
                                  __tmp101410)))))
                          (begin
                            (vector-set!
                             _%table101062%_
                             _%probe101081%_
                             _%key101057%_)
                            (vector-set!
                             _%table101062%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101081%_ '1))
                             (_%prototype-table-update!101058%_
                              _%default101059%_))
                            ((lambda ()
                               (let ((__tmp101412
                                      (let ((__tmp101413
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101056%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101413 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101056%_
                                  __tmp101412))
                               (let ((__tmp101414
                                      (let ((__tmp101415
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101056%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101415 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101056%_
                                  __tmp101414)))))))
                    (if (eq? _%k101088%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101418
                                 (let ((_%next-probe101095%_
                                        (fx+ _%start101074%_
                                             _%i101083%_
                                             (fx* _%i101083%_ _%i101083%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101095%_
                                    _%size101068%_)))
                                (__tmp101417
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101083%_ '1)))
                                (__tmp101416
                                 (let ((_%$e101098%_ _%deleted101085%_))
                                   (if _%$e101098%_
                                       _%$e101098%_
                                       _%probe101081%_))))
                            (declare (not safe))
                            (_%loop101078%_
                             __tmp101418
                             __tmp101417
                             __tmp101416)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101057%_ _%k101088%_))
                            (let ()
                              (vector-set!
                               _%table101062%_
                               _%probe101081%_
                               _%key101057%_)
                              (vector-set!
                               _%table101062%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101081%_ '1))
                               (_%prototype-table-update!101058%_
                                (vector-ref
                                 _%table101062%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101081%_ '1))))))
                            (let ()
                              (let ((__tmp101420
                                     (let ((_%next-probe101103%_
                                            (fx+ _%start101074%_
                                                 _%i101083%_
                                                 (fx* _%i101083%_
                                                      _%i101083%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101103%_
                                        _%size101068%_)))
                                    (__tmp101419
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101083%_ '1))))
                                (declare (not safe))
                                (_%loop101078%_
                                 __tmp101420
                                 __tmp101419
                                 _%deleted101085%_))))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab101011%_ _%key101013%_)
        (let ((_%table101016%_
               (let () (declare (not safe)) (&raw-table-table _%tab101011%_)))
              (_%seed101018%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101011%_))))
          (let* ((_%h101021%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101013%_))
                         _%seed101018%_))
                 (_%size101024%_ (vector-length _%table101016%_))
                 (_%entries101027%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101024%_ '2)))
                 (_%start101030%_
                  (let ((__tmp101421
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101021%_ _%entries101027%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101421 '1))))
            (let _%loop101034%_ ((_%probe101037%_ _%start101030%_)
                                 (_%i101039%_ '1))
              (let ((_%k101042%_ (vector-ref _%table101016%_ _%probe101037%_)))
                (if (eq? _%k101042%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101042%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101423
                                 (let ((_%next-probe101047%_
                                        (fx+ _%start101030%_
                                             _%i101039%_
                                             (fx* _%i101039%_ _%i101039%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101047%_
                                    _%size101024%_)))
                                (__tmp101422
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101039%_ '1))))
                            (declare (not safe))
                            (_%loop101034%_ __tmp101423 __tmp101422)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101013%_ _%k101042%_))
                            (let ()
                              (vector-set!
                               _%table101016%_
                               _%probe101037%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101016%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101037%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101424
                                        (let ((__tmp101425
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101011%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101425 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101011%_
                                    __tmp101424)))))
                            (let ()
                              (let ((__tmp101427
                                     (let ((_%next-probe101053%_
                                            (fx+ _%start101030%_
                                                 _%i101039%_
                                                 (fx* _%i101039%_
                                                      _%i101039%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101053%_
                                        _%size101024%_)))
                                    (__tmp101426
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101039%_ '1))))
                                (declare (not safe))
                                (_%loop101034%_
                                 __tmp101427
                                 __tmp101426))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101003%_)
        (let ((_%super101004101006%_
               (let () (declare (not safe)) (##type-super _%klass101003%_))))
          (if _%super101004101006%_
              (let ((_%super101009%_ _%super101004101006%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101009%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100888%_ _%klass100889%_ _%obj-klass100890%_)
        (let ((_%method-table100892%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100890%_))))
          (let _%loop100895%_ ((_%rest100898%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100888%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100900%_ '0)
                               (_%methods100902%_ '()))
            (let* ((_%rest100904100912%_ _%rest100898%_)
                   (_%else100906100974%_
                    (lambda ()
                      (let ((_%prototype100920%_
                             (let ((__obj101369
                                    (let ((__tmp101428
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100900%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100889%_
                                       __tmp101428))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101369 '#f))
                               __obj101369)))
                        (let _%loop100923%_ ((_%rest100925%_ _%methods100902%_)
                                             (_%off100926%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100900%_ '1))))
                          (let* ((_%rest100928100936%_ _%rest100925%_)
                                 (_%else100930100955%_
                                  (lambda ()
                                    (let ((_%prototype-key100944%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100889%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100890%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100949%_ ()
                                          (if (let ((__tmp101429
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101429 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100949%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100944%_
                                         _%prototype100920%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100953%_)
                                         _%prototype100953%_)
                                       _%prototype100920%_))))
                                 (_%K100932100962%_
                                  (lambda (_%rest100958%_ _%method100959%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100920%_
                                       _%method100959%_
                                       _%off100926%_
                                       _%klass100889%_
                                       '#f))
                                    (let ((__tmp101430
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100926%_ '1))))
                                      (declare (not safe))
                                      (_%loop100923%_
                                       _%rest100958%_
                                       __tmp101430)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100928100936%_))
                                (let ((_%hd100933100965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100928100936%_)))
                                      (_%tl100934100967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100928100936%_))))
                                  (let* ((_%method100970%_ _%hd100933100965%_)
                                         (_%rest100972%_ _%tl100934100967%_))
                                    (declare (not safe))
                                    (_%K100932100962%_
                                     _%rest100972%_
                                     _%method100970%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100930100955%_))))))))
                   (_%K100908100991%_
                    (lambda (_%rest100977%_ _%method-name100978%_)
                      (let ((_%$e100981%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100892%_
                                _%method-name100978%_
                                '#f))))
                        (if _%$e100981%_
                            ((lambda (_%method100984%_)
                               (let ((__tmp101432
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100900%_ '1)))
                                     (__tmp101431
                                      (cons _%method100984%_
                                            _%methods100902%_)))
                                 (declare (not safe))
                                 (_%loop100895%_
                                  _%rest100977%_
                                  __tmp101432
                                  __tmp101431)))
                             _%$e100981%_)
                            (let ()
                              ((lambda (_%klass100987%_
                                        _%obj-klass100988%_
                                        _%method-name100989%_)
                                 (let ((__tmp101434
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass100987%_)))
                                       (__tmp101433
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass100988%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass100987%_
                                    'interface-id:
                                    __tmp101434
                                    'class:
                                    _%obj-klass100988%_
                                    'class-id:
                                    __tmp101433
                                    'method:
                                    _%method-name100989%_)))
                               _%klass100889%_
                               _%obj-klass100890%_
                               _%method-name100978%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100904100912%_))
                  (let ((_%hd100909100994%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100904100912%_)))
                        (_%tl100910100996%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100904100912%_))))
                    (let* ((_%method-name100999%_ _%hd100909100994%_)
                           (_%rest101001%_ _%tl100910100996%_))
                      (declare (not safe))
                      (_%K100908100991%_
                       _%rest101001%_
                       _%method-name100999%_)))
                  (let () (declare (not safe)) (_%else100906100974%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor100773%_ _%klass100774%_ _%obj-klass100775%_)
        (let ((_%method-table100777%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100775%_))))
          (let _%loop100780%_ ((_%rest100783%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100773%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100785%_ '0)
                               (_%methods100787%_ '()))
            (let* ((_%rest100789100797%_ _%rest100783%_)
                   (_%else100791100859%_
                    (lambda ()
                      (let ((_%prototype100805%_
                             (let ((__obj101370
                                    (let ((__tmp101435
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100785%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100774%_
                                       __tmp101435))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101370 '#f))
                               __obj101370)))
                        (let _%loop100808%_ ((_%rest100810%_ _%methods100787%_)
                                             (_%off100811%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100785%_ '1))))
                          (let* ((_%rest100813100821%_ _%rest100810%_)
                                 (_%else100815100840%_
                                  (lambda ()
                                    (let ((_%prototype-key100829%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100774%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100775%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100834%_ ()
                                          (if (let ((__tmp101436
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101436 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100834%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100829%_
                                         _%prototype100805%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100838%_)
                                         _%prototype100838%_)
                                       _%prototype100805%_))))
                                 (_%K100817100847%_
                                  (lambda (_%rest100843%_ _%method100844%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100805%_
                                       _%method100844%_
                                       _%off100811%_
                                       _%klass100774%_
                                       '#f))
                                    (let ((__tmp101437
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100811%_ '1))))
                                      (declare (not safe))
                                      (_%loop100808%_
                                       _%rest100843%_
                                       __tmp101437)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100813100821%_))
                                (let ((_%hd100818100850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100813100821%_)))
                                      (_%tl100819100852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100813100821%_))))
                                  (let* ((_%method100855%_ _%hd100818100850%_)
                                         (_%rest100857%_ _%tl100819100852%_))
                                    (declare (not safe))
                                    (_%K100817100847%_
                                     _%rest100857%_
                                     _%method100855%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100815100840%_))))))))
                   (_%K100793100876%_
                    (lambda (_%rest100862%_ _%method-name100863%_)
                      (let ((_%$e100866%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100777%_
                                _%method-name100863%_
                                '#f))))
                        (if _%$e100866%_
                            ((lambda (_%method100869%_)
                               (let ((__tmp101439
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100785%_ '1)))
                                     (__tmp101438
                                      (cons _%method100869%_
                                            _%methods100787%_)))
                                 (declare (not safe))
                                 (_%loop100780%_
                                  _%rest100862%_
                                  __tmp101439
                                  __tmp101438)))
                             _%$e100866%_)
                            (let ()
                              ((lambda (_%klass100872%_
                                        _%obj-klass100873%_
                                        _%method-name100874%_)
                                 '#f)
                               _%klass100774%_
                               _%obj-klass100775%_
                               _%method-name100863%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100789100797%_))
                  (let ((_%hd100794100879%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100789100797%_)))
                        (_%tl100795100881%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100789100797%_))))
                    (let* ((_%method-name100884%_ _%hd100794100879%_)
                           (_%rest100886%_ _%tl100795100881%_))
                      (declare (not safe))
                      (_%K100793100876%_
                       _%rest100886%_
                       _%method-name100884%_)))
                  (let () (declare (not safe)) (_%else100791100859%_))))))))
    (define cast
      (lambda (_%descriptor100731%_ _%obj100733%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100737%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100731%_ '1 '#f '#f)))
               (_%klass-id100740%_
                (let () (declare (not safe)) (##type-id _%klass100737%_)))
               (_%obj-klass100743%_
                (let () (declare (not safe)) (class-of _%obj100733%_)))
               (_%obj-klass-id100746%_
                (let () (declare (not safe)) (##type-id _%obj-klass100743%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100740%_ _%obj-klass-id100746%_))
              (let () _%obj100733%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100743%_))
                  (let ()
                    (let ((__tmp101440
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100733%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (cast _%descriptor100731%_ __tmp101440)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100755%_ ()
                        (if (let ((__tmp101441
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101441 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100755%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100740%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100746%_))
                    (let ((_%prototype100766%_
                           (let ((_%$e100759%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100759%_
                                 ((lambda (_%prototype100762%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100762%_)
                                  _%$e100759%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (create-prototype
                                      _%descriptor100731%_
                                      _%klass100737%_
                                      _%obj-klass100743%_)))))))
                      ((lambda (_%prototype100768%_ _%obj100769%_)
                         (let ((_%instance100771%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100768%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100771%_
                              _%obj100769%_
                              '1
                              '#f
                              'cast))
                           _%instance100771%_))
                       _%prototype100766%_
                       _%obj100733%_))))))))
    (define try-cast
      (lambda (_%descriptor100689%_ _%obj100691%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100695%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100689%_ '1 '#f '#f)))
               (_%klass-id100698%_
                (let () (declare (not safe)) (##type-id _%klass100695%_)))
               (_%obj-klass100701%_
                (let () (declare (not safe)) (class-of _%obj100691%_)))
               (_%obj-klass-id100704%_
                (let () (declare (not safe)) (##type-id _%obj-klass100701%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100698%_ _%obj-klass-id100704%_))
              (let () _%obj100691%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100701%_))
                  (let ()
                    (let ((__tmp101442
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100691%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (try-cast _%descriptor100689%_ __tmp101442)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100713%_ ()
                        (if (let ((__tmp101443
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101443 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100713%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100698%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100704%_))
                    (let ((_%prototype100724%_
                           (let ((_%$e100717%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100717%_
                                 ((lambda (_%prototype100720%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100720%_)
                                  _%$e100717%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _%descriptor100689%_
                                      _%klass100695%_
                                      _%obj-klass100701%_)))))))
                      ((lambda (_%prototype100726%_ _%obj100727%_)
                         (if _%prototype100726%_
                             (let ((_%instance100729%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100726%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100729%_
                                  _%obj100727%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100729%_)
                             '#f))
                       _%prototype100724%_
                       _%obj100691%_))))))))
    (define satisfies?
      (lambda (_%descriptor100649%_ _%obj100651%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100655%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100649%_ '1 '#f '#f)))
               (_%klass-id100658%_
                (let () (declare (not safe)) (##type-id _%klass100655%_)))
               (_%obj-klass100661%_
                (let () (declare (not safe)) (class-of _%obj100651%_)))
               (_%obj-klass-id100664%_
                (let () (declare (not safe)) (##type-id _%obj-klass100661%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100658%_ _%obj-klass-id100664%_))
              (let () _%obj100651%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100661%_))
                  (let ()
                    (let ((__tmp101444
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100651%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (satisfies? _%descriptor100649%_ __tmp101444)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100673%_ ()
                        (if (let ((__tmp101445
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101445 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100673%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100658%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100664%_))
                    (let ((_%prototype100684%_
                           (let ((_%$e100677%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100677%_
                                 ((lambda (_%prototype100680%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100680%_)
                                  _%$e100677%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (let ()
                                     (declare (not safe))
                                     (try-create-prototype
                                      _%descriptor100649%_
                                      _%klass100655%_
                                      _%obj-klass100661%_)))))))
                      ((lambda (_%prototype100686%_ _%obj100687%_)
                         (if _%prototype100686%_ '#t '#f))
                       _%prototype100684%_
                       _%obj100651%_))))))))))
