(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712084995)
  (begin
    (define CastError::t
      (let ((__tmp101222 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101222
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101215%_
        (apply make-instance CastError::t _%$args101215%_)))
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
      (lambda (_%where101089%_ _%message101090%_ . _%irritants101091%_)
        (let ((__tmp101223
               (let ((__obj101218
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101218
                  _%message101090%_
                  'where:
                  _%where101089%_
                  'irritants:
                  _%irritants101091%_)
                 __obj101218)))
          (declare (not safe))
          (raise __tmp101223))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101225 (list)) (__tmp101224 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101225
         '(__object)
         __tmp101224
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
      (let ((__tmp101227 (list))
            (__tmp101226
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101227
         '(type methods)
         __tmp101226
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101086%_
        (apply make-instance interface-descriptor::t _%$args101086%_)))
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
      (lambda (_%key101084%_)
        (let ((__tmp101229
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101084%_))))
              (__tmp101228
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101084%_)))))
          (declare (not safe))
          (##fxxor __tmp101229 __tmp101228))))
    (define __interface-test-key
      (lambda (_%a101081%_ _%b101082%_)
        (if (let ((__tmp101231
                   (let () (declare (not safe)) (##car _%a101081%_)))
                  (__tmp101230
                   (let () (declare (not safe)) (##car _%b101082%_))))
              (declare (not safe))
              (##eq? __tmp101231 __tmp101230))
            (let ((__tmp101233
                   (let () (declare (not safe)) (##cdr _%a101081%_)))
                  (__tmp101232
                   (let () (declare (not safe)) (##cdr _%b101082%_))))
              (declare (not safe))
              (##eq? __tmp101233 __tmp101232))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101062%_ _%seed101064%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101062%_
           __interface-hash-key
           __interface-test-key
           _%seed101064%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101070%_ '#f) (_%seed101072%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101070%_ _%seed101072%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101074%_)
        (let ((_%seed101076%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101074%_ _%seed101076%_))))
    (define make-prototype-table
      (lambda _g101235_
        (let ((_g101234_ (let () (declare (not safe)) (##length _g101235_))))
          (cond ((let () (declare (not safe)) (##fx= _g101234_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101235_))
                ((let () (declare (not safe)) (##fx= _g101234_ 1))
                 (apply (lambda (_%size-hint101074%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101074%_)))
                        _g101235_))
                ((let () (declare (not safe)) (##fx= _g101234_ 2))
                 (apply (lambda (_%size-hint101078%_ _%seed101079%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101078%_
                             _%seed101079%_)))
                        _g101235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101235_))))))
    (define prototype-table-ref
      (lambda (_%tab101015%_ _%key101016%_ _%default101017%_)
        (let ((_%table101019%_
               (let () (declare (not safe)) (&raw-table-table _%tab101015%_)))
              (_%seed101020%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101015%_))))
          (let* ((_%h101022%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101016%_))
                         _%seed101020%_))
                 (_%size101025%_ (vector-length _%table101019%_))
                 (_%entries101028%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101025%_ '2)))
                 (_%start101031%_
                  (let ((__tmp101236
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101022%_ _%entries101028%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101236 '1))))
            (let _%loop101035%_ ((_%probe101038%_ _%start101031%_)
                                 (_%i101040%_ '1)
                                 (_%deleted101042%_ '#f))
              (let ((_%k101045%_ (vector-ref _%table101019%_ _%probe101038%_)))
                (if (eq? _%k101045%_ (macro-unused-obj))
                    (let () _%default101017%_)
                    (if (eq? _%k101045%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101239
                                 (let ((_%next-probe101050%_
                                        (fx+ _%start101031%_
                                             _%i101040%_
                                             (fx* _%i101040%_ _%i101040%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101050%_
                                    _%size101025%_)))
                                (__tmp101238
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i101040%_ '1)))
                                (__tmp101237
                                 (let ((_%$e101053%_ _%deleted101042%_))
                                   (if _%$e101053%_
                                       _%$e101053%_
                                       _%probe101038%_))))
                            (declare (not safe))
                            (_%loop101035%_
                             __tmp101239
                             __tmp101238
                             __tmp101237)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101016%_ _%k101045%_))
                            (let ()
                              (vector-ref
                               _%table101019%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101038%_ '1))))
                            (let ()
                              (let ((__tmp101241
                                     (let ((_%next-probe101058%_
                                            (fx+ _%start101031%_
                                                 _%i101040%_
                                                 (fx* _%i101040%_
                                                      _%i101040%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101058%_
                                        _%size101025%_)))
                                    (__tmp101240
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i101040%_ '1))))
                                (declare (not safe))
                                (_%loop101035%_
                                 __tmp101241
                                 __tmp101240
                                 _%deleted101042%_))))))))))))
    (define prototype-table-set!
      (lambda (_%tab101011%_ _%key101012%_ _%value101013%_)
        (if (let ((__tmp101244
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101011%_)))
                  (__tmp101242
                   (let ((__tmp101243
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101011%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101243 '4))))
              (declare (not safe))
              (##fx< __tmp101244 __tmp101242))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101011%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101011%_
           _%key101012%_
           _%value101013%_))))
    (define __prototype-table-set!
      (lambda (_%tab100962%_ _%key100963%_ _%value100964%_)
        (let ((_%table100967%_
               (let () (declare (not safe)) (&raw-table-table _%tab100962%_)))
              (_%seed100968%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100962%_))))
          (let* ((_%h100970%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100963%_))
                         _%seed100968%_))
                 (_%size100973%_ (vector-length _%table100967%_))
                 (_%entries100976%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100973%_ '2)))
                 (_%start100979%_
                  (let ((__tmp101245
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100970%_ _%entries100976%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101245 '1))))
            (let _%loop100983%_ ((_%probe100986%_ _%start100979%_)
                                 (_%i100988%_ '1)
                                 (_%deleted100990%_ '#f))
              (let ((_%k100993%_ (vector-ref _%table100967%_ _%probe100986%_)))
                (if (eq? _%k100993%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted100990%_
                          (begin
                            (vector-set!
                             _%table100967%_
                             _%deleted100990%_
                             _%key100963%_)
                            (vector-set!
                             _%table100967%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted100990%_ '1))
                             _%value100964%_)
                            ((lambda ()
                               (let ((__tmp101246
                                      (let ((__tmp101247
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100962%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101247 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100962%_
                                  __tmp101246)))))
                          (begin
                            (vector-set!
                             _%table100967%_
                             _%probe100986%_
                             _%key100963%_)
                            (vector-set!
                             _%table100967%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe100986%_ '1))
                             _%value100964%_)
                            ((lambda ()
                               (let ((__tmp101248
                                      (let ((__tmp101249
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab100962%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101249 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab100962%_
                                  __tmp101248))
                               (let ((__tmp101250
                                      (let ((__tmp101251
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100962%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101251 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100962%_
                                  __tmp101250)))))))
                    (if (eq? _%k100993%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101254
                                 (let ((_%next-probe101000%_
                                        (fx+ _%start100979%_
                                             _%i100988%_
                                             (fx* _%i100988%_ _%i100988%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe101000%_
                                    _%size100973%_)))
                                (__tmp101253
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i100988%_ '1)))
                                (__tmp101252
                                 (let ((_%$e101003%_ _%deleted100990%_))
                                   (if _%$e101003%_
                                       _%$e101003%_
                                       _%probe100986%_))))
                            (declare (not safe))
                            (_%loop100983%_
                             __tmp101254
                             __tmp101253
                             __tmp101252)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100963%_ _%k100993%_))
                            (let ()
                              (vector-set!
                               _%table100967%_
                               _%probe100986%_
                               _%key100963%_)
                              (vector-set!
                               _%table100967%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100986%_ '1))
                               _%value100964%_))
                            (let ()
                              (let ((__tmp101256
                                     (let ((_%next-probe101008%_
                                            (fx+ _%start100979%_
                                                 _%i100988%_
                                                 (fx* _%i100988%_
                                                      _%i100988%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe101008%_
                                        _%size100973%_)))
                                    (__tmp101255
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i100988%_ '1))))
                                (declare (not safe))
                                (_%loop100983%_
                                 __tmp101256
                                 __tmp101255
                                 _%deleted100990%_))))))))))))
    (define prototype-table-update!
      (lambda (_%tab100957%_
               _%key100958%_
               _%prototype-table-update!100959%_
               _%default100960%_)
        (if (let ((__tmp101259
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab100957%_)))
                  (__tmp101257
                   (let ((__tmp101258
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab100957%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101258 '4))))
              (declare (not safe))
              (##fx< __tmp101259 __tmp101257))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab100957%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab100957%_
           _%key100958%_
           _%prototype-table-update!100959%_
           _%default100960%_))))
    (define __prototype-table-update!
      (lambda (_%tab100907%_
               _%key100908%_
               _%prototype-table-update!100909%_
               _%default100910%_)
        (let ((_%table100913%_
               (let () (declare (not safe)) (&raw-table-table _%tab100907%_)))
              (_%seed100914%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100907%_))))
          (let* ((_%h100916%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100908%_))
                         _%seed100914%_))
                 (_%size100919%_ (vector-length _%table100913%_))
                 (_%entries100922%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100919%_ '2)))
                 (_%start100925%_
                  (let ((__tmp101260
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100916%_ _%entries100922%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101260 '1))))
            (let _%loop100929%_ ((_%probe100932%_ _%start100925%_)
                                 (_%i100934%_ '1)
                                 (_%deleted100936%_ '#f))
              (let ((_%k100939%_ (vector-ref _%table100913%_ _%probe100932%_)))
                (if (eq? _%k100939%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted100936%_
                          (begin
                            (vector-set!
                             _%table100913%_
                             _%deleted100936%_
                             _%key100908%_)
                            (vector-set!
                             _%table100913%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted100936%_ '1))
                             (_%prototype-table-update!100909%_
                              _%default100910%_))
                            ((lambda ()
                               (let ((__tmp101261
                                      (let ((__tmp101262
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100907%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101262 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100907%_
                                  __tmp101261)))))
                          (begin
                            (vector-set!
                             _%table100913%_
                             _%probe100932%_
                             _%key100908%_)
                            (vector-set!
                             _%table100913%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe100932%_ '1))
                             (_%prototype-table-update!100909%_
                              _%default100910%_))
                            ((lambda ()
                               (let ((__tmp101263
                                      (let ((__tmp101264
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab100907%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101264 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab100907%_
                                  __tmp101263))
                               (let ((__tmp101265
                                      (let ((__tmp101266
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab100907%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101266 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab100907%_
                                  __tmp101265)))))))
                    (if (eq? _%k100939%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101269
                                 (let ((_%next-probe100946%_
                                        (fx+ _%start100925%_
                                             _%i100934%_
                                             (fx* _%i100934%_ _%i100934%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe100946%_
                                    _%size100919%_)))
                                (__tmp101268
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i100934%_ '1)))
                                (__tmp101267
                                 (let ((_%$e100949%_ _%deleted100936%_))
                                   (if _%$e100949%_
                                       _%$e100949%_
                                       _%probe100932%_))))
                            (declare (not safe))
                            (_%loop100929%_
                             __tmp101269
                             __tmp101268
                             __tmp101267)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100908%_ _%k100939%_))
                            (let ()
                              (vector-set!
                               _%table100913%_
                               _%probe100932%_
                               _%key100908%_)
                              (vector-set!
                               _%table100913%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100932%_ '1))
                               (_%prototype-table-update!100909%_
                                (vector-ref
                                 _%table100913%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe100932%_ '1))))))
                            (let ()
                              (let ((__tmp101271
                                     (let ((_%next-probe100954%_
                                            (fx+ _%start100925%_
                                                 _%i100934%_
                                                 (fx* _%i100934%_
                                                      _%i100934%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe100954%_
                                        _%size100919%_)))
                                    (__tmp101270
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i100934%_ '1))))
                                (declare (not safe))
                                (_%loop100929%_
                                 __tmp101271
                                 __tmp101270
                                 _%deleted100936%_))))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab100862%_ _%key100864%_)
        (let ((_%table100867%_
               (let () (declare (not safe)) (&raw-table-table _%tab100862%_)))
              (_%seed100869%_
               (let () (declare (not safe)) (&raw-table-seed _%tab100862%_))))
          (let* ((_%h100872%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key100864%_))
                         _%seed100869%_))
                 (_%size100875%_ (vector-length _%table100867%_))
                 (_%entries100878%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size100875%_ '2)))
                 (_%start100881%_
                  (let ((__tmp101272
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h100872%_ _%entries100878%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101272 '1))))
            (let _%loop100885%_ ((_%probe100888%_ _%start100881%_)
                                 (_%i100890%_ '1))
              (let ((_%k100893%_ (vector-ref _%table100867%_ _%probe100888%_)))
                (if (eq? _%k100893%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k100893%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp101274
                                 (let ((_%next-probe100898%_
                                        (fx+ _%start100881%_
                                             _%i100890%_
                                             (fx* _%i100890%_ _%i100890%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe100898%_
                                    _%size100875%_)))
                                (__tmp101273
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i100890%_ '1))))
                            (declare (not safe))
                            (_%loop100885%_ __tmp101274 __tmp101273)))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key100864%_ _%k100893%_))
                            (let ()
                              (vector-set!
                               _%table100867%_
                               _%probe100888%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table100867%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe100888%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101275
                                        (let ((__tmp101276
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab100862%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101276 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab100862%_
                                    __tmp101275)))))
                            (let ()
                              (let ((__tmp101278
                                     (let ((_%next-probe100904%_
                                            (fx+ _%start100881%_
                                                 _%i100890%_
                                                 (fx* _%i100890%_
                                                      _%i100890%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe100904%_
                                        _%size100875%_)))
                                    (__tmp101277
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i100890%_ '1))))
                                (declare (not safe))
                                (_%loop100885%_
                                 __tmp101278
                                 __tmp101277))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass100854%_)
        (let ((_%super100855100857%_
               (let () (declare (not safe)) (##type-super _%klass100854%_))))
          (if _%super100855100857%_
              (let ((_%super100860%_ _%super100855100857%_))
                (eq? (let () (declare (not safe)) (##type-id _%super100860%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor100739%_ _%klass100740%_ _%obj-klass100741%_)
        (let ((_%method-table100743%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100741%_))))
          (let _%loop100746%_ ((_%rest100749%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100739%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100751%_ '0)
                               (_%methods100753%_ '()))
            (let* ((_%rest100755100763%_ _%rest100749%_)
                   (_%else100757100825%_
                    (lambda ()
                      (let ((_%prototype100771%_
                             (let ((__obj101220
                                    (let ((__tmp101279
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100751%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100740%_
                                       __tmp101279))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101220 '#f))
                               __obj101220)))
                        (let _%loop100774%_ ((_%rest100776%_ _%methods100753%_)
                                             (_%off100777%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100751%_ '1))))
                          (let* ((_%rest100779100787%_ _%rest100776%_)
                                 (_%else100781100806%_
                                  (lambda ()
                                    (let ((_%prototype-key100795%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100740%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100741%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100800%_ ()
                                          (if (let ((__tmp101280
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101280 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100800%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100795%_
                                         _%prototype100771%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100804%_)
                                         _%prototype100804%_)
                                       _%prototype100771%_))))
                                 (_%K100783100813%_
                                  (lambda (_%rest100809%_ _%method100810%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100771%_
                                       _%method100810%_
                                       _%off100777%_
                                       _%klass100740%_
                                       '#f))
                                    (let ((__tmp101281
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100777%_ '1))))
                                      (declare (not safe))
                                      (_%loop100774%_
                                       _%rest100809%_
                                       __tmp101281)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100779100787%_))
                                (let ((_%hd100784100816%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100779100787%_)))
                                      (_%tl100785100818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100779100787%_))))
                                  (let* ((_%method100821%_ _%hd100784100816%_)
                                         (_%rest100823%_ _%tl100785100818%_))
                                    (declare (not safe))
                                    (_%K100783100813%_
                                     _%rest100823%_
                                     _%method100821%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100781100806%_))))))))
                   (_%K100759100842%_
                    (lambda (_%rest100828%_ _%method-name100829%_)
                      (let ((_%$e100832%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100743%_
                                _%method-name100829%_
                                '#f))))
                        (if _%$e100832%_
                            ((lambda (_%method100835%_)
                               (let ((__tmp101283
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100751%_ '1)))
                                     (__tmp101282
                                      (cons _%method100835%_
                                            _%methods100753%_)))
                                 (declare (not safe))
                                 (_%loop100746%_
                                  _%rest100828%_
                                  __tmp101283
                                  __tmp101282)))
                             _%$e100832%_)
                            (let ()
                              ((lambda (_%klass100838%_
                                        _%obj-klass100839%_
                                        _%method-name100840%_)
                                 (let ((__tmp101285
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass100838%_)))
                                       (__tmp101284
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass100839%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass100838%_
                                    'interface-id:
                                    __tmp101285
                                    'class:
                                    _%obj-klass100839%_
                                    'class-id:
                                    __tmp101284
                                    'method:
                                    _%method-name100840%_)))
                               _%klass100740%_
                               _%obj-klass100741%_
                               _%method-name100829%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100755100763%_))
                  (let ((_%hd100760100845%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100755100763%_)))
                        (_%tl100761100847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100755100763%_))))
                    (let* ((_%method-name100850%_ _%hd100760100845%_)
                           (_%rest100852%_ _%tl100761100847%_))
                      (declare (not safe))
                      (_%K100759100842%_
                       _%rest100852%_
                       _%method-name100850%_)))
                  (let () (declare (not safe)) (_%else100757100825%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor100624%_ _%klass100625%_ _%obj-klass100626%_)
        (let ((_%method-table100628%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass100626%_))))
          (let _%loop100631%_ ((_%rest100634%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor100624%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count100636%_ '0)
                               (_%methods100638%_ '()))
            (let* ((_%rest100640100648%_ _%rest100634%_)
                   (_%else100642100710%_
                    (lambda ()
                      (let ((_%prototype100656%_
                             (let ((__obj101221
                                    (let ((__tmp101286
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count100636%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass100625%_
                                       __tmp101286))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101221 '#f))
                               __obj101221)))
                        (let _%loop100659%_ ((_%rest100661%_ _%methods100638%_)
                                             (_%off100662%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count100636%_ '1))))
                          (let* ((_%rest100664100672%_ _%rest100661%_)
                                 (_%else100666100691%_
                                  (lambda ()
                                    (let ((_%prototype-key100680%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass100625%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass100626%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again100685%_ ()
                                          (if (let ((__tmp101287
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101287 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again100685%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key100680%_
                                         _%prototype100656%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype100689%_)
                                         _%prototype100689%_)
                                       _%prototype100656%_))))
                                 (_%K100668100698%_
                                  (lambda (_%rest100694%_ _%method100695%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype100656%_
                                       _%method100695%_
                                       _%off100662%_
                                       _%klass100625%_
                                       '#f))
                                    (let ((__tmp101288
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off100662%_ '1))))
                                      (declare (not safe))
                                      (_%loop100659%_
                                       _%rest100694%_
                                       __tmp101288)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest100664100672%_))
                                (let ((_%hd100669100701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest100664100672%_)))
                                      (_%tl100670100703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100664100672%_))))
                                  (let* ((_%method100706%_ _%hd100669100701%_)
                                         (_%rest100708%_ _%tl100670100703%_))
                                    (declare (not safe))
                                    (_%K100668100698%_
                                     _%rest100708%_
                                     _%method100706%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else100666100691%_))))))))
                   (_%K100644100727%_
                    (lambda (_%rest100713%_ _%method-name100714%_)
                      (let ((_%$e100717%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table100628%_
                                _%method-name100714%_
                                '#f))))
                        (if _%$e100717%_
                            ((lambda (_%method100720%_)
                               (let ((__tmp101290
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count100636%_ '1)))
                                     (__tmp101289
                                      (cons _%method100720%_
                                            _%methods100638%_)))
                                 (declare (not safe))
                                 (_%loop100631%_
                                  _%rest100713%_
                                  __tmp101290
                                  __tmp101289)))
                             _%$e100717%_)
                            (let ()
                              ((lambda (_%klass100723%_
                                        _%obj-klass100724%_
                                        _%method-name100725%_)
                                 '#f)
                               _%klass100625%_
                               _%obj-klass100626%_
                               _%method-name100714%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest100640100648%_))
                  (let ((_%hd100645100730%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100640100648%_)))
                        (_%tl100646100732%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100640100648%_))))
                    (let* ((_%method-name100735%_ _%hd100645100730%_)
                           (_%rest100737%_ _%tl100646100732%_))
                      (declare (not safe))
                      (_%K100644100727%_
                       _%rest100737%_
                       _%method-name100735%_)))
                  (let () (declare (not safe)) (_%else100642100710%_))))))))
    (define cast
      (lambda (_%descriptor100582%_ _%obj100584%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100588%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100582%_ '1 '#f '#f)))
               (_%klass-id100591%_
                (let () (declare (not safe)) (##type-id _%klass100588%_)))
               (_%obj-klass100594%_
                (let () (declare (not safe)) (class-of _%obj100584%_)))
               (_%obj-klass-id100597%_
                (let () (declare (not safe)) (##type-id _%obj-klass100594%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100591%_ _%obj-klass-id100597%_))
              (let () _%obj100584%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100594%_))
                  (let ()
                    (let ((__tmp101291
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100584%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (cast _%descriptor100582%_ __tmp101291)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100606%_ ()
                        (if (let ((__tmp101292
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101292 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100606%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100591%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100597%_))
                    (let ((_%prototype100617%_
                           (let ((_%$e100610%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100610%_
                                 ((lambda (_%prototype100613%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100613%_)
                                  _%$e100610%_)
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
                                      _%descriptor100582%_
                                      _%klass100588%_
                                      _%obj-klass100594%_)))))))
                      ((lambda (_%prototype100619%_ _%obj100620%_)
                         (let ((_%instance100622%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype100619%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance100622%_
                              _%obj100620%_
                              '1
                              '#f
                              'cast))
                           _%instance100622%_))
                       _%prototype100617%_
                       _%obj100584%_))))))))
    (define try-cast
      (lambda (_%descriptor100540%_ _%obj100542%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100546%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100540%_ '1 '#f '#f)))
               (_%klass-id100549%_
                (let () (declare (not safe)) (##type-id _%klass100546%_)))
               (_%obj-klass100552%_
                (let () (declare (not safe)) (class-of _%obj100542%_)))
               (_%obj-klass-id100555%_
                (let () (declare (not safe)) (##type-id _%obj-klass100552%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100549%_ _%obj-klass-id100555%_))
              (let () _%obj100542%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100552%_))
                  (let ()
                    (let ((__tmp101293
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100542%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (try-cast _%descriptor100540%_ __tmp101293)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100564%_ ()
                        (if (let ((__tmp101294
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101294 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100564%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100549%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100555%_))
                    (let ((_%prototype100575%_
                           (let ((_%$e100568%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100568%_
                                 ((lambda (_%prototype100571%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100571%_)
                                  _%$e100568%_)
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
                                      _%descriptor100540%_
                                      _%klass100546%_
                                      _%obj-klass100552%_)))))))
                      ((lambda (_%prototype100577%_ _%obj100578%_)
                         (if _%prototype100577%_
                             (let ((_%instance100580%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype100577%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance100580%_
                                  _%obj100578%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance100580%_)
                             '#f))
                       _%prototype100575%_
                       _%obj100542%_))))))))
    (define satisfies?
      (lambda (_%descriptor100500%_ _%obj100502%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass100506%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor100500%_ '1 '#f '#f)))
               (_%klass-id100509%_
                (let () (declare (not safe)) (##type-id _%klass100506%_)))
               (_%obj-klass100512%_
                (let () (declare (not safe)) (class-of _%obj100502%_)))
               (_%obj-klass-id100515%_
                (let () (declare (not safe)) (##type-id _%obj-klass100512%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id100509%_ _%obj-klass-id100515%_))
              (let () _%obj100502%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass100512%_))
                  (let ()
                    (let ((__tmp101295
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%obj100502%_
                              '1
                              '#f
                              '#f))))
                      (declare (not safe))
                      (satisfies? _%descriptor100500%_ __tmp101295)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again100524%_ ()
                        (if (let ((__tmp101296
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101296 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again100524%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id100509%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id100515%_))
                    (let ((_%prototype100535%_
                           (let ((_%$e100528%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e100528%_
                                 ((lambda (_%prototype100531%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype100531%_)
                                  _%$e100528%_)
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
                                      _%descriptor100500%_
                                      _%klass100506%_
                                      _%obj-klass100512%_)))))))
                      ((lambda (_%prototype100537%_ _%obj100538%_)
                         (if _%prototype100537%_ '#t '#f))
                       _%prototype100535%_
                       _%obj100502%_))))))))))
