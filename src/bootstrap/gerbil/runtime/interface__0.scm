(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709125254)
  (begin
    (define CastError::t
      (let ((__tmp68435 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68435
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68428_ (apply make-instance CastError::t _$args68428_)))
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
      (lambda (_where68302_ _message68303_ . _irritants68304_)
        (raise (let ((__obj68431
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68431
                  _message68303_
                  'where:
                  _where68302_
                  'irritants:
                  _irritants68304_)
                 __obj68431))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68438 (list))
            (__tmp68436
             (let ((__tmp68437
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68437 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68438
         '(__object)
         __tmp68436
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
      (let ((__tmp68443 (list))
            (__tmp68439
             (let ((__tmp68442
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68440
                    (let ((__tmp68441
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68441 '()))))
               (declare (not safe))
               (cons __tmp68442 __tmp68440))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68443
         '(type methods)
         __tmp68439
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68299_
        (apply make-instance interface-descriptor::t _$args68299_)))
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
      (lambda (_key68297_)
        (let ((__tmp68445
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68297_))))
              (__tmp68444
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68297_)))))
          (declare (not safe))
          (##fxxor __tmp68445 __tmp68444))))
    (define __interface-test-key
      (lambda (_a68294_ _b68295_)
        (if (let ((__tmp68449 (let () (declare (not safe)) (##car _a68294_)))
                  (__tmp68448 (let () (declare (not safe)) (##car _b68295_))))
              (declare (not safe))
              (##eq? __tmp68449 __tmp68448))
            (let ((__tmp68447 (let () (declare (not safe)) (##cdr _a68294_)))
                  (__tmp68446 (let () (declare (not safe)) (##cdr _b68295_))))
              (declare (not safe))
              (##eq? __tmp68447 __tmp68446))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68275_ _seed68277_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68275_
           __interface-hash-key
           __interface-test-key
           _seed68277_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68283_ '#f) (_seed68285_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68283_ _seed68285_))))
    (define make-prototype-table__1
      (lambda (_size-hint68287_)
        (let ((_seed68289_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68287_ _seed68289_))))
    (define make-prototype-table
      (lambda _g68451_
        (let ((_g68450_ (let () (declare (not safe)) (##length _g68451_))))
          (cond ((let () (declare (not safe)) (##fx= _g68450_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68451_))
                ((let () (declare (not safe)) (##fx= _g68450_ 1))
                 (apply (lambda (_size-hint68287_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68287_)))
                        _g68451_))
                ((let () (declare (not safe)) (##fx= _g68450_ 2))
                 (apply (lambda (_size-hint68291_ _seed68292_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68291_
                             _seed68292_)))
                        _g68451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68451_))))))
    (define prototype-table-ref
      (lambda (_tab68232_ _key68233_ _default68234_)
        (let ((_table68236_
               (let () (declare (not safe)) (&raw-table-table _tab68232_)))
              (_seed68237_
               (let () (declare (not safe)) (&raw-table-seed _tab68232_))))
          (let* ((_h68239_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68233_))
                         _seed68237_))
                 (_size68242_ (vector-length _table68236_))
                 (_entries68245_ (fxquotient _size68242_ '2))
                 (_start68248_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68239_ _entries68245_)
                   '1)))
            (let _loop68252_ ((_probe68255_ _start68248_)
                              (_i68257_ '1)
                              (_deleted68259_ '#f))
              (let ((_k68262_ (vector-ref _table68236_ _probe68255_)))
                (if (let ((__tmp68458 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68262_ __tmp68458))
                    _default68234_
                    (if (let ((__tmp68457 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68262_ __tmp68457))
                        (let ((__tmp68456
                               (let ((_next-probe68265_
                                      (fx+ _start68248_
                                           _i68257_
                                           (fx* _i68257_ _i68257_))))
                                 (fxmodulo _next-probe68265_ _size68242_)))
                              (__tmp68455 (fx+ _i68257_ '1))
                              (__tmp68454
                               (let ((_$e68268_ _deleted68259_))
                                 (if _$e68268_ _$e68268_ _probe68255_))))
                          (declare (not safe))
                          (_loop68252_ __tmp68456 __tmp68455 __tmp68454))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68233_ _k68262_))
                            (vector-ref _table68236_ (fx+ _probe68255_ '1))
                            (let ((__tmp68453
                                   (let ((_next-probe68271_
                                          (fx+ _start68248_
                                               _i68257_
                                               (fx* _i68257_ _i68257_))))
                                     (fxmodulo _next-probe68271_ _size68242_)))
                                  (__tmp68452 (fx+ _i68257_ '1)))
                              (declare (not safe))
                              (_loop68252_
                               __tmp68453
                               __tmp68452
                               _deleted68259_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68228_ _key68229_ _value68230_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68228_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68228_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68228_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68228_ _key68229_ _value68230_))))
    (define __prototype-table-set!
      (lambda (_tab68183_ _key68184_ _value68185_)
        (let ((_table68188_
               (let () (declare (not safe)) (&raw-table-table _tab68183_)))
              (_seed68189_
               (let () (declare (not safe)) (&raw-table-seed _tab68183_))))
          (let* ((_h68191_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68184_))
                         _seed68189_))
                 (_size68194_ (vector-length _table68188_))
                 (_entries68197_ (fxquotient _size68194_ '2))
                 (_start68200_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68191_ _entries68197_)
                   '1)))
            (let _loop68204_ ((_probe68207_ _start68200_)
                              (_i68209_ '1)
                              (_deleted68211_ '#f))
              (let ((_k68214_ (vector-ref _table68188_ _probe68207_)))
                (if (let ((__tmp68468 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68214_ __tmp68468))
                    (if _deleted68211_
                        (begin
                          (vector-set! _table68188_ _deleted68211_ _key68184_)
                          (vector-set!
                           _table68188_
                           (fx+ _deleted68211_ '1)
                           _value68185_)
                          ((lambda ()
                             (let ((__tmp68467
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68183_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68183_
                                __tmp68467)))))
                        (begin
                          (vector-set! _table68188_ _probe68207_ _key68184_)
                          (vector-set!
                           _table68188_
                           (fx+ _probe68207_ '1)
                           _value68185_)
                          ((lambda ()
                             (let ((__tmp68465
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68183_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68183_ __tmp68465))
                             (let ((__tmp68466
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68183_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68183_
                                __tmp68466))))))
                    (if (let ((__tmp68464 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68214_ __tmp68464))
                        (let ((__tmp68463
                               (let ((_next-probe68219_
                                      (fx+ _start68200_
                                           _i68209_
                                           (fx* _i68209_ _i68209_))))
                                 (fxmodulo _next-probe68219_ _size68194_)))
                              (__tmp68462 (fx+ _i68209_ '1))
                              (__tmp68461
                               (let ((_$e68222_ _deleted68211_))
                                 (if _$e68222_ _$e68222_ _probe68207_))))
                          (declare (not safe))
                          (_loop68204_ __tmp68463 __tmp68462 __tmp68461))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68184_ _k68214_))
                            (begin
                              (vector-set!
                               _table68188_
                               _probe68207_
                               _key68184_)
                              (vector-set!
                               _table68188_
                               (fx+ _probe68207_ '1)
                               _value68185_))
                            (let ((__tmp68460
                                   (let ((_next-probe68225_
                                          (fx+ _start68200_
                                               _i68209_
                                               (fx* _i68209_ _i68209_))))
                                     (fxmodulo _next-probe68225_ _size68194_)))
                                  (__tmp68459 (fx+ _i68209_ '1)))
                              (declare (not safe))
                              (_loop68204_
                               __tmp68460
                               __tmp68459
                               _deleted68211_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68178_
               _key68179_
               _prototype-table-update!68180_
               _default68181_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68178_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68178_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68178_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68178_
           _key68179_
           _prototype-table-update!68180_
           _default68181_))))
    (define __prototype-table-update!
      (lambda (_tab68132_
               _key68133_
               _prototype-table-update!68134_
               _default68135_)
        (let ((_table68138_
               (let () (declare (not safe)) (&raw-table-table _tab68132_)))
              (_seed68139_
               (let () (declare (not safe)) (&raw-table-seed _tab68132_))))
          (let* ((_h68141_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68133_))
                         _seed68139_))
                 (_size68144_ (vector-length _table68138_))
                 (_entries68147_ (fxquotient _size68144_ '2))
                 (_start68150_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68141_ _entries68147_)
                   '1)))
            (let _loop68154_ ((_probe68157_ _start68150_)
                              (_i68159_ '1)
                              (_deleted68161_ '#f))
              (let ((_k68164_ (vector-ref _table68138_ _probe68157_)))
                (if (let ((__tmp68478 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68164_ __tmp68478))
                    (if _deleted68161_
                        (begin
                          (vector-set! _table68138_ _deleted68161_ _key68133_)
                          (vector-set!
                           _table68138_
                           (fx+ _deleted68161_ '1)
                           (_prototype-table-update!68134_ _default68135_))
                          ((lambda ()
                             (let ((__tmp68477
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68132_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68132_
                                __tmp68477)))))
                        (begin
                          (vector-set! _table68138_ _probe68157_ _key68133_)
                          (vector-set!
                           _table68138_
                           (fx+ _probe68157_ '1)
                           (_prototype-table-update!68134_ _default68135_))
                          ((lambda ()
                             (let ((__tmp68475
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68132_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68132_ __tmp68475))
                             (let ((__tmp68476
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68132_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68132_
                                __tmp68476))))))
                    (if (let ((__tmp68474 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68164_ __tmp68474))
                        (let ((__tmp68473
                               (let ((_next-probe68169_
                                      (fx+ _start68150_
                                           _i68159_
                                           (fx* _i68159_ _i68159_))))
                                 (fxmodulo _next-probe68169_ _size68144_)))
                              (__tmp68472 (fx+ _i68159_ '1))
                              (__tmp68471
                               (let ((_$e68172_ _deleted68161_))
                                 (if _$e68172_ _$e68172_ _probe68157_))))
                          (declare (not safe))
                          (_loop68154_ __tmp68473 __tmp68472 __tmp68471))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68133_ _k68164_))
                            (begin
                              (vector-set!
                               _table68138_
                               _probe68157_
                               _key68133_)
                              (vector-set!
                               _table68138_
                               (fx+ _probe68157_ '1)
                               (_prototype-table-update!68134_
                                (vector-ref
                                 _table68138_
                                 (fx+ _probe68157_ '1)))))
                            (let ((__tmp68470
                                   (let ((_next-probe68175_
                                          (fx+ _start68150_
                                               _i68159_
                                               (fx* _i68159_ _i68159_))))
                                     (fxmodulo _next-probe68175_ _size68144_)))
                                  (__tmp68469 (fx+ _i68159_ '1)))
                              (declare (not safe))
                              (_loop68154_
                               __tmp68470
                               __tmp68469
                               _deleted68161_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68091_ _key68093_)
        (let ((_table68096_
               (let () (declare (not safe)) (&raw-table-table _tab68091_)))
              (_seed68098_
               (let () (declare (not safe)) (&raw-table-seed _tab68091_))))
          (let* ((_h68101_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68093_))
                         _seed68098_))
                 (_size68104_ (vector-length _table68096_))
                 (_entries68107_ (fxquotient _size68104_ '2))
                 (_start68110_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68101_ _entries68107_)
                   '1)))
            (let _loop68114_ ((_probe68117_ _start68110_) (_i68119_ '1))
              (let ((_k68122_ (vector-ref _table68096_ _probe68117_)))
                (if (let ((__tmp68485 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68122_ __tmp68485))
                    '#!void
                    (if (let ((__tmp68484 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68122_ __tmp68484))
                        (let ((__tmp68483
                               (let ((_next-probe68125_
                                      (fx+ _start68110_
                                           _i68119_
                                           (fx* _i68119_ _i68119_))))
                                 (fxmodulo _next-probe68125_ _size68104_)))
                              (__tmp68482 (fx+ _i68119_ '1)))
                          (declare (not safe))
                          (_loop68114_ __tmp68483 __tmp68482))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68093_ _k68122_))
                            (begin
                              (vector-set!
                               _table68096_
                               _probe68117_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68096_
                               (fx+ _probe68117_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68481
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68091_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68091_
                                    __tmp68481)))))
                            (let ((__tmp68480
                                   (let ((_next-probe68129_
                                          (fx+ _start68110_
                                               _i68119_
                                               (fx* _i68119_ _i68119_))))
                                     (fxmodulo _next-probe68129_ _size68104_)))
                                  (__tmp68479 (fx+ _i68119_ '1)))
                              (declare (not safe))
                              (_loop68114_ __tmp68480 __tmp68479)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68083_)
        (let ((_super6808468086_
               (let () (declare (not safe)) (##type-super _klass68083_))))
          (if _super6808468086_
              (let ((_super68089_ _super6808468086_))
                (let ((__tmp68487
                       (let () (declare (not safe)) (##type-id _super68089_)))
                      (__tmp68486
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68487 __tmp68486)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67970_ _klass67971_ _obj-klass67972_)
        (let ((_method-table67974_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67972_))))
          (let _loop67977_ ((_rest67980_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67970_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67982_ '0)
                            (_methods67984_ '()))
            (let* ((_rest6798667994_ _rest67980_)
                   (_else6798868056_
                    (lambda ()
                      (let ((_prototype68002_
                             (let ((__obj68433
                                    (let ((__tmp68488
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67982_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67971_
                                       __tmp68488))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68433 '#f))
                               __obj68433)))
                        (let _loop68005_ ((_rest68007_ _methods67984_)
                                          (_off68008_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67982_ '1))))
                          (let* ((_rest6801068018_ _rest68007_)
                                 (_else6801268037_
                                  (lambda ()
                                    (let ((_prototype-key68026_
                                           (let ((__tmp68490
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67971_)))
                                                 (__tmp68489
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67972_))))
                                             (declare (not safe))
                                             (cons __tmp68490 __tmp68489))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68031_ ()
                                          (if (let ((__tmp68491
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68491 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68031_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68026_
                                         _prototype68002_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68035_)
                                         _prototype68035_)
                                       _prototype68002_))))
                                 (_K6801468044_
                                  (lambda (_rest68040_ _method68041_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68002_
                                       _method68041_
                                       _off68008_
                                       _klass67971_
                                       '#f))
                                    (let ((__tmp68492
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68008_ '1))))
                                      (declare (not safe))
                                      (_loop68005_ _rest68040_ __tmp68492)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6801068018_))
                                (let ((_hd6801568047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6801068018_)))
                                      (_tl6801668049_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6801068018_))))
                                  (let* ((_method68052_ _hd6801568047_)
                                         (_rest68054_ _tl6801668049_))
                                    (declare (not safe))
                                    (_K6801468044_ _rest68054_ _method68052_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6801268037_))))))))
                   (_K6799068071_
                    (lambda (_rest68059_ _method-name68060_)
                      (let ((_$e68063_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67974_
                                _method-name68060_
                                '#f))))
                        (if _$e68063_
                            ((lambda (_method68066_)
                               (let ((__tmp68494
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67982_ '1)))
                                     (__tmp68493
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68066_ _methods67984_))))
                                 (declare (not safe))
                                 (_loop67977_
                                  _rest68059_
                                  __tmp68494
                                  __tmp68493)))
                             _$e68063_)
                            ((lambda (_klass68068_ _method-name68069_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68068_
                                  'method:
                                  _method-name68069_)))
                             _klass67971_
                             _method-name68060_))))))
              (if (let () (declare (not safe)) (##pair? _rest6798667994_))
                  (let ((_hd6799168074_
                         (let ()
                           (declare (not safe))
                           (##car _rest6798667994_)))
                        (_tl6799268076_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6798667994_))))
                    (let* ((_method-name68079_ _hd6799168074_)
                           (_rest68081_ _tl6799268076_))
                      (declare (not safe))
                      (_K6799068071_ _rest68081_ _method-name68079_)))
                  (let () (declare (not safe)) (_else6798868056_))))))))
    (define try-create-prototype
      (lambda (_descriptor67857_ _klass67858_ _obj-klass67859_)
        (let ((_method-table67861_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67859_))))
          (let _loop67864_ ((_rest67867_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67857_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67869_ '0)
                            (_methods67871_ '()))
            (let* ((_rest6787367881_ _rest67867_)
                   (_else6787567943_
                    (lambda ()
                      (let ((_prototype67889_
                             (let ((__obj68434
                                    (let ((__tmp68495
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67869_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67858_
                                       __tmp68495))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68434 '#f))
                               __obj68434)))
                        (let _loop67892_ ((_rest67894_ _methods67871_)
                                          (_off67895_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67869_ '1))))
                          (let* ((_rest6789767905_ _rest67894_)
                                 (_else6789967924_
                                  (lambda ()
                                    (let ((_prototype-key67913_
                                           (let ((__tmp68497
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67858_)))
                                                 (__tmp68496
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67859_))))
                                             (declare (not safe))
                                             (cons __tmp68497 __tmp68496))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67918_ ()
                                          (if (let ((__tmp68498
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68498 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67918_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67913_
                                         _prototype67889_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67922_)
                                         _prototype67922_)
                                       _prototype67889_))))
                                 (_K6790167931_
                                  (lambda (_rest67927_ _method67928_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67889_
                                       _method67928_
                                       _off67895_
                                       _klass67858_
                                       '#f))
                                    (let ((__tmp68499
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67895_ '1))))
                                      (declare (not safe))
                                      (_loop67892_ _rest67927_ __tmp68499)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6789767905_))
                                (let ((_hd6790267934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6789767905_)))
                                      (_tl6790367936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6789767905_))))
                                  (let* ((_method67939_ _hd6790267934_)
                                         (_rest67941_ _tl6790367936_))
                                    (declare (not safe))
                                    (_K6790167931_ _rest67941_ _method67939_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6789967924_))))))))
                   (_K6787767958_
                    (lambda (_rest67946_ _method-name67947_)
                      (let ((_$e67950_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67861_
                                _method-name67947_
                                '#f))))
                        (if _$e67950_
                            ((lambda (_method67953_)
                               (let ((__tmp68501
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67869_ '1)))
                                     (__tmp68500
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67953_ _methods67871_))))
                                 (declare (not safe))
                                 (_loop67864_
                                  _rest67946_
                                  __tmp68501
                                  __tmp68500)))
                             _$e67950_)
                            ((lambda (_klass67955_ _method-name67956_) '#f)
                             _klass67858_
                             _method-name67947_))))))
              (if (let () (declare (not safe)) (##pair? _rest6787367881_))
                  (let ((_hd6787867961_
                         (let ()
                           (declare (not safe))
                           (##car _rest6787367881_)))
                        (_tl6787967963_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6787367881_))))
                    (let* ((_method-name67966_ _hd6787867961_)
                           (_rest67968_ _tl6787967963_))
                      (declare (not safe))
                      (_K6787767958_ _rest67968_ _method-name67966_)))
                  (let () (declare (not safe)) (_else6787567943_))))))))
    (define cast
      (lambda (_descriptor67816_ _obj67818_)
        (if (let () (declare (not safe)) (##structure? _obj67818_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67823_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67816_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67826_
                      (let () (declare (not safe)) (##type-id _klass67823_)))
                     (_obj-klass67829_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67818_)))
                     (_obj-klass-id67832_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67829_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67826_ _obj-klass-id67832_))
                    _obj67818_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67829_))
                        (let ((__tmp68503
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67818_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67816_ __tmp68503))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67838_ ()
                              (if (let ((__tmp68502
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68502 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67838_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67826_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67832_))
                          (let ((_prototype67848_
                                 (let ((_$e67842_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67842_
                                       ((lambda (_prototype67845_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67845_)
                                        _$e67842_)
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
                                            _descriptor67816_
                                            _klass67823_
                                            _obj-klass67829_)))))))
                            ((lambda (_prototype67850_ _obj67851_)
                               (let ((_instance67853_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67850_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67853_
                                    _obj67851_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67853_))
                             _prototype67848_
                             _obj67818_)))))))
            ((lambda (_obj67855_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67855_)))
             _obj67818_))))
    (define try-cast
      (lambda (_descriptor67775_ _obj67777_)
        (if (let () (declare (not safe)) (##structure? _obj67777_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67775_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67785_
                      (let () (declare (not safe)) (##type-id _klass67782_)))
                     (_obj-klass67788_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67777_)))
                     (_obj-klass-id67791_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67788_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67785_ _obj-klass-id67791_))
                    _obj67777_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67788_))
                        (let ((__tmp68505
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67777_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67775_ __tmp68505))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67797_ ()
                              (if (let ((__tmp68504
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68504 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67797_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67785_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67791_))
                          (let ((_prototype67807_
                                 (let ((_$e67801_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67801_
                                       ((lambda (_prototype67804_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67804_)
                                        _$e67801_)
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
                                            _descriptor67775_
                                            _klass67782_
                                            _obj-klass67788_)))))))
                            ((lambda (_prototype67809_ _obj67810_)
                               (if _prototype67809_
                                   (let ((_instance67812_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67809_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67812_
                                        _obj67810_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67812_)
                                   '#f))
                             _prototype67807_
                             _obj67777_)))))))
            ((lambda (_obj67814_) '#f) _obj67777_))))
    (define satisfies?
      (lambda (_descriptor67736_ _obj67738_)
        (if (let () (declare (not safe)) (##structure? _obj67738_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67736_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67746_
                      (let () (declare (not safe)) (##type-id _klass67743_)))
                     (_obj-klass67749_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67738_)))
                     (_obj-klass-id67752_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67749_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67746_ _obj-klass-id67752_))
                    _obj67738_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67749_))
                        (let ((__tmp68507
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67738_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67736_ __tmp68507))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67758_ ()
                              (if (let ((__tmp68506
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68506 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67758_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67746_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67752_))
                          (let ((_prototype67768_
                                 (let ((_$e67762_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67762_
                                       ((lambda (_prototype67765_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67765_)
                                        _$e67762_)
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
                                            _descriptor67736_
                                            _klass67743_
                                            _obj-klass67749_)))))))
                            ((lambda (_prototype67770_ _obj67771_)
                               (if _prototype67770_ '#t '#f))
                             _prototype67768_
                             _obj67738_)))))))
            ((lambda (_obj67773_) '#f) _obj67738_))))))
