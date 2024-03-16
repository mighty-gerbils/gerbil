(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710632268)
  (begin
    (define CastError::t
      (let ((__tmp69538 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69538
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69531_ (apply make-instance CastError::t _$args69531_)))
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
      (lambda (_where69405_ _message69406_ . _irritants69407_)
        (let ((__tmp69539
               (let ((__obj69534
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69534
                  _message69406_
                  'where:
                  _where69405_
                  'irritants:
                  _irritants69407_)
                 __obj69534)))
          (declare (not safe))
          (raise __tmp69539))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69542 (list))
            (__tmp69540
             (let ((__tmp69541
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69541 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69542
         '(__object)
         __tmp69540
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
      (let ((__tmp69547 (list))
            (__tmp69543
             (let ((__tmp69546
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69544
                    (let ((__tmp69545
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69545 '()))))
               (declare (not safe))
               (cons __tmp69546 __tmp69544))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69547
         '(type methods)
         __tmp69543
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69402_
        (apply make-instance interface-descriptor::t _$args69402_)))
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
      (lambda (_key69400_)
        (let ((__tmp69549
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69400_))))
              (__tmp69548
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69400_)))))
          (declare (not safe))
          (##fxxor __tmp69549 __tmp69548))))
    (define __interface-test-key
      (lambda (_a69397_ _b69398_)
        (if (let ((__tmp69553 (let () (declare (not safe)) (##car _a69397_)))
                  (__tmp69552 (let () (declare (not safe)) (##car _b69398_))))
              (declare (not safe))
              (##eq? __tmp69553 __tmp69552))
            (let ((__tmp69551 (let () (declare (not safe)) (##cdr _a69397_)))
                  (__tmp69550 (let () (declare (not safe)) (##cdr _b69398_))))
              (declare (not safe))
              (##eq? __tmp69551 __tmp69550))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69378_ _seed69380_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69378_
           __interface-hash-key
           __interface-test-key
           _seed69380_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69386_ '#f) (_seed69388_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69386_ _seed69388_))))
    (define make-prototype-table__1
      (lambda (_size-hint69390_)
        (let ((_seed69392_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69390_ _seed69392_))))
    (define make-prototype-table
      (lambda _g69555_
        (let ((_g69554_ (let () (declare (not safe)) (##length _g69555_))))
          (cond ((let () (declare (not safe)) (##fx= _g69554_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69555_))
                ((let () (declare (not safe)) (##fx= _g69554_ 1))
                 (apply (lambda (_size-hint69390_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69390_)))
                        _g69555_))
                ((let () (declare (not safe)) (##fx= _g69554_ 2))
                 (apply (lambda (_size-hint69394_ _seed69395_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69394_
                             _seed69395_)))
                        _g69555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69555_))))))
    (define prototype-table-ref
      (lambda (_tab69335_ _key69336_ _default69337_)
        (let ((_table69339_
               (let () (declare (not safe)) (&raw-table-table _tab69335_)))
              (_seed69340_
               (let () (declare (not safe)) (&raw-table-seed _tab69335_))))
          (let* ((_h69342_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69336_))
                         _seed69340_))
                 (_size69345_ (vector-length _table69339_))
                 (_entries69348_ (fxquotient _size69345_ '2))
                 (_start69351_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69342_ _entries69348_)
                   '1)))
            (let _loop69355_ ((_probe69358_ _start69351_)
                              (_i69360_ '1)
                              (_deleted69362_ '#f))
              (let ((_k69365_ (vector-ref _table69339_ _probe69358_)))
                (if (let ((__tmp69562 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69365_ __tmp69562))
                    _default69337_
                    (if (let ((__tmp69561 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69365_ __tmp69561))
                        (let ((__tmp69560
                               (let ((_next-probe69368_
                                      (fx+ _start69351_
                                           _i69360_
                                           (fx* _i69360_ _i69360_))))
                                 (fxmodulo _next-probe69368_ _size69345_)))
                              (__tmp69559 (fx+ _i69360_ '1))
                              (__tmp69558
                               (let ((_$e69371_ _deleted69362_))
                                 (if _$e69371_ _$e69371_ _probe69358_))))
                          (declare (not safe))
                          (_loop69355_ __tmp69560 __tmp69559 __tmp69558))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69336_ _k69365_))
                            (vector-ref _table69339_ (fx+ _probe69358_ '1))
                            (let ((__tmp69557
                                   (let ((_next-probe69374_
                                          (fx+ _start69351_
                                               _i69360_
                                               (fx* _i69360_ _i69360_))))
                                     (fxmodulo _next-probe69374_ _size69345_)))
                                  (__tmp69556 (fx+ _i69360_ '1)))
                              (declare (not safe))
                              (_loop69355_
                               __tmp69557
                               __tmp69556
                               _deleted69362_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69331_ _key69332_ _value69333_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69331_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69331_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69331_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69331_ _key69332_ _value69333_))))
    (define __prototype-table-set!
      (lambda (_tab69286_ _key69287_ _value69288_)
        (let ((_table69291_
               (let () (declare (not safe)) (&raw-table-table _tab69286_)))
              (_seed69292_
               (let () (declare (not safe)) (&raw-table-seed _tab69286_))))
          (let* ((_h69294_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69287_))
                         _seed69292_))
                 (_size69297_ (vector-length _table69291_))
                 (_entries69300_ (fxquotient _size69297_ '2))
                 (_start69303_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69294_ _entries69300_)
                   '1)))
            (let _loop69307_ ((_probe69310_ _start69303_)
                              (_i69312_ '1)
                              (_deleted69314_ '#f))
              (let ((_k69317_ (vector-ref _table69291_ _probe69310_)))
                (if (let ((__tmp69572 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69317_ __tmp69572))
                    (if _deleted69314_
                        (begin
                          (vector-set! _table69291_ _deleted69314_ _key69287_)
                          (vector-set!
                           _table69291_
                           (fx+ _deleted69314_ '1)
                           _value69288_)
                          ((lambda ()
                             (let ((__tmp69571
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69286_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69286_
                                __tmp69571)))))
                        (begin
                          (vector-set! _table69291_ _probe69310_ _key69287_)
                          (vector-set!
                           _table69291_
                           (fx+ _probe69310_ '1)
                           _value69288_)
                          ((lambda ()
                             (let ((__tmp69569
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69286_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69286_ __tmp69569))
                             (let ((__tmp69570
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69286_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69286_
                                __tmp69570))))))
                    (if (let ((__tmp69568 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69317_ __tmp69568))
                        (let ((__tmp69567
                               (let ((_next-probe69322_
                                      (fx+ _start69303_
                                           _i69312_
                                           (fx* _i69312_ _i69312_))))
                                 (fxmodulo _next-probe69322_ _size69297_)))
                              (__tmp69566 (fx+ _i69312_ '1))
                              (__tmp69565
                               (let ((_$e69325_ _deleted69314_))
                                 (if _$e69325_ _$e69325_ _probe69310_))))
                          (declare (not safe))
                          (_loop69307_ __tmp69567 __tmp69566 __tmp69565))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69287_ _k69317_))
                            (begin
                              (vector-set!
                               _table69291_
                               _probe69310_
                               _key69287_)
                              (vector-set!
                               _table69291_
                               (fx+ _probe69310_ '1)
                               _value69288_))
                            (let ((__tmp69564
                                   (let ((_next-probe69328_
                                          (fx+ _start69303_
                                               _i69312_
                                               (fx* _i69312_ _i69312_))))
                                     (fxmodulo _next-probe69328_ _size69297_)))
                                  (__tmp69563 (fx+ _i69312_ '1)))
                              (declare (not safe))
                              (_loop69307_
                               __tmp69564
                               __tmp69563
                               _deleted69314_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69281_
               _key69282_
               _prototype-table-update!69283_
               _default69284_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69281_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69281_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69281_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69281_
           _key69282_
           _prototype-table-update!69283_
           _default69284_))))
    (define __prototype-table-update!
      (lambda (_tab69235_
               _key69236_
               _prototype-table-update!69237_
               _default69238_)
        (let ((_table69241_
               (let () (declare (not safe)) (&raw-table-table _tab69235_)))
              (_seed69242_
               (let () (declare (not safe)) (&raw-table-seed _tab69235_))))
          (let* ((_h69244_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69236_))
                         _seed69242_))
                 (_size69247_ (vector-length _table69241_))
                 (_entries69250_ (fxquotient _size69247_ '2))
                 (_start69253_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69244_ _entries69250_)
                   '1)))
            (let _loop69257_ ((_probe69260_ _start69253_)
                              (_i69262_ '1)
                              (_deleted69264_ '#f))
              (let ((_k69267_ (vector-ref _table69241_ _probe69260_)))
                (if (let ((__tmp69582 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69267_ __tmp69582))
                    (if _deleted69264_
                        (begin
                          (vector-set! _table69241_ _deleted69264_ _key69236_)
                          (vector-set!
                           _table69241_
                           (fx+ _deleted69264_ '1)
                           (_prototype-table-update!69237_ _default69238_))
                          ((lambda ()
                             (let ((__tmp69581
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69235_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69235_
                                __tmp69581)))))
                        (begin
                          (vector-set! _table69241_ _probe69260_ _key69236_)
                          (vector-set!
                           _table69241_
                           (fx+ _probe69260_ '1)
                           (_prototype-table-update!69237_ _default69238_))
                          ((lambda ()
                             (let ((__tmp69579
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69235_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69235_ __tmp69579))
                             (let ((__tmp69580
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69235_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69235_
                                __tmp69580))))))
                    (if (let ((__tmp69578 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69267_ __tmp69578))
                        (let ((__tmp69577
                               (let ((_next-probe69272_
                                      (fx+ _start69253_
                                           _i69262_
                                           (fx* _i69262_ _i69262_))))
                                 (fxmodulo _next-probe69272_ _size69247_)))
                              (__tmp69576 (fx+ _i69262_ '1))
                              (__tmp69575
                               (let ((_$e69275_ _deleted69264_))
                                 (if _$e69275_ _$e69275_ _probe69260_))))
                          (declare (not safe))
                          (_loop69257_ __tmp69577 __tmp69576 __tmp69575))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69236_ _k69267_))
                            (begin
                              (vector-set!
                               _table69241_
                               _probe69260_
                               _key69236_)
                              (vector-set!
                               _table69241_
                               (fx+ _probe69260_ '1)
                               (_prototype-table-update!69237_
                                (vector-ref
                                 _table69241_
                                 (fx+ _probe69260_ '1)))))
                            (let ((__tmp69574
                                   (let ((_next-probe69278_
                                          (fx+ _start69253_
                                               _i69262_
                                               (fx* _i69262_ _i69262_))))
                                     (fxmodulo _next-probe69278_ _size69247_)))
                                  (__tmp69573 (fx+ _i69262_ '1)))
                              (declare (not safe))
                              (_loop69257_
                               __tmp69574
                               __tmp69573
                               _deleted69264_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69194_ _key69196_)
        (let ((_table69199_
               (let () (declare (not safe)) (&raw-table-table _tab69194_)))
              (_seed69201_
               (let () (declare (not safe)) (&raw-table-seed _tab69194_))))
          (let* ((_h69204_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69196_))
                         _seed69201_))
                 (_size69207_ (vector-length _table69199_))
                 (_entries69210_ (fxquotient _size69207_ '2))
                 (_start69213_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69204_ _entries69210_)
                   '1)))
            (let _loop69217_ ((_probe69220_ _start69213_) (_i69222_ '1))
              (let ((_k69225_ (vector-ref _table69199_ _probe69220_)))
                (if (let ((__tmp69589 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69225_ __tmp69589))
                    '#!void
                    (if (let ((__tmp69588 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69225_ __tmp69588))
                        (let ((__tmp69587
                               (let ((_next-probe69228_
                                      (fx+ _start69213_
                                           _i69222_
                                           (fx* _i69222_ _i69222_))))
                                 (fxmodulo _next-probe69228_ _size69207_)))
                              (__tmp69586 (fx+ _i69222_ '1)))
                          (declare (not safe))
                          (_loop69217_ __tmp69587 __tmp69586))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69196_ _k69225_))
                            (begin
                              (vector-set!
                               _table69199_
                               _probe69220_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69199_
                               (fx+ _probe69220_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69585
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69194_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69194_
                                    __tmp69585)))))
                            (let ((__tmp69584
                                   (let ((_next-probe69232_
                                          (fx+ _start69213_
                                               _i69222_
                                               (fx* _i69222_ _i69222_))))
                                     (fxmodulo _next-probe69232_ _size69207_)))
                                  (__tmp69583 (fx+ _i69222_ '1)))
                              (declare (not safe))
                              (_loop69217_ __tmp69584 __tmp69583)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69186_)
        (let ((_super6918769189_
               (let () (declare (not safe)) (##type-super _klass69186_))))
          (if _super6918769189_
              (let ((_super69192_ _super6918769189_))
                (let ((__tmp69591
                       (let () (declare (not safe)) (##type-id _super69192_)))
                      (__tmp69590
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69591 __tmp69590)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69072_ _klass69073_ _obj-klass69074_)
        (let ((_method-table69076_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69074_))))
          (let _loop69079_ ((_rest69082_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69072_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69084_ '0)
                            (_methods69086_ '()))
            (let* ((_rest6908869096_ _rest69082_)
                   (_else6909069158_
                    (lambda ()
                      (let ((_prototype69104_
                             (let ((__obj69536
                                    (let ((__tmp69592
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69084_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69073_
                                       __tmp69592))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69536 '#f))
                               __obj69536)))
                        (let _loop69107_ ((_rest69109_ _methods69086_)
                                          (_off69110_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69084_ '1))))
                          (let* ((_rest6911269120_ _rest69109_)
                                 (_else6911469139_
                                  (lambda ()
                                    (let ((_prototype-key69128_
                                           (let ((__tmp69594
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69073_)))
                                                 (__tmp69593
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69074_))))
                                             (declare (not safe))
                                             (cons __tmp69594 __tmp69593))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69133_ ()
                                          (if (let ((__tmp69595
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69595 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69133_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69128_
                                         _prototype69104_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69137_)
                                         _prototype69137_)
                                       _prototype69104_))))
                                 (_K6911669146_
                                  (lambda (_rest69142_ _method69143_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69104_
                                       _method69143_
                                       _off69110_
                                       _klass69073_
                                       '#f))
                                    (let ((__tmp69596
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69110_ '1))))
                                      (declare (not safe))
                                      (_loop69107_ _rest69142_ __tmp69596)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6911269120_))
                                (let ((_hd6911769149_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6911269120_)))
                                      (_tl6911869151_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6911269120_))))
                                  (let* ((_method69154_ _hd6911769149_)
                                         (_rest69156_ _tl6911869151_))
                                    (declare (not safe))
                                    (_K6911669146_ _rest69156_ _method69154_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6911469139_))))))))
                   (_K6909269174_
                    (lambda (_rest69161_ _method-name69162_)
                      (let ((_$e69165_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69076_
                                _method-name69162_
                                '#f))))
                        (if _$e69165_
                            ((lambda (_method69168_)
                               (let ((__tmp69600
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69084_ '1)))
                                     (__tmp69599
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69168_ _methods69086_))))
                                 (declare (not safe))
                                 (_loop69079_
                                  _rest69161_
                                  __tmp69600
                                  __tmp69599)))
                             _$e69165_)
                            ((lambda (_klass69170_
                                      _obj-klass69171_
                                      _method-name69172_)
                               (let ((__tmp69598
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69170_)))
                                     (__tmp69597
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69171_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69170_
                                  'interface-id:
                                  __tmp69598
                                  'class:
                                  _obj-klass69171_
                                  'class-id:
                                  __tmp69597
                                  'method:
                                  _method-name69172_)))
                             _klass69073_
                             _obj-klass69074_
                             _method-name69162_))))))
              (if (let () (declare (not safe)) (##pair? _rest6908869096_))
                  (let ((_hd6909369177_
                         (let ()
                           (declare (not safe))
                           (##car _rest6908869096_)))
                        (_tl6909469179_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6908869096_))))
                    (let* ((_method-name69182_ _hd6909369177_)
                           (_rest69184_ _tl6909469179_))
                      (declare (not safe))
                      (_K6909269174_ _rest69184_ _method-name69182_)))
                  (let () (declare (not safe)) (_else6909069158_))))))))
    (define try-create-prototype
      (lambda (_descriptor68958_ _klass68959_ _obj-klass68960_)
        (let ((_method-table68962_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68960_))))
          (let _loop68965_ ((_rest68968_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68958_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count68970_ '0)
                            (_methods68972_ '()))
            (let* ((_rest6897468982_ _rest68968_)
                   (_else6897669044_
                    (lambda ()
                      (let ((_prototype68990_
                             (let ((__obj69537
                                    (let ((__tmp69601
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68970_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68959_
                                       __tmp69601))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69537 '#f))
                               __obj69537)))
                        (let _loop68993_ ((_rest68995_ _methods68972_)
                                          (_off68996_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68970_ '1))))
                          (let* ((_rest6899869006_ _rest68995_)
                                 (_else6900069025_
                                  (lambda ()
                                    (let ((_prototype-key69014_
                                           (let ((__tmp69603
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass68959_)))
                                                 (__tmp69602
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass68960_))))
                                             (declare (not safe))
                                             (cons __tmp69603 __tmp69602))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69019_ ()
                                          (if (let ((__tmp69604
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69604 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69019_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69014_
                                         _prototype68990_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69023_)
                                         _prototype69023_)
                                       _prototype68990_))))
                                 (_K6900269032_
                                  (lambda (_rest69028_ _method69029_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68990_
                                       _method69029_
                                       _off68996_
                                       _klass68959_
                                       '#f))
                                    (let ((__tmp69605
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68996_ '1))))
                                      (declare (not safe))
                                      (_loop68993_ _rest69028_ __tmp69605)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6899869006_))
                                (let ((_hd6900369035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6899869006_)))
                                      (_tl6900469037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6899869006_))))
                                  (let* ((_method69040_ _hd6900369035_)
                                         (_rest69042_ _tl6900469037_))
                                    (declare (not safe))
                                    (_K6900269032_ _rest69042_ _method69040_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6900069025_))))))))
                   (_K6897869060_
                    (lambda (_rest69047_ _method-name69048_)
                      (let ((_$e69051_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68962_
                                _method-name69048_
                                '#f))))
                        (if _$e69051_
                            ((lambda (_method69054_)
                               (let ((__tmp69607
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68970_ '1)))
                                     (__tmp69606
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69054_ _methods68972_))))
                                 (declare (not safe))
                                 (_loop68965_
                                  _rest69047_
                                  __tmp69607
                                  __tmp69606)))
                             _$e69051_)
                            ((lambda (_klass69056_
                                      _obj-klass69057_
                                      _method-name69058_)
                               '#f)
                             _klass68959_
                             _obj-klass68960_
                             _method-name69048_))))))
              (if (let () (declare (not safe)) (##pair? _rest6897468982_))
                  (let ((_hd6897969063_
                         (let ()
                           (declare (not safe))
                           (##car _rest6897468982_)))
                        (_tl6898069065_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6897468982_))))
                    (let* ((_method-name69068_ _hd6897969063_)
                           (_rest69070_ _tl6898069065_))
                      (declare (not safe))
                      (_K6897869060_ _rest69070_ _method-name69068_)))
                  (let () (declare (not safe)) (_else6897669044_))))))))
    (define cast
      (lambda (_descriptor68920_ _obj68922_)
        (declare (not interrupts-enabled))
        (let* ((_klass68926_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68920_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68929_
                (let () (declare (not safe)) (##type-id _klass68926_)))
               (_obj-klass68932_
                (let () (declare (not safe)) (class-of _obj68922_)))
               (_obj-klass-id68935_
                (let () (declare (not safe)) (##type-id _obj-klass68932_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68929_ _obj-klass-id68935_))
              _obj68922_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68932_))
                  (let ((__tmp69609
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68922_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor68920_ __tmp69609))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68941_ ()
                        (if (let ((__tmp69608
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69608 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68941_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68929_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68935_))
                    (let ((_prototype68951_
                           (let ((_$e68945_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68945_
                                 ((lambda (_prototype68948_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68948_)
                                  _$e68945_)
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
                                      _descriptor68920_
                                      _klass68926_
                                      _obj-klass68932_)))))))
                      ((lambda (_prototype68953_ _obj68954_)
                         (let ((_instance68956_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype68953_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance68956_
                              _obj68954_
                              '1
                              '#f
                              'cast))
                           _instance68956_))
                       _prototype68951_
                       _obj68922_))))))))
    (define try-cast
      (lambda (_descriptor68882_ _obj68884_)
        (declare (not interrupts-enabled))
        (let* ((_klass68888_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68882_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68891_
                (let () (declare (not safe)) (##type-id _klass68888_)))
               (_obj-klass68894_
                (let () (declare (not safe)) (class-of _obj68884_)))
               (_obj-klass-id68897_
                (let () (declare (not safe)) (##type-id _obj-klass68894_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68891_ _obj-klass-id68897_))
              _obj68884_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68894_))
                  (let ((__tmp69611
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68884_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor68882_ __tmp69611))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68903_ ()
                        (if (let ((__tmp69610
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69610 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68903_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68891_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68897_))
                    (let ((_prototype68913_
                           (let ((_$e68907_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68907_
                                 ((lambda (_prototype68910_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68910_)
                                  _$e68907_)
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
                                      _descriptor68882_
                                      _klass68888_
                                      _obj-klass68894_)))))))
                      ((lambda (_prototype68915_ _obj68916_)
                         (if _prototype68915_
                             (let ((_instance68918_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype68915_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance68918_
                                  _obj68916_
                                  '1
                                  '#f
                                  'cast))
                               _instance68918_)
                             '#f))
                       _prototype68913_
                       _obj68884_))))))))
    (define satisfies?
      (lambda (_descriptor68846_ _obj68848_)
        (declare (not interrupts-enabled))
        (let* ((_klass68852_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68846_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68855_
                (let () (declare (not safe)) (##type-id _klass68852_)))
               (_obj-klass68858_
                (let () (declare (not safe)) (class-of _obj68848_)))
               (_obj-klass-id68861_
                (let () (declare (not safe)) (##type-id _obj-klass68858_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68855_ _obj-klass-id68861_))
              _obj68848_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68858_))
                  (let ((__tmp69613
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68848_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor68846_ __tmp69613))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68867_ ()
                        (if (let ((__tmp69612
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69612 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68867_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68855_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68861_))
                    (let ((_prototype68877_
                           (let ((_$e68871_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68871_
                                 ((lambda (_prototype68874_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68874_)
                                  _$e68871_)
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
                                      _descriptor68846_
                                      _klass68852_
                                      _obj-klass68858_)))))))
                      ((lambda (_prototype68879_ _obj68880_)
                         (if _prototype68879_ '#t '#f))
                       _prototype68877_
                       _obj68848_))))))))))
