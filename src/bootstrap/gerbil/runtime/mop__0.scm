(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1695392652)
  (begin
    (define type-descriptor?
      (lambda (_klass10665_)
        (if (let () (declare (not safe)) (##type? _klass10665_))
            (let ((__tmp10675
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10665_))))
              (declare (not safe))
              (eq? __tmp10675 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10663_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10663_))
            (let ((__tmp10676
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10663_))))
              (declare (not safe))
              (not __tmp10676))
            '#f)))
    (define class-type?
      (lambda (_klass10661_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10661_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10661_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id10557_
               _type-name10558_
               _type-super10559_
               _rtd-mixin10560_
               _rtd-fields10561_
               _rtd-plist10562_
               _rtd-ctor10563_
               _rtd-slots10564_
               _rtd-methods10565_)
        (letrec ((_put-props!10567_
                  (lambda (_ht10641_ _key10642_)
                    (letrec ((_put-plist!10644_
                              (lambda (_ht10650_ _key10651_ _plist10652_)
                                (let ((_$e10654_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10651_ _plist10652_))))
                                  (if _$e10654_
                                      ((lambda (_lst10657_)
                                         (for-each
                                          (lambda (_id10659_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht10650_
                                               _id10659_
                                               '#t)))
                                          _lst10657_))
                                       _$e10654_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10644_
                         _ht10641_
                         _key10642_
                         _rtd-plist10562_))
                      (if _rtd-mixin10560_
                          (for-each
                           (lambda (_klass10646_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass10646_))
                                 (let ((_plist10648_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass10646_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist10648_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10644_
                                          _ht10641_
                                          'slots:
                                          _plist10648_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!10644_
                                          _ht10641_
                                          _key10642_
                                          _plist10648_))))
                                 '#!void))
                           _rtd-mixin10560_)
                          '#!void)))))
          (let* ((_transparent?10569_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist10562_)))
                 (_field-names10574_
                  (let ((_$e10571_ (assq 'fields: _rtd-plist10562_)))
                    (if _$e10571_ (cdr _$e10571_) '())))
                 (_field-names10581_
                  (let ((_$e10576_ (assq 'slots: _rtd-plist10562_)))
                    (if _$e10576_
                        ((lambda (_slots10579_)
                           (append _field-names10574_ (cdr _slots10579_)))
                         _$e10576_)
                        _field-names10574_)))
                 (_g10677_
                  (if (fx= _rtd-fields10561_ (length _field-names10581_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id10557_
                             _rtd-fields10561_
                             _field-names10581_)))
                 (_canonical-fields10584_
                  (if _type-super10559_
                      (list-tail
                       _field-names10581_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super10559_)))
                      _field-names10581_))
                 (_printable10588_
                  (if _transparent?10569_
                      '#f
                      (let ((_ht10586_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10567_ _ht10586_ 'print:))
                        _ht10586_)))
                 (_equality10592_
                  (if _transparent?10569_
                      '#f
                      (let ((_ht10590_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!10567_ _ht10590_ 'equal:))
                        _ht10590_)))
                 (_field-info10633_
                  (let _recur10594_ ((_rest10596_ _canonical-fields10584_))
                    (let* ((_rest1059710605_ _rest10596_)
                           (_else1059910613_ (lambda () '()))
                           (_K1060110621_
                            (lambda (_rest10616_ _id10617_)
                              (let* ((_flags10619_
                                      (if _transparent?10569_
                                          '0
                                          (let ((__tmp10679
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable10588_
                                                        _id10617_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10678
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality10592_
                                                        _id10617_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10679 __tmp10678))))
                                     (__tmp10680
                                      (let ((__tmp10681
                                             (let ((__tmp10682
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur10594_
                                                       _rest10616_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10682))))
                                        (declare (not safe))
                                        (cons _flags10619_ __tmp10681))))
                                (declare (not safe))
                                (cons _id10617_ __tmp10680)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest1059710605_))
                          (let ((_hd1060210624_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest1059710605_)))
                                (_tl1060310626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest1059710605_))))
                            (let* ((_id10629_ _hd1060210624_)
                                   (_rest10631_ _tl1060310626_))
                              (declare (not safe))
                              (_K1060110621_ _rest10631_ _id10629_)))
                          (let () (declare (not safe)) (_else1059910613_))))))
                 (_opaque?10638_
                  (if (or _transparent?10569_ (assq 'equal: _rtd-plist10562_))
                      (if _type-super10559_
                          (let ((__tmp10683
                                 (let ((__tmp10684
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super10559_))))
                                   (declare (not safe))
                                   (##fxand __tmp10684 '1))))
                            (declare (not safe))
                            (##fx= __tmp10683 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10686 (+ '24 (if _opaque?10638_ '1 '0)))
                  (__tmp10685 (list->vector _field-info10633_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id10557_
               _type-name10558_
               __tmp10686
               _type-super10559_
               __tmp10685
               _rtd-mixin10560_
               _rtd-fields10561_
               _rtd-plist10562_
               _rtd-ctor10563_
               _rtd-slots10564_
               _rtd-methods10565_))))))
    (define make-struct-type-descriptor
      (lambda (_id10550_
               _name10551_
               _super10552_
               _fields10553_
               _plist10554_
               _ctor10555_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10550_
           _name10551_
           _super10552_
           '#f
           _fields10553_
           _plist10554_
           _ctor10555_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id10541_
               _name10542_
               _super10543_
               _mixin10544_
               _fields10545_
               _plist10546_
               _ctor10547_
               _slots10548_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id10541_
           _name10542_
           _super10543_
           _mixin10544_
           _fields10545_
           _plist10546_
           _ctor10547_
           _slots10548_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass10539_)
        (let () (declare (not safe)) (##vector-ref _klass10539_ '6))))
    (define type-descriptor-fields
      (lambda (_klass10537_)
        (let () (declare (not safe)) (##vector-ref _klass10537_ '7))))
    (define type-descriptor-plist
      (lambda (_klass10535_)
        (let () (declare (not safe)) (##vector-ref _klass10535_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass10533_)
        (let () (declare (not safe)) (##vector-ref _klass10533_ '9))))
    (define type-descriptor-slots
      (lambda (_klass10531_)
        (let () (declare (not safe)) (##vector-ref _klass10531_ '10))))
    (define type-descriptor-methods
      (lambda (_klass10529_)
        (let () (declare (not safe)) (##vector-ref _klass10529_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass10526_ _ht10527_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass10526_ '11 _ht10527_))))
    (define type-descriptor-sealed?
      (lambda (_klass10524_)
        (let ((__tmp10687
               (let () (declare (not safe)) (##type-flags _klass10524_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10687))))
    (define type-descriptor-seal!
      (lambda (_klass10522_)
        (let ((__tmp10688
               (let ((__tmp10690
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10689
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass10522_))))
                 (declare (not safe))
                 (##fxior __tmp10690 __tmp10689))))
          (declare (not safe))
          (##vector-set! _klass10522_ '3 __tmp10688))))
    (define make-struct-type__%
      (lambda (_id10471_
               _super10472_
               _fields10473_
               _name10474_
               _plist10475_
               _ctor10476_
               _field-names10477_)
        (if (and _super10472_
                 (let ((__tmp10691
                        (let ()
                          (declare (not safe))
                          (struct-type? _super10472_))))
                   (declare (not safe))
                   (not __tmp10691)))
            (error '"Illegal super type; not a struct-type" _super10472_)
            '#!void)
        (if (and _super10472_
                 (let ((__tmp10692
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super10472_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10692)))
            (error '"Cannot extend final struct" _super10472_)
            '#!void)
        (let* ((_super-fields10479_
                (if _super10472_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super10472_))
                    '0))
               (_std-fields10481_ (fx+ _fields10473_ _super-fields10479_))
               (_std-field-names10491_
                (let* ((_super-fields10483_
                        (if _super10472_
                            (let ((__tmp10693
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super10472_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10693))
                            '()))
                       (_field-names10488_
                        (let ((_$e10485_ _field-names10477_))
                          (if _$e10485_
                              _$e10485_
                              (make-list _fields10473_ ':)))))
                  (append _super-fields10483_ _field-names10488_)))
               (_g10695_
                (if (let ((__tmp10694 (length _std-field-names10491_)))
                      (declare (not safe))
                      (##fx= _std-fields10481_ __tmp10694))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id10471_
                           _std-fields10481_
                           _std-field-names10491_)))
               (_std-plist10494_
                (let ((__tmp10696
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names10491_))))
                  (declare (not safe))
                  (cons __tmp10696 _plist10475_)))
               (_ctor10499_
                (let ((_$e10496_ _ctor10476_))
                  (if _$e10496_
                      _$e10496_
                      (if _super10472_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super10472_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id10471_
             _name10474_
             _super10472_
             _std-fields10481_
             _std-plist10494_
             _ctor10499_)))))
    (define make-struct-type__0
      (lambda (_id10505_
               _super10506_
               _fields10507_
               _name10508_
               _plist10509_
               _ctor10510_)
        (let ((_field-names10512_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id10505_
           _super10506_
           _fields10507_
           _name10508_
           _plist10509_
           _ctor10510_
           _field-names10512_))))
    (define make-struct-type
      (lambda _g10698_
        (let ((_g10697_ (let () (declare (not safe)) (##length _g10698_))))
          (cond ((let () (declare (not safe)) (##fx= _g10697_ 6))
                 (apply (lambda (_id10505_
                                 _super10506_
                                 _fields10507_
                                 _name10508_
                                 _plist10509_
                                 _ctor10510_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id10505_
                             _super10506_
                             _fields10507_
                             _name10508_
                             _plist10509_
                             _ctor10510_)))
                        _g10698_))
                ((let () (declare (not safe)) (##fx= _g10697_ 7))
                 (apply (lambda (_id10514_
                                 _super10515_
                                 _fields10516_
                                 _name10517_
                                 _plist10518_
                                 _ctor10519_
                                 _field-names10520_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id10514_
                             _super10515_
                             _fields10516_
                             _name10517_
                             _plist10518_
                             _ctor10519_
                             _field-names10520_)))
                        _g10698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10698_))))))
    (define make-struct-predicate
      (lambda (_klass10462_)
        (let ((_tid10464_
               (let () (declare (not safe)) (##type-id _klass10462_))))
          (if (let ((__tmp10699
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass10462_))))
                (declare (not safe))
                (assgetq 'final: __tmp10699))
              (lambda (_obj10466_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj10466_ _tid10464_)))
              (lambda (_obj10468_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj10468_ _tid10464_)))))))
    (define make-struct-field-accessor
      (lambda (_klass10455_ _field10456_)
        (let ((_off10458_
               (let ((__tmp10700
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10455_ _field10456_))))
                 (declare (not safe))
                 (##fx+ __tmp10700 '1))))
          (lambda (_obj10460_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj10460_ _off10458_ _klass10455_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass10447_ _field10448_)
        (let ((_off10450_
               (let ((__tmp10701
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10447_ _field10448_))))
                 (declare (not safe))
                 (##fx+ __tmp10701 '1))))
          (lambda (_obj10452_ _val10453_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj10452_
               _val10453_
               _off10450_
               _klass10447_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass10440_ _field10441_)
        (let ((_off10443_
               (let ((__tmp10702
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10440_ _field10441_))))
                 (declare (not safe))
                 (##fx+ __tmp10702 '1))))
          (lambda (_obj10445_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj10445_
               _off10443_
               _klass10440_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass10432_ _field10433_)
        (let ((_off10435_
               (let ((__tmp10703
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass10432_ _field10433_))))
                 (declare (not safe))
                 (##fx+ __tmp10703 '1))))
          (lambda (_obj10437_ _val10438_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj10437_
               _val10438_
               _off10435_
               _klass10432_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass10426_ _field10427_)
        (let ((__tmp10704
               (let ((_$e10429_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass10426_))))
                 (if _$e10429_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e10429_))
                     '0))))
          (declare (not safe))
          (##fx+ _field10427_ __tmp10704))))
    (define struct-field-ref
      (lambda (_klass10422_ _obj10423_ _off10424_)
        (let ((__tmp10705 (let () (declare (not safe)) (##fx+ _off10424_ '1))))
          (declare (not safe))
          (##structure-ref _obj10423_ __tmp10705 _klass10422_ '#f))))
    (define struct-field-set!
      (lambda (_klass10417_ _obj10418_ _off10419_ _val10420_)
        (let ((__tmp10706 (let () (declare (not safe)) (##fx+ _off10419_ '1))))
          (declare (not safe))
          (##structure-set!
           _obj10418_
           _val10420_
           __tmp10706
           _klass10417_
           '#f))))
    (define struct-subtype?
      (lambda (_klass10408_ _xklass10409_)
        (let ((_klass-t10411_
               (let () (declare (not safe)) (##type-id _klass10408_))))
          (let _lp10413_ ((_next10415_ _xklass10409_))
            (if (let () (declare (not safe)) (not _next10415_))
                '#f
                (if (let ((__tmp10708
                           (let ()
                             (declare (not safe))
                             (##type-id _next10415_))))
                      (declare (not safe))
                      (eq? _klass-t10411_ __tmp10708))
                    '#t
                    (let ((__tmp10707
                           (let ()
                             (declare (not safe))
                             (##type-super _next10415_))))
                      (declare (not safe))
                      (_lp10413_ __tmp10707))))))))
    (define make-class-type
      (lambda (_id10115_
               _super10116_
               _slots10117_
               _name10118_
               _plist10119_
               _ctor10120_)
        (letrec ((_class-slots10122_
                  (lambda (_klass10406_)
                    (let ((__tmp10709
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass10406_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10709))))
                 (_make-slots10123_
                  (lambda (_off10357_)
                    (let ((_slot-table10359_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp10361_ ((_rest10363_ _super10116_)
                                      (_off10364_ _off10357_)
                                      (_slot-list10365_ '()))
                        (let* ((_rest1036610374_ _rest10363_)
                               (_else1036810385_
                                (lambda ()
                                  (let ((__tmp10710
                                         (lambda (_off10382_ _slot-list10383_)
                                           (values _off10382_
                                                   _slot-table10359_
                                                   (reverse _slot-list10383_)))))
                                    (declare (not safe))
                                    (_merge-slots10124_
                                     _slot-table10359_
                                     _slots10117_
                                     _off10364_
                                     _slot-list10365_
                                     __tmp10710))))
                               (_K1037010394_
                                (lambda (_rest10388_ _hd10389_)
                                  (let ((__tmp10712
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots10122_ _hd10389_)))
                                        (__tmp10711
                                         (lambda (_off10391_ _slot-list10392_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp10361_
                                              _rest10388_
                                              _off10391_
                                              _slot-list10392_)))))
                                    (declare (not safe))
                                    (_merge-slots10124_
                                     _slot-table10359_
                                     __tmp10712
                                     _off10364_
                                     _slot-list10365_
                                     __tmp10711)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1036610374_))
                              (let ((_hd1037110397_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1036610374_)))
                                    (_tl1037210399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1036610374_))))
                                (let* ((_hd10402_ _hd1037110397_)
                                       (_rest10404_ _tl1037210399_))
                                  (declare (not safe))
                                  (_K1037010394_ _rest10404_ _hd10402_)))
                              (let ()
                                (declare (not safe))
                                (_else1036810385_))))))))
                 (_merge-slots10124_
                  (lambda (_ht10312_ _lst10313_ _off10314_ _r10315_ _K10316_)
                    (let _lp10318_ ((_rest10320_ _lst10313_)
                                    (_off10321_ _off10314_)
                                    (_r10322_ _r10315_))
                      (let* ((_rest1032310331_ _rest10320_)
                             (_else1032510339_
                              (lambda () (_K10316_ _off10321_ _r10322_)))
                             (_K1032710345_
                              (lambda (_rest10342_ _slot10343_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht10312_ _slot10343_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp10318_
                                       _rest10342_
                                       _off10321_
                                       _r10322_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht10312_
                                         _slot10343_
                                         _off10321_))
                                      (let ((__tmp10713
                                             (symbol->keyword _slot10343_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht10312_
                                         __tmp10713
                                         _off10321_))
                                      (let ((__tmp10715
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off10321_ '1)))
                                            (__tmp10714
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot10343_ _r10322_))))
                                        (declare (not safe))
                                        (_lp10318_
                                         _rest10342_
                                         __tmp10715
                                         __tmp10714)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1032310331_))
                            (let ((_hd1032810348_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1032310331_)))
                                  (_tl1032910350_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1032310331_))))
                              (let* ((_slot10353_ _hd1032810348_)
                                     (_rest10355_ _tl1032910350_))
                                (declare (not safe))
                                (_K1032710345_ _rest10355_ _slot10353_)))
                            (let ()
                              (declare (not safe))
                              (_else1032510339_)))))))
                 (_find-super-ctor10125_
                  (lambda (_super10264_)
                    (let _lp10266_ ((_rest10268_ _super10264_)
                                    (_ctor10269_ '#f))
                      (let* ((_rest1027010278_ _rest10268_)
                             (_else1027210286_ (lambda () _ctor10269_))
                             (_K1027410300_
                              (lambda (_rest10289_ _hd10290_)
                                (let ((_$e10292_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd10290_))))
                                  (if _$e10292_
                                      ((lambda (_xctor10295_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor10269_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor10269_
                                                        _xctor10295_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp10266_
                                                _rest10289_
                                                _xctor10295_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor10269_
                                                    _xctor10295_)))
                                       _$e10292_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp10266_
                                         _rest10289_
                                         _ctor10269_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1027010278_))
                            (let ((_hd1027510303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1027010278_)))
                                  (_tl1027610305_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1027010278_))))
                              (let* ((_hd10308_ _hd1027510303_)
                                     (_rest10310_ _tl1027610305_))
                                (declare (not safe))
                                (_K1027410300_ _rest10310_ _hd10308_)))
                            (let ()
                              (declare (not safe))
                              (_else1027210286_)))))))
                 (_find-super-struct10126_
                  (lambda (_super10211_)
                    (letrec ((_base-struct10213_
                              (lambda (_super-struct10253_ _klass10254_)
                                (if _super-struct10253_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct10253_
                                           _klass10254_))
                                        (let _lp10256_ ((_klass10258_
                                                         _klass10254_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass10258_))
                                              _klass10258_
                                              (let ((__tmp10716
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass10258_))))
                                                (declare (not safe))
                                                (_lp10256_ __tmp10716))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass10254_
                                               _super-struct10253_))
                                            _super-struct10253_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass10254_
                                                   _super-struct10253_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass10254_))
                                        _klass10254_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass10254_))
                                            (let _lp10260_ ((_next10262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##type-super _klass10254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next10262_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next10262_))
                                                      _next10262_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next10262_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp10260_
                                                             _next10262_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp10215_ ((_rest10217_ _super10211_)
                                      (_super-struct10218_ '#f))
                        (let* ((_rest1021910227_ _rest10217_)
                               (_else1022110235_
                                (lambda () _super-struct10218_))
                               (_K1022310241_
                                (lambda (_rest10238_ _hd10239_)
                                  (let ((__tmp10717
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct10213_
                                            _super-struct10218_
                                            _hd10239_))))
                                    (declare (not safe))
                                    (_lp10215_ _rest10238_ __tmp10717)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1021910227_))
                              (let ((_hd1022410244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1021910227_)))
                                    (_tl1022510246_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1021910227_))))
                                (let* ((_hd10249_ _hd1022410244_)
                                       (_rest10251_ _tl1022510246_))
                                  (declare (not safe))
                                  (_K1022310241_ _rest10251_ _hd10249_)))
                              (let ()
                                (declare (not safe))
                                (_else1022110235_))))))))
                 (_expand-struct-mixin10127_
                  (lambda (_super10166_)
                    (let _lp10168_ ((_rest10170_ _super10166_)
                                    (_mixin10171_ '()))
                      (let* ((_rest1017210180_ _rest10170_)
                             (_else1017410188_
                              (lambda () (reverse _mixin10171_)))
                             (_K1017610199_
                              (lambda (_rest10191_ _hd10192_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd10192_))
                                    (let _lp210194_ ((_next10196_ _hd10192_)
                                                     (_mixin10197_
                                                      _mixin10171_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next10196_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp10168_
                                             _rest10191_
                                             _mixin10197_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next10196_))
                                              (let ((__tmp10720
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next10196_)))
                                                    (__tmp10719
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next10196_
                                                             _mixin10197_))))
                                                (declare (not safe))
                                                (_lp210194_
                                                 __tmp10720
                                                 __tmp10719))
                                              (let ()
                                                (declare (not safe))
                                                (_lp10168_
                                                 _rest10191_
                                                 _mixin10197_)))))
                                    (let ((__tmp10718
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd10192_ _mixin10171_))))
                                      (declare (not safe))
                                      (_lp10168_ _rest10191_ __tmp10718))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1017210180_))
                            (let ((_hd1017710202_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1017210180_)))
                                  (_tl1017810204_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1017210180_))))
                              (let* ((_hd10207_ _hd1017710202_)
                                     (_rest10209_ _tl1017810204_))
                                (declare (not safe))
                                (_K1017610199_ _rest10209_ _hd10207_)))
                            (let ()
                              (declare (not safe))
                              (_else1017410188_))))))))
          (let ((_$e10131_
                 (let ((__tmp10721
                        (lambda (_klass10129_)
                          (let ((__tmp10722
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass10129_))))
                            (declare (not safe))
                            (not __tmp10722)))))
                   (declare (not safe))
                   (find __tmp10721 _super10116_))))
            (if _$e10131_
                ((lambda (_klass10134_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass10134_))
                 _$e10131_)
                (let ((_$e10138_
                       (let ((__tmp10723
                              (lambda (_klass10136_)
                                (let ((__tmp10724
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist
                                          _klass10136_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10724)))))
                         (declare (not safe))
                         (find __tmp10723 _super10116_))))
                  (if _$e10138_
                      ((lambda (_klass10141_)
                         (error '"Cannot extend final class" _klass10141_))
                       _$e10138_)
                      '#!void))))
          (let* ((_std-super10143_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct10126_ _super10116_)))
                 (_mixin10145_
                  (if _std-super10143_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin10127_ _super10116_))
                      _super10116_)))
            (let ((_g10725_
                   (let ((__tmp10727
                          (if _std-super10143_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super10143_))
                              '0)))
                     (declare (not safe))
                     (_make-slots10123_ __tmp10727))))
              (begin
                (let ((_g10726_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10725_)
                             (##vector-length _g10725_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10726_ 3)))
                      (error "Context expects 3 values" _g10726_)))
                (let ((_std-fields10148_
                       (let () (declare (not safe)) (##vector-ref _g10725_ 0)))
                      (_std-slots10149_
                       (let () (declare (not safe)) (##vector-ref _g10725_ 1)))
                      (_std-slot-list10150_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10725_ 2))))
                  (let* ((_std-mixin10152_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin10145_)))
                         (_std-plist10156_
                          (if _std-super10143_
                              (let* ((_fields10154_
                                      (let ((__tmp10728
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super10143_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10728)))
                                     (__tmp10729
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields10154_))))
                                (declare (not safe))
                                (cons __tmp10729 _plist10119_))
                              _plist10119_))
                         (_std-plist10158_
                          (let ((__tmp10730
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list10150_))))
                            (declare (not safe))
                            (cons __tmp10730 _std-plist10156_)))
                         (_std-ctor10163_
                          (let ((_$e10160_ _ctor10120_))
                            (if _$e10160_
                                _$e10160_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor10125_ _super10116_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id10115_
                       _name10118_
                       _std-super10143_
                       _std-mixin10152_
                       _std-fields10148_
                       _std-plist10158_
                       _std-ctor10163_
                       _std-slots10149_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst10066_)
        (letrec ((_class->list10068_
                  (lambda (_klass10110_)
                    (let ((__tmp10731
                           (let ((_$e10112_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass10110_))))
                             (if _$e10112_ _$e10112_ '()))))
                      (declare (not safe))
                      (cons _klass10110_ __tmp10731)))))
          (let* ((_klass-lst1006910079_ _klass-lst10066_)
                 (_else1007210087_
                  (lambda ()
                    (let ((__tmp10732
                           (map _class->list10068_ _klass-lst10066_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp10732)))))
            (let ((_K1007710107_ (lambda () '()))
                  (_K1007410093_
                   (lambda (_klass10091_)
                     (let ()
                       (declare (not safe))
                       (_class->list10068_ _klass10091_)))))
              (let ((_try-match1007110103_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst1006910079_))
                           (let ((_tl1007610098_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst1006910079_)))
                                 (_hd1007510096_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst1006910079_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl1007610098_))
                                 (let ((_klass10101_ _hd1007510096_))
                                   (declare (not safe))
                                   (_class->list10068_ _klass10101_))
                                 (let ()
                                   (declare (not safe))
                                   (_else1007210087_))))
                           (let () (declare (not safe)) (_else1007210087_))))))
                (if (let ()
                      (declare (not safe))
                      (##null? _klass-lst1006910079_))
                    (let () (declare (not safe)) (_K1007710107_))
                    (let ()
                      (declare (not safe))
                      (_try-match1007110103_)))))))))
    (define __linearize-mixins
      (lambda (_lst9907_)
        (letrec ((_K9909_ (lambda (_rest10030_ _r10031_)
                            (let* ((_rest1003210040_ _rest10030_)
                                   (_else1003410048_
                                    (lambda () (reverse _r10031_)))
                                   (_K1003610054_
                                    (lambda (_rest10051_ _hd10052_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize19910_
                                         _hd10052_
                                         _rest10051_
                                         _r10031_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest1003210040_))
                                  (let ((_hd1003710057_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest1003210040_)))
                                        (_tl1003810059_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest1003210040_))))
                                    (let* ((_hd10062_ _hd1003710057_)
                                           (_rest10064_ _tl1003810059_))
                                      (declare (not safe))
                                      (_K1003610054_ _rest10064_ _hd10062_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else1003410048_))))))
                 (_linearize19910_
                  (lambda (_hd9993_ _rest9994_ _r9995_)
                    (let* ((_hd999610004_ _hd9993_)
                           (_else999810012_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K9909_ _rest9994_ _r9995_))))
                           (_K1000010018_
                            (lambda (_hd-rest10015_ _hd-first10016_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq9913_ _hd-first10016_ _rest9994_))
                                  (let ((__tmp10735 (list _hd9993_)))
                                    (declare (not safe))
                                    (_linearize29911_
                                     _rest9994_
                                     __tmp10735
                                     _r9995_))
                                  (let ((__tmp10734
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest10015_ _rest9994_)))
                                        (__tmp10733
                                         (let ()
                                           (declare (not safe))
                                           (_putq9912_
                                            _hd-first10016_
                                            _r9995_))))
                                    (declare (not safe))
                                    (_K9909_ __tmp10734 __tmp10733))))))
                      (if (let () (declare (not safe)) (##pair? _hd999610004_))
                          (let ((_hd1000110021_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd999610004_)))
                                (_tl1000210023_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd999610004_))))
                            (let* ((_hd-first10026_ _hd1000110021_)
                                   (_hd-rest10028_ _tl1000210023_))
                              (declare (not safe))
                              (_K1000010018_ _hd-rest10028_ _hd-first10026_)))
                          (let () (declare (not safe)) (_else999810012_))))))
                 (_linearize29911_
                  (lambda (_rest9923_ _pre9924_ _r9925_)
                    (let _lp9927_ ((_rest9929_ _rest9923_)
                                   (_pre9930_ _pre9924_))
                      (let* ((_rest99319938_ _rest9929_)
                             (_E99339942_
                              (lambda ()
                                (error '"No clause matching" _rest99319938_)))
                             (_K99349981_
                              (lambda (_rest9945_ _hd9946_)
                                (let* ((_hd99479955_ _hd9946_)
                                       (_else99499963_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp9927_ _rest9945_ _pre9930_))))
                                       (_K99519969_
                                        (lambda (_hd-rest9966_ _hd-first9967_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq9913_
                                                 _hd-first9967_
                                                 _rest9945_))
                                              (let ((__tmp10739
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd9946_
                                                             _pre9930_))))
                                                (declare (not safe))
                                                (_lp9927_
                                                 _rest9945_
                                                 __tmp10739))
                                              (let ((__tmp10737
                                                     (let ((__tmp10738
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest9966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest9945_))))
               (declare (not safe))
               (foldl1 cons __tmp10738 _pre9930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10736
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq9912_
                                                        _hd-first9967_
                                                        _r9925_))))
                                                (declare (not safe))
                                                (_K9909_ __tmp10737
                                                         __tmp10736))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd99479955_))
                                      (let ((_hd99529972_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd99479955_)))
                                            (_tl99539974_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd99479955_))))
                                        (let* ((_hd-first9977_ _hd99529972_)
                                               (_hd-rest9979_ _tl99539974_))
                                          (declare (not safe))
                                          (_K99519969_
                                           _hd-rest9979_
                                           _hd-first9977_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else99499963_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest99319938_))
                            (let ((_hd99359984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest99319938_)))
                                  (_tl99369986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest99319938_))))
                              (let* ((_hd9989_ _hd99359984_)
                                     (_rest9991_ _tl99369986_))
                                (declare (not safe))
                                (_K99349981_ _rest9991_ _hd9989_)))
                            (let () (declare (not safe)) (_E99339942_)))))))
                 (_putq9912_
                  (lambda (_hd9920_ _lst9921_)
                    (if (memq _hd9920_ _lst9921_)
                        _lst9921_
                        (let ()
                          (declare (not safe))
                          (cons _hd9920_ _lst9921_)))))
                 (_findq9913_
                  (lambda (_hd9915_ _rest9916_)
                    (let ((__tmp10740
                           (lambda (_lst9918_) (memq _hd9915_ _lst9918_))))
                      (declare (not safe))
                      (find __tmp10740 _rest9916_)))))
          (let () (declare (not safe)) (_K9909_ _lst9907_ '())))))
    (define make-class-predicate
      (lambda (_klass9901_)
        (if (let ((__tmp10742
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass9901_))))
              (declare (not safe))
              (assgetq 'final: __tmp10742))
            (lambda (_obj9903_)
              (let ((__tmp10741
                     (let () (declare (not safe)) (##type-id _klass9901_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9903_ __tmp10741)))
            (lambda (_obj9905_)
              (let ()
                (declare (not safe))
                (class-instance? _klass9901_ _obj9905_))))))
    (define make-class-slot-accessor
      (lambda (_klass9896_ _slot9897_)
        (lambda (_obj9899_)
          (let () (declare (not safe)) (slot-ref _obj9899_ _slot9897_)))))
    (define make-class-slot-mutator
      (lambda (_klass9890_ _slot9891_)
        (lambda (_obj9893_ _val9894_)
          (let ()
            (declare (not safe))
            (slot-set! _obj9893_ _slot9891_ _val9894_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9885_ _slot9886_)
        (lambda (_obj9888_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj9888_ _slot9886_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9879_ _slot9880_)
        (lambda (_obj9882_ _val9883_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj9882_ _slot9880_ _val9883_)))))
    (define class-slot-offset
      (lambda (_klass9871_ _slot9872_)
        (let ((_$e9874_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass9871_))))
          (if _$e9874_
              ((lambda (_slots9877_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots9877_ _slot9872_ '#f)))
               _$e9874_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass9865_ _obj9866_ _slot9867_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9865_ _obj9866_))
            (let* ((_off9869_
                    (let ((__tmp10743
                           (let ()
                             (declare (not safe))
                             (object-type _obj9866_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10743 _slot9867_)))
                   (__tmp10744
                    (let () (declare (not safe)) (##fx+ _off9869_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9866_ __tmp10744 _klass9865_ '#f))
            (error '"not an instance" _klass9865_ _obj9866_))))
    (define class-slot-set!
      (lambda (_klass9858_ _obj9859_ _slot9860_ _val9861_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9858_ _obj9859_))
            (let* ((_off9863_
                    (let ((__tmp10745
                           (let ()
                             (declare (not safe))
                             (object-type _obj9859_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10745 _slot9860_)))
                   (__tmp10746
                    (let () (declare (not safe)) (##fx+ _off9863_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9859_
               _val9861_
               __tmp10746
               _klass9858_
               '#f))
            (error '"not an instance" _klass9858_ _obj9859_))))
    (define class-subtype?
      (lambda (_klass9843_ _xklass9844_)
        (let* ((_klass-t9846_
                (let () (declare (not safe)) (##type-id _klass9843_)))
               (_$e9848_
                (let ((__tmp10747
                       (let () (declare (not safe)) (##type-id _xklass9844_))))
                  (declare (not safe))
                  (eq? _klass-t9846_ __tmp10747))))
          (if _$e9848_
              _$e9848_
              (let ((_$e9851_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass9844_))))
                (if _$e9851_
                    ((lambda (_mixin9854_)
                       (if (let ((__tmp10748
                                  (lambda (_xklass9856_)
                                    (let ((__tmp10749
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass9856_))))
                                      (declare (not safe))
                                      (eq? _klass-t9846_ __tmp10749)))))
                             (declare (not safe))
                             (find __tmp10748 _mixin9854_))
                           '#t
                           '#f))
                     _$e9851_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9840_ _obj9841_)
        (let ((__tmp10750
               (let () (declare (not safe)) (##type-id _klass9840_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9841_ __tmp10750))))
    (define struct-instance?
      (lambda (_klass9837_ _obj9838_)
        (let ((__tmp10751
               (let () (declare (not safe)) (##type-id _klass9837_))))
          (declare (not safe))
          (##structure-instance-of? _obj9838_ __tmp10751))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9821_ _obj9822_)
        (if (let () (declare (not safe)) (object? _obj9822_))
            (let ((_klass-id9824_
                   (let () (declare (not safe)) (##type-id _klass9821_)))
                  (_type9825_
                   (let () (declare (not safe)) (object-type _obj9822_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9825_))
                  (let ((_$e9827_
                         (let ((__tmp10752
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type9825_))))
                           (declare (not safe))
                           (eq? __tmp10752 _klass-id9824_))))
                    (if _$e9827_
                        _$e9827_
                        (let ((_$e9830_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type9825_))))
                          (if _$e9830_
                              ((lambda (_mixin9833_)
                                 (let ((__tmp10753
                                        (lambda (_type9835_)
                                          (let ((__tmp10754
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type9835_))))
                                            (declare (not safe))
                                            (eq? __tmp10754 _klass-id9824_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10753 _mixin9833_)))
                               _$e9830_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9816_ _k9817_)
        (let ((_obj9819_
               (let ((__tmp10755
                      (let () (declare (not safe)) (##fx+ _k9817_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10755 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9819_ '0 _klass9816_))
          (let ((__tmp10756 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9819_ __tmp10756))
          _obj9819_)))
    (define make-struct-instance
      (lambda (_klass9806_ . _args9807_)
        (let* ((_fields9809_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass9806_)))
               (_$e9811_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9806_))))
          (if _$e9811_
              ((lambda (_kons-id9814_)
                 (let ((__tmp10758
                        (let ()
                          (declare (not safe))
                          (make-object _klass9806_ _fields9809_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass9806_
                    _kons-id9814_
                    __tmp10758
                    _args9807_)))
               _$e9811_)
              (if (let ((__tmp10757 (length _args9807_)))
                    (declare (not safe))
                    (##fx= _fields9809_ __tmp10757))
                  (apply ##structure _klass9806_ _args9807_)
                  (error '"Arguments don't match object size"
                         _klass9806_
                         _fields9809_
                         _args9807_))))))
    (define make-class-instance
      (lambda (_klass9796_ . _args9797_)
        (let* ((_obj9799_
                (let ((__tmp10759
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass9796_))))
                  (declare (not safe))
                  (make-object _klass9796_ __tmp10759)))
               (_$e9801_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9796_))))
          (if _$e9801_
              ((lambda (_kons-id9804_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9796_
                    _kons-id9804_
                    _obj9799_
                    _args9797_)))
               _$e9801_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9796_ _obj9799_ _args9797_))))))
    (define struct-instance-init!
      (lambda (_obj9793_ . _args9794_)
        (if (let ((__tmp10761 (length _args9794_))
                  (__tmp10760
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9793_))))
              (declare (not safe))
              (##fx< __tmp10761 __tmp10760))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9793_ _args9794_))
            (error '"Too many arguments for struct" _obj9793_ _args9794_))))
    (define __struct-instance-init!
      (lambda (_obj9752_ _args9753_)
        (let _lp9755_ ((_k9757_ '1) (_rest9758_ _args9753_))
          (let* ((_rest97599767_ _rest9758_)
                 (_else97619775_ (lambda () _obj9752_))
                 (_K97639781_
                  (lambda (_rest9778_ _hd9779_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9752_ _k9757_ _hd9779_))
                    (let ((__tmp10762
                           (let () (declare (not safe)) (##fx+ _k9757_ '1))))
                      (declare (not safe))
                      (_lp9755_ __tmp10762 _rest9778_)))))
            (if (let () (declare (not safe)) (##pair? _rest97599767_))
                (let ((_hd97649784_
                       (let () (declare (not safe)) (##car _rest97599767_)))
                      (_tl97659786_
                       (let () (declare (not safe)) (##cdr _rest97599767_))))
                  (let* ((_hd9789_ _hd97649784_) (_rest9791_ _tl97659786_))
                    (declare (not safe))
                    (_K97639781_ _rest9791_ _hd9789_)))
                (let () (declare (not safe)) (_else97619775_)))))))
    (define class-instance-init!
      (lambda (_obj9749_ . _args9750_)
        (let ((__tmp10763
               (let () (declare (not safe)) (object-type _obj9749_))))
          (declare (not safe))
          (__class-instance-init! __tmp10763 _obj9749_ _args9750_))))
    (define __class-instance-init!
      (lambda (_klass9693_ _obj9694_ _args9695_)
        (let _lp9697_ ((_rest9699_ _args9695_))
          (let* ((_rest97009710_ _rest9699_)
                 (_else97029718_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9699_))
                        _obj9694_
                        (error '"Unexpected class initializer arguments"
                               _rest9699_))))
                 (_K97049730_
                  (lambda (_rest9721_ _val9722_ _key9723_)
                    (let ((_$e9725_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9693_ _key9723_))))
                      (if _$e9725_
                          ((lambda (_off9728_)
                             (let ((__tmp10764
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9728_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9694_ __tmp10764 _val9722_))
                             (let ()
                               (declare (not safe))
                               (_lp9697_ _rest9721_)))
                           _$e9725_)
                          (error '"No slot for keyword initializer"
                                 _klass9693_
                                 _key9723_))))))
            (if (let () (declare (not safe)) (##pair? _rest97009710_))
                (let ((_hd97059733_
                       (let () (declare (not safe)) (##car _rest97009710_)))
                      (_tl97069735_
                       (let () (declare (not safe)) (##cdr _rest97009710_))))
                  (let ((_key9738_ _hd97059733_))
                    (if (let () (declare (not safe)) (##pair? _tl97069735_))
                        (let ((_hd97079740_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl97069735_)))
                              (_tl97089742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl97069735_))))
                          (let* ((_val9745_ _hd97079740_)
                                 (_rest9747_ _tl97089742_))
                            (declare (not safe))
                            (_K97049730_ _rest9747_ _val9745_ _key9738_)))
                        (let () (declare (not safe)) (_else97029718_)))))
                (let () (declare (not safe)) (_else97029718_)))))))
    (define constructor-init!
      (lambda (_klass9688_ _kons-id9689_ _obj9690_ . _args9691_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9688_
           _kons-id9689_
           _obj9690_
           _args9691_))))
    (define __constructor-init!
      (lambda (_klass9678_ _kons-id9679_ _obj9680_ _args9681_)
        (let ((_$e9683_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9678_ _kons-id9679_))))
          (if _$e9683_
              ((lambda (_kons9686_)
                 (apply _kons9686_ _obj9680_ _args9681_)
                 _obj9680_)
               _$e9683_)
              (error '"Missing constructor" _klass9678_ _kons-id9679_)))))
    (define struct-copy
      (lambda (_struct9676_)
        (if (let () (declare (not safe)) (##structure? _struct9676_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9676_))
        (let () (declare (not safe)) (##structure-copy _struct9676_))))
    (define struct->list
      (lambda (_obj9674_)
        (if (let () (declare (not safe)) (object? _obj9674_))
            (let () (declare (not safe)) (##vector->list _obj9674_))
            (error '"Not an object" _obj9674_))))
    (define class->list
      (lambda (_obj9661_)
        (if (let () (declare (not safe)) (object? _obj9661_))
            (let ((_klass9663_
                   (let () (declare (not safe)) (object-type _obj9661_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9663_))
                  (let ((_$e9665_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9663_))))
                    (if _$e9665_
                        ((lambda (_slots9668_)
                           (let ((__tmp10765
                                  (let ((__tmp10766
                                         (lambda (_slot9670_ _off9671_ _r9672_)
                                           (if (keyword? _slot9670_)
                                               (let ((__tmp10767
                                                      (let ((__tmp10768
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9661_ _off9671_))))
                (declare (not safe))
                (cons __tmp10768 _r9672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9670_ __tmp10767))
                                               _r9672_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10766 '() _slots9668_))))
                             (declare (not safe))
                             (cons _klass9663_ __tmp10765)))
                         _$e9665_)
                        (list _klass9663_)))
                  (error '"Not a class type" _obj9661_ _klass9663_)))
            (error '"Not an object" _obj9661_))))
    (define unchecked-field-ref
      (lambda (_obj9658_ _off9659_)
        (let ((__tmp10769 (let () (declare (not safe)) (##fx+ _off9659_ '1))))
          (declare (not safe))
          (##vector-ref _obj9658_ __tmp10769))))
    (define unchecked-field-set!
      (lambda (_obj9654_ _off9655_ _val9656_)
        (let ((__tmp10770 (let () (declare (not safe)) (##fx+ _off9655_ '1))))
          (declare (not safe))
          (##vector-set! _obj9654_ __tmp10770 _val9656_))))
    (define unchecked-slot-ref
      (lambda (_obj9651_ _slot9652_)
        (let ((__tmp10771
               (let ((__tmp10772
                      (let () (declare (not safe)) (object-type _obj9651_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10772 _slot9652_))))
          (declare (not safe))
          (unchecked-field-ref _obj9651_ __tmp10771))))
    (define unchecked-slot-set!
      (lambda (_obj9647_ _slot9648_ _val9649_)
        (let ((__tmp10773
               (let ((__tmp10774
                      (let () (declare (not safe)) (object-type _obj9647_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10774 _slot9648_))))
          (declare (not safe))
          (unchecked-field-set! _obj9647_ __tmp10773 _val9649_))))
    (define slot-ref__%
      (lambda (_obj9623_ _slot9624_ _E9625_)
        (if (let () (declare (not safe)) (object? _obj9623_))
            (let* ((_klass9627_
                    (let () (declare (not safe)) (object-type _obj9623_)))
                   (_$e9630_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9627_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9627_ _slot9624_))
                        '#f)))
              (if _$e9630_
                  ((lambda (_off9633_)
                     (let ((__tmp10775
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9633_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9623_ __tmp10775)))
                   _$e9630_)
                  (_E9625_ _obj9623_ _slot9624_)))
            (_E9625_ _obj9623_ _slot9624_))))
    (define slot-ref__0
      (lambda (_obj9638_ _slot9639_)
        (let ((_E9641_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9638_ _slot9639_ _E9641_))))
    (define slot-ref
      (lambda _g10777_
        (let ((_g10776_ (let () (declare (not safe)) (##length _g10777_))))
          (cond ((let () (declare (not safe)) (##fx= _g10776_ 2))
                 (apply (lambda (_obj9638_ _slot9639_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9638_ _slot9639_)))
                        _g10777_))
                ((let () (declare (not safe)) (##fx= _g10776_ 3))
                 (apply (lambda (_obj9643_ _slot9644_ _E9645_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9643_ _slot9644_ _E9645_)))
                        _g10777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10777_))))))
    (define slot-set!__%
      (lambda (_obj9595_ _slot9596_ _val9597_ _E9598_)
        (if (let () (declare (not safe)) (object? _obj9595_))
            (let* ((_klass9600_
                    (let () (declare (not safe)) (object-type _obj9595_)))
                   (_$e9603_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9600_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9600_ _slot9596_))
                        '#f)))
              (if _$e9603_
                  ((lambda (_off9606_)
                     (let ((__tmp10778
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9606_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj9595_ __tmp10778 _val9597_)))
                   _$e9603_)
                  (_E9598_ _obj9595_ _slot9596_)))
            (_E9598_ _obj9595_ _slot9596_))))
    (define slot-set!__0
      (lambda (_obj9611_ _slot9612_ _val9613_)
        (let ((_E9615_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9611_ _slot9612_ _val9613_ _E9615_))))
    (define slot-set!
      (lambda _g10780_
        (let ((_g10779_ (let () (declare (not safe)) (##length _g10780_))))
          (cond ((let () (declare (not safe)) (##fx= _g10779_ 3))
                 (apply (lambda (_obj9611_ _slot9612_ _val9613_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9611_ _slot9612_ _val9613_)))
                        _g10780_))
                ((let () (declare (not safe)) (##fx= _g10779_ 4))
                 (apply (lambda (_obj9617_ _slot9618_ _val9619_ _E9620_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9617_
                             _slot9618_
                             _val9619_
                             _E9620_)))
                        _g10780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10780_))))))
    (define __slot-error
      (lambda (_obj9591_ _slot9592_)
        (error '"Cannot find slot" _obj9591_ _slot9592_)))
    (define call-method
      (lambda (_obj9582_ _id9583_ . _args9584_)
        (let ((_$e9586_
               (let () (declare (not safe)) (method-ref _obj9582_ _id9583_))))
          (if _$e9586_
              ((lambda (_method9589_)
                 (apply _method9589_ _obj9582_ _args9584_))
               _$e9586_)
              (error '"Cannot find method" _obj9582_ _id9583_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj9579_ _id9580_)
        (if (let () (declare (not safe)) (object? _obj9579_))
            (let ((__tmp10781
                   (let () (declare (not safe)) (object-type _obj9579_))))
              (declare (not safe))
              (find-method __tmp10781 _id9580_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj9573_ _id9574_)
        (let ((_$e9576_
               (let () (declare (not safe)) (method-ref _obj9573_ _id9574_))))
          (if _$e9576_
              _$e9576_
              (error '"Missing method" _obj9573_ _id9574_)))))
    (define bound-method-ref
      (lambda (_obj9563_ _id9564_)
        (let ((_$e9566_
               (let () (declare (not safe)) (method-ref _obj9563_ _id9564_))))
          (if _$e9566_
              ((lambda (_method9569_)
                 (lambda _args9571_ (apply _method9569_ _obj9563_ _args9571_)))
               _$e9566_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj9556_ _id9557_)
        (let ((_method9559_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj9556_ _id9557_))))
          (lambda _args9561_ (apply _method9559_ _obj9556_ _args9561_)))))
    (define find-method
      (lambda (_klass9550_ _id9551_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9550_))
            (let () (declare (not safe)) (__find-method _klass9550_ _id9551_))
            (if (let () (declare (not safe)) (##type? _klass9550_))
                (let ((_$e9553_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9550_ _id9551_))))
                  (if _$e9553_
                      _$e9553_
                      (let ((__tmp10782
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9550_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10782 _id9551_))))
                '#f))))
    (define __find-method
      (lambda (_klass9539_ _id9540_)
        (let ((_$e9542_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass9539_ _id9540_))))
          (if _$e9542_
              _$e9542_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9539_))
                  '#f
                  (let ((_$e9545_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass9539_))))
                    (if _$e9545_
                        ((lambda (_mixin9548_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin9548_ _id9540_)))
                         _$e9545_)
                        (let ((__tmp10783
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9539_))))
                          (declare (not safe))
                          (struct-find-method __tmp10783 _id9540_)))))))))
    (define struct-find-method
      (lambda (_klass9530_ _id9531_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9530_))
            (let ((_$e9533_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9530_ _id9531_))))
              (if _$e9533_
                  _$e9533_
                  (let ((__tmp10785
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9530_))))
                    (declare (not safe))
                    (struct-find-method __tmp10785 _id9531_))))
            (if (let () (declare (not safe)) (##type? _klass9530_))
                (let ((_$e9536_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass9530_ _id9531_))))
                  (if _$e9536_
                      _$e9536_
                      (let ((__tmp10784
                             (let ()
                               (declare (not safe))
                               (##type-super _klass9530_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10784 _id9531_))))
                '#f))))
    (define class-find-method
      (lambda (_klass9524_ _id9525_)
        (if (let () (declare (not safe)) (type-descriptor? _klass9524_))
            (let ((_$e9527_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass9524_ _id9525_))))
              (if _$e9527_
                  _$e9527_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass9524_ _id9525_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin9481_ _id9482_)
        (let _lp9484_ ((_rest9486_ _mixin9481_))
          (let* ((_rest94879495_ _rest9486_)
                 (_else94899503_ (lambda () '#f))
                 (_K94919512_
                  (lambda (_rest9506_ _klass9507_)
                    (let ((_$e9509_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass9507_ _id9482_))))
                      (if _$e9509_
                          _$e9509_
                          (let ()
                            (declare (not safe))
                            (_lp9484_ _rest9506_)))))))
            (if (let () (declare (not safe)) (##pair? _rest94879495_))
                (let ((_hd94929515_
                       (let () (declare (not safe)) (##car _rest94879495_)))
                      (_tl94939517_
                       (let () (declare (not safe)) (##cdr _rest94879495_))))
                  (let* ((_klass9520_ _hd94929515_) (_rest9522_ _tl94939517_))
                    (declare (not safe))
                    (_K94919512_ _rest9522_ _klass9520_)))
                (let () (declare (not safe)) (_else94899503_)))))))
    (define builtin-find-method
      (lambda (_klass9475_ _id9476_)
        (if (let () (declare (not safe)) (##type? _klass9475_))
            (let ((_$e9478_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass9475_ _id9476_))))
              (if _$e9478_
                  _$e9478_
                  (let ((__tmp10786
                         (let ()
                           (declare (not safe))
                           (##type-super _klass9475_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10786 _id9476_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass9467_ _id9468_)
        (let ((_$e9470_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass9467_))))
          (if _$e9470_
              ((lambda (_ht9473_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht9473_ _id9468_ '#f)))
               _$e9470_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass9459_ _id9460_)
        (let ((_$e9462_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass9459_))))
          (if _$e9462_
              ((lambda (_mixin9465_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin9465_ _id9460_)))
               _$e9462_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass9451_ _id9452_)
        (let ((_$e9454_
               (let ((__tmp10787
                      (let () (declare (not safe)) (##type-id _klass9451_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10787 '#f))))
          (if _$e9454_
              ((lambda (_mtab9457_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab9457_ _id9452_ '#f)))
               _$e9454_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass9417_ _id9418_ _proc9419_ _rebind?9420_)
        (letrec ((_bind!9422_
                  (lambda (_ht9435_)
                    (if (and (let () (declare (not safe)) (not _rebind?9420_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht9435_ _id9418_ '#f)))
                        (error '"Method already bound" _klass9417_ _id9418_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht9435_ _id9418_ _proc9419_))))))
          (if (let () (declare (not safe)) (procedure? _proc9419_))
              '#!void
              (error '"Bad method; expected procedure" _proc9419_))
          (if (let () (declare (not safe)) (type-descriptor? _klass9417_))
              (let ((_ht9424_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass9417_))))
                (if _ht9424_
                    (let () (declare (not safe)) (_bind!9422_ _ht9424_))
                    (let ((_ht9426_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9417_ _ht9426_))
                      (let () (declare (not safe)) (_bind!9422_ _ht9426_)))))
              (if (let () (declare (not safe)) (##type? _klass9417_))
                  (let ((_ht9433_
                         (let ((_$e9428_
                                (let ((__tmp10788
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass9417_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10788
                                   '#f))))
                           (if _$e9428_
                               _$e9428_
                               (let ((_ht9431_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10789
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass9417_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10789
                                    _ht9431_))
                                 _ht9431_)))))
                    (declare (not safe))
                    (_bind!9422_ _ht9433_))
                  (error '"Bad class; expected type-descriptor"
                         _klass9417_))))))
    (define bind-method!__0
      (lambda (_klass9440_ _id9441_ _proc9442_)
        (let ((_rebind?9444_ '#t))
          (declare (not safe))
          (bind-method!__% _klass9440_ _id9441_ _proc9442_ _rebind?9444_))))
    (define bind-method!
      (lambda _g10791_
        (let ((_g10790_ (let () (declare (not safe)) (##length _g10791_))))
          (cond ((let () (declare (not safe)) (##fx= _g10790_ 3))
                 (apply (lambda (_klass9440_ _id9441_ _proc9442_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass9440_ _id9441_ _proc9442_)))
                        _g10791_))
                ((let () (declare (not safe)) (##fx= _g10790_ 4))
                 (apply (lambda (_klass9446_ _id9447_ _proc9448_ _rebind?9449_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass9446_
                             _id9447_
                             _proc9448_
                             _rebind?9449_)))
                        _g10791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10791_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc9413_ _specializer9414_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc9413_ _specializer9414_))))
    (define seal-class!
      (lambda (_klass9328_)
        (letrec ((_collect-methods!9330_
                  (lambda (_mtab9346_)
                    (letrec ((_merge!9348_
                              (lambda (_tab9408_)
                                (let ((__tmp10792
                                       (lambda (_id9410_ _proc9411_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab9346_
                                            _id9410_
                                            _proc9411_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10792 _tab9408_))))
                             (_collect-direct-methods!9349_
                              (lambda (_klass9403_)
                                (let ((_$e9405_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass9403_))))
                                  (if _$e9405_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!9348_ _$e9405_))
                                      '#!void)))))
                      (let ((_$e9351_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass9328_))))
                        (if _$e9351_
                            ((lambda (_mixin9354_)
                               (let _recur9356_ ((_rest9358_ _mixin9354_))
                                 (let* ((_rest93599367_ _rest9358_)
                                        (_else93619375_ (lambda () '#!void))
                                        (_K93639384_
                                         (lambda (_rest9378_ _klass9379_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur9356_ _rest9378_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass9379_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!9349_
                                                  _klass9379_))
                                               (let ((_$e9381_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass9379_))
                                                          (let ((__tmp10796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass9379_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp10796 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e9381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!9348_ _$e9381_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest93599367_))
                                       (let ((_hd93649387_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest93599367_)))
                                             (_tl93659389_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest93599367_))))
                                         (let* ((_klass9392_ _hd93649387_)
                                                (_rest9394_ _tl93659389_))
                                           (declare (not safe))
                                           (_K93639384_
                                            _rest9394_
                                            _klass9392_)))
                                       '#!void))))
                             _$e9351_)
                            (let _recur9396_ ((_klass9398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass9398_))
                                  (begin
                                    (let ((__tmp10795
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass9398_))))
                                      (declare (not safe))
                                      (_recur9396_ __tmp10795))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!9349_
                                       _klass9398_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass9398_))
                                      (begin
                                        (let ((__tmp10793
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass9398_))))
                                          (declare (not safe))
                                          (_recur9396_ __tmp10793))
                                        (let ((_$e9400_
                                               (let ((__tmp10794
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9398_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp10794
                                                  '#f))))
                                          (if _$e9400_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!9348_ _$e9400_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!9349_ _klass9328_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9328_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass9328_))
                  '#!void
                  (begin
                    (if (let ((__tmp10797
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass9328_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp10797))
                        '#!void
                        (error '"Cannot seal non-final class" _klass9328_))
                    (let ((_vtab9332_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab9333_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!9330_ _mtab9333_))
                      (let ((__tmp10798
                             (lambda (_id9335_ _proc9336_)
                               (let ((_$e9338_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc9336_
                                         '#f))))
                                 (if _$e9338_
                                     ((lambda (_specializer9341_)
                                        (let ((_proc9343_
                                               (_specializer9341_ _klass9328_))
                                              (_gid9344_
                                               (let ((__tmp10799
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass9328_))))
                                                 (declare (not safe))
                                                 (make-symbol
                                                  __tmp10799
                                                  '"::["
                                                  _id9335_
                                                  '"]"))))
                                          (eval (let ((__tmp10800
                                                       (let ((__tmp10801
                                                              (let ((__tmp10802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp10803
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc9343_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp10803))))
                        (declare (not safe))
                        (cons __tmp10802 '()))))
                 (declare (not safe))
                 (cons _gid9344_ __tmp10801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp10800)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab9332_
                                             _id9335_
                                             _proc9343_))))
                                      _$e9338_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab9332_
                                        _id9335_
                                        _proc9336_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10798 _mtab9333_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass9328_ _vtab9332_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass9328_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass9265_ _obj9266_ _id9267_)
        (let ((_klass9269_
               (let () (declare (not safe)) (object-type _obj9266_)))
              (_type-id9270_
               (let () (declare (not safe)) (##type-id _subklass9265_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass9269_))
              (let ((_$e9272_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass9269_))))
                (if _$e9272_
                    ((lambda (_mixin9275_)
                       (let _lp9277_ ((_rest9279_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass9269_ _mixin9275_))))
                         (let* ((_rest92809288_ _rest9279_)
                                (_else92829296_ (lambda () '#f))
                                (_K92849302_
                                 (lambda (_rest9299_ _klass9300_)
                                   (if (let ((__tmp10808
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass9300_))))
                                         (declare (not safe))
                                         (eq? _type-id9270_ __tmp10808))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest9299_
                                          _id9267_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp9277_ _rest9299_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest92809288_))
                               (let ((_hd92859305_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest92809288_)))
                                     (_tl92869307_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest92809288_))))
                                 (let* ((_klass9310_ _hd92859305_)
                                        (_rest9312_ _tl92869307_))
                                   (declare (not safe))
                                   (_K92849302_ _rest9312_ _klass9310_)))
                               (let ()
                                 (declare (not safe))
                                 (_else92829296_))))))
                     _$e9272_)
                    (let _lp9314_ ((_klass9316_ _klass9269_))
                      (if (let ((__tmp10807
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass9316_))))
                            (declare (not safe))
                            (eq? _type-id9270_ __tmp10807))
                          (let ((__tmp10806
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9316_))))
                            (declare (not safe))
                            (struct-find-method __tmp10806 _id9267_))
                          (let ((_$e9318_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass9316_))))
                            (if _$e9318_
                                (let ()
                                  (declare (not safe))
                                  (_lp9314_ _$e9318_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass9269_))
                  (let _lp9321_ ((_klass9323_ _klass9269_))
                    (if (let ((__tmp10805
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass9323_))))
                          (declare (not safe))
                          (eq? _type-id9270_ __tmp10805))
                        (let ((__tmp10804
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9323_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10804 _id9267_))
                        (let ((_$e9325_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass9323_))))
                          (if _$e9325_
                              (let () (declare (not safe)) (_lp9321_ _$e9325_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass9255_ _obj9256_ _id9257_ . _args9258_)
        (let ((_$e9260_
               (let ()
                 (declare (not safe))
                 (next-method _subklass9255_ _obj9256_ _id9257_))))
          (if _$e9260_
              ((lambda (_methodf9263_)
                 (apply _methodf9263_ _obj9256_ _args9258_))
               _$e9260_)
              (error '"Cannot find next method" _obj9256_ _id9257_)))))
    (define write-style (lambda (_we9253_) (macro-writeenv-style _we9253_)))
    (define write-object
      (lambda (_we9245_ _obj9246_)
        (let ((_$e9248_
               (let () (declare (not safe)) (method-ref _obj9246_ ':wr))))
          (if _$e9248_
              ((lambda (_method9251_) (_method9251_ _obj9246_ _we9245_))
               _$e9248_)
              (let ()
                (declare (not safe))
                (##default-wr _we9245_ _obj9246_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
