(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734131746)
  (begin
    (define CastError::t
      (let ((__tmp105223 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp105223
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args105216%_
        (apply make-instance CastError::t _%$args105216%_)))
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
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where105090%_ _%message105091%_ . _%irritants105092%_)
        (let ((__tmp105224
               (let ((__obj105219
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj105219
                    _%message105091%_
                    'where:
                    _%where105090%_
                    'irritants:
                    _%irritants105092%_))
                 __obj105219)))
          (declare (not safe))
          (raise __tmp105224))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp105226 (list)) (__tmp105225 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp105226
         '(__object)
         __tmp105225
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
      (let ((__tmp105228 (list))
            (__tmp105227
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp105228
         '(type methods)
         __tmp105227
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args105087%_
        (apply make-instance interface-descriptor::t _%$args105087%_)))
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
      (lambda (_%key105085%_)
        (let ((__tmp105230
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key105085%_))))
              (__tmp105229
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key105085%_)))))
          (declare (not safe))
          (##fxxor __tmp105230 __tmp105229))))
    (define __interface-test-key
      (lambda (_%a105082%_ _%b105083%_)
        (if (let ((__tmp105232
                   (let () (declare (not safe)) (##car _%a105082%_)))
                  (__tmp105231
                   (let () (declare (not safe)) (##car _%b105083%_))))
              (declare (not safe))
              (##eq? __tmp105232 __tmp105231))
            (let ((__tmp105234
                   (let () (declare (not safe)) (##cdr _%a105082%_)))
                  (__tmp105233
                   (let () (declare (not safe)) (##cdr _%b105083%_))))
              (declare (not safe))
              (##eq? __tmp105234 __tmp105233))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105063%_ _%seed105065%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105063%_
           __interface-hash-key
           __interface-test-key
           _%seed105065%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105071%_ '#f) (_%seed105073%_ '0))
          (make-prototype-table__% _%size-hint105071%_ _%seed105073%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105075%_)
        (let ((_%seed105077%_ '0))
          (make-prototype-table__% _%size-hint105075%_ _%seed105077%_))))
    (define make-prototype-table
      (lambda _g105236_
        (let ((_g105235_ (let () (declare (not safe)) (##length _g105236_))))
          (cond ((let () (declare (not safe)) (##fx= _g105235_ 0))
                 (apply make-prototype-table__0 _g105236_))
                ((let () (declare (not safe)) (##fx= _g105235_ 1))
                 (apply make-prototype-table__1 _g105236_))
                ((let () (declare (not safe)) (##fx= _g105235_ 2))
                 (apply make-prototype-table__% _g105236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g105236_))))))
    (define prototype-table-ref
      (lambda (_%tab105016%_ _%key105017%_ _%default105018%_)
        (let ((_%table105020%_
               (let () (declare (not safe)) (&raw-table-table _%tab105016%_)))
              (_%seed105021%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105016%_))))
          (let* ((_%h105023%_
                  (fxxor (__interface-hash-key _%key105017%_) _%seed105021%_))
                 (_%size105026%_ (vector-length _%table105020%_))
                 (_%entries105029%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105026%_ '2)))
                 (_%start105032%_
                  (let ((__tmp105237
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105023%_ _%entries105029%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105237 '1))))
            (let _%loop105036%_ ((_%probe105039%_ _%start105032%_)
                                 (_%i105041%_ '1)
                                 (_%deleted105043%_ '#f))
              (let ((_%k105046%_ (vector-ref _%table105020%_ _%probe105039%_)))
                (if (eq? _%k105046%_ (macro-unused-obj))
                    _%default105018%_
                    (if (eq? _%k105046%_ (macro-deleted-obj))
                        (_%loop105036%_
                         (let ((_%next-probe105051%_
                                (fx+ _%start105032%_
                                     _%i105041%_
                                     (fx* _%i105041%_ _%i105041%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105051%_ _%size105026%_))
                         (let () (declare (not safe)) (##fx+ _%i105041%_ '1))
                         (let ((_%$e105054%_ _%deleted105043%_))
                           (if _%$e105054%_ _%$e105054%_ _%probe105039%_)))
                        (if (__interface-test-key _%key105017%_ _%k105046%_)
                            (vector-ref
                             _%table105020%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105039%_ '1)))
                            (_%loop105036%_
                             (let ((_%next-probe105059%_
                                    (fx+ _%start105032%_
                                         _%i105041%_
                                         (fx* _%i105041%_ _%i105041%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105059%_
                                _%size105026%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105041%_ '1))
                             _%deleted105043%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105012%_ _%key105013%_ _%value105014%_)
        (if (let ((__tmp105240
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105012%_)))
                  (__tmp105238
                   (let ((__tmp105239
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105012%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105239 '4))))
              (declare (not safe))
              (##fx< __tmp105240 __tmp105238))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105012%_))
            '#!void)
        (__prototype-table-set! _%tab105012%_ _%key105013%_ _%value105014%_)))
    (define __prototype-table-set!
      (lambda (_%tab104963%_ _%key104964%_ _%value104965%_)
        (let ((_%table104968%_
               (let () (declare (not safe)) (&raw-table-table _%tab104963%_)))
              (_%seed104969%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104963%_))))
          (let* ((_%h104971%_
                  (fxxor (__interface-hash-key _%key104964%_) _%seed104969%_))
                 (_%size104974%_ (vector-length _%table104968%_))
                 (_%entries104977%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104974%_ '2)))
                 (_%start104980%_
                  (let ((__tmp105241
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104971%_ _%entries104977%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105241 '1))))
            (let _%loop104984%_ ((_%probe104987%_ _%start104980%_)
                                 (_%i104989%_ '1)
                                 (_%deleted104991%_ '#f))
              (let ((_%k104994%_ (vector-ref _%table104968%_ _%probe104987%_)))
                (if (eq? _%k104994%_ (macro-unused-obj))
                    (if _%deleted104991%_
                        (begin
                          (vector-set!
                           _%table104968%_
                           _%deleted104991%_
                           _%key104964%_)
                          (vector-set!
                           _%table104968%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104991%_ '1))
                           _%value104965%_)
                          ((lambda ()
                             (let ((__tmp105242
                                    (let ((__tmp105243
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104963%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105243 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104963%_
                                __tmp105242)))))
                        (begin
                          (vector-set!
                           _%table104968%_
                           _%probe104987%_
                           _%key104964%_)
                          (vector-set!
                           _%table104968%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104987%_ '1))
                           _%value104965%_)
                          ((lambda ()
                             (let ((__tmp105244
                                    (let ((__tmp105245
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104963%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105245 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104963%_
                                __tmp105244))
                             (let ((__tmp105246
                                    (let ((__tmp105247
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104963%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105247 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104963%_
                                __tmp105246))))))
                    (if (eq? _%k104994%_ (macro-deleted-obj))
                        (_%loop104984%_
                         (let ((_%next-probe105001%_
                                (fx+ _%start104980%_
                                     _%i104989%_
                                     (fx* _%i104989%_ _%i104989%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105001%_ _%size104974%_))
                         (let () (declare (not safe)) (##fx+ _%i104989%_ '1))
                         (let ((_%$e105004%_ _%deleted104991%_))
                           (if _%$e105004%_ _%$e105004%_ _%probe104987%_)))
                        (if (__interface-test-key _%key104964%_ _%k104994%_)
                            (let ()
                              (vector-set!
                               _%table104968%_
                               _%probe104987%_
                               _%key104964%_)
                              (vector-set!
                               _%table104968%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104987%_ '1))
                               _%value104965%_))
                            (_%loop104984%_
                             (let ((_%next-probe105009%_
                                    (fx+ _%start104980%_
                                         _%i104989%_
                                         (fx* _%i104989%_ _%i104989%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105009%_
                                _%size104974%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104989%_ '1))
                             _%deleted104991%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab104958%_
               _%key104959%_
               _%prototype-table-update!104960%_
               _%default104961%_)
        (if (let ((__tmp105250
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104958%_)))
                  (__tmp105248
                   (let ((__tmp105249
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104958%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105249 '4))))
              (declare (not safe))
              (##fx< __tmp105250 __tmp105248))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104958%_))
            '#!void)
        (__prototype-table-update!
         _%tab104958%_
         _%key104959%_
         _%prototype-table-update!104960%_
         _%default104961%_)))
    (define __prototype-table-update!
      (lambda (_%tab104908%_
               _%key104909%_
               _%prototype-table-update!104910%_
               _%default104911%_)
        (let ((_%table104914%_
               (let () (declare (not safe)) (&raw-table-table _%tab104908%_)))
              (_%seed104915%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104908%_))))
          (let* ((_%h104917%_
                  (fxxor (__interface-hash-key _%key104909%_) _%seed104915%_))
                 (_%size104920%_ (vector-length _%table104914%_))
                 (_%entries104923%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104920%_ '2)))
                 (_%start104926%_
                  (let ((__tmp105251
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104917%_ _%entries104923%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105251 '1))))
            (let _%loop104930%_ ((_%probe104933%_ _%start104926%_)
                                 (_%i104935%_ '1)
                                 (_%deleted104937%_ '#f))
              (let ((_%k104940%_ (vector-ref _%table104914%_ _%probe104933%_)))
                (if (eq? _%k104940%_ (macro-unused-obj))
                    (if _%deleted104937%_
                        (begin
                          (vector-set!
                           _%table104914%_
                           _%deleted104937%_
                           _%key104909%_)
                          (vector-set!
                           _%table104914%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104937%_ '1))
                           (_%prototype-table-update!104910%_
                            _%default104911%_))
                          ((lambda ()
                             (let ((__tmp105252
                                    (let ((__tmp105253
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104908%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105253 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104908%_
                                __tmp105252)))))
                        (begin
                          (vector-set!
                           _%table104914%_
                           _%probe104933%_
                           _%key104909%_)
                          (vector-set!
                           _%table104914%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104933%_ '1))
                           (_%prototype-table-update!104910%_
                            _%default104911%_))
                          ((lambda ()
                             (let ((__tmp105254
                                    (let ((__tmp105255
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104908%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105255 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104908%_
                                __tmp105254))
                             (let ((__tmp105256
                                    (let ((__tmp105257
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104908%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105257 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104908%_
                                __tmp105256))))))
                    (if (eq? _%k104940%_ (macro-deleted-obj))
                        (_%loop104930%_
                         (let ((_%next-probe104947%_
                                (fx+ _%start104926%_
                                     _%i104935%_
                                     (fx* _%i104935%_ _%i104935%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104947%_ _%size104920%_))
                         (let () (declare (not safe)) (##fx+ _%i104935%_ '1))
                         (let ((_%$e104950%_ _%deleted104937%_))
                           (if _%$e104950%_ _%$e104950%_ _%probe104933%_)))
                        (if (__interface-test-key _%key104909%_ _%k104940%_)
                            (let ()
                              (vector-set!
                               _%table104914%_
                               _%probe104933%_
                               _%key104909%_)
                              (vector-set!
                               _%table104914%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104933%_ '1))
                               (_%prototype-table-update!104910%_
                                (vector-ref
                                 _%table104914%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104933%_ '1))))))
                            (_%loop104930%_
                             (let ((_%next-probe104955%_
                                    (fx+ _%start104926%_
                                         _%i104935%_
                                         (fx* _%i104935%_ _%i104935%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104955%_
                                _%size104920%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104935%_ '1))
                             _%deleted104937%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab104863%_ _%key104865%_)
        (let ((_%table104868%_
               (let () (declare (not safe)) (&raw-table-table _%tab104863%_)))
              (_%seed104870%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104863%_))))
          (let* ((_%h104873%_
                  (fxxor (__interface-hash-key _%key104865%_) _%seed104870%_))
                 (_%size104876%_ (vector-length _%table104868%_))
                 (_%entries104879%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104876%_ '2)))
                 (_%start104882%_
                  (let ((__tmp105258
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104873%_ _%entries104879%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105258 '1))))
            (let _%loop104886%_ ((_%probe104889%_ _%start104882%_)
                                 (_%i104891%_ '1))
              (let ((_%k104894%_ (vector-ref _%table104868%_ _%probe104889%_)))
                (if (eq? _%k104894%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104894%_ (macro-deleted-obj))
                        (_%loop104886%_
                         (let ((_%next-probe104899%_
                                (fx+ _%start104882%_
                                     _%i104891%_
                                     (fx* _%i104891%_ _%i104891%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104899%_ _%size104876%_))
                         (let () (declare (not safe)) (##fx+ _%i104891%_ '1)))
                        (if (__interface-test-key _%key104865%_ _%k104894%_)
                            (let ()
                              (vector-set!
                               _%table104868%_
                               _%probe104889%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104868%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104889%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp105259
                                        (let ((__tmp105260
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104863%_))))
                                          (declare (not safe))
                                          (##fx- __tmp105260 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104863%_
                                    __tmp105259)))))
                            (_%loop104886%_
                             (let ((_%next-probe104905%_
                                    (fx+ _%start104882%_
                                         _%i104891%_
                                         (fx* _%i104891%_ _%i104891%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104905%_
                                _%size104876%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104891%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass104855%_)
        (let ((_%super104856104858%_
               (let () (declare (not safe)) (##type-super _%klass104855%_))))
          (if _%super104856104858%_
              (let ((_%super104861%_ _%super104856104858%_))
                (eq? (let () (declare (not safe)) (##type-id _%super104861%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor104740%_ _%klass104741%_ _%obj-klass104742%_)
        (let ((_%method-table104744%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104742%_))))
          (let _%loop104747%_ ((_%rest104750%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104740%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104752%_ '0)
                               (_%methods104754%_ '()))
            (let* ((_%rest104756104764%_ _%rest104750%_)
                   (_%else104758104826%_
                    (lambda ()
                      (let ((_%prototype104772%_
                             (let ((__obj105221
                                    (let ((__tmp105261
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104752%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104741%_
                                       __tmp105261))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105221 '#f))
                               __obj105221)))
                        (let _%loop104775%_ ((_%rest104777%_ _%methods104754%_)
                                             (_%off104778%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104752%_ '1))))
                          (let* ((_%rest104780104788%_ _%rest104777%_)
                                 (_%else104782104807%_
                                  (lambda ()
                                    (let ((_%prototype-key104796%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104741%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104742%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104801%_ ()
                                          (if (let ((__tmp105262
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105262 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104801%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104796%_
                                       _%prototype104772%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104805%_)
                                         _%prototype104805%_)
                                       _%prototype104772%_))))
                                 (_%K104784104814%_
                                  (lambda (_%rest104810%_ _%method104811%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104772%_
                                       _%method104811%_
                                       _%off104778%_
                                       _%klass104741%_
                                       '#f))
                                    (_%loop104775%_
                                     _%rest104810%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104778%_ '1))))))
                            (if (pair? _%rest104780104788%_)
                                (let ((_%hd104785104817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104780104788%_)))
                                      (_%tl104786104819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104780104788%_))))
                                  (let* ((_%method104822%_ _%hd104785104817%_)
                                         (_%rest104824%_ _%tl104786104819%_))
                                    (_%K104784104814%_
                                     _%rest104824%_
                                     _%method104822%_)))
                                (_%else104782104807%_)))))))
                   (_%K104760104843%_
                    (lambda (_%rest104829%_ _%method-name104830%_)
                      (let ((_%$e104833%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104744%_
                                _%method-name104830%_
                                '#f))))
                        (if _%$e104833%_
                            ((lambda (_%method104836%_)
                               (_%loop104747%_
                                _%rest104829%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104752%_ '1))
                                (cons _%method104836%_ _%methods104754%_)))
                             _%$e104833%_)
                            ((lambda (_%klass104839%_
                                      _%obj-klass104840%_
                                      _%method-name104841%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass104839%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass104839%_))
                                'class:
                                _%obj-klass104840%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass104840%_))
                                'method:
                                _%method-name104841%_)
                               '#!void)
                             _%klass104741%_
                             _%obj-klass104742%_
                             _%method-name104830%_))))))
              (if (pair? _%rest104756104764%_)
                  (let ((_%hd104761104846%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104756104764%_)))
                        (_%tl104762104848%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104756104764%_))))
                    (let* ((_%method-name104851%_ _%hd104761104846%_)
                           (_%rest104853%_ _%tl104762104848%_))
                      (_%K104760104843%_
                       _%rest104853%_
                       _%method-name104851%_)))
                  (_%else104758104826%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor104625%_ _%klass104626%_ _%obj-klass104627%_)
        (let ((_%method-table104629%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104627%_))))
          (let _%loop104632%_ ((_%rest104635%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104625%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104637%_ '0)
                               (_%methods104639%_ '()))
            (let* ((_%rest104641104649%_ _%rest104635%_)
                   (_%else104643104711%_
                    (lambda ()
                      (let ((_%prototype104657%_
                             (let ((__obj105222
                                    (let ((__tmp105263
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104637%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104626%_
                                       __tmp105263))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105222 '#f))
                               __obj105222)))
                        (let _%loop104660%_ ((_%rest104662%_ _%methods104639%_)
                                             (_%off104663%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104637%_ '1))))
                          (let* ((_%rest104665104673%_ _%rest104662%_)
                                 (_%else104667104692%_
                                  (lambda ()
                                    (let ((_%prototype-key104681%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104626%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104627%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104686%_ ()
                                          (if (let ((__tmp105264
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105264 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104686%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104681%_
                                       _%prototype104657%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104690%_)
                                         _%prototype104690%_)
                                       _%prototype104657%_))))
                                 (_%K104669104699%_
                                  (lambda (_%rest104695%_ _%method104696%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104657%_
                                       _%method104696%_
                                       _%off104663%_
                                       _%klass104626%_
                                       '#f))
                                    (_%loop104660%_
                                     _%rest104695%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104663%_ '1))))))
                            (if (pair? _%rest104665104673%_)
                                (let ((_%hd104670104702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104665104673%_)))
                                      (_%tl104671104704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104665104673%_))))
                                  (let* ((_%method104707%_ _%hd104670104702%_)
                                         (_%rest104709%_ _%tl104671104704%_))
                                    (_%K104669104699%_
                                     _%rest104709%_
                                     _%method104707%_)))
                                (_%else104667104692%_)))))))
                   (_%K104645104728%_
                    (lambda (_%rest104714%_ _%method-name104715%_)
                      (let ((_%$e104718%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104629%_
                                _%method-name104715%_
                                '#f))))
                        (if _%$e104718%_
                            ((lambda (_%method104721%_)
                               (_%loop104632%_
                                _%rest104714%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104637%_ '1))
                                (cons _%method104721%_ _%methods104639%_)))
                             _%$e104718%_)
                            ((lambda (_%klass104724%_
                                      _%obj-klass104725%_
                                      _%method-name104726%_)
                               '#f)
                             _%klass104626%_
                             _%obj-klass104627%_
                             _%method-name104715%_))))))
              (if (pair? _%rest104641104649%_)
                  (let ((_%hd104646104731%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104641104649%_)))
                        (_%tl104647104733%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104641104649%_))))
                    (let* ((_%method-name104736%_ _%hd104646104731%_)
                           (_%rest104738%_ _%tl104647104733%_))
                      (_%K104645104728%_
                       _%rest104738%_
                       _%method-name104736%_)))
                  (_%else104643104711%_)))))))
    (define cast
      (lambda (_%descriptor104583%_ _%obj104585%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104589%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104583%_ '1 '#f '#f)))
               (_%klass-id104592%_
                (let () (declare (not safe)) (##type-id _%klass104589%_)))
               (_%obj-klass104595%_
                (let () (declare (not safe)) (class-of _%obj104585%_)))
               (_%obj-klass-id104598%_
                (let () (declare (not safe)) (##type-id _%obj-klass104595%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104592%_ _%obj-klass-id104598%_))
              _%obj104585%_
              (if (interface-subclass? _%obj-klass104595%_)
                  (cast _%descriptor104583%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj104585%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104607%_ ()
                        (if (let ((__tmp105265
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105265 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104607%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104592%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104598%_))
                    (let ((_%prototype104618%_
                           (let ((_%$e104611%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104611%_
                                 ((lambda (_%prototype104614%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104614%_)
                                  _%$e104611%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor104583%_
                                    _%klass104589%_
                                    _%obj-klass104595%_))))))
                      ((lambda (_%prototype104620%_ _%obj104621%_)
                         (let ((_%instance104623%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype104620%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance104623%_
                              _%obj104621%_
                              '1
                              '#f
                              'cast))
                           _%instance104623%_))
                       _%prototype104618%_
                       _%obj104585%_))))))))
    (define try-cast
      (lambda (_%descriptor104541%_ _%obj104543%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104547%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104541%_ '1 '#f '#f)))
               (_%klass-id104550%_
                (let () (declare (not safe)) (##type-id _%klass104547%_)))
               (_%obj-klass104553%_
                (let () (declare (not safe)) (class-of _%obj104543%_)))
               (_%obj-klass-id104556%_
                (let () (declare (not safe)) (##type-id _%obj-klass104553%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104550%_ _%obj-klass-id104556%_))
              _%obj104543%_
              (if (interface-subclass? _%obj-klass104553%_)
                  (try-cast
                   _%descriptor104541%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104543%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104565%_ ()
                        (if (let ((__tmp105266
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105266 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104565%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104550%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104556%_))
                    (let ((_%prototype104576%_
                           (let ((_%$e104569%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104569%_
                                 ((lambda (_%prototype104572%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104572%_)
                                  _%$e104569%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104541%_
                                    _%klass104547%_
                                    _%obj-klass104553%_))))))
                      ((lambda (_%prototype104578%_ _%obj104579%_)
                         (if _%prototype104578%_
                             (let ((_%instance104581%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype104578%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance104581%_
                                  _%obj104579%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance104581%_)
                             '#f))
                       _%prototype104576%_
                       _%obj104543%_))))))))
    (define satisfies?
      (lambda (_%descriptor104501%_ _%obj104503%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104507%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104501%_ '1 '#f '#f)))
               (_%klass-id104510%_
                (let () (declare (not safe)) (##type-id _%klass104507%_)))
               (_%obj-klass104513%_
                (let () (declare (not safe)) (class-of _%obj104503%_)))
               (_%obj-klass-id104516%_
                (let () (declare (not safe)) (##type-id _%obj-klass104513%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104510%_ _%obj-klass-id104516%_))
              _%obj104503%_
              (if (interface-subclass? _%obj-klass104513%_)
                  (satisfies?
                   _%descriptor104501%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104503%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104525%_ ()
                        (if (let ((__tmp105267
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105267 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104525%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104510%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104516%_))
                    (let ((_%prototype104536%_
                           (let ((_%$e104529%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104529%_
                                 ((lambda (_%prototype104532%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104532%_)
                                  _%$e104529%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104501%_
                                    _%klass104507%_
                                    _%obj-klass104513%_))))))
                      ((lambda (_%prototype104538%_ _%obj104539%_)
                         (if _%prototype104538%_ '#t '#f))
                       _%prototype104536%_
                       _%obj104503%_))))))))))
