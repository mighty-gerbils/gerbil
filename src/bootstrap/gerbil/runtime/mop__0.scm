(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1706585167)
  (begin
    (define type-id
      (lambda (_klass10615_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10615_))
            (let () (declare (not safe)) (##type-id _klass10615_))
            (if (let () (declare (not safe)) (not _klass10615_))
                '#f
                (error '"Not a class or #f" _klass10615_)))))
    (define type=?
      (lambda (_x10612_ _y10613_)
        (let ((__tmp10640 (let () (declare (not safe)) (type-id _x10612_)))
              (__tmp10639 (let () (declare (not safe)) (type-id _y10613_))))
          (declare (not safe))
          (eq? __tmp10640 __tmp10639))))
    (define type-descriptor?
      (lambda (_klass10610_)
        (if (let () (declare (not safe)) (##type? _klass10610_))
            (let ((__tmp10641
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10610_))))
              (declare (not safe))
              (eq? __tmp10641 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass10608_)
        (let ((__tmp10642
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass10608_))))
          (declare (not safe))
          (assgetq 'struct: __tmp10642))))
    (define type-final?
      (lambda (_klass10606_)
        (let ((__tmp10643
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass10606_))))
          (declare (not safe))
          (assgetq 'final: __tmp10643))))
    (define struct-type?
      (lambda (_klass10604_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10604_))
            (let () (declare (not safe)) (type-struct? _klass10604_))
            '#f)))
    (define class-type?
      (lambda (_klass10602_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10602_))
            (let ((__tmp10644
                   (let () (declare (not safe)) (type-struct? _klass10602_))))
              (declare (not safe))
              (not __tmp10644))
            '#f)))
    (define properties-form
      (lambda (_properties10568_)
        (map (lambda (_e1056910571_)
               (let* ((_g1057310580_ _e1056910571_)
                      (_E1057510584_
                       (lambda () (error '"No clause matching" _g1057310580_)))
                      (_K1057610590_
                       (lambda (_val10587_ _key10588_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key10588_ 'direct-supers:))
                             (let ((__tmp10645 (map type-id _val10587_)))
                               (declare (not safe))
                               (cons _key10588_ __tmp10645))
                             (let ()
                               (declare (not safe))
                               (cons _key10588_ _val10587_))))))
                 (if (let () (declare (not safe)) (##pair? _g1057310580_))
                     (let ((_hd1057710593_
                            (let ()
                              (declare (not safe))
                              (##car _g1057310580_)))
                           (_tl1057810595_
                            (let ()
                              (declare (not safe))
                              (##cdr _g1057310580_))))
                       (let* ((_key10598_ _hd1057710593_)
                              (_val10600_ _tl1057810595_))
                         (declare (not safe))
                         (_K1057610590_ _val10600_ _key10598_)))
                     (let () (declare (not safe)) (_E1057510584_)))))
             _properties10568_)))
    (define make-type-descriptor
      (lambda (_type-id10558_
               _type-name10559_
               _type-super10560_
               _rtd-mixin10561_
               _rtd-fields10562_
               _rtd-plist10563_
               _rtd-ctor10564_
               _rtd-slots10565_
               _rtd-methods10566_)
        (let ()
          (declare (not safe))
          (make-type-descriptor*
           _type-id10558_
           _type-name10559_
           _type-super10560_
           _rtd-mixin10561_
           _rtd-fields10562_
           _rtd-plist10563_
           _rtd-ctor10564_
           _rtd-slots10565_
           _rtd-methods10566_))))
    (define make-type-descriptor*
      (lambda (_type-id10471_
               _type-name10472_
               _type-super10473_
               _precedence-list10474_
               _all-slots10475_
               _properties10476_
               _constructor10477_
               _slot-table10478_
               _methods10479_)
        (letrec ((_make-props!10481_
                  (lambda (_key10527_)
                    (letrec* ((_ht10529_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!10530_
                               (lambda (_ht10551_ _slots10552_)
                                 (for-each
                                  (lambda (_g1055310555_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht10551_
                                       _g1055310555_
                                       '#t)))
                                  _slots10552_)))
                              (_put-alist!10531_
                               (lambda (_ht10540_ _key10541_ _alist10542_)
                                 (let ((_$e10544_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key10541_ _alist10542_))))
                                   (if _$e10544_
                                       ((lambda (_g1054610548_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!10530_
                                             _ht10540_
                                             _g1054610548_)))
                                        _$e10544_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!10531_
                         _ht10529_
                         _key10527_
                         _properties10476_))
                      (for-each
                       (lambda (_mixin10533_)
                         (let ((_alist10535_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin10533_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist10535_))
                                   (let ((__tmp10647
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key10527_
                                                     _alist10535_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp10647)))
                               (let ((__tmp10646
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin10533_))))))
                                 (declare (not safe))
                                 (_put-slots!10530_ _ht10529_ __tmp10646))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!10531_
                                  _ht10529_
                                  _key10527_
                                  _alist10535_)))))
                       _precedence-list10474_)
                      _ht10529_))))
          (let* ((_transparent?10483_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties10476_)))
                 (_all-slots-printable?10488_
                  (let ((_$e10485_ _transparent?10483_))
                    (if _$e10485_
                        _$e10485_
                        (let ((__tmp10648
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties10476_))))
                          (declare (not safe))
                          (eq? '#t __tmp10648)))))
                 (_printable10490_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?10488_))
                      (let ()
                        (declare (not safe))
                        (_make-props!10481_ 'print:))
                      '#f))
                 (_all-slots-equalable?10495_
                  (let ((_$e10492_ _transparent?10483_))
                    (if _$e10492_
                        _$e10492_
                        (let ((__tmp10649
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties10476_))))
                          (declare (not safe))
                          (eq? '#t __tmp10649)))))
                 (_equalable10497_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?10495_))
                      (let ()
                        (declare (not safe))
                        (_make-props!10481_ 'equal:))
                      '#f))
                 (_first-new-field10499_
                  (if _type-super10473_
                      (let ((__tmp10650
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super10473_))))
                        (declare (not safe))
                        (##vector-length __tmp10650))
                      '1))
                 (_field-info-length10501_
                  (let ((__tmp10651
                         (let ((__tmp10652
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots10475_))))
                           (declare (not safe))
                           (##fx- __tmp10652 _first-new-field10499_))))
                    (declare (not safe))
                    (##fx* '3 __tmp10651)))
                 (_field-info10503_ (make-vector _field-info-length10501_ '#f))
                 (_opaque?10508_
                  (let ((_$e10505_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?10495_))))
                    (if _$e10505_
                        _$e10505_
                        (if _type-super10473_
                            (let ((__tmp10653
                                   (let ((__tmp10654
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super10473_))))
                                     (declare (not safe))
                                     (##fxand __tmp10654 '1))))
                              (declare (not safe))
                              (##fx= __tmp10653 '1))
                            '#f)))))
            (let _loop10511_ ((_i10513_ _first-new-field10499_) (_j10514_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j10514_ _field-info-length10501_))
                  (let* ((_slot10516_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots10475_ _i10513_)))
                         (_flags10524_
                          (if _transparent?10483_
                              '0
                              (let ((__tmp10656
                                     (if (or _all-slots-printable?10488_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable10490_
                                                _slot10516_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp10655
                                     (if (or _all-slots-equalable?10495_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable10497_
                                                _slot10516_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp10656 __tmp10655)))))
                    (vector-set! _field-info10503_ _j10514_ _slot10516_)
                    (vector-set!
                     _field-info10503_
                     (let () (declare (not safe)) (##fx+ _j10514_ '1))
                     _flags10524_)
                    (let ((__tmp10658
                           (let () (declare (not safe)) (##fx+ _i10513_ '1)))
                          (__tmp10657
                           (let () (declare (not safe)) (##fx+ _j10514_ '3))))
                      (declare (not safe))
                      (_loop10511_ __tmp10658 __tmp10657)))
                  '#!void))
            (let ((__tmp10659 (if _opaque?10508_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10471_
               _type-name10472_
               __tmp10659
               _type-super10473_
               _field-info10503_
               _precedence-list10474_
               _all-slots10475_
               _slot-table10478_
               _properties10476_
               _constructor10477_
               _methods10479_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass10469_)
        (let () (declare (not safe)) (##vector-ref _klass10469_ '6))))
    (define type-descriptor-all-slots
      (lambda (_klass10467_)
        (let () (declare (not safe)) (##vector-ref _klass10467_ '7))))
    (define type-descriptor-slot-table
      (lambda (_klass10465_)
        (let () (declare (not safe)) (##vector-ref _klass10465_ '8))))
    (define type-descriptor-properties
      (lambda (_klass10463_)
        (let () (declare (not safe)) (##vector-ref _klass10463_ '9))))
    (define type-descriptor-constructor
      (lambda (_klass10461_)
        (let () (declare (not safe)) (##vector-ref _klass10461_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10459_)
        (let () (declare (not safe)) (##vector-ref _klass10459_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10456_ _ht10457_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10456_ '11 _ht10457_))))
    (define type-descriptor-mixin type-descriptor-precedence-list)
    (define type-descriptor-plist type-descriptor-properties)
    (define type-descriptor-ctor type-descriptor-constructor)
    (define type-descriptor-fields
      (lambda (_klass10454_)
        (let ((__tmp10660
               (let ((__tmp10661
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass10454_))))
                 (declare (not safe))
                 (##vector-length __tmp10661))))
          (declare (not safe))
          (##fx- __tmp10660 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass10452_)
        (let ((__tmp10662
               (let () (declare (not safe)) (##type-flags _klass10452_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10662))))
    (define type-descriptor-seal!
      (lambda (_klass10450_)
        (let ((__tmp10663
               (let ((__tmp10665
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10664
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10450_))))
                 (declare (not safe))
                 (##fxior __tmp10665 __tmp10664))))
          (declare (not safe))
          (##vector-set! _klass10450_ '3 __tmp10663))))
    (define make-struct-type__%
      (lambda (_id10415_
               _super10416_
               _n-direct-slots10417_
               _name10418_
               _properties10419_
               _constructor10420_
               _direct-slots10421_)
        (let ((__tmp10666
               (let ((_$e10423_ _direct-slots10421_))
                 (if _$e10423_
                     _$e10423_
                     (map (lambda (_g1042510427_)
                            (let ()
                              (declare (not safe))
                              (make-symbol__1 '"_" _g1042510427_)))
                          (let ((__tmp10667
                                 (if _super10416_
                                     (let ((__tmp10668
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _super10416_))))
                                       (declare (not safe))
                                       (##vector-length __tmp10668))
                                     '1)))
                            (declare (not safe))
                            (iota _n-direct-slots10417_ __tmp10667)))))))
          (declare (not safe))
          (make-struct-type*
           _id10415_
           _name10418_
           _super10416_
           __tmp10666
           _properties10419_
           _constructor10420_))))
    (define make-struct-type__0
      (lambda (_id10433_
               _super10434_
               _n-direct-slots10435_
               _name10436_
               _properties10437_
               _constructor10438_)
        (let ((_direct-slots10440_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10433_
           _super10434_
           _n-direct-slots10435_
           _name10436_
           _properties10437_
           _constructor10438_
           _direct-slots10440_))))
    (define make-struct-type
      (lambda _g10670_
        (let ((_g10669_ (let () (declare (not safe)) (##length _g10670_))))
          (cond ((let () (declare (not safe)) (##fx= _g10669_ 6))
                 (apply (lambda (_id10433_
                                 _super10434_
                                 _n-direct-slots10435_
                                 _name10436_
                                 _properties10437_
                                 _constructor10438_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10433_
                             _super10434_
                             _n-direct-slots10435_
                             _name10436_
                             _properties10437_
                             _constructor10438_)))
                        _g10670_))
                ((let () (declare (not safe)) (##fx= _g10669_ 7))
                 (apply (lambda (_id10442_
                                 _super10443_
                                 _n-direct-slots10444_
                                 _name10445_
                                 _properties10446_
                                 _constructor10447_
                                 _direct-slots10448_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10442_
                             _super10443_
                             _n-direct-slots10444_
                             _name10445_
                             _properties10446_
                             _constructor10447_
                             _direct-slots10448_)))
                        _g10670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10670_))))))
    (define make-struct-type*
      (lambda (_id10395_
               _name10396_
               _super10397_
               _direct-slots10398_
               _properties10399_
               _constructor10400_)
        (if (and _super10397_
                 (let ((__tmp10671
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10397_))))
                   (declare (not safe))
                   (not __tmp10671)))
            (error '"Illegal super type; not a struct-type" _super10397_)
            '#!void)
        (let* ((_type10402_
                (let ((__tmp10674
                       (if _super10397_
                           (let ()
                             (declare (not safe))
                             (cons _super10397_ '()))
                           '()))
                      (__tmp10672
                       (let ((__tmp10673
                              (let ()
                                (declare (not safe))
                                (cons 'struct: '#t))))
                         (declare (not safe))
                         (cons __tmp10673 _properties10399_))))
                  (declare (not safe))
                  (make-class-type*
                   _id10395_
                   _name10396_
                   __tmp10674
                   _direct-slots10398_
                   __tmp10672
                   _constructor10400_)))
               (_all-slots10404_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type10402_)))
               (_len10406_ (length _direct-slots10398_))
               (_start10408_
                (let ((__tmp10675
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots10404_))))
                  (declare (not safe))
                  (##fx- __tmp10675 _len10406_))))
          (if (let ((__tmp10677
                     (lambda (_slot10411_ _i10412_)
                       (let ((__tmp10678
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots10404_ _i10412_))))
                         (declare (not safe))
                         (eq? _slot10411_ __tmp10678))))
                    (__tmp10676
                     (let ()
                       (declare (not safe))
                       (iota _len10406_ _start10408_))))
                (declare (not safe))
                (andmap2 __tmp10677 _direct-slots10398_ __tmp10676))
              '#!void
              (error '"Non-unique slots in struct"
                     _name10396_
                     _direct-slots10398_))
          _type10402_)))
    (define make-struct-predicate
      (lambda (_klass10387_)
        (let ((_tid10389_
               (let () (declare (not safe)) (##type-id _klass10387_))))
          (if (let () (declare (not safe)) (type-final? _klass10387_))
              (lambda (_obj10391_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10391_ _tid10389_)))
              (lambda (_obj10393_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10393_ _tid10389_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10384_ _field10385_)
        (let ((__tmp10679
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10384_ _field10385_))))
          (declare (not safe))
          (make-struct-field-accessor* _klass10384_ __tmp10679))))
    (define make-struct-field-accessor*
      (lambda (_klass10379_ _field10380_)
        (lambda (_obj10382_)
          (let ()
            (declare (not safe))
            (##structure-ref _obj10382_ _field10380_ _klass10379_ '#f)))))
    (define make-struct-field-mutator
      (lambda (_klass10376_ _field10377_)
        (let ((__tmp10680
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10376_ _field10377_))))
          (declare (not safe))
          (make-struct-field-mutator* _klass10376_ __tmp10680))))
    (define make-struct-field-mutator*
      (lambda (_klass10370_ _field10371_)
        (lambda (_obj10373_ _val10374_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj10373_
             _val10374_
             _field10371_
             _klass10370_
             '#f)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10367_ _field10368_)
        (let ((__tmp10681
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10367_ _field10368_))))
          (declare (not safe))
          (make-struct-field-unchecked-accessor* _klass10367_ __tmp10681))))
    (define make-struct-field-unchecked-accessor*
      (lambda (_klass10362_ _field10363_)
        (lambda (_obj10365_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj10365_
             _field10363_
             _klass10362_
             '#f)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10359_ _field10360_)
        (let ((__tmp10682
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10359_ _field10360_))))
          (declare (not safe))
          (make-struct-field-unchecked-mutator* _klass10359_ __tmp10682))))
    (define make-struct-field-unchecked-mutator*
      (lambda (_klass10353_ _field10354_)
        (lambda (_obj10356_ _val10357_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj10356_
             _val10357_
             _field10354_
             _klass10353_
             '#f)))))
    (define struct-field-offset*
      (lambda (_klass10348_ _field10349_)
        (let ((__tmp10683
               (let ((_super10351_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10348_))))
                 (if _super10351_
                     (let ((__tmp10684
                            (let ()
                              (declare (not safe))
                              (type-descriptor-all-slots _super10351_))))
                       (declare (not safe))
                       (##vector-length __tmp10684))
                     '1))))
          (declare (not safe))
          (##fx+ _field10349_ __tmp10683))))
    (define struct-field-ref
      (lambda (_klass10344_ _obj10345_ _field10346_)
        (let ()
          (declare (not safe))
          (##structure-ref _obj10345_ _field10346_ _klass10344_ '#f))))
    (define struct-field-set!
      (lambda (_klass10339_ _obj10340_ _field10341_ _val10342_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _obj10340_
           _val10342_
           _field10341_
           _klass10339_
           '#f))))
    (define substruct?
      (lambda (_maybe-sub-struct10330_ _maybe-super-struct10331_)
        (let ((_maybe-super-struct-id10333_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct10331_))))
          (let _lp10335_ ((_super-struct10337_ _maybe-sub-struct10330_))
            (if (let () (declare (not safe)) (not _super-struct10337_))
                '#f
                (if (let ((__tmp10686
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct10337_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id10333_ __tmp10686))
                    '#t
                    (let ((__tmp10685
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct10337_))))
                      (declare (not safe))
                      (_lp10335_ __tmp10685))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct10327_ _maybe-sub-struct10328_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct10328_ _maybe-super-struct10327_))))
    (define base-struct/1
      (lambda (_klass10325_)
        (if (let () (declare (not safe)) (struct-type? _klass10325_))
            _klass10325_
            (if (let () (declare (not safe)) (class-type? _klass10325_))
                (let () (declare (not safe)) (##type-super _klass10325_))
                (if (let () (declare (not safe)) (not _klass10325_))
                    '#f
                    (error '"Not a class or false" _klass10325_))))))
    (define base-struct/2
      (lambda (_klass110313_ _klass210314_)
        (let ((_s110316_
               (let () (declare (not safe)) (base-struct/1 _klass110313_)))
              (_s210317_
               (let () (declare (not safe)) (base-struct/1 _klass210314_))))
          (if (or (let () (declare (not safe)) (not _s110316_))
                  (and _s210317_
                       (let ()
                         (declare (not safe))
                         (substruct? _s110316_ _s210317_))))
              _s210317_
              (if (or (let () (declare (not safe)) (not _s210317_))
                      (and _s110316_
                           (let ()
                             (declare (not safe))
                             (substruct? _s210317_ _s110316_))))
                  _s110316_
                  (error '"Bad mixin: incompatible struct bases"
                         _klass110313_
                         _klass210314_
                         _s110316_
                         _s210317_))))))
    (define base-struct/list
      (lambda (_all-supers10197_)
        (let* ((_all-supers1019810223_ _all-supers10197_)
               (_E1020310227_
                (lambda ()
                  (error '"No clause matching" _all-supers1019810223_))))
          (let ((_K1022110310_ (lambda () '#f))
                (_K1021810296_
                 (lambda (_x10294_)
                   (let () (declare (not safe)) (base-struct/1 _x10294_))))
                (_K1021310273_
                 (lambda (_y10270_ _x10271_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x10271_ _y10270_))))
                (_K1020410234_
                 (lambda (_y10231_ _x10232_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x10232_ _y10231_)))))
            (let* ((___match1063710638_
                    (lambda (_hd1020510237_ _tl1020610239_)
                      (let ((_x10242_ _hd1020510237_))
                        (letrec ((_splice-rest1020810244_
                                  (lambda (_rest1021210251_ _y10253_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest1021210251_))
                                        (let ()
                                          (declare (not safe))
                                          (_K1020410234_ _y10253_ _x10242_))
                                        (let ()
                                          (declare (not safe))
                                          (_E1020310227_)))))
                                 (_splice-try1021010246_
                                  (lambda (_hd1021110255_
                                           _rest1021210257_
                                           _y1020710258_)
                                    (let ((_y10261_ _hd1021110255_))
                                      (let ((__tmp10688
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest1021210257_)))
                                            (__tmp10687
                                             (let ()
                                               (declare (not safe))
                                               (cons _y10261_ _y1020710258_))))
                                        (declare (not safe))
                                        (_splice-loop1020910248_
                                         __tmp10688
                                         __tmp10687)))))
                                 (_splice-loop1020910248_
                                  (lambda (_rest1021210263_ _y1020710264_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest1021210263_))
                                        (let ((__tmp10690
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest1021210263_))))
                                          (declare (not safe))
                                          (_splice-try1021010246_
                                           __tmp10690
                                           _rest1021210263_
                                           _y1020710264_))
                                        (let ((__tmp10689
                                               (reverse _y1020710264_)))
                                          (declare (not safe))
                                          (_splice-rest1020810244_
                                           _rest1021210263_
                                           __tmp10689))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop1020910248_ _tl1020610239_ '()))))))
                   (_try-match1020010306_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers1019810223_))
                          (let ((_tl1022010301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers1019810223_)))
                                (_hd1021910299_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers1019810223_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1022010301_))
                                (let ((_x10304_ _hd1021910299_))
                                  (declare (not safe))
                                  (base-struct/1 _x10304_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1022010301_))
                                    (let ((_tl1021710285_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1022010301_)))
                                          (_hd1021610283_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1022010301_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1021710285_))
                                          (let ((_x10281_ _hd1021910299_)
                                                (_y10288_ _hd1021610283_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1021310273_
                                               _y10288_
                                               _x10281_)))
                                          (___match1063710638_
                                           _hd1021910299_
                                           _tl1022010301_)))
                                    (___match1063710638_
                                     _hd1021910299_
                                     _tl1022010301_))))
                          (let () (declare (not safe)) (_E1020310227_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers1019810223_))
                  (let () (declare (not safe)) (_K1022110310_))
                  (let () (declare (not safe)) (_try-match1020010306_))))))))
    (define base-struct
      (lambda _all-supers10195_
        (let () (declare (not safe)) (base-struct/list _all-supers10195_))))
    (define find-super-ctor
      (lambda (_super10193_)
        (let () (declare (not safe)) (find-super-constructor _super10193_))))
    (define find-super-constructor
      (lambda (_super10145_)
        (let _lp10147_ ((_rest10149_ _super10145_) (_constructor10150_ '#f))
          (let* ((_rest1015110159_ _rest10149_)
                 (_else1015310167_ (lambda () _constructor10150_))
                 (_K1015510181_
                  (lambda (_rest10170_ _hd10171_)
                    (let ((_$e10173_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd10171_))))
                      (if _$e10173_
                          ((lambda (_xconstructor10176_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor10150_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor10150_
                                            _xconstructor10176_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp10147_ _rest10170_ _xconstructor10176_))
                                 (error '"Conflicting implicit constructors"
                                        _constructor10150_
                                        _xconstructor10176_)))
                           _$e10173_)
                          (let ()
                            (declare (not safe))
                            (_lp10147_ _rest10170_ _constructor10150_)))))))
            (if (let () (declare (not safe)) (##pair? _rest1015110159_))
                (let ((_hd1015610184_
                       (let () (declare (not safe)) (##car _rest1015110159_)))
                      (_tl1015710186_
                       (let () (declare (not safe)) (##cdr _rest1015110159_))))
                  (let* ((_hd10189_ _hd1015610184_)
                         (_rest10191_ _tl1015710186_))
                    (declare (not safe))
                    (_K1015510181_ _rest10191_ _hd10189_)))
                (let () (declare (not safe)) (_else1015310167_)))))))
    (define compute-class-slots
      (lambda (_super-struct10116_
               _class-precedence-list10117_
               _direct-slots10118_)
        (let* ((_previous-slots10120_
                (if _super-struct10116_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct10116_))
                    '#(#f)))
               (_next-slot10122_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots10120_)))
               (_slot-table10124_
                (if _super-struct10116_
                    (let ((__tmp10691
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct10116_))))
                      (declare (not safe))
                      (hash-copy __tmp10691))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots10126_ '())
               (_process-slot10130_
                (lambda (_slot10128_)
                  (if (let () (declare (not safe)) (symbol? _slot10128_))
                      '#!void
                      (error '"invalid slot name" _slot10128_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table10124_ _slot10128_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table10124_
                           _slot10128_
                           _next-slot10122_))
                        (let ((__tmp10692 (symbol->keyword _slot10128_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table10124_
                           __tmp10692
                           _next-slot10122_))
                        (set! _r-slots10126_
                              (let ()
                                (declare (not safe))
                                (cons _slot10128_ _r-slots10126_)))
                        (set! _next-slot10122_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot10122_ '1)))))))
               (_process-slots10136_
                (lambda (_g1013110133_)
                  (for-each _process-slot10130_ _g1013110133_))))
          (for-each
           (lambda (_mixin10139_)
             (if (let () (declare (not safe)) (type-struct? _mixin10139_))
                 '#!void
                 (let ((__tmp10693
                        (let ((__tmp10694
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin10139_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp10694 '()))))
                   (declare (not safe))
                   (_process-slots10136_ __tmp10693))))
           (reverse _class-precedence-list10117_))
          (let ()
            (declare (not safe))
            (_process-slots10136_ _direct-slots10118_))
          (let ((_all-slots10141_ (make-vector _next-slot10122_ '#f)))
            (vector-copy! _all-slots10141_ '0 _previous-slots10120_)
            (for-each
             (lambda (_slot10143_)
               (set! _next-slot10122_
                     (let () (declare (not safe)) (##fx- _next-slot10122_ '1)))
               (vector-set! _all-slots10141_ _next-slot10122_ _slot10143_))
             _r-slots10126_)
            (values _all-slots10141_ _slot-table10124_)))))
    (define make-class-type
      (lambda (_id10109_
               _direct-supers10110_
               _direct-slots10111_
               _name10112_
               _properties10113_
               _constructor10114_)
        (let ()
          (declare (not safe))
          (make-class-type*
           _id10109_
           _name10112_
           _direct-supers10110_
           _direct-slots10111_
           _properties10113_
           _constructor10114_))))
    (define make-class-type*
      (lambda (_id10071_
               _name10072_
               _direct-supers10073_
               _direct-slots10074_
               _properties10075_
               _constructor10076_)
        (let ((_$e10080_
               (let ((__tmp10695
                      (lambda (_klass10078_)
                        (let ((__tmp10696
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass10078_))))
                          (declare (not safe))
                          (not __tmp10696)))))
                 (declare (not safe))
                 (find __tmp10695 _direct-supers10073_))))
          (if _$e10080_
              ((lambda (_g1008210084_)
                 (error '"Illegal super class; not a type descriptor"
                        _g1008210084_))
               _$e10080_)
              (let ((_$e10087_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers10073_))))
                (if _$e10087_
                    ((lambda (_g1008910091_)
                       (error '"Cannot extend final class" _g1008910091_))
                     _$e10087_)
                    '#!void))))
        (let* ((_struct-super10094_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers10073_)))
               (_precedence-list10096_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers10073_)))
               (_g10697_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super10094_
                   _precedence-list10096_
                   _direct-slots10074_))))
          (begin
            (let ((_g10698_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g10697_) (##vector-length _g10697_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g10698_ 2)))
                  (error "Context expects 2 values" _g10698_)))
            (let ((_all-slots10098_
                   (let () (declare (not safe)) (##vector-ref _g10697_ 0)))
                  (_slot-table10099_
                   (let () (declare (not safe)) (##vector-ref _g10697_ 1))))
              (let* ((_properties10101_
                      (let ((__tmp10701
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots10074_)))
                            (__tmp10699
                             (let ((__tmp10700
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers10073_))))
                               (declare (not safe))
                               (cons __tmp10700 _properties10075_))))
                        (declare (not safe))
                        (cons __tmp10701 __tmp10699)))
                     (_constructor*10106_
                      (let ((_$e10103_ _constructor10076_))
                        (if _$e10103_
                            _$e10103_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers10073_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor*
                   _id10071_
                   _name10072_
                   _struct-super10094_
                   _precedence-list10096_
                   _all-slots10098_
                   _properties10101_
                   _constructor*10106_
                   _slot-table10099_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass10069_)
        (let ((__tmp10702
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass10069_))))
          (declare (not safe))
          (cons _klass10069_ __tmp10702))))
    (define struct-precedence-list
      (lambda (_strukt10064_)
        (let ((__tmp10703
               (let ((_$e10066_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt10064_))))
                 (if _$e10066_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e10066_))
                     '()))))
          (declare (not safe))
          (cons _strukt10064_ __tmp10703))))
    (define class-linearize-mixins
      (lambda (_klass-lst10062_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst10062_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass10052_)
        (if (let () (declare (not safe)) (type-final? _klass10052_))
            (lambda (_g1005310055_)
              (let ((__tmp10704
                     (let () (declare (not safe)) (##type-id _klass10052_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g1005310055_ __tmp10704)))
            (lambda (_g1005710059_)
              (let ()
                (declare (not safe))
                (class-instance? _klass10052_ _g1005710059_))))))
    (define if-class-slot-field
      (lambda (_klass10039_
               _slot10040_
               _if-struct10041_
               _if-struct-field10042_
               _if-class-slot10043_)
        (let ((_field10045_
               (let ((__tmp10705
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass10039_))))
                 (declare (not safe))
                 (table-ref __tmp10705 _slot10040_ '#f))))
          (if (or (let () (declare (not safe)) (type-final? _klass10039_))
                  (let () (declare (not safe)) (type-struct? _klass10039_)))
              (_if-struct10041_ _klass10039_ _field10045_)
              (if (let ((_strukt10050_
                         (let ()
                           (declare (not safe))
                           (base-struct/1 _klass10039_))))
                    (and _strukt10050_
                         (let ((__tmp10706
                                (let ((__tmp10707
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-all-slots
                                          _strukt10050_))))
                                  (declare (not safe))
                                  (##vector-length __tmp10707))))
                           (declare (not safe))
                           (##fx< _field10045_ __tmp10706))))
                  (_if-struct-field10042_ _klass10039_ _field10045_)
                  (_if-class-slot10043_
                   _klass10039_
                   _slot10040_
                   _field10045_))))))
    (define make-class-slot-accessor
      (lambda (_klass10036_ _slot10037_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10036_
           _slot10037_
           make-struct-field-accessor*
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass10031_ _field10032_)
        (lambda (_obj10034_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass10031_ _obj10034_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10034_ _field10032_))
              (error '"Trying to access a slot of a value that is not an instance of the declared class"
                     (vector-ref
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass10031_))
                      _field10032_)
                     _obj10034_
                     _klass10031_)))))
    (define make-class-cached-slot-accessor
      (lambda (_klass10025_ _slot10026_ _field10027_)
        (lambda (_obj10029_)
          (if (let ((__tmp10708
                     (let () (declare (not safe)) (##type-id _klass10025_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10029_ __tmp10708))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10029_ _field10027_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass10025_ _obj10029_))
                  (let ()
                    (declare (not safe))
                    (slot-ref _obj10029_ _slot10026_))
                  (error '"Trying to get a slot of an object that is not a class instance"
                         _slot10026_
                         _obj10029_
                         _klass10025_))))))
    (define make-class-slot-mutator
      (lambda (_klass10022_ _slot10023_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10022_
           _slot10023_
           make-struct-field-mutator*
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass10016_ _field10017_)
        (lambda (_obj10019_ _val10020_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass10016_ _obj10019_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj10019_ _field10017_ _val10020_))
              (error '"Trying to set a slot of an object that is not a class instance"
                     (vector-ref
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass10016_))
                      _field10017_)
                     _obj10019_
                     _klass10016_
                     _val10020_)))))
    (define make-class-cached-slot-mutator
      (lambda (_klass10009_ _slot10010_ _field10011_)
        (lambda (_obj10013_ _val10014_)
          (if (let ((__tmp10709
                     (let () (declare (not safe)) (##type-id _klass10009_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10013_ __tmp10709))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj10013_ _field10011_ _val10014_))
              (let ()
                (declare (not safe))
                (slot-set! _obj10013_ _slot10010_ _val10014_))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass10006_ _slot10007_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10006_
           _slot10007_
           make-struct-field-unchecked-accessor*
           make-struct-field-unchecked-accessor*
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass10000_ _slot10001_ _field10002_)
        (lambda (_obj10004_)
          (if (let ((__tmp10710
                     (let () (declare (not safe)) (##type-id _klass10000_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10004_ __tmp10710))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10004_ _field10002_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj10004_ _slot10001_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9997_ _slot9998_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass9997_
           _slot9998_
           make-struct-field-unchecked-mutator*
           make-struct-field-unchecked-mutator*
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass9990_ _slot9991_ _field9992_)
        (lambda (_obj9994_ _val9995_)
          (if (let ((__tmp10711
                     (let () (declare (not safe)) (##type-id _klass9990_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9994_ __tmp10711))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj9994_ _field9992_ _val9995_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj9994_ _slot9991_ _val9995_))))))
    (define class-slot-offset
      (lambda (_klass9985_ _slot9986_)
        (let ((_off9988_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass9985_ _slot9986_))))
          (if _off9988_
              (let () (declare (not safe)) (##fx- _off9988_ '1))
              '#f))))
    (define class-slot-offset*
      (lambda (_klass9982_ _slot9983_)
        (let ((__tmp10712
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass9982_))))
          (declare (not safe))
          (table-ref __tmp10712 _slot9983_ '#f))))
    (define class-slot-ref
      (lambda (_klass9976_ _obj9977_ _slot9978_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9976_ _obj9977_))
            (let ((_off9980_
                   (let ((__tmp10713
                          (let ()
                            (declare (not safe))
                            (object-type _obj9977_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10713 _slot9978_))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9977_ _off9980_ _klass9976_ '#f))
            (error '"not an instance" _klass9976_ _obj9977_))))
    (define class-slot-set!
      (lambda (_klass9969_ _obj9970_ _slot9971_ _val9972_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9969_ _obj9970_))
            (let ((_off9974_
                   (let ((__tmp10714
                          (let ()
                            (declare (not safe))
                            (object-type _obj9970_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10714 _slot9971_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9970_
               _val9972_
               _off9974_
               _klass9969_
               '#f))
            (error '"not an instance" _klass9969_ _obj9970_))))
    (define subclass?
      (lambda (_maybe-sub-class9959_ _maybe-super-class9960_)
        (let* ((_maybe-super-class-id9962_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class9960_)))
               (_$e9964_
                (let ((__tmp10715
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class9959_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id9962_ __tmp10715))))
          (if _$e9964_
              _$e9964_
              (let ((__tmp10717
                     (lambda (_super-class9967_)
                       (let ((__tmp10718
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class9967_))))
                         (declare (not safe))
                         (eq? __tmp10718 _maybe-super-class-id9962_))))
                    (__tmp10716
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class9959_))))
                (declare (not safe))
                (ormap1 __tmp10717 __tmp10716))))))
    (define class-subtype?
      (lambda (_maybe-super-class9956_ _maybe-sub-class9957_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class9957_ _maybe-super-class9956_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9953_ _obj9954_)
        (let ((__tmp10719
               (let () (declare (not safe)) (##type-id _klass9953_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9954_ __tmp10719))))
    (define struct-instance?
      (lambda (_klass9950_ _obj9951_)
        (let ((__tmp10720
               (let () (declare (not safe)) (##type-id _klass9950_))))
          (declare (not safe))
          (##structure-instance-of? _obj9951_ __tmp10720))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9945_ _obj9946_)
        (if (let () (declare (not safe)) (object? _obj9946_))
            (let ((_type9948_
                   (let () (declare (not safe)) (object-type _obj9946_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9948_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type9948_ _klass9945_))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9942_ _k9943_)
        (let ((__tmp10721 (let () (declare (not safe)) (##fx+ _k9943_ '1))))
          (declare (not safe))
          (make-object*__% _klass9942_ __tmp10721))))
    (define make-object*__%
      (lambda (_klass9927_ _k9928_)
        (let ((_obj9930_
               (let () (declare (not safe)) (##make-vector _k9928_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9930_ '0 _klass9927_))
          (let ((__tmp10722 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9930_ __tmp10722))
          _obj9930_)))
    (define make-object*__0
      (lambda (_klass9935_)
        (let ((_k9937_ (let ((__tmp10723
                              (let ()
                                (declare (not safe))
                                (type-descriptor-all-slots _klass9935_))))
                         (declare (not safe))
                         (##vector-length __tmp10723))))
          (declare (not safe))
          (make-object*__% _klass9935_ _k9937_))))
    (define make-object*
      (lambda _g10725_
        (let ((_g10724_ (let () (declare (not safe)) (##length _g10725_))))
          (cond ((let () (declare (not safe)) (##fx= _g10724_ 1))
                 (apply (lambda (_klass9935_)
                          (let ()
                            (declare (not safe))
                            (make-object*__0 _klass9935_)))
                        _g10725_))
                ((let () (declare (not safe)) (##fx= _g10724_ 2))
                 (apply (lambda (_klass9939_ _k9940_)
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9939_ _k9940_)))
                        _g10725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-object*
                  _g10725_))))))
    (define make-struct-instance
      (lambda (_klass9913_ . _args9914_)
        (let* ((_all-slots9916_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass9913_)))
               (_size9918_
                (let ()
                  (declare (not safe))
                  (##vector-length _all-slots9916_))))
          (let ((_$e9921_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass9913_))))
            (if _$e9921_
                ((lambda (_kons-id9924_)
                   (let ((__tmp10728
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9913_ _size9918_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass9913_
                      _kons-id9924_
                      __tmp10728
                      _args9914_)))
                 _$e9921_)
                (if (let ((__tmp10727
                           (let () (declare (not safe)) (##fx- _size9918_ '1)))
                          (__tmp10726 (length _args9914_)))
                      (declare (not safe))
                      (##fx= __tmp10727 __tmp10726))
                    (apply ##structure _klass9913_ _args9914_)
                    (error '"Arguments don't match object size"
                           _klass9913_
                           (let () (declare (not safe)) (##fx- _size9918_ '1))
                           _args9914_)))))))
    (define make-class-instance
      (lambda (_klass9903_ . _args9904_)
        (let* ((_obj9906_
                (let ((__tmp10729
                       (let ((__tmp10730
                              (let ()
                                (declare (not safe))
                                (type-descriptor-all-slots _klass9903_))))
                         (declare (not safe))
                         (##vector-length __tmp10730))))
                  (declare (not safe))
                  (make-object*__% _klass9903_ __tmp10729)))
               (_$e9908_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass9903_))))
          (if _$e9908_
              ((lambda (_kons-id9911_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9903_
                    _kons-id9911_
                    _obj9906_
                    _args9904_)))
               _$e9908_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9903_ _obj9906_ _args9904_))))))
    (define struct-instance-init!
      (lambda (_obj9900_ . _args9901_)
        (if (let ((__tmp10732 (length _args9901_))
                  (__tmp10731
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9900_))))
              (declare (not safe))
              (##fx< __tmp10732 __tmp10731))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9900_ _args9901_))
            (error '"Too many arguments for struct" _obj9900_ _args9901_))))
    (define __struct-instance-init!
      (lambda (_obj9859_ _args9860_)
        (let _lp9862_ ((_k9864_ '1) (_rest9865_ _args9860_))
          (let* ((_rest98669874_ _rest9865_)
                 (_else98689882_ (lambda () _obj9859_))
                 (_K98709888_
                  (lambda (_rest9885_ _hd9886_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9859_ _k9864_ _hd9886_))
                    (let ((__tmp10733
                           (let () (declare (not safe)) (##fx+ _k9864_ '1))))
                      (declare (not safe))
                      (_lp9862_ __tmp10733 _rest9885_)))))
            (if (let () (declare (not safe)) (##pair? _rest98669874_))
                (let ((_hd98719891_
                       (let () (declare (not safe)) (##car _rest98669874_)))
                      (_tl98729893_
                       (let () (declare (not safe)) (##cdr _rest98669874_))))
                  (let* ((_hd9896_ _hd98719891_) (_rest9898_ _tl98729893_))
                    (declare (not safe))
                    (_K98709888_ _rest9898_ _hd9896_)))
                (let () (declare (not safe)) (_else98689882_)))))))
    (define class-instance-init!
      (lambda (_obj9856_ . _args9857_)
        (let ((__tmp10734
               (let () (declare (not safe)) (object-type _obj9856_))))
          (declare (not safe))
          (__class-instance-init! __tmp10734 _obj9856_ _args9857_))))
    (define __class-instance-init!
      (lambda (_klass9800_ _obj9801_ _args9802_)
        (let _lp9804_ ((_rest9806_ _args9802_))
          (let* ((_rest98079817_ _rest9806_)
                 (_else98099825_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9806_))
                        _obj9801_
                        (error '"Unexpected class initializer arguments"
                               _rest9806_))))
                 (_K98119837_
                  (lambda (_rest9828_ _val9829_ _key9830_)
                    (let ((_$e9832_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset* _klass9800_ _key9830_))))
                      (if _$e9832_
                          ((lambda (_off9835_)
                             (let ()
                               (declare (not safe))
                               (##vector-set! _obj9801_ _off9835_ _val9829_))
                             (let ()
                               (declare (not safe))
                               (_lp9804_ _rest9828_)))
                           _$e9832_)
                          (error '"No slot for keyword initializer"
                                 _klass9800_
                                 _key9830_))))))
            (if (let () (declare (not safe)) (##pair? _rest98079817_))
                (let ((_hd98129840_
                       (let () (declare (not safe)) (##car _rest98079817_)))
                      (_tl98139842_
                       (let () (declare (not safe)) (##cdr _rest98079817_))))
                  (let ((_key9845_ _hd98129840_))
                    (if (let () (declare (not safe)) (##pair? _tl98139842_))
                        (let ((_hd98149847_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl98139842_)))
                              (_tl98159849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl98139842_))))
                          (let* ((_val9852_ _hd98149847_)
                                 (_rest9854_ _tl98159849_))
                            (declare (not safe))
                            (_K98119837_ _rest9854_ _val9852_ _key9845_)))
                        (let () (declare (not safe)) (_else98099825_)))))
                (let () (declare (not safe)) (_else98099825_)))))))
    (define constructor-init!
      (lambda (_klass9795_ _kons-id9796_ _obj9797_ . _args9798_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9795_
           _kons-id9796_
           _obj9797_
           _args9798_))))
    (define __constructor-init!
      (lambda (_klass9785_ _kons-id9786_ _obj9787_ _args9788_)
        (let ((_$e9790_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9785_ _kons-id9786_))))
          (if _$e9790_
              ((lambda (_kons9793_)
                 (apply _kons9793_ _obj9787_ _args9788_)
                 _obj9787_)
               _$e9790_)
              (error '"Missing constructor" _klass9785_ _kons-id9786_)))))
    (define struct-copy
      (lambda (_struct9783_)
        (if (let () (declare (not safe)) (##structure? _struct9783_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9783_))
        (let () (declare (not safe)) (##structure-copy _struct9783_))))
    (define struct->list
      (lambda (_obj9781_)
        (if (let () (declare (not safe)) (object? _obj9781_))
            (let () (declare (not safe)) (##vector->list _obj9781_))
            (error '"Not an object" _obj9781_))))
    (define class->list
      (lambda (_obj9768_)
        (if (let () (declare (not safe)) (object? _obj9768_))
            (let ((_klass9770_
                   (let () (declare (not safe)) (object-type _obj9768_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9770_))
                  (let ((_all-slots9772_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass9770_))))
                    (let _loop9774_ ((_index9776_
                                      (let ((__tmp10740
                                             (let ()
                                               (declare (not safe))
                                               (##vector-length
                                                _all-slots9772_))))
                                        (declare (not safe))
                                        (##fx- __tmp10740 '1)))
                                     (_plist9777_ '()))
                      (if (let () (declare (not safe)) (##fx< _index9776_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass9770_ _plist9777_))
                          (let ((_slot9779_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots9772_
                                    _index9776_))))
                            (let ((__tmp10739
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index9776_ '1)))
                                  (__tmp10735
                                   (let ((__tmp10738
                                          (symbol->keyword _slot9779_))
                                         (__tmp10736
                                          (let ((__tmp10737
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj9768_
                                                    _index9776_))))
                                            (declare (not safe))
                                            (cons __tmp10737 _plist9777_))))
                                     (declare (not safe))
                                     (cons __tmp10738 __tmp10736))))
                              (declare (not safe))
                              (_loop9774_ __tmp10739 __tmp10735))))))
                  (error '"Not a class type" _obj9768_ _klass9770_)))
            (error '"Not an object" _obj9768_))))
    (define unchecked-field-ref
      (lambda (_obj9765_ _off9766_)
        (let () (declare (not safe)) (##vector-ref _obj9765_ _off9766_))))
    (define unchecked-field-set!
      (lambda (_obj9761_ _off9762_ _val9763_)
        (let ()
          (declare (not safe))
          (##vector-set! _obj9761_ _off9762_ _val9763_))))
    (define unchecked-slot-ref
      (lambda (_obj9758_ _slot9759_)
        (let ((__tmp10741
               (let ((__tmp10742
                      (let () (declare (not safe)) (object-type _obj9758_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10742 _slot9759_))))
          (declare (not safe))
          (unchecked-field-ref _obj9758_ __tmp10741))))
    (define unchecked-slot-set!
      (lambda (_obj9754_ _slot9755_ _val9756_)
        (let ((__tmp10743
               (let ((__tmp10744
                      (let () (declare (not safe)) (object-type _obj9754_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10744 _slot9755_))))
          (declare (not safe))
          (unchecked-field-set! _obj9754_ __tmp10743 _val9756_))))
    (define slot-ref__%
      (lambda (_obj9730_ _slot9731_ _E9732_)
        (if (let () (declare (not safe)) (object? _obj9730_))
            (let* ((_klass9734_
                    (let () (declare (not safe)) (object-type _obj9730_)))
                   (_$e9737_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9734_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass9734_ _slot9731_))
                        '#f)))
              (if _$e9737_
                  ((lambda (_off9740_)
                     (let ()
                       (declare (not safe))
                       (##vector-ref _obj9730_ _off9740_)))
                   _$e9737_)
                  (_E9732_ _obj9730_ _slot9731_)))
            (_E9732_ _obj9730_ _slot9731_))))
    (define slot-ref__0
      (lambda (_obj9745_ _slot9746_)
        (let ((_E9748_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9745_ _slot9746_ _E9748_))))
    (define slot-ref
      (lambda _g10746_
        (let ((_g10745_ (let () (declare (not safe)) (##length _g10746_))))
          (cond ((let () (declare (not safe)) (##fx= _g10745_ 2))
                 (apply (lambda (_obj9745_ _slot9746_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9745_ _slot9746_)))
                        _g10746_))
                ((let () (declare (not safe)) (##fx= _g10745_ 3))
                 (apply (lambda (_obj9750_ _slot9751_ _E9752_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9750_ _slot9751_ _E9752_)))
                        _g10746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10746_))))))
    (define slot-set!__%
      (lambda (_obj9702_ _slot9703_ _val9704_ _E9705_)
        (if (let () (declare (not safe)) (object? _obj9702_))
            (let* ((_klass9707_
                    (let () (declare (not safe)) (object-type _obj9702_)))
                   (_$e9710_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9707_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass9707_ _slot9703_))
                        '#f)))
              (if _$e9710_
                  ((lambda (_off9713_)
                     (let ()
                       (declare (not safe))
                       (##vector-set! _obj9702_ _off9713_ _val9704_)))
                   _$e9710_)
                  (_E9705_ _obj9702_ _slot9703_)))
            (_E9705_ _obj9702_ _slot9703_))))
    (define slot-set!__0
      (lambda (_obj9718_ _slot9719_ _val9720_)
        (let ((_E9722_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9718_ _slot9719_ _val9720_ _E9722_))))
    (define slot-set!
      (lambda _g10748_
        (let ((_g10747_ (let () (declare (not safe)) (##length _g10748_))))
          (cond ((let () (declare (not safe)) (##fx= _g10747_ 3))
                 (apply (lambda (_obj9718_ _slot9719_ _val9720_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9718_ _slot9719_ _val9720_)))
                        _g10748_))
                ((let () (declare (not safe)) (##fx= _g10747_ 4))
                 (apply (lambda (_obj9724_ _slot9725_ _val9726_ _E9727_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9724_
                             _slot9725_
                             _val9726_
                             _E9727_)))
                        _g10748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10748_))))))
    (define __slot-error
      (lambda (_obj9698_ _slot9699_)
        (error '"Cannot find slot" _obj9698_ _slot9699_)))
    (define call-method
      (lambda (_obj9689_ _id9690_ . _args9691_)
        (let ((_$e9693_
               (let () (declare (not safe)) (method-ref _obj9689_ _id9690_))))
          (if _$e9693_
              ((lambda (_method9696_)
                 (apply _method9696_ _obj9689_ _args9691_))
               _$e9693_)
              (error '"Cannot find method" _obj9689_ _id9690_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9686_ _id9687_)
        (if (let () (declare (not safe)) (object? _obj9686_))
            (let ((__tmp10749
                   (let () (declare (not safe)) (object-type _obj9686_))))
              (declare (not safe))
              (find-method __tmp10749 _id9687_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9680_ _id9681_)
        (let ((_$e9683_
               (let () (declare (not safe)) (method-ref _obj9680_ _id9681_))))
          (if _$e9683_
              _$e9683_
              (error '"Missing method" _obj9680_ _id9681_)))))
    (define bound-method-ref
      (lambda (_obj9670_ _id9671_)
        (let ((_$e9673_
               (let () (declare (not safe)) (method-ref _obj9670_ _id9671_))))
          (if _$e9673_
              ((lambda (_method9676_)
                 (lambda _args9678_ (apply _method9676_ _obj9670_ _args9678_)))
               _$e9673_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9663_ _id9664_)
        (let ((_method9666_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9663_ _id9664_))))
          (lambda _args9668_ (apply _method9666_ _obj9663_ _args9668_)))))
    (define find-method
      (lambda (_klass9660_ _id9661_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9660_))
            (let () (declare (not safe)) (__find-method _klass9660_ _id9661_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass9660_ _id9661_)))))
    (define __find-method
      (lambda (_klass9654_ _id9655_)
        (let ((_$e9657_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9654_ _id9655_))))
          (if _$e9657_
              _$e9657_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9654_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9654_ _id9655_)))))))
    (define struct-find-method find-method)
    (define class-find-method
      (lambda (_klass9651_ _id9652_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9651_))
            (let () (declare (not safe)) (__find-method _klass9651_ _id9652_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins9644_ _id9645_)
        (let ((__tmp10750
               (lambda (_g96469648_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g96469648_ _id9645_)))))
          (declare (not safe))
          (ormap1 __tmp10750 _mixins9644_))))
    (define builtin-find-method
      (lambda (_klass9638_ _id9639_)
        (if (let () (declare (not safe)) (##type? _klass9638_))
            (let ((_$e9641_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9638_ _id9639_))))
              (if _$e9641_
                  _$e9641_
                  (let ((__tmp10751
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9638_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10751 _id9639_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9630_ _id9631_)
        (let ((_$e9633_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9630_))))
          (if _$e9633_
              ((lambda (_ht9636_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9636_ _id9631_ '#f)))
               _$e9633_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9627_ _id9628_)
        (let ((__tmp10752
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass9627_))))
          (declare (not safe))
          (mixin-find-method __tmp10752 _id9628_))))
    (define builtin-method-ref
      (lambda (_klass9619_ _id9620_)
        (let ((_$e9622_
               (let ((__tmp10753
                      (let () (declare (not safe)) (##type-id _klass9619_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10753 '#f))))
          (if _$e9622_
              ((lambda (_mtab9625_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9625_ _id9620_ '#f)))
               _$e9622_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9585_ _id9586_ _proc9587_ _rebind?9588_)
        (letrec ((_bind!9590_
                  (lambda (_ht9603_)
                    (if (and (let () (declare (not safe)) (not _rebind?9588_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9603_ _id9586_ '#f)))
                        (error '"Method already bound" _klass9585_ _id9586_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9603_ _id9586_ _proc9587_))))))
          (if (let () (declare (not safe)) (procedure? _proc9587_))
              '#!void
              (error '"Bad method; expected procedure" _proc9587_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9585_))
              (let ((_ht9592_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9585_))))
                (if _ht9592_
                    (let () (declare (not safe)) (_bind!9590_ _ht9592_))
                    (let ((_ht9594_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9585_ _ht9594_))
                      (let () (declare (not safe)) (_bind!9590_ _ht9594_)))))
              (if (let () (declare (not safe)) (##type? _klass9585_))
                  (let ((_ht9601_
                         (let ((_$e9596_
                                (let ((__tmp10754
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9585_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10754
                                   '#f))))
                           (if _$e9596_
                               _$e9596_
                               (let ((_ht9599_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10755
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9585_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10755
                                    _ht9599_))
                                 _ht9599_)))))
                    (declare (not safe))
                    (_bind!9590_ _ht9601_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9585_))))))
    (define bind-method!__0
      (lambda (_klass9608_ _id9609_ _proc9610_)
        (let ((_rebind?9612_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9608_ _id9609_ _proc9610_ _rebind?9612_))))
    (define bind-method!
      (lambda _g10757_
        (let ((_g10756_ (let () (declare (not safe)) (##length _g10757_))))
          (cond ((let () (declare (not safe)) (##fx= _g10756_ 3))
                 (apply (lambda (_klass9608_ _id9609_ _proc9610_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9608_ _id9609_ _proc9610_)))
                        _g10757_))
                ((let () (declare (not safe)) (##fx= _g10756_ 4))
                 (apply (lambda (_klass9614_ _id9615_ _proc9616_ _rebind?9617_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9614_
                             _id9615_
                             _proc9616_
                             _rebind?9617_)))
                        _g10757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10757_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9581_ _specializer9582_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9581_ _specializer9582_))))
    (define seal-class!
      (lambda (_klass9548_)
        (letrec ((_collect-methods!9550_
                  (lambda (_mtab9566_)
                    (letrec ((_merge!9568_
                              (lambda (_tab9576_)
                                (let ((__tmp10758
                                       (lambda (_id9578_ _proc9579_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9566_
                                            _id9578_
                                            _proc9579_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10758 _tab9576_))))
                             (_collect-direct-methods!9569_
                              (lambda (_klass9571_)
                                (let ((_$e9573_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9571_))))
                                  (if _$e9573_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9568_ _$e9573_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!9569_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass9548_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9548_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9548_))
                  '#!void
                  (begin
                    (if (let () (declare (not safe)) (type-final? _klass9548_))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9548_))
                    (let ((_vtab9552_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9553_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9550_ _mtab9553_))
                      (let ((__tmp10759
                             (lambda (_id9555_ _proc9556_)
                               (let ((_$e9558_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9556_
                                         '#f))))
                                 (if _$e9558_
                                     ((lambda (_specializer9561_)
                                        (let ((_proc9563_
                                               (_specializer9561_ _klass9548_))
                                              (_gid9564_
                                               (let ((__tmp10760
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9548_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp10760
                                                  '"::["
                                                  _id9555_
                                                  '"]"))))
                                          (eval (let ((__tmp10761
                                                       (let ((__tmp10762
                                                              (let ((__tmp10763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10764
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9563_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10764))))
                        (declare (not safe))
                        (cons __tmp10763 '()))))
                 (declare (not safe))
                 (cons _gid9564_ __tmp10762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10761)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9552_
                                             _id9555_
                                             _proc9563_))))
                                      _$e9558_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9552_
                                        _id9555_
                                        _proc9556_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10759 _mtab9553_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9548_ _vtab9552_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9548_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9497_ _obj9498_ _id9499_)
        (let ((_klass9501_
               (let () (declare (not safe)) (object-type _obj9498_)))
              (_type-id9502_
               (let () (declare (not safe)) (##type-id _subklass9497_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9501_))
              (let _lp9504_ ((_rest9506_
                              (let ()
                                (declare (not safe))
                                (class-precedence-list _klass9501_))))
                (let* ((_rest95079515_ _rest9506_)
                       (_else95099523_ (lambda () '#f))
                       (_K95119529_
                        (lambda (_rest9526_ _klass9527_)
                          (if (let ((__tmp10767
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass9527_))))
                                (declare (not safe))
                                (eq? _type-id9502_ __tmp10767))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest9526_ _id9499_))
                              (let ()
                                (declare (not safe))
                                (_lp9504_ _rest9526_))))))
                  (if (let () (declare (not safe)) (##pair? _rest95079515_))
                      (let ((_hd95129532_
                             (let ()
                               (declare (not safe))
                               (##car _rest95079515_)))
                            (_tl95139534_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest95079515_))))
                        (let* ((_klass9537_ _hd95129532_)
                               (_rest9539_ _tl95139534_))
                          (declare (not safe))
                          (_K95119529_ _rest9539_ _klass9537_)))
                      (let () (declare (not safe)) (_else95099523_)))))
              (if (let () (declare (not safe)) (##type? _klass9501_))
                  (let _lp9541_ ((_klass9543_ _klass9501_))
                    (if (let ((__tmp10766
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9543_))))
                          (declare (not safe))
                          (eq? _type-id9502_ __tmp10766))
                        (let ((__tmp10765
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9543_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10765 _id9499_))
                        (let ((_$e9545_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9543_))))
                          (if _$e9545_
                              (let () (declare (not safe)) (_lp9541_ _$e9545_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9487_ _obj9488_ _id9489_ . _args9490_)
        (let ((_$e9492_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9487_ _obj9488_ _id9489_))))
          (if _$e9492_
              ((lambda (_methodf9495_)
                 (apply _methodf9495_ _obj9488_ _args9490_))
               _$e9492_)
              (error '"Cannot find next method" _obj9488_ _id9489_)))))
    (define write-style (lambda (_we9485_) (macro-writeenv-style _we9485_)))
    (define write-object
      (lambda (_we9477_ _obj9478_)
        (let ((_$e9480_
               (let () (declare (not safe)) (method-ref _obj9478_ ':wr))))
          (if _$e9480_
              ((lambda (_method9483_) (_method9483_ _obj9478_ _we9477_))
               _$e9480_)
              (let ()
                (declare (not safe))
                (##default-wr _we9477_ _obj9478_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
