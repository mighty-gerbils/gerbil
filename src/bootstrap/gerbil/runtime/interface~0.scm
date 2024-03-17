(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710715075)
  (begin
    (define CastError::t
      (let ((__tmp69545 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69545
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69538_ (apply make-instance CastError::t _$args69538_)))
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
      (lambda (_where69412_ _message69413_ . _irritants69414_)
        (let ((__tmp69546
               (let ((__obj69541
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69541
                  _message69413_
                  'where:
                  _where69412_
                  'irritants:
                  _irritants69414_)
                 __obj69541)))
          (declare (not safe))
          (raise __tmp69546))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69549 (list))
            (__tmp69547
             (let ((__tmp69548
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69548 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69549
         '(__object)
         __tmp69547
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
      (let ((__tmp69554 (list))
            (__tmp69550
             (let ((__tmp69553
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69551
                    (let ((__tmp69552
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69552 '()))))
               (declare (not safe))
               (cons __tmp69553 __tmp69551))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69554
         '(type methods)
         __tmp69550
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69409_
        (apply make-instance interface-descriptor::t _$args69409_)))
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
      (lambda (_key69407_)
        (let ((__tmp69556
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69407_))))
              (__tmp69555
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69407_)))))
          (declare (not safe))
          (##fxxor __tmp69556 __tmp69555))))
    (define __interface-test-key
      (lambda (_a69404_ _b69405_)
        (if (let ((__tmp69560 (let () (declare (not safe)) (##car _a69404_)))
                  (__tmp69559 (let () (declare (not safe)) (##car _b69405_))))
              (declare (not safe))
              (##eq? __tmp69560 __tmp69559))
            (let ((__tmp69558 (let () (declare (not safe)) (##cdr _a69404_)))
                  (__tmp69557 (let () (declare (not safe)) (##cdr _b69405_))))
              (declare (not safe))
              (##eq? __tmp69558 __tmp69557))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69385_ _seed69387_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69385_
           __interface-hash-key
           __interface-test-key
           _seed69387_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69393_ '#f) (_seed69395_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69393_ _seed69395_))))
    (define make-prototype-table__1
      (lambda (_size-hint69397_)
        (let ((_seed69399_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69397_ _seed69399_))))
    (define make-prototype-table
      (lambda _g69562_
        (let ((_g69561_ (let () (declare (not safe)) (##length _g69562_))))
          (cond ((let () (declare (not safe)) (##fx= _g69561_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69562_))
                ((let () (declare (not safe)) (##fx= _g69561_ 1))
                 (apply (lambda (_size-hint69397_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69397_)))
                        _g69562_))
                ((let () (declare (not safe)) (##fx= _g69561_ 2))
                 (apply (lambda (_size-hint69401_ _seed69402_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69401_
                             _seed69402_)))
                        _g69562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69562_))))))
    (define prototype-table-ref
      (lambda (_tab69342_ _key69343_ _default69344_)
        (let ((_table69346_
               (let () (declare (not safe)) (&raw-table-table _tab69342_)))
              (_seed69347_
               (let () (declare (not safe)) (&raw-table-seed _tab69342_))))
          (let* ((_h69349_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69343_))
                         _seed69347_))
                 (_size69352_ (vector-length _table69346_))
                 (_entries69355_ (fxquotient _size69352_ '2))
                 (_start69358_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69349_ _entries69355_)
                   '1)))
            (let _loop69362_ ((_probe69365_ _start69358_)
                              (_i69367_ '1)
                              (_deleted69369_ '#f))
              (let ((_k69372_ (vector-ref _table69346_ _probe69365_)))
                (if (let ((__tmp69569 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69372_ __tmp69569))
                    _default69344_
                    (if (let ((__tmp69568 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69372_ __tmp69568))
                        (let ((__tmp69567
                               (let ((_next-probe69375_
                                      (fx+ _start69358_
                                           _i69367_
                                           (fx* _i69367_ _i69367_))))
                                 (fxmodulo _next-probe69375_ _size69352_)))
                              (__tmp69566 (fx+ _i69367_ '1))
                              (__tmp69565
                               (let ((_$e69378_ _deleted69369_))
                                 (if _$e69378_ _$e69378_ _probe69365_))))
                          (declare (not safe))
                          (_loop69362_ __tmp69567 __tmp69566 __tmp69565))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69343_ _k69372_))
                            (vector-ref _table69346_ (fx+ _probe69365_ '1))
                            (let ((__tmp69564
                                   (let ((_next-probe69381_
                                          (fx+ _start69358_
                                               _i69367_
                                               (fx* _i69367_ _i69367_))))
                                     (fxmodulo _next-probe69381_ _size69352_)))
                                  (__tmp69563 (fx+ _i69367_ '1)))
                              (declare (not safe))
                              (_loop69362_
                               __tmp69564
                               __tmp69563
                               _deleted69369_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69338_ _key69339_ _value69340_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69338_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69338_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69338_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69338_ _key69339_ _value69340_))))
    (define __prototype-table-set!
      (lambda (_tab69293_ _key69294_ _value69295_)
        (let ((_table69298_
               (let () (declare (not safe)) (&raw-table-table _tab69293_)))
              (_seed69299_
               (let () (declare (not safe)) (&raw-table-seed _tab69293_))))
          (let* ((_h69301_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69294_))
                         _seed69299_))
                 (_size69304_ (vector-length _table69298_))
                 (_entries69307_ (fxquotient _size69304_ '2))
                 (_start69310_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69301_ _entries69307_)
                   '1)))
            (let _loop69314_ ((_probe69317_ _start69310_)
                              (_i69319_ '1)
                              (_deleted69321_ '#f))
              (let ((_k69324_ (vector-ref _table69298_ _probe69317_)))
                (if (let ((__tmp69579 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69324_ __tmp69579))
                    (if _deleted69321_
                        (begin
                          (vector-set! _table69298_ _deleted69321_ _key69294_)
                          (vector-set!
                           _table69298_
                           (fx+ _deleted69321_ '1)
                           _value69295_)
                          ((lambda ()
                             (let ((__tmp69578
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69293_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69293_
                                __tmp69578)))))
                        (begin
                          (vector-set! _table69298_ _probe69317_ _key69294_)
                          (vector-set!
                           _table69298_
                           (fx+ _probe69317_ '1)
                           _value69295_)
                          ((lambda ()
                             (let ((__tmp69576
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69293_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69293_ __tmp69576))
                             (let ((__tmp69577
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69293_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69293_
                                __tmp69577))))))
                    (if (let ((__tmp69575 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69324_ __tmp69575))
                        (let ((__tmp69574
                               (let ((_next-probe69329_
                                      (fx+ _start69310_
                                           _i69319_
                                           (fx* _i69319_ _i69319_))))
                                 (fxmodulo _next-probe69329_ _size69304_)))
                              (__tmp69573 (fx+ _i69319_ '1))
                              (__tmp69572
                               (let ((_$e69332_ _deleted69321_))
                                 (if _$e69332_ _$e69332_ _probe69317_))))
                          (declare (not safe))
                          (_loop69314_ __tmp69574 __tmp69573 __tmp69572))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69294_ _k69324_))
                            (begin
                              (vector-set!
                               _table69298_
                               _probe69317_
                               _key69294_)
                              (vector-set!
                               _table69298_
                               (fx+ _probe69317_ '1)
                               _value69295_))
                            (let ((__tmp69571
                                   (let ((_next-probe69335_
                                          (fx+ _start69310_
                                               _i69319_
                                               (fx* _i69319_ _i69319_))))
                                     (fxmodulo _next-probe69335_ _size69304_)))
                                  (__tmp69570 (fx+ _i69319_ '1)))
                              (declare (not safe))
                              (_loop69314_
                               __tmp69571
                               __tmp69570
                               _deleted69321_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69288_
               _key69289_
               _prototype-table-update!69290_
               _default69291_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69288_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69288_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69288_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69288_
           _key69289_
           _prototype-table-update!69290_
           _default69291_))))
    (define __prototype-table-update!
      (lambda (_tab69242_
               _key69243_
               _prototype-table-update!69244_
               _default69245_)
        (let ((_table69248_
               (let () (declare (not safe)) (&raw-table-table _tab69242_)))
              (_seed69249_
               (let () (declare (not safe)) (&raw-table-seed _tab69242_))))
          (let* ((_h69251_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69243_))
                         _seed69249_))
                 (_size69254_ (vector-length _table69248_))
                 (_entries69257_ (fxquotient _size69254_ '2))
                 (_start69260_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69251_ _entries69257_)
                   '1)))
            (let _loop69264_ ((_probe69267_ _start69260_)
                              (_i69269_ '1)
                              (_deleted69271_ '#f))
              (let ((_k69274_ (vector-ref _table69248_ _probe69267_)))
                (if (let ((__tmp69589 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69274_ __tmp69589))
                    (if _deleted69271_
                        (begin
                          (vector-set! _table69248_ _deleted69271_ _key69243_)
                          (vector-set!
                           _table69248_
                           (fx+ _deleted69271_ '1)
                           (_prototype-table-update!69244_ _default69245_))
                          ((lambda ()
                             (let ((__tmp69588
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69242_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69242_
                                __tmp69588)))))
                        (begin
                          (vector-set! _table69248_ _probe69267_ _key69243_)
                          (vector-set!
                           _table69248_
                           (fx+ _probe69267_ '1)
                           (_prototype-table-update!69244_ _default69245_))
                          ((lambda ()
                             (let ((__tmp69586
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69242_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69242_ __tmp69586))
                             (let ((__tmp69587
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69242_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69242_
                                __tmp69587))))))
                    (if (let ((__tmp69585 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69274_ __tmp69585))
                        (let ((__tmp69584
                               (let ((_next-probe69279_
                                      (fx+ _start69260_
                                           _i69269_
                                           (fx* _i69269_ _i69269_))))
                                 (fxmodulo _next-probe69279_ _size69254_)))
                              (__tmp69583 (fx+ _i69269_ '1))
                              (__tmp69582
                               (let ((_$e69282_ _deleted69271_))
                                 (if _$e69282_ _$e69282_ _probe69267_))))
                          (declare (not safe))
                          (_loop69264_ __tmp69584 __tmp69583 __tmp69582))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69243_ _k69274_))
                            (begin
                              (vector-set!
                               _table69248_
                               _probe69267_
                               _key69243_)
                              (vector-set!
                               _table69248_
                               (fx+ _probe69267_ '1)
                               (_prototype-table-update!69244_
                                (vector-ref
                                 _table69248_
                                 (fx+ _probe69267_ '1)))))
                            (let ((__tmp69581
                                   (let ((_next-probe69285_
                                          (fx+ _start69260_
                                               _i69269_
                                               (fx* _i69269_ _i69269_))))
                                     (fxmodulo _next-probe69285_ _size69254_)))
                                  (__tmp69580 (fx+ _i69269_ '1)))
                              (declare (not safe))
                              (_loop69264_
                               __tmp69581
                               __tmp69580
                               _deleted69271_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69201_ _key69203_)
        (let ((_table69206_
               (let () (declare (not safe)) (&raw-table-table _tab69201_)))
              (_seed69208_
               (let () (declare (not safe)) (&raw-table-seed _tab69201_))))
          (let* ((_h69211_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69203_))
                         _seed69208_))
                 (_size69214_ (vector-length _table69206_))
                 (_entries69217_ (fxquotient _size69214_ '2))
                 (_start69220_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69211_ _entries69217_)
                   '1)))
            (let _loop69224_ ((_probe69227_ _start69220_) (_i69229_ '1))
              (let ((_k69232_ (vector-ref _table69206_ _probe69227_)))
                (if (let ((__tmp69596 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69232_ __tmp69596))
                    '#!void
                    (if (let ((__tmp69595 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69232_ __tmp69595))
                        (let ((__tmp69594
                               (let ((_next-probe69235_
                                      (fx+ _start69220_
                                           _i69229_
                                           (fx* _i69229_ _i69229_))))
                                 (fxmodulo _next-probe69235_ _size69214_)))
                              (__tmp69593 (fx+ _i69229_ '1)))
                          (declare (not safe))
                          (_loop69224_ __tmp69594 __tmp69593))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69203_ _k69232_))
                            (begin
                              (vector-set!
                               _table69206_
                               _probe69227_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69206_
                               (fx+ _probe69227_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69592
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69201_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69201_
                                    __tmp69592)))))
                            (let ((__tmp69591
                                   (let ((_next-probe69239_
                                          (fx+ _start69220_
                                               _i69229_
                                               (fx* _i69229_ _i69229_))))
                                     (fxmodulo _next-probe69239_ _size69214_)))
                                  (__tmp69590 (fx+ _i69229_ '1)))
                              (declare (not safe))
                              (_loop69224_ __tmp69591 __tmp69590)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69193_)
        (let ((_super6919469196_
               (let () (declare (not safe)) (##type-super _klass69193_))))
          (if _super6919469196_
              (let ((_super69199_ _super6919469196_))
                (let ((__tmp69598
                       (let () (declare (not safe)) (##type-id _super69199_)))
                      (__tmp69597
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69598 __tmp69597)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69079_ _klass69080_ _obj-klass69081_)
        (let ((_method-table69083_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69081_))))
          (let _loop69086_ ((_rest69089_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69079_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69091_ '0)
                            (_methods69093_ '()))
            (let* ((_rest6909569103_ _rest69089_)
                   (_else6909769165_
                    (lambda ()
                      (let ((_prototype69111_
                             (let ((__obj69543
                                    (let ((__tmp69599
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69091_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69080_
                                       __tmp69599))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69543 '#f))
                               __obj69543)))
                        (let _loop69114_ ((_rest69116_ _methods69093_)
                                          (_off69117_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69091_ '1))))
                          (let* ((_rest6911969127_ _rest69116_)
                                 (_else6912169146_
                                  (lambda ()
                                    (let ((_prototype-key69135_
                                           (let ((__tmp69601
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69080_)))
                                                 (__tmp69600
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69081_))))
                                             (declare (not safe))
                                             (cons __tmp69601 __tmp69600))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69140_ ()
                                          (if (let ((__tmp69602
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69602 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69140_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69135_
                                         _prototype69111_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69144_)
                                         _prototype69144_)
                                       _prototype69111_))))
                                 (_K6912369153_
                                  (lambda (_rest69149_ _method69150_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69111_
                                       _method69150_
                                       _off69117_
                                       _klass69080_
                                       '#f))
                                    (let ((__tmp69603
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69117_ '1))))
                                      (declare (not safe))
                                      (_loop69114_ _rest69149_ __tmp69603)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6911969127_))
                                (let ((_hd6912469156_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6911969127_)))
                                      (_tl6912569158_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6911969127_))))
                                  (let* ((_method69161_ _hd6912469156_)
                                         (_rest69163_ _tl6912569158_))
                                    (declare (not safe))
                                    (_K6912369153_ _rest69163_ _method69161_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6912169146_))))))))
                   (_K6909969181_
                    (lambda (_rest69168_ _method-name69169_)
                      (let ((_$e69172_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69083_
                                _method-name69169_
                                '#f))))
                        (if _$e69172_
                            ((lambda (_method69175_)
                               (let ((__tmp69607
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69091_ '1)))
                                     (__tmp69606
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69175_ _methods69093_))))
                                 (declare (not safe))
                                 (_loop69086_
                                  _rest69168_
                                  __tmp69607
                                  __tmp69606)))
                             _$e69172_)
                            ((lambda (_klass69177_
                                      _obj-klass69178_
                                      _method-name69179_)
                               (let ((__tmp69605
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69177_)))
                                     (__tmp69604
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69178_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69177_
                                  'interface-id:
                                  __tmp69605
                                  'class:
                                  _obj-klass69178_
                                  'class-id:
                                  __tmp69604
                                  'method:
                                  _method-name69179_)))
                             _klass69080_
                             _obj-klass69081_
                             _method-name69169_))))))
              (if (let () (declare (not safe)) (##pair? _rest6909569103_))
                  (let ((_hd6910069184_
                         (let ()
                           (declare (not safe))
                           (##car _rest6909569103_)))
                        (_tl6910169186_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6909569103_))))
                    (let* ((_method-name69189_ _hd6910069184_)
                           (_rest69191_ _tl6910169186_))
                      (declare (not safe))
                      (_K6909969181_ _rest69191_ _method-name69189_)))
                  (let () (declare (not safe)) (_else6909769165_))))))))
    (define try-create-prototype
      (lambda (_descriptor68965_ _klass68966_ _obj-klass68967_)
        (let ((_method-table68969_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68967_))))
          (let _loop68972_ ((_rest68975_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68965_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count68977_ '0)
                            (_methods68979_ '()))
            (let* ((_rest6898168989_ _rest68975_)
                   (_else6898369051_
                    (lambda ()
                      (let ((_prototype68997_
                             (let ((__obj69544
                                    (let ((__tmp69608
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68977_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68966_
                                       __tmp69608))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69544 '#f))
                               __obj69544)))
                        (let _loop69000_ ((_rest69002_ _methods68979_)
                                          (_off69003_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68977_ '1))))
                          (let* ((_rest6900569013_ _rest69002_)
                                 (_else6900769032_
                                  (lambda ()
                                    (let ((_prototype-key69021_
                                           (let ((__tmp69610
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass68966_)))
                                                 (__tmp69609
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass68967_))))
                                             (declare (not safe))
                                             (cons __tmp69610 __tmp69609))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69026_ ()
                                          (if (let ((__tmp69611
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69611 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69026_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69021_
                                         _prototype68997_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69030_)
                                         _prototype69030_)
                                       _prototype68997_))))
                                 (_K6900969039_
                                  (lambda (_rest69035_ _method69036_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68997_
                                       _method69036_
                                       _off69003_
                                       _klass68966_
                                       '#f))
                                    (let ((__tmp69612
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69003_ '1))))
                                      (declare (not safe))
                                      (_loop69000_ _rest69035_ __tmp69612)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6900569013_))
                                (let ((_hd6901069042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6900569013_)))
                                      (_tl6901169044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6900569013_))))
                                  (let* ((_method69047_ _hd6901069042_)
                                         (_rest69049_ _tl6901169044_))
                                    (declare (not safe))
                                    (_K6900969039_ _rest69049_ _method69047_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6900769032_))))))))
                   (_K6898569067_
                    (lambda (_rest69054_ _method-name69055_)
                      (let ((_$e69058_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68969_
                                _method-name69055_
                                '#f))))
                        (if _$e69058_
                            ((lambda (_method69061_)
                               (let ((__tmp69614
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68977_ '1)))
                                     (__tmp69613
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69061_ _methods68979_))))
                                 (declare (not safe))
                                 (_loop68972_
                                  _rest69054_
                                  __tmp69614
                                  __tmp69613)))
                             _$e69058_)
                            ((lambda (_klass69063_
                                      _obj-klass69064_
                                      _method-name69065_)
                               '#f)
                             _klass68966_
                             _obj-klass68967_
                             _method-name69055_))))))
              (if (let () (declare (not safe)) (##pair? _rest6898168989_))
                  (let ((_hd6898669070_
                         (let ()
                           (declare (not safe))
                           (##car _rest6898168989_)))
                        (_tl6898769072_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6898168989_))))
                    (let* ((_method-name69075_ _hd6898669070_)
                           (_rest69077_ _tl6898769072_))
                      (declare (not safe))
                      (_K6898569067_ _rest69077_ _method-name69075_)))
                  (let () (declare (not safe)) (_else6898369051_))))))))
    (define cast
      (lambda (_descriptor68927_ _obj68929_)
        (declare (not interrupts-enabled))
        (let* ((_klass68933_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68927_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68936_
                (let () (declare (not safe)) (##type-id _klass68933_)))
               (_obj-klass68939_
                (let () (declare (not safe)) (class-of _obj68929_)))
               (_obj-klass-id68942_
                (let () (declare (not safe)) (##type-id _obj-klass68939_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68936_ _obj-klass-id68942_))
              _obj68929_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68939_))
                  (let ((__tmp69616
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68929_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor68927_ __tmp69616))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68948_ ()
                        (if (let ((__tmp69615
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69615 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68948_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68936_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68942_))
                    (let ((_prototype68958_
                           (let ((_$e68952_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68952_
                                 ((lambda (_prototype68955_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68955_)
                                  _$e68952_)
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
                                      _descriptor68927_
                                      _klass68933_
                                      _obj-klass68939_)))))))
                      ((lambda (_prototype68960_ _obj68961_)
                         (let ((_instance68963_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype68960_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance68963_
                              _obj68961_
                              '1
                              '#f
                              'cast))
                           _instance68963_))
                       _prototype68958_
                       _obj68929_))))))))
    (define try-cast
      (lambda (_descriptor68889_ _obj68891_)
        (declare (not interrupts-enabled))
        (let* ((_klass68895_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68889_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68898_
                (let () (declare (not safe)) (##type-id _klass68895_)))
               (_obj-klass68901_
                (let () (declare (not safe)) (class-of _obj68891_)))
               (_obj-klass-id68904_
                (let () (declare (not safe)) (##type-id _obj-klass68901_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68898_ _obj-klass-id68904_))
              _obj68891_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68901_))
                  (let ((__tmp69618
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68891_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor68889_ __tmp69618))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68910_ ()
                        (if (let ((__tmp69617
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69617 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68910_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68898_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68904_))
                    (let ((_prototype68920_
                           (let ((_$e68914_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68914_
                                 ((lambda (_prototype68917_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68917_)
                                  _$e68914_)
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
                                      _descriptor68889_
                                      _klass68895_
                                      _obj-klass68901_)))))))
                      ((lambda (_prototype68922_ _obj68923_)
                         (if _prototype68922_
                             (let ((_instance68925_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype68922_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance68925_
                                  _obj68923_
                                  '1
                                  '#f
                                  'cast))
                               _instance68925_)
                             '#f))
                       _prototype68920_
                       _obj68891_))))))))
    (define satisfies?
      (lambda (_descriptor68853_ _obj68855_)
        (declare (not interrupts-enabled))
        (let* ((_klass68859_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor68853_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id68862_
                (let () (declare (not safe)) (##type-id _klass68859_)))
               (_obj-klass68865_
                (let () (declare (not safe)) (class-of _obj68855_)))
               (_obj-klass-id68868_
                (let () (declare (not safe)) (##type-id _obj-klass68865_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68862_ _obj-klass-id68868_))
              _obj68855_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68865_))
                  (let ((__tmp69620
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj68855_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor68853_ __tmp69620))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68874_ ()
                        (if (let ((__tmp69619
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69619 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68874_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68862_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68868_))
                    (let ((_prototype68884_
                           (let ((_$e68878_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68878_
                                 ((lambda (_prototype68881_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68881_)
                                  _$e68878_)
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
                                      _descriptor68853_
                                      _klass68859_
                                      _obj-klass68865_)))))))
                      ((lambda (_prototype68886_ _obj68887_)
                         (if _prototype68886_ '#t '#f))
                       _prototype68884_
                       _obj68855_))))))))))
