(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1701931848)
  (begin
    (define type-id
      (lambda (_klass10672_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10672_))
            (let () (declare (not safe)) (##type-id _klass10672_))
            (if (let () (declare (not safe)) (not _klass10672_))
                '#f
                (error '"Not a class or #f" _klass10672_)))))
    (define type=?
      (lambda (_x10669_ _y10670_)
        (let ((__tmp10697 (let () (declare (not safe)) (type-id _x10669_)))
              (__tmp10696 (let () (declare (not safe)) (type-id _y10670_))))
          (declare (not safe))
          (eq? __tmp10697 __tmp10696))))
    (define type-descriptor?
      (lambda (_klass10667_)
        (if (let () (declare (not safe)) (##type? _klass10667_))
            (let ((__tmp10698
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10667_))))
              (declare (not safe))
              (eq? __tmp10698 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass10665_)
        (let ((__tmp10699
               (let ()
                 (declare (not safe))
                 (type-descriptor-alist _klass10665_))))
          (declare (not safe))
          (assgetq 'struct: __tmp10699))))
    (define type-final?
      (lambda (_klass10663_)
        (let ((__tmp10700
               (let ()
                 (declare (not safe))
                 (type-descriptor-alist _klass10663_))))
          (declare (not safe))
          (assgetq 'final: __tmp10700))))
    (define struct-type?
      (lambda (_klass10661_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10661_))
            (let () (declare (not safe)) (type-struct? _klass10661_))
            '#f)))
    (define class-type?
      (lambda (_klass10659_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10659_))
            (let ((__tmp10701
                   (let () (declare (not safe)) (type-struct? _klass10659_))))
              (declare (not safe))
              (not __tmp10701))
            '#f)))
    (define alist-form
      (lambda (_alist10625_)
        (map (lambda (_e1062610628_)
               (let* ((_g1063010637_ _e1062610628_)
                      (_E1063210641_
                       (lambda () (error '"No clause matching" _g1063010637_)))
                      (_K1063310647_
                       (lambda (_val10644_ _key10645_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key10645_ 'direct-supers:))
                             (let ((__tmp10702 (map type-id _val10644_)))
                               (declare (not safe))
                               (cons _key10645_ __tmp10702))
                             (let ()
                               (declare (not safe))
                               (cons _key10645_ _val10644_))))))
                 (if (let () (declare (not safe)) (##pair? _g1063010637_))
                     (let ((_hd1063410650_
                            (let ()
                              (declare (not safe))
                              (##car _g1063010637_)))
                           (_tl1063510652_
                            (let ()
                              (declare (not safe))
                              (##cdr _g1063010637_))))
                       (let* ((_key10655_ _hd1063410650_)
                              (_val10657_ _tl1063510652_))
                         (declare (not safe))
                         (_K1063310647_ _val10657_ _key10655_)))
                     (let () (declare (not safe)) (_E1063210641_)))))
             _alist10625_)))
    (define make-type-descriptor
      (lambda (_type-id10615_
               _type-name10616_
               _type-super10617_
               _rtd-mixin10618_
               _rtd-fields10619_
               _rtd-plist10620_
               _rtd-ctor10621_
               _rtd-slots10622_
               _rtd-methods10623_)
        (let ()
          (declare (not safe))
          (make-type-descriptor*
           _type-id10615_
           _type-name10616_
           _type-super10617_
           _rtd-mixin10618_
           _rtd-fields10619_
           _rtd-plist10620_
           _rtd-ctor10621_
           _rtd-slots10622_
           _rtd-methods10623_))))
    (define make-type-descriptor*
      (lambda (_type-id10527_
               _type-name10528_
               _type-super10529_
               _precedence-list10530_
               _all-slots10531_
               _alist10532_
               _constructor10533_
               _slot-table10534_
               _methods10535_)
        (letrec ((_put-props!10537_
                  (lambda (_ht10587_ _key10588_)
                    (letrec ((_put-slots!10590_
                              (lambda (_ht10608_ _slots10609_)
                                (for-each
                                 (lambda (_g1061010612_)
                                   (let ()
                                     (declare (not safe))
                                     (table-set! _ht10608_ _g1061010612_ '#t)))
                                 _slots10609_)))
                             (_put-alist!10591_
                              (lambda (_ht10597_ _key10598_ _alist10599_)
                                (let ((_$e10601_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10598_ _alist10599_))))
                                  (if _$e10601_
                                      ((lambda (_g1060310605_)
                                         (let ()
                                           (declare (not safe))
                                           (_put-slots!10590_
                                            _ht10597_
                                            _g1060310605_)))
                                       _$e10601_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!10591_ _ht10587_ _key10588_ _alist10532_))
                      (for-each
                       (lambda (_mixin10593_)
                         (let ((_alist10595_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-alist _mixin10593_))))
                           (if (let ()
                                 (declare (not safe))
                                 (assgetq 'transparent: _alist10595_))
                               (let ((__tmp10703
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin10593_))))))
                                 (declare (not safe))
                                 (_put-slots!10590_ _ht10587_ __tmp10703))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!10591_
                                  _ht10587_
                                  _key10588_
                                  _alist10595_)))))
                       _precedence-list10530_)))))
          (let* ((_transparent?10539_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _alist10532_)))
                 (_all-slots-printable?10544_
                  (let ((_$e10541_ _transparent?10539_))
                    (if _$e10541_
                        _$e10541_
                        (let ()
                          (declare (not safe))
                          (assgetq 'print: _alist10532_)))))
                 (_printable10548_
                  (if _all-slots-printable?10544_
                      '#f
                      (let ((_ht10546_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10537_ _ht10546_ 'print:))
                        _ht10546_)))
                 (_all-slots-equalable?10553_
                  (let ((_$e10550_ _transparent?10539_))
                    (if _$e10550_
                        _$e10550_
                        (let ()
                          (declare (not safe))
                          (assgetq 'equal: _alist10532_)))))
                 (_equalable10557_
                  (if _all-slots-equalable?10553_
                      '#f
                      (let ((_ht10555_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10537_ _ht10555_ 'equal:))
                        _ht10555_)))
                 (_first-new-field10559_
                  (if _type-super10529_
                      (vector-length
                       (let ()
                         (declare (not safe))
                         (type-descriptor-all-slots _type-super10529_)))
                      '1))
                 (_field-info-length10561_
                  (* '3
                     (- (vector-length _all-slots10531_)
                        _first-new-field10559_)))
                 (_field-info10563_ (make-vector _field-info-length10561_ '#f))
                 (_opaque?10568_
                  (let ((_$e10565_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?10553_))))
                    (if _$e10565_
                        _$e10565_
                        (if _type-super10529_
                            (let ((__tmp10704
                                   (let ((__tmp10705
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super10529_))))
                                     (declare (not safe))
                                     (##fxand __tmp10705 '1))))
                              (declare (not safe))
                              (##fx= __tmp10704 '1))
                            '#f)))))
            (let _loop10571_ ((_i10573_ _first-new-field10559_) (_j10574_ '0))
              (if (< _j10574_ _field-info-length10561_)
                  (let* ((_slot10576_ (vector-ref _all-slots10531_ _i10573_))
                         (_flags10584_
                          (if _transparent?10539_
                              '0
                              (let ((__tmp10707
                                     (if (or _all-slots-printable?10544_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable10548_
                                                _slot10576_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp10706
                                     (if (or _all-slots-equalable?10553_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable10557_
                                                _slot10576_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp10707 __tmp10706)))))
                    (vector-set! _field-info10563_ _j10574_ _slot10576_)
                    (vector-set!
                     _field-info10563_
                     (let () (declare (not safe)) (fx+ _j10574_ '1))
                     _flags10584_)
                    (let ((__tmp10709
                           (let () (declare (not safe)) (fx+ _i10573_ '1)))
                          (__tmp10708
                           (let () (declare (not safe)) (##fx+ _j10574_ '3))))
                      (declare (not safe))
                      (_loop10571_ __tmp10709 __tmp10708)))
                  '#!void))
            (let ((__tmp10710 (if _opaque?10568_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10527_
               _type-name10528_
               __tmp10710
               _type-super10529_
               _field-info10563_
               _precedence-list10530_
               _all-slots10531_
               _slot-table10534_
               _alist10532_
               _constructor10533_
               _methods10535_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass10525_)
        (let () (declare (not safe)) (##vector-ref _klass10525_ '6))))
    (define type-descriptor-all-slots
      (lambda (_klass10523_)
        (let () (declare (not safe)) (##vector-ref _klass10523_ '7))))
    (define type-descriptor-slot-table
      (lambda (_klass10521_)
        (let () (declare (not safe)) (##vector-ref _klass10521_ '8))))
    (define type-descriptor-alist
      (lambda (_klass10519_)
        (let () (declare (not safe)) (##vector-ref _klass10519_ '9))))
    (define type-descriptor-constructor
      (lambda (_klass10517_)
        (let () (declare (not safe)) (##vector-ref _klass10517_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10515_)
        (let () (declare (not safe)) (##vector-ref _klass10515_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10512_ _ht10513_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10512_ '11 _ht10513_))))
    (define type-descriptor-mixin type-descriptor-precedence-list)
    (define type-descriptor-plist type-descriptor-alist)
    (define type-descriptor-ctor type-descriptor-constructor)
    (define type-descriptor-fields
      (lambda (_klass10510_)
        (let ((__tmp10711
               (vector-length
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass10510_)))))
          (declare (not safe))
          (fx- __tmp10711 '1))))
    (define type-descriptor-slots
      (lambda (_klass10503_)
        (let ((_h10505_ (let () (declare (not safe)) (make-table 'test: eq?))))
          (let ((__tmp10713
                 (lambda (_k10507_ _v10508_)
                   (let ((__tmp10714
                          (let () (declare (not safe)) (fx+ _v10508_ '1))))
                     (declare (not safe))
                     (table-set! _h10505_ _k10507_ __tmp10714))))
                (__tmp10712
                 (let ()
                   (declare (not safe))
                   (type-descriptor-slot-table _klass10503_))))
            (declare (not safe))
            (table-for-each __tmp10713 __tmp10712))
          _h10505_)))
    (define type-descriptor-sealed?
      (lambda (_klass10501_)
        (let ((__tmp10715
               (let () (declare (not safe)) (##type-flags _klass10501_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10715))))
    (define type-descriptor-seal!
      (lambda (_klass10499_)
        (let ((__tmp10716
               (let ((__tmp10718
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10717
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10499_))))
                 (declare (not safe))
                 (##fxior __tmp10718 __tmp10717))))
          (declare (not safe))
          (##vector-set! _klass10499_ '3 __tmp10716))))
    (define make-struct-type__%
      (lambda (_id10464_
               _super10465_
               _n-direct-slots10466_
               _name10467_
               _alist10468_
               _constructor10469_
               _direct-slots10470_)
        (let ((__tmp10719
               (let ((_$e10472_ _direct-slots10470_))
                 (if _$e10472_
                     _$e10472_
                     (map (lambda (_g1047410476_)
                            (let ()
                              (declare (not safe))
                              (make-symbol__1 '"_" _g1047410476_)))
                          (let ((__tmp10720
                                 (if _super10465_
                                     (vector-length
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-all-slots
                                         _super10465_)))
                                     '1)))
                            (declare (not safe))
                            (iota _n-direct-slots10466_ __tmp10720)))))))
          (declare (not safe))
          (make-struct-type*
           _id10464_
           _name10467_
           _super10465_
           __tmp10719
           _alist10468_
           _constructor10469_))))
    (define make-struct-type__0
      (lambda (_id10482_
               _super10483_
               _n-direct-slots10484_
               _name10485_
               _alist10486_
               _constructor10487_)
        (let ((_direct-slots10489_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10482_
           _super10483_
           _n-direct-slots10484_
           _name10485_
           _alist10486_
           _constructor10487_
           _direct-slots10489_))))
    (define make-struct-type
      (lambda _g10722_
        (let ((_g10721_ (let () (declare (not safe)) (##length _g10722_))))
          (cond ((let () (declare (not safe)) (##fx= _g10721_ 6))
                 (apply (lambda (_id10482_
                                 _super10483_
                                 _n-direct-slots10484_
                                 _name10485_
                                 _alist10486_
                                 _constructor10487_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10482_
                             _super10483_
                             _n-direct-slots10484_
                             _name10485_
                             _alist10486_
                             _constructor10487_)))
                        _g10722_))
                ((let () (declare (not safe)) (##fx= _g10721_ 7))
                 (apply (lambda (_id10491_
                                 _super10492_
                                 _n-direct-slots10493_
                                 _name10494_
                                 _alist10495_
                                 _constructor10496_
                                 _direct-slots10497_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10491_
                             _super10492_
                             _n-direct-slots10493_
                             _name10494_
                             _alist10495_
                             _constructor10496_
                             _direct-slots10497_)))
                        _g10722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10722_))))))
    (define make-struct-type*
      (lambda (_id10444_
               _name10445_
               _super10446_
               _direct-slots10447_
               _alist10448_
               _constructor10449_)
        (if (and _super10446_
                 (let ((__tmp10723
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10446_))))
                   (declare (not safe))
                   (not __tmp10723)))
            (error '"Illegal super type; not a struct-type" _super10446_)
            '#!void)
        (let* ((_type10451_
                (let ((__tmp10726
                       (if _super10446_
                           (let ()
                             (declare (not safe))
                             (cons _super10446_ '()))
                           '()))
                      (__tmp10724
                       (let ((__tmp10725
                              (let ()
                                (declare (not safe))
                                (cons 'struct: '#t))))
                         (declare (not safe))
                         (cons __tmp10725 _alist10448_))))
                  (declare (not safe))
                  (make-class-type*
                   _id10444_
                   _name10445_
                   __tmp10726
                   _direct-slots10447_
                   __tmp10724
                   _constructor10449_)))
               (_all-slots10453_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type10451_)))
               (_len10455_ (length _direct-slots10447_))
               (_start10457_ (- (vector-length _all-slots10453_) _len10455_)))
          (if (let ((__tmp10728
                     (lambda (_slot10460_ _i10461_)
                       (let ((__tmp10729
                              (vector-ref _all-slots10453_ _i10461_)))
                         (declare (not safe))
                         (eq? _slot10460_ __tmp10729))))
                    (__tmp10727
                     (let ()
                       (declare (not safe))
                       (iota _len10455_ _start10457_))))
                (declare (not safe))
                (andmap2 __tmp10728 _direct-slots10447_ __tmp10727))
              '#!void
              (error '"Non-unique slots in struct"
                     _name10445_
                     _direct-slots10447_))
          _type10451_)))
    (define make-struct-predicate
      (lambda (_klass10436_)
        (let ((_tid10438_
               (let () (declare (not safe)) (##type-id _klass10436_))))
          (if (let () (declare (not safe)) (type-final? _klass10436_))
              (lambda (_obj10440_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10440_ _tid10438_)))
              (lambda (_obj10442_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10442_ _tid10438_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10433_ _field10434_)
        (let ((__tmp10730
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10433_ _field10434_))))
          (declare (not safe))
          (make-struct-field-accessor* _klass10433_ __tmp10730))))
    (define make-struct-field-accessor*
      (lambda (_klass10428_ _field10429_)
        (lambda (_obj10431_)
          (let ()
            (declare (not safe))
            (##structure-ref _obj10431_ _field10429_ _klass10428_ '#f)))))
    (define make-struct-field-mutator
      (lambda (_klass10425_ _field10426_)
        (let ((__tmp10731
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10425_ _field10426_))))
          (declare (not safe))
          (make-struct-field-mutator* _klass10425_ __tmp10731))))
    (define make-struct-field-mutator*
      (lambda (_klass10419_ _field10420_)
        (lambda (_obj10422_ _val10423_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj10422_
             _val10423_
             _field10420_
             _klass10419_
             '#f)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10416_ _field10417_)
        (let ((__tmp10732
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10416_ _field10417_))))
          (declare (not safe))
          (make-struct-field-unchecked-accessor* _klass10416_ __tmp10732))))
    (define make-struct-field-unchecked-accessor*
      (lambda (_klass10411_ _field10412_)
        (lambda (_obj10414_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj10414_
             _field10412_
             _klass10411_
             '#f)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10408_ _field10409_)
        (let ((__tmp10733
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass10408_ _field10409_))))
          (declare (not safe))
          (make-struct-field-unchecked-mutator* _klass10408_ __tmp10733))))
    (define make-struct-field-unchecked-mutator*
      (lambda (_klass10402_ _field10403_)
        (lambda (_obj10405_ _val10406_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj10405_
             _val10406_
             _field10403_
             _klass10402_
             '#f)))))
    (define struct-field-offset*
      (lambda (_klass10396_ _field10397_)
        (let ((__tmp10734
               (let ((_$e10399_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10396_))))
                 (if _$e10399_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10399_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10397_ __tmp10734 '1))))
    (define struct-field-ref
      (lambda (_klass10392_ _obj10393_ _field10394_)
        (let ()
          (declare (not safe))
          (##structure-ref _obj10393_ _field10394_ _klass10392_ '#f))))
    (define struct-field-set!
      (lambda (_klass10387_ _obj10388_ _field10389_ _val10390_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _obj10388_
           _val10390_
           _field10389_
           _klass10387_
           '#f))))
    (define substruct?
      (lambda (_maybe-sub-struct10378_ _maybe-super-struct10379_)
        (let ((_maybe-super-struct-id10381_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct10379_))))
          (let _lp10383_ ((_super-struct10385_ _maybe-sub-struct10378_))
            (if (let () (declare (not safe)) (not _super-struct10385_))
                '#f
                (if (let ((__tmp10736
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct10385_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id10381_ __tmp10736))
                    '#t
                    (let ((__tmp10735
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct10385_))))
                      (declare (not safe))
                      (_lp10383_ __tmp10735))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct10375_ _maybe-sub-struct10376_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct10376_ _maybe-super-struct10375_))))
    (define base-struct/1
      (lambda (_klass10373_)
        (if (let () (declare (not safe)) (struct-type? _klass10373_))
            _klass10373_
            (if (let () (declare (not safe)) (class-type? _klass10373_))
                (let () (declare (not safe)) (##type-super _klass10373_))
                (if (let () (declare (not safe)) (not _klass10373_))
                    '#f
                    (error '"Not a class or false" _klass10373_))))))
    (define base-struct/2
      (lambda (_klass110361_ _klass210362_)
        (letrec* ((_s110364_
                   (let () (declare (not safe)) (base-struct/1 _klass110361_)))
                  (_s210365_
                   (let ()
                     (declare (not safe))
                     (base-struct/1 _klass210362_))))
          (if (or (let () (declare (not safe)) (not _s110364_))
                  (and _s210365_
                       (let ()
                         (declare (not safe))
                         (substruct? _s110364_ _s210365_))))
              _s210365_
              (if (or (let () (declare (not safe)) (not _s210365_))
                      (and _s110364_
                           (let ()
                             (declare (not safe))
                             (substruct? _s210365_ _s110364_))))
                  _s110364_
                  (error '"Bad mixin: incompatible struct bases"
                         _klass110361_
                         _klass210362_
                         _s110364_
                         _s210365_))))))
    (define base-struct/list
      (lambda (_all-supers10245_)
        (let* ((_all-supers1024610271_ _all-supers10245_)
               (_E1025110275_
                (lambda ()
                  (error '"No clause matching" _all-supers1024610271_))))
          (let ((_K1026910358_ (lambda () '#f))
                (_K1026610344_
                 (lambda (_x10342_)
                   (let () (declare (not safe)) (base-struct/1 _x10342_))))
                (_K1026110321_
                 (lambda (_y10318_ _x10319_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x10319_ _y10318_))))
                (_K1025210282_
                 (lambda (_y10279_ _x10280_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x10280_ _y10279_)))))
            (let* ((___match1069410695_
                    (lambda (_hd1025310285_ _tl1025410287_)
                      (let ((_x10290_ _hd1025310285_))
                        (letrec ((_splice-rest1025610292_
                                  (lambda (_rest1026010299_ _y10301_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest1026010299_))
                                        (let ()
                                          (declare (not safe))
                                          (_K1025210282_ _y10301_ _x10290_))
                                        (let ()
                                          (declare (not safe))
                                          (_E1025110275_)))))
                                 (_splice-try1025810294_
                                  (lambda (_hd1025910303_
                                           _rest1026010305_
                                           _y1025510306_)
                                    (let ((_y10309_ _hd1025910303_))
                                      (let ((__tmp10738
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest1026010305_)))
                                            (__tmp10737
                                             (let ()
                                               (declare (not safe))
                                               (cons _y10309_ _y1025510306_))))
                                        (declare (not safe))
                                        (_splice-loop1025710296_
                                         __tmp10738
                                         __tmp10737)))))
                                 (_splice-loop1025710296_
                                  (lambda (_rest1026010311_ _y1025510312_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest1026010311_))
                                        (let ((__tmp10740
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest1026010311_))))
                                          (declare (not safe))
                                          (_splice-try1025810294_
                                           __tmp10740
                                           _rest1026010311_
                                           _y1025510312_))
                                        (let ((__tmp10739
                                               (reverse _y1025510312_)))
                                          (declare (not safe))
                                          (_splice-rest1025610292_
                                           _rest1026010311_
                                           __tmp10739))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop1025710296_ _tl1025410287_ '()))))))
                   (_try-match1024810354_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers1024610271_))
                          (let ((_tl1026810349_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers1024610271_)))
                                (_hd1026710347_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers1024610271_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1026810349_))
                                (let ((_x10352_ _hd1026710347_))
                                  (declare (not safe))
                                  (base-struct/1 _x10352_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1026810349_))
                                    (let ((_tl1026510333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1026810349_)))
                                          (_hd1026410331_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1026810349_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1026510333_))
                                          (let ((_x10329_ _hd1026710347_)
                                                (_y10336_ _hd1026410331_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1026110321_
                                               _y10336_
                                               _x10329_)))
                                          (___match1069410695_
                                           _hd1026710347_
                                           _tl1026810349_)))
                                    (___match1069410695_
                                     _hd1026710347_
                                     _tl1026810349_))))
                          (let () (declare (not safe)) (_E1025110275_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers1024610271_))
                  (let () (declare (not safe)) (_K1026910358_))
                  (let () (declare (not safe)) (_try-match1024810354_))))))))
    (define base-struct*
      (lambda _all-supers10243_
        (let () (declare (not safe)) (base-struct/list _all-supers10243_))))
    (define base-struct
      (lambda _all-supers10241_ (apply base-struct/list _all-supers10241_)))
    (define find-super-ctor
      (lambda (_super10239_)
        (let () (declare (not safe)) (find-super-constructor _super10239_))))
    (define find-super-constructor
      (lambda (_super10191_)
        (let _lp10193_ ((_rest10195_ _super10191_) (_constructor10196_ '#f))
          (let* ((_rest1019710205_ _rest10195_)
                 (_else1019910213_ (lambda () _constructor10196_))
                 (_K1020110227_
                  (lambda (_rest10216_ _hd10217_)
                    (let ((_$e10219_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd10217_))))
                      (if _$e10219_
                          ((lambda (_xconstructor10222_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor10196_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor10196_
                                            _xconstructor10222_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp10193_ _rest10216_ _xconstructor10222_))
                                 (error '"Conflicting implicit constructors"
                                        _constructor10196_
                                        _xconstructor10222_)))
                           _$e10219_)
                          (let ()
                            (declare (not safe))
                            (_lp10193_ _rest10216_ _constructor10196_)))))))
            (if (let () (declare (not safe)) (##pair? _rest1019710205_))
                (let ((_hd1020210230_
                       (let () (declare (not safe)) (##car _rest1019710205_)))
                      (_tl1020310232_
                       (let () (declare (not safe)) (##cdr _rest1019710205_))))
                  (let* ((_hd10235_ _hd1020210230_)
                         (_rest10237_ _tl1020310232_))
                    (declare (not safe))
                    (_K1020110227_ _rest10237_ _hd10235_)))
                (let () (declare (not safe)) (_else1019910213_)))))))
    (define compute-class-slots
      (lambda (_super-struct10162_
               _class-precedence-list10163_
               _direct-slots10164_)
        (let* ((_previous-slots10166_
                (if _super-struct10162_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct10162_))
                    '#(#f)))
               (_next-slot10168_ (vector-length _previous-slots10166_))
               (_slot-table10170_
                (if _super-struct10162_
                    (let ((__tmp10741
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct10162_))))
                      (declare (not safe))
                      (hash-copy __tmp10741))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots10172_ '())
               (_process-slot10176_
                (lambda (_slot10174_)
                  (if (let () (declare (not safe)) (symbol? _slot10174_))
                      '#!void
                      (error '"invalid slot name" _slot10174_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table10170_ _slot10174_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table10170_
                           _slot10174_
                           _next-slot10168_))
                        (let ((__tmp10742 (symbol->keyword _slot10174_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table10170_
                           __tmp10742
                           _next-slot10168_))
                        (set! _r-slots10172_
                              (let ()
                                (declare (not safe))
                                (cons _slot10174_ _r-slots10172_)))
                        (set! _next-slot10168_
                              (let ()
                                (declare (not safe))
                                (fx+ _next-slot10168_ '1)))))))
               (_process-slots10182_
                (lambda (_g1017710179_)
                  (for-each _process-slot10176_ _g1017710179_))))
          (for-each
           (lambda (_mixin10185_)
             (if (let () (declare (not safe)) (type-struct? _mixin10185_))
                 '#!void
                 (let ((__tmp10743
                        (let ((__tmp10744
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-alist _mixin10185_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp10744 '()))))
                   (declare (not safe))
                   (_process-slots10182_ __tmp10743))))
           (reverse _class-precedence-list10163_))
          (let ()
            (declare (not safe))
            (_process-slots10182_ _direct-slots10164_))
          (let ((_all-slots10187_ (make-vector _next-slot10168_ '#f)))
            (vector-copy! _all-slots10187_ '0 _previous-slots10166_)
            (for-each
             (lambda (_slot10189_)
               (set! _next-slot10168_
                     (let () (declare (not safe)) (fx- _next-slot10168_ '1)))
               (vector-set! _all-slots10187_ _next-slot10168_ _slot10189_))
             _r-slots10172_)
            (values _all-slots10187_ _slot-table10170_)))))
    (define make-class-type
      (lambda (_id10155_
               _direct-supers10156_
               _direct-slots10157_
               _name10158_
               _alist10159_
               _constructor10160_)
        (let ()
          (declare (not safe))
          (make-class-type*
           _id10155_
           _name10158_
           _direct-supers10156_
           _direct-slots10157_
           _alist10159_
           _constructor10160_))))
    (define make-class-type*
      (lambda (_id10117_
               _name10118_
               _direct-supers10119_
               _direct-slots10120_
               _alist10121_
               _constructor10122_)
        (let ((_$e10126_
               (let ((__tmp10745
                      (lambda (_klass10124_)
                        (let ((__tmp10746
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass10124_))))
                          (declare (not safe))
                          (not __tmp10746)))))
                 (declare (not safe))
                 (find __tmp10745 _direct-supers10119_))))
          (if _$e10126_
              ((lambda (_g1012810130_)
                 (error '"Illegal super class; not a type descriptor"
                        _g1012810130_))
               _$e10126_)
              (let ((_$e10133_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers10119_))))
                (if _$e10133_
                    ((lambda (_g1013510137_)
                       (error '"Cannot extend final class" _g1013510137_))
                     _$e10133_)
                    '#!void))))
        (let* ((_struct-super10140_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers10119_)))
               (_precedence-list10142_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers10119_)))
               (_g10747_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super10140_
                   _precedence-list10142_
                   _direct-slots10120_))))
          (begin
            (let ((_g10748_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g10747_) (##vector-length _g10747_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g10748_ 2)))
                  (error "Context expects 2 values" _g10748_)))
            (let ((_all-slots10144_
                   (let () (declare (not safe)) (##vector-ref _g10747_ 0)))
                  (_slot-table10145_
                   (let () (declare (not safe)) (##vector-ref _g10747_ 1))))
              (let* ((_alist10147_
                      (let ((__tmp10751
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots10120_)))
                            (__tmp10749
                             (let ((__tmp10750
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers10119_))))
                               (declare (not safe))
                               (cons __tmp10750 _alist10121_))))
                        (declare (not safe))
                        (cons __tmp10751 __tmp10749)))
                     (_constructor*10152_
                      (let ((_$e10149_ _constructor10122_))
                        (if _$e10149_
                            _$e10149_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers10119_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor*
                   _id10117_
                   _name10118_
                   _struct-super10140_
                   _precedence-list10142_
                   _all-slots10144_
                   _alist10147_
                   _constructor*10152_
                   _slot-table10145_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass10115_)
        (let ((__tmp10752
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass10115_))))
          (declare (not safe))
          (cons _klass10115_ __tmp10752))))
    (define struct-precedence-list
      (lambda (_strukt10110_)
        (let ((__tmp10753
               (let ((_$e10112_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt10110_))))
                 (if _$e10112_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e10112_))
                     '()))))
          (declare (not safe))
          (cons _strukt10110_ __tmp10753))))
    (define class-linearize-mixins
      (lambda (_klass-lst10108_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst10108_
           class-precedence-list
           eqv?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass10098_)
        (if (let () (declare (not safe)) (type-final? _klass10098_))
            (lambda (_g1009910101_)
              (let ((__tmp10754
                     (let () (declare (not safe)) (##type-id _klass10098_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g1009910101_ __tmp10754)))
            (lambda (_g1010310105_)
              (let ()
                (declare (not safe))
                (class-instance? _klass10098_ _g1010310105_))))))
    (define if-class-slot-field
      (lambda (_klass10085_
               _slot10086_
               _if-struct10087_
               _if-struct-field10088_
               _if-class-slot10089_)
        (let ((_field10091_
               (let ((__tmp10755
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass10085_))))
                 (declare (not safe))
                 (table-ref __tmp10755 _slot10086_ '#f))))
          (if (or (let () (declare (not safe)) (type-final? _klass10085_))
                  (let () (declare (not safe)) (type-struct? _klass10085_)))
              (_if-struct10087_ _klass10085_ _field10091_)
              (if (let ((_strukt10096_
                         (let ()
                           (declare (not safe))
                           (base-struct/1 _klass10085_))))
                    (and _strukt10096_
                         (< _field10091_
                            (vector-length
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _strukt10096_))))))
                  (_if-struct-field10088_ _klass10085_ _field10091_)
                  (_if-class-slot10089_
                   _klass10085_
                   _slot10086_
                   _field10091_))))))
    (define make-class-slot-accessor
      (lambda (_klass10082_ _slot10083_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10082_
           _slot10083_
           make-struct-field-accessor*
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass10077_ _field10078_)
        (lambda (_obj10080_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass10077_ _obj10080_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10080_ _field10078_))
              (error '"Trying to get a slot of an object that is not a class instance"
                     (vector-ref
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass10077_))
                      _field10078_)
                     _obj10080_
                     _klass10077_)))))
    (define make-class-cached-slot-accessor
      (lambda (_klass10071_ _slot10072_ _field10073_)
        (lambda (_obj10075_)
          (if (let ((__tmp10756
                     (let () (declare (not safe)) (##type-id _klass10071_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10075_ __tmp10756))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10075_ _field10073_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass10071_ _obj10075_))
                  (let ()
                    (declare (not safe))
                    (slot-ref _obj10075_ _slot10072_))
                  (error '"Trying to get a slot of an object that is not a class instance"
                         _slot10072_
                         _obj10075_
                         _klass10071_))))))
    (define make-class-slot-mutator
      (lambda (_klass10068_ _slot10069_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10068_
           _slot10069_
           make-struct-field-mutator*
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass10062_ _field10063_)
        (lambda (_obj10065_ _val10066_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass10062_ _obj10065_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj10065_ _field10063_ _val10066_))
              (error '"Trying to set a slot of an object that is not a class instance"
                     (vector-ref
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass10062_))
                      _field10063_)
                     _obj10065_
                     _klass10062_
                     _val10066_)))))
    (define make-class-cached-slot-mutator
      (lambda (_klass10055_ _slot10056_ _field10057_)
        (lambda (_obj10059_ _val10060_)
          (if (let ((__tmp10757
                     (let () (declare (not safe)) (##type-id _klass10055_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10059_ __tmp10757))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj10059_ _field10057_ _val10060_))
              (let ()
                (declare (not safe))
                (slot-set! _obj10059_ _slot10056_ _val10060_))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass10052_ _slot10053_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10052_
           _slot10053_
           make-struct-field-unchecked-accessor*
           make-struct-field-unchecked-accessor*
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass10046_ _slot10047_ _field10048_)
        (lambda (_obj10050_)
          (if (let ((__tmp10758
                     (let () (declare (not safe)) (##type-id _klass10046_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10050_ __tmp10758))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj10050_ _field10048_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj10050_ _slot10047_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass10043_ _slot10044_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass10043_
           _slot10044_
           make-struct-field-unchecked-mutator*
           make-struct-field-unchecked-mutator*
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass10036_ _slot10037_ _field10038_)
        (lambda (_obj10040_ _val10041_)
          (if (let ((__tmp10759
                     (let () (declare (not safe)) (##type-id _klass10036_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj10040_ __tmp10759))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj10040_ _field10038_ _val10041_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj10040_ _slot10037_ _val10041_))))))
    (define class-slot-offset
      (lambda (_klass10031_ _slot10032_)
        (let ((_off10034_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass10031_ _slot10032_))))
          (if _off10034_
              (let () (declare (not safe)) (fx- _off10034_ '1))
              '#f))))
    (define class-slot-offset*
      (lambda (_klass10028_ _slot10029_)
        (let ((__tmp10760
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass10028_))))
          (declare (not safe))
          (table-ref __tmp10760 _slot10029_ '#f))))
    (define class-slot-ref
      (lambda (_klass10022_ _obj10023_ _slot10024_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass10022_ _obj10023_))
            (let ((_off10026_
                   (let ((__tmp10761
                          (let ()
                            (declare (not safe))
                            (object-type _obj10023_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10761 _slot10024_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10023_
               _off10026_
               _klass10022_
               '#f))
            (error '"not an instance" _klass10022_ _obj10023_))))
    (define class-slot-set!
      (lambda (_klass10015_ _obj10016_ _slot10017_ _val10018_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass10015_ _obj10016_))
            (let ((_off10020_
                   (let ((__tmp10762
                          (let ()
                            (declare (not safe))
                            (object-type _obj10016_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp10762 _slot10017_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10016_
               _val10018_
               _off10020_
               _klass10015_
               '#f))
            (error '"not an instance" _klass10015_ _obj10016_))))
    (define subclass?
      (lambda (_maybe-sub-class10005_ _maybe-super-class10006_)
        (let* ((_maybe-super-class-id10008_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class10006_)))
               (_$e10010_
                (let ((__tmp10763
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class10005_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id10008_ __tmp10763))))
          (if _$e10010_
              _$e10010_
              (let ((__tmp10765
                     (lambda (_super-class10013_)
                       (let ((__tmp10766
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class10013_))))
                         (declare (not safe))
                         (eq? __tmp10766 _maybe-super-class-id10008_))))
                    (__tmp10764
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class10005_))))
                (declare (not safe))
                (ormap1 __tmp10765 __tmp10764))))))
    (define class-subtype?
      (lambda (_maybe-super-class10002_ _maybe-sub-class10003_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class10003_ _maybe-super-class10002_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9999_ _obj10000_)
        (let ((__tmp10767
               (let () (declare (not safe)) (##type-id _klass9999_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj10000_ __tmp10767))))
    (define struct-instance?
      (lambda (_klass9996_ _obj9997_)
        (let ((__tmp10768
               (let () (declare (not safe)) (##type-id _klass9996_))))
          (declare (not safe))
          (##structure-instance-of? _obj9997_ __tmp10768))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9991_ _obj9992_)
        (if (let () (declare (not safe)) (object? _obj9992_))
            (let ((_type9994_
                   (let () (declare (not safe)) (object-type _obj9992_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9994_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type9994_ _klass9991_))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9988_ _k9989_)
        (let ((__tmp10769 (let () (declare (not safe)) (fx+ _k9989_ '1))))
          (declare (not safe))
          (make-object*__% _klass9988_ __tmp10769))))
    (define make-object*__%
      (lambda (_klass9973_ _k9974_)
        (let ((_obj9976_
               (let () (declare (not safe)) (##make-vector _k9974_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9976_ '0 _klass9973_))
          (let ((__tmp10770 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9976_ __tmp10770))
          _obj9976_)))
    (define make-object*__0
      (lambda (_klass9981_)
        (let ((_k9983_ (vector-length
                        (let ()
                          (declare (not safe))
                          (type-descriptor-all-slots _klass9981_)))))
          (declare (not safe))
          (make-object*__% _klass9981_ _k9983_))))
    (define make-object*
      (lambda _g10772_
        (let ((_g10771_ (let () (declare (not safe)) (##length _g10772_))))
          (cond ((let () (declare (not safe)) (##fx= _g10771_ 1))
                 (apply (lambda (_klass9981_)
                          (let ()
                            (declare (not safe))
                            (make-object*__0 _klass9981_)))
                        _g10772_))
                ((let () (declare (not safe)) (##fx= _g10771_ 2))
                 (apply (lambda (_klass9985_ _k9986_)
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9985_ _k9986_)))
                        _g10772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-object*
                  _g10772_))))))
    (define make-struct-instance
      (lambda (_klass9959_ . _args9960_)
        (let* ((_all-slots9962_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass9959_)))
               (_size9964_ (vector-length _all-slots9962_)))
          (let ((_$e9967_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass9959_))))
            (if _$e9967_
                ((lambda (_kons-id9970_)
                   (let ((__tmp10775
                          (let ()
                            (declare (not safe))
                            (make-object*__% _klass9959_ _size9964_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass9959_
                      _kons-id9970_
                      __tmp10775
                      _args9960_)))
                 _$e9967_)
                (if (let ((__tmp10774
                           (let () (declare (not safe)) (fx- _size9964_ '1)))
                          (__tmp10773 (length _args9960_)))
                      (declare (not safe))
                      (##fx= __tmp10774 __tmp10773))
                    (apply ##structure _klass9959_ _args9960_)
                    (error '"Arguments don't match object size"
                           _klass9959_
                           (let () (declare (not safe)) (fx- _size9964_ '1))
                           _args9960_)))))))
    (define make-class-instance
      (lambda (_klass9949_ . _args9950_)
        (let* ((_obj9952_
                (let ((__tmp10776
                       (vector-length
                        (let ()
                          (declare (not safe))
                          (type-descriptor-all-slots _klass9949_)))))
                  (declare (not safe))
                  (make-object*__% _klass9949_ __tmp10776)))
               (_$e9954_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass9949_))))
          (if _$e9954_
              ((lambda (_kons-id9957_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9949_
                    _kons-id9957_
                    _obj9952_
                    _args9950_)))
               _$e9954_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9949_ _obj9952_ _args9950_))))))
    (define struct-instance-init!
      (lambda (_obj9946_ . _args9947_)
        (if (let ((__tmp10778 (length _args9947_))
                  (__tmp10777
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9946_))))
              (declare (not safe))
              (##fx< __tmp10778 __tmp10777))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9946_ _args9947_))
            (error '"Too many arguments for struct" _obj9946_ _args9947_))))
    (define __struct-instance-init!
      (lambda (_obj9905_ _args9906_)
        (let _lp9908_ ((_k9910_ '1) (_rest9911_ _args9906_))
          (let* ((_rest99129920_ _rest9911_)
                 (_else99149928_ (lambda () _obj9905_))
                 (_K99169934_
                  (lambda (_rest9931_ _hd9932_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9905_ _k9910_ _hd9932_))
                    (let ((__tmp10779
                           (let () (declare (not safe)) (fx+ _k9910_ '1))))
                      (declare (not safe))
                      (_lp9908_ __tmp10779 _rest9931_)))))
            (if (let () (declare (not safe)) (##pair? _rest99129920_))
                (let ((_hd99179937_
                       (let () (declare (not safe)) (##car _rest99129920_)))
                      (_tl99189939_
                       (let () (declare (not safe)) (##cdr _rest99129920_))))
                  (let* ((_hd9942_ _hd99179937_) (_rest9944_ _tl99189939_))
                    (declare (not safe))
                    (_K99169934_ _rest9944_ _hd9942_)))
                (let () (declare (not safe)) (_else99149928_)))))))
    (define class-instance-init!
      (lambda (_obj9902_ . _args9903_)
        (let ((__tmp10780
               (let () (declare (not safe)) (object-type _obj9902_))))
          (declare (not safe))
          (__class-instance-init! __tmp10780 _obj9902_ _args9903_))))
    (define __class-instance-init!
      (lambda (_klass9846_ _obj9847_ _args9848_)
        (let _lp9850_ ((_rest9852_ _args9848_))
          (let* ((_rest98539863_ _rest9852_)
                 (_else98559871_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9852_))
                        _obj9847_
                        (error '"Unexpected class initializer arguments"
                               _rest9852_))))
                 (_K98579883_
                  (lambda (_rest9874_ _val9875_ _key9876_)
                    (let ((_$e9878_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset* _klass9846_ _key9876_))))
                      (if _$e9878_
                          ((lambda (_off9881_)
                             (let ()
                               (declare (not safe))
                               (##vector-set! _obj9847_ _off9881_ _val9875_))
                             (let ()
                               (declare (not safe))
                               (_lp9850_ _rest9874_)))
                           _$e9878_)
                          (error '"No slot for keyword initializer"
                                 _klass9846_
                                 _key9876_))))))
            (if (let () (declare (not safe)) (##pair? _rest98539863_))
                (let ((_hd98589886_
                       (let () (declare (not safe)) (##car _rest98539863_)))
                      (_tl98599888_
                       (let () (declare (not safe)) (##cdr _rest98539863_))))
                  (let ((_key9891_ _hd98589886_))
                    (if (let () (declare (not safe)) (##pair? _tl98599888_))
                        (let ((_hd98609893_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl98599888_)))
                              (_tl98619895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl98599888_))))
                          (let* ((_val9898_ _hd98609893_)
                                 (_rest9900_ _tl98619895_))
                            (declare (not safe))
                            (_K98579883_ _rest9900_ _val9898_ _key9891_)))
                        (let () (declare (not safe)) (_else98559871_)))))
                (let () (declare (not safe)) (_else98559871_)))))))
    (define constructor-init!
      (lambda (_klass9841_ _kons-id9842_ _obj9843_ . _args9844_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9841_
           _kons-id9842_
           _obj9843_
           _args9844_))))
    (define __constructor-init!
      (lambda (_klass9831_ _kons-id9832_ _obj9833_ _args9834_)
        (let ((_$e9836_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9831_ _kons-id9832_))))
          (if _$e9836_
              ((lambda (_kons9839_)
                 (apply _kons9839_ _obj9833_ _args9834_)
                 _obj9833_)
               _$e9836_)
              (error '"Missing constructor" _klass9831_ _kons-id9832_)))))
    (define struct-copy
      (lambda (_struct9829_)
        (if (let () (declare (not safe)) (##structure? _struct9829_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9829_))
        (let () (declare (not safe)) (##structure-copy _struct9829_))))
    (define struct->list
      (lambda (_obj9827_)
        (if (let () (declare (not safe)) (object? _obj9827_))
            (let () (declare (not safe)) (##vector->list _obj9827_))
            (error '"Not an object" _obj9827_))))
    (define class->list
      (lambda (_obj9814_)
        (if (let () (declare (not safe)) (object? _obj9814_))
            (let ((_klass9816_
                   (let () (declare (not safe)) (object-type _obj9814_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9816_))
                  (let ((_all-slots9818_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass9816_))))
                    (let _loop9820_ ((_index9822_
                                      (let ((__tmp10786
                                             (vector-length _all-slots9818_)))
                                        (declare (not safe))
                                        (fx- __tmp10786 '1)))
                                     (_plist9823_ '()))
                      (if (< _index9822_ '1)
                          (let ()
                            (declare (not safe))
                            (cons _klass9816_ _plist9823_))
                          (let ((_slot9825_
                                 (vector-ref _all-slots9818_ _index9822_)))
                            (let ((__tmp10785
                                   (let ()
                                     (declare (not safe))
                                     (fx- _index9822_ '1)))
                                  (__tmp10781
                                   (let ((__tmp10784
                                          (symbol->keyword _slot9825_))
                                         (__tmp10782
                                          (let ((__tmp10783
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj9814_
                                                    _index9822_))))
                                            (declare (not safe))
                                            (cons __tmp10783 _plist9823_))))
                                     (declare (not safe))
                                     (cons __tmp10784 __tmp10782))))
                              (declare (not safe))
                              (_loop9820_ __tmp10785 __tmp10781))))))
                  (error '"Not a class type" _obj9814_ _klass9816_)))
            (error '"Not an object" _obj9814_))))
    (define unchecked-field-ref
      (lambda (_obj9811_ _off9812_)
        (let () (declare (not safe)) (##vector-ref _obj9811_ _off9812_))))
    (define unchecked-field-set!
      (lambda (_obj9807_ _off9808_ _val9809_)
        (let ()
          (declare (not safe))
          (##vector-set! _obj9807_ _off9808_ _val9809_))))
    (define unchecked-slot-ref
      (lambda (_obj9804_ _slot9805_)
        (let ((__tmp10787
               (let ((__tmp10788
                      (let () (declare (not safe)) (object-type _obj9804_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10788 _slot9805_))))
          (declare (not safe))
          (unchecked-field-ref _obj9804_ __tmp10787))))
    (define unchecked-slot-set!
      (lambda (_obj9800_ _slot9801_ _val9802_)
        (let ((__tmp10789
               (let ((__tmp10790
                      (let () (declare (not safe)) (object-type _obj9800_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp10790 _slot9801_))))
          (declare (not safe))
          (unchecked-field-set! _obj9800_ __tmp10789 _val9802_))))
    (define slot-ref__%
      (lambda (_obj9776_ _slot9777_ _E9778_)
        (if (let () (declare (not safe)) (object? _obj9776_))
            (let* ((_klass9780_
                    (let () (declare (not safe)) (object-type _obj9776_)))
                   (_$e9783_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9780_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass9780_ _slot9777_))
                        '#f)))
              (if _$e9783_
                  ((lambda (_off9786_)
                     (let ()
                       (declare (not safe))
                       (##vector-ref _obj9776_ _off9786_)))
                   _$e9783_)
                  (_E9778_ _obj9776_ _slot9777_)))
            (_E9778_ _obj9776_ _slot9777_))))
    (define slot-ref__0
      (lambda (_obj9791_ _slot9792_)
        (let ((_E9794_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9791_ _slot9792_ _E9794_))))
    (define slot-ref
      (lambda _g10792_
        (let ((_g10791_ (let () (declare (not safe)) (##length _g10792_))))
          (cond ((let () (declare (not safe)) (##fx= _g10791_ 2))
                 (apply (lambda (_obj9791_ _slot9792_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9791_ _slot9792_)))
                        _g10792_))
                ((let () (declare (not safe)) (##fx= _g10791_ 3))
                 (apply (lambda (_obj9796_ _slot9797_ _E9798_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9796_ _slot9797_ _E9798_)))
                        _g10792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10792_))))))
    (define slot-set!__%
      (lambda (_obj9748_ _slot9749_ _val9750_ _E9751_)
        (if (let () (declare (not safe)) (object? _obj9748_))
            (let* ((_klass9753_
                    (let () (declare (not safe)) (object-type _obj9748_)))
                   (_$e9756_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9753_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass9753_ _slot9749_))
                        '#f)))
              (if _$e9756_
                  ((lambda (_off9759_)
                     (let ()
                       (declare (not safe))
                       (##vector-set! _obj9748_ _off9759_ _val9750_)))
                   _$e9756_)
                  (_E9751_ _obj9748_ _slot9749_)))
            (_E9751_ _obj9748_ _slot9749_))))
    (define slot-set!__0
      (lambda (_obj9764_ _slot9765_ _val9766_)
        (let ((_E9768_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9764_ _slot9765_ _val9766_ _E9768_))))
    (define slot-set!
      (lambda _g10794_
        (let ((_g10793_ (let () (declare (not safe)) (##length _g10794_))))
          (cond ((let () (declare (not safe)) (##fx= _g10793_ 3))
                 (apply (lambda (_obj9764_ _slot9765_ _val9766_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9764_ _slot9765_ _val9766_)))
                        _g10794_))
                ((let () (declare (not safe)) (##fx= _g10793_ 4))
                 (apply (lambda (_obj9770_ _slot9771_ _val9772_ _E9773_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9770_
                             _slot9771_
                             _val9772_
                             _E9773_)))
                        _g10794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10794_))))))
    (define __slot-error
      (lambda (_obj9744_ _slot9745_)
        (error '"Cannot find slot" _obj9744_ _slot9745_)))
    (define call-method
      (lambda (_obj9735_ _id9736_ . _args9737_)
        (let ((_$e9739_
               (let () (declare (not safe)) (method-ref _obj9735_ _id9736_))))
          (if _$e9739_
              ((lambda (_method9742_)
                 (apply _method9742_ _obj9735_ _args9737_))
               _$e9739_)
              (error '"Cannot find method" _obj9735_ _id9736_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9732_ _id9733_)
        (if (let () (declare (not safe)) (object? _obj9732_))
            (let ((__tmp10795
                   (let () (declare (not safe)) (object-type _obj9732_))))
              (declare (not safe))
              (find-method __tmp10795 _id9733_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9726_ _id9727_)
        (let ((_$e9729_
               (let () (declare (not safe)) (method-ref _obj9726_ _id9727_))))
          (if _$e9729_
              _$e9729_
              (error '"Missing method" _obj9726_ _id9727_)))))
    (define bound-method-ref
      (lambda (_obj9716_ _id9717_)
        (let ((_$e9719_
               (let () (declare (not safe)) (method-ref _obj9716_ _id9717_))))
          (if _$e9719_
              ((lambda (_method9722_)
                 (lambda _args9724_ (apply _method9722_ _obj9716_ _args9724_)))
               _$e9719_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9709_ _id9710_)
        (let ((_method9712_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9709_ _id9710_))))
          (lambda _args9714_ (apply _method9712_ _obj9709_ _args9714_)))))
    (define find-method
      (lambda (_klass9706_ _id9707_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9706_))
            (let () (declare (not safe)) (__find-method _klass9706_ _id9707_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass9706_ _id9707_)))))
    (define __find-method
      (lambda (_klass9700_ _id9701_)
        (let ((_$e9703_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9700_ _id9701_))))
          (if _$e9703_
              _$e9703_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9700_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9700_ _id9701_)))))))
    (define struct-find-method find-method)
    (define class-find-method
      (lambda (_klass9697_ _id9698_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9697_))
            (let () (declare (not safe)) (__find-method _klass9697_ _id9698_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins9690_ _id9691_)
        (let ((__tmp10796
               (lambda (_g96929694_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g96929694_ _id9691_)))))
          (declare (not safe))
          (ormap1 __tmp10796 _mixins9690_))))
    (define builtin-find-method
      (lambda (_klass9684_ _id9685_)
        (if (let () (declare (not safe)) (##type? _klass9684_))
            (let ((_$e9687_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9684_ _id9685_))))
              (if _$e9687_
                  _$e9687_
                  (let ((__tmp10797
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9684_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10797 _id9685_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9676_ _id9677_)
        (let ((_$e9679_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9676_))))
          (if _$e9679_
              ((lambda (_ht9682_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9682_ _id9677_ '#f)))
               _$e9679_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9673_ _id9674_)
        (let ((__tmp10798
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass9673_))))
          (declare (not safe))
          (mixin-find-method __tmp10798 _id9674_))))
    (define builtin-method-ref
      (lambda (_klass9665_ _id9666_)
        (let ((_$e9668_
               (let ((__tmp10799
                      (let () (declare (not safe)) (##type-id _klass9665_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10799 '#f))))
          (if _$e9668_
              ((lambda (_mtab9671_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9671_ _id9666_ '#f)))
               _$e9668_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9631_ _id9632_ _proc9633_ _rebind?9634_)
        (letrec ((_bind!9636_
                  (lambda (_ht9649_)
                    (if (and (let () (declare (not safe)) (not _rebind?9634_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9649_ _id9632_ '#f)))
                        (error '"Method already bound" _klass9631_ _id9632_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9649_ _id9632_ _proc9633_))))))
          (if (let () (declare (not safe)) (procedure? _proc9633_))
              '#!void
              (error '"Bad method; expected procedure" _proc9633_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9631_))
              (let ((_ht9638_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9631_))))
                (if _ht9638_
                    (let () (declare (not safe)) (_bind!9636_ _ht9638_))
                    (let ((_ht9640_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9631_ _ht9640_))
                      (let () (declare (not safe)) (_bind!9636_ _ht9640_)))))
              (if (let () (declare (not safe)) (##type? _klass9631_))
                  (let ((_ht9647_
                         (let ((_$e9642_
                                (let ((__tmp10800
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9631_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10800
                                   '#f))))
                           (if _$e9642_
                               _$e9642_
                               (let ((_ht9645_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10801
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9631_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10801
                                    _ht9645_))
                                 _ht9645_)))))
                    (declare (not safe))
                    (_bind!9636_ _ht9647_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9631_))))))
    (define bind-method!__0
      (lambda (_klass9654_ _id9655_ _proc9656_)
        (let ((_rebind?9658_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9654_ _id9655_ _proc9656_ _rebind?9658_))))
    (define bind-method!
      (lambda _g10803_
        (let ((_g10802_ (let () (declare (not safe)) (##length _g10803_))))
          (cond ((let () (declare (not safe)) (##fx= _g10802_ 3))
                 (apply (lambda (_klass9654_ _id9655_ _proc9656_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9654_ _id9655_ _proc9656_)))
                        _g10803_))
                ((let () (declare (not safe)) (##fx= _g10802_ 4))
                 (apply (lambda (_klass9660_ _id9661_ _proc9662_ _rebind?9663_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9660_
                             _id9661_
                             _proc9662_
                             _rebind?9663_)))
                        _g10803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10803_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9627_ _specializer9628_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9627_ _specializer9628_))))
    (define seal-class!
      (lambda (_klass9594_)
        (letrec ((_collect-methods!9596_
                  (lambda (_mtab9612_)
                    (letrec ((_merge!9614_
                              (lambda (_tab9622_)
                                (let ((__tmp10804
                                       (lambda (_id9624_ _proc9625_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9612_
                                            _id9624_
                                            _proc9625_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10804 _tab9622_))))
                             (_collect-direct-methods!9615_
                              (lambda (_klass9617_)
                                (let ((_$e9619_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9617_))))
                                  (if _$e9619_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9614_ _$e9619_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!9615_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass9594_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9594_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9594_))
                  '#!void
                  (begin
                    (if (let () (declare (not safe)) (type-final? _klass9594_))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9594_))
                    (let ((_vtab9598_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9599_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9596_ _mtab9599_))
                      (let ((__tmp10805
                             (lambda (_id9601_ _proc9602_)
                               (let ((_$e9604_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9602_
                                         '#f))))
                                 (if _$e9604_
                                     ((lambda (_specializer9607_)
                                        (let ((_proc9609_
                                               (_specializer9607_ _klass9594_))
                                              (_gid9610_
                                               (let ((__tmp10806
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9594_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp10806
                                                  '"::["
                                                  _id9601_
                                                  '"]"))))
                                          (eval (let ((__tmp10807
                                                       (let ((__tmp10808
                                                              (let ((__tmp10809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10810
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9609_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10810))))
                        (declare (not safe))
                        (cons __tmp10809 '()))))
                 (declare (not safe))
                 (cons _gid9610_ __tmp10808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10807)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9598_
                                             _id9601_
                                             _proc9609_))))
                                      _$e9604_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9598_
                                        _id9601_
                                        _proc9602_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10805 _mtab9599_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9594_ _vtab9598_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9594_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9543_ _obj9544_ _id9545_)
        (let ((_klass9547_
               (let () (declare (not safe)) (object-type _obj9544_)))
              (_type-id9548_
               (let () (declare (not safe)) (##type-id _subklass9543_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9547_))
              (let _lp9550_ ((_rest9552_
                              (let ()
                                (declare (not safe))
                                (class-precedence-list _klass9547_))))
                (let* ((_rest95539561_ _rest9552_)
                       (_else95559569_ (lambda () '#f))
                       (_K95579575_
                        (lambda (_rest9572_ _klass9573_)
                          (if (let ((__tmp10813
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass9573_))))
                                (declare (not safe))
                                (eq? _type-id9548_ __tmp10813))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest9572_ _id9545_))
                              (let ()
                                (declare (not safe))
                                (_lp9550_ _rest9572_))))))
                  (if (let () (declare (not safe)) (##pair? _rest95539561_))
                      (let ((_hd95589578_
                             (let ()
                               (declare (not safe))
                               (##car _rest95539561_)))
                            (_tl95599580_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest95539561_))))
                        (let* ((_klass9583_ _hd95589578_)
                               (_rest9585_ _tl95599580_))
                          (declare (not safe))
                          (_K95579575_ _rest9585_ _klass9583_)))
                      (let () (declare (not safe)) (_else95559569_)))))
              (if (let () (declare (not safe)) (##type? _klass9547_))
                  (let _lp9587_ ((_klass9589_ _klass9547_))
                    (if (let ((__tmp10812
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9589_))))
                          (declare (not safe))
                          (eq? _type-id9548_ __tmp10812))
                        (let ((__tmp10811
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9589_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10811 _id9545_))
                        (let ((_$e9591_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9589_))))
                          (if _$e9591_
                              (let () (declare (not safe)) (_lp9587_ _$e9591_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9533_ _obj9534_ _id9535_ . _args9536_)
        (let ((_$e9538_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9533_ _obj9534_ _id9535_))))
          (if _$e9538_
              ((lambda (_methodf9541_)
                 (apply _methodf9541_ _obj9534_ _args9536_))
               _$e9538_)
              (error '"Cannot find next method" _obj9534_ _id9535_)))))
    (define write-style (lambda (_we9531_) (macro-writeenv-style _we9531_)))
    (define write-object
      (lambda (_we9523_ _obj9524_)
        (let ((_$e9526_
               (let () (declare (not safe)) (method-ref _obj9524_ ':wr))))
          (if _$e9526_
              ((lambda (_method9529_) (_method9529_ _obj9524_ _we9523_))
               _$e9526_)
              (let ()
                (declare (not safe))
                (##default-wr _we9523_ _obj9524_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
