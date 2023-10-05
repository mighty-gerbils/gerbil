(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1696542232)
  (begin
    (define type-descriptor?
      (lambda (_klass10669_)
        (if (let () (declare (not safe)) (##type? _klass10669_))
            (let ((__tmp10679
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10669_))))
              (declare (not safe))
              (eq? __tmp10679 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10667_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10667_))
            (let ((__tmp10680
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10667_))))
              (declare (not safe))
              (not __tmp10680))
            '#f)))
    (define class-type?
      (lambda (_klass10665_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10665_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10665_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id10561_
               _type-name10562_
               _type-super10563_
               _rtd-mixin10564_
               _rtd-fields10565_
               _rtd-plist10566_
               _rtd-ctor10567_
               _rtd-slots10568_
               _rtd-methods10569_)
        (letrec ((_put-props!10571_
                  (lambda (_ht10645_ _key10646_)
                    (letrec ((_put-plist!10648_
                              (lambda (_ht10654_ _key10655_ _plist10656_)
                                (let ((_$e10658_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10655_ _plist10656_))))
                                  (if _$e10658_
                                      ((lambda (_lst10661_)
                                         (for-each
                                          (lambda (_id10663_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht10654_
                                               _id10663_
                                               '#t)))
                                          _lst10661_))
                                       _$e10658_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10648_
                         _ht10645_
                         _key10646_
                         _rtd-plist10566_))
                      (if _rtd-mixin10564_
                          (for-each
                           (lambda (_klass10650_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass10650_))
                                 (let ((_plist10652_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass10650_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist10652_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10648_
                                          _ht10645_
                                          'slots:
                                          _plist10652_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10648_
                                          _ht10645_
                                          _key10646_
                                          _plist10652_))))
                                 '#!void))
                           _rtd-mixin10564_)
                          '#!void)))))
          (let* ((_transparent?10573_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist10566_)))
                 (_field-names10578_
                  (let ((_$e10575_ (assq 'fields: _rtd-plist10566_)))
                    (if _$e10575_ (cdr _$e10575_) '())))
                 (_field-names10585_
                  (let ((_$e10580_ (assq 'slots: _rtd-plist10566_)))
                    (if _$e10580_
                        ((lambda (_slots10583_)
                           (append _field-names10578_ (cdr _slots10583_)))
                         _$e10580_)
                        _field-names10578_)))
                 (_g10681_
                  (if (fx= _rtd-fields10565_ (length _field-names10585_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id10561_
                             _rtd-fields10565_
                             _field-names10585_)))
                 (_canonical-fields10588_
                  (if _type-super10563_
                      (list-tail
                       _field-names10585_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super10563_)))
                      _field-names10585_))
                 (_printable10592_
                  (if _transparent?10573_
                      '#f
                      (let ((_ht10590_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10571_ _ht10590_ 'print:))
                        _ht10590_)))
                 (_equality10596_
                  (if _transparent?10573_
                      '#f
                      (let ((_ht10594_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10571_ _ht10594_ 'equal:))
                        _ht10594_)))
                 (_field-info10637_
                  (let _recur10598_ ((_rest10600_ _canonical-fields10588_))
                    (let* ((_rest1060110609_ _rest10600_)
                           (_else1060310617_ (lambda () '()))
                           (_K1060510625_
                            (lambda (_rest10620_ _id10621_)
                              (let* ((_flags10623_
                                      (if _transparent?10573_
                                          '0
                                          (let ((__tmp10683
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable10592_
                                                        _id10621_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10682
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality10596_
                                                        _id10621_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10683 __tmp10682))))
                                     (__tmp10684
                                      (let ((__tmp10685
                                             (let ((__tmp10686
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur10598_
                                                       _rest10620_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10686))))
                                        (declare (not safe))
                                        (cons _flags10623_ __tmp10685))))
                                (declare (not safe))
                                (cons _id10621_ __tmp10684)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1060110609_))
                          (let ((_hd1060610628_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1060110609_)))
                                (_tl1060710630_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1060110609_))))
                            (let* ((_id10633_ _hd1060610628_)
                                   (_rest10635_ _tl1060710630_))
                              (declare (not safe))
                              (_K1060510625_ _rest10635_ _id10633_)))
                          (let () (declare (not safe)) (_else1060310617_))))))
                 (_opaque?10642_
                  (if (or _transparent?10573_ (assq 'equal: _rtd-plist10566_))
                      (if _type-super10563_
                          (let ((__tmp10687
                                 (let ((__tmp10688
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super10563_))))
                                   (declare (not safe))
                                   (##fxand __tmp10688 '1))))
                            (declare (not safe))
                            (##fx= __tmp10687 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10690 (+ '24 (if _opaque?10642_ '1 '0)))
                  (__tmp10689 (list->vector _field-info10637_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10561_
               _type-name10562_
               __tmp10690
               _type-super10563_
               __tmp10689
               _rtd-mixin10564_
               _rtd-fields10565_
               _rtd-plist10566_
               _rtd-ctor10567_
               _rtd-slots10568_
               _rtd-methods10569_))))))
    (define make-struct-type-descriptor
      (lambda (_id10554_
               _name10555_
               _super10556_
               _fields10557_
               _plist10558_
               _ctor10559_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10554_
           _name10555_
           _super10556_
           '#f
           _fields10557_
           _plist10558_
           _ctor10559_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id10545_
               _name10546_
               _super10547_
               _mixin10548_
               _fields10549_
               _plist10550_
               _ctor10551_
               _slots10552_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10545_
           _name10546_
           _super10547_
           _mixin10548_
           _fields10549_
           _plist10550_
           _ctor10551_
           _slots10552_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass10543_)
        (let () (declare (not safe)) (##vector-ref _klass10543_ '6))))
    (define type-descriptor-fields
      (lambda (_klass10541_)
        (let () (declare (not safe)) (##vector-ref _klass10541_ '7))))
    (define type-descriptor-plist
      (lambda (_klass10539_)
        (let () (declare (not safe)) (##vector-ref _klass10539_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass10537_)
        (let () (declare (not safe)) (##vector-ref _klass10537_ '9))))
    (define type-descriptor-slots
      (lambda (_klass10535_)
        (let () (declare (not safe)) (##vector-ref _klass10535_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10533_)
        (let () (declare (not safe)) (##vector-ref _klass10533_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10530_ _ht10531_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10530_ '11 _ht10531_))))
    (define type-descriptor-sealed?
      (lambda (_klass10528_)
        (let ((__tmp10691
               (let () (declare (not safe)) (##type-flags _klass10528_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10691))))
    (define type-descriptor-seal!
      (lambda (_klass10526_)
        (let ((__tmp10692
               (let ((__tmp10694
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10693
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10526_))))
                 (declare (not safe))
                 (##fxior __tmp10694 __tmp10693))))
          (declare (not safe))
          (##vector-set! _klass10526_ '3 __tmp10692))))
    (define make-struct-type__%
      (lambda (_id10475_
               _super10476_
               _fields10477_
               _name10478_
               _plist10479_
               _ctor10480_
               _field-names10481_)
        (if (and _super10476_
                 (let ((__tmp10695
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10476_))))
                   (declare (not safe))
                   (not __tmp10695)))
            (error '"Illegal super type; not a struct-type" _super10476_)
            '#!void)
        (if (and _super10476_
                 (let ((__tmp10696
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super10476_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10696)))
            (error '"Cannot extend final struct" _super10476_)
            '#!void)
        (let* ((_super-fields10483_
                (if _super10476_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super10476_))
                    '0))
               (_std-fields10485_ (fx+ _fields10477_ _super-fields10483_))
               (_std-field-names10495_
                (let* ((_super-fields10487_
                        (if _super10476_
                            (let ((__tmp10697
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super10476_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10697))
                            '()))
                       (_field-names10492_
                        (let ((_$e10489_ _field-names10481_))
                          (if _$e10489_
                              _$e10489_
                              (make-list _fields10477_ ':)))))
                  (append _super-fields10487_ _field-names10492_)))
               (_g10699_
                (if (let ((__tmp10698 (length _std-field-names10495_)))
                      (declare (not safe))
                      (##fx= _std-fields10485_ __tmp10698))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id10475_
                           _std-fields10485_
                           _std-field-names10495_)))
               (_std-plist10498_
                (let ((__tmp10700
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names10495_))))
                  (declare (not safe))
                  (cons __tmp10700 _plist10479_)))
               (_ctor10503_
                (let ((_$e10500_ _ctor10480_))
                  (if _$e10500_
                      _$e10500_
                      (if _super10476_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super10476_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id10475_
             _name10478_
             _super10476_
             _std-fields10485_
             _std-plist10498_
             _ctor10503_)))))
    (define make-struct-type__0
      (lambda (_id10509_
               _super10510_
               _fields10511_
               _name10512_
               _plist10513_
               _ctor10514_)
        (let ((_field-names10516_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10509_
           _super10510_
           _fields10511_
           _name10512_
           _plist10513_
           _ctor10514_
           _field-names10516_))))
    (define make-struct-type
      (lambda _g10702_
        (let ((_g10701_ (let () (declare (not safe)) (##length _g10702_))))
          (cond ((let () (declare (not safe)) (##fx= _g10701_ 6))
                 (apply (lambda (_id10509_
                                 _super10510_
                                 _fields10511_
                                 _name10512_
                                 _plist10513_
                                 _ctor10514_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10509_
                             _super10510_
                             _fields10511_
                             _name10512_
                             _plist10513_
                             _ctor10514_)))
                        _g10702_))
                ((let () (declare (not safe)) (##fx= _g10701_ 7))
                 (apply (lambda (_id10518_
                                 _super10519_
                                 _fields10520_
                                 _name10521_
                                 _plist10522_
                                 _ctor10523_
                                 _field-names10524_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10518_
                             _super10519_
                             _fields10520_
                             _name10521_
                             _plist10522_
                             _ctor10523_
                             _field-names10524_)))
                        _g10702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10702_))))))
    (define make-struct-predicate
      (lambda (_klass10466_)
        (let ((_tid10468_
               (let () (declare (not safe)) (##type-id _klass10466_))))
          (if (let ((__tmp10703
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass10466_))))
                (declare (not safe))
                (assgetq 'final: __tmp10703))
              (lambda (_obj10470_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10470_ _tid10468_)))
              (lambda (_obj10472_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10472_ _tid10468_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10459_ _field10460_)
        (let ((_off10462_
               (let ((__tmp10704
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10459_ _field10460_))))
                 (declare (not safe))
                 (##fx+ __tmp10704 '1))))
          (lambda (_obj10464_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj10464_ _off10462_ _klass10459_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass10451_ _field10452_)
        (let ((_off10454_
               (let ((__tmp10705
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10451_ _field10452_))))
                 (declare (not safe))
                 (##fx+ __tmp10705 '1))))
          (lambda (_obj10456_ _val10457_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj10456_
               _val10457_
               _off10454_
               _klass10451_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10444_ _field10445_)
        (let ((_off10447_
               (let ((__tmp10706
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10444_ _field10445_))))
                 (declare (not safe))
                 (##fx+ __tmp10706 '1))))
          (lambda (_obj10449_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10449_
               _off10447_
               _klass10444_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10436_ _field10437_)
        (let ((_off10439_
               (let ((__tmp10707
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10436_ _field10437_))))
                 (declare (not safe))
                 (##fx+ __tmp10707 '1))))
          (lambda (_obj10441_ _val10442_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10441_
               _val10442_
               _off10439_
               _klass10436_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass10430_ _field10431_)
        (let ((__tmp10708
               (let ((_$e10433_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10430_))))
                 (if _$e10433_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10433_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10431_ __tmp10708))))
    (define struct-field-ref
      (lambda (_klass10426_ _obj10427_ _off10428_)
        (let ((__tmp10709 (let () (declare (not safe)) (##fx+ _off10428_ '1))))
          (declare (not safe))
          (##structure-ref _obj10427_ __tmp10709 _klass10426_ '#f))))
    (define struct-field-set!
      (lambda (_klass10421_ _obj10422_ _off10423_ _val10424_)
        (let ((__tmp10710 (let () (declare (not safe)) (##fx+ _off10423_ '1))))
          (declare (not safe))
          (##structure-set!
           _obj10422_
           _val10424_
           __tmp10710
           _klass10421_
           '#f))))
    (define struct-subtype?
      (lambda (_klass10412_ _xklass10413_)
        (let ((_klass-t10415_
               (let () (declare (not safe)) (##type-id _klass10412_))))
          (let _lp10417_ ((_next10419_ _xklass10413_))
            (if (let () (declare (not safe)) (not _next10419_))
                '#f
                (if (let ((__tmp10712
                           (let ()
                             (declare (not safe))
                             (##type-id _next10419_))))
                      (declare (not safe))
                      (eq? _klass-t10415_ __tmp10712))
                    '#t
                    (let ((__tmp10711
                           (let ()
                             (declare (not safe))
                             (##type-super _next10419_))))
                      (declare (not safe))
                      (_lp10417_ __tmp10711))))))))
    (define make-class-type
      (lambda (_id10119_
               _super10120_
               _slots10121_
               _name10122_
               _plist10123_
               _ctor10124_)
        (letrec ((_class-slots10126_
                  (lambda (_klass10410_)
                    (let ((__tmp10713
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass10410_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10713))))
                 (_make-slots10127_
                  (lambda (_off10361_)
                    (let ((_slot-table10363_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10365_ ((_rest10367_ _super10120_)
                                      (_off10368_ _off10361_)
                                      (_slot-list10369_ '()))
                        (let* ((_rest1037010378_ _rest10367_)
                               (_else1037210389_
                                (lambda ()
                                  (let ((__tmp10714
                                         (lambda (_off10386_ _slot-list10387_)
                                           (values _off10386_
                                                   _slot-table10363_
                                                   (reverse _slot-list10387_)))))
                                    (declare (not safe))
                                    (_merge-slots10128_
                                     _slot-table10363_
                                     _slots10121_
                                     _off10368_
                                     _slot-list10369_
                                     __tmp10714))))
                               (_K1037410398_
                                (lambda (_rest10392_ _hd10393_)
                                  (let ((__tmp10716
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots10126_ _hd10393_)))
                                        (__tmp10715
                                         (lambda (_off10395_ _slot-list10396_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp10365_
                                              _rest10392_
                                              _off10395_
                                              _slot-list10396_)))))
                                    (declare (not safe))
                                    (_merge-slots10128_
                                     _slot-table10363_
                                     __tmp10716
                                     _off10368_
                                     _slot-list10369_
                                     __tmp10715)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1037010378_))
                              (let ((_hd1037510401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1037010378_)))
                                    (_tl1037610403_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1037010378_))))
                                (let* ((_hd10406_ _hd1037510401_)
                                       (_rest10408_ _tl1037610403_))
                                  (declare (not safe))
                                  (_K1037410398_ _rest10408_ _hd10406_)))
                              (let ()
                                (declare (not safe))
                                (_else1037210389_))))))))
                 (_merge-slots10128_
                  (lambda (_ht10316_ _lst10317_ _off10318_ _r10319_ _K10320_)
                    (let _lp10322_ ((_rest10324_ _lst10317_)
                                    (_off10325_ _off10318_)
                                    (_r10326_ _r10319_))
                      (let* ((_rest1032710335_ _rest10324_)
                             (_else1032910343_
                              (lambda () (_K10320_ _off10325_ _r10326_)))
                             (_K1033110349_
                              (lambda (_rest10346_ _slot10347_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht10316_ _slot10347_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp10322_
                                       _rest10346_
                                       _off10325_
                                       _r10326_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht10316_
                                         _slot10347_
                                         _off10325_))
                                      (let ((__tmp10717
                                             (symbol->keyword _slot10347_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht10316_
                                         __tmp10717
                                         _off10325_))
                                      (let ((__tmp10719
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off10325_ '1)))
                                            (__tmp10718
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot10347_ _r10326_))))
                                        (declare (not safe))
                                        (_lp10322_
                                         _rest10346_
                                         __tmp10719
                                         __tmp10718)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1032710335_))
                            (let ((_hd1033210352_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1032710335_)))
                                  (_tl1033310354_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1032710335_))))
                              (let* ((_slot10357_ _hd1033210352_)
                                     (_rest10359_ _tl1033310354_))
                                (declare (not safe))
                                (_K1033110349_ _rest10359_ _slot10357_)))
                            (let ()
                              (declare (not safe))
                              (_else1032910343_)))))))
                 (_find-super-ctor10129_
                  (lambda (_super10268_)
                    (let _lp10270_ ((_rest10272_ _super10268_)
                                    (_ctor10273_ '#f))
                      (let* ((_rest1027410282_ _rest10272_)
                             (_else1027610290_ (lambda () _ctor10273_))
                             (_K1027810304_
                              (lambda (_rest10293_ _hd10294_)
                                (let ((_$e10296_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd10294_))))
                                  (if _$e10296_
                                      ((lambda (_xctor10299_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor10273_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor10273_
                                                        _xctor10299_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp10270_
                                                _rest10293_
                                                _xctor10299_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor10273_
                                                    _xctor10299_)))
                                       _$e10296_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp10270_
                                         _rest10293_
                                         _ctor10273_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1027410282_))
                            (let ((_hd1027910307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1027410282_)))
                                  (_tl1028010309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1027410282_))))
                              (let* ((_hd10312_ _hd1027910307_)
                                     (_rest10314_ _tl1028010309_))
                                (declare (not safe))
                                (_K1027810304_ _rest10314_ _hd10312_)))
                            (let ()
                              (declare (not safe))
                              (_else1027610290_)))))))
                 (_find-super-struct10130_
                  (lambda (_super10215_)
                    (letrec ((_base-struct10217_
                              (lambda (_super-struct10257_ _klass10258_)
                                (if _super-struct10257_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct10257_
                                           _klass10258_))
                                        (let _lp10260_ ((_klass10262_
                                                         _klass10258_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass10262_))
                                              _klass10262_
                                              (let ((__tmp10720
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass10262_))))
                                                (declare (not safe))
                                                (_lp10260_ __tmp10720))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass10258_
                                               _super-struct10257_))
                                            _super-struct10257_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass10258_
                                                   _super-struct10257_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass10258_))
                                        _klass10258_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass10258_))
                                            (let _lp10264_ ((_next10266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##type-super _klass10258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next10266_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next10266_))
                                                      _next10266_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next10266_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp10264_
                                                             _next10266_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp10219_ ((_rest10221_ _super10215_)
                                      (_super-struct10222_ '#f))
                        (let* ((_rest1022310231_ _rest10221_)
                               (_else1022510239_
                                (lambda () _super-struct10222_))
                               (_K1022710245_
                                (lambda (_rest10242_ _hd10243_)
                                  (let ((__tmp10721
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct10217_
                                            _super-struct10222_
                                            _hd10243_))))
                                    (declare (not safe))
                                    (_lp10219_ _rest10242_ __tmp10721)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1022310231_))
                              (let ((_hd1022810248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1022310231_)))
                                    (_tl1022910250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1022310231_))))
                                (let* ((_hd10253_ _hd1022810248_)
                                       (_rest10255_ _tl1022910250_))
                                  (declare (not safe))
                                  (_K1022710245_ _rest10255_ _hd10253_)))
                              (let ()
                                (declare (not safe))
                                (_else1022510239_))))))))
                 (_expand-struct-mixin10131_
                  (lambda (_super10170_)
                    (let _lp10172_ ((_rest10174_ _super10170_)
                                    (_mixin10175_ '()))
                      (let* ((_rest1017610184_ _rest10174_)
                             (_else1017810192_
                              (lambda () (reverse _mixin10175_)))
                             (_K1018010203_
                              (lambda (_rest10195_ _hd10196_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd10196_))
                                    (let _lp210198_ ((_next10200_ _hd10196_)
                                                     (_mixin10201_
                                                      _mixin10175_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next10200_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp10172_
                                             _rest10195_
                                             _mixin10201_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next10200_))
                                              (let ((__tmp10724
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next10200_)))
                                                    (__tmp10723
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next10200_
                                                             _mixin10201_))))
                                                (declare (not safe))
                                                (_lp210198_
                                                 __tmp10724
                                                 __tmp10723))
                                              (let ()
                                                (declare (not safe))
                                                (_lp10172_
                                                 _rest10195_
                                                 _mixin10201_)))))
                                    (let ((__tmp10722
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd10196_ _mixin10175_))))
                                      (declare (not safe))
                                      (_lp10172_ _rest10195_ __tmp10722))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1017610184_))
                            (let ((_hd1018110206_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1017610184_)))
                                  (_tl1018210208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1017610184_))))
                              (let* ((_hd10211_ _hd1018110206_)
                                     (_rest10213_ _tl1018210208_))
                                (declare (not safe))
                                (_K1018010203_ _rest10213_ _hd10211_)))
                            (let ()
                              (declare (not safe))
                              (_else1017810192_))))))))
          (let ((_$e10135_
                 (let ((__tmp10725
                        (lambda (_klass10133_)
                          (let ((__tmp10726
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass10133_))))
                            (declare (not safe))
                            (not __tmp10726)))))
                   (declare (not safe))
                   (find __tmp10725 _super10120_))))
            (if _$e10135_
                ((lambda (_klass10138_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass10138_))
                 _$e10135_)
                (let ((_$e10142_
                       (let ((__tmp10727
                              (lambda (_klass10140_)
                                (let ((__tmp10728
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist
                                          _klass10140_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10728)))))
                         (declare (not safe))
                         (find __tmp10727 _super10120_))))
                  (if _$e10142_
                      ((lambda (_klass10145_)
                         (error '"Cannot extend final class" _klass10145_))
                       _$e10142_)
                      '#!void))))
          (let* ((_std-super10147_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct10130_ _super10120_)))
                 (_mixin10149_
                  (if _std-super10147_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin10131_ _super10120_))
                      _super10120_)))
            (let ((_g10729_
                   (let ((__tmp10731
                          (if _std-super10147_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super10147_))
                              '0)))
                     (declare (not safe))
                     (_make-slots10127_ __tmp10731))))
              (begin
                (let ((_g10730_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10729_)
                             (##vector-length _g10729_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10730_ 3)))
                      (error "Context expects 3 values" _g10730_)))
                (let ((_std-fields10152_
                       (let () (declare (not safe)) (##vector-ref _g10729_ 0)))
                      (_std-slots10153_
                       (let () (declare (not safe)) (##vector-ref _g10729_ 1)))
                      (_std-slot-list10154_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10729_ 2))))
                  (let* ((_std-mixin10156_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin10149_)))
                         (_std-plist10160_
                          (if _std-super10147_
                              (let* ((_fields10158_
                                      (let ((__tmp10732
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super10147_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10732)))
                                     (__tmp10733
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields10158_))))
                                (declare (not safe))
                                (cons __tmp10733 _plist10123_))
                              _plist10123_))
                         (_std-plist10162_
                          (let ((__tmp10734
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list10154_))))
                            (declare (not safe))
                            (cons __tmp10734 _std-plist10160_)))
                         (_std-ctor10167_
                          (let ((_$e10164_ _ctor10124_))
                            (if _$e10164_
                                _$e10164_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor10129_ _super10120_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id10119_
                       _name10122_
                       _std-super10147_
                       _std-mixin10156_
                       _std-fields10152_
                       _std-plist10162_
                       _std-ctor10167_
                       _std-slots10153_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst10070_)
        (letrec ((_class->list10072_
                  (lambda (_klass10114_)
                    (let ((__tmp10735
                           (let ((_$e10116_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass10114_))))
                             (if _$e10116_ _$e10116_ '()))))
                      (declare (not safe))
                      (cons _klass10114_ __tmp10735)))))
          (let* ((_klass-lst1007310083_ _klass-lst10070_)
                 (_else1007610091_
                  (lambda ()
                    (let ((__tmp10736
                           (map _class->list10072_ _klass-lst10070_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp10736)))))
            (let ((_K1008110111_ (lambda () '()))
                  (_K1007810097_
                   (lambda (_klass10095_)
                     (let ()
                       (declare (not safe))
                       (_class->list10072_ _klass10095_)))))
              (let ((_try-match1007510107_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst1007310083_))
                           (let ((_tl1008010102_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst1007310083_)))
                                 (_hd1007910100_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst1007310083_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl1008010102_))
                                 (let ((_klass10105_ _hd1007910100_))
                                   (declare (not safe))
                                   (_class->list10072_ _klass10105_))
                                 (let ()
                                   (declare (not safe))
                                   (_else1007610091_))))
                           (let () (declare (not safe)) (_else1007610091_))))))
                (if (let ()
                      (declare (not safe))
                      (##null? _klass-lst1007310083_))
                    (let () (declare (not safe)) (_K1008110111_))
                    (let ()
                      (declare (not safe))
                      (_try-match1007510107_)))))))))
    (define __linearize-mixins
      (lambda (_lst9911_)
        (letrec ((_K9913_ (lambda (_rest10034_ _r10035_)
                            (let* ((_rest1003610044_ _rest10034_)
                                   (_else1003810052_
                                    (lambda () (reverse _r10035_)))
                                   (_K1004010058_
                                    (lambda (_rest10055_ _hd10056_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize19914_
                                         _hd10056_
                                         _rest10055_
                                         _r10035_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest1003610044_))
                                  (let ((_hd1004110061_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest1003610044_)))
                                        (_tl1004210063_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest1003610044_))))
                                    (let* ((_hd10066_ _hd1004110061_)
                                           (_rest10068_ _tl1004210063_))
                                      (declare (not safe))
                                      (_K1004010058_ _rest10068_ _hd10066_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1003810052_))))))
                 (_linearize19914_
                  (lambda (_hd9997_ _rest9998_ _r9999_)
                    (let* ((_hd1000010008_ _hd9997_)
                           (_else1000210016_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K9913_ _rest9998_ _r9999_))))
                           (_K1000410022_
                            (lambda (_hd-rest10019_ _hd-first10020_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq9917_ _hd-first10020_ _rest9998_))
                                  (let ((__tmp10739 (list _hd9997_)))
                                    (declare (not safe))
                                    (_linearize29915_
                                     _rest9998_
                                     __tmp10739
                                     _r9999_))
                                  (let ((__tmp10738
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest10019_ _rest9998_)))
                                        (__tmp10737
                                         (let ()
                                           (declare (not safe))
                                           (_putq9916_
                                            _hd-first10020_
                                            _r9999_))))
                                    (declare (not safe))
                                    (_K9913_ __tmp10738 __tmp10737))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1000010008_))
                          (let ((_hd1000510025_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1000010008_)))
                                (_tl1000610027_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1000010008_))))
                            (let* ((_hd-first10030_ _hd1000510025_)
                                   (_hd-rest10032_ _tl1000610027_))
                              (declare (not safe))
                              (_K1000410022_ _hd-rest10032_ _hd-first10030_)))
                          (let () (declare (not safe)) (_else1000210016_))))))
                 (_linearize29915_
                  (lambda (_rest9927_ _pre9928_ _r9929_)
                    (let _lp9931_ ((_rest9933_ _rest9927_)
                                   (_pre9934_ _pre9928_))
                      (let* ((_rest99359942_ _rest9933_)
                             (_E99379946_
                              (lambda ()
                                (error '"No clause matching" _rest99359942_)))
                             (_K99389985_
                              (lambda (_rest9949_ _hd9950_)
                                (let* ((_hd99519959_ _hd9950_)
                                       (_else99539967_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp9931_ _rest9949_ _pre9934_))))
                                       (_K99559973_
                                        (lambda (_hd-rest9970_ _hd-first9971_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq9917_
                                                 _hd-first9971_
                                                 _rest9949_))
                                              (let ((__tmp10743
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd9950_
                                                             _pre9934_))))
                                                (declare (not safe))
                                                (_lp9931_
                                                 _rest9949_
                                                 __tmp10743))
                                              (let ((__tmp10741
                                                     (let ((__tmp10742
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest9970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest9949_))))
               (declare (not safe))
               (foldl1 cons __tmp10742 _pre9934_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10740
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq9916_
                                                        _hd-first9971_
                                                        _r9929_))))
                                                (declare (not safe))
                                                (_K9913_ __tmp10741
                                                         __tmp10740))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd99519959_))
                                      (let ((_hd99569976_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd99519959_)))
                                            (_tl99579978_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd99519959_))))
                                        (let* ((_hd-first9981_ _hd99569976_)
                                               (_hd-rest9983_ _tl99579978_))
                                          (declare (not safe))
                                          (_K99559973_
                                           _hd-rest9983_
                                           _hd-first9981_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else99539967_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest99359942_))
                            (let ((_hd99399988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest99359942_)))
                                  (_tl99409990_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest99359942_))))
                              (let* ((_hd9993_ _hd99399988_)
                                     (_rest9995_ _tl99409990_))
                                (declare (not safe))
                                (_K99389985_ _rest9995_ _hd9993_)))
                            (let () (declare (not safe)) (_E99379946_)))))))
                 (_putq9916_
                  (lambda (_hd9924_ _lst9925_)
                    (if (memq _hd9924_ _lst9925_)
                        _lst9925_
                        (let ()
                          (declare (not safe))
                          (cons _hd9924_ _lst9925_)))))
                 (_findq9917_
                  (lambda (_hd9919_ _rest9920_)
                    (let ((__tmp10744
                           (lambda (_lst9922_) (memq _hd9919_ _lst9922_))))
                      (declare (not safe))
                      (find __tmp10744 _rest9920_)))))
          (let () (declare (not safe)) (_K9913_ _lst9911_ '())))))
    (define make-class-predicate
      (lambda (_klass9905_)
        (if (let ((__tmp10746
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass9905_))))
              (declare (not safe))
              (assgetq 'final: __tmp10746))
            (lambda (_obj9907_)
              (let ((__tmp10745
                     (let () (declare (not safe)) (##type-id _klass9905_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9907_ __tmp10745)))
            (lambda (_obj9909_)
              (let ()
                (declare (not safe))
                (class-instance? _klass9905_ _obj9909_))))))
    (define make-class-slot-accessor
      (lambda (_klass9900_ _slot9901_)
        (lambda (_obj9903_)
          (let () (declare (not safe)) (slot-ref _obj9903_ _slot9901_)))))
    (define make-class-slot-mutator
      (lambda (_klass9894_ _slot9895_)
        (lambda (_obj9897_ _val9898_)
          (let ()
            (declare (not safe))
            (slot-set! _obj9897_ _slot9895_ _val9898_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9889_ _slot9890_)
        (lambda (_obj9892_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj9892_ _slot9890_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9883_ _slot9884_)
        (lambda (_obj9886_ _val9887_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj9886_ _slot9884_ _val9887_)))))
    (define class-slot-offset
      (lambda (_klass9875_ _slot9876_)
        (let ((_$e9878_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass9875_))))
          (if _$e9878_
              ((lambda (_slots9881_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots9881_ _slot9876_ '#f)))
               _$e9878_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass9869_ _obj9870_ _slot9871_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9869_ _obj9870_))
            (let* ((_off9873_
                    (let ((__tmp10747
                           (let ()
                             (declare (not safe))
                             (object-type _obj9870_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10747 _slot9871_)))
                   (__tmp10748
                    (let () (declare (not safe)) (##fx+ _off9873_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9870_ __tmp10748 _klass9869_ '#f))
            (error '"not an instance" _klass9869_ _obj9870_))))
    (define class-slot-set!
      (lambda (_klass9862_ _obj9863_ _slot9864_ _val9865_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9862_ _obj9863_))
            (let* ((_off9867_
                    (let ((__tmp10749
                           (let ()
                             (declare (not safe))
                             (object-type _obj9863_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10749 _slot9864_)))
                   (__tmp10750
                    (let () (declare (not safe)) (##fx+ _off9867_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9863_
               _val9865_
               __tmp10750
               _klass9862_
               '#f))
            (error '"not an instance" _klass9862_ _obj9863_))))
    (define class-subtype?
      (lambda (_klass9847_ _xklass9848_)
        (let* ((_klass-t9850_
                (let () (declare (not safe)) (##type-id _klass9847_)))
               (_$e9852_
                (let ((__tmp10751
                       (let () (declare (not safe)) (##type-id _xklass9848_))))
                  (declare (not safe))
                  (eq? _klass-t9850_ __tmp10751))))
          (if _$e9852_
              _$e9852_
              (let ((_$e9855_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass9848_))))
                (if _$e9855_
                    ((lambda (_mixin9858_)
                       (if (let ((__tmp10752
                                  (lambda (_xklass9860_)
                                    (let ((__tmp10753
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass9860_))))
                                      (declare (not safe))
                                      (eq? _klass-t9850_ __tmp10753)))))
                             (declare (not safe))
                             (find __tmp10752 _mixin9858_))
                           '#t
                           '#f))
                     _$e9855_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9844_ _obj9845_)
        (let ((__tmp10754
               (let () (declare (not safe)) (##type-id _klass9844_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9845_ __tmp10754))))
    (define struct-instance?
      (lambda (_klass9841_ _obj9842_)
        (let ((__tmp10755
               (let () (declare (not safe)) (##type-id _klass9841_))))
          (declare (not safe))
          (##structure-instance-of? _obj9842_ __tmp10755))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9825_ _obj9826_)
        (if (let () (declare (not safe)) (object? _obj9826_))
            (let ((_klass-id9828_
                   (let () (declare (not safe)) (##type-id _klass9825_)))
                  (_type9829_
                   (let () (declare (not safe)) (object-type _obj9826_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9829_))
                  (let ((_$e9831_
                         (let ((__tmp10756
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type9829_))))
                           (declare (not safe))
                           (eq? __tmp10756 _klass-id9828_))))
                    (if _$e9831_
                        _$e9831_
                        (let ((_$e9834_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type9829_))))
                          (if _$e9834_
                              ((lambda (_mixin9837_)
                                 (let ((__tmp10757
                                        (lambda (_type9839_)
                                          (let ((__tmp10758
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type9839_))))
                                            (declare (not safe))
                                            (eq? __tmp10758 _klass-id9828_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10757 _mixin9837_)))
                               _$e9834_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9820_ _k9821_)
        (let ((_obj9823_
               (let ((__tmp10759
                      (let () (declare (not safe)) (##fx+ _k9821_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10759 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9823_ '0 _klass9820_))
          (let ((__tmp10760 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9823_ __tmp10760))
          _obj9823_)))
    (define make-struct-instance
      (lambda (_klass9810_ . _args9811_)
        (let* ((_fields9813_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass9810_)))
               (_$e9815_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9810_))))
          (if _$e9815_
              ((lambda (_kons-id9818_)
                 (let ((__tmp10762
                        (let ()
                          (declare (not safe))
                          (make-object _klass9810_ _fields9813_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass9810_
                    _kons-id9818_
                    __tmp10762
                    _args9811_)))
               _$e9815_)
              (if (let ((__tmp10761 (length _args9811_)))
                    (declare (not safe))
                    (##fx= _fields9813_ __tmp10761))
                  (apply ##structure _klass9810_ _args9811_)
                  (error '"Arguments don't match object size"
                         _klass9810_
                         _fields9813_
                         _args9811_))))))
    (define make-class-instance
      (lambda (_klass9800_ . _args9801_)
        (let* ((_obj9803_
                (let ((__tmp10763
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass9800_))))
                  (declare (not safe))
                  (make-object _klass9800_ __tmp10763)))
               (_$e9805_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9800_))))
          (if _$e9805_
              ((lambda (_kons-id9808_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9800_
                    _kons-id9808_
                    _obj9803_
                    _args9801_)))
               _$e9805_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9800_ _obj9803_ _args9801_))))))
    (define struct-instance-init!
      (lambda (_obj9797_ . _args9798_)
        (if (let ((__tmp10765 (length _args9798_))
                  (__tmp10764
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9797_))))
              (declare (not safe))
              (##fx< __tmp10765 __tmp10764))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9797_ _args9798_))
            (error '"Too many arguments for struct" _obj9797_ _args9798_))))
    (define __struct-instance-init!
      (lambda (_obj9756_ _args9757_)
        (let _lp9759_ ((_k9761_ '1) (_rest9762_ _args9757_))
          (let* ((_rest97639771_ _rest9762_)
                 (_else97659779_ (lambda () _obj9756_))
                 (_K97679785_
                  (lambda (_rest9782_ _hd9783_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9756_ _k9761_ _hd9783_))
                    (let ((__tmp10766
                           (let () (declare (not safe)) (##fx+ _k9761_ '1))))
                      (declare (not safe))
                      (_lp9759_ __tmp10766 _rest9782_)))))
            (if (let () (declare (not safe)) (##pair? _rest97639771_))
                (let ((_hd97689788_
                       (let () (declare (not safe)) (##car _rest97639771_)))
                      (_tl97699790_
                       (let () (declare (not safe)) (##cdr _rest97639771_))))
                  (let* ((_hd9793_ _hd97689788_) (_rest9795_ _tl97699790_))
                    (declare (not safe))
                    (_K97679785_ _rest9795_ _hd9793_)))
                (let () (declare (not safe)) (_else97659779_)))))))
    (define class-instance-init!
      (lambda (_obj9753_ . _args9754_)
        (let ((__tmp10767
               (let () (declare (not safe)) (object-type _obj9753_))))
          (declare (not safe))
          (__class-instance-init! __tmp10767 _obj9753_ _args9754_))))
    (define __class-instance-init!
      (lambda (_klass9697_ _obj9698_ _args9699_)
        (let _lp9701_ ((_rest9703_ _args9699_))
          (let* ((_rest97049714_ _rest9703_)
                 (_else97069722_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9703_))
                        _obj9698_
                        (error '"Unexpected class initializer arguments"
                               _rest9703_))))
                 (_K97089734_
                  (lambda (_rest9725_ _val9726_ _key9727_)
                    (let ((_$e9729_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9697_ _key9727_))))
                      (if _$e9729_
                          ((lambda (_off9732_)
                             (let ((__tmp10768
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9732_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9698_ __tmp10768 _val9726_))
                             (let ()
                               (declare (not safe))
                               (_lp9701_ _rest9725_)))
                           _$e9729_)
                          (error '"No slot for keyword initializer"
                                 _klass9697_
                                 _key9727_))))))
            (if (let () (declare (not safe)) (##pair? _rest97049714_))
                (let ((_hd97099737_
                       (let () (declare (not safe)) (##car _rest97049714_)))
                      (_tl97109739_
                       (let () (declare (not safe)) (##cdr _rest97049714_))))
                  (let ((_key9742_ _hd97099737_))
                    (if (let () (declare (not safe)) (##pair? _tl97109739_))
                        (let ((_hd97119744_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl97109739_)))
                              (_tl97129746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl97109739_))))
                          (let* ((_val9749_ _hd97119744_)
                                 (_rest9751_ _tl97129746_))
                            (declare (not safe))
                            (_K97089734_ _rest9751_ _val9749_ _key9742_)))
                        (let () (declare (not safe)) (_else97069722_)))))
                (let () (declare (not safe)) (_else97069722_)))))))
    (define constructor-init!
      (lambda (_klass9692_ _kons-id9693_ _obj9694_ . _args9695_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9692_
           _kons-id9693_
           _obj9694_
           _args9695_))))
    (define __constructor-init!
      (lambda (_klass9682_ _kons-id9683_ _obj9684_ _args9685_)
        (let ((_$e9687_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9682_ _kons-id9683_))))
          (if _$e9687_
              ((lambda (_kons9690_)
                 (apply _kons9690_ _obj9684_ _args9685_)
                 _obj9684_)
               _$e9687_)
              (error '"Missing constructor" _klass9682_ _kons-id9683_)))))
    (define struct-copy
      (lambda (_struct9680_)
        (if (let () (declare (not safe)) (##structure? _struct9680_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9680_))
        (let () (declare (not safe)) (##structure-copy _struct9680_))))
    (define struct->list
      (lambda (_obj9678_)
        (if (let () (declare (not safe)) (object? _obj9678_))
            (let () (declare (not safe)) (##vector->list _obj9678_))
            (error '"Not an object" _obj9678_))))
    (define class->list
      (lambda (_obj9665_)
        (if (let () (declare (not safe)) (object? _obj9665_))
            (let ((_klass9667_
                   (let () (declare (not safe)) (object-type _obj9665_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9667_))
                  (let ((_$e9669_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9667_))))
                    (if _$e9669_
                        ((lambda (_slots9672_)
                           (let ((__tmp10769
                                  (let ((__tmp10770
                                         (lambda (_slot9674_ _off9675_ _r9676_)
                                           (if (keyword? _slot9674_)
                                               (let ((__tmp10771
                                                      (let ((__tmp10772
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9665_ _off9675_))))
                (declare (not safe))
                (cons __tmp10772 _r9676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9674_ __tmp10771))
                                               _r9676_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10770 '() _slots9672_))))
                             (declare (not safe))
                             (cons _klass9667_ __tmp10769)))
                         _$e9669_)
                        (list _klass9667_)))
                  (error '"Not a class type" _obj9665_ _klass9667_)))
            (error '"Not an object" _obj9665_))))
    (define unchecked-field-ref
      (lambda (_obj9662_ _off9663_)
        (let ((__tmp10773 (let () (declare (not safe)) (##fx+ _off9663_ '1))))
          (declare (not safe))
          (##vector-ref _obj9662_ __tmp10773))))
    (define unchecked-field-set!
      (lambda (_obj9658_ _off9659_ _val9660_)
        (let ((__tmp10774 (let () (declare (not safe)) (##fx+ _off9659_ '1))))
          (declare (not safe))
          (##vector-set! _obj9658_ __tmp10774 _val9660_))))
    (define unchecked-slot-ref
      (lambda (_obj9655_ _slot9656_)
        (let ((__tmp10775
               (let ((__tmp10776
                      (let () (declare (not safe)) (object-type _obj9655_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10776 _slot9656_))))
          (declare (not safe))
          (unchecked-field-ref _obj9655_ __tmp10775))))
    (define unchecked-slot-set!
      (lambda (_obj9651_ _slot9652_ _val9653_)
        (let ((__tmp10777
               (let ((__tmp10778
                      (let () (declare (not safe)) (object-type _obj9651_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10778 _slot9652_))))
          (declare (not safe))
          (unchecked-field-set! _obj9651_ __tmp10777 _val9653_))))
    (define slot-ref__%
      (lambda (_obj9627_ _slot9628_ _E9629_)
        (if (let () (declare (not safe)) (object? _obj9627_))
            (let* ((_klass9631_
                    (let () (declare (not safe)) (object-type _obj9627_)))
                   (_$e9634_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9631_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9631_ _slot9628_))
                        '#f)))
              (if _$e9634_
                  ((lambda (_off9637_)
                     (let ((__tmp10779
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9637_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9627_ __tmp10779)))
                   _$e9634_)
                  (_E9629_ _obj9627_ _slot9628_)))
            (_E9629_ _obj9627_ _slot9628_))))
    (define slot-ref__0
      (lambda (_obj9642_ _slot9643_)
        (let ((_E9645_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9642_ _slot9643_ _E9645_))))
    (define slot-ref
      (lambda _g10781_
        (let ((_g10780_ (let () (declare (not safe)) (##length _g10781_))))
          (cond ((let () (declare (not safe)) (##fx= _g10780_ 2))
                 (apply (lambda (_obj9642_ _slot9643_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9642_ _slot9643_)))
                        _g10781_))
                ((let () (declare (not safe)) (##fx= _g10780_ 3))
                 (apply (lambda (_obj9647_ _slot9648_ _E9649_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9647_ _slot9648_ _E9649_)))
                        _g10781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10781_))))))
    (define slot-set!__%
      (lambda (_obj9599_ _slot9600_ _val9601_ _E9602_)
        (if (let () (declare (not safe)) (object? _obj9599_))
            (let* ((_klass9604_
                    (let () (declare (not safe)) (object-type _obj9599_)))
                   (_$e9607_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9604_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9604_ _slot9600_))
                        '#f)))
              (if _$e9607_
                  ((lambda (_off9610_)
                     (let ((__tmp10782
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9610_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj9599_ __tmp10782 _val9601_)))
                   _$e9607_)
                  (_E9602_ _obj9599_ _slot9600_)))
            (_E9602_ _obj9599_ _slot9600_))))
    (define slot-set!__0
      (lambda (_obj9615_ _slot9616_ _val9617_)
        (let ((_E9619_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9615_ _slot9616_ _val9617_ _E9619_))))
    (define slot-set!
      (lambda _g10784_
        (let ((_g10783_ (let () (declare (not safe)) (##length _g10784_))))
          (cond ((let () (declare (not safe)) (##fx= _g10783_ 3))
                 (apply (lambda (_obj9615_ _slot9616_ _val9617_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9615_ _slot9616_ _val9617_)))
                        _g10784_))
                ((let () (declare (not safe)) (##fx= _g10783_ 4))
                 (apply (lambda (_obj9621_ _slot9622_ _val9623_ _E9624_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9621_
                             _slot9622_
                             _val9623_
                             _E9624_)))
                        _g10784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10784_))))))
    (define __slot-error
      (lambda (_obj9595_ _slot9596_)
        (error '"Cannot find slot" _obj9595_ _slot9596_)))
    (define call-method
      (lambda (_obj9586_ _id9587_ . _args9588_)
        (let ((_$e9590_
               (let () (declare (not safe)) (method-ref _obj9586_ _id9587_))))
          (if _$e9590_
              ((lambda (_method9593_)
                 (apply _method9593_ _obj9586_ _args9588_))
               _$e9590_)
              (error '"Cannot find method" _obj9586_ _id9587_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9583_ _id9584_)
        (if (let () (declare (not safe)) (object? _obj9583_))
            (let ((__tmp10785
                   (let () (declare (not safe)) (object-type _obj9583_))))
              (declare (not safe))
              (find-method __tmp10785 _id9584_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9577_ _id9578_)
        (let ((_$e9580_
               (let () (declare (not safe)) (method-ref _obj9577_ _id9578_))))
          (if _$e9580_
              _$e9580_
              (error '"Missing method" _obj9577_ _id9578_)))))
    (define bound-method-ref
      (lambda (_obj9567_ _id9568_)
        (let ((_$e9570_
               (let () (declare (not safe)) (method-ref _obj9567_ _id9568_))))
          (if _$e9570_
              ((lambda (_method9573_)
                 (lambda _args9575_ (apply _method9573_ _obj9567_ _args9575_)))
               _$e9570_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9560_ _id9561_)
        (let ((_method9563_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9560_ _id9561_))))
          (lambda _args9565_ (apply _method9563_ _obj9560_ _args9565_)))))
    (define find-method
      (lambda (_klass9554_ _id9555_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9554_))
            (let () (declare (not safe)) (__find-method _klass9554_ _id9555_))
            (if (let () (declare (not safe)) (##type? _klass9554_))
                (let ((_$e9557_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9554_ _id9555_))))
                  (if _$e9557_
                      _$e9557_
                      (let ((__tmp10786
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9554_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10786 _id9555_))))
                '#f))))
    (define __find-method
      (lambda (_klass9543_ _id9544_)
        (let ((_$e9546_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9543_ _id9544_))))
          (if _$e9546_
              _$e9546_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9543_))
                  '#f
                  (let ((_$e9549_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass9543_))))
                    (if _$e9549_
                        ((lambda (_mixin9552_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin9552_ _id9544_)))
                         _$e9549_)
                        (let ((__tmp10787
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9543_))))
                          (declare (not safe))
                          (struct-find-method __tmp10787 _id9544_)))))))))
    (define struct-find-method
      (lambda (_klass9534_ _id9535_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9534_))
            (let ((_$e9537_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9534_ _id9535_))))
              (if _$e9537_
                  _$e9537_
                  (let ((__tmp10789
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9534_))))
                    (declare (not safe))
                    (struct-find-method __tmp10789 _id9535_))))
            (if (let () (declare (not safe)) (##type? _klass9534_))
                (let ((_$e9540_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9534_ _id9535_))))
                  (if _$e9540_
                      _$e9540_
                      (let ((__tmp10788
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9534_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10788 _id9535_))))
                '#f))))
    (define class-find-method
      (lambda (_klass9528_ _id9529_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9528_))
            (let ((_$e9531_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9528_ _id9529_))))
              (if _$e9531_
                  _$e9531_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9528_ _id9529_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin9485_ _id9486_)
        (let _lp9488_ ((_rest9490_ _mixin9485_))
          (let* ((_rest94919499_ _rest9490_)
                 (_else94939507_ (lambda () '#f))
                 (_K94959516_
                  (lambda (_rest9510_ _klass9511_)
                    (let ((_$e9513_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass9511_ _id9486_))))
                      (if _$e9513_
                          _$e9513_
                          (let ()
                            (declare (not safe))
                            (_lp9488_ _rest9510_)))))))
            (if (let () (declare (not safe)) (##pair? _rest94919499_))
                (let ((_hd94969519_
                       (let () (declare (not safe)) (##car _rest94919499_)))
                      (_tl94979521_
                       (let () (declare (not safe)) (##cdr _rest94919499_))))
                  (let* ((_klass9524_ _hd94969519_) (_rest9526_ _tl94979521_))
                    (declare (not safe))
                    (_K94959516_ _rest9526_ _klass9524_)))
                (let () (declare (not safe)) (_else94939507_)))))))
    (define builtin-find-method
      (lambda (_klass9479_ _id9480_)
        (if (let () (declare (not safe)) (##type? _klass9479_))
            (let ((_$e9482_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9479_ _id9480_))))
              (if _$e9482_
                  _$e9482_
                  (let ((__tmp10790
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9479_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10790 _id9480_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9471_ _id9472_)
        (let ((_$e9474_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9471_))))
          (if _$e9474_
              ((lambda (_ht9477_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9477_ _id9472_ '#f)))
               _$e9474_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9463_ _id9464_)
        (let ((_$e9466_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass9463_))))
          (if _$e9466_
              ((lambda (_mixin9469_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin9469_ _id9464_)))
               _$e9466_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass9455_ _id9456_)
        (let ((_$e9458_
               (let ((__tmp10791
                      (let () (declare (not safe)) (##type-id _klass9455_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10791 '#f))))
          (if _$e9458_
              ((lambda (_mtab9461_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9461_ _id9456_ '#f)))
               _$e9458_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9421_ _id9422_ _proc9423_ _rebind?9424_)
        (letrec ((_bind!9426_
                  (lambda (_ht9439_)
                    (if (and (let () (declare (not safe)) (not _rebind?9424_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9439_ _id9422_ '#f)))
                        (error '"Method already bound" _klass9421_ _id9422_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9439_ _id9422_ _proc9423_))))))
          (if (let () (declare (not safe)) (procedure? _proc9423_))
              '#!void
              (error '"Bad method; expected procedure" _proc9423_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9421_))
              (let ((_ht9428_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9421_))))
                (if _ht9428_
                    (let () (declare (not safe)) (_bind!9426_ _ht9428_))
                    (let ((_ht9430_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9421_ _ht9430_))
                      (let () (declare (not safe)) (_bind!9426_ _ht9430_)))))
              (if (let () (declare (not safe)) (##type? _klass9421_))
                  (let ((_ht9437_
                         (let ((_$e9432_
                                (let ((__tmp10792
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9421_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10792
                                   '#f))))
                           (if _$e9432_
                               _$e9432_
                               (let ((_ht9435_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10793
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9421_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10793
                                    _ht9435_))
                                 _ht9435_)))))
                    (declare (not safe))
                    (_bind!9426_ _ht9437_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9421_))))))
    (define bind-method!__0
      (lambda (_klass9444_ _id9445_ _proc9446_)
        (let ((_rebind?9448_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9444_ _id9445_ _proc9446_ _rebind?9448_))))
    (define bind-method!
      (lambda _g10795_
        (let ((_g10794_ (let () (declare (not safe)) (##length _g10795_))))
          (cond ((let () (declare (not safe)) (##fx= _g10794_ 3))
                 (apply (lambda (_klass9444_ _id9445_ _proc9446_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9444_ _id9445_ _proc9446_)))
                        _g10795_))
                ((let () (declare (not safe)) (##fx= _g10794_ 4))
                 (apply (lambda (_klass9450_ _id9451_ _proc9452_ _rebind?9453_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9450_
                             _id9451_
                             _proc9452_
                             _rebind?9453_)))
                        _g10795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10795_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9417_ _specializer9418_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9417_ _specializer9418_))))
    (define seal-class!
      (lambda (_klass9332_)
        (letrec ((_collect-methods!9334_
                  (lambda (_mtab9350_)
                    (letrec ((_merge!9352_
                              (lambda (_tab9412_)
                                (let ((__tmp10796
                                       (lambda (_id9414_ _proc9415_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9350_
                                            _id9414_
                                            _proc9415_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10796 _tab9412_))))
                             (_collect-direct-methods!9353_
                              (lambda (_klass9407_)
                                (let ((_$e9409_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9407_))))
                                  (if _$e9409_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9352_ _$e9409_))
                                      '#!void)))))
                      (let ((_$e9355_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass9332_))))
                        (if _$e9355_
                            ((lambda (_mixin9358_)
                               (let _recur9360_ ((_rest9362_ _mixin9358_))
                                 (let* ((_rest93639371_ _rest9362_)
                                        (_else93659379_ (lambda () '#!void))
                                        (_K93679388_
                                         (lambda (_rest9382_ _klass9383_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur9360_ _rest9382_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass9383_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!9353_
                                                  _klass9383_))
                                               (let ((_$e9385_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass9383_))
                                                          (let ((__tmp10800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass9383_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp10800 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e9385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!9352_ _$e9385_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest93639371_))
                                       (let ((_hd93689391_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest93639371_)))
                                             (_tl93699393_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest93639371_))))
                                         (let* ((_klass9396_ _hd93689391_)
                                                (_rest9398_ _tl93699393_))
                                           (declare (not safe))
                                           (_K93679388_
                                            _rest9398_
                                            _klass9396_)))
                                       '#!void))))
                             _$e9355_)
                            (let _recur9400_ ((_klass9402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass9402_))
                                  (begin
                                    (let ((__tmp10799
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass9402_))))
                                      (declare (not safe))
                                      (_recur9400_ __tmp10799))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!9353_
                                       _klass9402_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass9402_))
                                      (begin
                                        (let ((__tmp10797
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9402_))))
                                          (declare (not safe))
                                          (_recur9400_ __tmp10797))
                                        (let ((_$e9404_
                                               (let ((__tmp10798
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9402_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp10798
                                                  '#f))))
                                          (if _$e9404_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!9352_ _$e9404_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!9353_ _klass9332_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9332_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9332_))
                  '#!void
                  (begin
                    (if (let ((__tmp10801
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass9332_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp10801))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9332_))
                    (let ((_vtab9336_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9337_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9334_ _mtab9337_))
                      (let ((__tmp10802
                             (lambda (_id9339_ _proc9340_)
                               (let ((_$e9342_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9340_
                                         '#f))))
                                 (if _$e9342_
                                     ((lambda (_specializer9345_)
                                        (let ((_proc9347_
                                               (_specializer9345_ _klass9332_))
                                              (_gid9348_
                                               (let ((__tmp10803
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9332_))))
                                                 (declare (not safe))
                                                 (make-symbol
                                                  __tmp10803
                                                  '"::["
                                                  _id9339_
                                                  '"]"))))
                                          (eval (let ((__tmp10804
                                                       (let ((__tmp10805
                                                              (let ((__tmp10806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10807
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9347_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10807))))
                        (declare (not safe))
                        (cons __tmp10806 '()))))
                 (declare (not safe))
                 (cons _gid9348_ __tmp10805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10804)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9336_
                                             _id9339_
                                             _proc9347_))))
                                      _$e9342_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9336_
                                        _id9339_
                                        _proc9340_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10802 _mtab9337_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9332_ _vtab9336_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9332_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9269_ _obj9270_ _id9271_)
        (let ((_klass9273_
               (let () (declare (not safe)) (object-type _obj9270_)))
              (_type-id9274_
               (let () (declare (not safe)) (##type-id _subklass9269_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9273_))
              (let ((_$e9276_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass9273_))))
                (if _$e9276_
                    ((lambda (_mixin9279_)
                       (let _lp9281_ ((_rest9283_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass9273_ _mixin9279_))))
                         (let* ((_rest92849292_ _rest9283_)
                                (_else92869300_ (lambda () '#f))
                                (_K92889306_
                                 (lambda (_rest9303_ _klass9304_)
                                   (if (let ((__tmp10812
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass9304_))))
                                         (declare (not safe))
                                         (eq? _type-id9274_ __tmp10812))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest9303_
                                          _id9271_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp9281_ _rest9303_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest92849292_))
                               (let ((_hd92899309_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest92849292_)))
                                     (_tl92909311_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest92849292_))))
                                 (let* ((_klass9314_ _hd92899309_)
                                        (_rest9316_ _tl92909311_))
                                   (declare (not safe))
                                   (_K92889306_ _rest9316_ _klass9314_)))
                               (let ()
                                 (declare (not safe))
                                 (_else92869300_))))))
                     _$e9276_)
                    (let _lp9318_ ((_klass9320_ _klass9273_))
                      (if (let ((__tmp10811
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass9320_))))
                            (declare (not safe))
                            (eq? _type-id9274_ __tmp10811))
                          (let ((__tmp10810
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9320_))))
                            (declare (not safe))
                            (struct-find-method __tmp10810 _id9271_))
                          (let ((_$e9322_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9320_))))
                            (if _$e9322_
                                (let ()
                                  (declare (not safe))
                                  (_lp9318_ _$e9322_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass9273_))
                  (let _lp9325_ ((_klass9327_ _klass9273_))
                    (if (let ((__tmp10809
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9327_))))
                          (declare (not safe))
                          (eq? _type-id9274_ __tmp10809))
                        (let ((__tmp10808
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9327_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10808 _id9271_))
                        (let ((_$e9329_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9327_))))
                          (if _$e9329_
                              (let () (declare (not safe)) (_lp9325_ _$e9329_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9259_ _obj9260_ _id9261_ . _args9262_)
        (let ((_$e9264_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9259_ _obj9260_ _id9261_))))
          (if _$e9264_
              ((lambda (_methodf9267_)
                 (apply _methodf9267_ _obj9260_ _args9262_))
               _$e9264_)
              (error '"Cannot find next method" _obj9260_ _id9261_)))))
    (define write-style (lambda (_we9257_) (macro-writeenv-style _we9257_)))
    (define write-object
      (lambda (_we9249_ _obj9250_)
        (let ((_$e9252_
               (let () (declare (not safe)) (method-ref _obj9250_ ':wr))))
          (if _$e9252_
              ((lambda (_method9255_) (_method9255_ _obj9250_ _we9249_))
               _$e9252_)
              (let ()
                (declare (not safe))
                (##default-wr _we9249_ _obj9250_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
