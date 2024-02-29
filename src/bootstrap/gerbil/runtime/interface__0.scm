(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709229969)
  (begin
    (define CastError::t
      (let ((__tmp68442 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68442
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68435_ (apply make-instance CastError::t _$args68435_)))
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
      (lambda (_where68309_ _message68310_ . _irritants68311_)
        (raise (let ((__obj68438
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68438
                  _message68310_
                  'where:
                  _where68309_
                  'irritants:
                  _irritants68311_)
                 __obj68438))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68445 (list))
            (__tmp68443
             (let ((__tmp68444
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68444 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68445
         '(__object)
         __tmp68443
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
      (let ((__tmp68450 (list))
            (__tmp68446
             (let ((__tmp68449
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68447
                    (let ((__tmp68448
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68448 '()))))
               (declare (not safe))
               (cons __tmp68449 __tmp68447))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68450
         '(type methods)
         __tmp68446
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68306_
        (apply make-instance interface-descriptor::t _$args68306_)))
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
      (lambda (_key68304_)
        (let ((__tmp68452
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68304_))))
              (__tmp68451
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68304_)))))
          (declare (not safe))
          (##fxxor __tmp68452 __tmp68451))))
    (define __interface-test-key
      (lambda (_a68301_ _b68302_)
        (if (let ((__tmp68456 (let () (declare (not safe)) (##car _a68301_)))
                  (__tmp68455 (let () (declare (not safe)) (##car _b68302_))))
              (declare (not safe))
              (##eq? __tmp68456 __tmp68455))
            (let ((__tmp68454 (let () (declare (not safe)) (##cdr _a68301_)))
                  (__tmp68453 (let () (declare (not safe)) (##cdr _b68302_))))
              (declare (not safe))
              (##eq? __tmp68454 __tmp68453))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68282_ _seed68284_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68282_
           __interface-hash-key
           __interface-test-key
           _seed68284_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68290_ '#f) (_seed68292_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68290_ _seed68292_))))
    (define make-prototype-table__1
      (lambda (_size-hint68294_)
        (let ((_seed68296_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68294_ _seed68296_))))
    (define make-prototype-table
      (lambda _g68458_
        (let ((_g68457_ (let () (declare (not safe)) (##length _g68458_))))
          (cond ((let () (declare (not safe)) (##fx= _g68457_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68458_))
                ((let () (declare (not safe)) (##fx= _g68457_ 1))
                 (apply (lambda (_size-hint68294_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68294_)))
                        _g68458_))
                ((let () (declare (not safe)) (##fx= _g68457_ 2))
                 (apply (lambda (_size-hint68298_ _seed68299_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68298_
                             _seed68299_)))
                        _g68458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68458_))))))
    (define prototype-table-ref
      (lambda (_tab68239_ _key68240_ _default68241_)
        (let ((_table68243_
               (let () (declare (not safe)) (&raw-table-table _tab68239_)))
              (_seed68244_
               (let () (declare (not safe)) (&raw-table-seed _tab68239_))))
          (let* ((_h68246_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68240_))
                         _seed68244_))
                 (_size68249_ (vector-length _table68243_))
                 (_entries68252_ (fxquotient _size68249_ '2))
                 (_start68255_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68246_ _entries68252_)
                   '1)))
            (let _loop68259_ ((_probe68262_ _start68255_)
                              (_i68264_ '1)
                              (_deleted68266_ '#f))
              (let ((_k68269_ (vector-ref _table68243_ _probe68262_)))
                (if (let ((__tmp68465 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68269_ __tmp68465))
                    _default68241_
                    (if (let ((__tmp68464 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68269_ __tmp68464))
                        (let ((__tmp68463
                               (let ((_next-probe68272_
                                      (fx+ _start68255_
                                           _i68264_
                                           (fx* _i68264_ _i68264_))))
                                 (fxmodulo _next-probe68272_ _size68249_)))
                              (__tmp68462 (fx+ _i68264_ '1))
                              (__tmp68461
                               (let ((_$e68275_ _deleted68266_))
                                 (if _$e68275_ _$e68275_ _probe68262_))))
                          (declare (not safe))
                          (_loop68259_ __tmp68463 __tmp68462 __tmp68461))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68240_ _k68269_))
                            (vector-ref _table68243_ (fx+ _probe68262_ '1))
                            (let ((__tmp68460
                                   (let ((_next-probe68278_
                                          (fx+ _start68255_
                                               _i68264_
                                               (fx* _i68264_ _i68264_))))
                                     (fxmodulo _next-probe68278_ _size68249_)))
                                  (__tmp68459 (fx+ _i68264_ '1)))
                              (declare (not safe))
                              (_loop68259_
                               __tmp68460
                               __tmp68459
                               _deleted68266_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68235_ _key68236_ _value68237_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68235_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68235_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68235_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68235_ _key68236_ _value68237_))))
    (define __prototype-table-set!
      (lambda (_tab68190_ _key68191_ _value68192_)
        (let ((_table68195_
               (let () (declare (not safe)) (&raw-table-table _tab68190_)))
              (_seed68196_
               (let () (declare (not safe)) (&raw-table-seed _tab68190_))))
          (let* ((_h68198_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68191_))
                         _seed68196_))
                 (_size68201_ (vector-length _table68195_))
                 (_entries68204_ (fxquotient _size68201_ '2))
                 (_start68207_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68198_ _entries68204_)
                   '1)))
            (let _loop68211_ ((_probe68214_ _start68207_)
                              (_i68216_ '1)
                              (_deleted68218_ '#f))
              (let ((_k68221_ (vector-ref _table68195_ _probe68214_)))
                (if (let ((__tmp68475 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68221_ __tmp68475))
                    (if _deleted68218_
                        (begin
                          (vector-set! _table68195_ _deleted68218_ _key68191_)
                          (vector-set!
                           _table68195_
                           (fx+ _deleted68218_ '1)
                           _value68192_)
                          ((lambda ()
                             (let ((__tmp68474
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68190_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68190_
                                __tmp68474)))))
                        (begin
                          (vector-set! _table68195_ _probe68214_ _key68191_)
                          (vector-set!
                           _table68195_
                           (fx+ _probe68214_ '1)
                           _value68192_)
                          ((lambda ()
                             (let ((__tmp68472
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68190_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68190_ __tmp68472))
                             (let ((__tmp68473
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68190_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68190_
                                __tmp68473))))))
                    (if (let ((__tmp68471 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68221_ __tmp68471))
                        (let ((__tmp68470
                               (let ((_next-probe68226_
                                      (fx+ _start68207_
                                           _i68216_
                                           (fx* _i68216_ _i68216_))))
                                 (fxmodulo _next-probe68226_ _size68201_)))
                              (__tmp68469 (fx+ _i68216_ '1))
                              (__tmp68468
                               (let ((_$e68229_ _deleted68218_))
                                 (if _$e68229_ _$e68229_ _probe68214_))))
                          (declare (not safe))
                          (_loop68211_ __tmp68470 __tmp68469 __tmp68468))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68191_ _k68221_))
                            (begin
                              (vector-set!
                               _table68195_
                               _probe68214_
                               _key68191_)
                              (vector-set!
                               _table68195_
                               (fx+ _probe68214_ '1)
                               _value68192_))
                            (let ((__tmp68467
                                   (let ((_next-probe68232_
                                          (fx+ _start68207_
                                               _i68216_
                                               (fx* _i68216_ _i68216_))))
                                     (fxmodulo _next-probe68232_ _size68201_)))
                                  (__tmp68466 (fx+ _i68216_ '1)))
                              (declare (not safe))
                              (_loop68211_
                               __tmp68467
                               __tmp68466
                               _deleted68218_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68185_
               _key68186_
               _prototype-table-update!68187_
               _default68188_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68185_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68185_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68185_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68185_
           _key68186_
           _prototype-table-update!68187_
           _default68188_))))
    (define __prototype-table-update!
      (lambda (_tab68139_
               _key68140_
               _prototype-table-update!68141_
               _default68142_)
        (let ((_table68145_
               (let () (declare (not safe)) (&raw-table-table _tab68139_)))
              (_seed68146_
               (let () (declare (not safe)) (&raw-table-seed _tab68139_))))
          (let* ((_h68148_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68140_))
                         _seed68146_))
                 (_size68151_ (vector-length _table68145_))
                 (_entries68154_ (fxquotient _size68151_ '2))
                 (_start68157_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68148_ _entries68154_)
                   '1)))
            (let _loop68161_ ((_probe68164_ _start68157_)
                              (_i68166_ '1)
                              (_deleted68168_ '#f))
              (let ((_k68171_ (vector-ref _table68145_ _probe68164_)))
                (if (let ((__tmp68485 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68171_ __tmp68485))
                    (if _deleted68168_
                        (begin
                          (vector-set! _table68145_ _deleted68168_ _key68140_)
                          (vector-set!
                           _table68145_
                           (fx+ _deleted68168_ '1)
                           (_prototype-table-update!68141_ _default68142_))
                          ((lambda ()
                             (let ((__tmp68484
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68139_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68139_
                                __tmp68484)))))
                        (begin
                          (vector-set! _table68145_ _probe68164_ _key68140_)
                          (vector-set!
                           _table68145_
                           (fx+ _probe68164_ '1)
                           (_prototype-table-update!68141_ _default68142_))
                          ((lambda ()
                             (let ((__tmp68482
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68139_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68139_ __tmp68482))
                             (let ((__tmp68483
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68139_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68139_
                                __tmp68483))))))
                    (if (let ((__tmp68481 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68171_ __tmp68481))
                        (let ((__tmp68480
                               (let ((_next-probe68176_
                                      (fx+ _start68157_
                                           _i68166_
                                           (fx* _i68166_ _i68166_))))
                                 (fxmodulo _next-probe68176_ _size68151_)))
                              (__tmp68479 (fx+ _i68166_ '1))
                              (__tmp68478
                               (let ((_$e68179_ _deleted68168_))
                                 (if _$e68179_ _$e68179_ _probe68164_))))
                          (declare (not safe))
                          (_loop68161_ __tmp68480 __tmp68479 __tmp68478))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68140_ _k68171_))
                            (begin
                              (vector-set!
                               _table68145_
                               _probe68164_
                               _key68140_)
                              (vector-set!
                               _table68145_
                               (fx+ _probe68164_ '1)
                               (_prototype-table-update!68141_
                                (vector-ref
                                 _table68145_
                                 (fx+ _probe68164_ '1)))))
                            (let ((__tmp68477
                                   (let ((_next-probe68182_
                                          (fx+ _start68157_
                                               _i68166_
                                               (fx* _i68166_ _i68166_))))
                                     (fxmodulo _next-probe68182_ _size68151_)))
                                  (__tmp68476 (fx+ _i68166_ '1)))
                              (declare (not safe))
                              (_loop68161_
                               __tmp68477
                               __tmp68476
                               _deleted68168_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68098_ _key68100_)
        (let ((_table68103_
               (let () (declare (not safe)) (&raw-table-table _tab68098_)))
              (_seed68105_
               (let () (declare (not safe)) (&raw-table-seed _tab68098_))))
          (let* ((_h68108_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68100_))
                         _seed68105_))
                 (_size68111_ (vector-length _table68103_))
                 (_entries68114_ (fxquotient _size68111_ '2))
                 (_start68117_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68108_ _entries68114_)
                   '1)))
            (let _loop68121_ ((_probe68124_ _start68117_) (_i68126_ '1))
              (let ((_k68129_ (vector-ref _table68103_ _probe68124_)))
                (if (let ((__tmp68492 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68129_ __tmp68492))
                    '#!void
                    (if (let ((__tmp68491 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68129_ __tmp68491))
                        (let ((__tmp68490
                               (let ((_next-probe68132_
                                      (fx+ _start68117_
                                           _i68126_
                                           (fx* _i68126_ _i68126_))))
                                 (fxmodulo _next-probe68132_ _size68111_)))
                              (__tmp68489 (fx+ _i68126_ '1)))
                          (declare (not safe))
                          (_loop68121_ __tmp68490 __tmp68489))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68100_ _k68129_))
                            (begin
                              (vector-set!
                               _table68103_
                               _probe68124_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68103_
                               (fx+ _probe68124_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68488
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68098_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68098_
                                    __tmp68488)))))
                            (let ((__tmp68487
                                   (let ((_next-probe68136_
                                          (fx+ _start68117_
                                               _i68126_
                                               (fx* _i68126_ _i68126_))))
                                     (fxmodulo _next-probe68136_ _size68111_)))
                                  (__tmp68486 (fx+ _i68126_ '1)))
                              (declare (not safe))
                              (_loop68121_ __tmp68487 __tmp68486)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68090_)
        (let ((_super6809168093_
               (let () (declare (not safe)) (##type-super _klass68090_))))
          (if _super6809168093_
              (let ((_super68096_ _super6809168093_))
                (let ((__tmp68494
                       (let () (declare (not safe)) (##type-id _super68096_)))
                      (__tmp68493
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68494 __tmp68493)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67977_ _klass67978_ _obj-klass67979_)
        (let ((_method-table67981_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67979_))))
          (let _loop67984_ ((_rest67987_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67977_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67989_ '0)
                            (_methods67991_ '()))
            (let* ((_rest6799368001_ _rest67987_)
                   (_else6799568063_
                    (lambda ()
                      (let ((_prototype68009_
                             (let ((__obj68440
                                    (let ((__tmp68495
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67989_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67978_
                                       __tmp68495))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68440 '#f))
                               __obj68440)))
                        (let _loop68012_ ((_rest68014_ _methods67991_)
                                          (_off68015_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67989_ '1))))
                          (let* ((_rest6801768025_ _rest68014_)
                                 (_else6801968044_
                                  (lambda ()
                                    (let ((_prototype-key68033_
                                           (let ((__tmp68497
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67978_)))
                                                 (__tmp68496
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67979_))))
                                             (declare (not safe))
                                             (cons __tmp68497 __tmp68496))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68038_ ()
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
                                                  (_again68038_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68033_
                                         _prototype68009_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68042_)
                                         _prototype68042_)
                                       _prototype68009_))))
                                 (_K6802168051_
                                  (lambda (_rest68047_ _method68048_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68009_
                                       _method68048_
                                       _off68015_
                                       _klass67978_
                                       '#f))
                                    (let ((__tmp68499
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68015_ '1))))
                                      (declare (not safe))
                                      (_loop68012_ _rest68047_ __tmp68499)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6801768025_))
                                (let ((_hd6802268054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6801768025_)))
                                      (_tl6802368056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6801768025_))))
                                  (let* ((_method68059_ _hd6802268054_)
                                         (_rest68061_ _tl6802368056_))
                                    (declare (not safe))
                                    (_K6802168051_ _rest68061_ _method68059_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6801968044_))))))))
                   (_K6799768078_
                    (lambda (_rest68066_ _method-name68067_)
                      (let ((_$e68070_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67981_
                                _method-name68067_
                                '#f))))
                        (if _$e68070_
                            ((lambda (_method68073_)
                               (let ((__tmp68501
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67989_ '1)))
                                     (__tmp68500
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68073_ _methods67991_))))
                                 (declare (not safe))
                                 (_loop67984_
                                  _rest68066_
                                  __tmp68501
                                  __tmp68500)))
                             _$e68070_)
                            ((lambda (_klass68075_ _method-name68076_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68075_
                                  'method:
                                  _method-name68076_)))
                             _klass67978_
                             _method-name68067_))))))
              (if (let () (declare (not safe)) (##pair? _rest6799368001_))
                  (let ((_hd6799868081_
                         (let ()
                           (declare (not safe))
                           (##car _rest6799368001_)))
                        (_tl6799968083_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6799368001_))))
                    (let* ((_method-name68086_ _hd6799868081_)
                           (_rest68088_ _tl6799968083_))
                      (declare (not safe))
                      (_K6799768078_ _rest68088_ _method-name68086_)))
                  (let () (declare (not safe)) (_else6799568063_))))))))
    (define try-create-prototype
      (lambda (_descriptor67864_ _klass67865_ _obj-klass67866_)
        (let ((_method-table67868_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67866_))))
          (let _loop67871_ ((_rest67874_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67864_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67876_ '0)
                            (_methods67878_ '()))
            (let* ((_rest6788067888_ _rest67874_)
                   (_else6788267950_
                    (lambda ()
                      (let ((_prototype67896_
                             (let ((__obj68441
                                    (let ((__tmp68502
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67876_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67865_
                                       __tmp68502))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68441 '#f))
                               __obj68441)))
                        (let _loop67899_ ((_rest67901_ _methods67878_)
                                          (_off67902_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67876_ '1))))
                          (let* ((_rest6790467912_ _rest67901_)
                                 (_else6790667931_
                                  (lambda ()
                                    (let ((_prototype-key67920_
                                           (let ((__tmp68504
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67865_)))
                                                 (__tmp68503
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67866_))))
                                             (declare (not safe))
                                             (cons __tmp68504 __tmp68503))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67925_ ()
                                          (if (let ((__tmp68505
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68505 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67925_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67920_
                                         _prototype67896_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67929_)
                                         _prototype67929_)
                                       _prototype67896_))))
                                 (_K6790867938_
                                  (lambda (_rest67934_ _method67935_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67896_
                                       _method67935_
                                       _off67902_
                                       _klass67865_
                                       '#f))
                                    (let ((__tmp68506
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67902_ '1))))
                                      (declare (not safe))
                                      (_loop67899_ _rest67934_ __tmp68506)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6790467912_))
                                (let ((_hd6790967941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6790467912_)))
                                      (_tl6791067943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6790467912_))))
                                  (let* ((_method67946_ _hd6790967941_)
                                         (_rest67948_ _tl6791067943_))
                                    (declare (not safe))
                                    (_K6790867938_ _rest67948_ _method67946_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6790667931_))))))))
                   (_K6788467965_
                    (lambda (_rest67953_ _method-name67954_)
                      (let ((_$e67957_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67868_
                                _method-name67954_
                                '#f))))
                        (if _$e67957_
                            ((lambda (_method67960_)
                               (let ((__tmp68508
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67876_ '1)))
                                     (__tmp68507
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67960_ _methods67878_))))
                                 (declare (not safe))
                                 (_loop67871_
                                  _rest67953_
                                  __tmp68508
                                  __tmp68507)))
                             _$e67957_)
                            ((lambda (_klass67962_ _method-name67963_) '#f)
                             _klass67865_
                             _method-name67954_))))))
              (if (let () (declare (not safe)) (##pair? _rest6788067888_))
                  (let ((_hd6788567968_
                         (let ()
                           (declare (not safe))
                           (##car _rest6788067888_)))
                        (_tl6788667970_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6788067888_))))
                    (let* ((_method-name67973_ _hd6788567968_)
                           (_rest67975_ _tl6788667970_))
                      (declare (not safe))
                      (_K6788467965_ _rest67975_ _method-name67973_)))
                  (let () (declare (not safe)) (_else6788267950_))))))))
    (define cast
      (lambda (_descriptor67823_ _obj67825_)
        (if (let () (declare (not safe)) (##structure? _obj67825_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67830_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67823_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67833_
                      (let () (declare (not safe)) (##type-id _klass67830_)))
                     (_obj-klass67836_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67825_)))
                     (_obj-klass-id67839_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67836_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67833_ _obj-klass-id67839_))
                    _obj67825_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67836_))
                        (let ((__tmp68510
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67825_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67823_ __tmp68510))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67845_ ()
                              (if (let ((__tmp68509
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68509 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67845_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67833_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67839_))
                          (let ((_prototype67855_
                                 (let ((_$e67849_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67849_
                                       ((lambda (_prototype67852_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67852_)
                                        _$e67849_)
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
                                            _descriptor67823_
                                            _klass67830_
                                            _obj-klass67836_)))))))
                            ((lambda (_prototype67857_ _obj67858_)
                               (let ((_instance67860_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67857_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67860_
                                    _obj67858_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67860_))
                             _prototype67855_
                             _obj67825_)))))))
            ((lambda (_obj67862_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67862_)))
             _obj67825_))))
    (define try-cast
      (lambda (_descriptor67782_ _obj67784_)
        (if (let () (declare (not safe)) (##structure? _obj67784_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67789_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67782_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67792_
                      (let () (declare (not safe)) (##type-id _klass67789_)))
                     (_obj-klass67795_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67784_)))
                     (_obj-klass-id67798_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67795_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67792_ _obj-klass-id67798_))
                    _obj67784_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67795_))
                        (let ((__tmp68512
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67784_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67782_ __tmp68512))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67804_ ()
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
                                      (_again67804_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67792_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67798_))
                          (let ((_prototype67814_
                                 (let ((_$e67808_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67808_
                                       ((lambda (_prototype67811_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67811_)
                                        _$e67808_)
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
                                            _descriptor67782_
                                            _klass67789_
                                            _obj-klass67795_)))))))
                            ((lambda (_prototype67816_ _obj67817_)
                               (if _prototype67816_
                                   (let ((_instance67819_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67816_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67819_
                                        _obj67817_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67819_)
                                   '#f))
                             _prototype67814_
                             _obj67784_)))))))
            ((lambda (_obj67821_) '#f) _obj67784_))))
    (define satisfies?
      (lambda (_descriptor67743_ _obj67745_)
        (if (let () (declare (not safe)) (##structure? _obj67745_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67750_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67743_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67753_
                      (let () (declare (not safe)) (##type-id _klass67750_)))
                     (_obj-klass67756_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67745_)))
                     (_obj-klass-id67759_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67756_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67753_ _obj-klass-id67759_))
                    _obj67745_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67756_))
                        (let ((__tmp68514
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67745_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67743_ __tmp68514))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67765_ ()
                              (if (let ((__tmp68513
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68513 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67765_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67753_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67759_))
                          (let ((_prototype67775_
                                 (let ((_$e67769_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67769_
                                       ((lambda (_prototype67772_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67772_)
                                        _$e67769_)
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
                                            _descriptor67743_
                                            _klass67750_
                                            _obj-klass67756_)))))))
                            ((lambda (_prototype67777_ _obj67778_)
                               (if _prototype67777_ '#t '#f))
                             _prototype67775_
                             _obj67745_)))))))
            ((lambda (_obj67780_) '#f) _obj67745_))))))
