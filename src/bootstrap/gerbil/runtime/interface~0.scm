(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712602654)
  (begin
    (define CastError::t
      (let ((__tmp101266 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101266
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101259%_
        (apply make-instance CastError::t _%$args101259%_)))
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
      (lambda (_%where101133%_ _%message101134%_ . _%irritants101135%_)
        (let ((__tmp101267
               (let ((__obj101262
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101262
                  _%message101134%_
                  'where:
                  _%where101133%_
                  'irritants:
                  _%irritants101135%_)
                 __obj101262)))
          (declare (not safe))
          (raise __tmp101267))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101269 (list)) (__tmp101268 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101269
         '(__object)
         __tmp101268
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
      (let ((__tmp101271 (list))
            (__tmp101270
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101271
         '(type methods)
         __tmp101270
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101130%_
        (apply make-instance interface-descriptor::t _%$args101130%_)))
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
      (lambda (_%key101128%_)
        (let ((__tmp101273
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101128%_))))
              (__tmp101272
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101128%_)))))
          (declare (not safe))
          (##fxxor __tmp101273 __tmp101272))))
    (define __interface-test-key
      (lambda (_%a101125%_ _%b101126%_)
        (if (let ((__tmp101275
                   (let () (declare (not safe)) (##car _%a101125%_)))
                  (__tmp101274
                   (let () (declare (not safe)) (##car _%b101126%_))))
              (declare (not safe))
              (##eq? __tmp101275 __tmp101274))
            (let ((__tmp101277
                   (let () (declare (not safe)) (##cdr _%a101125%_)))
                  (__tmp101276
                   (let () (declare (not safe)) (##cdr _%b101126%_))))
              (declare (not safe))
              (##eq? __tmp101277 __tmp101276))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101106%_ _%seed101108%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101106%_
           __interface-hash-key
           __interface-test-key
           _%seed101108%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101114%_ '#f) (_%seed101116%_ '0))
          (make-prototype-table__% _%size-hint101114%_ _%seed101116%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101118%_)
        (let ((_%seed101120%_ '0))
          (make-prototype-table__% _%size-hint101118%_ _%seed101120%_))))
    (define make-prototype-table
      (lambda _g101279_
        (let ((_g101278_ (let () (declare (not safe)) (##length _g101279_))))
          (cond ((let () (declare (not safe)) (##fx= _g101278_ 0))
                 (apply make-prototype-table__0 _g101279_))
                ((let () (declare (not safe)) (##fx= _g101278_ 1))
                 (apply make-prototype-table__1 _g101279_))
                ((let () (declare (not safe)) (##fx= _g101278_ 2))
                 (apply make-prototype-table__% _g101279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101279_))))))
    (define prototype-table-ref
      (lambda (_%tab101059%_ _%key101060%_ _%default101061%_)
        (let ((_%table101063%_
               (let () (declare (not safe)) (&raw-table-table _%tab101059%_)))
              (_%seed101064%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101059%_))))
          (let* ((_%h101066%_
                  (fxxor (__interface-hash-key _%key101060%_) _%seed101064%_))
                 (_%size101069%_ (vector-length _%table101063%_))
                 (_%entries101072%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101069%_ '2)))
                 (_%start101075%_
                  (let ((__tmp101280
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101066%_ _%entries101072%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101280 '1))))
            (let _%loop101079%_ ((_%probe101082%_ _%start101075%_)
                                 (_%i101084%_ '1)
                                 (_%deleted101086%_ '#f))
              (let ((_%k101089%_ (vector-ref _%table101063%_ _%probe101082%_)))
                (if (eq? _%k101089%_ (macro-unused-obj))
                    _%default101061%_
                    (if (eq? _%k101089%_ (macro-deleted-obj))
                        (_%loop101079%_
                         (let ((_%next-probe101094%_
                                (fx+ _%start101075%_
                                     _%i101084%_
                                     (fx* _%i101084%_ _%i101084%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101094%_ _%size101069%_))
                         (let () (declare (not safe)) (##fx+ _%i101084%_ '1))
                         (let ((_%$e101097%_ _%deleted101086%_))
                           (if _%$e101097%_ _%$e101097%_ _%probe101082%_)))
                        (if (__interface-test-key _%key101060%_ _%k101089%_)
                            (vector-ref
                             _%table101063%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101082%_ '1)))
                            (_%loop101079%_
                             (let ((_%next-probe101102%_
                                    (fx+ _%start101075%_
                                         _%i101084%_
                                         (fx* _%i101084%_ _%i101084%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101102%_
                                _%size101069%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101084%_ '1))
                             _%deleted101086%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab101055%_ _%key101056%_ _%value101057%_)
        (if (let ((__tmp101283
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101055%_)))
                  (__tmp101281
                   (let ((__tmp101282
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101055%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101282 '4))))
              (declare (not safe))
              (##fx< __tmp101283 __tmp101281))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101055%_))
            '#!void)
        (__prototype-table-set! _%tab101055%_ _%key101056%_ _%value101057%_)))
    (define __prototype-table-set!
      (lambda (_%tab101006%_ _%key101007%_ _%value101008%_)
        (let ((_%table101011%_
               (let () (declare (not safe)) (&raw-table-table _%tab101006%_)))
              (_%seed101012%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101006%_))))
          (let* ((_%h101014%_
                  (fxxor (__interface-hash-key _%key101007%_) _%seed101012%_))
                 (_%size101017%_ (vector-length _%table101011%_))
                 (_%entries101020%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101017%_ '2)))
                 (_%start101023%_
                  (let ((__tmp101284
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101014%_ _%entries101020%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101284 '1))))
            (let _%loop101027%_ ((_%probe101030%_ _%start101023%_)
                                 (_%i101032%_ '1)
                                 (_%deleted101034%_ '#f))
              (let ((_%k101037%_ (vector-ref _%table101011%_ _%probe101030%_)))
                (if (eq? _%k101037%_ (macro-unused-obj))
                    (if _%deleted101034%_
                        (begin
                          (vector-set!
                           _%table101011%_
                           _%deleted101034%_
                           _%key101007%_)
                          (vector-set!
                           _%table101011%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101034%_ '1))
                           _%value101008%_)
                          ((lambda ()
                             (let ((__tmp101285
                                    (let ((__tmp101286
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101006%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101286 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101006%_
                                __tmp101285)))))
                        (begin
                          (vector-set!
                           _%table101011%_
                           _%probe101030%_
                           _%key101007%_)
                          (vector-set!
                           _%table101011%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101030%_ '1))
                           _%value101008%_)
                          ((lambda ()
                             (let ((__tmp101287
                                    (let ((__tmp101288
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101006%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101288 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101006%_
                                __tmp101287))
                             (let ((__tmp101289
                                    (let ((__tmp101290
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101006%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101290 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101006%_
                                __tmp101289))))))
                    (if (eq? _%k101037%_ (macro-deleted-obj))
                        (_%loop101027%_
                         (let ((_%next-probe101044%_
                                (fx+ _%start101023%_
                                     _%i101032%_
                                     (fx* _%i101032%_ _%i101032%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101044%_ _%size101017%_))
                         (let () (declare (not safe)) (##fx+ _%i101032%_ '1))
                         (let ((_%$e101047%_ _%deleted101034%_))
                           (if _%$e101047%_ _%$e101047%_ _%probe101030%_)))
                        (if (__interface-test-key _%key101007%_ _%k101037%_)
                            (let ()
                              (vector-set!
                               _%table101011%_
                               _%probe101030%_
                               _%key101007%_)
                              (vector-set!
                               _%table101011%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101030%_ '1))
                               _%value101008%_))
                            (_%loop101027%_
                             (let ((_%next-probe101052%_
                                    (fx+ _%start101023%_
                                         _%i101032%_
                                         (fx* _%i101032%_ _%i101032%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101052%_
                                _%size101017%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101032%_ '1))
                             _%deleted101034%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab101001%_
               _%key101002%_
               _%prototype-table-update!101003%_
               _%default101004%_)
        (if (let ((__tmp101293
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101001%_)))
                  (__tmp101291
                   (let ((__tmp101292
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101001%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101292 '4))))
              (declare (not safe))
              (##fx< __tmp101293 __tmp101291))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101001%_))
            '#!void)
        (__prototype-table-update!
         _%tab101001%_
         _%key101002%_
         _%prototype-table-update!101003%_
         _%default101004%_)))
    (define __prototype-table-update!
      (lambda (_%tab100951%_
               _%key100952%_
               _%prototype-table-update!100953%_
               _%default100954%_)
        (let ((_%table100957%_
               (let () (declare (not safe)) (&raw-table-table _%tab100951%_)))
              (_%seed100958%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100951%_))))
          (let* ((_%h100960%_
                  (fxxor (__interface-hash-key _%key100952%_) _%seed100958%_))
                 (_%size100963%_ (vector-length _%table100957%_))
                 (_%entries100966%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100963%_ '2)))
                 (_%start100969%_
                  (let ((__tmp101294
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100960%_ _%entries100966%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101294 '1))))
            (let _%loop100973%_ ((_%probe100976%_ _%start100969%_)
                                 (_%i100978%_ '1)
                                 (_%deleted100980%_ '#f))
              (let ((_%k100983%_ (vector-ref _%table100957%_ _%probe100976%_)))
                (if (eq? _%k100983%_ (macro-unused-obj))
                    (if _%deleted100980%_
                        (begin
                          (vector-set!
                           _%table100957%_
                           _%deleted100980%_
                           _%key100952%_)
                          (vector-set!
                           _%table100957%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted100980%_ '1))
                           (_%prototype-table-update!100953%_
                            _%default100954%_))
                          ((lambda ()
                             (let ((__tmp101295
                                    (let ((__tmp101296
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab100951%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101296 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab100951%_
                                __tmp101295)))))
                        (begin
                          (vector-set!
                           _%table100957%_
                           _%probe100976%_
                           _%key100952%_)
                          (vector-set!
                           _%table100957%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe100976%_ '1))
                           (_%prototype-table-update!100953%_
                            _%default100954%_))
                          ((lambda ()
                             (let ((__tmp101297
                                    (let ((__tmp101298
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab100951%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101298 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab100951%_
                                __tmp101297))
                             (let ((__tmp101299
                                    (let ((__tmp101300
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab100951%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101300 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab100951%_
                                __tmp101299))))))
                    (if (eq? _%k100983%_ (macro-deleted-obj))
                        (_%loop100973%_
                         (let ((_%next-probe100990%_
                                (fx+ _%start100969%_
                                     _%i100978%_
                                     (fx* _%i100978%_ _%i100978%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe100990%_ _%size100963%_))
                         (let () (declare (not safe)) (##fx+ _%i100978%_ '1))
                         (let ((_%$e100993%_ _%deleted100980%_))
                           (if _%$e100993%_ _%$e100993%_ _%probe100976%_)))
                        (if (__interface-test-key _%key100952%_ _%k100983%_)
                            (let ()
                              (vector-set!
                               _%table100957%_
                               _%probe100976%_
                               _%key100952%_)
                              (vector-set!
                               _%table100957%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100976%_ '1))
                               (_%prototype-table-update!100953%_
                                (vector-ref
                                 _%table100957%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe100976%_ '1))))))
                            (_%loop100973%_
                             (let ((_%next-probe100998%_
                                    (fx+ _%start100969%_
                                         _%i100978%_
                                         (fx* _%i100978%_ _%i100978%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe100998%_
                                _%size100963%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i100978%_ '1))
                             _%deleted100980%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab100906%_ _%key100908%_)
        (let ((_%table100911%_
               (let () (declare (not safe)) (&raw-table-table _%tab100906%_)))
              (_%seed100913%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100906%_))))
          (let* ((_%h100916%_
                  (fxxor (__interface-hash-key _%key100908%_) _%seed100913%_))
                 (_%size100919%_ (vector-length _%table100911%_))
                 (_%entries100922%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100919%_ '2)))
                 (_%start100925%_
                  (let ((__tmp101301
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100916%_ _%entries100922%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101301 '1))))
            (let _%loop100929%_ ((_%probe100932%_ _%start100925%_)
                                 (_%i100934%_ '1))
              (let ((_%k100937%_ (vector-ref _%table100911%_ _%probe100932%_)))
                (if (eq? _%k100937%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k100937%_ (macro-deleted-obj))
                        (_%loop100929%_
                         (let ((_%next-probe100942%_
                                (fx+ _%start100925%_
                                     _%i100934%_
                                     (fx* _%i100934%_ _%i100934%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe100942%_ _%size100919%_))
                         (let () (declare (not safe)) (##fx+ _%i100934%_ '1)))
                        (if (__interface-test-key _%key100908%_ _%k100937%_)
                            (let ()
                              (vector-set!
                               _%table100911%_
                               _%probe100932%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100911%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100932%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101302
                                        (let ((__tmp101303
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab100906%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101303 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab100906%_
                                    __tmp101302)))))
                            (_%loop100929%_
                             (let ((_%next-probe100948%_
                                    (fx+ _%start100925%_
                                         _%i100934%_
                                         (fx* _%i100934%_ _%i100934%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe100948%_
                                _%size100919%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i100934%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass100898%_)
        (let ((_%super100899100901%_
               (let () (declare (not safe)) (##type-super _%klass100898%_))))
          (if _%super100899100901%_
              (let ((_%super100904%_ _%super100899100901%_))
                (eq? (let () (declare (not safe)) (##type-id _%super100904%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100783%_ _%klass100784%_ _%obj-klass100785%_)
        (let ((_%method-table100787%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100785%_))))
          (let _%loop100790%_ ((_%rest100793%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100783%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100795%_ '0)
                               (_%methods100797%_ '()))
            (let* ((_%rest100799100807%_ _%rest100793%_)
                   (_%else100801100869%_
                    (lambda ()
                      (let ((_%prototype100815%_
                             (let ((__obj101264
                                    (let ((__tmp101304
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100795%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100784%_
                                       __tmp101304))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101264 '#f))
                               __obj101264)))
                        (let _%loop100818%_ ((_%rest100820%_ _%methods100797%_)
                                             (_%off100821%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100795%_ '1))))
                          (let* ((_%rest100823100831%_ _%rest100820%_)
                                 (_%else100825100850%_
                                  (lambda ()
                                    (let ((_%prototype-key100839%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100784%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100785%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100844%_ ()
                                          (if (let ((__tmp101305
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101305 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again100844%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key100839%_
                                       _%prototype100815%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100848%_)
                                         _%prototype100848%_)
                                       _%prototype100815%_))))
                                 (_%K100827100857%_
                                  (lambda (_%rest100853%_ _%method100854%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100815%_
                                       _%method100854%_
                                       _%off100821%_
                                       _%klass100784%_
                                       '#f))
                                    (_%loop100818%_
                                     _%rest100853%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off100821%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100823100831%_))
                                (let ((_%hd100828100860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100823100831%_)))
                                      (_%tl100829100862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100823100831%_))))
                                  (let* ((_%method100865%_ _%hd100828100860%_)
                                         (_%rest100867%_ _%tl100829100862%_))
                                    (_%K100827100857%_
                                     _%rest100867%_
                                     _%method100865%_)))
                                (_%else100825100850%_)))))))
                   (_%K100803100886%_
                    (lambda (_%rest100872%_ _%method-name100873%_)
                      (let ((_%$e100876%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100787%_
                                _%method-name100873%_
                                '#f))))
                        (if _%$e100876%_
                            ((lambda (_%method100879%_)
                               (_%loop100790%_
                                _%rest100872%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count100795%_ '1))
                                (cons _%method100879%_ _%methods100797%_)))
                             _%$e100876%_)
                            ((lambda (_%klass100882%_
                                      _%obj-klass100883%_
                                      _%method-name100884%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass100882%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass100882%_))
                                'class:
                                _%obj-klass100883%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass100883%_))
                                'method:
                                _%method-name100884%_)
                               '#!void)
                             _%klass100784%_
                             _%obj-klass100785%_
                             _%method-name100873%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest100799100807%_))
                  (let ((_%hd100804100889%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100799100807%_)))
                        (_%tl100805100891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100799100807%_))))
                    (let* ((_%method-name100894%_ _%hd100804100889%_)
                           (_%rest100896%_ _%tl100805100891%_))
                      (_%K100803100886%_
                       _%rest100896%_
                       _%method-name100894%_)))
                  (_%else100801100869%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor100668%_ _%klass100669%_ _%obj-klass100670%_)
        (let ((_%method-table100672%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100670%_))))
          (let _%loop100675%_ ((_%rest100678%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100668%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100680%_ '0)
                               (_%methods100682%_ '()))
            (let* ((_%rest100684100692%_ _%rest100678%_)
                   (_%else100686100754%_
                    (lambda ()
                      (let ((_%prototype100700%_
                             (let ((__obj101265
                                    (let ((__tmp101306
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100680%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100669%_
                                       __tmp101306))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101265 '#f))
                               __obj101265)))
                        (let _%loop100703%_ ((_%rest100705%_ _%methods100682%_)
                                             (_%off100706%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100680%_ '1))))
                          (let* ((_%rest100708100716%_ _%rest100705%_)
                                 (_%else100710100735%_
                                  (lambda ()
                                    (let ((_%prototype-key100724%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100669%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100670%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100729%_ ()
                                          (if (let ((__tmp101307
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101307 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again100729%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key100724%_
                                       _%prototype100700%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100733%_)
                                         _%prototype100733%_)
                                       _%prototype100700%_))))
                                 (_%K100712100742%_
                                  (lambda (_%rest100738%_ _%method100739%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100700%_
                                       _%method100739%_
                                       _%off100706%_
                                       _%klass100669%_
                                       '#f))
                                    (_%loop100703%_
                                     _%rest100738%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off100706%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100708100716%_))
                                (let ((_%hd100713100745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100708100716%_)))
                                      (_%tl100714100747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100708100716%_))))
                                  (let* ((_%method100750%_ _%hd100713100745%_)
                                         (_%rest100752%_ _%tl100714100747%_))
                                    (_%K100712100742%_
                                     _%rest100752%_
                                     _%method100750%_)))
                                (_%else100710100735%_)))))))
                   (_%K100688100771%_
                    (lambda (_%rest100757%_ _%method-name100758%_)
                      (let ((_%$e100761%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100672%_
                                _%method-name100758%_
                                '#f))))
                        (if _%$e100761%_
                            ((lambda (_%method100764%_)
                               (_%loop100675%_
                                _%rest100757%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count100680%_ '1))
                                (cons _%method100764%_ _%methods100682%_)))
                             _%$e100761%_)
                            ((lambda (_%klass100767%_
                                      _%obj-klass100768%_
                                      _%method-name100769%_)
                               '#f)
                             _%klass100669%_
                             _%obj-klass100670%_
                             _%method-name100758%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest100684100692%_))
                  (let ((_%hd100689100774%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100684100692%_)))
                        (_%tl100690100776%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100684100692%_))))
                    (let* ((_%method-name100779%_ _%hd100689100774%_)
                           (_%rest100781%_ _%tl100690100776%_))
                      (_%K100688100771%_
                       _%rest100781%_
                       _%method-name100779%_)))
                  (_%else100686100754%_)))))))
    (define cast
      (lambda (_%descriptor100626%_ _%obj100628%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100632%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100626%_ '1 '#f '#f)))
               (_%klass-id100635%_
                (let () (declare (not safe)) (##type-id _%klass100632%_)))
               (_%obj-klass100638%_
                (let () (declare (not safe)) (class-of _%obj100628%_)))
               (_%obj-klass-id100641%_
                (let () (declare (not safe)) (##type-id _%obj-klass100638%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100635%_ _%obj-klass-id100641%_))
              _%obj100628%_
              (if (interface-subclass? _%obj-klass100638%_)
                  (cast _%descriptor100626%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj100628%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100650%_ ()
                        (if (let ((__tmp101308
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101308 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again100650%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100635%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100641%_))
                    (let ((_%prototype100661%_
                           (let ((_%$e100654%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e100654%_
                                 ((lambda (_%prototype100657%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100657%_)
                                  _%$e100654%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor100626%_
                                    _%klass100632%_
                                    _%obj-klass100638%_))))))
                      ((lambda (_%prototype100663%_ _%obj100664%_)
                         (let ((_%instance100666%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100663%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100666%_
                              _%obj100664%_
                              '1
                              '#f
                              'cast))
                           _%instance100666%_))
                       _%prototype100661%_
                       _%obj100628%_))))))))
    (define try-cast
      (lambda (_%descriptor100584%_ _%obj100586%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100590%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100584%_ '1 '#f '#f)))
               (_%klass-id100593%_
                (let () (declare (not safe)) (##type-id _%klass100590%_)))
               (_%obj-klass100596%_
                (let () (declare (not safe)) (class-of _%obj100586%_)))
               (_%obj-klass-id100599%_
                (let () (declare (not safe)) (##type-id _%obj-klass100596%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100593%_ _%obj-klass-id100599%_))
              _%obj100586%_
              (if (interface-subclass? _%obj-klass100596%_)
                  (try-cast
                   _%descriptor100584%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj100586%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100608%_ ()
                        (if (let ((__tmp101309
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101309 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again100608%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100593%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100599%_))
                    (let ((_%prototype100619%_
                           (let ((_%$e100612%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e100612%_
                                 ((lambda (_%prototype100615%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100615%_)
                                  _%$e100612%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor100584%_
                                    _%klass100590%_
                                    _%obj-klass100596%_))))))
                      ((lambda (_%prototype100621%_ _%obj100622%_)
                         (if _%prototype100621%_
                             (let ((_%instance100624%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100621%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100624%_
                                  _%obj100622%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100624%_)
                             '#f))
                       _%prototype100619%_
                       _%obj100586%_))))))))
    (define satisfies?
      (lambda (_%descriptor100544%_ _%obj100546%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100550%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100544%_ '1 '#f '#f)))
               (_%klass-id100553%_
                (let () (declare (not safe)) (##type-id _%klass100550%_)))
               (_%obj-klass100556%_
                (let () (declare (not safe)) (class-of _%obj100546%_)))
               (_%obj-klass-id100559%_
                (let () (declare (not safe)) (##type-id _%obj-klass100556%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100553%_ _%obj-klass-id100559%_))
              _%obj100546%_
              (if (interface-subclass? _%obj-klass100556%_)
                  (satisfies?
                   _%descriptor100544%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj100546%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100568%_ ()
                        (if (let ((__tmp101310
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101310 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again100568%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100553%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100559%_))
                    (let ((_%prototype100579%_
                           (let ((_%$e100572%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e100572%_
                                 ((lambda (_%prototype100575%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100575%_)
                                  _%$e100572%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor100544%_
                                    _%klass100550%_
                                    _%obj-klass100556%_))))))
                      ((lambda (_%prototype100581%_ _%obj100582%_)
                         (if _%prototype100581%_ '#t '#f))
                       _%prototype100579%_
                       _%obj100546%_))))))))))
