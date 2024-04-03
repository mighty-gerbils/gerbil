(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712121897)
  (begin
    (define CastError::t
      (let ((__tmp101336 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101336
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101329%_
        (apply make-instance CastError::t _%$args101329%_)))
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
      (lambda (_%where101203%_ _%message101204%_ . _%irritants101205%_)
        (let ((__tmp101337
               (let ((__obj101332
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101332
                  _%message101204%_
                  'where:
                  _%where101203%_
                  'irritants:
                  _%irritants101205%_)
                 __obj101332)))
          (declare (not safe))
          (raise __tmp101337))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101339 (list)) (__tmp101338 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101339
         '(__object)
         __tmp101338
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
      (let ((__tmp101341 (list))
            (__tmp101340
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101341
         '(type methods)
         __tmp101340
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101200%_
        (apply make-instance interface-descriptor::t _%$args101200%_)))
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
      (lambda (_%key101198%_)
        (let ((__tmp101343
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101198%_))))
              (__tmp101342
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101198%_)))))
          (declare (not safe))
          (##fxxor __tmp101343 __tmp101342))))
    (define __interface-test-key
      (lambda (_%a101195%_ _%b101196%_)
        (if (let ((__tmp101345
                   (let () (declare (not safe)) (##car _%a101195%_)))
                  (__tmp101344
                   (let () (declare (not safe)) (##car _%b101196%_))))
              (declare (not safe))
              (##eq? __tmp101345 __tmp101344))
            (let ((__tmp101347
                   (let () (declare (not safe)) (##cdr _%a101195%_)))
                  (__tmp101346
                   (let () (declare (not safe)) (##cdr _%b101196%_))))
              (declare (not safe))
              (##eq? __tmp101347 __tmp101346))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101176%_ _%seed101178%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101176%_
           __interface-hash-key
           __interface-test-key
           _%seed101178%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101184%_ '#f) (_%seed101186%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101184%_ _%seed101186%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101188%_)
        (let ((_%seed101190%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101188%_ _%seed101190%_))))
    (define make-prototype-table
      (lambda _g101349_
        (let ((_g101348_ (let () (declare (not safe)) (##length _g101349_))))
          (cond ((let () (declare (not safe)) (##fx= _g101348_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101349_))
                ((let () (declare (not safe)) (##fx= _g101348_ 1))
                 (apply (lambda (_%size-hint101188%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101188%_)))
                        _g101349_))
                ((let () (declare (not safe)) (##fx= _g101348_ 2))
                 (apply (lambda (_%size-hint101192%_ _%seed101193%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101192%_
                             _%seed101193%_)))
                        _g101349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101349_))))))
    (define prototype-table-ref
      (lambda (_%tab101129%_ _%key101130%_ _%default101131%_)
        (let ((_%table101133%_
               (let () (declare (not safe)) (&raw-table-table _%tab101129%_)))
              (_%seed101134%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101129%_))))
          (let* ((_%h101136%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101130%_))
                         _%seed101134%_))
                 (_%size101139%_ (vector-length _%table101133%_))
                 (_%entries101142%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101139%_ '2)))
                 (_%start101145%_
                  (let ((__tmp101350
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101136%_ _%entries101142%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101350 '1))))
            (let _%loop101149%_ ((_%probe101152%_ _%start101145%_)
                                 (_%i101154%_ '1)
                                 (_%deleted101156%_ '#f))
              (let ((_%k101159%_ (vector-ref _%table101133%_ _%probe101152%_)))
                (if (eq? _%k101159%_ (macro-unused-obj))
                    (let () _%default101131%_)
                    (if (eq? _%k101159%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101353
                                 (let ((_%next-probe101164%_
                                        (fx+ _%start101145%_
                                             _%i101154%_
                                             (fx* _%i101154%_ _%i101154%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101164%_
                                    _%size101139%_)))
                                (__tmp101352
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101154%_ '1)))
                                (__tmp101351
                                 (let ((_%$e101167%_ _%deleted101156%_))
                                   (if _%$e101167%_
                                       _%$e101167%_
                                       _%probe101152%_))))
                            (declare (not safe))
                            (_%loop101149%_
                             __tmp101353
                             __tmp101352
                             __tmp101351)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101130%_ _%k101159%_))
                            (let ()
                              (vector-ref
                               _%table101133%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101152%_ '1))))
                            (let ()
                              (let ((__tmp101355
                                     (let ((_%next-probe101172%_
                                            (fx+ _%start101145%_
                                                 _%i101154%_
                                                 (fx* _%i101154%_
                                                      _%i101154%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101172%_
                                        _%size101139%_)))
                                    (__tmp101354
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101154%_ '1))))
                                (declare (not safe))
                                (_%loop101149%_
                                 __tmp101355
                                 __tmp101354
                                 _%deleted101156%_))))))))))))
    (define prototype-table-set!
      (lambda (_%tab101125%_ _%key101126%_ _%value101127%_)
        (if (let ((__tmp101358
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101125%_)))
                  (__tmp101356
                   (let ((__tmp101357
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101125%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101357 '4))))
              (declare (not safe))
              (##fx< __tmp101358 __tmp101356))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101125%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101125%_
           _%key101126%_
           _%value101127%_))))
    (define __prototype-table-set!
      (lambda (_%tab101076%_ _%key101077%_ _%value101078%_)
        (let ((_%table101081%_
               (let () (declare (not safe)) (&raw-table-table _%tab101076%_)))
              (_%seed101082%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101076%_))))
          (let* ((_%h101084%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101077%_))
                         _%seed101082%_))
                 (_%size101087%_ (vector-length _%table101081%_))
                 (_%entries101090%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101087%_ '2)))
                 (_%start101093%_
                  (let ((__tmp101359
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101084%_ _%entries101090%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101359 '1))))
            (let _%loop101097%_ ((_%probe101100%_ _%start101093%_)
                                 (_%i101102%_ '1)
                                 (_%deleted101104%_ '#f))
              (let ((_%k101107%_ (vector-ref _%table101081%_ _%probe101100%_)))
                (if (eq? _%k101107%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101104%_
                          (begin
                            (vector-set!
                             _%table101081%_
                             _%deleted101104%_
                             _%key101077%_)
                            (vector-set!
                             _%table101081%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101104%_ '1))
                             _%value101078%_)
                            ((lambda ()
                               (let ((__tmp101360
                                      (let ((__tmp101361
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101076%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101361 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101076%_
                                  __tmp101360)))))
                          (begin
                            (vector-set!
                             _%table101081%_
                             _%probe101100%_
                             _%key101077%_)
                            (vector-set!
                             _%table101081%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101100%_ '1))
                             _%value101078%_)
                            ((lambda ()
                               (let ((__tmp101362
                                      (let ((__tmp101363
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101076%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101363 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101076%_
                                  __tmp101362))
                               (let ((__tmp101364
                                      (let ((__tmp101365
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101076%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101365 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101076%_
                                  __tmp101364)))))))
                    (if (eq? _%k101107%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101368
                                 (let ((_%next-probe101114%_
                                        (fx+ _%start101093%_
                                             _%i101102%_
                                             (fx* _%i101102%_ _%i101102%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101114%_
                                    _%size101087%_)))
                                (__tmp101367
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101102%_ '1)))
                                (__tmp101366
                                 (let ((_%$e101117%_ _%deleted101104%_))
                                   (if _%$e101117%_
                                       _%$e101117%_
                                       _%probe101100%_))))
                            (declare (not safe))
                            (_%loop101097%_
                             __tmp101368
                             __tmp101367
                             __tmp101366)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101077%_ _%k101107%_))
                            (let ()
                              (vector-set!
                               _%table101081%_
                               _%probe101100%_
                               _%key101077%_)
                              (vector-set!
                               _%table101081%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101100%_ '1))
                               _%value101078%_))
                            (let ()
                              (let ((__tmp101370
                                     (let ((_%next-probe101122%_
                                            (fx+ _%start101093%_
                                                 _%i101102%_
                                                 (fx* _%i101102%_
                                                      _%i101102%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101122%_
                                        _%size101087%_)))
                                    (__tmp101369
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101102%_ '1))))
                                (declare (not safe))
                                (_%loop101097%_
                                 __tmp101370
                                 __tmp101369
                                 _%deleted101104%_))))))))))))
    (define prototype-table-update!
      (lambda (_%tab101071%_
               _%key101072%_
               _%prototype-table-update!101073%_
               _%default101074%_)
        (if (let ((__tmp101373
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101071%_)))
                  (__tmp101371
                   (let ((__tmp101372
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101071%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101372 '4))))
              (declare (not safe))
              (##fx< __tmp101373 __tmp101371))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101071%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101071%_
           _%key101072%_
           _%prototype-table-update!101073%_
           _%default101074%_))))
    (define __prototype-table-update!
      (lambda (_%tab101021%_
               _%key101022%_
               _%prototype-table-update!101023%_
               _%default101024%_)
        (let ((_%table101027%_
               (let () (declare (not safe)) (&raw-table-table _%tab101021%_)))
              (_%seed101028%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101021%_))))
          (let* ((_%h101030%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101022%_))
                         _%seed101028%_))
                 (_%size101033%_ (vector-length _%table101027%_))
                 (_%entries101036%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101033%_ '2)))
                 (_%start101039%_
                  (let ((__tmp101374
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101030%_ _%entries101036%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101374 '1))))
            (let _%loop101043%_ ((_%probe101046%_ _%start101039%_)
                                 (_%i101048%_ '1)
                                 (_%deleted101050%_ '#f))
              (let ((_%k101053%_ (vector-ref _%table101027%_ _%probe101046%_)))
                (if (eq? _%k101053%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101050%_
                          (begin
                            (vector-set!
                             _%table101027%_
                             _%deleted101050%_
                             _%key101022%_)
                            (vector-set!
                             _%table101027%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101050%_ '1))
                             (_%prototype-table-update!101023%_
                              _%default101024%_))
                            ((lambda ()
                               (let ((__tmp101375
                                      (let ((__tmp101376
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101021%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101376 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101021%_
                                  __tmp101375)))))
                          (begin
                            (vector-set!
                             _%table101027%_
                             _%probe101046%_
                             _%key101022%_)
                            (vector-set!
                             _%table101027%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101046%_ '1))
                             (_%prototype-table-update!101023%_
                              _%default101024%_))
                            ((lambda ()
                               (let ((__tmp101377
                                      (let ((__tmp101378
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101021%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101378 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101021%_
                                  __tmp101377))
                               (let ((__tmp101379
                                      (let ((__tmp101380
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101021%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101380 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101021%_
                                  __tmp101379)))))))
                    (if (eq? _%k101053%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101383
                                 (let ((_%next-probe101060%_
                                        (fx+ _%start101039%_
                                             _%i101048%_
                                             (fx* _%i101048%_ _%i101048%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101060%_
                                    _%size101033%_)))
                                (__tmp101382
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101048%_ '1)))
                                (__tmp101381
                                 (let ((_%$e101063%_ _%deleted101050%_))
                                   (if _%$e101063%_
                                       _%$e101063%_
                                       _%probe101046%_))))
                            (declare (not safe))
                            (_%loop101043%_
                             __tmp101383
                             __tmp101382
                             __tmp101381)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101022%_ _%k101053%_))
                            (let ()
                              (vector-set!
                               _%table101027%_
                               _%probe101046%_
                               _%key101022%_)
                              (vector-set!
                               _%table101027%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101046%_ '1))
                               (_%prototype-table-update!101023%_
                                (vector-ref
                                 _%table101027%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101046%_ '1))))))
                            (let ()
                              (let ((__tmp101385
                                     (let ((_%next-probe101068%_
                                            (fx+ _%start101039%_
                                                 _%i101048%_
                                                 (fx* _%i101048%_
                                                      _%i101048%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101068%_
                                        _%size101033%_)))
                                    (__tmp101384
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101048%_ '1))))
                                (declare (not safe))
                                (_%loop101043%_
                                 __tmp101385
                                 __tmp101384
                                 _%deleted101050%_))))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab100976%_ _%key100978%_)
        (let ((_%table100981%_
               (let () (declare (not safe)) (&raw-table-table _%tab100976%_)))
              (_%seed100983%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100976%_))))
          (let* ((_%h100986%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100978%_))
                         _%seed100983%_))
                 (_%size100989%_ (vector-length _%table100981%_))
                 (_%entries100992%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100989%_ '2)))
                 (_%start100995%_
                  (let ((__tmp101386
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100986%_ _%entries100992%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101386 '1))))
            (let _%loop100999%_ ((_%probe101002%_ _%start100995%_)
                                 (_%i101004%_ '1))
              (let ((_%k101007%_ (vector-ref _%table100981%_ _%probe101002%_)))
                (if (eq? _%k101007%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101007%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101388
                                 (let ((_%next-probe101012%_
                                        (fx+ _%start100995%_
                                             _%i101004%_
                                             (fx* _%i101004%_ _%i101004%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101012%_
                                    _%size100989%_)))
                                (__tmp101387
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101004%_ '1))))
                            (declare (not safe))
                            (_%loop100999%_ __tmp101388 __tmp101387)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100978%_ _%k101007%_))
                            (let ()
                              (vector-set!
                               _%table100981%_
                               _%probe101002%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100981%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101002%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101389
                                        (let ((__tmp101390
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab100976%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101390 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab100976%_
                                    __tmp101389)))))
                            (let ()
                              (let ((__tmp101392
                                     (let ((_%next-probe101018%_
                                            (fx+ _%start100995%_
                                                 _%i101004%_
                                                 (fx* _%i101004%_
                                                      _%i101004%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101018%_
                                        _%size100989%_)))
                                    (__tmp101391
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101004%_ '1))))
                                (declare (not safe))
                                (_%loop100999%_
                                 __tmp101392
                                 __tmp101391))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass100968%_)
        (let ((_%super100969100971%_
               (let () (declare (not safe)) (##type-super _%klass100968%_))))
          (if _%super100969100971%_
              (let ((_%super100974%_ _%super100969100971%_))
                (eq? (let () (declare (not safe)) (##type-id _%super100974%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100853%_ _%klass100854%_ _%obj-klass100855%_)
        (let ((_%method-table100857%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100855%_))))
          (let _%loop100860%_ ((_%rest100863%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100853%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100865%_ '0)
                               (_%methods100867%_ '()))
            (let* ((_%rest100869100877%_ _%rest100863%_)
                   (_%else100871100939%_
                    (lambda ()
                      (let ((_%prototype100885%_
                             (let ((__obj101334
                                    (let ((__tmp101393
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100865%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100854%_
                                       __tmp101393))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101334 '#f))
                               __obj101334)))
                        (let _%loop100888%_ ((_%rest100890%_ _%methods100867%_)
                                             (_%off100891%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100865%_ '1))))
                          (let* ((_%rest100893100901%_ _%rest100890%_)
                                 (_%else100895100920%_
                                  (lambda ()
                                    (let ((_%prototype-key100909%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100854%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100855%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100914%_ ()
                                          (if (let ((__tmp101394
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101394 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100914%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100909%_
                                         _%prototype100885%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100918%_)
                                         _%prototype100918%_)
                                       _%prototype100885%_))))
                                 (_%K100897100927%_
                                  (lambda (_%rest100923%_ _%method100924%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100885%_
                                       _%method100924%_
                                       _%off100891%_
                                       _%klass100854%_
                                       '#f))
                                    (let ((__tmp101395
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100891%_ '1))))
                                      (declare (not safe))
                                      (_%loop100888%_
                                       _%rest100923%_
                                       __tmp101395)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100893100901%_))
                                (let ((_%hd100898100930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100893100901%_)))
                                      (_%tl100899100932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100893100901%_))))
                                  (let* ((_%method100935%_ _%hd100898100930%_)
                                         (_%rest100937%_ _%tl100899100932%_))
                                    (declare (not safe))
                                    (_%K100897100927%_
                                     _%rest100937%_
                                     _%method100935%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100895100920%_))))))))
                   (_%K100873100956%_
                    (lambda (_%rest100942%_ _%method-name100943%_)
                      (let ((_%$e100946%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100857%_
                                _%method-name100943%_
                                '#f))))
                        (if _%$e100946%_
                            ((lambda (_%method100949%_)
                               (let ((__tmp101397
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100865%_ '1)))
                                     (__tmp101396
                                      (cons _%method100949%_
                                            _%methods100867%_)))
                                 (declare (not safe))
                                 (_%loop100860%_
                                  _%rest100942%_
                                  __tmp101397
                                  __tmp101396)))
                             _%$e100946%_)
                            (let ()
                              ((lambda (_%klass100952%_
                                        _%obj-klass100953%_
                                        _%method-name100954%_)
                                 (let ((__tmp101399
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass100952%_)))
                                       (__tmp101398
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass100953%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass100952%_
                                    'interface-id:
                                    __tmp101399
                                    'class:
                                    _%obj-klass100953%_
                                    'class-id:
                                    __tmp101398
                                    'method:
                                    _%method-name100954%_)))
                               _%klass100854%_
                               _%obj-klass100855%_
                               _%method-name100943%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100869100877%_))
                  (let ((_%hd100874100959%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100869100877%_)))
                        (_%tl100875100961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100869100877%_))))
                    (let* ((_%method-name100964%_ _%hd100874100959%_)
                           (_%rest100966%_ _%tl100875100961%_))
                      (declare (not safe))
                      (_%K100873100956%_
                       _%rest100966%_
                       _%method-name100964%_)))
                  (let () (declare (not safe)) (_%else100871100939%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor100738%_ _%klass100739%_ _%obj-klass100740%_)
        (let ((_%method-table100742%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100740%_))))
          (let _%loop100745%_ ((_%rest100748%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100738%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100750%_ '0)
                               (_%methods100752%_ '()))
            (let* ((_%rest100754100762%_ _%rest100748%_)
                   (_%else100756100824%_
                    (lambda ()
                      (let ((_%prototype100770%_
                             (let ((__obj101335
                                    (let ((__tmp101400
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100750%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100739%_
                                       __tmp101400))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101335 '#f))
                               __obj101335)))
                        (let _%loop100773%_ ((_%rest100775%_ _%methods100752%_)
                                             (_%off100776%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100750%_ '1))))
                          (let* ((_%rest100778100786%_ _%rest100775%_)
                                 (_%else100780100805%_
                                  (lambda ()
                                    (let ((_%prototype-key100794%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100739%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100740%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100799%_ ()
                                          (if (let ((__tmp101401
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101401 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100799%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100794%_
                                         _%prototype100770%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100803%_)
                                         _%prototype100803%_)
                                       _%prototype100770%_))))
                                 (_%K100782100812%_
                                  (lambda (_%rest100808%_ _%method100809%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100770%_
                                       _%method100809%_
                                       _%off100776%_
                                       _%klass100739%_
                                       '#f))
                                    (let ((__tmp101402
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100776%_ '1))))
                                      (declare (not safe))
                                      (_%loop100773%_
                                       _%rest100808%_
                                       __tmp101402)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100778100786%_))
                                (let ((_%hd100783100815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100778100786%_)))
                                      (_%tl100784100817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100778100786%_))))
                                  (let* ((_%method100820%_ _%hd100783100815%_)
                                         (_%rest100822%_ _%tl100784100817%_))
                                    (declare (not safe))
                                    (_%K100782100812%_
                                     _%rest100822%_
                                     _%method100820%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100780100805%_))))))))
                   (_%K100758100841%_
                    (lambda (_%rest100827%_ _%method-name100828%_)
                      (let ((_%$e100831%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100742%_
                                _%method-name100828%_
                                '#f))))
                        (if _%$e100831%_
                            ((lambda (_%method100834%_)
                               (let ((__tmp101404
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100750%_ '1)))
                                     (__tmp101403
                                      (cons _%method100834%_
                                            _%methods100752%_)))
                                 (declare (not safe))
                                 (_%loop100745%_
                                  _%rest100827%_
                                  __tmp101404
                                  __tmp101403)))
                             _%$e100831%_)
                            (let ()
                              ((lambda (_%klass100837%_
                                        _%obj-klass100838%_
                                        _%method-name100839%_)
                                 '#f)
                               _%klass100739%_
                               _%obj-klass100740%_
                               _%method-name100828%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100754100762%_))
                  (let ((_%hd100759100844%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100754100762%_)))
                        (_%tl100760100846%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100754100762%_))))
                    (let* ((_%method-name100849%_ _%hd100759100844%_)
                           (_%rest100851%_ _%tl100760100846%_))
                      (declare (not safe))
                      (_%K100758100841%_
                       _%rest100851%_
                       _%method-name100849%_)))
                  (let () (declare (not safe)) (_%else100756100824%_))))))))
    (define cast
      (lambda (_%descriptor100696%_ _%obj100698%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100702%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100696%_ '1 '#f '#f)))
               (_%klass-id100705%_
                (let () (declare (not safe)) (##type-id _%klass100702%_)))
               (_%obj-klass100708%_
                (let () (declare (not safe)) (class-of _%obj100698%_)))
               (_%obj-klass-id100711%_
                (let () (declare (not safe)) (##type-id _%obj-klass100708%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100705%_ _%obj-klass-id100711%_))
              (let () _%obj100698%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100708%_))
                  (let ()
                    (let ((__tmp101405
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100698%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (cast _%descriptor100696%_ __tmp101405)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100720%_ ()
                        (if (let ((__tmp101406
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101406 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100720%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100705%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100711%_))
                    (let ((_%prototype100731%_
                           (let ((_%$e100724%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100724%_
                                 ((lambda (_%prototype100727%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100727%_)
                                  _%$e100724%_)
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
                                      _%descriptor100696%_
                                      _%klass100702%_
                                      _%obj-klass100708%_)))))))
                      ((lambda (_%prototype100733%_ _%obj100734%_)
                         (let ((_%instance100736%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100733%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100736%_
                              _%obj100734%_
                              '1
                              '#f
                              'cast))
                           _%instance100736%_))
                       _%prototype100731%_
                       _%obj100698%_))))))))
    (define try-cast
      (lambda (_%descriptor100654%_ _%obj100656%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100660%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100654%_ '1 '#f '#f)))
               (_%klass-id100663%_
                (let () (declare (not safe)) (##type-id _%klass100660%_)))
               (_%obj-klass100666%_
                (let () (declare (not safe)) (class-of _%obj100656%_)))
               (_%obj-klass-id100669%_
                (let () (declare (not safe)) (##type-id _%obj-klass100666%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100663%_ _%obj-klass-id100669%_))
              (let () _%obj100656%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100666%_))
                  (let ()
                    (let ((__tmp101407
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100656%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (try-cast _%descriptor100654%_ __tmp101407)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100678%_ ()
                        (if (let ((__tmp101408
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101408 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100678%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100663%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100669%_))
                    (let ((_%prototype100689%_
                           (let ((_%$e100682%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100682%_
                                 ((lambda (_%prototype100685%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100685%_)
                                  _%$e100682%_)
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
                                      _%descriptor100654%_
                                      _%klass100660%_
                                      _%obj-klass100666%_)))))))
                      ((lambda (_%prototype100691%_ _%obj100692%_)
                         (if _%prototype100691%_
                             (let ((_%instance100694%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100691%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100694%_
                                  _%obj100692%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100694%_)
                             '#f))
                       _%prototype100689%_
                       _%obj100656%_))))))))
    (define satisfies?
      (lambda (_%descriptor100614%_ _%obj100616%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100620%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100614%_ '1 '#f '#f)))
               (_%klass-id100623%_
                (let () (declare (not safe)) (##type-id _%klass100620%_)))
               (_%obj-klass100626%_
                (let () (declare (not safe)) (class-of _%obj100616%_)))
               (_%obj-klass-id100629%_
                (let () (declare (not safe)) (##type-id _%obj-klass100626%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100623%_ _%obj-klass-id100629%_))
              (let () _%obj100616%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100626%_))
                  (let ()
                    (let ((__tmp101409
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100616%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (satisfies? _%descriptor100614%_ __tmp101409)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100638%_ ()
                        (if (let ((__tmp101410
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101410 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100638%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100623%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100629%_))
                    (let ((_%prototype100649%_
                           (let ((_%$e100642%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100642%_
                                 ((lambda (_%prototype100645%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100645%_)
                                  _%$e100642%_)
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
                                      _%descriptor100614%_
                                      _%klass100620%_
                                      _%obj-klass100626%_)))))))
                      ((lambda (_%prototype100651%_ _%obj100652%_)
                         (if _%prototype100651%_ '#t '#f))
                       _%prototype100649%_
                       _%obj100616%_))))))))))
