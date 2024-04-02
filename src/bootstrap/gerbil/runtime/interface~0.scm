(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712093475)
  (begin
    (define CastError::t
      (let ((__tmp101302 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101302
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101295%_
        (apply make-instance CastError::t _%$args101295%_)))
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
      (lambda (_%where101169%_ _%message101170%_ . _%irritants101171%_)
        (let ((__tmp101303
               (let ((__obj101298
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101298
                  _%message101170%_
                  'where:
                  _%where101169%_
                  'irritants:
                  _%irritants101171%_)
                 __obj101298)))
          (declare (not safe))
          (raise __tmp101303))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101305 (list)) (__tmp101304 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101305
         '(__object)
         __tmp101304
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
      (let ((__tmp101307 (list))
            (__tmp101306
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101307
         '(type methods)
         __tmp101306
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101166%_
        (apply make-instance interface-descriptor::t _%$args101166%_)))
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
      (lambda (_%key101164%_)
        (let ((__tmp101309
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101164%_))))
              (__tmp101308
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101164%_)))))
          (declare (not safe))
          (##fxxor __tmp101309 __tmp101308))))
    (define __interface-test-key
      (lambda (_%a101161%_ _%b101162%_)
        (if (let ((__tmp101311
                   (let () (declare (not safe)) (##car _%a101161%_)))
                  (__tmp101310
                   (let () (declare (not safe)) (##car _%b101162%_))))
              (declare (not safe))
              (##eq? __tmp101311 __tmp101310))
            (let ((__tmp101313
                   (let () (declare (not safe)) (##cdr _%a101161%_)))
                  (__tmp101312
                   (let () (declare (not safe)) (##cdr _%b101162%_))))
              (declare (not safe))
              (##eq? __tmp101313 __tmp101312))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101142%_ _%seed101144%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101142%_
           __interface-hash-key
           __interface-test-key
           _%seed101144%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101150%_ '#f) (_%seed101152%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101150%_ _%seed101152%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101154%_)
        (let ((_%seed101156%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101154%_ _%seed101156%_))))
    (define make-prototype-table
      (lambda _g101315_
        (let ((_g101314_ (let () (declare (not safe)) (##length _g101315_))))
          (cond ((let () (declare (not safe)) (##fx= _g101314_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101315_))
                ((let () (declare (not safe)) (##fx= _g101314_ 1))
                 (apply (lambda (_%size-hint101154%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101154%_)))
                        _g101315_))
                ((let () (declare (not safe)) (##fx= _g101314_ 2))
                 (apply (lambda (_%size-hint101158%_ _%seed101159%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101158%_
                             _%seed101159%_)))
                        _g101315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101315_))))))
    (define prototype-table-ref
      (lambda (_%tab101095%_ _%key101096%_ _%default101097%_)
        (let ((_%table101099%_
               (let () (declare (not safe)) (&raw-table-table _%tab101095%_)))
              (_%seed101100%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101095%_))))
          (let* ((_%h101102%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101096%_))
                         _%seed101100%_))
                 (_%size101105%_ (vector-length _%table101099%_))
                 (_%entries101108%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101105%_ '2)))
                 (_%start101111%_
                  (let ((__tmp101316
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101102%_ _%entries101108%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101316 '1))))
            (let _%loop101115%_ ((_%probe101118%_ _%start101111%_)
                                 (_%i101120%_ '1)
                                 (_%deleted101122%_ '#f))
              (let ((_%k101125%_ (vector-ref _%table101099%_ _%probe101118%_)))
                (if (eq? _%k101125%_ (macro-unused-obj))
                    (let () _%default101097%_)
                    (if (eq? _%k101125%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101319
                                 (let ((_%next-probe101130%_
                                        (fx+ _%start101111%_
                                             _%i101120%_
                                             (fx* _%i101120%_ _%i101120%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101130%_
                                    _%size101105%_)))
                                (__tmp101318
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101120%_ '1)))
                                (__tmp101317
                                 (let ((_%$e101133%_ _%deleted101122%_))
                                   (if _%$e101133%_
                                       _%$e101133%_
                                       _%probe101118%_))))
                            (declare (not safe))
                            (_%loop101115%_
                             __tmp101319
                             __tmp101318
                             __tmp101317)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101096%_ _%k101125%_))
                            (let ()
                              (vector-ref
                               _%table101099%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101118%_ '1))))
                            (let ()
                              (let ((__tmp101321
                                     (let ((_%next-probe101138%_
                                            (fx+ _%start101111%_
                                                 _%i101120%_
                                                 (fx* _%i101120%_
                                                      _%i101120%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101138%_
                                        _%size101105%_)))
                                    (__tmp101320
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101120%_ '1))))
                                (declare (not safe))
                                (_%loop101115%_
                                 __tmp101321
                                 __tmp101320
                                 _%deleted101122%_))))))))))))
    (define prototype-table-set!
      (lambda (_%tab101091%_ _%key101092%_ _%value101093%_)
        (if (let ((__tmp101324
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101091%_)))
                  (__tmp101322
                   (let ((__tmp101323
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101091%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101323 '4))))
              (declare (not safe))
              (##fx< __tmp101324 __tmp101322))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101091%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101091%_
           _%key101092%_
           _%value101093%_))))
    (define __prototype-table-set!
      (lambda (_%tab101042%_ _%key101043%_ _%value101044%_)
        (let ((_%table101047%_
               (let () (declare (not safe)) (&raw-table-table _%tab101042%_)))
              (_%seed101048%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101042%_))))
          (let* ((_%h101050%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101043%_))
                         _%seed101048%_))
                 (_%size101053%_ (vector-length _%table101047%_))
                 (_%entries101056%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101053%_ '2)))
                 (_%start101059%_
                  (let ((__tmp101325
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101050%_ _%entries101056%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101325 '1))))
            (let _%loop101063%_ ((_%probe101066%_ _%start101059%_)
                                 (_%i101068%_ '1)
                                 (_%deleted101070%_ '#f))
              (let ((_%k101073%_ (vector-ref _%table101047%_ _%probe101066%_)))
                (if (eq? _%k101073%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101070%_
                          (begin
                            (vector-set!
                             _%table101047%_
                             _%deleted101070%_
                             _%key101043%_)
                            (vector-set!
                             _%table101047%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101070%_ '1))
                             _%value101044%_)
                            ((lambda ()
                               (let ((__tmp101326
                                      (let ((__tmp101327
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101042%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101327 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101042%_
                                  __tmp101326)))))
                          (begin
                            (vector-set!
                             _%table101047%_
                             _%probe101066%_
                             _%key101043%_)
                            (vector-set!
                             _%table101047%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101066%_ '1))
                             _%value101044%_)
                            ((lambda ()
                               (let ((__tmp101328
                                      (let ((__tmp101329
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101042%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101329 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101042%_
                                  __tmp101328))
                               (let ((__tmp101330
                                      (let ((__tmp101331
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101042%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101331 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101042%_
                                  __tmp101330)))))))
                    (if (eq? _%k101073%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101334
                                 (let ((_%next-probe101080%_
                                        (fx+ _%start101059%_
                                             _%i101068%_
                                             (fx* _%i101068%_ _%i101068%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101080%_
                                    _%size101053%_)))
                                (__tmp101333
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101068%_ '1)))
                                (__tmp101332
                                 (let ((_%$e101083%_ _%deleted101070%_))
                                   (if _%$e101083%_
                                       _%$e101083%_
                                       _%probe101066%_))))
                            (declare (not safe))
                            (_%loop101063%_
                             __tmp101334
                             __tmp101333
                             __tmp101332)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101043%_ _%k101073%_))
                            (let ()
                              (vector-set!
                               _%table101047%_
                               _%probe101066%_
                               _%key101043%_)
                              (vector-set!
                               _%table101047%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101066%_ '1))
                               _%value101044%_))
                            (let ()
                              (let ((__tmp101336
                                     (let ((_%next-probe101088%_
                                            (fx+ _%start101059%_
                                                 _%i101068%_
                                                 (fx* _%i101068%_
                                                      _%i101068%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101088%_
                                        _%size101053%_)))
                                    (__tmp101335
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101068%_ '1))))
                                (declare (not safe))
                                (_%loop101063%_
                                 __tmp101336
                                 __tmp101335
                                 _%deleted101070%_))))))))))))
    (define prototype-table-update!
      (lambda (_%tab101037%_
               _%key101038%_
               _%prototype-table-update!101039%_
               _%default101040%_)
        (if (let ((__tmp101339
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101037%_)))
                  (__tmp101337
                   (let ((__tmp101338
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101037%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101338 '4))))
              (declare (not safe))
              (##fx< __tmp101339 __tmp101337))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101037%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101037%_
           _%key101038%_
           _%prototype-table-update!101039%_
           _%default101040%_))))
    (define __prototype-table-update!
      (lambda (_%tab100987%_
               _%key100988%_
               _%prototype-table-update!100989%_
               _%default100990%_)
        (let ((_%table100993%_
               (let () (declare (not safe)) (&raw-table-table _%tab100987%_)))
              (_%seed100994%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100987%_))))
          (let* ((_%h100996%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100988%_))
                         _%seed100994%_))
                 (_%size100999%_ (vector-length _%table100993%_))
                 (_%entries101002%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100999%_ '2)))
                 (_%start101005%_
                  (let ((__tmp101340
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100996%_ _%entries101002%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101340 '1))))
            (let _%loop101009%_ ((_%probe101012%_ _%start101005%_)
                                 (_%i101014%_ '1)
                                 (_%deleted101016%_ '#f))
              (let ((_%k101019%_ (vector-ref _%table100993%_ _%probe101012%_)))
                (if (eq? _%k101019%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101016%_
                          (begin
                            (vector-set!
                             _%table100993%_
                             _%deleted101016%_
                             _%key100988%_)
                            (vector-set!
                             _%table100993%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101016%_ '1))
                             (_%prototype-table-update!100989%_
                              _%default100990%_))
                            ((lambda ()
                               (let ((__tmp101341
                                      (let ((__tmp101342
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100987%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101342 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100987%_
                                  __tmp101341)))))
                          (begin
                            (vector-set!
                             _%table100993%_
                             _%probe101012%_
                             _%key100988%_)
                            (vector-set!
                             _%table100993%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101012%_ '1))
                             (_%prototype-table-update!100989%_
                              _%default100990%_))
                            ((lambda ()
                               (let ((__tmp101343
                                      (let ((__tmp101344
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab100987%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101344 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab100987%_
                                  __tmp101343))
                               (let ((__tmp101345
                                      (let ((__tmp101346
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100987%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101346 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100987%_
                                  __tmp101345)))))))
                    (if (eq? _%k101019%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101349
                                 (let ((_%next-probe101026%_
                                        (fx+ _%start101005%_
                                             _%i101014%_
                                             (fx* _%i101014%_ _%i101014%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101026%_
                                    _%size100999%_)))
                                (__tmp101348
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101014%_ '1)))
                                (__tmp101347
                                 (let ((_%$e101029%_ _%deleted101016%_))
                                   (if _%$e101029%_
                                       _%$e101029%_
                                       _%probe101012%_))))
                            (declare (not safe))
                            (_%loop101009%_
                             __tmp101349
                             __tmp101348
                             __tmp101347)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100988%_ _%k101019%_))
                            (let ()
                              (vector-set!
                               _%table100993%_
                               _%probe101012%_
                               _%key100988%_)
                              (vector-set!
                               _%table100993%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101012%_ '1))
                               (_%prototype-table-update!100989%_
                                (vector-ref
                                 _%table100993%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101012%_ '1))))))
                            (let ()
                              (let ((__tmp101351
                                     (let ((_%next-probe101034%_
                                            (fx+ _%start101005%_
                                                 _%i101014%_
                                                 (fx* _%i101014%_
                                                      _%i101014%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101034%_
                                        _%size100999%_)))
                                    (__tmp101350
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101014%_ '1))))
                                (declare (not safe))
                                (_%loop101009%_
                                 __tmp101351
                                 __tmp101350
                                 _%deleted101016%_))))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab100942%_ _%key100944%_)
        (let ((_%table100947%_
               (let () (declare (not safe)) (&raw-table-table _%tab100942%_)))
              (_%seed100949%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100942%_))))
          (let* ((_%h100952%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100944%_))
                         _%seed100949%_))
                 (_%size100955%_ (vector-length _%table100947%_))
                 (_%entries100958%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100955%_ '2)))
                 (_%start100961%_
                  (let ((__tmp101352
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100952%_ _%entries100958%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101352 '1))))
            (let _%loop100965%_ ((_%probe100968%_ _%start100961%_)
                                 (_%i100970%_ '1))
              (let ((_%k100973%_ (vector-ref _%table100947%_ _%probe100968%_)))
                (if (eq? _%k100973%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k100973%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101354
                                 (let ((_%next-probe100978%_
                                        (fx+ _%start100961%_
                                             _%i100970%_
                                             (fx* _%i100970%_ _%i100970%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe100978%_
                                    _%size100955%_)))
                                (__tmp101353
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i100970%_ '1))))
                            (declare (not safe))
                            (_%loop100965%_ __tmp101354 __tmp101353)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100944%_ _%k100973%_))
                            (let ()
                              (vector-set!
                               _%table100947%_
                               _%probe100968%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100947%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100968%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101355
                                        (let ((__tmp101356
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab100942%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101356 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab100942%_
                                    __tmp101355)))))
                            (let ()
                              (let ((__tmp101358
                                     (let ((_%next-probe100984%_
                                            (fx+ _%start100961%_
                                                 _%i100970%_
                                                 (fx* _%i100970%_
                                                      _%i100970%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe100984%_
                                        _%size100955%_)))
                                    (__tmp101357
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i100970%_ '1))))
                                (declare (not safe))
                                (_%loop100965%_
                                 __tmp101358
                                 __tmp101357))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass100934%_)
        (let ((_%super100935100937%_
               (let () (declare (not safe)) (##type-super _%klass100934%_))))
          (if _%super100935100937%_
              (let ((_%super100940%_ _%super100935100937%_))
                (eq? (let () (declare (not safe)) (##type-id _%super100940%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100819%_ _%klass100820%_ _%obj-klass100821%_)
        (let ((_%method-table100823%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100821%_))))
          (let _%loop100826%_ ((_%rest100829%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100819%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100831%_ '0)
                               (_%methods100833%_ '()))
            (let* ((_%rest100835100843%_ _%rest100829%_)
                   (_%else100837100905%_
                    (lambda ()
                      (let ((_%prototype100851%_
                             (let ((__obj101300
                                    (let ((__tmp101359
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100831%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100820%_
                                       __tmp101359))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101300 '#f))
                               __obj101300)))
                        (let _%loop100854%_ ((_%rest100856%_ _%methods100833%_)
                                             (_%off100857%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100831%_ '1))))
                          (let* ((_%rest100859100867%_ _%rest100856%_)
                                 (_%else100861100886%_
                                  (lambda ()
                                    (let ((_%prototype-key100875%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100820%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100821%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100880%_ ()
                                          (if (let ((__tmp101360
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101360 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100880%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100875%_
                                         _%prototype100851%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100884%_)
                                         _%prototype100884%_)
                                       _%prototype100851%_))))
                                 (_%K100863100893%_
                                  (lambda (_%rest100889%_ _%method100890%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100851%_
                                       _%method100890%_
                                       _%off100857%_
                                       _%klass100820%_
                                       '#f))
                                    (let ((__tmp101361
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100857%_ '1))))
                                      (declare (not safe))
                                      (_%loop100854%_
                                       _%rest100889%_
                                       __tmp101361)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100859100867%_))
                                (let ((_%hd100864100896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100859100867%_)))
                                      (_%tl100865100898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100859100867%_))))
                                  (let* ((_%method100901%_ _%hd100864100896%_)
                                         (_%rest100903%_ _%tl100865100898%_))
                                    (declare (not safe))
                                    (_%K100863100893%_
                                     _%rest100903%_
                                     _%method100901%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100861100886%_))))))))
                   (_%K100839100922%_
                    (lambda (_%rest100908%_ _%method-name100909%_)
                      (let ((_%$e100912%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100823%_
                                _%method-name100909%_
                                '#f))))
                        (if _%$e100912%_
                            ((lambda (_%method100915%_)
                               (let ((__tmp101363
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100831%_ '1)))
                                     (__tmp101362
                                      (cons _%method100915%_
                                            _%methods100833%_)))
                                 (declare (not safe))
                                 (_%loop100826%_
                                  _%rest100908%_
                                  __tmp101363
                                  __tmp101362)))
                             _%$e100912%_)
                            (let ()
                              ((lambda (_%klass100918%_
                                        _%obj-klass100919%_
                                        _%method-name100920%_)
                                 (let ((__tmp101365
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass100918%_)))
                                       (__tmp101364
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass100919%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass100918%_
                                    'interface-id:
                                    __tmp101365
                                    'class:
                                    _%obj-klass100919%_
                                    'class-id:
                                    __tmp101364
                                    'method:
                                    _%method-name100920%_)))
                               _%klass100820%_
                               _%obj-klass100821%_
                               _%method-name100909%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100835100843%_))
                  (let ((_%hd100840100925%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100835100843%_)))
                        (_%tl100841100927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100835100843%_))))
                    (let* ((_%method-name100930%_ _%hd100840100925%_)
                           (_%rest100932%_ _%tl100841100927%_))
                      (declare (not safe))
                      (_%K100839100922%_
                       _%rest100932%_
                       _%method-name100930%_)))
                  (let () (declare (not safe)) (_%else100837100905%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor100704%_ _%klass100705%_ _%obj-klass100706%_)
        (let ((_%method-table100708%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100706%_))))
          (let _%loop100711%_ ((_%rest100714%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100704%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100716%_ '0)
                               (_%methods100718%_ '()))
            (let* ((_%rest100720100728%_ _%rest100714%_)
                   (_%else100722100790%_
                    (lambda ()
                      (let ((_%prototype100736%_
                             (let ((__obj101301
                                    (let ((__tmp101366
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100716%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100705%_
                                       __tmp101366))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101301 '#f))
                               __obj101301)))
                        (let _%loop100739%_ ((_%rest100741%_ _%methods100718%_)
                                             (_%off100742%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100716%_ '1))))
                          (let* ((_%rest100744100752%_ _%rest100741%_)
                                 (_%else100746100771%_
                                  (lambda ()
                                    (let ((_%prototype-key100760%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100705%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100706%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100765%_ ()
                                          (if (let ((__tmp101367
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101367 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100765%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100760%_
                                         _%prototype100736%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100769%_)
                                         _%prototype100769%_)
                                       _%prototype100736%_))))
                                 (_%K100748100778%_
                                  (lambda (_%rest100774%_ _%method100775%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100736%_
                                       _%method100775%_
                                       _%off100742%_
                                       _%klass100705%_
                                       '#f))
                                    (let ((__tmp101368
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100742%_ '1))))
                                      (declare (not safe))
                                      (_%loop100739%_
                                       _%rest100774%_
                                       __tmp101368)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100744100752%_))
                                (let ((_%hd100749100781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100744100752%_)))
                                      (_%tl100750100783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100744100752%_))))
                                  (let* ((_%method100786%_ _%hd100749100781%_)
                                         (_%rest100788%_ _%tl100750100783%_))
                                    (declare (not safe))
                                    (_%K100748100778%_
                                     _%rest100788%_
                                     _%method100786%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100746100771%_))))))))
                   (_%K100724100807%_
                    (lambda (_%rest100793%_ _%method-name100794%_)
                      (let ((_%$e100797%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100708%_
                                _%method-name100794%_
                                '#f))))
                        (if _%$e100797%_
                            ((lambda (_%method100800%_)
                               (let ((__tmp101370
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100716%_ '1)))
                                     (__tmp101369
                                      (cons _%method100800%_
                                            _%methods100718%_)))
                                 (declare (not safe))
                                 (_%loop100711%_
                                  _%rest100793%_
                                  __tmp101370
                                  __tmp101369)))
                             _%$e100797%_)
                            (let ()
                              ((lambda (_%klass100803%_
                                        _%obj-klass100804%_
                                        _%method-name100805%_)
                                 '#f)
                               _%klass100705%_
                               _%obj-klass100706%_
                               _%method-name100794%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100720100728%_))
                  (let ((_%hd100725100810%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100720100728%_)))
                        (_%tl100726100812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100720100728%_))))
                    (let* ((_%method-name100815%_ _%hd100725100810%_)
                           (_%rest100817%_ _%tl100726100812%_))
                      (declare (not safe))
                      (_%K100724100807%_
                       _%rest100817%_
                       _%method-name100815%_)))
                  (let () (declare (not safe)) (_%else100722100790%_))))))))
    (define cast
      (lambda (_%descriptor100662%_ _%obj100664%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100668%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100662%_ '1 '#f '#f)))
               (_%klass-id100671%_
                (let () (declare (not safe)) (##type-id _%klass100668%_)))
               (_%obj-klass100674%_
                (let () (declare (not safe)) (class-of _%obj100664%_)))
               (_%obj-klass-id100677%_
                (let () (declare (not safe)) (##type-id _%obj-klass100674%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100671%_ _%obj-klass-id100677%_))
              (let () _%obj100664%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100674%_))
                  (let ()
                    (let ((__tmp101371
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100664%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (cast _%descriptor100662%_ __tmp101371)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100686%_ ()
                        (if (let ((__tmp101372
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101372 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100686%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100671%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100677%_))
                    (let ((_%prototype100697%_
                           (let ((_%$e100690%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100690%_
                                 ((lambda (_%prototype100693%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100693%_)
                                  _%$e100690%_)
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
                                      _%descriptor100662%_
                                      _%klass100668%_
                                      _%obj-klass100674%_)))))))
                      ((lambda (_%prototype100699%_ _%obj100700%_)
                         (let ((_%instance100702%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100699%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100702%_
                              _%obj100700%_
                              '1
                              '#f
                              'cast))
                           _%instance100702%_))
                       _%prototype100697%_
                       _%obj100664%_))))))))
    (define try-cast
      (lambda (_%descriptor100620%_ _%obj100622%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100626%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100620%_ '1 '#f '#f)))
               (_%klass-id100629%_
                (let () (declare (not safe)) (##type-id _%klass100626%_)))
               (_%obj-klass100632%_
                (let () (declare (not safe)) (class-of _%obj100622%_)))
               (_%obj-klass-id100635%_
                (let () (declare (not safe)) (##type-id _%obj-klass100632%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100629%_ _%obj-klass-id100635%_))
              (let () _%obj100622%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100632%_))
                  (let ()
                    (let ((__tmp101373
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100622%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (try-cast _%descriptor100620%_ __tmp101373)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100644%_ ()
                        (if (let ((__tmp101374
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101374 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100644%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100629%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100635%_))
                    (let ((_%prototype100655%_
                           (let ((_%$e100648%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100648%_
                                 ((lambda (_%prototype100651%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100651%_)
                                  _%$e100648%_)
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
                                      _%descriptor100620%_
                                      _%klass100626%_
                                      _%obj-klass100632%_)))))))
                      ((lambda (_%prototype100657%_ _%obj100658%_)
                         (if _%prototype100657%_
                             (let ((_%instance100660%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100657%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100660%_
                                  _%obj100658%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100660%_)
                             '#f))
                       _%prototype100655%_
                       _%obj100622%_))))))))
    (define satisfies?
      (lambda (_%descriptor100580%_ _%obj100582%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100586%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100580%_ '1 '#f '#f)))
               (_%klass-id100589%_
                (let () (declare (not safe)) (##type-id _%klass100586%_)))
               (_%obj-klass100592%_
                (let () (declare (not safe)) (class-of _%obj100582%_)))
               (_%obj-klass-id100595%_
                (let () (declare (not safe)) (##type-id _%obj-klass100592%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100589%_ _%obj-klass-id100595%_))
              (let () _%obj100582%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100592%_))
                  (let ()
                    (let ((__tmp101375
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100582%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (satisfies? _%descriptor100580%_ __tmp101375)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100604%_ ()
                        (if (let ((__tmp101376
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101376 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100604%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100589%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100595%_))
                    (let ((_%prototype100615%_
                           (let ((_%$e100608%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100608%_
                                 ((lambda (_%prototype100611%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100611%_)
                                  _%$e100608%_)
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
                                      _%descriptor100580%_
                                      _%klass100586%_
                                      _%obj-klass100592%_)))))))
                      ((lambda (_%prototype100617%_ _%obj100618%_)
                         (if _%prototype100617%_ '#t '#f))
                       _%prototype100615%_
                       _%obj100582%_))))))))))
