(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709127355)
  (begin
    (define CastError::t
      (let ((__tmp68445 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68445
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68438_ (apply make-instance CastError::t _$args68438_)))
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
      (lambda (_where68312_ _message68313_ . _irritants68314_)
        (raise (let ((__obj68441
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68441
                  _message68313_
                  'where:
                  _where68312_
                  'irritants:
                  _irritants68314_)
                 __obj68441))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68448 (list))
            (__tmp68446
             (let ((__tmp68447
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68447 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68448
         '(__object)
         __tmp68446
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
      (let ((__tmp68453 (list))
            (__tmp68449
             (let ((__tmp68452
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68450
                    (let ((__tmp68451
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68451 '()))))
               (declare (not safe))
               (cons __tmp68452 __tmp68450))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68453
         '(type methods)
         __tmp68449
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68309_
        (apply make-instance interface-descriptor::t _$args68309_)))
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
      (lambda (_key68307_)
        (let ((__tmp68455
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68307_))))
              (__tmp68454
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68307_)))))
          (declare (not safe))
          (##fxxor __tmp68455 __tmp68454))))
    (define __interface-test-key
      (lambda (_a68304_ _b68305_)
        (if (let ((__tmp68459 (let () (declare (not safe)) (##car _a68304_)))
                  (__tmp68458 (let () (declare (not safe)) (##car _b68305_))))
              (declare (not safe))
              (##eq? __tmp68459 __tmp68458))
            (let ((__tmp68457 (let () (declare (not safe)) (##cdr _a68304_)))
                  (__tmp68456 (let () (declare (not safe)) (##cdr _b68305_))))
              (declare (not safe))
              (##eq? __tmp68457 __tmp68456))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68285_ _seed68287_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68285_
           __interface-hash-key
           __interface-test-key
           _seed68287_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68293_ '#f) (_seed68295_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68293_ _seed68295_))))
    (define make-prototype-table__1
      (lambda (_size-hint68297_)
        (let ((_seed68299_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68297_ _seed68299_))))
    (define make-prototype-table
      (lambda _g68461_
        (let ((_g68460_ (let () (declare (not safe)) (##length _g68461_))))
          (cond ((let () (declare (not safe)) (##fx= _g68460_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68461_))
                ((let () (declare (not safe)) (##fx= _g68460_ 1))
                 (apply (lambda (_size-hint68297_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68297_)))
                        _g68461_))
                ((let () (declare (not safe)) (##fx= _g68460_ 2))
                 (apply (lambda (_size-hint68301_ _seed68302_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68301_
                             _seed68302_)))
                        _g68461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68461_))))))
    (define prototype-table-ref
      (lambda (_tab68242_ _key68243_ _default68244_)
        (let ((_table68246_
               (let () (declare (not safe)) (&raw-table-table _tab68242_)))
              (_seed68247_
               (let () (declare (not safe)) (&raw-table-seed _tab68242_))))
          (let* ((_h68249_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68243_))
                         _seed68247_))
                 (_size68252_ (vector-length _table68246_))
                 (_entries68255_ (fxquotient _size68252_ '2))
                 (_start68258_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68249_ _entries68255_)
                   '1)))
            (let _loop68262_ ((_probe68265_ _start68258_)
                              (_i68267_ '1)
                              (_deleted68269_ '#f))
              (let ((_k68272_ (vector-ref _table68246_ _probe68265_)))
                (if (let ((__tmp68468 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68272_ __tmp68468))
                    _default68244_
                    (if (let ((__tmp68467 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68272_ __tmp68467))
                        (let ((__tmp68466
                               (let ((_next-probe68275_
                                      (fx+ _start68258_
                                           _i68267_
                                           (fx* _i68267_ _i68267_))))
                                 (fxmodulo _next-probe68275_ _size68252_)))
                              (__tmp68465 (fx+ _i68267_ '1))
                              (__tmp68464
                               (let ((_$e68278_ _deleted68269_))
                                 (if _$e68278_ _$e68278_ _probe68265_))))
                          (declare (not safe))
                          (_loop68262_ __tmp68466 __tmp68465 __tmp68464))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68243_ _k68272_))
                            (vector-ref _table68246_ (fx+ _probe68265_ '1))
                            (let ((__tmp68463
                                   (let ((_next-probe68281_
                                          (fx+ _start68258_
                                               _i68267_
                                               (fx* _i68267_ _i68267_))))
                                     (fxmodulo _next-probe68281_ _size68252_)))
                                  (__tmp68462 (fx+ _i68267_ '1)))
                              (declare (not safe))
                              (_loop68262_
                               __tmp68463
                               __tmp68462
                               _deleted68269_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68238_ _key68239_ _value68240_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68238_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68238_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68238_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68238_ _key68239_ _value68240_))))
    (define __prototype-table-set!
      (lambda (_tab68193_ _key68194_ _value68195_)
        (let ((_table68198_
               (let () (declare (not safe)) (&raw-table-table _tab68193_)))
              (_seed68199_
               (let () (declare (not safe)) (&raw-table-seed _tab68193_))))
          (let* ((_h68201_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68194_))
                         _seed68199_))
                 (_size68204_ (vector-length _table68198_))
                 (_entries68207_ (fxquotient _size68204_ '2))
                 (_start68210_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68201_ _entries68207_)
                   '1)))
            (let _loop68214_ ((_probe68217_ _start68210_)
                              (_i68219_ '1)
                              (_deleted68221_ '#f))
              (let ((_k68224_ (vector-ref _table68198_ _probe68217_)))
                (if (let ((__tmp68478 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68224_ __tmp68478))
                    (if _deleted68221_
                        (begin
                          (vector-set! _table68198_ _deleted68221_ _key68194_)
                          (vector-set!
                           _table68198_
                           (fx+ _deleted68221_ '1)
                           _value68195_)
                          ((lambda ()
                             (let ((__tmp68477
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68193_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68193_
                                __tmp68477)))))
                        (begin
                          (vector-set! _table68198_ _probe68217_ _key68194_)
                          (vector-set!
                           _table68198_
                           (fx+ _probe68217_ '1)
                           _value68195_)
                          ((lambda ()
                             (let ((__tmp68475
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68193_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68193_ __tmp68475))
                             (let ((__tmp68476
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68193_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68193_
                                __tmp68476))))))
                    (if (let ((__tmp68474 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68224_ __tmp68474))
                        (let ((__tmp68473
                               (let ((_next-probe68229_
                                      (fx+ _start68210_
                                           _i68219_
                                           (fx* _i68219_ _i68219_))))
                                 (fxmodulo _next-probe68229_ _size68204_)))
                              (__tmp68472 (fx+ _i68219_ '1))
                              (__tmp68471
                               (let ((_$e68232_ _deleted68221_))
                                 (if _$e68232_ _$e68232_ _probe68217_))))
                          (declare (not safe))
                          (_loop68214_ __tmp68473 __tmp68472 __tmp68471))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68194_ _k68224_))
                            (begin
                              (vector-set!
                               _table68198_
                               _probe68217_
                               _key68194_)
                              (vector-set!
                               _table68198_
                               (fx+ _probe68217_ '1)
                               _value68195_))
                            (let ((__tmp68470
                                   (let ((_next-probe68235_
                                          (fx+ _start68210_
                                               _i68219_
                                               (fx* _i68219_ _i68219_))))
                                     (fxmodulo _next-probe68235_ _size68204_)))
                                  (__tmp68469 (fx+ _i68219_ '1)))
                              (declare (not safe))
                              (_loop68214_
                               __tmp68470
                               __tmp68469
                               _deleted68221_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68188_
               _key68189_
               _prototype-table-update!68190_
               _default68191_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68188_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68188_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68188_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68188_
           _key68189_
           _prototype-table-update!68190_
           _default68191_))))
    (define __prototype-table-update!
      (lambda (_tab68142_
               _key68143_
               _prototype-table-update!68144_
               _default68145_)
        (let ((_table68148_
               (let () (declare (not safe)) (&raw-table-table _tab68142_)))
              (_seed68149_
               (let () (declare (not safe)) (&raw-table-seed _tab68142_))))
          (let* ((_h68151_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68143_))
                         _seed68149_))
                 (_size68154_ (vector-length _table68148_))
                 (_entries68157_ (fxquotient _size68154_ '2))
                 (_start68160_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68151_ _entries68157_)
                   '1)))
            (let _loop68164_ ((_probe68167_ _start68160_)
                              (_i68169_ '1)
                              (_deleted68171_ '#f))
              (let ((_k68174_ (vector-ref _table68148_ _probe68167_)))
                (if (let ((__tmp68488 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68174_ __tmp68488))
                    (if _deleted68171_
                        (begin
                          (vector-set! _table68148_ _deleted68171_ _key68143_)
                          (vector-set!
                           _table68148_
                           (fx+ _deleted68171_ '1)
                           (_prototype-table-update!68144_ _default68145_))
                          ((lambda ()
                             (let ((__tmp68487
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68142_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68142_
                                __tmp68487)))))
                        (begin
                          (vector-set! _table68148_ _probe68167_ _key68143_)
                          (vector-set!
                           _table68148_
                           (fx+ _probe68167_ '1)
                           (_prototype-table-update!68144_ _default68145_))
                          ((lambda ()
                             (let ((__tmp68485
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68142_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68142_ __tmp68485))
                             (let ((__tmp68486
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68142_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68142_
                                __tmp68486))))))
                    (if (let ((__tmp68484 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68174_ __tmp68484))
                        (let ((__tmp68483
                               (let ((_next-probe68179_
                                      (fx+ _start68160_
                                           _i68169_
                                           (fx* _i68169_ _i68169_))))
                                 (fxmodulo _next-probe68179_ _size68154_)))
                              (__tmp68482 (fx+ _i68169_ '1))
                              (__tmp68481
                               (let ((_$e68182_ _deleted68171_))
                                 (if _$e68182_ _$e68182_ _probe68167_))))
                          (declare (not safe))
                          (_loop68164_ __tmp68483 __tmp68482 __tmp68481))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68143_ _k68174_))
                            (begin
                              (vector-set!
                               _table68148_
                               _probe68167_
                               _key68143_)
                              (vector-set!
                               _table68148_
                               (fx+ _probe68167_ '1)
                               (_prototype-table-update!68144_
                                (vector-ref
                                 _table68148_
                                 (fx+ _probe68167_ '1)))))
                            (let ((__tmp68480
                                   (let ((_next-probe68185_
                                          (fx+ _start68160_
                                               _i68169_
                                               (fx* _i68169_ _i68169_))))
                                     (fxmodulo _next-probe68185_ _size68154_)))
                                  (__tmp68479 (fx+ _i68169_ '1)))
                              (declare (not safe))
                              (_loop68164_
                               __tmp68480
                               __tmp68479
                               _deleted68171_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68101_ _key68103_)
        (let ((_table68106_
               (let () (declare (not safe)) (&raw-table-table _tab68101_)))
              (_seed68108_
               (let () (declare (not safe)) (&raw-table-seed _tab68101_))))
          (let* ((_h68111_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68103_))
                         _seed68108_))
                 (_size68114_ (vector-length _table68106_))
                 (_entries68117_ (fxquotient _size68114_ '2))
                 (_start68120_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68111_ _entries68117_)
                   '1)))
            (let _loop68124_ ((_probe68127_ _start68120_) (_i68129_ '1))
              (let ((_k68132_ (vector-ref _table68106_ _probe68127_)))
                (if (let ((__tmp68495 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68132_ __tmp68495))
                    '#!void
                    (if (let ((__tmp68494 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68132_ __tmp68494))
                        (let ((__tmp68493
                               (let ((_next-probe68135_
                                      (fx+ _start68120_
                                           _i68129_
                                           (fx* _i68129_ _i68129_))))
                                 (fxmodulo _next-probe68135_ _size68114_)))
                              (__tmp68492 (fx+ _i68129_ '1)))
                          (declare (not safe))
                          (_loop68124_ __tmp68493 __tmp68492))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68103_ _k68132_))
                            (begin
                              (vector-set!
                               _table68106_
                               _probe68127_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68106_
                               (fx+ _probe68127_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68491
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68101_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68101_
                                    __tmp68491)))))
                            (let ((__tmp68490
                                   (let ((_next-probe68139_
                                          (fx+ _start68120_
                                               _i68129_
                                               (fx* _i68129_ _i68129_))))
                                     (fxmodulo _next-probe68139_ _size68114_)))
                                  (__tmp68489 (fx+ _i68129_ '1)))
                              (declare (not safe))
                              (_loop68124_ __tmp68490 __tmp68489)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68093_)
        (let ((_super6809468096_
               (let () (declare (not safe)) (##type-super _klass68093_))))
          (if _super6809468096_
              (let ((_super68099_ _super6809468096_))
                (let ((__tmp68497
                       (let () (declare (not safe)) (##type-id _super68099_)))
                      (__tmp68496
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68497 __tmp68496)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67980_ _klass67981_ _obj-klass67982_)
        (let ((_method-table67984_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67982_))))
          (let _loop67987_ ((_rest67990_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67980_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67992_ '0)
                            (_methods67994_ '()))
            (let* ((_rest6799668004_ _rest67990_)
                   (_else6799868066_
                    (lambda ()
                      (let ((_prototype68012_
                             (let ((__obj68443
                                    (let ((__tmp68498
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67992_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67981_
                                       __tmp68498))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68443 '#f))
                               __obj68443)))
                        (let _loop68015_ ((_rest68017_ _methods67994_)
                                          (_off68018_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67992_ '1))))
                          (let* ((_rest6802068028_ _rest68017_)
                                 (_else6802268047_
                                  (lambda ()
                                    (let ((_prototype-key68036_
                                           (let ((__tmp68500
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67981_)))
                                                 (__tmp68499
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67982_))))
                                             (declare (not safe))
                                             (cons __tmp68500 __tmp68499))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68041_ ()
                                          (if (let ((__tmp68501
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68501 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68041_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68036_
                                         _prototype68012_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68045_)
                                         _prototype68045_)
                                       _prototype68012_))))
                                 (_K6802468054_
                                  (lambda (_rest68050_ _method68051_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68012_
                                       _method68051_
                                       _off68018_
                                       _klass67981_
                                       '#f))
                                    (let ((__tmp68502
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68018_ '1))))
                                      (declare (not safe))
                                      (_loop68015_ _rest68050_ __tmp68502)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6802068028_))
                                (let ((_hd6802568057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6802068028_)))
                                      (_tl6802668059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6802068028_))))
                                  (let* ((_method68062_ _hd6802568057_)
                                         (_rest68064_ _tl6802668059_))
                                    (declare (not safe))
                                    (_K6802468054_ _rest68064_ _method68062_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6802268047_))))))))
                   (_K6800068081_
                    (lambda (_rest68069_ _method-name68070_)
                      (let ((_$e68073_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67984_
                                _method-name68070_
                                '#f))))
                        (if _$e68073_
                            ((lambda (_method68076_)
                               (let ((__tmp68504
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67992_ '1)))
                                     (__tmp68503
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68076_ _methods67994_))))
                                 (declare (not safe))
                                 (_loop67987_
                                  _rest68069_
                                  __tmp68504
                                  __tmp68503)))
                             _$e68073_)
                            ((lambda (_klass68078_ _method-name68079_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68078_
                                  'method:
                                  _method-name68079_)))
                             _klass67981_
                             _method-name68070_))))))
              (if (let () (declare (not safe)) (##pair? _rest6799668004_))
                  (let ((_hd6800168084_
                         (let ()
                           (declare (not safe))
                           (##car _rest6799668004_)))
                        (_tl6800268086_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6799668004_))))
                    (let* ((_method-name68089_ _hd6800168084_)
                           (_rest68091_ _tl6800268086_))
                      (declare (not safe))
                      (_K6800068081_ _rest68091_ _method-name68089_)))
                  (let () (declare (not safe)) (_else6799868066_))))))))
    (define try-create-prototype
      (lambda (_descriptor67867_ _klass67868_ _obj-klass67869_)
        (let ((_method-table67871_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67869_))))
          (let _loop67874_ ((_rest67877_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67867_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67879_ '0)
                            (_methods67881_ '()))
            (let* ((_rest6788367891_ _rest67877_)
                   (_else6788567953_
                    (lambda ()
                      (let ((_prototype67899_
                             (let ((__obj68444
                                    (let ((__tmp68505
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67879_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67868_
                                       __tmp68505))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68444 '#f))
                               __obj68444)))
                        (let _loop67902_ ((_rest67904_ _methods67881_)
                                          (_off67905_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67879_ '1))))
                          (let* ((_rest6790767915_ _rest67904_)
                                 (_else6790967934_
                                  (lambda ()
                                    (let ((_prototype-key67923_
                                           (let ((__tmp68507
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67868_)))
                                                 (__tmp68506
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67869_))))
                                             (declare (not safe))
                                             (cons __tmp68507 __tmp68506))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67928_ ()
                                          (if (let ((__tmp68508
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68508 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67928_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67923_
                                         _prototype67899_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67932_)
                                         _prototype67932_)
                                       _prototype67899_))))
                                 (_K6791167941_
                                  (lambda (_rest67937_ _method67938_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67899_
                                       _method67938_
                                       _off67905_
                                       _klass67868_
                                       '#f))
                                    (let ((__tmp68509
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67905_ '1))))
                                      (declare (not safe))
                                      (_loop67902_ _rest67937_ __tmp68509)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6790767915_))
                                (let ((_hd6791267944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6790767915_)))
                                      (_tl6791367946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6790767915_))))
                                  (let* ((_method67949_ _hd6791267944_)
                                         (_rest67951_ _tl6791367946_))
                                    (declare (not safe))
                                    (_K6791167941_ _rest67951_ _method67949_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6790967934_))))))))
                   (_K6788767968_
                    (lambda (_rest67956_ _method-name67957_)
                      (let ((_$e67960_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67871_
                                _method-name67957_
                                '#f))))
                        (if _$e67960_
                            ((lambda (_method67963_)
                               (let ((__tmp68511
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67879_ '1)))
                                     (__tmp68510
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67963_ _methods67881_))))
                                 (declare (not safe))
                                 (_loop67874_
                                  _rest67956_
                                  __tmp68511
                                  __tmp68510)))
                             _$e67960_)
                            ((lambda (_klass67965_ _method-name67966_) '#f)
                             _klass67868_
                             _method-name67957_))))))
              (if (let () (declare (not safe)) (##pair? _rest6788367891_))
                  (let ((_hd6788867971_
                         (let ()
                           (declare (not safe))
                           (##car _rest6788367891_)))
                        (_tl6788967973_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6788367891_))))
                    (let* ((_method-name67976_ _hd6788867971_)
                           (_rest67978_ _tl6788967973_))
                      (declare (not safe))
                      (_K6788767968_ _rest67978_ _method-name67976_)))
                  (let () (declare (not safe)) (_else6788567953_))))))))
    (define cast
      (lambda (_descriptor67826_ _obj67828_)
        (if (let () (declare (not safe)) (##structure? _obj67828_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67826_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67836_
                      (let () (declare (not safe)) (##type-id _klass67833_)))
                     (_obj-klass67839_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67828_)))
                     (_obj-klass-id67842_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67839_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67836_ _obj-klass-id67842_))
                    _obj67828_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67839_))
                        (let ((__tmp68513
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67828_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67826_ __tmp68513))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67848_ ()
                              (if (let ((__tmp68512
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68512 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67848_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67836_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67842_))
                          (let ((_prototype67858_
                                 (let ((_$e67852_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67852_
                                       ((lambda (_prototype67855_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67855_)
                                        _$e67852_)
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
                                            _descriptor67826_
                                            _klass67833_
                                            _obj-klass67839_)))))))
                            ((lambda (_prototype67860_ _obj67861_)
                               (let ((_instance67863_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67860_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67863_
                                    _obj67861_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67863_))
                             _prototype67858_
                             _obj67828_)))))))
            ((lambda (_obj67865_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67865_)))
             _obj67828_))))
    (define try-cast
      (lambda (_descriptor67785_ _obj67787_)
        (if (let () (declare (not safe)) (##structure? _obj67787_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67785_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67795_
                      (let () (declare (not safe)) (##type-id _klass67792_)))
                     (_obj-klass67798_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67787_)))
                     (_obj-klass-id67801_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67798_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67795_ _obj-klass-id67801_))
                    _obj67787_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67798_))
                        (let ((__tmp68515
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67787_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67785_ __tmp68515))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67807_ ()
                              (if (let ((__tmp68514
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68514 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67807_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67795_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67801_))
                          (let ((_prototype67817_
                                 (let ((_$e67811_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67811_
                                       ((lambda (_prototype67814_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67814_)
                                        _$e67811_)
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
                                            _descriptor67785_
                                            _klass67792_
                                            _obj-klass67798_)))))))
                            ((lambda (_prototype67819_ _obj67820_)
                               (if _prototype67819_
                                   (let ((_instance67822_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67819_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67822_
                                        _obj67820_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67822_)
                                   '#f))
                             _prototype67817_
                             _obj67787_)))))))
            ((lambda (_obj67824_) '#f) _obj67787_))))
    (define satisfies?
      (lambda (_descriptor67746_ _obj67748_)
        (if (let () (declare (not safe)) (##structure? _obj67748_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67746_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67756_
                      (let () (declare (not safe)) (##type-id _klass67753_)))
                     (_obj-klass67759_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67748_)))
                     (_obj-klass-id67762_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67759_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67756_ _obj-klass-id67762_))
                    _obj67748_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67759_))
                        (let ((__tmp68517
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67748_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67746_ __tmp68517))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67768_ ()
                              (if (let ((__tmp68516
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68516 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67768_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67756_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67762_))
                          (let ((_prototype67778_
                                 (let ((_$e67772_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67772_
                                       ((lambda (_prototype67775_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67775_)
                                        _$e67772_)
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
                                            _descriptor67746_
                                            _klass67753_
                                            _obj-klass67759_)))))))
                            ((lambda (_prototype67780_ _obj67781_)
                               (if _prototype67780_ '#t '#f))
                             _prototype67778_
                             _obj67748_)))))))
            ((lambda (_obj67783_) '#f) _obj67748_))))))
