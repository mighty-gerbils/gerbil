(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1704735467)
  (begin
    (define type-id
      (lambda (_klass10625_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10625_))
            (let () (declare (not safe)) (##type-id _klass10625_))
            (if (let () (declare (not safe)) (not _klass10625_))
                '#f
                (error '"Not a class or #f" _klass10625_)))))
    (define type=?
      (lambda (_x10622_ _y10623_)
        (let ((__tmp10650 (let () (declare (not safe)) (type-id _x10622_)))
              (__tmp10649 (let () (declare (not safe)) (type-id _y10623_))))
          (declare (not safe))
          (eq? __tmp10650 __tmp10649))))
    (define type-descriptor?
      (lambda (_klass10620_)
        (if (let () (declare (not safe)) (##type? _klass10620_))
            (let ((__tmp10651
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10620_))))
              (declare (not safe))
              (eq? __tmp10651 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass10618_)
        (let ((__tmp10652
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass10618_))))
          (declare (not safe))
          (assgetq 'struct: __tmp10652))))
    (define type-final?
      (lambda (_klass10616_)
        (let ((__tmp10653
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass10616_))))
          (declare (not safe))
          (assgetq 'final: __tmp10653))))
    (define struct-type?
      (lambda (_klass10614_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10614_))
            (let () (declare (not safe)) (type-struct? _klass10614_))
            '#f)))
    (define class-type?
      (lambda (_klass10612_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10612_))
            (let ((__tmp10654
                   (let () (declare (not safe)) (type-struct? _klass10612_))))
              (declare (not safe))
              (not __tmp10654))
            '#f)))
    (define properties-form
      (lambda (_properties10578_)
        (map (lambda (_e1057910581_)
               (let* ((_g1058310590_ _e1057910581_)
                      (_E1058510594_
                       (lambda () (error '"No clause matching" _g1058310590_)))
                      (_K1058610600_
                       (lambda (_val10597_ _key10598_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key10598_ 'direct-supers:))
                             (let ((__tmp10655 (map type-id _val10597_)))
                               (declare (not safe))
                               (cons _key10598_ __tmp10655))
                             (let ()
                               (declare (not safe))
                               (cons _key10598_ _val10597_))))))
                 (if (let () (declare (not safe)) (##pair? _g1058310590_))
                     (let ((_hd1058710603_
                            (let ()
                              (declare (not safe))
                              (##car _g1058310590_)))
                           (_tl1058810605_
                            (let ()
                              (declare (not safe))
                              (##cdr _g1058310590_))))
                       (let* ((_key10608_ _hd1058710603_)
                              (_val10610_ _tl1058810605_))
                         (declare (not safe))
                         (_K1058610600_ _val10610_ _key10608_)))
                     (let () (declare (not safe)) (_E1058510594_)))))
             _properties10578_)))
    (define make-type-descriptor
      (lambda (_type-id10568_
               _type-name10569_
               _type-super10570_
               _rtd-mixin10571_
               _rtd-fields10572_
               _rtd-plist10573_
               _rtd-ctor10574_
               _rtd-slots10575_
               _rtd-methods10576_)
        (let ()
          (declare (not safe))
          (make-type-descriptor*
           _type-id10568_
           _type-name10569_
           _type-super10570_
           _rtd-mixin10571_
           _rtd-fields10572_
           _rtd-plist10573_
           _rtd-ctor10574_
           _rtd-slots10575_
           _rtd-methods10576_))))
    (define make-type-descriptor*
      (lambda (_type-id10481_
               _type-name10482_
               _type-super10483_
               _precedence-list10484_
               _all-slots10485_
               _properties10486_
               _constructor10487_
               _slot-table10488_
               _methods10489_)
        (letrec ((_make-props!10491_
                  (lambda (_key10537_)
                    (letrec* ((_ht10539_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!10540_
                               (lambda (_ht10561_ _slots10562_)
                                 (for-each
                                  (lambda (_g1056310565_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht10561_
                                       _g1056310565_
                                       '#t)))
                                  _slots10562_)))
                              (_put-alist!10541_
                               (lambda (_ht10550_ _key10551_ _alist10552_)
                                 (let ((_$e10554_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key10551_ _alist10552_))))
                                   (if _$e10554_
                                       ((lambda (_g1055610558_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!10540_
                                             _ht10550_
                                             _g1055610558_)))
                                        _$e10554_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!10541_
                         _ht10539_
                         _key10537_
                         _properties10486_))
                      (for-each
                       (lambda (_mixin10543_)
                         (let ((_alist10545_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin10543_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist10545_))
                                   (let ((__tmp10657
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key10537_
                                                     _alist10545_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp10657)))
                               (let ((__tmp10656
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin10543_))))))
                                 (declare (not safe))
                                 (_put-slots!10540_ _ht10539_ __tmp10656))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!10541_
                                  _ht10539_
                                  _key10537_
                                  _alist10545_)))))
                       _precedence-list10484_)
                      _ht10539_))))
          (let* ((_transparent?10493_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties10486_)))
                 (_all-slots-printable?10498_
                  (let ((_$e10495_ _transparent?10493_))
                    (if _$e10495_
                        _$e10495_
                        (let ((__tmp10658
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties10486_))))
                          (declare (not safe))
                          (eq? '#t __tmp10658)))))
                 (_printable10500_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?10498_))
                      (let ()
                        (declare (not safe))
                        (_make-props!10491_ 'print:))
                      '#f))
                 (_all-slots-equalable?10505_
                  (let ((_$e10502_ _transparent?10493_))
                    (if _$e10502_
                        _$e10502_
                        (let ((__tmp10659
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties10486_))))
                          (declare (not safe))
                          (eq? '#t __tmp10659)))))
                 (_equalable10507_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?10505_))
                      (let ()
                        (declare (not safe))
                        (_make-props!10491_ 'equal:))
                      '#f))
                 (_first-new-field10509_
                  (if _type-super10483_
                      (vector-length
                       (let ()
                         (declare (not safe))
                         (type-descriptor-all-slots _type-super10483_)))
                      '1))
                 (_field-info-length10511_
                  (* '3
                     (- (vector-length _all-slots10485_)
                        _first-new-field10509_)))
                 (_field-info10513_ (make-vector _field-info-length10511_ '#f))
                 (_opaque?10518_
                  (let ((_$e10515_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?10505_))))
                    (if _$e10515_
                        _$e10515_
                        (if _type-super10483_
                            (let ((__tmp10660
                                   (let ((__tmp10661
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super10483_))))
                                     (declare (not safe))
                                     (##fxand __tmp10661 '1))))
                              (declare (not safe))
                              (##fx= __tmp10660 '1))
                            '#f)))))
            (let _loop10521_ ((_i10523_ _first-new-field10509_) (_j10524_ '0))
              (if (< _j10524_ _field-info-length10511_)
                  (let* ((_slot10526_ (vector-ref _all-slots10485_ _i10523_))
                         (_flags10534_
                          (if _transparent?10493_
                              '0
                              (let ((__tmp10663
                                     (if (or _all-slots-printable?10498_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable10500_
                                                _slot10526_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp10662
                                     (if (or _all-slots-equalable?10505_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable10507_
                                                _slot10526_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp10663 __tmp10662)))))
                    (vector-set! _field-info10513_ _j10524_ _slot10526_)
                    (vector-set!
                     _field-info10513_
                     (let () (declare (not safe)) (fx+ _j10524_ '1))
                     _flags10534_)
                    (let ((__tmp10665
                           (let () (declare (not safe)) (fx+ _i10523_ '1)))
                          (__tmp10664
                           (let () (declare (not safe)) (##fx+ _j10524_ '3))))
                      (declare (not safe))
                      (_loop10521_ __tmp10665 __tmp10664)))
                  '#!void))
            (let ((__tmp10666 (if _opaque?10518_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10481_
               _type-name10482_
               __tmp10666
               _type-super10483_
               _field-info10513_
               _precedence-list10484_
               _all-slots10485_
               _slot-table10488_
               _properties10486_
               _constructor10487_
               _methods10489_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass10479_)
        (let () (declare (not safe)) (##vector-ref _klass10479_ '6))))
    (define type-descriptor-all-slots
      (lambda (_klass10477_)
        (let () (declare (not safe)) (##vector-ref _klass10477_ '7))))
    (define type-descriptor-slot-table
      (lambda (_klass10475_)
        (let () (declare (not safe)) (##vector-ref _klass10475_ '8))))
    (define type-descriptor-properties
      (lambda (_klass10473_)
        (let () (declare (not safe)) (##vector-ref _klass10473_ '9))))
    (define type-descriptor-constructor
      (lambda (_klass10471_)
        (let () (declare (not safe)) (##vector-ref _klass10471_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10469_)
        (let () (declare (not safe)) (##vector-ref _klass10469_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10466_ _ht10467_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10466_ '11 _ht10467_))))
    (define type-descriptor-mixin type-descriptor-precedence-list)
    (define type-descriptor-plist type-descriptor-properties)
    (define type-descriptor-ctor type-descriptor-constructor)
    (define type-descriptor-fields
      (lambda (_klass10464_)
        (let ((__tmp10667
               (vector-length
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass10464_)))))
          (declare (not safe))
          (##fx- __tmp10667 '1))))
    (define type-descriptor-slots
      (lambda (_klass10457_)
        (let ((_h10459_ (let () (declare (not safe)) (make-table 'test: eq?))))
          (let ((__tmp10669
                 (lambda (_k10461_ _v10462_)
                   (let ((__tmp10670
                          (let () (declare (not safe)) (fx+ _v10462_ '1))))
                     (declare (not safe))
                     (table-set! _h10459_ _k10461_ __tmp10670))))
                (__tmp10668
                 (let ()
                   (declare (not safe))
                   (type-descriptor-slot-table _klass10457_))))
            (declare (not safe))
            (table-for-each __tmp10669 __tmp10668))
          _h10459_)))
    (define type-descriptor-sealed?
      (lambda (_klass10455_)
        (let ((__tmp10671
               (let () (declare (not safe)) (##type-flags _klass10455_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10671))))
    (define type-descriptor-seal!
      (lambda (_klass10453_)
        (let ((__tmp10672
               (let ((__tmp10674
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10673
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10453_))))
                 (declare (not safe))
                 (##fxior __tmp10674 __tmp10673))))
          (declare (not safe))
          (##vector-set! _klass10453_ '3 __tmp10672))))
    (define make-struct-type__%
      (lambda (_id10418_
               _super10419_
               _n-direct-slots10420_
               _name10421_
               _properties10422_
               _constructor10423_
               _direct-slots10424_)
        (let ((__tmp10675
               (let ((_$e10426_ _direct-slots10424_))
                 (if _$e10426_
                     _$e10426_
                     (map (lambda (_g1042810430_)
                            (let ()
                              (declare (not safe))
                              (make-symbol__1 '"_" _g1042810430_)))
                          (let ((__tmp10676
                                 (if _super10419_
                                     (vector-length
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-all-slots
                                         _super10419_)))
                                     '1)))
                            (declare (not safe))
                            (iota _n-direct-slots10420_ __tmp10676)))))))
          (declare (not safe))
          (make-struct-type*
           _id10418_
           _name10421_
           _super10419_
           __tmp10675
           _properties10422_
           _constructor10423_))))
    (define make-struct-type__0
      (lambda (_id10436_
               _super10437_
               _n-direct-slots10438_
               _name10439_
               _properties10440_
               _constructor10441_)
        (let ((_direct-slots10443_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10436_
           _super10437_
           _n-direct-slots10438_
           _name10439_
           _properties10440_
           _constructor10441_
           _direct-slots10443_))))
    (define make-struct-type
      (lambda _g10678_
        (let ((_g10677_ (let () (declare (not safe)) (##length _g10678_))))
          (cond ((let () (declare (not safe)) (##fx= _g10677_ 6))
                 (apply (lambda (_id10436_
                                 _super10437_
                                 _n-direct-slots10438_
                                 _name10439_
                                 _properties10440_
                                 _constructor10441_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10436_
                             _super10437_
                             _n-direct-slots10438_
                             _name10439_
                             _properties10440_
                             _constructor10441_)))
                        _g10678_))
                ((let () (declare (not safe)) (##fx= _g10677_ 7))
                 (apply (lambda (_id10445_
                                 _super10446_
                                 _n-direct-slots10447_
                                 _name10448_
                                 _properties10449_
                                 _constructor10450_
                                 _direct-slots10451_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10445_
                             _super10446_
                             _n-direct-slots10447_
                             _name10448_
                             _properties10449_
                             _constructor10450_
                             _direct-slots10451_)))
                        _g10678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10678_))))))
    (define make-struct-type*
      (lambda (_id10398_
               _name10399_
               _super10400_
               _direct-slots10401_
               _properties10402_
               _constructor10403_)
        (if (and _super10400_
                 (let ((__tmp10679
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10400_))))
                   (declare (not safe))
                   (not __tmp10679)))
            (error '"Illegal super type; not a struct-type" _super10400_)
            '#!void)
        (let* ((_type10405_
                (let ((__tmp10682
                       (if _super10400_
                           (let ()
                             (declare (not safe))
                             (cons _super10400_ '()))
                           '()))
                      (__tmp10680
                       (let ((__tmp10681
                              (let ()
                                (declare (not safe))
                                (cons 'struct: '#t))))
                         (declare (not safe))
                         (cons __tmp10681 _properties10402_))))
                  (declare (not safe))
                  (make-class-type*
                   _id10398_
                   _name10399_
                   __tmp10682
                   _direct-slots10401_
                   __tmp10680
                   _constructor10403_)))
               (_all-slots10407_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type10405_)))
               (_len10409_ (length _direct-slots10401_))
               (_start10411_ (- (vector-length _all-slots10407_) _len10409_)))
          (if (let ((__tmp10684
                     (lambda (_slot10414_ _i10415_)
                       (let ((__tmp10685
                              (vector-ref _all-slots10407_ _i10415_)))
                         (declare (not safe))
                         (eq? _slot10414_ __tmp10685))))
                    (__tmp10683
                     (let ()
                       (declare (not safe))
                       (iota _len10409_ _start10411_))))
                (declare (not safe))
                (andmap2 __tmp10684 _direct-slots10401_ __tmp10683))
              '#!void
              (error '"Non-unique slots in struct"
                     _name10399_
                     _direct-slots10401_))
          _type10405_)))
    (define make-struct-predicate
      (lambda (_klass10390_)
        (let ((_tid10392_
               (let () (declare (not safe)) (##type-id _klass10390_))))
          (if (let () (declare (not safe)) (type-final? _klass10390_))
              (lambda (_obj10394_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10394_ _tid10392_)))
              (lambda (_obj10396_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10396_ _tid10392_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10387_ _field10388_)
        (let ((__tmp10686
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10387_ _field10388_))))
          (declare (not safe))
          (make-struct-field-accessor* _klass10387_ __tmp10686))))
    (define make-struct-field-accessor*
      (lambda (_klass10382_ _field10383_)
        (lambda (_obj10385_)
          (let ()
            (declare (not safe))
            (##structure-ref _obj10385_ _field10383_ _klass10382_ '#f)))))
    (define make-struct-field-mutator
      (lambda (_klass10379_ _field10380_)
        (let ((__tmp10687
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10379_ _field10380_))))
          (declare (not safe))
          (make-struct-field-mutator* _klass10379_ __tmp10687))))
    (define make-struct-field-mutator*
      (lambda (_klass10373_ _field10374_)
        (lambda (_obj10376_ _val10377_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj10376_
             _val10377_
             _field10374_
             _klass10373_
             '#f)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10370_ _field10371_)
        (let ((__tmp10688
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10370_ _field10371_))))
          (declare (not safe))
          (make-struct-field-unchecked-accessor* _klass10370_ __tmp10688))))
    (define make-struct-field-unchecked-accessor*
      (lambda (_klass10365_ _field10366_)
        (lambda (_obj10368_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj10368_
             _field10366_
             _klass10365_
             '#f)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10362_ _field10363_)
        (let ((__tmp10689
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10362_ _field10363_))))
          (declare (not safe))
          (make-struct-field-unchecked-mutator* _klass10362_ __tmp10689))))
    (define make-struct-field-unchecked-mutator*
      (lambda (_klass10356_ _field10357_)
        (lambda (_obj10359_ _val10360_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj10359_
             _val10360_
             _field10357_
             _klass10356_
             '#f)))))
    (define struct-field-offset*
      (lambda (_klass10350_ _field10351_)
        (let ((__tmp10690
               (let ((_$e10353_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10350_))))
                 (if _$e10353_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10353_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10351_ __tmp10690 '1))))
    (define struct-field-ref
      (lambda (_klass10346_ _obj10347_ _field10348_)
        (let ()
          (declare (not safe))
          (##structure-ref _obj10347_ _field10348_ _klass10346_ '#f))))
    (define struct-field-set!
      (lambda (_klass10341_ _obj10342_ _field10343_ _val10344_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _obj10342_
           _val10344_
           _field10343_
           _klass10341_
           '#f))))
    (define substruct?
      (lambda (_maybe-sub-struct10332_ _maybe-super-struct10333_)
        (let ((_maybe-super-struct-id10335_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct10333_))))
          (let _lp10337_ ((_super-struct10339_ _maybe-sub-struct10332_))
            (if (let () (declare (not safe)) (not _super-struct10339_))
                '#f
                (if (let ((__tmp10692
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct10339_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id10335_ __tmp10692))
                    '#t
                    (let ((__tmp10691
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct10339_))))
                      (declare (not safe))
                      (_lp10337_ __tmp10691))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct10329_ _maybe-sub-struct10330_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct10330_ _maybe-super-struct10329_))))
    (define base-struct/1
      (lambda (_klass10327_)
        (if (let () (declare (not safe)) (struct-type? _klass10327_))
            _klass10327_
            (if (let () (declare (not safe)) (class-type? _klass10327_))
                (let () (declare (not safe)) (##type-super _klass10327_))
                (if (let () (declare (not safe)) (not _klass10327_))
                    '#f
                    (error '"Not a class or false" _klass10327_))))))
    (define base-struct/2
      (lambda (_klass110315_ _klass210316_)
        (letrec* ((_s110318_
                   (let () (declare (not safe)) (base-struct/1 _klass110315_)))
                  (_s210319_
                   (let ()
                     (declare (not safe))
                     (base-struct/1 _klass210316_))))
          (if (or (let () (declare (not safe)) (not _s110318_))
                  (and _s210319_
                       (let ()
                         (declare (not safe))
                         (substruct? _s110318_ _s210319_))))
              _s210319_
              (if (or (let () (declare (not safe)) (not _s210319_))
                      (and _s110318_
                           (let ()
                             (declare (not safe))
                             (substruct? _s210319_ _s110318_))))
                  _s110318_
                  (error '"Bad mixin: incompatible struct bases"
                         _klass110315_
                         _klass210316_
                         _s110318_
                         _s210319_))))))
    (define base-struct/list
      (lambda (_all-supers10199_)
        (let* ((_all-supers1020010225_ _all-supers10199_)
               (_E1020510229_
                (lambda ()
                  (error '"No clause matching" _all-supers1020010225_))))
          (let ((_K1022310312_ (lambda () '#f))
                (_K1022010298_
                 (lambda (_x10296_)
                   (let () (declare (not safe)) (base-struct/1 _x10296_))))
                (_K1021510275_
                 (lambda (_y10272_ _x10273_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x10273_ _y10272_))))
                (_K1020610236_
                 (lambda (_y10233_ _x10234_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x10234_ _y10233_)))))
            (let* ((___match1064710648_
                    (lambda (_hd1020710239_ _tl1020810241_)
                      (let ((_x10244_ _hd1020710239_))
                        (letrec ((_splice-rest1021010246_
                                  (lambda (_rest1021410253_ _y10255_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest1021410253_))
                                        (let ()
                                          (declare (not safe))
                                          (_K1020610236_ _y10255_ _x10244_))
                                        (let ()
                                          (declare (not safe))
                                          (_E1020510229_)))))
                                 (_splice-try1021210248_
                                  (lambda (_hd1021310257_
                                           _rest1021410259_
                                           _y1020910260_)
                                    (let ((_y10263_ _hd1021310257_))
                                      (let ((__tmp10694
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest1021410259_)))
                                            (__tmp10693
                                             (let ()
                                               (declare (not safe))
                                               (cons _y10263_ _y1020910260_))))
                                        (declare (not safe))
                                        (_splice-loop1021110250_
                                         __tmp10694
                                         __tmp10693)))))
                                 (_splice-loop1021110250_
                                  (lambda (_rest1021410265_ _y1020910266_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest1021410265_))
                                        (let ((__tmp10696
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest1021410265_))))
                                          (declare (not safe))
                                          (_splice-try1021210248_
                                           __tmp10696
                                           _rest1021410265_
                                           _y1020910266_))
                                        (let ((__tmp10695
                                               (reverse _y1020910266_)))
                                          (declare (not safe))
                                          (_splice-rest1021010246_
                                           _rest1021410265_
                                           __tmp10695))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop1021110250_ _tl1020810241_ '()))))))
                   (_try-match1020210308_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers1020010225_))
                          (let ((_tl1022210303_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers1020010225_)))
                                (_hd1022110301_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers1020010225_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1022210303_))
                                (let ((_x10306_ _hd1022110301_))
                                  (declare (not safe))
                                  (base-struct/1 _x10306_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1022210303_))
                                    (let ((_tl1021910287_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1022210303_)))
                                          (_hd1021810285_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1022210303_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1021910287_))
                                          (let ((_x10283_ _hd1022110301_)
                                                (_y10290_ _hd1021810285_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1021510275_
                                               _y10290_
                                               _x10283_)))
                                          (___match1064710648_
                                           _hd1022110301_
                                           _tl1022210303_)))
                                    (___match1064710648_
                                     _hd1022110301_
                                     _tl1022210303_))))
                          (let () (declare (not safe)) (_E1020510229_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers1020010225_))
                  (let () (declare (not safe)) (_K1022310312_))
                  (let () (declare (not safe)) (_try-match1020210308_))))))))
    (define base-struct*
      (lambda _all-supers10197_
        (let () (declare (not safe)) (base-struct/list _all-supers10197_))))
    (define base-struct
      (lambda _all-supers10195_ (apply base-struct/list _all-supers10195_)))
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
               (_next-slot10122_ (vector-length _previous-slots10120_))
               (_slot-table10124_
                (if _super-struct10116_
                    (let ((__tmp10697
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct10116_))))
                      (declare (not safe))
                      (hash-copy __tmp10697))
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
                        (let ((__tmp10698 (symbol->keyword _slot10128_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table10124_
                           __tmp10698
                           _next-slot10122_))
                        (set! _r-slots10126_
                              (let ()
                                (declare (not safe))
                                (cons _slot10128_ _r-slots10126_)))
                        (set! _next-slot10122_
                              (let ()
                                (declare (not safe))
                                (fx+ _next-slot10122_ '1)))))))
               (_process-slots10136_
                (lambda (_g1013110133_)
                  (for-each _process-slot10130_ _g1013110133_))))
          (for-each
           (lambda (_mixin10139_)
             (if (let () (declare (not safe)) (type-struct? _mixin10139_))
                 '#!void
                 (let ((__tmp10699
                        (let ((__tmp10700
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin10139_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp10700 '()))))
                   (declare (not safe))
                   (_process-slots10136_ __tmp10699))))
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
               (let ((__tmp10701
                      (lambda (_klass10078_)
                        (let ((__tmp10702
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass10078_))))
                          (declare (not safe))
                          (not __tmp10702)))))
                 (declare (not safe))
                 (find __tmp10701 _direct-supers10073_))))
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
               (_g10703_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super10094_
                   _precedence-list10096_
                   _direct-slots10074_))))
          (begin
            (let ((_g10704_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g10703_) (##vector-length _g10703_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g10704_ 2)))
                  (error "Context expects 2 values" _g10704_)))
            (let ((_all-slots10098_
                   (let () (declare (not safe)) (##vector-ref _g10703_ 0)))
                  (_slot-table10099_
                   (let () (declare (not safe)) (##vector-ref _g10703_ 1))))
              (let* ((_properties10101_
                      (let ((__tmp10707
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots10074_)))
                            (__tmp10705
                             (let ((__tmp10706
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers10073_))))
                               (declare (not safe))
                               (cons __tmp10706 _properties10075_))))
                        (declare (not safe))
                        (cons __tmp10707 __tmp10705)))
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
        (let ((__tmp10708
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass10069_))))
          (declare (not safe))
          (cons _klass10069_ __tmp10708))))
    (define struct-precedence-list
      (lambda (_strukt10064_)
        (let ((__tmp10709
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
          (cons _strukt10064_ __tmp10709))))
    (define class-linearize-mixins
      (lambda (_klass-lst10062_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst10062_
           class-precedence-list
           eqv?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass10052_)
        (if (let () (declare (not safe)) (type-final? _klass10052_))
            (lambda (_g1005310055_)
              (let ((__tmp10710
                     (let () (declare (not safe)) (##type-id _klass10052_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g1005310055_ __tmp10710)))
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
               (let ((__tmp10711
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass10039_))))
                 (declare (not safe))
                 (table-ref __tmp10711 _slot10040_ '#f))))
          (if (or (let () (declare (not safe)) (type-final? _klass10039_))
                  (let () (declare (not safe)) (type-struct? _klass10039_)))
              (_if-struct10041_ _klass10039_ _field10045_)
              (if (let ((_strukt10050_
                         (let ()
                           (declare (not safe))
                           (base-struct/1 _klass10039_))))
                    (and _strukt10050_
                         (< _field10045_
                            (vector-length
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _strukt10050_))))))
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
          (if (let ((__tmp10712
                     (let () (declare (not safe)) (##type-id _klass10025_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10029_ __tmp10712))
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
          (if (let ((__tmp10713
                     (let () (declare (not safe)) (##type-id _klass10009_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10013_ __tmp10713))
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
          (if (let ((__tmp10714
                     (let () (declare (not safe)) (##type-id _klass10000_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10004_ __tmp10714))
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
          (if (let ((__tmp10715
                     (let () (declare (not safe)) (##type-id _klass9990_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9994_ __tmp10715))
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
        (let ((__tmp10716
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass9982_))))
          (declare (not safe))
          (table-ref __tmp10716 _slot9983_ '#f))))
    (define class-slot-ref
      (lambda (_klass9976_ _obj9977_ _slot9978_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9976_ _obj9977_))
            (let ((_off9980_
                   (let ((__tmp10717
                          (let ()
                            (declare (not safe))
                            (object-type _obj9977_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10717 _slot9978_))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9977_ _off9980_ _klass9976_ '#f))
            (error '"not an instance" _klass9976_ _obj9977_))))
    (define class-slot-set!
      (lambda (_klass9969_ _obj9970_ _slot9971_ _val9972_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9969_ _obj9970_))
            (let ((_off9974_
                   (let ((__tmp10718
                          (let ()
                            (declare (not safe))
                            (object-type _obj9970_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10718 _slot9971_))))
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
                (let ((__tmp10719
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class9959_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id9962_ __tmp10719))))
          (if _$e9964_
              _$e9964_
              (let ((__tmp10721
                     (lambda (_super-class9967_)
                       (let ((__tmp10722
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class9967_))))
                         (declare (not safe))
                         (eq? __tmp10722 _maybe-super-class-id9962_))))
                    (__tmp10720
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class9959_))))
                (declare (not safe))
                (ormap1 __tmp10721 __tmp10720))))))
    (define class-subtype?
      (lambda (_maybe-super-class9956_ _maybe-sub-class9957_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class9957_ _maybe-super-class9956_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9953_ _obj9954_)
        (let ((__tmp10723
               (let () (declare (not safe)) (##type-id _klass9953_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9954_ __tmp10723))))
    (define struct-instance?
      (lambda (_klass9950_ _obj9951_)
        (let ((__tmp10724
               (let () (declare (not safe)) (##type-id _klass9950_))))
          (declare (not safe))
          (##structure-instance-of? _obj9951_ __tmp10724))))
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
        (let ((__tmp10725 (let () (declare (not safe)) (##fx+ _k9943_ '1))))
          (declare (not safe))
          (make-object*__% _klass9942_ __tmp10725))))
    (define make-object*__%
      (lambda (_klass9927_ _k9928_)
        (let ((_obj9930_
               (let () (declare (not safe)) (##make-vector _k9928_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9930_ '0 _klass9927_))
          (let ((__tmp10726 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9930_ __tmp10726))
          _obj9930_)))
    (define make-object*__0
      (lambda (_klass9935_)
        (let ((_k9937_ (vector-length
                        (let ()
                          (declare (not safe))
                          (type-descriptor-all-slots _klass9935_)))))
          (declare (not safe))
          (make-object*__% _klass9935_ _k9937_))))
    (define make-object*
      (lambda _g10728_
        (let ((_g10727_ (let () (declare (not safe)) (##length _g10728_))))
          (cond ((let () (declare (not safe)) (##fx= _g10727_ 1))
                 (apply (lambda (_klass9935_)
                          (let ()
                            (declare (not safe))
                            (make-object*__0 _klass9935_)))
                        _g10728_))
                ((let () (declare (not safe)) (##fx= _g10727_ 2))
                 (apply (lambda (_klass9939_ _k9940_)
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9939_ _k9940_)))
                        _g10728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-object*
                  _g10728_))))))
    (define make-struct-instance
      (lambda (_klass9913_ . _args9914_)
        (let* ((_all-slots9916_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass9913_)))
               (_size9918_ (vector-length _all-slots9916_)))
          (let ((_$e9921_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass9913_))))
            (if _$e9921_
                ((lambda (_kons-id9924_)
                   (let ((__tmp10731
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9913_ _size9918_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass9913_
                      _kons-id9924_
                      __tmp10731
                      _args9914_)))
                 _$e9921_)
                (if (let ((__tmp10730
                           (let () (declare (not safe)) (##fx- _size9918_ '1)))
                          (__tmp10729 (length _args9914_)))
                      (declare (not safe))
                      (##fx= __tmp10730 __tmp10729))
                    (apply ##structure _klass9913_ _args9914_)
                    (error '"Arguments don't match object size"
                           _klass9913_
                           (let () (declare (not safe)) (##fx- _size9918_ '1))
                           _args9914_)))))))
    (define make-class-instance
      (lambda (_klass9903_ . _args9904_)
        (let* ((_obj9906_
                (let ((__tmp10732
                       (vector-length
                        (let ()
                          (declare (not safe))
                          (type-descriptor-all-slots _klass9903_)))))
                  (declare (not safe))
                  (make-object*__% _klass9903_ __tmp10732)))
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
        (if (let ((__tmp10734 (length _args9901_))
                  (__tmp10733
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9900_))))
              (declare (not safe))
              (##fx< __tmp10734 __tmp10733))
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
                    (let ((__tmp10735
                           (let () (declare (not safe)) (##fx+ _k9864_ '1))))
                      (declare (not safe))
                      (_lp9862_ __tmp10735 _rest9885_)))))
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
        (let ((__tmp10736
               (let () (declare (not safe)) (object-type _obj9856_))))
          (declare (not safe))
          (__class-instance-init! __tmp10736 _obj9856_ _args9857_))))
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
                                      (let ((__tmp10742
                                             (vector-length _all-slots9772_)))
                                        (declare (not safe))
                                        (##fx- __tmp10742 '1)))
                                     (_plist9777_ '()))
                      (if (let () (declare (not safe)) (##fx< _index9776_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass9770_ _plist9777_))
                          (let ((_slot9779_
                                 (vector-ref _all-slots9772_ _index9776_)))
                            (let ((__tmp10741
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index9776_ '1)))
                                  (__tmp10737
                                   (let ((__tmp10740
                                          (symbol->keyword _slot9779_))
                                         (__tmp10738
                                          (let ((__tmp10739
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj9768_
                                                    _index9776_))))
                                            (declare (not safe))
                                            (cons __tmp10739 _plist9777_))))
                                     (declare (not safe))
                                     (cons __tmp10740 __tmp10738))))
                              (declare (not safe))
                              (_loop9774_ __tmp10741 __tmp10737))))))
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
        (let ((__tmp10743
               (let ((__tmp10744
                      (let () (declare (not safe)) (object-type _obj9758_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10744 _slot9759_))))
          (declare (not safe))
          (unchecked-field-ref _obj9758_ __tmp10743))))
    (define unchecked-slot-set!
      (lambda (_obj9754_ _slot9755_ _val9756_)
        (let ((__tmp10745
               (let ((__tmp10746
                      (let () (declare (not safe)) (object-type _obj9754_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10746 _slot9755_))))
          (declare (not safe))
          (unchecked-field-set! _obj9754_ __tmp10745 _val9756_))))
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
      (lambda _g10748_
        (let ((_g10747_ (let () (declare (not safe)) (##length _g10748_))))
          (cond ((let () (declare (not safe)) (##fx= _g10747_ 2))
                 (apply (lambda (_obj9745_ _slot9746_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9745_ _slot9746_)))
                        _g10748_))
                ((let () (declare (not safe)) (##fx= _g10747_ 3))
                 (apply (lambda (_obj9750_ _slot9751_ _E9752_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9750_ _slot9751_ _E9752_)))
                        _g10748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10748_))))))
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
      (lambda _g10750_
        (let ((_g10749_ (let () (declare (not safe)) (##length _g10750_))))
          (cond ((let () (declare (not safe)) (##fx= _g10749_ 3))
                 (apply (lambda (_obj9718_ _slot9719_ _val9720_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9718_ _slot9719_ _val9720_)))
                        _g10750_))
                ((let () (declare (not safe)) (##fx= _g10749_ 4))
                 (apply (lambda (_obj9724_ _slot9725_ _val9726_ _E9727_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9724_
                             _slot9725_
                             _val9726_
                             _E9727_)))
                        _g10750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10750_))))))
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
            (let ((__tmp10751
                   (let () (declare (not safe)) (object-type _obj9686_))))
              (declare (not safe))
              (find-method __tmp10751 _id9687_))
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
        (let ((__tmp10752
               (lambda (_g96469648_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g96469648_ _id9645_)))))
          (declare (not safe))
          (ormap1 __tmp10752 _mixins9644_))))
    (define builtin-find-method
      (lambda (_klass9638_ _id9639_)
        (if (let () (declare (not safe)) (##type? _klass9638_))
            (let ((_$e9641_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9638_ _id9639_))))
              (if _$e9641_
                  _$e9641_
                  (let ((__tmp10753
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9638_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10753 _id9639_))))
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
        (let ((__tmp10754
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass9627_))))
          (declare (not safe))
          (mixin-find-method __tmp10754 _id9628_))))
    (define builtin-method-ref
      (lambda (_klass9619_ _id9620_)
        (let ((_$e9622_
               (let ((__tmp10755
                      (let () (declare (not safe)) (##type-id _klass9619_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10755 '#f))))
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
                                (let ((__tmp10756
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9585_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10756
                                   '#f))))
                           (if _$e9596_
                               _$e9596_
                               (let ((_ht9599_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10757
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9585_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10757
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
      (lambda _g10759_
        (let ((_g10758_ (let () (declare (not safe)) (##length _g10759_))))
          (cond ((let () (declare (not safe)) (##fx= _g10758_ 3))
                 (apply (lambda (_klass9608_ _id9609_ _proc9610_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9608_ _id9609_ _proc9610_)))
                        _g10759_))
                ((let () (declare (not safe)) (##fx= _g10758_ 4))
                 (apply (lambda (_klass9614_ _id9615_ _proc9616_ _rebind?9617_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9614_
                             _id9615_
                             _proc9616_
                             _rebind?9617_)))
                        _g10759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10759_))))))
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
                                (let ((__tmp10760
                                       (lambda (_id9578_ _proc9579_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9566_
                                            _id9578_
                                            _proc9579_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10760 _tab9576_))))
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
                      (let ((__tmp10761
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
                                               (let ((__tmp10762
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9548_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp10762
                                                  '"::["
                                                  _id9555_
                                                  '"]"))))
                                          (eval (let ((__tmp10763
                                                       (let ((__tmp10764
                                                              (let ((__tmp10765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10766
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9563_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10766))))
                        (declare (not safe))
                        (cons __tmp10765 '()))))
                 (declare (not safe))
                 (cons _gid9564_ __tmp10764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10763)))
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
                        (table-for-each __tmp10761 _mtab9553_))
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
                          (if (let ((__tmp10769
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass9527_))))
                                (declare (not safe))
                                (eq? _type-id9502_ __tmp10769))
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
                    (if (let ((__tmp10768
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9543_))))
                          (declare (not safe))
                          (eq? _type-id9502_ __tmp10768))
                        (let ((__tmp10767
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9543_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10767 _id9499_))
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
