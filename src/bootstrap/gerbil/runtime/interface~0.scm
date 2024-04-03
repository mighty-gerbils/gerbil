(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712147676)
  (begin
    (define CastError::t
      (let ((__tmp101355 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101355
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101348%_
        (apply make-instance CastError::t _%$args101348%_)))
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
      (lambda (_%where101222%_ _%message101223%_ . _%irritants101224%_)
        (let ((__tmp101356
               (let ((__obj101351
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101351
                  _%message101223%_
                  'where:
                  _%where101222%_
                  'irritants:
                  _%irritants101224%_)
                 __obj101351)))
          (declare (not safe))
          (raise __tmp101356))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101358 (list)) (__tmp101357 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101358
         '(__object)
         __tmp101357
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
      (let ((__tmp101360 (list))
            (__tmp101359
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101360
         '(type methods)
         __tmp101359
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101219%_
        (apply make-instance interface-descriptor::t _%$args101219%_)))
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
      (lambda (_%key101217%_)
        (let ((__tmp101362
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101217%_))))
              (__tmp101361
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101217%_)))))
          (declare (not safe))
          (##fxxor __tmp101362 __tmp101361))))
    (define __interface-test-key
      (lambda (_%a101214%_ _%b101215%_)
        (if (let ((__tmp101364
                   (let () (declare (not safe)) (##car _%a101214%_)))
                  (__tmp101363
                   (let () (declare (not safe)) (##car _%b101215%_))))
              (declare (not safe))
              (##eq? __tmp101364 __tmp101363))
            (let ((__tmp101366
                   (let () (declare (not safe)) (##cdr _%a101214%_)))
                  (__tmp101365
                   (let () (declare (not safe)) (##cdr _%b101215%_))))
              (declare (not safe))
              (##eq? __tmp101366 __tmp101365))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101195%_ _%seed101197%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101195%_
           __interface-hash-key
           __interface-test-key
           _%seed101197%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101203%_ '#f) (_%seed101205%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101203%_ _%seed101205%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101207%_)
        (let ((_%seed101209%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101207%_ _%seed101209%_))))
    (define make-prototype-table
      (lambda _g101368_
        (let ((_g101367_ (let () (declare (not safe)) (##length _g101368_))))
          (cond ((let () (declare (not safe)) (##fx= _g101367_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101368_))
                ((let () (declare (not safe)) (##fx= _g101367_ 1))
                 (apply (lambda (_%size-hint101207%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101207%_)))
                        _g101368_))
                ((let () (declare (not safe)) (##fx= _g101367_ 2))
                 (apply (lambda (_%size-hint101211%_ _%seed101212%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101211%_
                             _%seed101212%_)))
                        _g101368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101368_))))))
    (define prototype-table-ref
      (lambda (_%tab101148%_ _%key101149%_ _%default101150%_)
        (let ((_%table101152%_
               (let () (declare (not safe)) (&raw-table-table _%tab101148%_)))
              (_%seed101153%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101148%_))))
          (let* ((_%h101155%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101149%_))
                         _%seed101153%_))
                 (_%size101158%_ (vector-length _%table101152%_))
                 (_%entries101161%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101158%_ '2)))
                 (_%start101164%_
                  (let ((__tmp101369
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101155%_ _%entries101161%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101369 '1))))
            (let _%loop101168%_ ((_%probe101171%_ _%start101164%_)
                                 (_%i101173%_ '1)
                                 (_%deleted101175%_ '#f))
              (let ((_%k101178%_ (vector-ref _%table101152%_ _%probe101171%_)))
                (if (eq? _%k101178%_ (macro-unused-obj))
                    (let () _%default101150%_)
                    (if (eq? _%k101178%_ (macro-deleted-obj))
                        (let ((__tmp101372
                               (let ((_%next-probe101183%_
                                      (fx+ _%start101164%_
                                           _%i101173%_
                                           (fx* _%i101173%_ _%i101173%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101183%_
                                  _%size101158%_)))
                              (__tmp101371
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101173%_ '1)))
                              (__tmp101370
                               (let ((_%$e101186%_ _%deleted101175%_))
                                 (if _%$e101186%_
                                     _%$e101186%_
                                     _%probe101171%_))))
                          (declare (not safe))
                          (_%loop101168%_ __tmp101372 __tmp101371 __tmp101370))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101149%_ _%k101178%_))
                            (let ()
                              (vector-ref
                               _%table101152%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101171%_ '1))))
                            (let ((__tmp101374
                                   (let ((_%next-probe101191%_
                                          (fx+ _%start101164%_
                                               _%i101173%_
                                               (fx* _%i101173%_ _%i101173%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101191%_
                                      _%size101158%_)))
                                  (__tmp101373
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101173%_ '1))))
                              (declare (not safe))
                              (_%loop101168%_
                               __tmp101374
                               __tmp101373
                               _%deleted101175%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101144%_ _%key101145%_ _%value101146%_)
        (if (let ((__tmp101377
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101144%_)))
                  (__tmp101375
                   (let ((__tmp101376
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101144%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101376 '4))))
              (declare (not safe))
              (##fx< __tmp101377 __tmp101375))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101144%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101144%_
           _%key101145%_
           _%value101146%_))))
    (define __prototype-table-set!
      (lambda (_%tab101095%_ _%key101096%_ _%value101097%_)
        (let ((_%table101100%_
               (let () (declare (not safe)) (&raw-table-table _%tab101095%_)))
              (_%seed101101%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101095%_))))
          (let* ((_%h101103%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101096%_))
                         _%seed101101%_))
                 (_%size101106%_ (vector-length _%table101100%_))
                 (_%entries101109%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101106%_ '2)))
                 (_%start101112%_
                  (let ((__tmp101378
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101103%_ _%entries101109%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101378 '1))))
            (let _%loop101116%_ ((_%probe101119%_ _%start101112%_)
                                 (_%i101121%_ '1)
                                 (_%deleted101123%_ '#f))
              (let ((_%k101126%_ (vector-ref _%table101100%_ _%probe101119%_)))
                (if (eq? _%k101126%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101123%_
                          (begin
                            (vector-set!
                             _%table101100%_
                             _%deleted101123%_
                             _%key101096%_)
                            (vector-set!
                             _%table101100%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101123%_ '1))
                             _%value101097%_)
                            ((lambda ()
                               (let ((__tmp101379
                                      (let ((__tmp101380
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101095%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101380 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101095%_
                                  __tmp101379)))))
                          (begin
                            (vector-set!
                             _%table101100%_
                             _%probe101119%_
                             _%key101096%_)
                            (vector-set!
                             _%table101100%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101119%_ '1))
                             _%value101097%_)
                            ((lambda ()
                               (let ((__tmp101381
                                      (let ((__tmp101382
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101095%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101382 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101095%_
                                  __tmp101381))
                               (let ((__tmp101383
                                      (let ((__tmp101384
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101095%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101384 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101095%_
                                  __tmp101383)))))))
                    (if (eq? _%k101126%_ (macro-deleted-obj))
                        (let ((__tmp101387
                               (let ((_%next-probe101133%_
                                      (fx+ _%start101112%_
                                           _%i101121%_
                                           (fx* _%i101121%_ _%i101121%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101133%_
                                  _%size101106%_)))
                              (__tmp101386
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101121%_ '1)))
                              (__tmp101385
                               (let ((_%$e101136%_ _%deleted101123%_))
                                 (if _%$e101136%_
                                     _%$e101136%_
                                     _%probe101119%_))))
                          (declare (not safe))
                          (_%loop101116%_ __tmp101387 __tmp101386 __tmp101385))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101096%_ _%k101126%_))
                            (let ()
                              (vector-set!
                               _%table101100%_
                               _%probe101119%_
                               _%key101096%_)
                              (vector-set!
                               _%table101100%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101119%_ '1))
                               _%value101097%_))
                            (let ((__tmp101389
                                   (let ((_%next-probe101141%_
                                          (fx+ _%start101112%_
                                               _%i101121%_
                                               (fx* _%i101121%_ _%i101121%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101141%_
                                      _%size101106%_)))
                                  (__tmp101388
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101121%_ '1))))
                              (declare (not safe))
                              (_%loop101116%_
                               __tmp101389
                               __tmp101388
                               _%deleted101123%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101090%_
               _%key101091%_
               _%prototype-table-update!101092%_
               _%default101093%_)
        (if (let ((__tmp101392
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101090%_)))
                  (__tmp101390
                   (let ((__tmp101391
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101090%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101391 '4))))
              (declare (not safe))
              (##fx< __tmp101392 __tmp101390))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101090%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101090%_
           _%key101091%_
           _%prototype-table-update!101092%_
           _%default101093%_))))
    (define __prototype-table-update!
      (lambda (_%tab101040%_
               _%key101041%_
               _%prototype-table-update!101042%_
               _%default101043%_)
        (let ((_%table101046%_
               (let () (declare (not safe)) (&raw-table-table _%tab101040%_)))
              (_%seed101047%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101040%_))))
          (let* ((_%h101049%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101041%_))
                         _%seed101047%_))
                 (_%size101052%_ (vector-length _%table101046%_))
                 (_%entries101055%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101052%_ '2)))
                 (_%start101058%_
                  (let ((__tmp101393
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101049%_ _%entries101055%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101393 '1))))
            (let _%loop101062%_ ((_%probe101065%_ _%start101058%_)
                                 (_%i101067%_ '1)
                                 (_%deleted101069%_ '#f))
              (let ((_%k101072%_ (vector-ref _%table101046%_ _%probe101065%_)))
                (if (eq? _%k101072%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101069%_
                          (begin
                            (vector-set!
                             _%table101046%_
                             _%deleted101069%_
                             _%key101041%_)
                            (vector-set!
                             _%table101046%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101069%_ '1))
                             (_%prototype-table-update!101042%_
                              _%default101043%_))
                            ((lambda ()
                               (let ((__tmp101394
                                      (let ((__tmp101395
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101040%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101395 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101040%_
                                  __tmp101394)))))
                          (begin
                            (vector-set!
                             _%table101046%_
                             _%probe101065%_
                             _%key101041%_)
                            (vector-set!
                             _%table101046%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101065%_ '1))
                             (_%prototype-table-update!101042%_
                              _%default101043%_))
                            ((lambda ()
                               (let ((__tmp101396
                                      (let ((__tmp101397
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101040%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101397 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101040%_
                                  __tmp101396))
                               (let ((__tmp101398
                                      (let ((__tmp101399
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101040%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101399 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101040%_
                                  __tmp101398)))))))
                    (if (eq? _%k101072%_ (macro-deleted-obj))
                        (let ((__tmp101402
                               (let ((_%next-probe101079%_
                                      (fx+ _%start101058%_
                                           _%i101067%_
                                           (fx* _%i101067%_ _%i101067%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101079%_
                                  _%size101052%_)))
                              (__tmp101401
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101067%_ '1)))
                              (__tmp101400
                               (let ((_%$e101082%_ _%deleted101069%_))
                                 (if _%$e101082%_
                                     _%$e101082%_
                                     _%probe101065%_))))
                          (declare (not safe))
                          (_%loop101062%_ __tmp101402 __tmp101401 __tmp101400))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101041%_ _%k101072%_))
                            (let ()
                              (vector-set!
                               _%table101046%_
                               _%probe101065%_
                               _%key101041%_)
                              (vector-set!
                               _%table101046%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101065%_ '1))
                               (_%prototype-table-update!101042%_
                                (vector-ref
                                 _%table101046%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101065%_ '1))))))
                            (let ((__tmp101404
                                   (let ((_%next-probe101087%_
                                          (fx+ _%start101058%_
                                               _%i101067%_
                                               (fx* _%i101067%_ _%i101067%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101087%_
                                      _%size101052%_)))
                                  (__tmp101403
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101067%_ '1))))
                              (declare (not safe))
                              (_%loop101062%_
                               __tmp101404
                               __tmp101403
                               _%deleted101069%_)))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab100995%_ _%key100997%_)
        (let ((_%table101000%_
               (let () (declare (not safe)) (&raw-table-table _%tab100995%_)))
              (_%seed101002%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100995%_))))
          (let* ((_%h101005%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100997%_))
                         _%seed101002%_))
                 (_%size101008%_ (vector-length _%table101000%_))
                 (_%entries101011%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101008%_ '2)))
                 (_%start101014%_
                  (let ((__tmp101405
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101005%_ _%entries101011%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101405 '1))))
            (let _%loop101018%_ ((_%probe101021%_ _%start101014%_)
                                 (_%i101023%_ '1))
              (let ((_%k101026%_ (vector-ref _%table101000%_ _%probe101021%_)))
                (if (eq? _%k101026%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101026%_ (macro-deleted-obj))
                        (let ((__tmp101407
                               (let ((_%next-probe101031%_
                                      (fx+ _%start101014%_
                                           _%i101023%_
                                           (fx* _%i101023%_ _%i101023%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101031%_
                                  _%size101008%_)))
                              (__tmp101406
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101023%_ '1))))
                          (declare (not safe))
                          (_%loop101018%_ __tmp101407 __tmp101406))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100997%_ _%k101026%_))
                            (let ()
                              (vector-set!
                               _%table101000%_
                               _%probe101021%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101000%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101021%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101408
                                        (let ((__tmp101409
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab100995%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101409 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab100995%_
                                    __tmp101408)))))
                            (let ((__tmp101411
                                   (let ((_%next-probe101037%_
                                          (fx+ _%start101014%_
                                               _%i101023%_
                                               (fx* _%i101023%_ _%i101023%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101037%_
                                      _%size101008%_)))
                                  (__tmp101410
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101023%_ '1))))
                              (declare (not safe))
                              (_%loop101018%_
                               __tmp101411
                               __tmp101410)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass100987%_)
        (let ((_%super100988100990%_
               (let () (declare (not safe)) (##type-super _%klass100987%_))))
          (if _%super100988100990%_
              (let ((_%super100993%_ _%super100988100990%_))
                (eq? (let () (declare (not safe)) (##type-id _%super100993%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100872%_ _%klass100873%_ _%obj-klass100874%_)
        (let ((_%method-table100876%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100874%_))))
          (let _%loop100879%_ ((_%rest100882%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100872%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100884%_ '0)
                               (_%methods100886%_ '()))
            (let* ((_%rest100888100896%_ _%rest100882%_)
                   (_%else100890100958%_
                    (lambda ()
                      (let ((_%prototype100904%_
                             (let ((__obj101353
                                    (let ((__tmp101412
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100884%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100873%_
                                       __tmp101412))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101353 '#f))
                               __obj101353)))
                        (let _%loop100907%_ ((_%rest100909%_ _%methods100886%_)
                                             (_%off100910%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100884%_ '1))))
                          (let* ((_%rest100912100920%_ _%rest100909%_)
                                 (_%else100914100939%_
                                  (lambda ()
                                    (let ((_%prototype-key100928%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100873%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100874%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100933%_ ()
                                          (if (let ((__tmp101413
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101413 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100933%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100928%_
                                         _%prototype100904%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100937%_)
                                         _%prototype100937%_)
                                       _%prototype100904%_))))
                                 (_%K100916100946%_
                                  (lambda (_%rest100942%_ _%method100943%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100904%_
                                       _%method100943%_
                                       _%off100910%_
                                       _%klass100873%_
                                       '#f))
                                    (let ((__tmp101414
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100910%_ '1))))
                                      (declare (not safe))
                                      (_%loop100907%_
                                       _%rest100942%_
                                       __tmp101414)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100912100920%_))
                                (let ((_%hd100917100949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100912100920%_)))
                                      (_%tl100918100951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100912100920%_))))
                                  (let* ((_%method100954%_ _%hd100917100949%_)
                                         (_%rest100956%_ _%tl100918100951%_))
                                    (declare (not safe))
                                    (_%K100916100946%_
                                     _%rest100956%_
                                     _%method100954%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100914100939%_))))))))
                   (_%K100892100975%_
                    (lambda (_%rest100961%_ _%method-name100962%_)
                      (let ((_%$e100965%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100876%_
                                _%method-name100962%_
                                '#f))))
                        (if _%$e100965%_
                            ((lambda (_%method100968%_)
                               (let ((__tmp101416
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100884%_ '1)))
                                     (__tmp101415
                                      (cons _%method100968%_
                                            _%methods100886%_)))
                                 (declare (not safe))
                                 (_%loop100879%_
                                  _%rest100961%_
                                  __tmp101416
                                  __tmp101415)))
                             _%$e100965%_)
                            (let ()
                              ((lambda (_%klass100971%_
                                        _%obj-klass100972%_
                                        _%method-name100973%_)
                                 (let ((__tmp101418
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass100971%_)))
                                       (__tmp101417
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass100972%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass100971%_
                                    'interface-id:
                                    __tmp101418
                                    'class:
                                    _%obj-klass100972%_
                                    'class-id:
                                    __tmp101417
                                    'method:
                                    _%method-name100973%_))
                                 '#!void)
                               _%klass100873%_
                               _%obj-klass100874%_
                               _%method-name100962%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100888100896%_))
                  (let ((_%hd100893100978%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100888100896%_)))
                        (_%tl100894100980%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100888100896%_))))
                    (let* ((_%method-name100983%_ _%hd100893100978%_)
                           (_%rest100985%_ _%tl100894100980%_))
                      (declare (not safe))
                      (_%K100892100975%_
                       _%rest100985%_
                       _%method-name100983%_)))
                  (let () (declare (not safe)) (_%else100890100958%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor100757%_ _%klass100758%_ _%obj-klass100759%_)
        (let ((_%method-table100761%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100759%_))))
          (let _%loop100764%_ ((_%rest100767%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100757%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100769%_ '0)
                               (_%methods100771%_ '()))
            (let* ((_%rest100773100781%_ _%rest100767%_)
                   (_%else100775100843%_
                    (lambda ()
                      (let ((_%prototype100789%_
                             (let ((__obj101354
                                    (let ((__tmp101419
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100769%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100758%_
                                       __tmp101419))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101354 '#f))
                               __obj101354)))
                        (let _%loop100792%_ ((_%rest100794%_ _%methods100771%_)
                                             (_%off100795%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100769%_ '1))))
                          (let* ((_%rest100797100805%_ _%rest100794%_)
                                 (_%else100799100824%_
                                  (lambda ()
                                    (let ((_%prototype-key100813%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100758%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100759%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100818%_ ()
                                          (if (let ((__tmp101420
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101420 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100818%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100813%_
                                         _%prototype100789%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100822%_)
                                         _%prototype100822%_)
                                       _%prototype100789%_))))
                                 (_%K100801100831%_
                                  (lambda (_%rest100827%_ _%method100828%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100789%_
                                       _%method100828%_
                                       _%off100795%_
                                       _%klass100758%_
                                       '#f))
                                    (let ((__tmp101421
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100795%_ '1))))
                                      (declare (not safe))
                                      (_%loop100792%_
                                       _%rest100827%_
                                       __tmp101421)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100797100805%_))
                                (let ((_%hd100802100834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100797100805%_)))
                                      (_%tl100803100836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100797100805%_))))
                                  (let* ((_%method100839%_ _%hd100802100834%_)
                                         (_%rest100841%_ _%tl100803100836%_))
                                    (declare (not safe))
                                    (_%K100801100831%_
                                     _%rest100841%_
                                     _%method100839%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100799100824%_))))))))
                   (_%K100777100860%_
                    (lambda (_%rest100846%_ _%method-name100847%_)
                      (let ((_%$e100850%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100761%_
                                _%method-name100847%_
                                '#f))))
                        (if _%$e100850%_
                            ((lambda (_%method100853%_)
                               (let ((__tmp101423
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100769%_ '1)))
                                     (__tmp101422
                                      (cons _%method100853%_
                                            _%methods100771%_)))
                                 (declare (not safe))
                                 (_%loop100764%_
                                  _%rest100846%_
                                  __tmp101423
                                  __tmp101422)))
                             _%$e100850%_)
                            (let ()
                              ((lambda (_%klass100856%_
                                        _%obj-klass100857%_
                                        _%method-name100858%_)
                                 '#f)
                               _%klass100758%_
                               _%obj-klass100759%_
                               _%method-name100847%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100773100781%_))
                  (let ((_%hd100778100863%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100773100781%_)))
                        (_%tl100779100865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100773100781%_))))
                    (let* ((_%method-name100868%_ _%hd100778100863%_)
                           (_%rest100870%_ _%tl100779100865%_))
                      (declare (not safe))
                      (_%K100777100860%_
                       _%rest100870%_
                       _%method-name100868%_)))
                  (let () (declare (not safe)) (_%else100775100843%_))))))))
    (define cast
      (lambda (_%descriptor100715%_ _%obj100717%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100721%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100715%_ '1 '#f '#f)))
               (_%klass-id100724%_
                (let () (declare (not safe)) (##type-id _%klass100721%_)))
               (_%obj-klass100727%_
                (let () (declare (not safe)) (class-of _%obj100717%_)))
               (_%obj-klass-id100730%_
                (let () (declare (not safe)) (##type-id _%obj-klass100727%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100724%_ _%obj-klass-id100730%_))
              (let () _%obj100717%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100727%_))
                  (let ((__tmp101424
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj100717%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor100715%_ __tmp101424))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100739%_ ()
                        (if (let ((__tmp101425
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101425 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100739%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100724%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100730%_))
                    (let ((_%prototype100750%_
                           (let ((_%$e100743%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100743%_
                                 ((lambda (_%prototype100746%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100746%_)
                                  _%$e100743%_)
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
                                      _%descriptor100715%_
                                      _%klass100721%_
                                      _%obj-klass100727%_)))))))
                      ((lambda (_%prototype100752%_ _%obj100753%_)
                         (let ((_%instance100755%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100752%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100755%_
                              _%obj100753%_
                              '1
                              '#f
                              'cast))
                           _%instance100755%_))
                       _%prototype100750%_
                       _%obj100717%_))))))))
    (define try-cast
      (lambda (_%descriptor100673%_ _%obj100675%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100679%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100673%_ '1 '#f '#f)))
               (_%klass-id100682%_
                (let () (declare (not safe)) (##type-id _%klass100679%_)))
               (_%obj-klass100685%_
                (let () (declare (not safe)) (class-of _%obj100675%_)))
               (_%obj-klass-id100688%_
                (let () (declare (not safe)) (##type-id _%obj-klass100685%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100682%_ _%obj-klass-id100688%_))
              (let () _%obj100675%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100685%_))
                  (let ((__tmp101426
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj100675%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor100673%_ __tmp101426))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100697%_ ()
                        (if (let ((__tmp101427
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101427 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100697%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100682%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100688%_))
                    (let ((_%prototype100708%_
                           (let ((_%$e100701%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100701%_
                                 ((lambda (_%prototype100704%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100704%_)
                                  _%$e100701%_)
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
                                      _%descriptor100673%_
                                      _%klass100679%_
                                      _%obj-klass100685%_)))))))
                      ((lambda (_%prototype100710%_ _%obj100711%_)
                         (if _%prototype100710%_
                             (let ((_%instance100713%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100710%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100713%_
                                  _%obj100711%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100713%_)
                             '#f))
                       _%prototype100708%_
                       _%obj100675%_))))))))
    (define satisfies?
      (lambda (_%descriptor100633%_ _%obj100635%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100639%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100633%_ '1 '#f '#f)))
               (_%klass-id100642%_
                (let () (declare (not safe)) (##type-id _%klass100639%_)))
               (_%obj-klass100645%_
                (let () (declare (not safe)) (class-of _%obj100635%_)))
               (_%obj-klass-id100648%_
                (let () (declare (not safe)) (##type-id _%obj-klass100645%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100642%_ _%obj-klass-id100648%_))
              (let () _%obj100635%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100645%_))
                  (let ((__tmp101428
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj100635%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor100633%_ __tmp101428))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100657%_ ()
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
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100657%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100642%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100648%_))
                    (let ((_%prototype100668%_
                           (let ((_%$e100661%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100661%_
                                 ((lambda (_%prototype100664%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100664%_)
                                  _%$e100661%_)
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
                                      _%descriptor100633%_
                                      _%klass100639%_
                                      _%obj-klass100645%_)))))))
                      ((lambda (_%prototype100670%_ _%obj100671%_)
                         (if _%prototype100670%_ '#t '#f))
                       _%prototype100668%_
                       _%obj100635%_))))))))))
