(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709159706)
  (begin
    (define CastError::t
      (let ((__tmp68447 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68447
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68440_ (apply make-instance CastError::t _$args68440_)))
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
      (lambda (_where68314_ _message68315_ . _irritants68316_)
        (raise (let ((__obj68443
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68443
                  _message68315_
                  'where:
                  _where68314_
                  'irritants:
                  _irritants68316_)
                 __obj68443))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68450 (list))
            (__tmp68448
             (let ((__tmp68449
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68449 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68450
         '(__object)
         __tmp68448
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
      (let ((__tmp68455 (list))
            (__tmp68451
             (let ((__tmp68454
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68452
                    (let ((__tmp68453
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68453 '()))))
               (declare (not safe))
               (cons __tmp68454 __tmp68452))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68455
         '(type methods)
         __tmp68451
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68311_
        (apply make-instance interface-descriptor::t _$args68311_)))
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
      (lambda (_key68309_)
        (let ((__tmp68457
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68309_))))
              (__tmp68456
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68309_)))))
          (declare (not safe))
          (##fxxor __tmp68457 __tmp68456))))
    (define __interface-test-key
      (lambda (_a68306_ _b68307_)
        (if (let ((__tmp68461 (let () (declare (not safe)) (##car _a68306_)))
                  (__tmp68460 (let () (declare (not safe)) (##car _b68307_))))
              (declare (not safe))
              (##eq? __tmp68461 __tmp68460))
            (let ((__tmp68459 (let () (declare (not safe)) (##cdr _a68306_)))
                  (__tmp68458 (let () (declare (not safe)) (##cdr _b68307_))))
              (declare (not safe))
              (##eq? __tmp68459 __tmp68458))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68287_ _seed68289_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68287_
           __interface-hash-key
           __interface-test-key
           _seed68289_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68295_ '#f) (_seed68297_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68295_ _seed68297_))))
    (define make-prototype-table__1
      (lambda (_size-hint68299_)
        (let ((_seed68301_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68299_ _seed68301_))))
    (define make-prototype-table
      (lambda _g68463_
        (let ((_g68462_ (let () (declare (not safe)) (##length _g68463_))))
          (cond ((let () (declare (not safe)) (##fx= _g68462_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68463_))
                ((let () (declare (not safe)) (##fx= _g68462_ 1))
                 (apply (lambda (_size-hint68299_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68299_)))
                        _g68463_))
                ((let () (declare (not safe)) (##fx= _g68462_ 2))
                 (apply (lambda (_size-hint68303_ _seed68304_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68303_
                             _seed68304_)))
                        _g68463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68463_))))))
    (define prototype-table-ref
      (lambda (_tab68244_ _key68245_ _default68246_)
        (let ((_table68248_
               (let () (declare (not safe)) (&raw-table-table _tab68244_)))
              (_seed68249_
               (let () (declare (not safe)) (&raw-table-seed _tab68244_))))
          (let* ((_h68251_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68245_))
                         _seed68249_))
                 (_size68254_ (vector-length _table68248_))
                 (_entries68257_ (fxquotient _size68254_ '2))
                 (_start68260_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68251_ _entries68257_)
                   '1)))
            (let _loop68264_ ((_probe68267_ _start68260_)
                              (_i68269_ '1)
                              (_deleted68271_ '#f))
              (let ((_k68274_ (vector-ref _table68248_ _probe68267_)))
                (if (let ((__tmp68470 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68274_ __tmp68470))
                    _default68246_
                    (if (let ((__tmp68469 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68274_ __tmp68469))
                        (let ((__tmp68468
                               (let ((_next-probe68277_
                                      (fx+ _start68260_
                                           _i68269_
                                           (fx* _i68269_ _i68269_))))
                                 (fxmodulo _next-probe68277_ _size68254_)))
                              (__tmp68467 (fx+ _i68269_ '1))
                              (__tmp68466
                               (let ((_$e68280_ _deleted68271_))
                                 (if _$e68280_ _$e68280_ _probe68267_))))
                          (declare (not safe))
                          (_loop68264_ __tmp68468 __tmp68467 __tmp68466))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68245_ _k68274_))
                            (vector-ref _table68248_ (fx+ _probe68267_ '1))
                            (let ((__tmp68465
                                   (let ((_next-probe68283_
                                          (fx+ _start68260_
                                               _i68269_
                                               (fx* _i68269_ _i68269_))))
                                     (fxmodulo _next-probe68283_ _size68254_)))
                                  (__tmp68464 (fx+ _i68269_ '1)))
                              (declare (not safe))
                              (_loop68264_
                               __tmp68465
                               __tmp68464
                               _deleted68271_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68240_ _key68241_ _value68242_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68240_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68240_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68240_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68240_ _key68241_ _value68242_))))
    (define __prototype-table-set!
      (lambda (_tab68195_ _key68196_ _value68197_)
        (let ((_table68200_
               (let () (declare (not safe)) (&raw-table-table _tab68195_)))
              (_seed68201_
               (let () (declare (not safe)) (&raw-table-seed _tab68195_))))
          (let* ((_h68203_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68196_))
                         _seed68201_))
                 (_size68206_ (vector-length _table68200_))
                 (_entries68209_ (fxquotient _size68206_ '2))
                 (_start68212_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68203_ _entries68209_)
                   '1)))
            (let _loop68216_ ((_probe68219_ _start68212_)
                              (_i68221_ '1)
                              (_deleted68223_ '#f))
              (let ((_k68226_ (vector-ref _table68200_ _probe68219_)))
                (if (let ((__tmp68480 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68226_ __tmp68480))
                    (if _deleted68223_
                        (begin
                          (vector-set! _table68200_ _deleted68223_ _key68196_)
                          (vector-set!
                           _table68200_
                           (fx+ _deleted68223_ '1)
                           _value68197_)
                          ((lambda ()
                             (let ((__tmp68479
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68195_
                                __tmp68479)))))
                        (begin
                          (vector-set! _table68200_ _probe68219_ _key68196_)
                          (vector-set!
                           _table68200_
                           (fx+ _probe68219_ '1)
                           _value68197_)
                          ((lambda ()
                             (let ((__tmp68477
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68195_ __tmp68477))
                             (let ((__tmp68478
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68195_
                                __tmp68478))))))
                    (if (let ((__tmp68476 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68226_ __tmp68476))
                        (let ((__tmp68475
                               (let ((_next-probe68231_
                                      (fx+ _start68212_
                                           _i68221_
                                           (fx* _i68221_ _i68221_))))
                                 (fxmodulo _next-probe68231_ _size68206_)))
                              (__tmp68474 (fx+ _i68221_ '1))
                              (__tmp68473
                               (let ((_$e68234_ _deleted68223_))
                                 (if _$e68234_ _$e68234_ _probe68219_))))
                          (declare (not safe))
                          (_loop68216_ __tmp68475 __tmp68474 __tmp68473))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68196_ _k68226_))
                            (begin
                              (vector-set!
                               _table68200_
                               _probe68219_
                               _key68196_)
                              (vector-set!
                               _table68200_
                               (fx+ _probe68219_ '1)
                               _value68197_))
                            (let ((__tmp68472
                                   (let ((_next-probe68237_
                                          (fx+ _start68212_
                                               _i68221_
                                               (fx* _i68221_ _i68221_))))
                                     (fxmodulo _next-probe68237_ _size68206_)))
                                  (__tmp68471 (fx+ _i68221_ '1)))
                              (declare (not safe))
                              (_loop68216_
                               __tmp68472
                               __tmp68471
                               _deleted68223_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68190_
               _key68191_
               _prototype-table-update!68192_
               _default68193_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68190_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68190_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68190_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68190_
           _key68191_
           _prototype-table-update!68192_
           _default68193_))))
    (define __prototype-table-update!
      (lambda (_tab68144_
               _key68145_
               _prototype-table-update!68146_
               _default68147_)
        (let ((_table68150_
               (let () (declare (not safe)) (&raw-table-table _tab68144_)))
              (_seed68151_
               (let () (declare (not safe)) (&raw-table-seed _tab68144_))))
          (let* ((_h68153_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68145_))
                         _seed68151_))
                 (_size68156_ (vector-length _table68150_))
                 (_entries68159_ (fxquotient _size68156_ '2))
                 (_start68162_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68153_ _entries68159_)
                   '1)))
            (let _loop68166_ ((_probe68169_ _start68162_)
                              (_i68171_ '1)
                              (_deleted68173_ '#f))
              (let ((_k68176_ (vector-ref _table68150_ _probe68169_)))
                (if (let ((__tmp68490 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68176_ __tmp68490))
                    (if _deleted68173_
                        (begin
                          (vector-set! _table68150_ _deleted68173_ _key68145_)
                          (vector-set!
                           _table68150_
                           (fx+ _deleted68173_ '1)
                           (_prototype-table-update!68146_ _default68147_))
                          ((lambda ()
                             (let ((__tmp68489
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68144_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68144_
                                __tmp68489)))))
                        (begin
                          (vector-set! _table68150_ _probe68169_ _key68145_)
                          (vector-set!
                           _table68150_
                           (fx+ _probe68169_ '1)
                           (_prototype-table-update!68146_ _default68147_))
                          ((lambda ()
                             (let ((__tmp68487
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68144_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68144_ __tmp68487))
                             (let ((__tmp68488
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68144_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68144_
                                __tmp68488))))))
                    (if (let ((__tmp68486 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68176_ __tmp68486))
                        (let ((__tmp68485
                               (let ((_next-probe68181_
                                      (fx+ _start68162_
                                           _i68171_
                                           (fx* _i68171_ _i68171_))))
                                 (fxmodulo _next-probe68181_ _size68156_)))
                              (__tmp68484 (fx+ _i68171_ '1))
                              (__tmp68483
                               (let ((_$e68184_ _deleted68173_))
                                 (if _$e68184_ _$e68184_ _probe68169_))))
                          (declare (not safe))
                          (_loop68166_ __tmp68485 __tmp68484 __tmp68483))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68145_ _k68176_))
                            (begin
                              (vector-set!
                               _table68150_
                               _probe68169_
                               _key68145_)
                              (vector-set!
                               _table68150_
                               (fx+ _probe68169_ '1)
                               (_prototype-table-update!68146_
                                (vector-ref
                                 _table68150_
                                 (fx+ _probe68169_ '1)))))
                            (let ((__tmp68482
                                   (let ((_next-probe68187_
                                          (fx+ _start68162_
                                               _i68171_
                                               (fx* _i68171_ _i68171_))))
                                     (fxmodulo _next-probe68187_ _size68156_)))
                                  (__tmp68481 (fx+ _i68171_ '1)))
                              (declare (not safe))
                              (_loop68166_
                               __tmp68482
                               __tmp68481
                               _deleted68173_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68103_ _key68105_)
        (let ((_table68108_
               (let () (declare (not safe)) (&raw-table-table _tab68103_)))
              (_seed68110_
               (let () (declare (not safe)) (&raw-table-seed _tab68103_))))
          (let* ((_h68113_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68105_))
                         _seed68110_))
                 (_size68116_ (vector-length _table68108_))
                 (_entries68119_ (fxquotient _size68116_ '2))
                 (_start68122_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68113_ _entries68119_)
                   '1)))
            (let _loop68126_ ((_probe68129_ _start68122_) (_i68131_ '1))
              (let ((_k68134_ (vector-ref _table68108_ _probe68129_)))
                (if (let ((__tmp68497 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68134_ __tmp68497))
                    '#!void
                    (if (let ((__tmp68496 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68134_ __tmp68496))
                        (let ((__tmp68495
                               (let ((_next-probe68137_
                                      (fx+ _start68122_
                                           _i68131_
                                           (fx* _i68131_ _i68131_))))
                                 (fxmodulo _next-probe68137_ _size68116_)))
                              (__tmp68494 (fx+ _i68131_ '1)))
                          (declare (not safe))
                          (_loop68126_ __tmp68495 __tmp68494))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68105_ _k68134_))
                            (begin
                              (vector-set!
                               _table68108_
                               _probe68129_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68108_
                               (fx+ _probe68129_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68493
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68103_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68103_
                                    __tmp68493)))))
                            (let ((__tmp68492
                                   (let ((_next-probe68141_
                                          (fx+ _start68122_
                                               _i68131_
                                               (fx* _i68131_ _i68131_))))
                                     (fxmodulo _next-probe68141_ _size68116_)))
                                  (__tmp68491 (fx+ _i68131_ '1)))
                              (declare (not safe))
                              (_loop68126_ __tmp68492 __tmp68491)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68095_)
        (let ((_super6809668098_
               (let () (declare (not safe)) (##type-super _klass68095_))))
          (if _super6809668098_
              (let ((_super68101_ _super6809668098_))
                (let ((__tmp68499
                       (let () (declare (not safe)) (##type-id _super68101_)))
                      (__tmp68498
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68499 __tmp68498)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67982_ _klass67983_ _obj-klass67984_)
        (let ((_method-table67986_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67984_))))
          (let _loop67989_ ((_rest67992_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67982_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67994_ '0)
                            (_methods67996_ '()))
            (let* ((_rest6799868006_ _rest67992_)
                   (_else6800068068_
                    (lambda ()
                      (let ((_prototype68014_
                             (let ((__obj68445
                                    (let ((__tmp68500
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67994_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67983_
                                       __tmp68500))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68445 '#f))
                               __obj68445)))
                        (let _loop68017_ ((_rest68019_ _methods67996_)
                                          (_off68020_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67994_ '1))))
                          (let* ((_rest6802268030_ _rest68019_)
                                 (_else6802468049_
                                  (lambda ()
                                    (let ((_prototype-key68038_
                                           (let ((__tmp68502
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67983_)))
                                                 (__tmp68501
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67984_))))
                                             (declare (not safe))
                                             (cons __tmp68502 __tmp68501))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68043_ ()
                                          (if (let ((__tmp68503
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68503 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68043_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68038_
                                         _prototype68014_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68047_)
                                         _prototype68047_)
                                       _prototype68014_))))
                                 (_K6802668056_
                                  (lambda (_rest68052_ _method68053_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68014_
                                       _method68053_
                                       _off68020_
                                       _klass67983_
                                       '#f))
                                    (let ((__tmp68504
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68020_ '1))))
                                      (declare (not safe))
                                      (_loop68017_ _rest68052_ __tmp68504)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6802268030_))
                                (let ((_hd6802768059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6802268030_)))
                                      (_tl6802868061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6802268030_))))
                                  (let* ((_method68064_ _hd6802768059_)
                                         (_rest68066_ _tl6802868061_))
                                    (declare (not safe))
                                    (_K6802668056_ _rest68066_ _method68064_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6802468049_))))))))
                   (_K6800268083_
                    (lambda (_rest68071_ _method-name68072_)
                      (let ((_$e68075_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67986_
                                _method-name68072_
                                '#f))))
                        (if _$e68075_
                            ((lambda (_method68078_)
                               (let ((__tmp68506
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67994_ '1)))
                                     (__tmp68505
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68078_ _methods67996_))))
                                 (declare (not safe))
                                 (_loop67989_
                                  _rest68071_
                                  __tmp68506
                                  __tmp68505)))
                             _$e68075_)
                            ((lambda (_klass68080_ _method-name68081_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68080_
                                  'method:
                                  _method-name68081_)))
                             _klass67983_
                             _method-name68072_))))))
              (if (let () (declare (not safe)) (##pair? _rest6799868006_))
                  (let ((_hd6800368086_
                         (let ()
                           (declare (not safe))
                           (##car _rest6799868006_)))
                        (_tl6800468088_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6799868006_))))
                    (let* ((_method-name68091_ _hd6800368086_)
                           (_rest68093_ _tl6800468088_))
                      (declare (not safe))
                      (_K6800268083_ _rest68093_ _method-name68091_)))
                  (let () (declare (not safe)) (_else6800068068_))))))))
    (define try-create-prototype
      (lambda (_descriptor67869_ _klass67870_ _obj-klass67871_)
        (let ((_method-table67873_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67871_))))
          (let _loop67876_ ((_rest67879_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67869_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67881_ '0)
                            (_methods67883_ '()))
            (let* ((_rest6788567893_ _rest67879_)
                   (_else6788767955_
                    (lambda ()
                      (let ((_prototype67901_
                             (let ((__obj68446
                                    (let ((__tmp68507
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67881_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67870_
                                       __tmp68507))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68446 '#f))
                               __obj68446)))
                        (let _loop67904_ ((_rest67906_ _methods67883_)
                                          (_off67907_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67881_ '1))))
                          (let* ((_rest6790967917_ _rest67906_)
                                 (_else6791167936_
                                  (lambda ()
                                    (let ((_prototype-key67925_
                                           (let ((__tmp68509
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67870_)))
                                                 (__tmp68508
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67871_))))
                                             (declare (not safe))
                                             (cons __tmp68509 __tmp68508))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67930_ ()
                                          (if (let ((__tmp68510
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68510 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67930_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67925_
                                         _prototype67901_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67934_)
                                         _prototype67934_)
                                       _prototype67901_))))
                                 (_K6791367943_
                                  (lambda (_rest67939_ _method67940_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67901_
                                       _method67940_
                                       _off67907_
                                       _klass67870_
                                       '#f))
                                    (let ((__tmp68511
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67907_ '1))))
                                      (declare (not safe))
                                      (_loop67904_ _rest67939_ __tmp68511)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6790967917_))
                                (let ((_hd6791467946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6790967917_)))
                                      (_tl6791567948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6790967917_))))
                                  (let* ((_method67951_ _hd6791467946_)
                                         (_rest67953_ _tl6791567948_))
                                    (declare (not safe))
                                    (_K6791367943_ _rest67953_ _method67951_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6791167936_))))))))
                   (_K6788967970_
                    (lambda (_rest67958_ _method-name67959_)
                      (let ((_$e67962_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67873_
                                _method-name67959_
                                '#f))))
                        (if _$e67962_
                            ((lambda (_method67965_)
                               (let ((__tmp68513
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67881_ '1)))
                                     (__tmp68512
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67965_ _methods67883_))))
                                 (declare (not safe))
                                 (_loop67876_
                                  _rest67958_
                                  __tmp68513
                                  __tmp68512)))
                             _$e67962_)
                            ((lambda (_klass67967_ _method-name67968_) '#f)
                             _klass67870_
                             _method-name67959_))))))
              (if (let () (declare (not safe)) (##pair? _rest6788567893_))
                  (let ((_hd6789067973_
                         (let ()
                           (declare (not safe))
                           (##car _rest6788567893_)))
                        (_tl6789167975_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6788567893_))))
                    (let* ((_method-name67978_ _hd6789067973_)
                           (_rest67980_ _tl6789167975_))
                      (declare (not safe))
                      (_K6788967970_ _rest67980_ _method-name67978_)))
                  (let () (declare (not safe)) (_else6788767955_))))))))
    (define cast
      (lambda (_descriptor67828_ _obj67830_)
        (if (let () (declare (not safe)) (##structure? _obj67830_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67835_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67828_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67838_
                      (let () (declare (not safe)) (##type-id _klass67835_)))
                     (_obj-klass67841_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67830_)))
                     (_obj-klass-id67844_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67841_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67838_ _obj-klass-id67844_))
                    _obj67830_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67841_))
                        (let ((__tmp68515
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67830_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67828_ __tmp68515))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67850_ ()
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
                                      (_again67850_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67838_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67844_))
                          (let ((_prototype67860_
                                 (let ((_$e67854_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67854_
                                       ((lambda (_prototype67857_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67857_)
                                        _$e67854_)
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
                                            _descriptor67828_
                                            _klass67835_
                                            _obj-klass67841_)))))))
                            ((lambda (_prototype67862_ _obj67863_)
                               (let ((_instance67865_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67862_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67865_
                                    _obj67863_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67865_))
                             _prototype67860_
                             _obj67830_)))))))
            ((lambda (_obj67867_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67867_)))
             _obj67830_))))
    (define try-cast
      (lambda (_descriptor67787_ _obj67789_)
        (if (let () (declare (not safe)) (##structure? _obj67789_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67794_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67787_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67797_
                      (let () (declare (not safe)) (##type-id _klass67794_)))
                     (_obj-klass67800_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67789_)))
                     (_obj-klass-id67803_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67800_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67797_ _obj-klass-id67803_))
                    _obj67789_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67800_))
                        (let ((__tmp68517
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67789_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67787_ __tmp68517))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67809_ ()
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
                                      (_again67809_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67797_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67803_))
                          (let ((_prototype67819_
                                 (let ((_$e67813_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67813_
                                       ((lambda (_prototype67816_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67816_)
                                        _$e67813_)
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
                                            _descriptor67787_
                                            _klass67794_
                                            _obj-klass67800_)))))))
                            ((lambda (_prototype67821_ _obj67822_)
                               (if _prototype67821_
                                   (let ((_instance67824_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67821_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67824_
                                        _obj67822_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67824_)
                                   '#f))
                             _prototype67819_
                             _obj67789_)))))))
            ((lambda (_obj67826_) '#f) _obj67789_))))
    (define satisfies?
      (lambda (_descriptor67748_ _obj67750_)
        (if (let () (declare (not safe)) (##structure? _obj67750_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67755_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67748_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67758_
                      (let () (declare (not safe)) (##type-id _klass67755_)))
                     (_obj-klass67761_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67750_)))
                     (_obj-klass-id67764_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67761_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67758_ _obj-klass-id67764_))
                    _obj67750_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67761_))
                        (let ((__tmp68519
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67750_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67748_ __tmp68519))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67770_ ()
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
                                      (_again67770_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67758_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67764_))
                          (let ((_prototype67780_
                                 (let ((_$e67774_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67774_
                                       ((lambda (_prototype67777_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67777_)
                                        _$e67774_)
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
                                            _descriptor67748_
                                            _klass67755_
                                            _obj-klass67761_)))))))
                            ((lambda (_prototype67782_ _obj67783_)
                               (if _prototype67782_ '#t '#f))
                             _prototype67780_
                             _obj67750_)))))))
            ((lambda (_obj67785_) '#f) _obj67750_))))))
