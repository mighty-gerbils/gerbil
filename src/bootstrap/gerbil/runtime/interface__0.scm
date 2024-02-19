(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708337963)
  (begin
    (define CastError::t
      (let ((__tmp100527 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp100527
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args96534_ (apply make-instance CastError::t _$args96534_)))
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
      (lambda (_where96408_ _message96409_ . _irritants96410_)
        (raise (let ((__obj100523
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj100523
                  _message96409_
                  'where:
                  _where96408_
                  'irritants:
                  _irritants96410_)
                 __obj100523))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp100530 (list))
            (__tmp100528
             (let ((__tmp100529
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp100529 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp100530
         '(__object)
         __tmp100528
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
      (let ((__tmp100535 (list))
            (__tmp100531
             (let ((__tmp100534
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp100532
                    (let ((__tmp100533
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp100533 '()))))
               (declare (not safe))
               (cons __tmp100534 __tmp100532))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp100535
         '(type methods)
         __tmp100531
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args96405_
        (apply make-instance interface-descriptor::t _$args96405_)))
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
      (lambda (_key96403_)
        (let ((__tmp100537
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key96403_))))
              (__tmp100536
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key96403_)))))
          (declare (not safe))
          (##fxxor __tmp100537 __tmp100536))))
    (define __interface-test-key
      (lambda (_a96400_ _b96401_)
        (if (let ((__tmp100541 (let () (declare (not safe)) (##car _a96400_)))
                  (__tmp100540 (let () (declare (not safe)) (##car _b96401_))))
              (declare (not safe))
              (##eq? __tmp100541 __tmp100540))
            (let ((__tmp100539 (let () (declare (not safe)) (##cdr _a96400_)))
                  (__tmp100538 (let () (declare (not safe)) (##cdr _b96401_))))
              (declare (not safe))
              (##eq? __tmp100539 __tmp100538))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint96381_ _seed96383_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint96381_
           __interface-hash-key
           __interface-test-key
           _seed96383_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint96389_ '#f) (_seed96391_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint96389_ _seed96391_))))
    (define make-prototype-table__1
      (lambda (_size-hint96393_)
        (let ((_seed96395_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint96393_ _seed96395_))))
    (define make-prototype-table
      (lambda _g100543_
        (let ((_g100542_ (let () (declare (not safe)) (##length _g100543_))))
          (cond ((let () (declare (not safe)) (##fx= _g100542_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g100543_))
                ((let () (declare (not safe)) (##fx= _g100542_ 1))
                 (apply (lambda (_size-hint96393_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint96393_)))
                        _g100543_))
                ((let () (declare (not safe)) (##fx= _g100542_ 2))
                 (apply (lambda (_size-hint96397_ _seed96398_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint96397_
                             _seed96398_)))
                        _g100543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g100543_))))))
    (define prototype-table-ref
      (lambda (_tab96338_ _key96339_ _default96340_)
        (let ((_table96342_
               (let () (declare (not safe)) (&raw-table-table _tab96338_)))
              (_seed96343_
               (let () (declare (not safe)) (&raw-table-seed _tab96338_))))
          (let* ((_h96345_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96339_))
                         _seed96343_))
                 (_size96348_ (vector-length _table96342_))
                 (_entries96351_ (fxquotient _size96348_ '2))
                 (_start96354_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96345_ _entries96351_)
                   '1)))
            (let _loop96358_ ((_probe96361_ _start96354_)
                              (_i96363_ '1)
                              (_deleted96365_ '#f))
              (let ((_k96368_ (vector-ref _table96342_ _probe96361_)))
                (if (let ((__tmp100550 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96368_ __tmp100550))
                    _default96340_
                    (if (let ((__tmp100549 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96368_ __tmp100549))
                        (let ((__tmp100548
                               (let ((_next-probe96371_
                                      (fx+ _start96354_
                                           _i96363_
                                           (fx* _i96363_ _i96363_))))
                                 (fxmodulo _next-probe96371_ _size96348_)))
                              (__tmp100547 (fx+ _i96363_ '1))
                              (__tmp100546
                               (let ((_$e96374_ _deleted96365_))
                                 (if _$e96374_ _$e96374_ _probe96361_))))
                          (declare (not safe))
                          (_loop96358_ __tmp100548 __tmp100547 __tmp100546))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96339_ _k96368_))
                            (vector-ref _table96342_ (fx+ _probe96361_ '1))
                            (let ((__tmp100545
                                   (let ((_next-probe96377_
                                          (fx+ _start96354_
                                               _i96363_
                                               (fx* _i96363_ _i96363_))))
                                     (fxmodulo _next-probe96377_ _size96348_)))
                                  (__tmp100544 (fx+ _i96363_ '1)))
                              (declare (not safe))
                              (_loop96358_
                               __tmp100545
                               __tmp100544
                               _deleted96365_)))))))))))
    (define prototype-table-set!
      (lambda (_tab96334_ _key96335_ _value96336_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab96334_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab96334_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab96334_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab96334_ _key96335_ _value96336_))))
    (define __prototype-table-set!
      (lambda (_tab96289_ _key96290_ _value96291_)
        (let ((_table96294_
               (let () (declare (not safe)) (&raw-table-table _tab96289_)))
              (_seed96295_
               (let () (declare (not safe)) (&raw-table-seed _tab96289_))))
          (let* ((_h96297_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96290_))
                         _seed96295_))
                 (_size96300_ (vector-length _table96294_))
                 (_entries96303_ (fxquotient _size96300_ '2))
                 (_start96306_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96297_ _entries96303_)
                   '1)))
            (let _loop96310_ ((_probe96313_ _start96306_)
                              (_i96315_ '1)
                              (_deleted96317_ '#f))
              (let ((_k96320_ (vector-ref _table96294_ _probe96313_)))
                (if (let ((__tmp100560 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96320_ __tmp100560))
                    (if _deleted96317_
                        (begin
                          (vector-set! _table96294_ _deleted96317_ _key96290_)
                          (vector-set!
                           _table96294_
                           (fx+ _deleted96317_ '1)
                           _value96291_)
                          ((lambda ()
                             (let ((__tmp100559
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96289_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96289_
                                __tmp100559)))))
                        (begin
                          (vector-set! _table96294_ _probe96313_ _key96290_)
                          (vector-set!
                           _table96294_
                           (fx+ _probe96313_ '1)
                           _value96291_)
                          ((lambda ()
                             (let ((__tmp100557
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96289_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96289_ __tmp100557))
                             (let ((__tmp100558
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96289_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96289_
                                __tmp100558))))))
                    (if (let ((__tmp100556 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96320_ __tmp100556))
                        (let ((__tmp100555
                               (let ((_next-probe96325_
                                      (fx+ _start96306_
                                           _i96315_
                                           (fx* _i96315_ _i96315_))))
                                 (fxmodulo _next-probe96325_ _size96300_)))
                              (__tmp100554 (fx+ _i96315_ '1))
                              (__tmp100553
                               (let ((_$e96328_ _deleted96317_))
                                 (if _$e96328_ _$e96328_ _probe96313_))))
                          (declare (not safe))
                          (_loop96310_ __tmp100555 __tmp100554 __tmp100553))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96290_ _k96320_))
                            (begin
                              (vector-set!
                               _table96294_
                               _probe96313_
                               _key96290_)
                              (vector-set!
                               _table96294_
                               (fx+ _probe96313_ '1)
                               _value96291_))
                            (let ((__tmp100552
                                   (let ((_next-probe96331_
                                          (fx+ _start96306_
                                               _i96315_
                                               (fx* _i96315_ _i96315_))))
                                     (fxmodulo _next-probe96331_ _size96300_)))
                                  (__tmp100551 (fx+ _i96315_ '1)))
                              (declare (not safe))
                              (_loop96310_
                               __tmp100552
                               __tmp100551
                               _deleted96317_)))))))))))
    (define prototype-table-update!
      (lambda (_tab96284_
               _key96285_
               _prototype-table-update!96286_
               _default96287_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab96284_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab96284_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab96284_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab96284_
           _key96285_
           _prototype-table-update!96286_
           _default96287_))))
    (define __prototype-table-update!
      (lambda (_tab96238_
               _key96239_
               _prototype-table-update!96240_
               _default96241_)
        (let ((_table96244_
               (let () (declare (not safe)) (&raw-table-table _tab96238_)))
              (_seed96245_
               (let () (declare (not safe)) (&raw-table-seed _tab96238_))))
          (let* ((_h96247_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96239_))
                         _seed96245_))
                 (_size96250_ (vector-length _table96244_))
                 (_entries96253_ (fxquotient _size96250_ '2))
                 (_start96256_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96247_ _entries96253_)
                   '1)))
            (let _loop96260_ ((_probe96263_ _start96256_)
                              (_i96265_ '1)
                              (_deleted96267_ '#f))
              (let ((_k96270_ (vector-ref _table96244_ _probe96263_)))
                (if (let ((__tmp100570 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96270_ __tmp100570))
                    (if _deleted96267_
                        (begin
                          (vector-set! _table96244_ _deleted96267_ _key96239_)
                          (vector-set!
                           _table96244_
                           (fx+ _deleted96267_ '1)
                           (_prototype-table-update!96240_ _default96241_))
                          ((lambda ()
                             (let ((__tmp100569
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96238_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96238_
                                __tmp100569)))))
                        (begin
                          (vector-set! _table96244_ _probe96263_ _key96239_)
                          (vector-set!
                           _table96244_
                           (fx+ _probe96263_ '1)
                           (_prototype-table-update!96240_ _default96241_))
                          ((lambda ()
                             (let ((__tmp100567
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96238_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96238_ __tmp100567))
                             (let ((__tmp100568
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96238_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96238_
                                __tmp100568))))))
                    (if (let ((__tmp100566 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96270_ __tmp100566))
                        (let ((__tmp100565
                               (let ((_next-probe96275_
                                      (fx+ _start96256_
                                           _i96265_
                                           (fx* _i96265_ _i96265_))))
                                 (fxmodulo _next-probe96275_ _size96250_)))
                              (__tmp100564 (fx+ _i96265_ '1))
                              (__tmp100563
                               (let ((_$e96278_ _deleted96267_))
                                 (if _$e96278_ _$e96278_ _probe96263_))))
                          (declare (not safe))
                          (_loop96260_ __tmp100565 __tmp100564 __tmp100563))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96239_ _k96270_))
                            (begin
                              (vector-set!
                               _table96244_
                               _probe96263_
                               _key96239_)
                              (vector-set!
                               _table96244_
                               (fx+ _probe96263_ '1)
                               (_prototype-table-update!96240_
                                (vector-ref
                                 _table96244_
                                 (fx+ _probe96263_ '1)))))
                            (let ((__tmp100562
                                   (let ((_next-probe96281_
                                          (fx+ _start96256_
                                               _i96265_
                                               (fx* _i96265_ _i96265_))))
                                     (fxmodulo _next-probe96281_ _size96250_)))
                                  (__tmp100561 (fx+ _i96265_ '1)))
                              (declare (not safe))
                              (_loop96260_
                               __tmp100562
                               __tmp100561
                               _deleted96267_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96197_ _key96199_)
        (let ((_table96202_
               (let () (declare (not safe)) (&raw-table-table _tab96197_)))
              (_seed96204_
               (let () (declare (not safe)) (&raw-table-seed _tab96197_))))
          (let* ((_h96207_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96199_))
                         _seed96204_))
                 (_size96210_ (vector-length _table96202_))
                 (_entries96213_ (fxquotient _size96210_ '2))
                 (_start96216_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96207_ _entries96213_)
                   '1)))
            (let _loop96220_ ((_probe96223_ _start96216_) (_i96225_ '1))
              (let ((_k96228_ (vector-ref _table96202_ _probe96223_)))
                (if (let ((__tmp100577 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96228_ __tmp100577))
                    '#!void
                    (if (let ((__tmp100576 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96228_ __tmp100576))
                        (let ((__tmp100575
                               (let ((_next-probe96231_
                                      (fx+ _start96216_
                                           _i96225_
                                           (fx* _i96225_ _i96225_))))
                                 (fxmodulo _next-probe96231_ _size96210_)))
                              (__tmp100574 (fx+ _i96225_ '1)))
                          (declare (not safe))
                          (_loop96220_ __tmp100575 __tmp100574))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96199_ _k96228_))
                            (begin
                              (vector-set!
                               _table96202_
                               _probe96223_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96202_
                               (fx+ _probe96223_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100573
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96197_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96197_
                                    __tmp100573)))))
                            (let ((__tmp100572
                                   (let ((_next-probe96235_
                                          (fx+ _start96216_
                                               _i96225_
                                               (fx* _i96225_ _i96225_))))
                                     (fxmodulo _next-probe96235_ _size96210_)))
                                  (__tmp100571 (fx+ _i96225_ '1)))
                              (declare (not safe))
                              (_loop96220_ __tmp100572 __tmp100571)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96189_)
        (let ((_super9619096192_
               (let () (declare (not safe)) (##type-super _klass96189_))))
          (if _super9619096192_
              (let ((_super96195_ _super9619096192_))
                (let ((__tmp100579
                       (let () (declare (not safe)) (##type-id _super96195_)))
                      (__tmp100578
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp100579 __tmp100578)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor96085_ _klass96086_ _obj-klass96087_)
        (let _loop96089_ ((_rest96092_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96085_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96094_ '0)
                          (_methods96096_ '()))
          (let* ((_rest9609896106_ _rest96092_)
                 (_else9610096162_
                  (lambda ()
                    (let ((_prototype96114_
                           (let ((__obj100525
                                  (let ((__tmp100580
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96094_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96086_
                                     __tmp100580))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj100525 '#f))
                             __obj100525)))
                      (let _loop96117_ ((_rest96119_ _methods96096_)
                                        (_off96120_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96094_ '1))))
                        (let* ((_rest9612296130_ _rest96119_)
                               (_else9612496143_
                                (lambda ()
                                  (let ((_prototype-key96138_
                                         (let ((__tmp100582
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96086_)))
                                               (__tmp100581
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96087_))))
                                           (declare (not safe))
                                           (cons __tmp100582 __tmp100581))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96138_
                                       _prototype96114_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96141_)
                                       _prototype96141_)
                                     _prototype96114_))))
                               (_K9612696150_
                                (lambda (_rest96146_ _method96147_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96114_
                                     _method96147_
                                     _off96120_
                                     _klass96086_
                                     '#f))
                                  (let ((__tmp100583
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96120_ '1))))
                                    (declare (not safe))
                                    (_loop96117_ _rest96146_ __tmp100583)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9612296130_))
                              (let ((_hd9612796153_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9612296130_)))
                                    (_tl9612896155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9612296130_))))
                                (let* ((_method96158_ _hd9612796153_)
                                       (_rest96160_ _tl9612896155_))
                                  (declare (not safe))
                                  (_K9612696150_ _rest96160_ _method96158_)))
                              (let ()
                                (declare (not safe))
                                (_else9612496143_))))))))
                 (_K9610296177_
                  (lambda (_rest96165_ _method-name96166_)
                    (let ((_$e96169_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96087_
                              '#f
                              _method-name96166_))))
                      (if _$e96169_
                          ((lambda (_method96172_)
                             (let ((__tmp100585
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96094_ '1)))
                                   (__tmp100584
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96172_ _methods96096_))))
                               (declare (not safe))
                               (_loop96089_
                                _rest96165_
                                __tmp100585
                                __tmp100584)))
                           _$e96169_)
                          ((lambda (_klass96174_ _method-name96175_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96174_
                                'method:
                                _method-name96175_)))
                           _klass96086_
                           _method-name96166_))))))
            (if (let () (declare (not safe)) (##pair? _rest9609896106_))
                (let ((_hd9610396180_
                       (let () (declare (not safe)) (##car _rest9609896106_)))
                      (_tl9610496182_
                       (let () (declare (not safe)) (##cdr _rest9609896106_))))
                  (let* ((_method-name96185_ _hd9610396180_)
                         (_rest96187_ _tl9610496182_))
                    (declare (not safe))
                    (_K9610296177_ _rest96187_ _method-name96185_)))
                (let () (declare (not safe)) (_else9610096162_)))))))
    (define try-create-prototype
      (lambda (_descriptor95981_ _klass95982_ _obj-klass95983_)
        (let _loop95985_ ((_rest95988_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor95981_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count95990_ '0)
                          (_methods95992_ '()))
          (let* ((_rest9599496002_ _rest95988_)
                 (_else9599696058_
                  (lambda ()
                    (let ((_prototype96010_
                           (let ((__obj100526
                                  (let ((__tmp100586
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95990_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass95982_
                                     __tmp100586))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj100526 '#f))
                             __obj100526)))
                      (let _loop96013_ ((_rest96015_ _methods95992_)
                                        (_off96016_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95990_ '1))))
                        (let* ((_rest9601896026_ _rest96015_)
                               (_else9602096039_
                                (lambda ()
                                  (let ((_prototype-key96034_
                                         (let ((__tmp100588
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass95982_)))
                                               (__tmp100587
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass95983_))))
                                           (declare (not safe))
                                           (cons __tmp100588 __tmp100587))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96034_
                                       _prototype96010_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96037_)
                                       _prototype96037_)
                                     _prototype96010_))))
                               (_K9602296046_
                                (lambda (_rest96042_ _method96043_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96010_
                                     _method96043_
                                     _off96016_
                                     _klass95982_
                                     '#f))
                                  (let ((__tmp100589
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96016_ '1))))
                                    (declare (not safe))
                                    (_loop96013_ _rest96042_ __tmp100589)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9601896026_))
                              (let ((_hd9602396049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9601896026_)))
                                    (_tl9602496051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9601896026_))))
                                (let* ((_method96054_ _hd9602396049_)
                                       (_rest96056_ _tl9602496051_))
                                  (declare (not safe))
                                  (_K9602296046_ _rest96056_ _method96054_)))
                              (let ()
                                (declare (not safe))
                                (_else9602096039_))))))))
                 (_K9599896073_
                  (lambda (_rest96061_ _method-name96062_)
                    (let ((_$e96065_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass95983_
                              '#f
                              _method-name96062_))))
                      (if _$e96065_
                          ((lambda (_method96068_)
                             (let ((__tmp100591
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count95990_ '1)))
                                   (__tmp100590
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96068_ _methods95992_))))
                               (declare (not safe))
                               (_loop95985_
                                _rest96061_
                                __tmp100591
                                __tmp100590)))
                           _$e96065_)
                          ((lambda (_klass96070_ _method-name96071_) '#f)
                           _klass95982_
                           _method-name96062_))))))
            (if (let () (declare (not safe)) (##pair? _rest9599496002_))
                (let ((_hd9599996076_
                       (let () (declare (not safe)) (##car _rest9599496002_)))
                      (_tl9600096078_
                       (let () (declare (not safe)) (##cdr _rest9599496002_))))
                  (let* ((_method-name96081_ _hd9599996076_)
                         (_rest96083_ _tl9600096078_))
                    (declare (not safe))
                    (_K9599896073_ _rest96083_ _method-name96081_)))
                (let () (declare (not safe)) (_else9599696058_)))))))
    (define cast
      (lambda (_descriptor95946_ _obj95948_)
        (if (let () (declare (not safe)) (##structure? _obj95948_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95953_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95946_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95956_
                      (let () (declare (not safe)) (##type-id _klass95953_)))
                     (_obj-klass95959_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95948_)))
                     (_obj-klass-id95962_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95959_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95956_ _obj-klass-id95962_))
                    _obj95948_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95959_))
                        (let ((__tmp100592
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95948_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor95946_ __tmp100592))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95956_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95962_))
                          (let ((_prototype95972_
                                 (let ((_$e95966_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95966_
                                       ((lambda (_prototype95969_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95969_)
                                        _$e95966_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor95946_
                                            _klass95953_
                                            _obj-klass95959_)))))))
                            ((lambda (_prototype95974_ _obj95975_)
                               (let ((_instance95977_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype95974_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance95977_
                                    _obj95975_
                                    '1
                                    '#f
                                    'cast))
                                 _instance95977_))
                             _prototype95972_
                             _obj95948_)))))))
            ((lambda (_obj95979_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj95979_)))
             _obj95948_))))
    (define try-cast
      (lambda (_descriptor95911_ _obj95913_)
        (if (let () (declare (not safe)) (##structure? _obj95913_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95911_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95921_
                      (let () (declare (not safe)) (##type-id _klass95918_)))
                     (_obj-klass95924_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95913_)))
                     (_obj-klass-id95927_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95924_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95921_ _obj-klass-id95927_))
                    _obj95913_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95924_))
                        (let ((__tmp100593
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95913_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor95911_ __tmp100593))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95921_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95927_))
                          (let ((_prototype95937_
                                 (let ((_$e95931_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95931_
                                       ((lambda (_prototype95934_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95934_)
                                        _$e95931_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor95911_
                                            _klass95918_
                                            _obj-klass95924_)))))))
                            ((lambda (_prototype95939_ _obj95940_)
                               (if _prototype95939_
                                   (let ((_instance95942_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype95939_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance95942_
                                        _obj95940_
                                        '1
                                        '#f
                                        'cast))
                                     _instance95942_)
                                   '#f))
                             _prototype95937_
                             _obj95913_)))))))
            ((lambda (_obj95944_) '#f) _obj95913_))))
    (define satisfies?
      (lambda (_descriptor95878_ _obj95880_)
        (if (let () (declare (not safe)) (##structure? _obj95880_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95885_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95878_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95888_
                      (let () (declare (not safe)) (##type-id _klass95885_)))
                     (_obj-klass95891_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95880_)))
                     (_obj-klass-id95894_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95891_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95888_ _obj-klass-id95894_))
                    _obj95880_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95891_))
                        (let ((__tmp100594
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95880_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor95878_ __tmp100594))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95888_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95894_))
                          (let ((_prototype95904_
                                 (let ((_$e95898_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95898_
                                       ((lambda (_prototype95901_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95901_)
                                        _$e95898_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor95878_
                                            _klass95885_
                                            _obj-klass95891_)))))))
                            ((lambda (_prototype95906_ _obj95907_)
                               (if _prototype95906_ '#t '#f))
                             _prototype95904_
                             _obj95880_)))))))
            ((lambda (_obj95909_) '#f) _obj95880_))))))
