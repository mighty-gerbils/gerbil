(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1695377590)
  (begin
    (define type-descriptor?
      (lambda (_klass10653_)
        (if (let () (declare (not safe)) (##type? _klass10653_))
            (let ((__tmp10663
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10653_))))
              (declare (not safe))
              (eq? __tmp10663 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10651_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10651_))
            (let ((__tmp10664
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10651_))))
              (declare (not safe))
              (not __tmp10664))
            '#f)))
    (define class-type?
      (lambda (_klass10649_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10649_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10649_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id10545_
               _type-name10546_
               _type-super10547_
               _rtd-mixin10548_
               _rtd-fields10549_
               _rtd-plist10550_
               _rtd-ctor10551_
               _rtd-slots10552_
               _rtd-methods10553_)
        (letrec ((_put-props!10555_
                  (lambda (_ht10629_ _key10630_)
                    (letrec ((_put-plist!10632_
                              (lambda (_ht10638_ _key10639_ _plist10640_)
                                (let ((_$e10642_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10639_ _plist10640_))))
                                  (if _$e10642_
                                      ((lambda (_lst10645_)
                                         (for-each
                                          (lambda (_id10647_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht10638_
                                               _id10647_
                                               '#t)))
                                          _lst10645_))
                                       _$e10642_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10632_
                         _ht10629_
                         _key10630_
                         _rtd-plist10550_))
                      (if _rtd-mixin10548_
                          (for-each
                           (lambda (_klass10634_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass10634_))
                                 (let ((_plist10636_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass10634_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist10636_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10632_
                                          _ht10629_
                                          'slots:
                                          _plist10636_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10632_
                                          _ht10629_
                                          _key10630_
                                          _plist10636_))))
                                 '#!void))
                           _rtd-mixin10548_)
                          '#!void)))))
          (let* ((_transparent?10557_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist10550_)))
                 (_field-names10562_
                  (let ((_$e10559_ (assq 'fields: _rtd-plist10550_)))
                    (if _$e10559_ (cdr _$e10559_) '())))
                 (_field-names10569_
                  (let ((_$e10564_ (assq 'slots: _rtd-plist10550_)))
                    (if _$e10564_
                        ((lambda (_slots10567_)
                           (append _field-names10562_ (cdr _slots10567_)))
                         _$e10564_)
                        _field-names10562_)))
                 (_g10665_
                  (if (fx= _rtd-fields10549_ (length _field-names10569_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id10545_
                             _rtd-fields10549_
                             _field-names10569_)))
                 (_canonical-fields10572_
                  (if _type-super10547_
                      (list-tail
                       _field-names10569_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super10547_)))
                      _field-names10569_))
                 (_printable10576_
                  (if _transparent?10557_
                      '#f
                      (let ((_ht10574_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10555_ _ht10574_ 'print:))
                        _ht10574_)))
                 (_equality10580_
                  (if _transparent?10557_
                      '#f
                      (let ((_ht10578_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10555_ _ht10578_ 'equal:))
                        _ht10578_)))
                 (_field-info10621_
                  (let _recur10582_ ((_rest10584_ _canonical-fields10572_))
                    (let* ((_rest1058510593_ _rest10584_)
                           (_else1058710601_ (lambda () '()))
                           (_K1058910609_
                            (lambda (_rest10604_ _id10605_)
                              (let* ((_flags10607_
                                      (if _transparent?10557_
                                          '0
                                          (let ((__tmp10667
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable10576_
                                                        _id10605_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10666
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality10580_
                                                        _id10605_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10667 __tmp10666))))
                                     (__tmp10668
                                      (let ((__tmp10669
                                             (let ((__tmp10670
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur10582_
                                                       _rest10604_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10670))))
                                        (declare (not safe))
                                        (cons _flags10607_ __tmp10669))))
                                (declare (not safe))
                                (cons _id10605_ __tmp10668)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1058510593_))
                          (let ((_hd1059010612_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1058510593_)))
                                (_tl1059110614_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1058510593_))))
                            (let* ((_id10617_ _hd1059010612_)
                                   (_rest10619_ _tl1059110614_))
                              (declare (not safe))
                              (_K1058910609_ _rest10619_ _id10617_)))
                          (let () (declare (not safe)) (_else1058710601_))))))
                 (_opaque?10626_
                  (if (or _transparent?10557_ (assq 'equal: _rtd-plist10550_))
                      (if _type-super10547_
                          (let ((__tmp10671
                                 (let ((__tmp10672
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super10547_))))
                                   (declare (not safe))
                                   (##fxand __tmp10672 '1))))
                            (declare (not safe))
                            (##fx= __tmp10671 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10674 (+ '24 (if _opaque?10626_ '1 '0)))
                  (__tmp10673 (list->vector _field-info10621_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10545_
               _type-name10546_
               __tmp10674
               _type-super10547_
               __tmp10673
               _rtd-mixin10548_
               _rtd-fields10549_
               _rtd-plist10550_
               _rtd-ctor10551_
               _rtd-slots10552_
               _rtd-methods10553_))))))
    (define make-struct-type-descriptor
      (lambda (_id10538_
               _name10539_
               _super10540_
               _fields10541_
               _plist10542_
               _ctor10543_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10538_
           _name10539_
           _super10540_
           '#f
           _fields10541_
           _plist10542_
           _ctor10543_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id10529_
               _name10530_
               _super10531_
               _mixin10532_
               _fields10533_
               _plist10534_
               _ctor10535_
               _slots10536_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10529_
           _name10530_
           _super10531_
           _mixin10532_
           _fields10533_
           _plist10534_
           _ctor10535_
           _slots10536_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass10527_)
        (let () (declare (not safe)) (##vector-ref _klass10527_ '6))))
    (define type-descriptor-fields
      (lambda (_klass10525_)
        (let () (declare (not safe)) (##vector-ref _klass10525_ '7))))
    (define type-descriptor-plist
      (lambda (_klass10523_)
        (let () (declare (not safe)) (##vector-ref _klass10523_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass10521_)
        (let () (declare (not safe)) (##vector-ref _klass10521_ '9))))
    (define type-descriptor-slots
      (lambda (_klass10519_)
        (let () (declare (not safe)) (##vector-ref _klass10519_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10517_)
        (let () (declare (not safe)) (##vector-ref _klass10517_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10514_ _ht10515_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10514_ '11 _ht10515_))))
    (define type-descriptor-sealed?
      (lambda (_klass10512_)
        (let ((__tmp10675
               (let () (declare (not safe)) (##type-flags _klass10512_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10675))))
    (define type-descriptor-seal!
      (lambda (_klass10510_)
        (let ((__tmp10676
               (let ((__tmp10678
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10677
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10510_))))
                 (declare (not safe))
                 (##fxior __tmp10678 __tmp10677))))
          (declare (not safe))
          (##vector-set! _klass10510_ '3 __tmp10676))))
    (define make-struct-type__%
      (lambda (_id10459_
               _super10460_
               _fields10461_
               _name10462_
               _plist10463_
               _ctor10464_
               _field-names10465_)
        (if (and _super10460_
                 (let ((__tmp10679
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10460_))))
                   (declare (not safe))
                   (not __tmp10679)))
            (error '"Illegal super type; not a struct-type" _super10460_)
            '#!void)
        (if (and _super10460_
                 (let ((__tmp10680
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super10460_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10680)))
            (error '"Cannot extend final struct" _super10460_)
            '#!void)
        (let* ((_super-fields10467_
                (if _super10460_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super10460_))
                    '0))
               (_std-fields10469_ (fx+ _fields10461_ _super-fields10467_))
               (_std-field-names10479_
                (let* ((_super-fields10471_
                        (if _super10460_
                            (let ((__tmp10681
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super10460_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10681))
                            '()))
                       (_field-names10476_
                        (let ((_$e10473_ _field-names10465_))
                          (if _$e10473_
                              _$e10473_
                              (make-list _fields10461_ ':)))))
                  (append _super-fields10471_ _field-names10476_)))
               (_g10683_
                (if (let ((__tmp10682 (length _std-field-names10479_)))
                      (declare (not safe))
                      (##fx= _std-fields10469_ __tmp10682))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id10459_
                           _std-fields10469_
                           _std-field-names10479_)))
               (_std-plist10482_
                (let ((__tmp10684
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names10479_))))
                  (declare (not safe))
                  (cons __tmp10684 _plist10463_)))
               (_ctor10487_
                (let ((_$e10484_ _ctor10464_))
                  (if _$e10484_
                      _$e10484_
                      (if _super10460_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super10460_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id10459_
             _name10462_
             _super10460_
             _std-fields10469_
             _std-plist10482_
             _ctor10487_)))))
    (define make-struct-type__0
      (lambda (_id10493_
               _super10494_
               _fields10495_
               _name10496_
               _plist10497_
               _ctor10498_)
        (let ((_field-names10500_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10493_
           _super10494_
           _fields10495_
           _name10496_
           _plist10497_
           _ctor10498_
           _field-names10500_))))
    (define make-struct-type
      (lambda _g10686_
        (let ((_g10685_ (let () (declare (not safe)) (##length _g10686_))))
          (cond ((let () (declare (not safe)) (##fx= _g10685_ 6))
                 (apply (lambda (_id10493_
                                 _super10494_
                                 _fields10495_
                                 _name10496_
                                 _plist10497_
                                 _ctor10498_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10493_
                             _super10494_
                             _fields10495_
                             _name10496_
                             _plist10497_
                             _ctor10498_)))
                        _g10686_))
                ((let () (declare (not safe)) (##fx= _g10685_ 7))
                 (apply (lambda (_id10502_
                                 _super10503_
                                 _fields10504_
                                 _name10505_
                                 _plist10506_
                                 _ctor10507_
                                 _field-names10508_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10502_
                             _super10503_
                             _fields10504_
                             _name10505_
                             _plist10506_
                             _ctor10507_
                             _field-names10508_)))
                        _g10686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10686_))))))
    (define make-struct-predicate
      (lambda (_klass10450_)
        (let ((_tid10452_
               (let () (declare (not safe)) (##type-id _klass10450_))))
          (if (let ((__tmp10687
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass10450_))))
                (declare (not safe))
                (assgetq 'final: __tmp10687))
              (lambda (_obj10454_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10454_ _tid10452_)))
              (lambda (_obj10456_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10456_ _tid10452_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10443_ _field10444_)
        (let ((_off10446_
               (let ((__tmp10688
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10443_ _field10444_))))
                 (declare (not safe))
                 (##fx+ __tmp10688 '1))))
          (lambda (_obj10448_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj10448_ _off10446_ _klass10443_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass10435_ _field10436_)
        (let ((_off10438_
               (let ((__tmp10689
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10435_ _field10436_))))
                 (declare (not safe))
                 (##fx+ __tmp10689 '1))))
          (lambda (_obj10440_ _val10441_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj10440_
               _val10441_
               _off10438_
               _klass10435_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10428_ _field10429_)
        (let ((_off10431_
               (let ((__tmp10690
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10428_ _field10429_))))
                 (declare (not safe))
                 (##fx+ __tmp10690 '1))))
          (lambda (_obj10433_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10433_
               _off10431_
               _klass10428_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10420_ _field10421_)
        (let ((_off10423_
               (let ((__tmp10691
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10420_ _field10421_))))
                 (declare (not safe))
                 (##fx+ __tmp10691 '1))))
          (lambda (_obj10425_ _val10426_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10425_
               _val10426_
               _off10423_
               _klass10420_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass10414_ _field10415_)
        (let ((__tmp10692
               (let ((_$e10417_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10414_))))
                 (if _$e10417_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10417_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10415_ __tmp10692))))
    (define struct-field-ref
      (lambda (_klass10410_ _obj10411_ _off10412_)
        (let ((__tmp10693 (let () (declare (not safe)) (##fx+ _off10412_ '1))))
          (declare (not safe))
          (##structure-ref _obj10411_ __tmp10693 _klass10410_ '#f))))
    (define struct-field-set!
      (lambda (_klass10405_ _obj10406_ _off10407_ _val10408_)
        (let ((__tmp10694 (let () (declare (not safe)) (##fx+ _off10407_ '1))))
          (declare (not safe))
          (##structure-set!
           _obj10406_
           _val10408_
           __tmp10694
           _klass10405_
           '#f))))
    (define struct-subtype?
      (lambda (_klass10396_ _xklass10397_)
        (let ((_klass-t10399_
               (let () (declare (not safe)) (##type-id _klass10396_))))
          (let _lp10401_ ((_next10403_ _xklass10397_))
            (if (let () (declare (not safe)) (not _next10403_))
                '#f
                (if (let ((__tmp10696
                           (let ()
                             (declare (not safe))
                             (##type-id _next10403_))))
                      (declare (not safe))
                      (eq? _klass-t10399_ __tmp10696))
                    '#t
                    (let ((__tmp10695
                           (let ()
                             (declare (not safe))
                             (##type-super _next10403_))))
                      (declare (not safe))
                      (_lp10401_ __tmp10695))))))))
    (define make-class-type
      (lambda (_id10103_
               _super10104_
               _slots10105_
               _name10106_
               _plist10107_
               _ctor10108_)
        (letrec ((_class-slots10110_
                  (lambda (_klass10394_)
                    (let ((__tmp10697
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass10394_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10697))))
                 (_make-slots10111_
                  (lambda (_off10345_)
                    (let ((_slot-table10347_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10349_ ((_rest10351_ _super10104_)
                                      (_off10352_ _off10345_)
                                      (_slot-list10353_ '()))
                        (let* ((_rest1035410362_ _rest10351_)
                               (_else1035610373_
                                (lambda ()
                                  (let ((__tmp10698
                                         (lambda (_off10370_ _slot-list10371_)
                                           (values _off10370_
                                                   _slot-table10347_
                                                   (reverse _slot-list10371_)))))
                                    (declare (not safe))
                                    (_merge-slots10112_
                                     _slot-table10347_
                                     _slots10105_
                                     _off10352_
                                     _slot-list10353_
                                     __tmp10698))))
                               (_K1035810382_
                                (lambda (_rest10376_ _hd10377_)
                                  (let ((__tmp10700
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots10110_ _hd10377_)))
                                        (__tmp10699
                                         (lambda (_off10379_ _slot-list10380_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp10349_
                                              _rest10376_
                                              _off10379_
                                              _slot-list10380_)))))
                                    (declare (not safe))
                                    (_merge-slots10112_
                                     _slot-table10347_
                                     __tmp10700
                                     _off10352_
                                     _slot-list10353_
                                     __tmp10699)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1035410362_))
                              (let ((_hd1035910385_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1035410362_)))
                                    (_tl1036010387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1035410362_))))
                                (let* ((_hd10390_ _hd1035910385_)
                                       (_rest10392_ _tl1036010387_))
                                  (declare (not safe))
                                  (_K1035810382_ _rest10392_ _hd10390_)))
                              (let ()
                                (declare (not safe))
                                (_else1035610373_))))))))
                 (_merge-slots10112_
                  (lambda (_ht10300_ _lst10301_ _off10302_ _r10303_ _K10304_)
                    (let _lp10306_ ((_rest10308_ _lst10301_)
                                    (_off10309_ _off10302_)
                                    (_r10310_ _r10303_))
                      (let* ((_rest1031110319_ _rest10308_)
                             (_else1031310327_
                              (lambda () (_K10304_ _off10309_ _r10310_)))
                             (_K1031510333_
                              (lambda (_rest10330_ _slot10331_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht10300_ _slot10331_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp10306_
                                       _rest10330_
                                       _off10309_
                                       _r10310_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht10300_
                                         _slot10331_
                                         _off10309_))
                                      (let ((__tmp10701
                                             (symbol->keyword _slot10331_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht10300_
                                         __tmp10701
                                         _off10309_))
                                      (let ((__tmp10703
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off10309_ '1)))
                                            (__tmp10702
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot10331_ _r10310_))))
                                        (declare (not safe))
                                        (_lp10306_
                                         _rest10330_
                                         __tmp10703
                                         __tmp10702)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1031110319_))
                            (let ((_hd1031610336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1031110319_)))
                                  (_tl1031710338_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1031110319_))))
                              (let* ((_slot10341_ _hd1031610336_)
                                     (_rest10343_ _tl1031710338_))
                                (declare (not safe))
                                (_K1031510333_ _rest10343_ _slot10341_)))
                            (let ()
                              (declare (not safe))
                              (_else1031310327_)))))))
                 (_find-super-ctor10113_
                  (lambda (_super10252_)
                    (let _lp10254_ ((_rest10256_ _super10252_)
                                    (_ctor10257_ '#f))
                      (let* ((_rest1025810266_ _rest10256_)
                             (_else1026010274_ (lambda () _ctor10257_))
                             (_K1026210288_
                              (lambda (_rest10277_ _hd10278_)
                                (let ((_$e10280_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd10278_))))
                                  (if _$e10280_
                                      ((lambda (_xctor10283_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor10257_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor10257_
                                                        _xctor10283_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp10254_
                                                _rest10277_
                                                _xctor10283_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor10257_
                                                    _xctor10283_)))
                                       _$e10280_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp10254_
                                         _rest10277_
                                         _ctor10257_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1025810266_))
                            (let ((_hd1026310291_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1025810266_)))
                                  (_tl1026410293_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1025810266_))))
                              (let* ((_hd10296_ _hd1026310291_)
                                     (_rest10298_ _tl1026410293_))
                                (declare (not safe))
                                (_K1026210288_ _rest10298_ _hd10296_)))
                            (let ()
                              (declare (not safe))
                              (_else1026010274_)))))))
                 (_find-super-struct10114_
                  (lambda (_super10199_)
                    (letrec ((_base-struct10201_
                              (lambda (_super-struct10241_ _klass10242_)
                                (if _super-struct10241_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct10241_
                                           _klass10242_))
                                        (let _lp10244_ ((_klass10246_
                                                         _klass10242_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass10246_))
                                              _klass10246_
                                              (let ((__tmp10704
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass10246_))))
                                                (declare (not safe))
                                                (_lp10244_ __tmp10704))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass10242_
                                               _super-struct10241_))
                                            _super-struct10241_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass10242_
                                                   _super-struct10241_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass10242_))
                                        _klass10242_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass10242_))
                                            (let _lp10248_ ((_next10250_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##type-super _klass10242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next10250_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next10250_))
                                                      _next10250_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next10250_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp10248_
                                                             _next10250_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp10203_ ((_rest10205_ _super10199_)
                                      (_super-struct10206_ '#f))
                        (let* ((_rest1020710215_ _rest10205_)
                               (_else1020910223_
                                (lambda () _super-struct10206_))
                               (_K1021110229_
                                (lambda (_rest10226_ _hd10227_)
                                  (let ((__tmp10705
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct10201_
                                            _super-struct10206_
                                            _hd10227_))))
                                    (declare (not safe))
                                    (_lp10203_ _rest10226_ __tmp10705)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1020710215_))
                              (let ((_hd1021210232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1020710215_)))
                                    (_tl1021310234_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1020710215_))))
                                (let* ((_hd10237_ _hd1021210232_)
                                       (_rest10239_ _tl1021310234_))
                                  (declare (not safe))
                                  (_K1021110229_ _rest10239_ _hd10237_)))
                              (let ()
                                (declare (not safe))
                                (_else1020910223_))))))))
                 (_expand-struct-mixin10115_
                  (lambda (_super10154_)
                    (let _lp10156_ ((_rest10158_ _super10154_)
                                    (_mixin10159_ '()))
                      (let* ((_rest1016010168_ _rest10158_)
                             (_else1016210176_
                              (lambda () (reverse _mixin10159_)))
                             (_K1016410187_
                              (lambda (_rest10179_ _hd10180_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd10180_))
                                    (let _lp210182_ ((_next10184_ _hd10180_)
                                                     (_mixin10185_
                                                      _mixin10159_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next10184_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp10156_
                                             _rest10179_
                                             _mixin10185_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next10184_))
                                              (let ((__tmp10708
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next10184_)))
                                                    (__tmp10707
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next10184_
                                                             _mixin10185_))))
                                                (declare (not safe))
                                                (_lp210182_
                                                 __tmp10708
                                                 __tmp10707))
                                              (let ()
                                                (declare (not safe))
                                                (_lp10156_
                                                 _rest10179_
                                                 _mixin10185_)))))
                                    (let ((__tmp10706
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd10180_ _mixin10159_))))
                                      (declare (not safe))
                                      (_lp10156_ _rest10179_ __tmp10706))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1016010168_))
                            (let ((_hd1016510190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1016010168_)))
                                  (_tl1016610192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1016010168_))))
                              (let* ((_hd10195_ _hd1016510190_)
                                     (_rest10197_ _tl1016610192_))
                                (declare (not safe))
                                (_K1016410187_ _rest10197_ _hd10195_)))
                            (let ()
                              (declare (not safe))
                              (_else1016210176_))))))))
          (let ((_$e10119_
                 (let ((__tmp10709
                        (lambda (_klass10117_)
                          (let ((__tmp10710
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass10117_))))
                            (declare (not safe))
                            (not __tmp10710)))))
                   (declare (not safe))
                   (find __tmp10709 _super10104_))))
            (if _$e10119_
                ((lambda (_klass10122_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass10122_))
                 _$e10119_)
                (let ((_$e10126_
                       (let ((__tmp10711
                              (lambda (_klass10124_)
                                (let ((__tmp10712
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist
                                          _klass10124_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10712)))))
                         (declare (not safe))
                         (find __tmp10711 _super10104_))))
                  (if _$e10126_
                      ((lambda (_klass10129_)
                         (error '"Cannot extend final class" _klass10129_))
                       _$e10126_)
                      '#!void))))
          (let* ((_std-super10131_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct10114_ _super10104_)))
                 (_mixin10133_
                  (if _std-super10131_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin10115_ _super10104_))
                      _super10104_)))
            (let ((_g10713_
                   (let ((__tmp10715
                          (if _std-super10131_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super10131_))
                              '0)))
                     (declare (not safe))
                     (_make-slots10111_ __tmp10715))))
              (begin
                (let ((_g10714_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10713_)
                             (##vector-length _g10713_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10714_ 3)))
                      (error "Context expects 3 values" _g10714_)))
                (let ((_std-fields10136_
                       (let () (declare (not safe)) (##vector-ref _g10713_ 0)))
                      (_std-slots10137_
                       (let () (declare (not safe)) (##vector-ref _g10713_ 1)))
                      (_std-slot-list10138_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10713_ 2))))
                  (let* ((_std-mixin10140_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin10133_)))
                         (_std-plist10144_
                          (if _std-super10131_
                              (let* ((_fields10142_
                                      (let ((__tmp10716
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super10131_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10716)))
                                     (__tmp10717
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields10142_))))
                                (declare (not safe))
                                (cons __tmp10717 _plist10107_))
                              _plist10107_))
                         (_std-plist10146_
                          (let ((__tmp10718
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list10138_))))
                            (declare (not safe))
                            (cons __tmp10718 _std-plist10144_)))
                         (_std-ctor10151_
                          (let ((_$e10148_ _ctor10108_))
                            (if _$e10148_
                                _$e10148_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor10113_ _super10104_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id10103_
                       _name10106_
                       _std-super10131_
                       _std-mixin10140_
                       _std-fields10136_
                       _std-plist10146_
                       _std-ctor10151_
                       _std-slots10137_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst10054_)
        (letrec ((_class->list10056_
                  (lambda (_klass10098_)
                    (let ((__tmp10719
                           (let ((_$e10100_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass10098_))))
                             (if _$e10100_ _$e10100_ '()))))
                      (declare (not safe))
                      (cons _klass10098_ __tmp10719)))))
          (let* ((_klass-lst1005710067_ _klass-lst10054_)
                 (_else1006010075_
                  (lambda ()
                    (let ((__tmp10720
                           (map _class->list10056_ _klass-lst10054_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp10720)))))
            (let ((_K1006510095_ (lambda () '()))
                  (_K1006210081_
                   (lambda (_klass10079_)
                     (let ()
                       (declare (not safe))
                       (_class->list10056_ _klass10079_)))))
              (let ((_try-match1005910091_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst1005710067_))
                           (let ((_tl1006410086_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst1005710067_)))
                                 (_hd1006310084_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst1005710067_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl1006410086_))
                                 (let ((_klass10089_ _hd1006310084_))
                                   (declare (not safe))
                                   (_class->list10056_ _klass10089_))
                                 (let ()
                                   (declare (not safe))
                                   (_else1006010075_))))
                           (let () (declare (not safe)) (_else1006010075_))))))
                (if (let ()
                      (declare (not safe))
                      (##null? _klass-lst1005710067_))
                    (let () (declare (not safe)) (_K1006510095_))
                    (let ()
                      (declare (not safe))
                      (_try-match1005910091_)))))))))
    (define __linearize-mixins
      (lambda (_lst9895_)
        (letrec ((_K9897_ (lambda (_rest10018_ _r10019_)
                            (let* ((_rest1002010028_ _rest10018_)
                                   (_else1002210036_
                                    (lambda () (reverse _r10019_)))
                                   (_K1002410042_
                                    (lambda (_rest10039_ _hd10040_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize19898_
                                         _hd10040_
                                         _rest10039_
                                         _r10019_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest1002010028_))
                                  (let ((_hd1002510045_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest1002010028_)))
                                        (_tl1002610047_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest1002010028_))))
                                    (let* ((_hd10050_ _hd1002510045_)
                                           (_rest10052_ _tl1002610047_))
                                      (declare (not safe))
                                      (_K1002410042_ _rest10052_ _hd10050_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1002210036_))))))
                 (_linearize19898_
                  (lambda (_hd9981_ _rest9982_ _r9983_)
                    (let* ((_hd99849992_ _hd9981_)
                           (_else998610000_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K9897_ _rest9982_ _r9983_))))
                           (_K998810006_
                            (lambda (_hd-rest10003_ _hd-first10004_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq9901_ _hd-first10004_ _rest9982_))
                                  (let ((__tmp10723 (list _hd9981_)))
                                    (declare (not safe))
                                    (_linearize29899_
                                     _rest9982_
                                     __tmp10723
                                     _r9983_))
                                  (let ((__tmp10722
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest10003_ _rest9982_)))
                                        (__tmp10721
                                         (let ()
                                           (declare (not safe))
                                           (_putq9900_
                                            _hd-first10004_
                                            _r9983_))))
                                    (declare (not safe))
                                    (_K9897_ __tmp10722 __tmp10721))))))
                      (if (let () (declare (not safe)) (##pair? _hd99849992_))
                          (let ((_hd998910009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd99849992_)))
                                (_tl999010011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd99849992_))))
                            (let* ((_hd-first10014_ _hd998910009_)
                                   (_hd-rest10016_ _tl999010011_))
                              (declare (not safe))
                              (_K998810006_ _hd-rest10016_ _hd-first10014_)))
                          (let () (declare (not safe)) (_else998610000_))))))
                 (_linearize29899_
                  (lambda (_rest9911_ _pre9912_ _r9913_)
                    (let _lp9915_ ((_rest9917_ _rest9911_)
                                   (_pre9918_ _pre9912_))
                      (let* ((_rest99199926_ _rest9917_)
                             (_E99219930_
                              (lambda ()
                                (error '"No clause matching" _rest99199926_)))
                             (_K99229969_
                              (lambda (_rest9933_ _hd9934_)
                                (let* ((_hd99359943_ _hd9934_)
                                       (_else99379951_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp9915_ _rest9933_ _pre9918_))))
                                       (_K99399957_
                                        (lambda (_hd-rest9954_ _hd-first9955_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq9901_
                                                 _hd-first9955_
                                                 _rest9933_))
                                              (let ((__tmp10727
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd9934_
                                                             _pre9918_))))
                                                (declare (not safe))
                                                (_lp9915_
                                                 _rest9933_
                                                 __tmp10727))
                                              (let ((__tmp10725
                                                     (let ((__tmp10726
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest9954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest9933_))))
               (declare (not safe))
               (foldl1 cons __tmp10726 _pre9918_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10724
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq9900_
                                                        _hd-first9955_
                                                        _r9913_))))
                                                (declare (not safe))
                                                (_K9897_ __tmp10725
                                                         __tmp10724))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd99359943_))
                                      (let ((_hd99409960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd99359943_)))
                                            (_tl99419962_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd99359943_))))
                                        (let* ((_hd-first9965_ _hd99409960_)
                                               (_hd-rest9967_ _tl99419962_))
                                          (declare (not safe))
                                          (_K99399957_
                                           _hd-rest9967_
                                           _hd-first9965_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else99379951_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest99199926_))
                            (let ((_hd99239972_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest99199926_)))
                                  (_tl99249974_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest99199926_))))
                              (let* ((_hd9977_ _hd99239972_)
                                     (_rest9979_ _tl99249974_))
                                (declare (not safe))
                                (_K99229969_ _rest9979_ _hd9977_)))
                            (let () (declare (not safe)) (_E99219930_)))))))
                 (_putq9900_
                  (lambda (_hd9908_ _lst9909_)
                    (if (memq _hd9908_ _lst9909_)
                        _lst9909_
                        (let ()
                          (declare (not safe))
                          (cons _hd9908_ _lst9909_)))))
                 (_findq9901_
                  (lambda (_hd9903_ _rest9904_)
                    (let ((__tmp10728
                           (lambda (_lst9906_) (memq _hd9903_ _lst9906_))))
                      (declare (not safe))
                      (find __tmp10728 _rest9904_)))))
          (let () (declare (not safe)) (_K9897_ _lst9895_ '())))))
    (define make-class-predicate
      (lambda (_klass9889_)
        (if (let ((__tmp10730
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass9889_))))
              (declare (not safe))
              (assgetq 'final: __tmp10730))
            (lambda (_obj9891_)
              (let ((__tmp10729
                     (let () (declare (not safe)) (##type-id _klass9889_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9891_ __tmp10729)))
            (lambda (_obj9893_)
              (let ()
                (declare (not safe))
                (class-instance? _klass9889_ _obj9893_))))))
    (define make-class-slot-accessor
      (lambda (_klass9884_ _slot9885_)
        (lambda (_obj9887_)
          (let () (declare (not safe)) (slot-ref _obj9887_ _slot9885_)))))
    (define make-class-slot-mutator
      (lambda (_klass9878_ _slot9879_)
        (lambda (_obj9881_ _val9882_)
          (let ()
            (declare (not safe))
            (slot-set! _obj9881_ _slot9879_ _val9882_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9873_ _slot9874_)
        (lambda (_obj9876_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj9876_ _slot9874_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9867_ _slot9868_)
        (lambda (_obj9870_ _val9871_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj9870_ _slot9868_ _val9871_)))))
    (define class-slot-offset
      (lambda (_klass9859_ _slot9860_)
        (let ((_$e9862_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass9859_))))
          (if _$e9862_
              ((lambda (_slots9865_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots9865_ _slot9860_ '#f)))
               _$e9862_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass9853_ _obj9854_ _slot9855_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9853_ _obj9854_))
            (let* ((_off9857_
                    (let ((__tmp10731
                           (let ()
                             (declare (not safe))
                             (object-type _obj9854_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10731 _slot9855_)))
                   (__tmp10732
                    (let () (declare (not safe)) (##fx+ _off9857_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9854_ __tmp10732 _klass9853_ '#f))
            (error '"not an instance" _klass9853_ _obj9854_))))
    (define class-slot-set!
      (lambda (_klass9846_ _obj9847_ _slot9848_ _val9849_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9846_ _obj9847_))
            (let* ((_off9851_
                    (let ((__tmp10733
                           (let ()
                             (declare (not safe))
                             (object-type _obj9847_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10733 _slot9848_)))
                   (__tmp10734
                    (let () (declare (not safe)) (##fx+ _off9851_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9847_
               _val9849_
               __tmp10734
               _klass9846_
               '#f))
            (error '"not an instance" _klass9846_ _obj9847_))))
    (define class-subtype?
      (lambda (_klass9831_ _xklass9832_)
        (let* ((_klass-t9834_
                (let () (declare (not safe)) (##type-id _klass9831_)))
               (_$e9836_
                (let ((__tmp10735
                       (let () (declare (not safe)) (##type-id _xklass9832_))))
                  (declare (not safe))
                  (eq? _klass-t9834_ __tmp10735))))
          (if _$e9836_
              _$e9836_
              (let ((_$e9839_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass9832_))))
                (if _$e9839_
                    ((lambda (_mixin9842_)
                       (if (let ((__tmp10736
                                  (lambda (_xklass9844_)
                                    (let ((__tmp10737
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass9844_))))
                                      (declare (not safe))
                                      (eq? _klass-t9834_ __tmp10737)))))
                             (declare (not safe))
                             (find __tmp10736 _mixin9842_))
                           '#t
                           '#f))
                     _$e9839_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9828_ _obj9829_)
        (let ((__tmp10738
               (let () (declare (not safe)) (##type-id _klass9828_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9829_ __tmp10738))))
    (define struct-instance?
      (lambda (_klass9825_ _obj9826_)
        (let ((__tmp10739
               (let () (declare (not safe)) (##type-id _klass9825_))))
          (declare (not safe))
          (##structure-instance-of? _obj9826_ __tmp10739))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9809_ _obj9810_)
        (if (let () (declare (not safe)) (object? _obj9810_))
            (let ((_klass-id9812_
                   (let () (declare (not safe)) (##type-id _klass9809_)))
                  (_type9813_
                   (let () (declare (not safe)) (object-type _obj9810_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9813_))
                  (let ((_$e9815_
                         (let ((__tmp10740
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type9813_))))
                           (declare (not safe))
                           (eq? __tmp10740 _klass-id9812_))))
                    (if _$e9815_
                        _$e9815_
                        (let ((_$e9818_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type9813_))))
                          (if _$e9818_
                              ((lambda (_mixin9821_)
                                 (let ((__tmp10741
                                        (lambda (_type9823_)
                                          (let ((__tmp10742
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type9823_))))
                                            (declare (not safe))
                                            (eq? __tmp10742 _klass-id9812_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10741 _mixin9821_)))
                               _$e9818_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9804_ _k9805_)
        (let ((_obj9807_
               (let ((__tmp10743
                      (let () (declare (not safe)) (##fx+ _k9805_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10743 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9807_ '0 _klass9804_))
          (let ((__tmp10744 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9807_ __tmp10744))
          _obj9807_)))
    (define make-struct-instance
      (lambda (_klass9794_ . _args9795_)
        (let* ((_fields9797_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass9794_)))
               (_$e9799_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9794_))))
          (if _$e9799_
              ((lambda (_kons-id9802_)
                 (let ((__tmp10746
                        (let ()
                          (declare (not safe))
                          (make-object _klass9794_ _fields9797_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass9794_
                    _kons-id9802_
                    __tmp10746
                    _args9795_)))
               _$e9799_)
              (if (let ((__tmp10745 (length _args9795_)))
                    (declare (not safe))
                    (##fx= _fields9797_ __tmp10745))
                  (apply ##structure _klass9794_ _args9795_)
                  (error '"Arguments don't match object size"
                         _klass9794_
                         _fields9797_
                         _args9795_))))))
    (define make-class-instance
      (lambda (_klass9784_ . _args9785_)
        (let* ((_obj9787_
                (let ((__tmp10747
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass9784_))))
                  (declare (not safe))
                  (make-object _klass9784_ __tmp10747)))
               (_$e9789_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9784_))))
          (if _$e9789_
              ((lambda (_kons-id9792_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9784_
                    _kons-id9792_
                    _obj9787_
                    _args9785_)))
               _$e9789_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9784_ _obj9787_ _args9785_))))))
    (define struct-instance-init!
      (lambda (_obj9781_ . _args9782_)
        (if (let ((__tmp10749 (length _args9782_))
                  (__tmp10748
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9781_))))
              (declare (not safe))
              (##fx< __tmp10749 __tmp10748))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9781_ _args9782_))
            (error '"Too many arguments for struct" _obj9781_ _args9782_))))
    (define __struct-instance-init!
      (lambda (_obj9740_ _args9741_)
        (let _lp9743_ ((_k9745_ '1) (_rest9746_ _args9741_))
          (let* ((_rest97479755_ _rest9746_)
                 (_else97499763_ (lambda () _obj9740_))
                 (_K97519769_
                  (lambda (_rest9766_ _hd9767_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9740_ _k9745_ _hd9767_))
                    (let ((__tmp10750
                           (let () (declare (not safe)) (##fx+ _k9745_ '1))))
                      (declare (not safe))
                      (_lp9743_ __tmp10750 _rest9766_)))))
            (if (let () (declare (not safe)) (##pair? _rest97479755_))
                (let ((_hd97529772_
                       (let () (declare (not safe)) (##car _rest97479755_)))
                      (_tl97539774_
                       (let () (declare (not safe)) (##cdr _rest97479755_))))
                  (let* ((_hd9777_ _hd97529772_) (_rest9779_ _tl97539774_))
                    (declare (not safe))
                    (_K97519769_ _rest9779_ _hd9777_)))
                (let () (declare (not safe)) (_else97499763_)))))))
    (define class-instance-init!
      (lambda (_obj9737_ . _args9738_)
        (let ((__tmp10751
               (let () (declare (not safe)) (object-type _obj9737_))))
          (declare (not safe))
          (__class-instance-init! __tmp10751 _obj9737_ _args9738_))))
    (define __class-instance-init!
      (lambda (_klass9681_ _obj9682_ _args9683_)
        (let _lp9685_ ((_rest9687_ _args9683_))
          (let* ((_rest96889698_ _rest9687_)
                 (_else96909706_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9687_))
                        _obj9682_
                        (error '"Unexpected class initializer arguments"
                               _rest9687_))))
                 (_K96929718_
                  (lambda (_rest9709_ _val9710_ _key9711_)
                    (let ((_$e9713_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9681_ _key9711_))))
                      (if _$e9713_
                          ((lambda (_off9716_)
                             (let ((__tmp10752
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9716_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9682_ __tmp10752 _val9710_))
                             (let ()
                               (declare (not safe))
                               (_lp9685_ _rest9709_)))
                           _$e9713_)
                          (error '"No slot for keyword initializer"
                                 _klass9681_
                                 _key9711_))))))
            (if (let () (declare (not safe)) (##pair? _rest96889698_))
                (let ((_hd96939721_
                       (let () (declare (not safe)) (##car _rest96889698_)))
                      (_tl96949723_
                       (let () (declare (not safe)) (##cdr _rest96889698_))))
                  (let ((_key9726_ _hd96939721_))
                    (if (let () (declare (not safe)) (##pair? _tl96949723_))
                        (let ((_hd96959728_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl96949723_)))
                              (_tl96969730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl96949723_))))
                          (let* ((_val9733_ _hd96959728_)
                                 (_rest9735_ _tl96969730_))
                            (declare (not safe))
                            (_K96929718_ _rest9735_ _val9733_ _key9726_)))
                        (let () (declare (not safe)) (_else96909706_)))))
                (let () (declare (not safe)) (_else96909706_)))))))
    (define constructor-init!
      (lambda (_klass9676_ _kons-id9677_ _obj9678_ . _args9679_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9676_
           _kons-id9677_
           _obj9678_
           _args9679_))))
    (define __constructor-init!
      (lambda (_klass9666_ _kons-id9667_ _obj9668_ _args9669_)
        (let ((_$e9671_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9666_ _kons-id9667_))))
          (if _$e9671_
              ((lambda (_kons9674_)
                 (apply _kons9674_ _obj9668_ _args9669_)
                 _obj9668_)
               _$e9671_)
              (error '"Missing constructor" _klass9666_ _kons-id9667_)))))
    (define struct-copy
      (lambda (_struct9664_)
        (if (let () (declare (not safe)) (##structure? _struct9664_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9664_))
        (let () (declare (not safe)) (##structure-copy _struct9664_))))
    (define struct->list
      (lambda (_obj9662_)
        (if (let () (declare (not safe)) (object? _obj9662_))
            (let () (declare (not safe)) (##vector->list _obj9662_))
            (error '"Not an object" _obj9662_))))
    (define class->list
      (lambda (_obj9649_)
        (if (let () (declare (not safe)) (object? _obj9649_))
            (let ((_klass9651_
                   (let () (declare (not safe)) (object-type _obj9649_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9651_))
                  (let ((_$e9653_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9651_))))
                    (if _$e9653_
                        ((lambda (_slots9656_)
                           (let ((__tmp10753
                                  (let ((__tmp10754
                                         (lambda (_slot9658_ _off9659_ _r9660_)
                                           (if (keyword? _slot9658_)
                                               (let ((__tmp10755
                                                      (let ((__tmp10756
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9649_ _off9659_))))
                (declare (not safe))
                (cons __tmp10756 _r9660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9658_ __tmp10755))
                                               _r9660_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10754 '() _slots9656_))))
                             (declare (not safe))
                             (cons _klass9651_ __tmp10753)))
                         _$e9653_)
                        (list _klass9651_)))
                  (error '"Not a class type" _obj9649_ _klass9651_)))
            (error '"Not an object" _obj9649_))))
    (define unchecked-field-ref
      (lambda (_obj9646_ _off9647_)
        (let ((__tmp10757 (let () (declare (not safe)) (##fx+ _off9647_ '1))))
          (declare (not safe))
          (##vector-ref _obj9646_ __tmp10757))))
    (define unchecked-field-set!
      (lambda (_obj9642_ _off9643_ _val9644_)
        (let ((__tmp10758 (let () (declare (not safe)) (##fx+ _off9643_ '1))))
          (declare (not safe))
          (##vector-set! _obj9642_ __tmp10758 _val9644_))))
    (define unchecked-slot-ref
      (lambda (_obj9639_ _slot9640_)
        (let ((__tmp10759
               (let ((__tmp10760
                      (let () (declare (not safe)) (object-type _obj9639_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10760 _slot9640_))))
          (declare (not safe))
          (unchecked-field-ref _obj9639_ __tmp10759))))
    (define unchecked-slot-set!
      (lambda (_obj9635_ _slot9636_ _val9637_)
        (let ((__tmp10761
               (let ((__tmp10762
                      (let () (declare (not safe)) (object-type _obj9635_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10762 _slot9636_))))
          (declare (not safe))
          (unchecked-field-set! _obj9635_ __tmp10761 _val9637_))))
    (define slot-ref__%
      (lambda (_obj9611_ _slot9612_ _E9613_)
        (if (let () (declare (not safe)) (object? _obj9611_))
            (let* ((_klass9615_
                    (let () (declare (not safe)) (object-type _obj9611_)))
                   (_$e9618_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9615_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9615_ _slot9612_))
                        '#f)))
              (if _$e9618_
                  ((lambda (_off9621_)
                     (let ((__tmp10763
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9621_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9611_ __tmp10763)))
                   _$e9618_)
                  (_E9613_ _obj9611_ _slot9612_)))
            (_E9613_ _obj9611_ _slot9612_))))
    (define slot-ref__0
      (lambda (_obj9626_ _slot9627_)
        (let ((_E9629_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9626_ _slot9627_ _E9629_))))
    (define slot-ref
      (lambda _g10765_
        (let ((_g10764_ (let () (declare (not safe)) (##length _g10765_))))
          (cond ((let () (declare (not safe)) (##fx= _g10764_ 2))
                 (apply (lambda (_obj9626_ _slot9627_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9626_ _slot9627_)))
                        _g10765_))
                ((let () (declare (not safe)) (##fx= _g10764_ 3))
                 (apply (lambda (_obj9631_ _slot9632_ _E9633_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9631_ _slot9632_ _E9633_)))
                        _g10765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10765_))))))
    (define slot-set!__%
      (lambda (_obj9583_ _slot9584_ _val9585_ _E9586_)
        (if (let () (declare (not safe)) (object? _obj9583_))
            (let* ((_klass9588_
                    (let () (declare (not safe)) (object-type _obj9583_)))
                   (_$e9591_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9588_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9588_ _slot9584_))
                        '#f)))
              (if _$e9591_
                  ((lambda (_off9594_)
                     (let ((__tmp10766
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9594_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj9583_ __tmp10766 _val9585_)))
                   _$e9591_)
                  (_E9586_ _obj9583_ _slot9584_)))
            (_E9586_ _obj9583_ _slot9584_))))
    (define slot-set!__0
      (lambda (_obj9599_ _slot9600_ _val9601_)
        (let ((_E9603_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9599_ _slot9600_ _val9601_ _E9603_))))
    (define slot-set!
      (lambda _g10768_
        (let ((_g10767_ (let () (declare (not safe)) (##length _g10768_))))
          (cond ((let () (declare (not safe)) (##fx= _g10767_ 3))
                 (apply (lambda (_obj9599_ _slot9600_ _val9601_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9599_ _slot9600_ _val9601_)))
                        _g10768_))
                ((let () (declare (not safe)) (##fx= _g10767_ 4))
                 (apply (lambda (_obj9605_ _slot9606_ _val9607_ _E9608_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9605_
                             _slot9606_
                             _val9607_
                             _E9608_)))
                        _g10768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10768_))))))
    (define __slot-error
      (lambda (_obj9579_ _slot9580_)
        (error '"Cannot find slot" _obj9579_ _slot9580_)))
    (define call-method
      (lambda (_obj9570_ _id9571_ . _args9572_)
        (let ((_$e9574_
               (let () (declare (not safe)) (method-ref _obj9570_ _id9571_))))
          (if _$e9574_
              ((lambda (_method9577_)
                 (apply _method9577_ _obj9570_ _args9572_))
               _$e9574_)
              (error '"Cannot find method" _obj9570_ _id9571_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9567_ _id9568_)
        (if (let () (declare (not safe)) (object? _obj9567_))
            (let ((__tmp10769
                   (let () (declare (not safe)) (object-type _obj9567_))))
              (declare (not safe))
              (find-method __tmp10769 _id9568_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9561_ _id9562_)
        (let ((_$e9564_
               (let () (declare (not safe)) (method-ref _obj9561_ _id9562_))))
          (if _$e9564_
              _$e9564_
              (error '"Missing method" _obj9561_ _id9562_)))))
    (define bound-method-ref
      (lambda (_obj9551_ _id9552_)
        (let ((_$e9554_
               (let () (declare (not safe)) (method-ref _obj9551_ _id9552_))))
          (if _$e9554_
              ((lambda (_method9557_)
                 (lambda _args9559_ (apply _method9557_ _obj9551_ _args9559_)))
               _$e9554_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9544_ _id9545_)
        (let ((_method9547_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9544_ _id9545_))))
          (lambda _args9549_ (apply _method9547_ _obj9544_ _args9549_)))))
    (define find-method
      (lambda (_klass9538_ _id9539_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9538_))
            (let () (declare (not safe)) (__find-method _klass9538_ _id9539_))
            (if (let () (declare (not safe)) (##type? _klass9538_))
                (let ((_$e9541_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9538_ _id9539_))))
                  (if _$e9541_
                      _$e9541_
                      (let ((__tmp10770
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9538_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10770 _id9539_))))
                '#f))))
    (define __find-method
      (lambda (_klass9527_ _id9528_)
        (let ((_$e9530_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9527_ _id9528_))))
          (if _$e9530_
              _$e9530_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9527_))
                  '#f
                  (let ((_$e9533_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass9527_))))
                    (if _$e9533_
                        ((lambda (_mixin9536_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin9536_ _id9528_)))
                         _$e9533_)
                        (let ((__tmp10771
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9527_))))
                          (declare (not safe))
                          (struct-find-method __tmp10771 _id9528_)))))))))
    (define struct-find-method
      (lambda (_klass9518_ _id9519_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9518_))
            (let ((_$e9521_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9518_ _id9519_))))
              (if _$e9521_
                  _$e9521_
                  (let ((__tmp10773
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9518_))))
                    (declare (not safe))
                    (struct-find-method __tmp10773 _id9519_))))
            (if (let () (declare (not safe)) (##type? _klass9518_))
                (let ((_$e9524_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9518_ _id9519_))))
                  (if _$e9524_
                      _$e9524_
                      (let ((__tmp10772
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9518_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10772 _id9519_))))
                '#f))))
    (define class-find-method
      (lambda (_klass9512_ _id9513_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9512_))
            (let ((_$e9515_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9512_ _id9513_))))
              (if _$e9515_
                  _$e9515_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9512_ _id9513_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin9469_ _id9470_)
        (let _lp9472_ ((_rest9474_ _mixin9469_))
          (let* ((_rest94759483_ _rest9474_)
                 (_else94779491_ (lambda () '#f))
                 (_K94799500_
                  (lambda (_rest9494_ _klass9495_)
                    (let ((_$e9497_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass9495_ _id9470_))))
                      (if _$e9497_
                          _$e9497_
                          (let ()
                            (declare (not safe))
                            (_lp9472_ _rest9494_)))))))
            (if (let () (declare (not safe)) (##pair? _rest94759483_))
                (let ((_hd94809503_
                       (let () (declare (not safe)) (##car _rest94759483_)))
                      (_tl94819505_
                       (let () (declare (not safe)) (##cdr _rest94759483_))))
                  (let* ((_klass9508_ _hd94809503_) (_rest9510_ _tl94819505_))
                    (declare (not safe))
                    (_K94799500_ _rest9510_ _klass9508_)))
                (let () (declare (not safe)) (_else94779491_)))))))
    (define builtin-find-method
      (lambda (_klass9463_ _id9464_)
        (if (let () (declare (not safe)) (##type? _klass9463_))
            (let ((_$e9466_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9463_ _id9464_))))
              (if _$e9466_
                  _$e9466_
                  (let ((__tmp10774
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9463_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10774 _id9464_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9455_ _id9456_)
        (let ((_$e9458_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9455_))))
          (if _$e9458_
              ((lambda (_ht9461_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9461_ _id9456_ '#f)))
               _$e9458_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9447_ _id9448_)
        (let ((_$e9450_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass9447_))))
          (if _$e9450_
              ((lambda (_mixin9453_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin9453_ _id9448_)))
               _$e9450_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass9439_ _id9440_)
        (let ((_$e9442_
               (let ((__tmp10775
                      (let () (declare (not safe)) (##type-id _klass9439_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10775 '#f))))
          (if _$e9442_
              ((lambda (_mtab9445_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9445_ _id9440_ '#f)))
               _$e9442_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9405_ _id9406_ _proc9407_ _rebind?9408_)
        (letrec ((_bind!9410_
                  (lambda (_ht9423_)
                    (if (and (let () (declare (not safe)) (not _rebind?9408_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9423_ _id9406_ '#f)))
                        (error '"Method already bound" _klass9405_ _id9406_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9423_ _id9406_ _proc9407_))))))
          (if (let () (declare (not safe)) (procedure? _proc9407_))
              '#!void
              (error '"Bad method; expected procedure" _proc9407_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9405_))
              (let ((_ht9412_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9405_))))
                (if _ht9412_
                    (let () (declare (not safe)) (_bind!9410_ _ht9412_))
                    (let ((_ht9414_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9405_ _ht9414_))
                      (let () (declare (not safe)) (_bind!9410_ _ht9414_)))))
              (if (let () (declare (not safe)) (##type? _klass9405_))
                  (let ((_ht9421_
                         (let ((_$e9416_
                                (let ((__tmp10776
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9405_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10776
                                   '#f))))
                           (if _$e9416_
                               _$e9416_
                               (let ((_ht9419_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10777
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9405_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10777
                                    _ht9419_))
                                 _ht9419_)))))
                    (declare (not safe))
                    (_bind!9410_ _ht9421_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9405_))))))
    (define bind-method!__0
      (lambda (_klass9428_ _id9429_ _proc9430_)
        (let ((_rebind?9432_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9428_ _id9429_ _proc9430_ _rebind?9432_))))
    (define bind-method!
      (lambda _g10779_
        (let ((_g10778_ (let () (declare (not safe)) (##length _g10779_))))
          (cond ((let () (declare (not safe)) (##fx= _g10778_ 3))
                 (apply (lambda (_klass9428_ _id9429_ _proc9430_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9428_ _id9429_ _proc9430_)))
                        _g10779_))
                ((let () (declare (not safe)) (##fx= _g10778_ 4))
                 (apply (lambda (_klass9434_ _id9435_ _proc9436_ _rebind?9437_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9434_
                             _id9435_
                             _proc9436_
                             _rebind?9437_)))
                        _g10779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10779_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9401_ _specializer9402_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9401_ _specializer9402_))))
    (define seal-class!
      (lambda (_klass9316_)
        (letrec ((_collect-methods!9318_
                  (lambda (_mtab9334_)
                    (letrec ((_merge!9336_
                              (lambda (_tab9396_)
                                (let ((__tmp10780
                                       (lambda (_id9398_ _proc9399_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9334_
                                            _id9398_
                                            _proc9399_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10780 _tab9396_))))
                             (_collect-direct-methods!9337_
                              (lambda (_klass9391_)
                                (let ((_$e9393_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9391_))))
                                  (if _$e9393_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9336_ _$e9393_))
                                      '#!void)))))
                      (let ((_$e9339_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass9316_))))
                        (if _$e9339_
                            ((lambda (_mixin9342_)
                               (let _recur9344_ ((_rest9346_ _mixin9342_))
                                 (let* ((_rest93479355_ _rest9346_)
                                        (_else93499363_ (lambda () '#!void))
                                        (_K93519372_
                                         (lambda (_rest9366_ _klass9367_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur9344_ _rest9366_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass9367_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!9337_
                                                  _klass9367_))
                                               (let ((_$e9369_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass9367_))
                                                          (let ((__tmp10784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass9367_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp10784 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e9369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!9336_ _$e9369_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest93479355_))
                                       (let ((_hd93529375_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest93479355_)))
                                             (_tl93539377_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest93479355_))))
                                         (let* ((_klass9380_ _hd93529375_)
                                                (_rest9382_ _tl93539377_))
                                           (declare (not safe))
                                           (_K93519372_
                                            _rest9382_
                                            _klass9380_)))
                                       '#!void))))
                             _$e9339_)
                            (let _recur9384_ ((_klass9386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9316_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass9386_))
                                  (begin
                                    (let ((__tmp10783
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass9386_))))
                                      (declare (not safe))
                                      (_recur9384_ __tmp10783))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!9337_
                                       _klass9386_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass9386_))
                                      (begin
                                        (let ((__tmp10781
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9386_))))
                                          (declare (not safe))
                                          (_recur9384_ __tmp10781))
                                        (let ((_$e9388_
                                               (let ((__tmp10782
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9386_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp10782
                                                  '#f))))
                                          (if _$e9388_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!9336_ _$e9388_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!9337_ _klass9316_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9316_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9316_))
                  '#!void
                  (begin
                    (if (let ((__tmp10785
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass9316_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp10785))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9316_))
                    (let ((_vtab9320_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9321_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9318_ _mtab9321_))
                      (let ((__tmp10786
                             (lambda (_id9323_ _proc9324_)
                               (let ((_$e9326_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9324_
                                         '#f))))
                                 (if _$e9326_
                                     ((lambda (_specializer9329_)
                                        (let ((_proc9331_
                                               (_specializer9329_ _klass9316_))
                                              (_gid9332_
                                               (let ((__tmp10787
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9316_))))
                                                 (declare (not safe))
                                                 (make-symbol
                                                  __tmp10787
                                                  '"::["
                                                  _id9323_
                                                  '"]"))))
                                          (eval (let ((__tmp10788
                                                       (let ((__tmp10789
                                                              (let ((__tmp10790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10791
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9331_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10791))))
                        (declare (not safe))
                        (cons __tmp10790 '()))))
                 (declare (not safe))
                 (cons _gid9332_ __tmp10789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10788)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9320_
                                             _id9323_
                                             _proc9331_))))
                                      _$e9326_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9320_
                                        _id9323_
                                        _proc9324_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10786 _mtab9321_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9316_ _vtab9320_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9316_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9253_ _obj9254_ _id9255_)
        (let ((_klass9257_
               (let () (declare (not safe)) (object-type _obj9254_)))
              (_type-id9258_
               (let () (declare (not safe)) (##type-id _subklass9253_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9257_))
              (let ((_$e9260_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass9257_))))
                (if _$e9260_
                    ((lambda (_mixin9263_)
                       (let _lp9265_ ((_rest9267_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass9257_ _mixin9263_))))
                         (let* ((_rest92689276_ _rest9267_)
                                (_else92709284_ (lambda () '#f))
                                (_K92729290_
                                 (lambda (_rest9287_ _klass9288_)
                                   (if (let ((__tmp10796
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass9288_))))
                                         (declare (not safe))
                                         (eq? _type-id9258_ __tmp10796))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest9287_
                                          _id9255_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp9265_ _rest9287_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest92689276_))
                               (let ((_hd92739293_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest92689276_)))
                                     (_tl92749295_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest92689276_))))
                                 (let* ((_klass9298_ _hd92739293_)
                                        (_rest9300_ _tl92749295_))
                                   (declare (not safe))
                                   (_K92729290_ _rest9300_ _klass9298_)))
                               (let ()
                                 (declare (not safe))
                                 (_else92709284_))))))
                     _$e9260_)
                    (let _lp9302_ ((_klass9304_ _klass9257_))
                      (if (let ((__tmp10795
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass9304_))))
                            (declare (not safe))
                            (eq? _type-id9258_ __tmp10795))
                          (let ((__tmp10794
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9304_))))
                            (declare (not safe))
                            (struct-find-method __tmp10794 _id9255_))
                          (let ((_$e9306_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9304_))))
                            (if _$e9306_
                                (let ()
                                  (declare (not safe))
                                  (_lp9302_ _$e9306_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass9257_))
                  (let _lp9309_ ((_klass9311_ _klass9257_))
                    (if (let ((__tmp10793
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9311_))))
                          (declare (not safe))
                          (eq? _type-id9258_ __tmp10793))
                        (let ((__tmp10792
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9311_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10792 _id9255_))
                        (let ((_$e9313_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9311_))))
                          (if _$e9313_
                              (let () (declare (not safe)) (_lp9309_ _$e9313_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9243_ _obj9244_ _id9245_ . _args9246_)
        (let ((_$e9248_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9243_ _obj9244_ _id9245_))))
          (if _$e9248_
              ((lambda (_methodf9251_)
                 (apply _methodf9251_ _obj9244_ _args9246_))
               _$e9248_)
              (error '"Cannot find next method" _obj9244_ _id9245_)))))
    (define write-style (lambda (_we9241_) (macro-writeenv-style _we9241_)))
    (define write-object
      (lambda (_we9233_ _obj9234_)
        (let ((_$e9236_
               (let () (declare (not safe)) (method-ref _obj9234_ ':wr))))
          (if _$e9236_
              ((lambda (_method9239_) (_method9239_ _obj9234_ _we9233_))
               _$e9236_)
              (let ()
                (declare (not safe))
                (##default-wr _we9233_ _obj9234_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
