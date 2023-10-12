(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1697117311)
  (begin
    (define type-descriptor?
      (lambda (_klass10721_)
        (if (let () (declare (not safe)) (##type? _klass10721_))
            (let ((__tmp10731
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10721_))))
              (declare (not safe))
              (eq? __tmp10731 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10719_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10719_))
            (let ((__tmp10732
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10719_))))
              (declare (not safe))
              (not __tmp10732))
            '#f)))
    (define class-type?
      (lambda (_klass10717_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10717_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10717_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id10613_
               _type-name10614_
               _type-super10615_
               _rtd-mixin10616_
               _rtd-fields10617_
               _rtd-plist10618_
               _rtd-ctor10619_
               _rtd-slots10620_
               _rtd-methods10621_)
        (letrec ((_put-props!10623_
                  (lambda (_ht10697_ _key10698_)
                    (letrec ((_put-plist!10700_
                              (lambda (_ht10706_ _key10707_ _plist10708_)
                                (let ((_$e10710_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10707_ _plist10708_))))
                                  (if _$e10710_
                                      ((lambda (_lst10713_)
                                         (for-each
                                          (lambda (_id10715_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht10706_
                                               _id10715_
                                               '#t)))
                                          _lst10713_))
                                       _$e10710_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10700_
                         _ht10697_
                         _key10698_
                         _rtd-plist10618_))
                      (if _rtd-mixin10616_
                          (for-each
                           (lambda (_klass10702_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass10702_))
                                 (let ((_plist10704_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass10702_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist10704_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10700_
                                          _ht10697_
                                          'slots:
                                          _plist10704_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10700_
                                          _ht10697_
                                          _key10698_
                                          _plist10704_))))
                                 '#!void))
                           _rtd-mixin10616_)
                          '#!void)))))
          (let* ((_transparent?10625_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist10618_)))
                 (_field-names10630_
                  (let ((_$e10627_ (assq 'fields: _rtd-plist10618_)))
                    (if _$e10627_ (cdr _$e10627_) '())))
                 (_field-names10637_
                  (let ((_$e10632_ (assq 'slots: _rtd-plist10618_)))
                    (if _$e10632_
                        ((lambda (_slots10635_)
                           (append _field-names10630_ (cdr _slots10635_)))
                         _$e10632_)
                        _field-names10630_)))
                 (_g10733_
                  (if (fx= _rtd-fields10617_ (length _field-names10637_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id10613_
                             _rtd-fields10617_
                             _field-names10637_)))
                 (_canonical-fields10640_
                  (if _type-super10615_
                      (list-tail
                       _field-names10637_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super10615_)))
                      _field-names10637_))
                 (_printable10644_
                  (if _transparent?10625_
                      '#f
                      (let ((_ht10642_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10623_ _ht10642_ 'print:))
                        _ht10642_)))
                 (_equality10648_
                  (if _transparent?10625_
                      '#f
                      (let ((_ht10646_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10623_ _ht10646_ 'equal:))
                        _ht10646_)))
                 (_field-info10689_
                  (let _recur10650_ ((_rest10652_ _canonical-fields10640_))
                    (let* ((_rest1065310661_ _rest10652_)
                           (_else1065510669_ (lambda () '()))
                           (_K1065710677_
                            (lambda (_rest10672_ _id10673_)
                              (let* ((_flags10675_
                                      (if _transparent?10625_
                                          '0
                                          (let ((__tmp10735
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable10644_
                                                        _id10673_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10734
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality10648_
                                                        _id10673_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10735 __tmp10734))))
                                     (__tmp10736
                                      (let ((__tmp10737
                                             (let ((__tmp10738
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur10650_
                                                       _rest10672_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10738))))
                                        (declare (not safe))
                                        (cons _flags10675_ __tmp10737))))
                                (declare (not safe))
                                (cons _id10673_ __tmp10736)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1065310661_))
                          (let ((_hd1065810680_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1065310661_)))
                                (_tl1065910682_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1065310661_))))
                            (let* ((_id10685_ _hd1065810680_)
                                   (_rest10687_ _tl1065910682_))
                              (declare (not safe))
                              (_K1065710677_ _rest10687_ _id10685_)))
                          (let () (declare (not safe)) (_else1065510669_))))))
                 (_opaque?10694_
                  (if (or _transparent?10625_ (assq 'equal: _rtd-plist10618_))
                      (if _type-super10615_
                          (let ((__tmp10739
                                 (let ((__tmp10740
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super10615_))))
                                   (declare (not safe))
                                   (##fxand __tmp10740 '1))))
                            (declare (not safe))
                            (##fx= __tmp10739 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10742 (+ '24 (if _opaque?10694_ '1 '0)))
                  (__tmp10741 (list->vector _field-info10689_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10613_
               _type-name10614_
               __tmp10742
               _type-super10615_
               __tmp10741
               _rtd-mixin10616_
               _rtd-fields10617_
               _rtd-plist10618_
               _rtd-ctor10619_
               _rtd-slots10620_
               _rtd-methods10621_))))))
    (define make-struct-type-descriptor
      (lambda (_id10606_
               _name10607_
               _super10608_
               _fields10609_
               _plist10610_
               _ctor10611_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10606_
           _name10607_
           _super10608_
           '#f
           _fields10609_
           _plist10610_
           _ctor10611_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id10597_
               _name10598_
               _super10599_
               _mixin10600_
               _fields10601_
               _plist10602_
               _ctor10603_
               _slots10604_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10597_
           _name10598_
           _super10599_
           _mixin10600_
           _fields10601_
           _plist10602_
           _ctor10603_
           _slots10604_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass10595_)
        (let () (declare (not safe)) (##vector-ref _klass10595_ '6))))
    (define type-descriptor-fields
      (lambda (_klass10593_)
        (let () (declare (not safe)) (##vector-ref _klass10593_ '7))))
    (define type-descriptor-plist
      (lambda (_klass10591_)
        (let () (declare (not safe)) (##vector-ref _klass10591_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass10589_)
        (let () (declare (not safe)) (##vector-ref _klass10589_ '9))))
    (define type-descriptor-slots
      (lambda (_klass10587_)
        (let () (declare (not safe)) (##vector-ref _klass10587_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10585_)
        (let () (declare (not safe)) (##vector-ref _klass10585_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10582_ _ht10583_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10582_ '11 _ht10583_))))
    (define type-descriptor-sealed?
      (lambda (_klass10580_)
        (let ((__tmp10743
               (let () (declare (not safe)) (##type-flags _klass10580_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10743))))
    (define type-descriptor-seal!
      (lambda (_klass10578_)
        (let ((__tmp10744
               (let ((__tmp10746
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10745
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10578_))))
                 (declare (not safe))
                 (##fxior __tmp10746 __tmp10745))))
          (declare (not safe))
          (##vector-set! _klass10578_ '3 __tmp10744))))
    (define make-struct-type__%
      (lambda (_id10527_
               _super10528_
               _fields10529_
               _name10530_
               _plist10531_
               _ctor10532_
               _field-names10533_)
        (if (and _super10528_
                 (let ((__tmp10747
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10528_))))
                   (declare (not safe))
                   (not __tmp10747)))
            (error '"Illegal super type; not a struct-type" _super10528_)
            '#!void)
        (if (and _super10528_
                 (let ((__tmp10748
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super10528_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10748)))
            (error '"Cannot extend final struct" _super10528_)
            '#!void)
        (let* ((_super-fields10535_
                (if _super10528_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super10528_))
                    '0))
               (_std-fields10537_ (fx+ _fields10529_ _super-fields10535_))
               (_std-field-names10547_
                (let* ((_super-fields10539_
                        (if _super10528_
                            (let ((__tmp10749
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super10528_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10749))
                            '()))
                       (_field-names10544_
                        (let ((_$e10541_ _field-names10533_))
                          (if _$e10541_
                              _$e10541_
                              (make-list _fields10529_ ':)))))
                  (append _super-fields10539_ _field-names10544_)))
               (_g10751_
                (if (let ((__tmp10750 (length _std-field-names10547_)))
                      (declare (not safe))
                      (##fx= _std-fields10537_ __tmp10750))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id10527_
                           _std-fields10537_
                           _std-field-names10547_)))
               (_std-plist10550_
                (let ((__tmp10752
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names10547_))))
                  (declare (not safe))
                  (cons __tmp10752 _plist10531_)))
               (_ctor10555_
                (let ((_$e10552_ _ctor10532_))
                  (if _$e10552_
                      _$e10552_
                      (if _super10528_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super10528_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id10527_
             _name10530_
             _super10528_
             _std-fields10537_
             _std-plist10550_
             _ctor10555_)))))
    (define make-struct-type__0
      (lambda (_id10561_
               _super10562_
               _fields10563_
               _name10564_
               _plist10565_
               _ctor10566_)
        (let ((_field-names10568_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10561_
           _super10562_
           _fields10563_
           _name10564_
           _plist10565_
           _ctor10566_
           _field-names10568_))))
    (define make-struct-type
      (lambda _g10754_
        (let ((_g10753_ (let () (declare (not safe)) (##length _g10754_))))
          (cond ((let () (declare (not safe)) (##fx= _g10753_ 6))
                 (apply (lambda (_id10561_
                                 _super10562_
                                 _fields10563_
                                 _name10564_
                                 _plist10565_
                                 _ctor10566_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10561_
                             _super10562_
                             _fields10563_
                             _name10564_
                             _plist10565_
                             _ctor10566_)))
                        _g10754_))
                ((let () (declare (not safe)) (##fx= _g10753_ 7))
                 (apply (lambda (_id10570_
                                 _super10571_
                                 _fields10572_
                                 _name10573_
                                 _plist10574_
                                 _ctor10575_
                                 _field-names10576_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10570_
                             _super10571_
                             _fields10572_
                             _name10573_
                             _plist10574_
                             _ctor10575_
                             _field-names10576_)))
                        _g10754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10754_))))))
    (define make-struct-predicate
      (lambda (_klass10518_)
        (let ((_tid10520_
               (let () (declare (not safe)) (##type-id _klass10518_))))
          (if (let ((__tmp10755
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass10518_))))
                (declare (not safe))
                (assgetq 'final: __tmp10755))
              (lambda (_obj10522_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10522_ _tid10520_)))
              (lambda (_obj10524_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10524_ _tid10520_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10511_ _field10512_)
        (let ((_off10514_
               (let ((__tmp10756
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10511_ _field10512_))))
                 (declare (not safe))
                 (##fx+ __tmp10756 '1))))
          (lambda (_obj10516_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj10516_ _off10514_ _klass10511_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass10503_ _field10504_)
        (let ((_off10506_
               (let ((__tmp10757
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10503_ _field10504_))))
                 (declare (not safe))
                 (##fx+ __tmp10757 '1))))
          (lambda (_obj10508_ _val10509_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj10508_
               _val10509_
               _off10506_
               _klass10503_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10496_ _field10497_)
        (let ((_off10499_
               (let ((__tmp10758
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10496_ _field10497_))))
                 (declare (not safe))
                 (##fx+ __tmp10758 '1))))
          (lambda (_obj10501_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10501_
               _off10499_
               _klass10496_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10488_ _field10489_)
        (let ((_off10491_
               (let ((__tmp10759
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10488_ _field10489_))))
                 (declare (not safe))
                 (##fx+ __tmp10759 '1))))
          (lambda (_obj10493_ _val10494_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10493_
               _val10494_
               _off10491_
               _klass10488_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass10482_ _field10483_)
        (let ((__tmp10760
               (let ((_$e10485_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10482_))))
                 (if _$e10485_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10485_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10483_ __tmp10760))))
    (define struct-field-ref
      (lambda (_klass10478_ _obj10479_ _off10480_)
        (let ((__tmp10761 (let () (declare (not safe)) (##fx+ _off10480_ '1))))
          (declare (not safe))
          (##structure-ref _obj10479_ __tmp10761 _klass10478_ '#f))))
    (define struct-field-set!
      (lambda (_klass10473_ _obj10474_ _off10475_ _val10476_)
        (let ((__tmp10762 (let () (declare (not safe)) (##fx+ _off10475_ '1))))
          (declare (not safe))
          (##structure-set!
           _obj10474_
           _val10476_
           __tmp10762
           _klass10473_
           '#f))))
    (define struct-subtype?
      (lambda (_klass10464_ _xklass10465_)
        (let ((_klass-t10467_
               (let () (declare (not safe)) (##type-id _klass10464_))))
          (let _lp10469_ ((_next10471_ _xklass10465_))
            (if (let () (declare (not safe)) (not _next10471_))
                '#f
                (if (let ((__tmp10764
                           (let ()
                             (declare (not safe))
                             (##type-id _next10471_))))
                      (declare (not safe))
                      (eq? _klass-t10467_ __tmp10764))
                    '#t
                    (let ((__tmp10763
                           (let ()
                             (declare (not safe))
                             (##type-super _next10471_))))
                      (declare (not safe))
                      (_lp10469_ __tmp10763))))))))
    (define make-class-type
      (lambda (_id10171_
               _super10172_
               _slots10173_
               _name10174_
               _plist10175_
               _ctor10176_)
        (letrec ((_class-slots10178_
                  (lambda (_klass10462_)
                    (let ((__tmp10765
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass10462_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10765))))
                 (_make-slots10179_
                  (lambda (_off10413_)
                    (let ((_slot-table10415_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10417_ ((_rest10419_ _super10172_)
                                      (_off10420_ _off10413_)
                                      (_slot-list10421_ '()))
                        (let* ((_rest1042210430_ _rest10419_)
                               (_else1042410441_
                                (lambda ()
                                  (let ((__tmp10766
                                         (lambda (_off10438_ _slot-list10439_)
                                           (values _off10438_
                                                   _slot-table10415_
                                                   (reverse _slot-list10439_)))))
                                    (declare (not safe))
                                    (_merge-slots10180_
                                     _slot-table10415_
                                     _slots10173_
                                     _off10420_
                                     _slot-list10421_
                                     __tmp10766))))
                               (_K1042610450_
                                (lambda (_rest10444_ _hd10445_)
                                  (let ((__tmp10768
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots10178_ _hd10445_)))
                                        (__tmp10767
                                         (lambda (_off10447_ _slot-list10448_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp10417_
                                              _rest10444_
                                              _off10447_
                                              _slot-list10448_)))))
                                    (declare (not safe))
                                    (_merge-slots10180_
                                     _slot-table10415_
                                     __tmp10768
                                     _off10420_
                                     _slot-list10421_
                                     __tmp10767)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1042210430_))
                              (let ((_hd1042710453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1042210430_)))
                                    (_tl1042810455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1042210430_))))
                                (let* ((_hd10458_ _hd1042710453_)
                                       (_rest10460_ _tl1042810455_))
                                  (declare (not safe))
                                  (_K1042610450_ _rest10460_ _hd10458_)))
                              (let ()
                                (declare (not safe))
                                (_else1042410441_))))))))
                 (_merge-slots10180_
                  (lambda (_ht10368_ _lst10369_ _off10370_ _r10371_ _K10372_)
                    (let _lp10374_ ((_rest10376_ _lst10369_)
                                    (_off10377_ _off10370_)
                                    (_r10378_ _r10371_))
                      (let* ((_rest1037910387_ _rest10376_)
                             (_else1038110395_
                              (lambda () (_K10372_ _off10377_ _r10378_)))
                             (_K1038310401_
                              (lambda (_rest10398_ _slot10399_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht10368_ _slot10399_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp10374_
                                       _rest10398_
                                       _off10377_
                                       _r10378_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht10368_
                                         _slot10399_
                                         _off10377_))
                                      (let ((__tmp10769
                                             (symbol->keyword _slot10399_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht10368_
                                         __tmp10769
                                         _off10377_))
                                      (let ((__tmp10771
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off10377_ '1)))
                                            (__tmp10770
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot10399_ _r10378_))))
                                        (declare (not safe))
                                        (_lp10374_
                                         _rest10398_
                                         __tmp10771
                                         __tmp10770)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1037910387_))
                            (let ((_hd1038410404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1037910387_)))
                                  (_tl1038510406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1037910387_))))
                              (let* ((_slot10409_ _hd1038410404_)
                                     (_rest10411_ _tl1038510406_))
                                (declare (not safe))
                                (_K1038310401_ _rest10411_ _slot10409_)))
                            (let ()
                              (declare (not safe))
                              (_else1038110395_)))))))
                 (_find-super-ctor10181_
                  (lambda (_super10320_)
                    (let _lp10322_ ((_rest10324_ _super10320_)
                                    (_ctor10325_ '#f))
                      (let* ((_rest1032610334_ _rest10324_)
                             (_else1032810342_ (lambda () _ctor10325_))
                             (_K1033010356_
                              (lambda (_rest10345_ _hd10346_)
                                (let ((_$e10348_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd10346_))))
                                  (if _$e10348_
                                      ((lambda (_xctor10351_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor10325_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor10325_
                                                        _xctor10351_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp10322_
                                                _rest10345_
                                                _xctor10351_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor10325_
                                                    _xctor10351_)))
                                       _$e10348_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp10322_
                                         _rest10345_
                                         _ctor10325_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1032610334_))
                            (let ((_hd1033110359_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1032610334_)))
                                  (_tl1033210361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1032610334_))))
                              (let* ((_hd10364_ _hd1033110359_)
                                     (_rest10366_ _tl1033210361_))
                                (declare (not safe))
                                (_K1033010356_ _rest10366_ _hd10364_)))
                            (let ()
                              (declare (not safe))
                              (_else1032810342_)))))))
                 (_find-super-struct10182_
                  (lambda (_super10267_)
                    (letrec ((_base-struct10269_
                              (lambda (_super-struct10309_ _klass10310_)
                                (if _super-struct10309_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct10309_
                                           _klass10310_))
                                        (let _lp10312_ ((_klass10314_
                                                         _klass10310_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass10314_))
                                              _klass10314_
                                              (let ((__tmp10772
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass10314_))))
                                                (declare (not safe))
                                                (_lp10312_ __tmp10772))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass10310_
                                               _super-struct10309_))
                                            _super-struct10309_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass10310_
                                                   _super-struct10309_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass10310_))
                                        _klass10310_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass10310_))
                                            (let _lp10316_ ((_next10318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##type-super _klass10310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next10318_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next10318_))
                                                      _next10318_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next10318_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp10316_
                                                             _next10318_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp10271_ ((_rest10273_ _super10267_)
                                      (_super-struct10274_ '#f))
                        (let* ((_rest1027510283_ _rest10273_)
                               (_else1027710291_
                                (lambda () _super-struct10274_))
                               (_K1027910297_
                                (lambda (_rest10294_ _hd10295_)
                                  (let ((__tmp10773
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct10269_
                                            _super-struct10274_
                                            _hd10295_))))
                                    (declare (not safe))
                                    (_lp10271_ _rest10294_ __tmp10773)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1027510283_))
                              (let ((_hd1028010300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1027510283_)))
                                    (_tl1028110302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1027510283_))))
                                (let* ((_hd10305_ _hd1028010300_)
                                       (_rest10307_ _tl1028110302_))
                                  (declare (not safe))
                                  (_K1027910297_ _rest10307_ _hd10305_)))
                              (let ()
                                (declare (not safe))
                                (_else1027710291_))))))))
                 (_expand-struct-mixin10183_
                  (lambda (_super10222_)
                    (let _lp10224_ ((_rest10226_ _super10222_)
                                    (_mixin10227_ '()))
                      (let* ((_rest1022810236_ _rest10226_)
                             (_else1023010244_
                              (lambda () (reverse _mixin10227_)))
                             (_K1023210255_
                              (lambda (_rest10247_ _hd10248_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd10248_))
                                    (let _lp210250_ ((_next10252_ _hd10248_)
                                                     (_mixin10253_
                                                      _mixin10227_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next10252_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp10224_
                                             _rest10247_
                                             _mixin10253_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next10252_))
                                              (let ((__tmp10776
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next10252_)))
                                                    (__tmp10775
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next10252_
                                                             _mixin10253_))))
                                                (declare (not safe))
                                                (_lp210250_
                                                 __tmp10776
                                                 __tmp10775))
                                              (let ()
                                                (declare (not safe))
                                                (_lp10224_
                                                 _rest10247_
                                                 _mixin10253_)))))
                                    (let ((__tmp10774
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd10248_ _mixin10227_))))
                                      (declare (not safe))
                                      (_lp10224_ _rest10247_ __tmp10774))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1022810236_))
                            (let ((_hd1023310258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1022810236_)))
                                  (_tl1023410260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1022810236_))))
                              (let* ((_hd10263_ _hd1023310258_)
                                     (_rest10265_ _tl1023410260_))
                                (declare (not safe))
                                (_K1023210255_ _rest10265_ _hd10263_)))
                            (let ()
                              (declare (not safe))
                              (_else1023010244_))))))))
          (let ((_$e10187_
                 (let ((__tmp10777
                        (lambda (_klass10185_)
                          (let ((__tmp10778
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass10185_))))
                            (declare (not safe))
                            (not __tmp10778)))))
                   (declare (not safe))
                   (find __tmp10777 _super10172_))))
            (if _$e10187_
                ((lambda (_klass10190_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass10190_))
                 _$e10187_)
                (let ((_$e10194_
                       (let ((__tmp10779
                              (lambda (_klass10192_)
                                (let ((__tmp10780
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist
                                          _klass10192_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10780)))))
                         (declare (not safe))
                         (find __tmp10779 _super10172_))))
                  (if _$e10194_
                      ((lambda (_klass10197_)
                         (error '"Cannot extend final class" _klass10197_))
                       _$e10194_)
                      '#!void))))
          (let* ((_std-super10199_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct10182_ _super10172_)))
                 (_mixin10201_
                  (if _std-super10199_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin10183_ _super10172_))
                      _super10172_)))
            (let ((_g10781_
                   (let ((__tmp10783
                          (if _std-super10199_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super10199_))
                              '0)))
                     (declare (not safe))
                     (_make-slots10179_ __tmp10783))))
              (begin
                (let ((_g10782_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10781_)
                             (##vector-length _g10781_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10782_ 3)))
                      (error "Context expects 3 values" _g10782_)))
                (let ((_std-fields10204_
                       (let () (declare (not safe)) (##vector-ref _g10781_ 0)))
                      (_std-slots10205_
                       (let () (declare (not safe)) (##vector-ref _g10781_ 1)))
                      (_std-slot-list10206_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10781_ 2))))
                  (let* ((_std-mixin10208_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin10201_)))
                         (_std-plist10212_
                          (if _std-super10199_
                              (let* ((_fields10210_
                                      (let ((__tmp10784
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super10199_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10784)))
                                     (__tmp10785
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields10210_))))
                                (declare (not safe))
                                (cons __tmp10785 _plist10175_))
                              _plist10175_))
                         (_std-plist10214_
                          (let ((__tmp10786
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list10206_))))
                            (declare (not safe))
                            (cons __tmp10786 _std-plist10212_)))
                         (_std-ctor10219_
                          (let ((_$e10216_ _ctor10176_))
                            (if _$e10216_
                                _$e10216_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor10181_ _super10172_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id10171_
                       _name10174_
                       _std-super10199_
                       _std-mixin10208_
                       _std-fields10204_
                       _std-plist10214_
                       _std-ctor10219_
                       _std-slots10205_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst10122_)
        (letrec ((_class->list10124_
                  (lambda (_klass10166_)
                    (let ((__tmp10787
                           (let ((_$e10168_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass10166_))))
                             (if _$e10168_ _$e10168_ '()))))
                      (declare (not safe))
                      (cons _klass10166_ __tmp10787)))))
          (let* ((_klass-lst1012510135_ _klass-lst10122_)
                 (_else1012810143_
                  (lambda ()
                    (let ((__tmp10788
                           (map _class->list10124_ _klass-lst10122_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp10788)))))
            (let ((_K1013310163_ (lambda () '()))
                  (_K1013010149_
                   (lambda (_klass10147_)
                     (let ()
                       (declare (not safe))
                       (_class->list10124_ _klass10147_)))))
              (let ((_try-match1012710159_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst1012510135_))
                           (let ((_tl1013210154_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst1012510135_)))
                                 (_hd1013110152_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst1012510135_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl1013210154_))
                                 (let ((_klass10157_ _hd1013110152_))
                                   (declare (not safe))
                                   (_class->list10124_ _klass10157_))
                                 (let ()
                                   (declare (not safe))
                                   (_else1012810143_))))
                           (let () (declare (not safe)) (_else1012810143_))))))
                (if (let ()
                      (declare (not safe))
                      (##null? _klass-lst1012510135_))
                    (let () (declare (not safe)) (_K1013310163_))
                    (let ()
                      (declare (not safe))
                      (_try-match1012710159_)))))))))
    (define __linearize-mixins
      (lambda (_lst9963_)
        (letrec ((_K9965_ (lambda (_rest10086_ _r10087_)
                            (let* ((_rest1008810096_ _rest10086_)
                                   (_else1009010104_
                                    (lambda () (reverse _r10087_)))
                                   (_K1009210110_
                                    (lambda (_rest10107_ _hd10108_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize19966_
                                         _hd10108_
                                         _rest10107_
                                         _r10087_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest1008810096_))
                                  (let ((_hd1009310113_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest1008810096_)))
                                        (_tl1009410115_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest1008810096_))))
                                    (let* ((_hd10118_ _hd1009310113_)
                                           (_rest10120_ _tl1009410115_))
                                      (declare (not safe))
                                      (_K1009210110_ _rest10120_ _hd10118_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1009010104_))))))
                 (_linearize19966_
                  (lambda (_hd10049_ _rest10050_ _r10051_)
                    (let* ((_hd1005210060_ _hd10049_)
                           (_else1005410068_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K9965_ _rest10050_ _r10051_))))
                           (_K1005610074_
                            (lambda (_hd-rest10071_ _hd-first10072_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq9969_ _hd-first10072_ _rest10050_))
                                  (let ((__tmp10791 (list _hd10049_)))
                                    (declare (not safe))
                                    (_linearize29967_
                                     _rest10050_
                                     __tmp10791
                                     _r10051_))
                                  (let ((__tmp10790
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest10071_ _rest10050_)))
                                        (__tmp10789
                                         (let ()
                                           (declare (not safe))
                                           (_putq9968_
                                            _hd-first10072_
                                            _r10051_))))
                                    (declare (not safe))
                                    (_K9965_ __tmp10790 __tmp10789))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1005210060_))
                          (let ((_hd1005710077_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1005210060_)))
                                (_tl1005810079_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1005210060_))))
                            (let* ((_hd-first10082_ _hd1005710077_)
                                   (_hd-rest10084_ _tl1005810079_))
                              (declare (not safe))
                              (_K1005610074_ _hd-rest10084_ _hd-first10082_)))
                          (let () (declare (not safe)) (_else1005410068_))))))
                 (_linearize29967_
                  (lambda (_rest9979_ _pre9980_ _r9981_)
                    (let _lp9983_ ((_rest9985_ _rest9979_)
                                   (_pre9986_ _pre9980_))
                      (let* ((_rest99879994_ _rest9985_)
                             (_E99899998_
                              (lambda ()
                                (error '"No clause matching" _rest99879994_)))
                             (_K999010037_
                              (lambda (_rest10001_ _hd10002_)
                                (let* ((_hd1000310011_ _hd10002_)
                                       (_else1000510019_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp9983_ _rest10001_ _pre9986_))))
                                       (_K1000710025_
                                        (lambda (_hd-rest10022_
                                                 _hd-first10023_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq9969_
                                                 _hd-first10023_
                                                 _rest10001_))
                                              (let ((__tmp10795
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd10002_
                                                             _pre9986_))))
                                                (declare (not safe))
                                                (_lp9983_
                                                 _rest10001_
                                                 __tmp10795))
                                              (let ((__tmp10793
                                                     (let ((__tmp10794
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest10022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest10001_))))
               (declare (not safe))
               (foldl1 cons __tmp10794 _pre9986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10792
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq9968_
                                                        _hd-first10023_
                                                        _r9981_))))
                                                (declare (not safe))
                                                (_K9965_ __tmp10793
                                                         __tmp10792))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd1000310011_))
                                      (let ((_hd1000810028_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd1000310011_)))
                                            (_tl1000910030_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd1000310011_))))
                                        (let* ((_hd-first10033_ _hd1000810028_)
                                               (_hd-rest10035_ _tl1000910030_))
                                          (declare (not safe))
                                          (_K1000710025_
                                           _hd-rest10035_
                                           _hd-first10033_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else1000510019_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest99879994_))
                            (let ((_hd999110040_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest99879994_)))
                                  (_tl999210042_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest99879994_))))
                              (let* ((_hd10045_ _hd999110040_)
                                     (_rest10047_ _tl999210042_))
                                (declare (not safe))
                                (_K999010037_ _rest10047_ _hd10045_)))
                            (let () (declare (not safe)) (_E99899998_)))))))
                 (_putq9968_
                  (lambda (_hd9976_ _lst9977_)
                    (if (memq _hd9976_ _lst9977_)
                        _lst9977_
                        (let ()
                          (declare (not safe))
                          (cons _hd9976_ _lst9977_)))))
                 (_findq9969_
                  (lambda (_hd9971_ _rest9972_)
                    (let ((__tmp10796
                           (lambda (_lst9974_) (memq _hd9971_ _lst9974_))))
                      (declare (not safe))
                      (find __tmp10796 _rest9972_)))))
          (let () (declare (not safe)) (_K9965_ _lst9963_ '())))))
    (define make-class-predicate
      (lambda (_klass9957_)
        (if (let ((__tmp10798
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass9957_))))
              (declare (not safe))
              (assgetq 'final: __tmp10798))
            (lambda (_obj9959_)
              (let ((__tmp10797
                     (let () (declare (not safe)) (##type-id _klass9957_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9959_ __tmp10797)))
            (lambda (_obj9961_)
              (let ()
                (declare (not safe))
                (class-instance? _klass9957_ _obj9961_))))))
    (define make-class-slot-accessor
      (lambda (_klass9952_ _slot9953_)
        (lambda (_obj9955_)
          (let () (declare (not safe)) (slot-ref _obj9955_ _slot9953_)))))
    (define make-class-slot-mutator
      (lambda (_klass9946_ _slot9947_)
        (lambda (_obj9949_ _val9950_)
          (let ()
            (declare (not safe))
            (slot-set! _obj9949_ _slot9947_ _val9950_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9941_ _slot9942_)
        (lambda (_obj9944_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj9944_ _slot9942_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9935_ _slot9936_)
        (lambda (_obj9938_ _val9939_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj9938_ _slot9936_ _val9939_)))))
    (define class-slot-offset
      (lambda (_klass9927_ _slot9928_)
        (let ((_$e9930_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass9927_))))
          (if _$e9930_
              ((lambda (_slots9933_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots9933_ _slot9928_ '#f)))
               _$e9930_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass9921_ _obj9922_ _slot9923_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9921_ _obj9922_))
            (let* ((_off9925_
                    (let ((__tmp10799
                           (let ()
                             (declare (not safe))
                             (object-type _obj9922_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10799 _slot9923_)))
                   (__tmp10800
                    (let () (declare (not safe)) (##fx+ _off9925_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9922_ __tmp10800 _klass9921_ '#f))
            (error '"not an instance" _klass9921_ _obj9922_))))
    (define class-slot-set!
      (lambda (_klass9914_ _obj9915_ _slot9916_ _val9917_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9914_ _obj9915_))
            (let* ((_off9919_
                    (let ((__tmp10801
                           (let ()
                             (declare (not safe))
                             (object-type _obj9915_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10801 _slot9916_)))
                   (__tmp10802
                    (let () (declare (not safe)) (##fx+ _off9919_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9915_
               _val9917_
               __tmp10802
               _klass9914_
               '#f))
            (error '"not an instance" _klass9914_ _obj9915_))))
    (define class-subtype?
      (lambda (_klass9899_ _xklass9900_)
        (let* ((_klass-t9902_
                (let () (declare (not safe)) (##type-id _klass9899_)))
               (_$e9904_
                (let ((__tmp10803
                       (let () (declare (not safe)) (##type-id _xklass9900_))))
                  (declare (not safe))
                  (eq? _klass-t9902_ __tmp10803))))
          (if _$e9904_
              _$e9904_
              (let ((_$e9907_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass9900_))))
                (if _$e9907_
                    ((lambda (_mixin9910_)
                       (if (let ((__tmp10804
                                  (lambda (_xklass9912_)
                                    (let ((__tmp10805
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass9912_))))
                                      (declare (not safe))
                                      (eq? _klass-t9902_ __tmp10805)))))
                             (declare (not safe))
                             (find __tmp10804 _mixin9910_))
                           '#t
                           '#f))
                     _$e9907_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9896_ _obj9897_)
        (let ((__tmp10806
               (let () (declare (not safe)) (##type-id _klass9896_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9897_ __tmp10806))))
    (define struct-instance?
      (lambda (_klass9893_ _obj9894_)
        (let ((__tmp10807
               (let () (declare (not safe)) (##type-id _klass9893_))))
          (declare (not safe))
          (##structure-instance-of? _obj9894_ __tmp10807))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9877_ _obj9878_)
        (if (let () (declare (not safe)) (object? _obj9878_))
            (let ((_klass-id9880_
                   (let () (declare (not safe)) (##type-id _klass9877_)))
                  (_type9881_
                   (let () (declare (not safe)) (object-type _obj9878_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9881_))
                  (let ((_$e9883_
                         (let ((__tmp10808
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type9881_))))
                           (declare (not safe))
                           (eq? __tmp10808 _klass-id9880_))))
                    (if _$e9883_
                        _$e9883_
                        (let ((_$e9886_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type9881_))))
                          (if _$e9886_
                              ((lambda (_mixin9889_)
                                 (let ((__tmp10809
                                        (lambda (_type9891_)
                                          (let ((__tmp10810
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type9891_))))
                                            (declare (not safe))
                                            (eq? __tmp10810 _klass-id9880_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10809 _mixin9889_)))
                               _$e9886_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9872_ _k9873_)
        (let ((_obj9875_
               (let ((__tmp10811
                      (let () (declare (not safe)) (##fx+ _k9873_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10811 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9875_ '0 _klass9872_))
          (let ((__tmp10812 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9875_ __tmp10812))
          _obj9875_)))
    (define make-struct-instance
      (lambda (_klass9862_ . _args9863_)
        (let* ((_fields9865_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass9862_)))
               (_$e9867_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9862_))))
          (if _$e9867_
              ((lambda (_kons-id9870_)
                 (let ((__tmp10814
                        (let ()
                          (declare (not safe))
                          (make-object _klass9862_ _fields9865_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass9862_
                    _kons-id9870_
                    __tmp10814
                    _args9863_)))
               _$e9867_)
              (if (let ((__tmp10813 (length _args9863_)))
                    (declare (not safe))
                    (##fx= _fields9865_ __tmp10813))
                  (apply ##structure _klass9862_ _args9863_)
                  (error '"Arguments don't match object size"
                         _klass9862_
                         _fields9865_
                         _args9863_))))))
    (define make-class-instance
      (lambda (_klass9852_ . _args9853_)
        (let* ((_obj9855_
                (let ((__tmp10815
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass9852_))))
                  (declare (not safe))
                  (make-object _klass9852_ __tmp10815)))
               (_$e9857_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9852_))))
          (if _$e9857_
              ((lambda (_kons-id9860_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9852_
                    _kons-id9860_
                    _obj9855_
                    _args9853_)))
               _$e9857_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9852_ _obj9855_ _args9853_))))))
    (define struct-instance-init!
      (lambda (_obj9849_ . _args9850_)
        (if (let ((__tmp10817 (length _args9850_))
                  (__tmp10816
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9849_))))
              (declare (not safe))
              (##fx< __tmp10817 __tmp10816))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9849_ _args9850_))
            (error '"Too many arguments for struct" _obj9849_ _args9850_))))
    (define __struct-instance-init!
      (lambda (_obj9808_ _args9809_)
        (let _lp9811_ ((_k9813_ '1) (_rest9814_ _args9809_))
          (let* ((_rest98159823_ _rest9814_)
                 (_else98179831_ (lambda () _obj9808_))
                 (_K98199837_
                  (lambda (_rest9834_ _hd9835_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9808_ _k9813_ _hd9835_))
                    (let ((__tmp10818
                           (let () (declare (not safe)) (##fx+ _k9813_ '1))))
                      (declare (not safe))
                      (_lp9811_ __tmp10818 _rest9834_)))))
            (if (let () (declare (not safe)) (##pair? _rest98159823_))
                (let ((_hd98209840_
                       (let () (declare (not safe)) (##car _rest98159823_)))
                      (_tl98219842_
                       (let () (declare (not safe)) (##cdr _rest98159823_))))
                  (let* ((_hd9845_ _hd98209840_) (_rest9847_ _tl98219842_))
                    (declare (not safe))
                    (_K98199837_ _rest9847_ _hd9845_)))
                (let () (declare (not safe)) (_else98179831_)))))))
    (define class-instance-init!
      (lambda (_obj9805_ . _args9806_)
        (let ((__tmp10819
               (let () (declare (not safe)) (object-type _obj9805_))))
          (declare (not safe))
          (__class-instance-init! __tmp10819 _obj9805_ _args9806_))))
    (define __class-instance-init!
      (lambda (_klass9749_ _obj9750_ _args9751_)
        (let _lp9753_ ((_rest9755_ _args9751_))
          (let* ((_rest97569766_ _rest9755_)
                 (_else97589774_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9755_))
                        _obj9750_
                        (error '"Unexpected class initializer arguments"
                               _rest9755_))))
                 (_K97609786_
                  (lambda (_rest9777_ _val9778_ _key9779_)
                    (let ((_$e9781_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9749_ _key9779_))))
                      (if _$e9781_
                          ((lambda (_off9784_)
                             (let ((__tmp10820
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9784_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9750_ __tmp10820 _val9778_))
                             (let ()
                               (declare (not safe))
                               (_lp9753_ _rest9777_)))
                           _$e9781_)
                          (error '"No slot for keyword initializer"
                                 _klass9749_
                                 _key9779_))))))
            (if (let () (declare (not safe)) (##pair? _rest97569766_))
                (let ((_hd97619789_
                       (let () (declare (not safe)) (##car _rest97569766_)))
                      (_tl97629791_
                       (let () (declare (not safe)) (##cdr _rest97569766_))))
                  (let ((_key9794_ _hd97619789_))
                    (if (let () (declare (not safe)) (##pair? _tl97629791_))
                        (let ((_hd97639796_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl97629791_)))
                              (_tl97649798_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl97629791_))))
                          (let* ((_val9801_ _hd97639796_)
                                 (_rest9803_ _tl97649798_))
                            (declare (not safe))
                            (_K97609786_ _rest9803_ _val9801_ _key9794_)))
                        (let () (declare (not safe)) (_else97589774_)))))
                (let () (declare (not safe)) (_else97589774_)))))))
    (define constructor-init!
      (lambda (_klass9744_ _kons-id9745_ _obj9746_ . _args9747_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9744_
           _kons-id9745_
           _obj9746_
           _args9747_))))
    (define __constructor-init!
      (lambda (_klass9734_ _kons-id9735_ _obj9736_ _args9737_)
        (let ((_$e9739_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9734_ _kons-id9735_))))
          (if _$e9739_
              ((lambda (_kons9742_)
                 (apply _kons9742_ _obj9736_ _args9737_)
                 _obj9736_)
               _$e9739_)
              (error '"Missing constructor" _klass9734_ _kons-id9735_)))))
    (define struct-copy
      (lambda (_struct9732_)
        (if (let () (declare (not safe)) (##structure? _struct9732_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9732_))
        (let () (declare (not safe)) (##structure-copy _struct9732_))))
    (define struct->list
      (lambda (_obj9730_)
        (if (let () (declare (not safe)) (object? _obj9730_))
            (let () (declare (not safe)) (##vector->list _obj9730_))
            (error '"Not an object" _obj9730_))))
    (define class->list
      (lambda (_obj9717_)
        (if (let () (declare (not safe)) (object? _obj9717_))
            (let ((_klass9719_
                   (let () (declare (not safe)) (object-type _obj9717_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9719_))
                  (let ((_$e9721_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9719_))))
                    (if _$e9721_
                        ((lambda (_slots9724_)
                           (let ((__tmp10821
                                  (let ((__tmp10822
                                         (lambda (_slot9726_ _off9727_ _r9728_)
                                           (if (keyword? _slot9726_)
                                               (let ((__tmp10823
                                                      (let ((__tmp10824
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9717_ _off9727_))))
                (declare (not safe))
                (cons __tmp10824 _r9728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9726_ __tmp10823))
                                               _r9728_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10822 '() _slots9724_))))
                             (declare (not safe))
                             (cons _klass9719_ __tmp10821)))
                         _$e9721_)
                        (list _klass9719_)))
                  (error '"Not a class type" _obj9717_ _klass9719_)))
            (error '"Not an object" _obj9717_))))
    (define unchecked-field-ref
      (lambda (_obj9714_ _off9715_)
        (let ((__tmp10825 (let () (declare (not safe)) (##fx+ _off9715_ '1))))
          (declare (not safe))
          (##vector-ref _obj9714_ __tmp10825))))
    (define unchecked-field-set!
      (lambda (_obj9710_ _off9711_ _val9712_)
        (let ((__tmp10826 (let () (declare (not safe)) (##fx+ _off9711_ '1))))
          (declare (not safe))
          (##vector-set! _obj9710_ __tmp10826 _val9712_))))
    (define unchecked-slot-ref
      (lambda (_obj9707_ _slot9708_)
        (let ((__tmp10827
               (let ((__tmp10828
                      (let () (declare (not safe)) (object-type _obj9707_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10828 _slot9708_))))
          (declare (not safe))
          (unchecked-field-ref _obj9707_ __tmp10827))))
    (define unchecked-slot-set!
      (lambda (_obj9703_ _slot9704_ _val9705_)
        (let ((__tmp10829
               (let ((__tmp10830
                      (let () (declare (not safe)) (object-type _obj9703_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10830 _slot9704_))))
          (declare (not safe))
          (unchecked-field-set! _obj9703_ __tmp10829 _val9705_))))
    (define slot-ref__%
      (lambda (_obj9679_ _slot9680_ _E9681_)
        (if (let () (declare (not safe)) (object? _obj9679_))
            (let* ((_klass9683_
                    (let () (declare (not safe)) (object-type _obj9679_)))
                   (_$e9686_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9683_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9683_ _slot9680_))
                        '#f)))
              (if _$e9686_
                  ((lambda (_off9689_)
                     (let ((__tmp10831
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9689_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9679_ __tmp10831)))
                   _$e9686_)
                  (_E9681_ _obj9679_ _slot9680_)))
            (_E9681_ _obj9679_ _slot9680_))))
    (define slot-ref__0
      (lambda (_obj9694_ _slot9695_)
        (let ((_E9697_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9694_ _slot9695_ _E9697_))))
    (define slot-ref
      (lambda _g10833_
        (let ((_g10832_ (let () (declare (not safe)) (##length _g10833_))))
          (cond ((let () (declare (not safe)) (##fx= _g10832_ 2))
                 (apply (lambda (_obj9694_ _slot9695_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9694_ _slot9695_)))
                        _g10833_))
                ((let () (declare (not safe)) (##fx= _g10832_ 3))
                 (apply (lambda (_obj9699_ _slot9700_ _E9701_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9699_ _slot9700_ _E9701_)))
                        _g10833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10833_))))))
    (define slot-set!__%
      (lambda (_obj9651_ _slot9652_ _val9653_ _E9654_)
        (if (let () (declare (not safe)) (object? _obj9651_))
            (let* ((_klass9656_
                    (let () (declare (not safe)) (object-type _obj9651_)))
                   (_$e9659_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9656_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9656_ _slot9652_))
                        '#f)))
              (if _$e9659_
                  ((lambda (_off9662_)
                     (let ((__tmp10834
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9662_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj9651_ __tmp10834 _val9653_)))
                   _$e9659_)
                  (_E9654_ _obj9651_ _slot9652_)))
            (_E9654_ _obj9651_ _slot9652_))))
    (define slot-set!__0
      (lambda (_obj9667_ _slot9668_ _val9669_)
        (let ((_E9671_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9667_ _slot9668_ _val9669_ _E9671_))))
    (define slot-set!
      (lambda _g10836_
        (let ((_g10835_ (let () (declare (not safe)) (##length _g10836_))))
          (cond ((let () (declare (not safe)) (##fx= _g10835_ 3))
                 (apply (lambda (_obj9667_ _slot9668_ _val9669_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9667_ _slot9668_ _val9669_)))
                        _g10836_))
                ((let () (declare (not safe)) (##fx= _g10835_ 4))
                 (apply (lambda (_obj9673_ _slot9674_ _val9675_ _E9676_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9673_
                             _slot9674_
                             _val9675_
                             _E9676_)))
                        _g10836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10836_))))))
    (define __slot-error
      (lambda (_obj9647_ _slot9648_)
        (error '"Cannot find slot" _obj9647_ _slot9648_)))
    (define call-method
      (lambda (_obj9638_ _id9639_ . _args9640_)
        (let ((_$e9642_
               (let () (declare (not safe)) (method-ref _obj9638_ _id9639_))))
          (if _$e9642_
              ((lambda (_method9645_)
                 (apply _method9645_ _obj9638_ _args9640_))
               _$e9642_)
              (error '"Cannot find method" _obj9638_ _id9639_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9635_ _id9636_)
        (if (let () (declare (not safe)) (object? _obj9635_))
            (let ((__tmp10837
                   (let () (declare (not safe)) (object-type _obj9635_))))
              (declare (not safe))
              (find-method __tmp10837 _id9636_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9629_ _id9630_)
        (let ((_$e9632_
               (let () (declare (not safe)) (method-ref _obj9629_ _id9630_))))
          (if _$e9632_
              _$e9632_
              (error '"Missing method" _obj9629_ _id9630_)))))
    (define bound-method-ref
      (lambda (_obj9619_ _id9620_)
        (let ((_$e9622_
               (let () (declare (not safe)) (method-ref _obj9619_ _id9620_))))
          (if _$e9622_
              ((lambda (_method9625_)
                 (lambda _args9627_ (apply _method9625_ _obj9619_ _args9627_)))
               _$e9622_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9612_ _id9613_)
        (let ((_method9615_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9612_ _id9613_))))
          (lambda _args9617_ (apply _method9615_ _obj9612_ _args9617_)))))
    (define find-method
      (lambda (_klass9606_ _id9607_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9606_))
            (let () (declare (not safe)) (__find-method _klass9606_ _id9607_))
            (if (let () (declare (not safe)) (##type? _klass9606_))
                (let ((_$e9609_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9606_ _id9607_))))
                  (if _$e9609_
                      _$e9609_
                      (let ((__tmp10838
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9606_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10838 _id9607_))))
                '#f))))
    (define __find-method
      (lambda (_klass9595_ _id9596_)
        (let ((_$e9598_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9595_ _id9596_))))
          (if _$e9598_
              _$e9598_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9595_))
                  '#f
                  (let ((_$e9601_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass9595_))))
                    (if _$e9601_
                        ((lambda (_mixin9604_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin9604_ _id9596_)))
                         _$e9601_)
                        (let ((__tmp10839
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9595_))))
                          (declare (not safe))
                          (struct-find-method __tmp10839 _id9596_)))))))))
    (define struct-find-method
      (lambda (_klass9586_ _id9587_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9586_))
            (let ((_$e9589_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9586_ _id9587_))))
              (if _$e9589_
                  _$e9589_
                  (let ((__tmp10841
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9586_))))
                    (declare (not safe))
                    (struct-find-method __tmp10841 _id9587_))))
            (if (let () (declare (not safe)) (##type? _klass9586_))
                (let ((_$e9592_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9586_ _id9587_))))
                  (if _$e9592_
                      _$e9592_
                      (let ((__tmp10840
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9586_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10840 _id9587_))))
                '#f))))
    (define class-find-method
      (lambda (_klass9580_ _id9581_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9580_))
            (let ((_$e9583_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9580_ _id9581_))))
              (if _$e9583_
                  _$e9583_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9580_ _id9581_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin9537_ _id9538_)
        (let _lp9540_ ((_rest9542_ _mixin9537_))
          (let* ((_rest95439551_ _rest9542_)
                 (_else95459559_ (lambda () '#f))
                 (_K95479568_
                  (lambda (_rest9562_ _klass9563_)
                    (let ((_$e9565_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass9563_ _id9538_))))
                      (if _$e9565_
                          _$e9565_
                          (let ()
                            (declare (not safe))
                            (_lp9540_ _rest9562_)))))))
            (if (let () (declare (not safe)) (##pair? _rest95439551_))
                (let ((_hd95489571_
                       (let () (declare (not safe)) (##car _rest95439551_)))
                      (_tl95499573_
                       (let () (declare (not safe)) (##cdr _rest95439551_))))
                  (let* ((_klass9576_ _hd95489571_) (_rest9578_ _tl95499573_))
                    (declare (not safe))
                    (_K95479568_ _rest9578_ _klass9576_)))
                (let () (declare (not safe)) (_else95459559_)))))))
    (define builtin-find-method
      (lambda (_klass9531_ _id9532_)
        (if (let () (declare (not safe)) (##type? _klass9531_))
            (let ((_$e9534_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9531_ _id9532_))))
              (if _$e9534_
                  _$e9534_
                  (let ((__tmp10842
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9531_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10842 _id9532_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9523_ _id9524_)
        (let ((_$e9526_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9523_))))
          (if _$e9526_
              ((lambda (_ht9529_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9529_ _id9524_ '#f)))
               _$e9526_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9515_ _id9516_)
        (let ((_$e9518_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass9515_))))
          (if _$e9518_
              ((lambda (_mixin9521_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin9521_ _id9516_)))
               _$e9518_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass9507_ _id9508_)
        (let ((_$e9510_
               (let ((__tmp10843
                      (let () (declare (not safe)) (##type-id _klass9507_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10843 '#f))))
          (if _$e9510_
              ((lambda (_mtab9513_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9513_ _id9508_ '#f)))
               _$e9510_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9473_ _id9474_ _proc9475_ _rebind?9476_)
        (letrec ((_bind!9478_
                  (lambda (_ht9491_)
                    (if (and (let () (declare (not safe)) (not _rebind?9476_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9491_ _id9474_ '#f)))
                        (error '"Method already bound" _klass9473_ _id9474_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9491_ _id9474_ _proc9475_))))))
          (if (let () (declare (not safe)) (procedure? _proc9475_))
              '#!void
              (error '"Bad method; expected procedure" _proc9475_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9473_))
              (let ((_ht9480_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9473_))))
                (if _ht9480_
                    (let () (declare (not safe)) (_bind!9478_ _ht9480_))
                    (let ((_ht9482_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9473_ _ht9482_))
                      (let () (declare (not safe)) (_bind!9478_ _ht9482_)))))
              (if (let () (declare (not safe)) (##type? _klass9473_))
                  (let ((_ht9489_
                         (let ((_$e9484_
                                (let ((__tmp10844
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9473_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10844
                                   '#f))))
                           (if _$e9484_
                               _$e9484_
                               (let ((_ht9487_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10845
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9473_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10845
                                    _ht9487_))
                                 _ht9487_)))))
                    (declare (not safe))
                    (_bind!9478_ _ht9489_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9473_))))))
    (define bind-method!__0
      (lambda (_klass9496_ _id9497_ _proc9498_)
        (let ((_rebind?9500_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9496_ _id9497_ _proc9498_ _rebind?9500_))))
    (define bind-method!
      (lambda _g10847_
        (let ((_g10846_ (let () (declare (not safe)) (##length _g10847_))))
          (cond ((let () (declare (not safe)) (##fx= _g10846_ 3))
                 (apply (lambda (_klass9496_ _id9497_ _proc9498_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9496_ _id9497_ _proc9498_)))
                        _g10847_))
                ((let () (declare (not safe)) (##fx= _g10846_ 4))
                 (apply (lambda (_klass9502_ _id9503_ _proc9504_ _rebind?9505_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9502_
                             _id9503_
                             _proc9504_
                             _rebind?9505_)))
                        _g10847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10847_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9469_ _specializer9470_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9469_ _specializer9470_))))
    (define seal-class!
      (lambda (_klass9384_)
        (letrec ((_collect-methods!9386_
                  (lambda (_mtab9402_)
                    (letrec ((_merge!9404_
                              (lambda (_tab9464_)
                                (let ((__tmp10848
                                       (lambda (_id9466_ _proc9467_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9402_
                                            _id9466_
                                            _proc9467_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10848 _tab9464_))))
                             (_collect-direct-methods!9405_
                              (lambda (_klass9459_)
                                (let ((_$e9461_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9459_))))
                                  (if _$e9461_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9404_ _$e9461_))
                                      '#!void)))))
                      (let ((_$e9407_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass9384_))))
                        (if _$e9407_
                            ((lambda (_mixin9410_)
                               (let _recur9412_ ((_rest9414_ _mixin9410_))
                                 (let* ((_rest94159423_ _rest9414_)
                                        (_else94179431_ (lambda () '#!void))
                                        (_K94199440_
                                         (lambda (_rest9434_ _klass9435_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur9412_ _rest9434_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass9435_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!9405_
                                                  _klass9435_))
                                               (let ((_$e9437_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass9435_))
                                                          (let ((__tmp10852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass9435_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp10852 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e9437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!9404_ _$e9437_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest94159423_))
                                       (let ((_hd94209443_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest94159423_)))
                                             (_tl94219445_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest94159423_))))
                                         (let* ((_klass9448_ _hd94209443_)
                                                (_rest9450_ _tl94219445_))
                                           (declare (not safe))
                                           (_K94199440_
                                            _rest9450_
                                            _klass9448_)))
                                       '#!void))))
                             _$e9407_)
                            (let _recur9452_ ((_klass9454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9384_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass9454_))
                                  (begin
                                    (let ((__tmp10851
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass9454_))))
                                      (declare (not safe))
                                      (_recur9452_ __tmp10851))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!9405_
                                       _klass9454_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass9454_))
                                      (begin
                                        (let ((__tmp10849
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9454_))))
                                          (declare (not safe))
                                          (_recur9452_ __tmp10849))
                                        (let ((_$e9456_
                                               (let ((__tmp10850
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9454_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp10850
                                                  '#f))))
                                          (if _$e9456_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!9404_ _$e9456_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!9405_ _klass9384_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9384_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9384_))
                  '#!void
                  (begin
                    (if (let ((__tmp10853
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass9384_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp10853))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9384_))
                    (let ((_vtab9388_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9389_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9386_ _mtab9389_))
                      (let ((__tmp10854
                             (lambda (_id9391_ _proc9392_)
                               (let ((_$e9394_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9392_
                                         '#f))))
                                 (if _$e9394_
                                     ((lambda (_specializer9397_)
                                        (let ((_proc9399_
                                               (_specializer9397_ _klass9384_))
                                              (_gid9400_
                                               (let ((__tmp10855
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9384_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp10855
                                                  '"::["
                                                  _id9391_
                                                  '"]"))))
                                          (eval (let ((__tmp10856
                                                       (let ((__tmp10857
                                                              (let ((__tmp10858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10859
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9399_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10859))))
                        (declare (not safe))
                        (cons __tmp10858 '()))))
                 (declare (not safe))
                 (cons _gid9400_ __tmp10857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10856)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9388_
                                             _id9391_
                                             _proc9399_))))
                                      _$e9394_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9388_
                                        _id9391_
                                        _proc9392_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10854 _mtab9389_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9384_ _vtab9388_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9384_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9321_ _obj9322_ _id9323_)
        (let ((_klass9325_
               (let () (declare (not safe)) (object-type _obj9322_)))
              (_type-id9326_
               (let () (declare (not safe)) (##type-id _subklass9321_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9325_))
              (let ((_$e9328_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass9325_))))
                (if _$e9328_
                    ((lambda (_mixin9331_)
                       (let _lp9333_ ((_rest9335_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass9325_ _mixin9331_))))
                         (let* ((_rest93369344_ _rest9335_)
                                (_else93389352_ (lambda () '#f))
                                (_K93409358_
                                 (lambda (_rest9355_ _klass9356_)
                                   (if (let ((__tmp10864
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass9356_))))
                                         (declare (not safe))
                                         (eq? _type-id9326_ __tmp10864))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest9355_
                                          _id9323_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp9333_ _rest9355_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest93369344_))
                               (let ((_hd93419361_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest93369344_)))
                                     (_tl93429363_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest93369344_))))
                                 (let* ((_klass9366_ _hd93419361_)
                                        (_rest9368_ _tl93429363_))
                                   (declare (not safe))
                                   (_K93409358_ _rest9368_ _klass9366_)))
                               (let ()
                                 (declare (not safe))
                                 (_else93389352_))))))
                     _$e9328_)
                    (let _lp9370_ ((_klass9372_ _klass9325_))
                      (if (let ((__tmp10863
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass9372_))))
                            (declare (not safe))
                            (eq? _type-id9326_ __tmp10863))
                          (let ((__tmp10862
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9372_))))
                            (declare (not safe))
                            (struct-find-method __tmp10862 _id9323_))
                          (let ((_$e9374_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9372_))))
                            (if _$e9374_
                                (let ()
                                  (declare (not safe))
                                  (_lp9370_ _$e9374_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass9325_))
                  (let _lp9377_ ((_klass9379_ _klass9325_))
                    (if (let ((__tmp10861
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9379_))))
                          (declare (not safe))
                          (eq? _type-id9326_ __tmp10861))
                        (let ((__tmp10860
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9379_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10860 _id9323_))
                        (let ((_$e9381_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9379_))))
                          (if _$e9381_
                              (let () (declare (not safe)) (_lp9377_ _$e9381_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9311_ _obj9312_ _id9313_ . _args9314_)
        (let ((_$e9316_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9311_ _obj9312_ _id9313_))))
          (if _$e9316_
              ((lambda (_methodf9319_)
                 (apply _methodf9319_ _obj9312_ _args9314_))
               _$e9316_)
              (error '"Cannot find next method" _obj9312_ _id9313_)))))
    (define write-style (lambda (_we9309_) (macro-writeenv-style _we9309_)))
    (define write-object
      (lambda (_we9301_ _obj9302_)
        (let ((_$e9304_
               (let () (declare (not safe)) (method-ref _obj9302_ ':wr))))
          (if _$e9304_
              ((lambda (_method9307_) (_method9307_ _obj9302_ _we9301_))
               _$e9304_)
              (let ()
                (declare (not safe))
                (##default-wr _we9301_ _obj9302_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
