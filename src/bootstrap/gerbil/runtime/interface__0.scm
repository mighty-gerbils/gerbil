(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709213449)
  (begin
    (define CastError::t
      (let ((__tmp68455 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68455
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68448_ (apply make-instance CastError::t _$args68448_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_where68322_ _message68323_ . _irritants68324_)
        (raise (let ((__obj68451
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68451
                  _message68323_
                  'where:
                  _where68322_
                  'irritants:
                  _irritants68324_)
                 __obj68451))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68458 (list))
            (__tmp68456
             (let ((__tmp68457
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68457 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68458
         '(__object)
         __tmp68456
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-instance::t '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp68463 (list))
            (__tmp68459
             (let ((__tmp68462
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68460
                    (let ((__tmp68461
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68461 '()))))
               (declare (not safe))
               (cons __tmp68462 __tmp68460))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68463
         '(type methods)
         __tmp68459
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68319_
        (apply make-instance interface-descriptor::t _$args68319_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor interface-descriptor::t 'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator interface-descriptor::t 'methods)))
    (define __interface-hash-key
      (lambda (_key68317_)
        (let ((__tmp68465
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68317_))))
              (__tmp68464
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68317_)))))
          (declare (not safe))
          (##fxxor __tmp68465 __tmp68464))))
    (define __interface-test-key
      (lambda (_a68314_ _b68315_)
        (if (let ((__tmp68469 (let () (declare (not safe)) (##car _a68314_)))
                  (__tmp68468 (let () (declare (not safe)) (##car _b68315_))))
              (declare (not safe))
              (##eq? __tmp68469 __tmp68468))
            (let ((__tmp68467 (let () (declare (not safe)) (##cdr _a68314_)))
                  (__tmp68466 (let () (declare (not safe)) (##cdr _b68315_))))
              (declare (not safe))
              (##eq? __tmp68467 __tmp68466))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68295_ _seed68297_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68295_
           __interface-hash-key
           __interface-test-key
           _seed68297_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68303_ '#f) (_seed68305_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68303_ _seed68305_))))
    (define make-prototype-table__1
      (lambda (_size-hint68307_)
        (let ((_seed68309_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68307_ _seed68309_))))
    (define make-prototype-table
      (lambda _g68471_
        (let ((_g68470_ (let () (declare (not safe)) (##length _g68471_))))
          (cond ((let () (declare (not safe)) (##fx= _g68470_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68471_))
                ((let () (declare (not safe)) (##fx= _g68470_ 1))
                 (apply (lambda (_size-hint68307_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68307_)))
                        _g68471_))
                ((let () (declare (not safe)) (##fx= _g68470_ 2))
                 (apply (lambda (_size-hint68311_ _seed68312_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68311_
                             _seed68312_)))
                        _g68471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68471_))))))
    (define prototype-table-ref
      (lambda (_tab68252_ _key68253_ _default68254_)
        (let ((_table68256_
               (let () (declare (not safe)) (&raw-table-table _tab68252_)))
              (_seed68257_
               (let () (declare (not safe)) (&raw-table-seed _tab68252_))))
          (let* ((_h68259_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68253_))
                         _seed68257_))
                 (_size68262_ (vector-length _table68256_))
                 (_entries68265_ (fxquotient _size68262_ '2))
                 (_start68268_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68259_ _entries68265_)
                   '1)))
            (let _loop68272_ ((_probe68275_ _start68268_)
                              (_i68277_ '1)
                              (_deleted68279_ '#f))
              (let ((_k68282_ (vector-ref _table68256_ _probe68275_)))
                (if (let ((__tmp68478 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68282_ __tmp68478))
                    _default68254_
                    (if (let ((__tmp68477 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68282_ __tmp68477))
                        (let ((__tmp68476
                               (let ((_next-probe68285_
                                      (fx+ _start68268_
                                           _i68277_
                                           (fx* _i68277_ _i68277_))))
                                 (fxmodulo _next-probe68285_ _size68262_)))
                              (__tmp68475 (fx+ _i68277_ '1))
                              (__tmp68474
                               (let ((_$e68288_ _deleted68279_))
                                 (if _$e68288_ _$e68288_ _probe68275_))))
                          (declare (not safe))
                          (_loop68272_ __tmp68476 __tmp68475 __tmp68474))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68253_ _k68282_))
                            (vector-ref _table68256_ (fx+ _probe68275_ '1))
                            (let ((__tmp68473
                                   (let ((_next-probe68291_
                                          (fx+ _start68268_
                                               _i68277_
                                               (fx* _i68277_ _i68277_))))
                                     (fxmodulo _next-probe68291_ _size68262_)))
                                  (__tmp68472 (fx+ _i68277_ '1)))
                              (declare (not safe))
                              (_loop68272_
                               __tmp68473
                               __tmp68472
                               _deleted68279_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68248_ _key68249_ _value68250_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68248_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68248_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68248_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68248_ _key68249_ _value68250_))))
    (define __prototype-table-set!
      (lambda (_tab68203_ _key68204_ _value68205_)
        (let ((_table68208_
               (let () (declare (not safe)) (&raw-table-table _tab68203_)))
              (_seed68209_
               (let () (declare (not safe)) (&raw-table-seed _tab68203_))))
          (let* ((_h68211_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68204_))
                         _seed68209_))
                 (_size68214_ (vector-length _table68208_))
                 (_entries68217_ (fxquotient _size68214_ '2))
                 (_start68220_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68211_ _entries68217_)
                   '1)))
            (let _loop68224_ ((_probe68227_ _start68220_)
                              (_i68229_ '1)
                              (_deleted68231_ '#f))
              (let ((_k68234_ (vector-ref _table68208_ _probe68227_)))
                (if (let ((__tmp68488 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68234_ __tmp68488))
                    (if _deleted68231_
                        (begin
                          (vector-set! _table68208_ _deleted68231_ _key68204_)
                          (vector-set!
                           _table68208_
                           (fx+ _deleted68231_ '1)
                           _value68205_)
                          ((lambda ()
                             (let ((__tmp68487
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68203_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68203_
                                __tmp68487)))))
                        (begin
                          (vector-set! _table68208_ _probe68227_ _key68204_)
                          (vector-set!
                           _table68208_
                           (fx+ _probe68227_ '1)
                           _value68205_)
                          ((lambda ()
                             (let ((__tmp68485
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68203_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68203_ __tmp68485))
                             (let ((__tmp68486
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68203_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68203_
                                __tmp68486))))))
                    (if (let ((__tmp68484 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68234_ __tmp68484))
                        (let ((__tmp68483
                               (let ((_next-probe68239_
                                      (fx+ _start68220_
                                           _i68229_
                                           (fx* _i68229_ _i68229_))))
                                 (fxmodulo _next-probe68239_ _size68214_)))
                              (__tmp68482 (fx+ _i68229_ '1))
                              (__tmp68481
                               (let ((_$e68242_ _deleted68231_))
                                 (if _$e68242_ _$e68242_ _probe68227_))))
                          (declare (not safe))
                          (_loop68224_ __tmp68483 __tmp68482 __tmp68481))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68204_ _k68234_))
                            (begin
                              (vector-set!
                               _table68208_
                               _probe68227_
                               _key68204_)
                              (vector-set!
                               _table68208_
                               (fx+ _probe68227_ '1)
                               _value68205_))
                            (let ((__tmp68480
                                   (let ((_next-probe68245_
                                          (fx+ _start68220_
                                               _i68229_
                                               (fx* _i68229_ _i68229_))))
                                     (fxmodulo _next-probe68245_ _size68214_)))
                                  (__tmp68479 (fx+ _i68229_ '1)))
                              (declare (not safe))
                              (_loop68224_
                               __tmp68480
                               __tmp68479
                               _deleted68231_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68198_
               _key68199_
               _prototype-table-update!68200_
               _default68201_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68198_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68198_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68198_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68198_
           _key68199_
           _prototype-table-update!68200_
           _default68201_))))
    (define __prototype-table-update!
      (lambda (_tab68152_
               _key68153_
               _prototype-table-update!68154_
               _default68155_)
        (let ((_table68158_
               (let () (declare (not safe)) (&raw-table-table _tab68152_)))
              (_seed68159_
               (let () (declare (not safe)) (&raw-table-seed _tab68152_))))
          (let* ((_h68161_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68153_))
                         _seed68159_))
                 (_size68164_ (vector-length _table68158_))
                 (_entries68167_ (fxquotient _size68164_ '2))
                 (_start68170_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68161_ _entries68167_)
                   '1)))
            (let _loop68174_ ((_probe68177_ _start68170_)
                              (_i68179_ '1)
                              (_deleted68181_ '#f))
              (let ((_k68184_ (vector-ref _table68158_ _probe68177_)))
                (if (let ((__tmp68498 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68184_ __tmp68498))
                    (if _deleted68181_
                        (begin
                          (vector-set! _table68158_ _deleted68181_ _key68153_)
                          (vector-set!
                           _table68158_
                           (fx+ _deleted68181_ '1)
                           (_prototype-table-update!68154_ _default68155_))
                          ((lambda ()
                             (let ((__tmp68497
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68152_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68152_
                                __tmp68497)))))
                        (begin
                          (vector-set! _table68158_ _probe68177_ _key68153_)
                          (vector-set!
                           _table68158_
                           (fx+ _probe68177_ '1)
                           (_prototype-table-update!68154_ _default68155_))
                          ((lambda ()
                             (let ((__tmp68495
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68152_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68152_ __tmp68495))
                             (let ((__tmp68496
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68152_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68152_
                                __tmp68496))))))
                    (if (let ((__tmp68494 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68184_ __tmp68494))
                        (let ((__tmp68493
                               (let ((_next-probe68189_
                                      (fx+ _start68170_
                                           _i68179_
                                           (fx* _i68179_ _i68179_))))
                                 (fxmodulo _next-probe68189_ _size68164_)))
                              (__tmp68492 (fx+ _i68179_ '1))
                              (__tmp68491
                               (let ((_$e68192_ _deleted68181_))
                                 (if _$e68192_ _$e68192_ _probe68177_))))
                          (declare (not safe))
                          (_loop68174_ __tmp68493 __tmp68492 __tmp68491))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68153_ _k68184_))
                            (begin
                              (vector-set!
                               _table68158_
                               _probe68177_
                               _key68153_)
                              (vector-set!
                               _table68158_
                               (fx+ _probe68177_ '1)
                               (_prototype-table-update!68154_
                                (vector-ref
                                 _table68158_
                                 (fx+ _probe68177_ '1)))))
                            (let ((__tmp68490
                                   (let ((_next-probe68195_
                                          (fx+ _start68170_
                                               _i68179_
                                               (fx* _i68179_ _i68179_))))
                                     (fxmodulo _next-probe68195_ _size68164_)))
                                  (__tmp68489 (fx+ _i68179_ '1)))
                              (declare (not safe))
                              (_loop68174_
                               __tmp68490
                               __tmp68489
                               _deleted68181_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68111_ _key68113_)
        (let ((_table68116_
               (let () (declare (not safe)) (&raw-table-table _tab68111_)))
              (_seed68118_
               (let () (declare (not safe)) (&raw-table-seed _tab68111_))))
          (let* ((_h68121_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68113_))
                         _seed68118_))
                 (_size68124_ (vector-length _table68116_))
                 (_entries68127_ (fxquotient _size68124_ '2))
                 (_start68130_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68121_ _entries68127_)
                   '1)))
            (let _loop68134_ ((_probe68137_ _start68130_) (_i68139_ '1))
              (let ((_k68142_ (vector-ref _table68116_ _probe68137_)))
                (if (let ((__tmp68505 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68142_ __tmp68505))
                    '#!void
                    (if (let ((__tmp68504 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68142_ __tmp68504))
                        (let ((__tmp68503
                               (let ((_next-probe68145_
                                      (fx+ _start68130_
                                           _i68139_
                                           (fx* _i68139_ _i68139_))))
                                 (fxmodulo _next-probe68145_ _size68124_)))
                              (__tmp68502 (fx+ _i68139_ '1)))
                          (declare (not safe))
                          (_loop68134_ __tmp68503 __tmp68502))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68113_ _k68142_))
                            (begin
                              (vector-set!
                               _table68116_
                               _probe68137_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68116_
                               (fx+ _probe68137_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68501
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68111_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68111_
                                    __tmp68501)))))
                            (let ((__tmp68500
                                   (let ((_next-probe68149_
                                          (fx+ _start68130_
                                               _i68139_
                                               (fx* _i68139_ _i68139_))))
                                     (fxmodulo _next-probe68149_ _size68124_)))
                                  (__tmp68499 (fx+ _i68139_ '1)))
                              (declare (not safe))
                              (_loop68134_ __tmp68500 __tmp68499)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68103_)
        (let ((_super6810468106_
               (let () (declare (not safe)) (##type-super _klass68103_))))
          (if _super6810468106_
              (let ((_super68109_ _super6810468106_))
                (let ((__tmp68507
                       (let () (declare (not safe)) (##type-id _super68109_)))
                      (__tmp68506
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68507 __tmp68506)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67990_ _klass67991_ _obj-klass67992_)
        (let ((_method-table67994_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67992_))))
          (let _loop67997_ ((_rest68000_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67990_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count68002_ '0)
                            (_methods68004_ '()))
            (let* ((_rest6800668014_ _rest68000_)
                   (_else6800868076_
                    (lambda ()
                      (let ((_prototype68022_
                             (let ((__obj68453
                                    (let ((__tmp68508
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68002_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67991_
                                       __tmp68508))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68453 '#f))
                               __obj68453)))
                        (let _loop68025_ ((_rest68027_ _methods68004_)
                                          (_off68028_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68002_ '1))))
                          (let* ((_rest6803068038_ _rest68027_)
                                 (_else6803268057_
                                  (lambda ()
                                    (let ((_prototype-key68046_
                                           (let ((__tmp68510
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67991_)))
                                                 (__tmp68509
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67992_))))
                                             (declare (not safe))
                                             (cons __tmp68510 __tmp68509))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68051_ ()
                                          (if (let ((__tmp68511
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68511 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68051_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68046_
                                         _prototype68022_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68055_)
                                         _prototype68055_)
                                       _prototype68022_))))
                                 (_K6803468064_
                                  (lambda (_rest68060_ _method68061_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68022_
                                       _method68061_
                                       _off68028_
                                       _klass67991_
                                       '#f))
                                    (let ((__tmp68512
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68028_ '1))))
                                      (declare (not safe))
                                      (_loop68025_ _rest68060_ __tmp68512)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6803068038_))
                                (let ((_hd6803568067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6803068038_)))
                                      (_tl6803668069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6803068038_))))
                                  (let* ((_method68072_ _hd6803568067_)
                                         (_rest68074_ _tl6803668069_))
                                    (declare (not safe))
                                    (_K6803468064_ _rest68074_ _method68072_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6803268057_))))))))
                   (_K6801068091_
                    (lambda (_rest68079_ _method-name68080_)
                      (let ((_$e68083_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67994_
                                _method-name68080_
                                '#f))))
                        (if _$e68083_
                            ((lambda (_method68086_)
                               (let ((__tmp68514
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68002_ '1)))
                                     (__tmp68513
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68086_ _methods68004_))))
                                 (declare (not safe))
                                 (_loop67997_
                                  _rest68079_
                                  __tmp68514
                                  __tmp68513)))
                             _$e68083_)
                            ((lambda (_klass68088_ _method-name68089_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68088_
                                  'method:
                                  _method-name68089_)))
                             _klass67991_
                             _method-name68080_))))))
              (if (let () (declare (not safe)) (##pair? _rest6800668014_))
                  (let ((_hd6801168094_
                         (let ()
                           (declare (not safe))
                           (##car _rest6800668014_)))
                        (_tl6801268096_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6800668014_))))
                    (let* ((_method-name68099_ _hd6801168094_)
                           (_rest68101_ _tl6801268096_))
                      (declare (not safe))
                      (_K6801068091_ _rest68101_ _method-name68099_)))
                  (let () (declare (not safe)) (_else6800868076_))))))))
    (define try-create-prototype
      (lambda (_descriptor67877_ _klass67878_ _obj-klass67879_)
        (let ((_method-table67881_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67879_))))
          (let _loop67884_ ((_rest67887_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67877_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67889_ '0)
                            (_methods67891_ '()))
            (let* ((_rest6789367901_ _rest67887_)
                   (_else6789567963_
                    (lambda ()
                      (let ((_prototype67909_
                             (let ((__obj68454
                                    (let ((__tmp68515
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67889_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67878_
                                       __tmp68515))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68454 '#f))
                               __obj68454)))
                        (let _loop67912_ ((_rest67914_ _methods67891_)
                                          (_off67915_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67889_ '1))))
                          (let* ((_rest6791767925_ _rest67914_)
                                 (_else6791967944_
                                  (lambda ()
                                    (let ((_prototype-key67933_
                                           (let ((__tmp68517
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67878_)))
                                                 (__tmp68516
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67879_))))
                                             (declare (not safe))
                                             (cons __tmp68517 __tmp68516))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67938_ ()
                                          (if (let ((__tmp68518
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68518 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67938_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67933_
                                         _prototype67909_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67942_)
                                         _prototype67942_)
                                       _prototype67909_))))
                                 (_K6792167951_
                                  (lambda (_rest67947_ _method67948_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67909_
                                       _method67948_
                                       _off67915_
                                       _klass67878_
                                       '#f))
                                    (let ((__tmp68519
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67915_ '1))))
                                      (declare (not safe))
                                      (_loop67912_ _rest67947_ __tmp68519)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6791767925_))
                                (let ((_hd6792267954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6791767925_)))
                                      (_tl6792367956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6791767925_))))
                                  (let* ((_method67959_ _hd6792267954_)
                                         (_rest67961_ _tl6792367956_))
                                    (declare (not safe))
                                    (_K6792167951_ _rest67961_ _method67959_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6791967944_))))))))
                   (_K6789767978_
                    (lambda (_rest67966_ _method-name67967_)
                      (let ((_$e67970_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67881_
                                _method-name67967_
                                '#f))))
                        (if _$e67970_
                            ((lambda (_method67973_)
                               (let ((__tmp68521
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67889_ '1)))
                                     (__tmp68520
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67973_ _methods67891_))))
                                 (declare (not safe))
                                 (_loop67884_
                                  _rest67966_
                                  __tmp68521
                                  __tmp68520)))
                             _$e67970_)
                            ((lambda (_klass67975_ _method-name67976_) '#f)
                             _klass67878_
                             _method-name67967_))))))
              (if (let () (declare (not safe)) (##pair? _rest6789367901_))
                  (let ((_hd6789867981_
                         (let ()
                           (declare (not safe))
                           (##car _rest6789367901_)))
                        (_tl6789967983_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6789367901_))))
                    (let* ((_method-name67986_ _hd6789867981_)
                           (_rest67988_ _tl6789967983_))
                      (declare (not safe))
                      (_K6789767978_ _rest67988_ _method-name67986_)))
                  (let () (declare (not safe)) (_else6789567963_))))))))
    (define cast
      (lambda (_descriptor67836_ _obj67838_)
        (if (let () (declare (not safe)) (##structure? _obj67838_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67843_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67836_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67846_
                      (let () (declare (not safe)) (##type-id _klass67843_)))
                     (_obj-klass67849_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67838_)))
                     (_obj-klass-id67852_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67849_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67846_ _obj-klass-id67852_))
                    _obj67838_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67849_))
                        (let ((__tmp68523
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67838_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67836_ __tmp68523))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67858_ ()
                              (if (let ((__tmp68522
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68522 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67858_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67846_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67852_))
                          (let ((_prototype67868_
                                 (let ((_$e67862_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67862_
                                       ((lambda (_prototype67865_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67865_)
                                        _$e67862_)
                                       (begin
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
                                            _descriptor67836_
                                            _klass67843_
                                            _obj-klass67849_)))))))
                            ((lambda (_prototype67870_ _obj67871_)
                               (let ((_instance67873_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67870_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67873_
                                    _obj67871_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67873_))
                             _prototype67868_
                             _obj67838_)))))))
            ((lambda (_obj67875_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67875_)))
             _obj67838_))))
    (define try-cast
      (lambda (_descriptor67795_ _obj67797_)
        (if (let () (declare (not safe)) (##structure? _obj67797_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67802_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67795_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67805_
                      (let () (declare (not safe)) (##type-id _klass67802_)))
                     (_obj-klass67808_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67797_)))
                     (_obj-klass-id67811_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67808_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67805_ _obj-klass-id67811_))
                    _obj67797_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67808_))
                        (let ((__tmp68525
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67797_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67795_ __tmp68525))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67817_ ()
                              (if (let ((__tmp68524
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68524 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67817_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67805_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67811_))
                          (let ((_prototype67827_
                                 (let ((_$e67821_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67821_
                                       ((lambda (_prototype67824_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67824_)
                                        _$e67821_)
                                       (begin
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
                                            _descriptor67795_
                                            _klass67802_
                                            _obj-klass67808_)))))))
                            ((lambda (_prototype67829_ _obj67830_)
                               (if _prototype67829_
                                   (let ((_instance67832_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67829_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67832_
                                        _obj67830_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67832_)
                                   '#f))
                             _prototype67827_
                             _obj67797_)))))))
            ((lambda (_obj67834_) '#f) _obj67797_))))
    (define satisfies?
      (lambda (_descriptor67756_ _obj67758_)
        (if (let () (declare (not safe)) (##structure? _obj67758_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67756_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67766_
                      (let () (declare (not safe)) (##type-id _klass67763_)))
                     (_obj-klass67769_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67758_)))
                     (_obj-klass-id67772_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67769_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67766_ _obj-klass-id67772_))
                    _obj67758_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67769_))
                        (let ((__tmp68527
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67758_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67756_ __tmp68527))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67778_ ()
                              (if (let ((__tmp68526
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68526 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67778_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67766_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67772_))
                          (let ((_prototype67788_
                                 (let ((_$e67782_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67782_
                                       ((lambda (_prototype67785_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67785_)
                                        _$e67782_)
                                       (begin
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
                                            _descriptor67756_
                                            _klass67763_
                                            _obj-klass67769_)))))))
                            ((lambda (_prototype67790_ _obj67791_)
                               (if _prototype67790_ '#t '#f))
                             _prototype67788_
                             _obj67758_)))))))
            ((lambda (_obj67793_) '#f) _obj67758_))))))
