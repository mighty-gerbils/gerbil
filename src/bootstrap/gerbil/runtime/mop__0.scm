(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1701718632)
  (begin
    (define type-descriptor?
      (lambda (_klass8642_)
        (if (let () (declare (not safe)) (##type? _klass8642_))
            (let ((__tmp8652
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass8642_))))
              (declare (not safe))
              (eq? __tmp8652 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass8640_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8640_))
            (let ((__tmp8653
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass8640_))))
              (declare (not safe))
              (not __tmp8653))
            '#f)))
    (define class-type?
      (lambda (_klass8638_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8638_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass8638_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id8534_
               _type-name8535_
               _type-super8536_
               _rtd-mixin8537_
               _rtd-fields8538_
               _rtd-plist8539_
               _rtd-ctor8540_
               _rtd-slots8541_
               _rtd-methods8542_)
        (letrec ((_put-props!8544_
                  (lambda (_ht8618_ _key8619_)
                    (letrec ((_put-plist!8621_
                              (lambda (_ht8627_ _key8628_ _plist8629_)
                                (let ((_$e8631_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key8628_ _plist8629_))))
                                  (if _$e8631_
                                      ((lambda (_lst8634_)
                                         (for-each
                                          (lambda (_id8636_)
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _ht8627_
                                               _id8636_
                                               '#t)))
                                          _lst8634_))
                                       _$e8631_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!8621_ _ht8618_ _key8619_ _rtd-plist8539_))
                      (if _rtd-mixin8537_
                          (for-each
                           (lambda (_klass8623_)
                             (if (let ()
                                   (declare (not safe))
                                   (type-descriptor-mixin _klass8623_))
                                 (let ((_plist8625_
                                        (let ()
                                          (declare (not safe))
                                          (type-descriptor-plist
                                           _klass8623_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (assgetq 'transparent: _plist8625_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!8621_
                                          _ht8618_
                                          'slots:
                                          _plist8625_))
                                       (let ()
                                         (declare (not safe))
                                         (_put-plist!8621_
                                          _ht8618_
                                          _key8619_
                                          _plist8625_))))
                                 '#!void))
                           _rtd-mixin8537_)
                          '#!void)))))
          (let* ((_transparent?8546_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist8539_)))
                 (_field-names8551_
                  (let ((_$e8548_ (assq 'fields: _rtd-plist8539_)))
                    (if _$e8548_ (cdr _$e8548_) '())))
                 (_field-names8558_
                  (let ((_$e8553_ (assq 'slots: _rtd-plist8539_)))
                    (if _$e8553_
                        ((lambda (_slots8556_)
                           (append _field-names8551_ (cdr _slots8556_)))
                         _$e8553_)
                        _field-names8551_)))
                 (_g8654_ (if (fx= _rtd-fields8538_ (length _field-names8558_))
                              '#!void
                              (error '"Bad field descriptor; length mismatch"
                                     _type-id8534_
                                     _rtd-fields8538_
                                     _field-names8558_)))
                 (_canonical-fields8561_
                  (if _type-super8536_
                      (list-tail
                       _field-names8558_
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _type-super8536_)))
                      _field-names8558_))
                 (_printable8565_
                  (if _transparent?8546_
                      '#f
                      (let ((_ht8563_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!8544_ _ht8563_ 'print:))
                        _ht8563_)))
                 (_equality8569_
                  (if _transparent?8546_
                      '#f
                      (let ((_ht8567_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!8544_ _ht8567_ 'equal:))
                        _ht8567_)))
                 (_field-info8610_
                  (let _recur8571_ ((_rest8573_ _canonical-fields8561_))
                    (let* ((_rest85748582_ _rest8573_)
                           (_else85768590_ (lambda () '()))
                           (_K85788598_
                            (lambda (_rest8593_ _id8594_)
                              (let* ((_flags8596_
                                      (if _transparent?8546_
                                          '0
                                          (let ((__tmp8656
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable8565_
                                                        _id8594_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp8655
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality8569_
                                                        _id8594_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp8656 __tmp8655))))
                                     (__tmp8657
                                      (let ((__tmp8658
                                             (let ((__tmp8659
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur8571_
                                                       _rest8593_))))
                                               (declare (not safe))
                                               (cons '#f __tmp8659))))
                                        (declare (not safe))
                                        (cons _flags8596_ __tmp8658))))
                                (declare (not safe))
                                (cons _id8594_ __tmp8657)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest85748582_))
                          (let ((_hd85798601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest85748582_)))
                                (_tl85808603_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest85748582_))))
                            (let* ((_id8606_ _hd85798601_)
                                   (_rest8608_ _tl85808603_))
                              (declare (not safe))
                              (_K85788598_ _rest8608_ _id8606_)))
                          (let () (declare (not safe)) (_else85768590_))))))
                 (_opaque?8615_
                  (if (or _transparent?8546_ (assq 'equal: _rtd-plist8539_))
                      (if _type-super8536_
                          (let ((__tmp8660
                                 (let ((__tmp8661
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super8536_))))
                                   (declare (not safe))
                                   (##fxand __tmp8661 '1))))
                            (declare (not safe))
                            (##fx= __tmp8660 '1))
                          '#f)
                      '#t)))
            (let ((__tmp8663 (+ '24 (if _opaque?8615_ '1 '0)))
                  (__tmp8662 (list->vector _field-info8610_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id8534_
               _type-name8535_
               __tmp8663
               _type-super8536_
               __tmp8662
               _rtd-mixin8537_
               _rtd-fields8538_
               _rtd-plist8539_
               _rtd-ctor8540_
               _rtd-slots8541_
               _rtd-methods8542_))))))
    (define make-struct-type-descriptor
      (lambda (_id8527_
               _name8528_
               _super8529_
               _fields8530_
               _plist8531_
               _ctor8532_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id8527_
           _name8528_
           _super8529_
           '#f
           _fields8530_
           _plist8531_
           _ctor8532_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id8518_
               _name8519_
               _super8520_
               _mixin8521_
               _fields8522_
               _plist8523_
               _ctor8524_
               _slots8525_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id8518_
           _name8519_
           _super8520_
           _mixin8521_
           _fields8522_
           _plist8523_
           _ctor8524_
           _slots8525_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass8516_)
        (let () (declare (not safe)) (##vector-ref _klass8516_ '6))))
    (define type-descriptor-fields
      (lambda (_klass8514_)
        (let () (declare (not safe)) (##vector-ref _klass8514_ '7))))
    (define type-descriptor-plist
      (lambda (_klass8512_)
        (let () (declare (not safe)) (##vector-ref _klass8512_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass8510_)
        (let () (declare (not safe)) (##vector-ref _klass8510_ '9))))
    (define type-descriptor-slots
      (lambda (_klass8508_)
        (let () (declare (not safe)) (##vector-ref _klass8508_ '10))))
    (define type-descriptor-methods
      (lambda (_klass8506_)
        (let () (declare (not safe)) (##vector-ref _klass8506_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass8503_ _ht8504_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass8503_ '11 _ht8504_))))
    (define type-descriptor-sealed?
      (lambda (_klass8501_)
        (let ((__tmp8664
               (let () (declare (not safe)) (##type-flags _klass8501_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp8664))))
    (define type-descriptor-seal!
      (lambda (_klass8499_)
        (let ((__tmp8665
               (let ((__tmp8667
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp8666
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass8499_))))
                 (declare (not safe))
                 (##fxior __tmp8667 __tmp8666))))
          (declare (not safe))
          (##vector-set! _klass8499_ '3 __tmp8665))))
    (define make-struct-type__%
      (lambda (_id8448_
               _super8449_
               _fields8450_
               _name8451_
               _plist8452_
               _ctor8453_
               _field-names8454_)
        (if (and _super8449_
                 (let ((__tmp8668
                        (let ()
                          (declare (not safe))
                          (struct-type? _super8449_))))
                   (declare (not safe))
                   (not __tmp8668)))
            (error '"Illegal super type; not a struct-type" _super8449_)
            '#!void)
        (if (and _super8449_
                 (let ((__tmp8669
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super8449_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp8669)))
            (error '"Cannot extend final struct" _super8449_)
            '#!void)
        (let* ((_super-fields8456_
                (if _super8449_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super8449_))
                    '0))
               (_std-fields8458_ (fx+ _fields8450_ _super-fields8456_))
               (_std-field-names8468_
                (let* ((_super-fields8460_
                        (if _super8449_
                            (let ((__tmp8670
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super8449_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp8670))
                            '()))
                       (_field-names8465_
                        (let ((_$e8462_ _field-names8454_))
                          (if _$e8462_ _$e8462_ (make-list _fields8450_ ':)))))
                  (append _super-fields8460_ _field-names8465_)))
               (_g8672_ (if (let ((__tmp8671 (length _std-field-names8468_)))
                              (declare (not safe))
                              (##fx= _std-fields8458_ __tmp8671))
                            '#!void
                            (error '"Bad field specification; length mismatch"
                                   _id8448_
                                   _std-fields8458_
                                   _std-field-names8468_)))
               (_std-plist8471_
                (let ((__tmp8673
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names8468_))))
                  (declare (not safe))
                  (cons __tmp8673 _plist8452_)))
               (_ctor8476_
                (let ((_$e8473_ _ctor8453_))
                  (if _$e8473_
                      _$e8473_
                      (if _super8449_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super8449_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id8448_
             _name8451_
             _super8449_
             _std-fields8458_
             _std-plist8471_
             _ctor8476_)))))
    (define make-struct-type__0
      (lambda (_id8482_
               _super8483_
               _fields8484_
               _name8485_
               _plist8486_
               _ctor8487_)
        (let ((_field-names8489_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id8482_
           _super8483_
           _fields8484_
           _name8485_
           _plist8486_
           _ctor8487_
           _field-names8489_))))
    (define make-struct-type
      (lambda _g8675_
        (let ((_g8674_ (let () (declare (not safe)) (##length _g8675_))))
          (cond ((let () (declare (not safe)) (##fx= _g8674_ 6))
                 (apply (lambda (_id8482_
                                 _super8483_
                                 _fields8484_
                                 _name8485_
                                 _plist8486_
                                 _ctor8487_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id8482_
                             _super8483_
                             _fields8484_
                             _name8485_
                             _plist8486_
                             _ctor8487_)))
                        _g8675_))
                ((let () (declare (not safe)) (##fx= _g8674_ 7))
                 (apply (lambda (_id8491_
                                 _super8492_
                                 _fields8493_
                                 _name8494_
                                 _plist8495_
                                 _ctor8496_
                                 _field-names8497_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id8491_
                             _super8492_
                             _fields8493_
                             _name8494_
                             _plist8495_
                             _ctor8496_
                             _field-names8497_)))
                        _g8675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g8675_))))))
    (define make-struct-predicate
      (lambda (_klass8439_)
        (let ((_tid8441_
               (let () (declare (not safe)) (##type-id _klass8439_))))
          (if (let ((__tmp8676
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass8439_))))
                (declare (not safe))
                (assgetq 'final: __tmp8676))
              (lambda (_obj8443_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj8443_ _tid8441_)))
              (lambda (_obj8445_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj8445_ _tid8441_)))))))
    (define make-struct-field-accessor
      (lambda (_klass8432_ _field8433_)
        (let ((_off8435_
               (let ((__tmp8677
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8432_ _field8433_))))
                 (declare (not safe))
                 (##fx+ __tmp8677 '1))))
          (lambda (_obj8437_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj8437_ _off8435_ _klass8432_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass8424_ _field8425_)
        (let ((_off8427_
               (let ((__tmp8678
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8424_ _field8425_))))
                 (declare (not safe))
                 (##fx+ __tmp8678 '1))))
          (lambda (_obj8429_ _val8430_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj8429_
               _val8430_
               _off8427_
               _klass8424_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass8417_ _field8418_)
        (let ((_off8420_
               (let ((__tmp8679
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8417_ _field8418_))))
                 (declare (not safe))
                 (##fx+ __tmp8679 '1))))
          (lambda (_obj8422_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj8422_
               _off8420_
               _klass8417_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass8409_ _field8410_)
        (let ((_off8412_
               (let ((__tmp8680
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass8409_ _field8410_))))
                 (declare (not safe))
                 (##fx+ __tmp8680 '1))))
          (lambda (_obj8414_ _val8415_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj8414_
               _val8415_
               _off8412_
               _klass8409_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass8403_ _field8404_)
        (let ((__tmp8681
               (let ((_$e8406_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass8403_))))
                 (if _$e8406_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e8406_))
                     '0))))
          (declare (not safe))
          (##fx+ _field8404_ __tmp8681))))
    (define struct-field-ref
      (lambda (_klass8399_ _obj8400_ _off8401_)
        (let ((__tmp8682 (let () (declare (not safe)) (##fx+ _off8401_ '1))))
          (declare (not safe))
          (##structure-ref _obj8400_ __tmp8682 _klass8399_ '#f))))
    (define struct-field-set!
      (lambda (_klass8394_ _obj8395_ _off8396_ _val8397_)
        (let ((__tmp8683 (let () (declare (not safe)) (##fx+ _off8396_ '1))))
          (declare (not safe))
          (##structure-set! _obj8395_ _val8397_ __tmp8683 _klass8394_ '#f))))
    (define struct-subtype?
      (lambda (_klass8385_ _xklass8386_)
        (let ((_klass-t8388_
               (let () (declare (not safe)) (##type-id _klass8385_))))
          (let _lp8390_ ((_next8392_ _xklass8386_))
            (if (let () (declare (not safe)) (not _next8392_))
                '#f
                (if (let ((__tmp8685
                           (let ()
                             (declare (not safe))
                             (##type-id _next8392_))))
                      (declare (not safe))
                      (eq? _klass-t8388_ __tmp8685))
                    '#t
                    (let ((__tmp8684
                           (let ()
                             (declare (not safe))
                             (##type-super _next8392_))))
                      (declare (not safe))
                      (_lp8390_ __tmp8684))))))))
    (define make-class-type
      (lambda (_id8092_
               _super8093_
               _slots8094_
               _name8095_
               _plist8096_
               _ctor8097_)
        (letrec ((_class-slots8099_
                  (lambda (_klass8383_)
                    (let ((__tmp8686
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass8383_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp8686))))
                 (_make-slots8100_
                  (lambda (_off8334_)
                    (let ((_slot-table8336_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp8338_ ((_rest8340_ _super8093_)
                                     (_off8341_ _off8334_)
                                     (_slot-list8342_ '()))
                        (let* ((_rest83438351_ _rest8340_)
                               (_else83458362_
                                (lambda ()
                                  (let ((__tmp8687
                                         (lambda (_off8359_ _slot-list8360_)
                                           (values _off8359_
                                                   _slot-table8336_
                                                   (reverse _slot-list8360_)))))
                                    (declare (not safe))
                                    (_merge-slots8101_
                                     _slot-table8336_
                                     _slots8094_
                                     _off8341_
                                     _slot-list8342_
                                     __tmp8687))))
                               (_K83478371_
                                (lambda (_rest8365_ _hd8366_)
                                  (let ((__tmp8689
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots8099_ _hd8366_)))
                                        (__tmp8688
                                         (lambda (_off8368_ _slot-list8369_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp8338_
                                              _rest8365_
                                              _off8368_
                                              _slot-list8369_)))))
                                    (declare (not safe))
                                    (_merge-slots8101_
                                     _slot-table8336_
                                     __tmp8689
                                     _off8341_
                                     _slot-list8342_
                                     __tmp8688)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest83438351_))
                              (let ((_hd83488374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest83438351_)))
                                    (_tl83498376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest83438351_))))
                                (let* ((_hd8379_ _hd83488374_)
                                       (_rest8381_ _tl83498376_))
                                  (declare (not safe))
                                  (_K83478371_ _rest8381_ _hd8379_)))
                              (let ()
                                (declare (not safe))
                                (_else83458362_))))))))
                 (_merge-slots8101_
                  (lambda (_ht8289_ _lst8290_ _off8291_ _r8292_ _K8293_)
                    (let _lp8295_ ((_rest8297_ _lst8290_)
                                   (_off8298_ _off8291_)
                                   (_r8299_ _r8292_))
                      (let* ((_rest83008308_ _rest8297_)
                             (_else83028316_
                              (lambda () (_K8293_ _off8298_ _r8299_)))
                             (_K83048322_
                              (lambda (_rest8319_ _slot8320_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht8289_ _slot8320_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp8295_ _rest8319_ _off8298_ _r8299_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht8289_
                                         _slot8320_
                                         _off8298_))
                                      (let ((__tmp8690
                                             (symbol->keyword _slot8320_)))
                                        (declare (not safe))
                                        (table-set!
                                         _ht8289_
                                         __tmp8690
                                         _off8298_))
                                      (let ((__tmp8692
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off8298_ '1)))
                                            (__tmp8691
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot8320_ _r8299_))))
                                        (declare (not safe))
                                        (_lp8295_
                                         _rest8319_
                                         __tmp8692
                                         __tmp8691)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest83008308_))
                            (let ((_hd83058325_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest83008308_)))
                                  (_tl83068327_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest83008308_))))
                              (let* ((_slot8330_ _hd83058325_)
                                     (_rest8332_ _tl83068327_))
                                (declare (not safe))
                                (_K83048322_ _rest8332_ _slot8330_)))
                            (let () (declare (not safe)) (_else83028316_)))))))
                 (_find-super-ctor8102_
                  (lambda (_super8241_)
                    (let _lp8243_ ((_rest8245_ _super8241_) (_ctor8246_ '#f))
                      (let* ((_rest82478255_ _rest8245_)
                             (_else82498263_ (lambda () _ctor8246_))
                             (_K82518277_
                              (lambda (_rest8266_ _hd8267_)
                                (let ((_$e8269_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd8267_))))
                                  (if _$e8269_
                                      ((lambda (_xctor8272_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor8246_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor8246_
                                                        _xctor8272_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp8243_
                                                _rest8266_
                                                _xctor8272_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor8246_
                                                    _xctor8272_)))
                                       _$e8269_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp8243_ _rest8266_ _ctor8246_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest82478255_))
                            (let ((_hd82528280_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest82478255_)))
                                  (_tl82538282_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest82478255_))))
                              (let* ((_hd8285_ _hd82528280_)
                                     (_rest8287_ _tl82538282_))
                                (declare (not safe))
                                (_K82518277_ _rest8287_ _hd8285_)))
                            (let () (declare (not safe)) (_else82498263_)))))))
                 (_find-super-struct8103_
                  (lambda (_super8188_)
                    (letrec ((_base-struct8190_
                              (lambda (_super-struct8230_ _klass8231_)
                                (if _super-struct8230_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct8230_
                                           _klass8231_))
                                        (let _lp8233_ ((_klass8235_
                                                        _klass8231_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass8235_))
                                              _klass8235_
                                              (let ((__tmp8693
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass8235_))))
                                                (declare (not safe))
                                                (_lp8233_ __tmp8693))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass8231_
                                               _super-struct8230_))
                                            _super-struct8230_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass8231_
                                                   _super-struct8230_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass8231_))
                                        _klass8231_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass8231_))
                                            (let _lp8237_ ((_next8239_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##type-super
                                                               _klass8231_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next8239_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next8239_))
                                                      _next8239_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next8239_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp8237_
                                                             _next8239_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp8192_ ((_rest8194_ _super8188_)
                                     (_super-struct8195_ '#f))
                        (let* ((_rest81968204_ _rest8194_)
                               (_else81988212_ (lambda () _super-struct8195_))
                               (_K82008218_
                                (lambda (_rest8215_ _hd8216_)
                                  (let ((__tmp8694
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct8190_
                                            _super-struct8195_
                                            _hd8216_))))
                                    (declare (not safe))
                                    (_lp8192_ _rest8215_ __tmp8694)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest81968204_))
                              (let ((_hd82018221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest81968204_)))
                                    (_tl82028223_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest81968204_))))
                                (let* ((_hd8226_ _hd82018221_)
                                       (_rest8228_ _tl82028223_))
                                  (declare (not safe))
                                  (_K82008218_ _rest8228_ _hd8226_)))
                              (let ()
                                (declare (not safe))
                                (_else81988212_))))))))
                 (_expand-struct-mixin8104_
                  (lambda (_super8143_)
                    (let _lp8145_ ((_rest8147_ _super8143_) (_mixin8148_ '()))
                      (let* ((_rest81498157_ _rest8147_)
                             (_else81518165_ (lambda () (reverse _mixin8148_)))
                             (_K81538176_
                              (lambda (_rest8168_ _hd8169_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd8169_))
                                    (let _lp28171_ ((_next8173_ _hd8169_)
                                                    (_mixin8174_ _mixin8148_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next8173_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp8145_ _rest8168_ _mixin8174_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next8173_))
                                              (let ((__tmp8697
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next8173_)))
                                                    (__tmp8696
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next8173_
                                                             _mixin8174_))))
                                                (declare (not safe))
                                                (_lp28171_
                                                 __tmp8697
                                                 __tmp8696))
                                              (let ()
                                                (declare (not safe))
                                                (_lp8145_
                                                 _rest8168_
                                                 _mixin8174_)))))
                                    (let ((__tmp8695
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd8169_ _mixin8148_))))
                                      (declare (not safe))
                                      (_lp8145_ _rest8168_ __tmp8695))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest81498157_))
                            (let ((_hd81548179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest81498157_)))
                                  (_tl81558181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest81498157_))))
                              (let* ((_hd8184_ _hd81548179_)
                                     (_rest8186_ _tl81558181_))
                                (declare (not safe))
                                (_K81538176_ _rest8186_ _hd8184_)))
                            (let ()
                              (declare (not safe))
                              (_else81518165_))))))))
          (let ((_$e8108_
                 (let ((__tmp8698
                        (lambda (_klass8106_)
                          (let ((__tmp8699
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass8106_))))
                            (declare (not safe))
                            (not __tmp8699)))))
                   (declare (not safe))
                   (find __tmp8698 _super8093_))))
            (if _$e8108_
                ((lambda (_klass8111_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass8111_))
                 _$e8108_)
                (let ((_$e8115_
                       (let ((__tmp8700
                              (lambda (_klass8113_)
                                (let ((__tmp8701
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist _klass8113_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp8701)))))
                         (declare (not safe))
                         (find __tmp8700 _super8093_))))
                  (if _$e8115_
                      ((lambda (_klass8118_)
                         (error '"Cannot extend final class" _klass8118_))
                       _$e8115_)
                      '#!void))))
          (let* ((_std-super8120_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct8103_ _super8093_)))
                 (_mixin8122_
                  (if _std-super8120_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin8104_ _super8093_))
                      _super8093_)))
            (let ((_g8702_ (let ((__tmp8704
                                  (if _std-super8120_
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-fields
                                         _std-super8120_))
                                      '0)))
                             (declare (not safe))
                             (_make-slots8100_ __tmp8704))))
              (begin
                (let ((_g8703_ (let ()
                                 (declare (not safe))
                                 (if (##values? _g8702_)
                                     (##vector-length _g8702_)
                                     1))))
                  (if (not (let () (declare (not safe)) (##fx= _g8703_ 3)))
                      (error "Context expects 3 values" _g8703_)))
                (let ((_std-fields8125_
                       (let () (declare (not safe)) (##vector-ref _g8702_ 0)))
                      (_std-slots8126_
                       (let () (declare (not safe)) (##vector-ref _g8702_ 1)))
                      (_std-slot-list8127_
                       (let () (declare (not safe)) (##vector-ref _g8702_ 2))))
                  (let* ((_std-mixin8129_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin8122_)))
                         (_std-plist8133_
                          (if _std-super8120_
                              (let* ((_fields8131_
                                      (let ((__tmp8705
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super8120_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp8705)))
                                     (__tmp8706
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields8131_))))
                                (declare (not safe))
                                (cons __tmp8706 _plist8096_))
                              _plist8096_))
                         (_std-plist8135_
                          (let ((__tmp8707
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list8127_))))
                            (declare (not safe))
                            (cons __tmp8707 _std-plist8133_)))
                         (_std-ctor8140_
                          (let ((_$e8137_ _ctor8097_))
                            (if _$e8137_
                                _$e8137_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor8102_ _super8093_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id8092_
                       _name8095_
                       _std-super8120_
                       _std-mixin8129_
                       _std-fields8125_
                       _std-plist8135_
                       _std-ctor8140_
                       _std-slots8126_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst8043_)
        (letrec ((_class->list8045_
                  (lambda (_klass8087_)
                    (let ((__tmp8708
                           (let ((_$e8089_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass8087_))))
                             (if _$e8089_ _$e8089_ '()))))
                      (declare (not safe))
                      (cons _klass8087_ __tmp8708)))))
          (let* ((_klass-lst80468056_ _klass-lst8043_)
                 (_else80498064_
                  (lambda ()
                    (let ((__tmp8709 (map _class->list8045_ _klass-lst8043_)))
                      (declare (not safe))
                      (__linearize-mixins __tmp8709)))))
            (let ((_K80548084_ (lambda () '()))
                  (_K80518070_
                   (lambda (_klass8068_)
                     (let ()
                       (declare (not safe))
                       (_class->list8045_ _klass8068_)))))
              (let ((_try-match80488080_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst80468056_))
                           (let ((_tl80538075_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst80468056_)))
                                 (_hd80528073_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst80468056_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl80538075_))
                                 (let ((_klass8078_ _hd80528073_))
                                   (declare (not safe))
                                   (_class->list8045_ _klass8078_))
                                 (let ()
                                   (declare (not safe))
                                   (_else80498064_))))
                           (let () (declare (not safe)) (_else80498064_))))))
                (if (let () (declare (not safe)) (##null? _klass-lst80468056_))
                    (let () (declare (not safe)) (_K80548084_))
                    (let () (declare (not safe)) (_try-match80488080_)))))))))
    (define __linearize-mixins
      (lambda (_lst7884_)
        (letrec ((_K7886_ (lambda (_rest8007_ _r8008_)
                            (let* ((_rest80098017_ _rest8007_)
                                   (_else80118025_
                                    (lambda () (reverse _r8008_)))
                                   (_K80138031_
                                    (lambda (_rest8028_ _hd8029_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize17887_
                                         _hd8029_
                                         _rest8028_
                                         _r8008_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest80098017_))
                                  (let ((_hd80148034_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest80098017_)))
                                        (_tl80158036_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest80098017_))))
                                    (let* ((_hd8039_ _hd80148034_)
                                           (_rest8041_ _tl80158036_))
                                      (declare (not safe))
                                      (_K80138031_ _rest8041_ _hd8039_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else80118025_))))))
                 (_linearize17887_
                  (lambda (_hd7970_ _rest7971_ _r7972_)
                    (let* ((_hd79737981_ _hd7970_)
                           (_else79757989_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K7886_ _rest7971_ _r7972_))))
                           (_K79777995_
                            (lambda (_hd-rest7992_ _hd-first7993_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq7890_ _hd-first7993_ _rest7971_))
                                  (let ((__tmp8712 (list _hd7970_)))
                                    (declare (not safe))
                                    (_linearize27888_
                                     _rest7971_
                                     __tmp8712
                                     _r7972_))
                                  (let ((__tmp8711
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest7992_ _rest7971_)))
                                        (__tmp8710
                                         (let ()
                                           (declare (not safe))
                                           (_putq7889_
                                            _hd-first7993_
                                            _r7972_))))
                                    (declare (not safe))
                                    (_K7886_ __tmp8711 __tmp8710))))))
                      (if (let () (declare (not safe)) (##pair? _hd79737981_))
                          (let ((_hd79787998_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd79737981_)))
                                (_tl79798000_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd79737981_))))
                            (let* ((_hd-first8003_ _hd79787998_)
                                   (_hd-rest8005_ _tl79798000_))
                              (declare (not safe))
                              (_K79777995_ _hd-rest8005_ _hd-first8003_)))
                          (let () (declare (not safe)) (_else79757989_))))))
                 (_linearize27888_
                  (lambda (_rest7900_ _pre7901_ _r7902_)
                    (let _lp7904_ ((_rest7906_ _rest7900_)
                                   (_pre7907_ _pre7901_))
                      (let* ((_rest79087915_ _rest7906_)
                             (_E79107919_
                              (lambda ()
                                (error '"No clause matching" _rest79087915_)))
                             (_K79117958_
                              (lambda (_rest7922_ _hd7923_)
                                (let* ((_hd79247932_ _hd7923_)
                                       (_else79267940_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp7904_ _rest7922_ _pre7907_))))
                                       (_K79287946_
                                        (lambda (_hd-rest7943_ _hd-first7944_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq7890_
                                                 _hd-first7944_
                                                 _rest7922_))
                                              (let ((__tmp8716
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd7923_
                                                             _pre7907_))))
                                                (declare (not safe))
                                                (_lp7904_
                                                 _rest7922_
                                                 __tmp8716))
                                              (let ((__tmp8714
                                                     (let ((__tmp8715
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest7943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest7922_))))
               (declare (not safe))
               (foldl1 cons __tmp8715 _pre7907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp8713
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq7889_
                                                        _hd-first7944_
                                                        _r7902_))))
                                                (declare (not safe))
                                                (_K7886_ __tmp8714
                                                         __tmp8713))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd79247932_))
                                      (let ((_hd79297949_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd79247932_)))
                                            (_tl79307951_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd79247932_))))
                                        (let* ((_hd-first7954_ _hd79297949_)
                                               (_hd-rest7956_ _tl79307951_))
                                          (declare (not safe))
                                          (_K79287946_
                                           _hd-rest7956_
                                           _hd-first7954_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else79267940_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest79087915_))
                            (let ((_hd79127961_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest79087915_)))
                                  (_tl79137963_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest79087915_))))
                              (let* ((_hd7966_ _hd79127961_)
                                     (_rest7968_ _tl79137963_))
                                (declare (not safe))
                                (_K79117958_ _rest7968_ _hd7966_)))
                            (let () (declare (not safe)) (_E79107919_)))))))
                 (_putq7889_
                  (lambda (_hd7897_ _lst7898_)
                    (if (memq _hd7897_ _lst7898_)
                        _lst7898_
                        (let ()
                          (declare (not safe))
                          (cons _hd7897_ _lst7898_)))))
                 (_findq7890_
                  (lambda (_hd7892_ _rest7893_)
                    (let ((__tmp8717
                           (lambda (_lst7895_) (memq _hd7892_ _lst7895_))))
                      (declare (not safe))
                      (find __tmp8717 _rest7893_)))))
          (let () (declare (not safe)) (_K7886_ _lst7884_ '())))))
    (define make-class-predicate
      (lambda (_klass7878_)
        (if (let ((__tmp8719
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass7878_))))
              (declare (not safe))
              (assgetq 'final: __tmp8719))
            (lambda (_obj7880_)
              (let ((__tmp8718
                     (let () (declare (not safe)) (##type-id _klass7878_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj7880_ __tmp8718)))
            (lambda (_obj7882_)
              (let ()
                (declare (not safe))
                (class-instance? _klass7878_ _obj7882_))))))
    (define make-class-slot-accessor
      (lambda (_klass7873_ _slot7874_)
        (lambda (_obj7876_)
          (let () (declare (not safe)) (slot-ref _obj7876_ _slot7874_)))))
    (define make-class-slot-mutator
      (lambda (_klass7867_ _slot7868_)
        (lambda (_obj7870_ _val7871_)
          (let ()
            (declare (not safe))
            (slot-set! _obj7870_ _slot7868_ _val7871_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass7862_ _slot7863_)
        (lambda (_obj7865_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj7865_ _slot7863_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass7856_ _slot7857_)
        (lambda (_obj7859_ _val7860_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj7859_ _slot7857_ _val7860_)))))
    (define class-slot-offset
      (lambda (_klass7848_ _slot7849_)
        (let ((_$e7851_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass7848_))))
          (if _$e7851_
              ((lambda (_slots7854_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots7854_ _slot7849_ '#f)))
               _$e7851_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass7842_ _obj7843_ _slot7844_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass7842_ _obj7843_))
            (let* ((_off7846_
                    (let ((__tmp8720
                           (let ()
                             (declare (not safe))
                             (object-type _obj7843_))))
                      (declare (not safe))
                      (class-slot-offset __tmp8720 _slot7844_)))
                   (__tmp8721
                    (let () (declare (not safe)) (##fx+ _off7846_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj7843_ __tmp8721 _klass7842_ '#f))
            (error '"not an instance" _klass7842_ _obj7843_))))
    (define class-slot-set!
      (lambda (_klass7835_ _obj7836_ _slot7837_ _val7838_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass7835_ _obj7836_))
            (let* ((_off7840_
                    (let ((__tmp8722
                           (let ()
                             (declare (not safe))
                             (object-type _obj7836_))))
                      (declare (not safe))
                      (class-slot-offset __tmp8722 _slot7837_)))
                   (__tmp8723
                    (let () (declare (not safe)) (##fx+ _off7840_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj7836_
               _val7838_
               __tmp8723
               _klass7835_
               '#f))
            (error '"not an instance" _klass7835_ _obj7836_))))
    (define class-subtype?
      (lambda (_klass7820_ _xklass7821_)
        (let* ((_klass-t7823_
                (let () (declare (not safe)) (##type-id _klass7820_)))
               (_$e7825_
                (let ((__tmp8724
                       (let () (declare (not safe)) (##type-id _xklass7821_))))
                  (declare (not safe))
                  (eq? _klass-t7823_ __tmp8724))))
          (if _$e7825_
              _$e7825_
              (let ((_$e7828_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass7821_))))
                (if _$e7828_
                    ((lambda (_mixin7831_)
                       (if (let ((__tmp8725
                                  (lambda (_xklass7833_)
                                    (let ((__tmp8726
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass7833_))))
                                      (declare (not safe))
                                      (eq? _klass-t7823_ __tmp8726)))))
                             (declare (not safe))
                             (find __tmp8725 _mixin7831_))
                           '#t
                           '#f))
                     _$e7828_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass7817_ _obj7818_)
        (let ((__tmp8727
               (let () (declare (not safe)) (##type-id _klass7817_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj7818_ __tmp8727))))
    (define struct-instance?
      (lambda (_klass7814_ _obj7815_)
        (let ((__tmp8728
               (let () (declare (not safe)) (##type-id _klass7814_))))
          (declare (not safe))
          (##structure-instance-of? _obj7815_ __tmp8728))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass7798_ _obj7799_)
        (if (let () (declare (not safe)) (object? _obj7799_))
            (let ((_klass-id7801_
                   (let () (declare (not safe)) (##type-id _klass7798_)))
                  (_type7802_
                   (let () (declare (not safe)) (object-type _obj7799_))))
              (if (let () (declare (not safe)) (type-descriptor? _type7802_))
                  (let ((_$e7804_
                         (let ((__tmp8729
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type7802_))))
                           (declare (not safe))
                           (eq? __tmp8729 _klass-id7801_))))
                    (if _$e7804_
                        _$e7804_
                        (let ((_$e7807_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type7802_))))
                          (if _$e7807_
                              ((lambda (_mixin7810_)
                                 (let ((__tmp8730
                                        (lambda (_type7812_)
                                          (let ((__tmp8731
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type7812_))))
                                            (declare (not safe))
                                            (eq? __tmp8731 _klass-id7801_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp8730 _mixin7810_)))
                               _$e7807_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass7793_ _k7794_)
        (let ((_obj7796_
               (let ((__tmp8732
                      (let () (declare (not safe)) (##fx+ _k7794_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp8732 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj7796_ '0 _klass7793_))
          (let ((__tmp8733 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj7796_ __tmp8733))
          _obj7796_)))
    (define make-struct-instance
      (lambda (_klass7783_ . _args7784_)
        (let* ((_fields7786_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass7783_)))
               (_$e7788_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass7783_))))
          (if _$e7788_
              ((lambda (_kons-id7791_)
                 (let ((__tmp8735
                        (let ()
                          (declare (not safe))
                          (make-object _klass7783_ _fields7786_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass7783_
                    _kons-id7791_
                    __tmp8735
                    _args7784_)))
               _$e7788_)
              (if (let ((__tmp8734 (length _args7784_)))
                    (declare (not safe))
                    (##fx= _fields7786_ __tmp8734))
                  (apply ##structure _klass7783_ _args7784_)
                  (error '"Arguments don't match object size"
                         _klass7783_
                         _fields7786_
                         _args7784_))))))
    (define make-class-instance
      (lambda (_klass7773_ . _args7774_)
        (let* ((_obj7776_
                (let ((__tmp8736
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass7773_))))
                  (declare (not safe))
                  (make-object _klass7773_ __tmp8736)))
               (_$e7778_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass7773_))))
          (if _$e7778_
              ((lambda (_kons-id7781_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass7773_
                    _kons-id7781_
                    _obj7776_
                    _args7774_)))
               _$e7778_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass7773_ _obj7776_ _args7774_))))))
    (define struct-instance-init!
      (lambda (_obj7770_ . _args7771_)
        (if (let ((__tmp8738 (length _args7771_))
                  (__tmp8737
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj7770_))))
              (declare (not safe))
              (##fx< __tmp8738 __tmp8737))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj7770_ _args7771_))
            (error '"Too many arguments for struct" _obj7770_ _args7771_))))
    (define __struct-instance-init!
      (lambda (_obj7729_ _args7730_)
        (let _lp7732_ ((_k7734_ '1) (_rest7735_ _args7730_))
          (let* ((_rest77367744_ _rest7735_)
                 (_else77387752_ (lambda () _obj7729_))
                 (_K77407758_
                  (lambda (_rest7755_ _hd7756_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj7729_ _k7734_ _hd7756_))
                    (let ((__tmp8739
                           (let () (declare (not safe)) (##fx+ _k7734_ '1))))
                      (declare (not safe))
                      (_lp7732_ __tmp8739 _rest7755_)))))
            (if (let () (declare (not safe)) (##pair? _rest77367744_))
                (let ((_hd77417761_
                       (let () (declare (not safe)) (##car _rest77367744_)))
                      (_tl77427763_
                       (let () (declare (not safe)) (##cdr _rest77367744_))))
                  (let* ((_hd7766_ _hd77417761_) (_rest7768_ _tl77427763_))
                    (declare (not safe))
                    (_K77407758_ _rest7768_ _hd7766_)))
                (let () (declare (not safe)) (_else77387752_)))))))
    (define class-instance-init!
      (lambda (_obj7726_ . _args7727_)
        (let ((__tmp8740
               (let () (declare (not safe)) (object-type _obj7726_))))
          (declare (not safe))
          (__class-instance-init! __tmp8740 _obj7726_ _args7727_))))
    (define __class-instance-init!
      (lambda (_klass7670_ _obj7671_ _args7672_)
        (let _lp7674_ ((_rest7676_ _args7672_))
          (let* ((_rest76777687_ _rest7676_)
                 (_else76797695_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest7676_))
                        _obj7671_
                        (error '"Unexpected class initializer arguments"
                               _rest7676_))))
                 (_K76817707_
                  (lambda (_rest7698_ _val7699_ _key7700_)
                    (let ((_$e7702_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass7670_ _key7700_))))
                      (if _$e7702_
                          ((lambda (_off7705_)
                             (let ((__tmp8741
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off7705_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj7671_ __tmp8741 _val7699_))
                             (let ()
                               (declare (not safe))
                               (_lp7674_ _rest7698_)))
                           _$e7702_)
                          (error '"No slot for keyword initializer"
                                 _klass7670_
                                 _key7700_))))))
            (if (let () (declare (not safe)) (##pair? _rest76777687_))
                (let ((_hd76827710_
                       (let () (declare (not safe)) (##car _rest76777687_)))
                      (_tl76837712_
                       (let () (declare (not safe)) (##cdr _rest76777687_))))
                  (let ((_key7715_ _hd76827710_))
                    (if (let () (declare (not safe)) (##pair? _tl76837712_))
                        (let ((_hd76847717_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl76837712_)))
                              (_tl76857719_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl76837712_))))
                          (let* ((_val7722_ _hd76847717_)
                                 (_rest7724_ _tl76857719_))
                            (declare (not safe))
                            (_K76817707_ _rest7724_ _val7722_ _key7715_)))
                        (let () (declare (not safe)) (_else76797695_)))))
                (let () (declare (not safe)) (_else76797695_)))))))
    (define constructor-init!
      (lambda (_klass7665_ _kons-id7666_ _obj7667_ . _args7668_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass7665_
           _kons-id7666_
           _obj7667_
           _args7668_))))
    (define __constructor-init!
      (lambda (_klass7655_ _kons-id7656_ _obj7657_ _args7658_)
        (let ((_$e7660_
               (let ()
                 (declare (not safe))
                 (__find-method _klass7655_ _kons-id7656_))))
          (if _$e7660_
              ((lambda (_kons7663_)
                 (apply _kons7663_ _obj7657_ _args7658_)
                 _obj7657_)
               _$e7660_)
              (error '"Missing constructor" _klass7655_ _kons-id7656_)))))
    (define struct-copy
      (lambda (_struct7653_)
        (if (let () (declare (not safe)) (##structure? _struct7653_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct7653_))
        (let () (declare (not safe)) (##structure-copy _struct7653_))))
    (define struct->list
      (lambda (_obj7651_)
        (if (let () (declare (not safe)) (object? _obj7651_))
            (let () (declare (not safe)) (##vector->list _obj7651_))
            (error '"Not an object" _obj7651_))))
    (define class->list
      (lambda (_obj7638_)
        (if (let () (declare (not safe)) (object? _obj7638_))
            (let ((_klass7640_
                   (let () (declare (not safe)) (object-type _obj7638_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass7640_))
                  (let ((_$e7642_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass7640_))))
                    (if _$e7642_
                        ((lambda (_slots7645_)
                           (let ((__tmp8742
                                  (let ((__tmp8743
                                         (lambda (_slot7647_ _off7648_ _r7649_)
                                           (if (keyword? _slot7647_)
                                               (let ((__tmp8744
                                                      (let ((__tmp8745
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj7638_ _off7648_))))
                (declare (not safe))
                (cons __tmp8745 _r7649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot7647_ __tmp8744))
                                               _r7649_))))
                                    (declare (not safe))
                                    (hash-fold __tmp8743 '() _slots7645_))))
                             (declare (not safe))
                             (cons _klass7640_ __tmp8742)))
                         _$e7642_)
                        (list _klass7640_)))
                  (error '"Not a class type" _obj7638_ _klass7640_)))
            (error '"Not an object" _obj7638_))))
    (define unchecked-field-ref
      (lambda (_obj7635_ _off7636_)
        (let ((__tmp8746 (let () (declare (not safe)) (##fx+ _off7636_ '1))))
          (declare (not safe))
          (##vector-ref _obj7635_ __tmp8746))))
    (define unchecked-field-set!
      (lambda (_obj7631_ _off7632_ _val7633_)
        (let ((__tmp8747 (let () (declare (not safe)) (##fx+ _off7632_ '1))))
          (declare (not safe))
          (##vector-set! _obj7631_ __tmp8747 _val7633_))))
    (define unchecked-slot-ref
      (lambda (_obj7628_ _slot7629_)
        (let ((__tmp8748
               (let ((__tmp8749
                      (let () (declare (not safe)) (object-type _obj7628_))))
                 (declare (not safe))
                 (class-slot-offset __tmp8749 _slot7629_))))
          (declare (not safe))
          (unchecked-field-ref _obj7628_ __tmp8748))))
    (define unchecked-slot-set!
      (lambda (_obj7624_ _slot7625_ _val7626_)
        (let ((__tmp8750
               (let ((__tmp8751
                      (let () (declare (not safe)) (object-type _obj7624_))))
                 (declare (not safe))
                 (class-slot-offset __tmp8751 _slot7625_))))
          (declare (not safe))
          (unchecked-field-set! _obj7624_ __tmp8750 _val7626_))))
    (define slot-ref__%
      (lambda (_obj7600_ _slot7601_ _E7602_)
        (if (let () (declare (not safe)) (object? _obj7600_))
            (let* ((_klass7604_
                    (let () (declare (not safe)) (object-type _obj7600_)))
                   (_$e7607_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass7604_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass7604_ _slot7601_))
                        '#f)))
              (if _$e7607_
                  ((lambda (_off7610_)
                     (let ((__tmp8752
                            (let ()
                              (declare (not safe))
                              (##fx+ _off7610_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj7600_ __tmp8752)))
                   _$e7607_)
                  (_E7602_ _obj7600_ _slot7601_)))
            (_E7602_ _obj7600_ _slot7601_))))
    (define slot-ref__0
      (lambda (_obj7615_ _slot7616_)
        (let ((_E7618_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj7615_ _slot7616_ _E7618_))))
    (define slot-ref
      (lambda _g8754_
        (let ((_g8753_ (let () (declare (not safe)) (##length _g8754_))))
          (cond ((let () (declare (not safe)) (##fx= _g8753_ 2))
                 (apply (lambda (_obj7615_ _slot7616_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj7615_ _slot7616_)))
                        _g8754_))
                ((let () (declare (not safe)) (##fx= _g8753_ 3))
                 (apply (lambda (_obj7620_ _slot7621_ _E7622_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj7620_ _slot7621_ _E7622_)))
                        _g8754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g8754_))))))
    (define slot-set!__%
      (lambda (_obj7572_ _slot7573_ _val7574_ _E7575_)
        (if (let () (declare (not safe)) (object? _obj7572_))
            (let* ((_klass7577_
                    (let () (declare (not safe)) (object-type _obj7572_)))
                   (_$e7580_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass7577_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass7577_ _slot7573_))
                        '#f)))
              (if _$e7580_
                  ((lambda (_off7583_)
                     (let ((__tmp8755
                            (let ()
                              (declare (not safe))
                              (##fx+ _off7583_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj7572_ __tmp8755 _val7574_)))
                   _$e7580_)
                  (_E7575_ _obj7572_ _slot7573_)))
            (_E7575_ _obj7572_ _slot7573_))))
    (define slot-set!__0
      (lambda (_obj7588_ _slot7589_ _val7590_)
        (let ((_E7592_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj7588_ _slot7589_ _val7590_ _E7592_))))
    (define slot-set!
      (lambda _g8757_
        (let ((_g8756_ (let () (declare (not safe)) (##length _g8757_))))
          (cond ((let () (declare (not safe)) (##fx= _g8756_ 3))
                 (apply (lambda (_obj7588_ _slot7589_ _val7590_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj7588_ _slot7589_ _val7590_)))
                        _g8757_))
                ((let () (declare (not safe)) (##fx= _g8756_ 4))
                 (apply (lambda (_obj7594_ _slot7595_ _val7596_ _E7597_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj7594_
                             _slot7595_
                             _val7596_
                             _E7597_)))
                        _g8757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g8757_))))))
    (define __slot-error
      (lambda (_obj7568_ _slot7569_)
        (error '"Cannot find slot" _obj7568_ _slot7569_)))
    (define call-method
      (lambda (_obj7559_ _id7560_ . _args7561_)
        (let ((_$e7563_
               (let () (declare (not safe)) (method-ref _obj7559_ _id7560_))))
          (if _$e7563_
              ((lambda (_method7566_)
                 (apply _method7566_ _obj7559_ _args7561_))
               _$e7563_)
              (error '"Cannot find method" _obj7559_ _id7560_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj7556_ _id7557_)
        (if (let () (declare (not safe)) (object? _obj7556_))
            (let ((__tmp8758
                   (let () (declare (not safe)) (object-type _obj7556_))))
              (declare (not safe))
              (find-method __tmp8758 _id7557_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj7550_ _id7551_)
        (let ((_$e7553_
               (let () (declare (not safe)) (method-ref _obj7550_ _id7551_))))
          (if _$e7553_
              _$e7553_
              (error '"Missing method" _obj7550_ _id7551_)))))
    (define bound-method-ref
      (lambda (_obj7540_ _id7541_)
        (let ((_$e7543_
               (let () (declare (not safe)) (method-ref _obj7540_ _id7541_))))
          (if _$e7543_
              ((lambda (_method7546_)
                 (lambda _args7548_ (apply _method7546_ _obj7540_ _args7548_)))
               _$e7543_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj7533_ _id7534_)
        (let ((_method7536_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj7533_ _id7534_))))
          (lambda _args7538_ (apply _method7536_ _obj7533_ _args7538_)))))
    (define find-method
      (lambda (_klass7527_ _id7528_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7527_))
            (let () (declare (not safe)) (__find-method _klass7527_ _id7528_))
            (if (let () (declare (not safe)) (##type? _klass7527_))
                (let ((_$e7530_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass7527_ _id7528_))))
                  (if _$e7530_
                      _$e7530_
                      (let ((__tmp8759
                             (let ()
                               (declare (not safe))
                               (##type-super _klass7527_))))
                        (declare (not safe))
                        (builtin-find-method __tmp8759 _id7528_))))
                '#f))))
    (define __find-method
      (lambda (_klass7516_ _id7517_)
        (let ((_$e7519_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass7516_ _id7517_))))
          (if _$e7519_
              _$e7519_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass7516_))
                  '#f
                  (let ((_$e7522_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass7516_))))
                    (if _$e7522_
                        ((lambda (_mixin7525_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin7525_ _id7517_)))
                         _$e7522_)
                        (let ((__tmp8760
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7516_))))
                          (declare (not safe))
                          (struct-find-method __tmp8760 _id7517_)))))))))
    (define struct-find-method
      (lambda (_klass7507_ _id7508_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7507_))
            (let ((_$e7510_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass7507_ _id7508_))))
              (if _$e7510_
                  _$e7510_
                  (let ((__tmp8762
                         (let ()
                           (declare (not safe))
                           (##type-super _klass7507_))))
                    (declare (not safe))
                    (struct-find-method __tmp8762 _id7508_))))
            (if (let () (declare (not safe)) (##type? _klass7507_))
                (let ((_$e7513_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass7507_ _id7508_))))
                  (if _$e7513_
                      _$e7513_
                      (let ((__tmp8761
                             (let ()
                               (declare (not safe))
                               (##type-super _klass7507_))))
                        (declare (not safe))
                        (builtin-find-method __tmp8761 _id7508_))))
                '#f))))
    (define class-find-method
      (lambda (_klass7501_ _id7502_)
        (if (let () (declare (not safe)) (type-descriptor? _klass7501_))
            (let ((_$e7504_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass7501_ _id7502_))))
              (if _$e7504_
                  _$e7504_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass7501_ _id7502_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin7458_ _id7459_)
        (let _lp7461_ ((_rest7463_ _mixin7458_))
          (let* ((_rest74647472_ _rest7463_)
                 (_else74667480_ (lambda () '#f))
                 (_K74687489_
                  (lambda (_rest7483_ _klass7484_)
                    (let ((_$e7486_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass7484_ _id7459_))))
                      (if _$e7486_
                          _$e7486_
                          (let ()
                            (declare (not safe))
                            (_lp7461_ _rest7483_)))))))
            (if (let () (declare (not safe)) (##pair? _rest74647472_))
                (let ((_hd74697492_
                       (let () (declare (not safe)) (##car _rest74647472_)))
                      (_tl74707494_
                       (let () (declare (not safe)) (##cdr _rest74647472_))))
                  (let* ((_klass7497_ _hd74697492_) (_rest7499_ _tl74707494_))
                    (declare (not safe))
                    (_K74687489_ _rest7499_ _klass7497_)))
                (let () (declare (not safe)) (_else74667480_)))))))
    (define builtin-find-method
      (lambda (_klass7452_ _id7453_)
        (if (let () (declare (not safe)) (##type? _klass7452_))
            (let ((_$e7455_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass7452_ _id7453_))))
              (if _$e7455_
                  _$e7455_
                  (let ((__tmp8763
                         (let ()
                           (declare (not safe))
                           (##type-super _klass7452_))))
                    (declare (not safe))
                    (builtin-find-method __tmp8763 _id7453_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass7444_ _id7445_)
        (let ((_$e7447_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass7444_))))
          (if _$e7447_
              ((lambda (_ht7450_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht7450_ _id7445_ '#f)))
               _$e7447_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass7436_ _id7437_)
        (let ((_$e7439_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass7436_))))
          (if _$e7439_
              ((lambda (_mixin7442_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin7442_ _id7437_)))
               _$e7439_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass7428_ _id7429_)
        (let ((_$e7431_
               (let ((__tmp8764
                      (let () (declare (not safe)) (##type-id _klass7428_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp8764 '#f))))
          (if _$e7431_
              ((lambda (_mtab7434_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab7434_ _id7429_ '#f)))
               _$e7431_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass7394_ _id7395_ _proc7396_ _rebind?7397_)
        (letrec ((_bind!7399_
                  (lambda (_ht7412_)
                    (if (and (let () (declare (not safe)) (not _rebind?7397_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht7412_ _id7395_ '#f)))
                        (error '"Method already bound" _klass7394_ _id7395_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht7412_ _id7395_ _proc7396_))))))
          (if (let () (declare (not safe)) (procedure? _proc7396_))
              '#!void
              (error '"Bad method; expected procedure" _proc7396_))
          (if (let () (declare (not safe)) (type-descriptor? _klass7394_))
              (let ((_ht7401_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass7394_))))
                (if _ht7401_
                    (let () (declare (not safe)) (_bind!7399_ _ht7401_))
                    (let ((_ht7403_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass7394_ _ht7403_))
                      (let () (declare (not safe)) (_bind!7399_ _ht7403_)))))
              (if (let () (declare (not safe)) (##type? _klass7394_))
                  (let ((_ht7410_
                         (let ((_$e7405_
                                (let ((__tmp8765
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass7394_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp8765
                                   '#f))))
                           (if _$e7405_
                               _$e7405_
                               (let ((_ht7408_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp8766
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass7394_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp8766
                                    _ht7408_))
                                 _ht7408_)))))
                    (declare (not safe))
                    (_bind!7399_ _ht7410_))
                  (error '"Bad class; expected type-descriptor"
                         _klass7394_))))))
    (define bind-method!__0
      (lambda (_klass7417_ _id7418_ _proc7419_)
        (let ((_rebind?7421_ '#t))
          (declare (not safe))
          (bind-method!__% _klass7417_ _id7418_ _proc7419_ _rebind?7421_))))
    (define bind-method!
      (lambda _g8768_
        (let ((_g8767_ (let () (declare (not safe)) (##length _g8768_))))
          (cond ((let () (declare (not safe)) (##fx= _g8767_ 3))
                 (apply (lambda (_klass7417_ _id7418_ _proc7419_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass7417_ _id7418_ _proc7419_)))
                        _g8768_))
                ((let () (declare (not safe)) (##fx= _g8767_ 4))
                 (apply (lambda (_klass7423_ _id7424_ _proc7425_ _rebind?7426_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass7423_
                             _id7424_
                             _proc7425_
                             _rebind?7426_)))
                        _g8768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g8768_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc7390_ _specializer7391_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc7390_ _specializer7391_))))
    (define seal-class!
      (lambda (_klass7305_)
        (letrec ((_collect-methods!7307_
                  (lambda (_mtab7323_)
                    (letrec ((_merge!7325_
                              (lambda (_tab7385_)
                                (let ((__tmp8769
                                       (lambda (_id7387_ _proc7388_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab7323_
                                            _id7387_
                                            _proc7388_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp8769 _tab7385_))))
                             (_collect-direct-methods!7326_
                              (lambda (_klass7380_)
                                (let ((_$e7382_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass7380_))))
                                  (if _$e7382_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!7325_ _$e7382_))
                                      '#!void)))))
                      (let ((_$e7328_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass7305_))))
                        (if _$e7328_
                            ((lambda (_mixin7331_)
                               (let _recur7333_ ((_rest7335_ _mixin7331_))
                                 (let* ((_rest73367344_ _rest7335_)
                                        (_else73387352_ (lambda () '#!void))
                                        (_K73407361_
                                         (lambda (_rest7355_ _klass7356_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur7333_ _rest7355_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass7356_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!7326_
                                                  _klass7356_))
                                               (let ((_$e7358_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass7356_))
                                                          (let ((__tmp8773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass7356_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp8773 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e7358_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!7325_ _$e7358_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest73367344_))
                                       (let ((_hd73417364_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest73367344_)))
                                             (_tl73427366_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest73367344_))))
                                         (let* ((_klass7369_ _hd73417364_)
                                                (_rest7371_ _tl73427366_))
                                           (declare (not safe))
                                           (_K73407361_
                                            _rest7371_
                                            _klass7369_)))
                                       '#!void))))
                             _$e7328_)
                            (let _recur7373_ ((_klass7375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass7305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass7375_))
                                  (begin
                                    (let ((__tmp8772
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass7375_))))
                                      (declare (not safe))
                                      (_recur7373_ __tmp8772))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!7326_
                                       _klass7375_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass7375_))
                                      (begin
                                        (let ((__tmp8770
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass7375_))))
                                          (declare (not safe))
                                          (_recur7373_ __tmp8770))
                                        (let ((_$e7377_
                                               (let ((__tmp8771
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass7375_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp8771
                                                  '#f))))
                                          (if _$e7377_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!7325_ _$e7377_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!7326_ _klass7305_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass7305_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass7305_))
                  '#!void
                  (begin
                    (if (let ((__tmp8774
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass7305_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp8774))
                        '#!void
                        (error '"Cannot seal non-final class" _klass7305_))
                    (let ((_vtab7309_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab7310_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!7307_ _mtab7310_))
                      (let ((__tmp8775
                             (lambda (_id7312_ _proc7313_)
                               (let ((_$e7315_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc7313_
                                         '#f))))
                                 (if _$e7315_
                                     ((lambda (_specializer7318_)
                                        (let ((_proc7320_
                                               (_specializer7318_ _klass7305_))
                                              (_gid7321_
                                               (let ((__tmp8776
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass7305_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp8776
                                                  '"::["
                                                  _id7312_
                                                  '"]"))))
                                          (eval (let ((__tmp8777
                                                       (let ((__tmp8778
                                                              (let ((__tmp8779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp8780
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc7320_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp8780))))
                        (declare (not safe))
                        (cons __tmp8779 '()))))
                 (declare (not safe))
                 (cons _gid7321_ __tmp8778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp8777)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab7309_
                                             _id7312_
                                             _proc7320_))))
                                      _$e7315_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab7309_
                                        _id7312_
                                        _proc7313_)))))))
                        (declare (not safe))
                        (table-for-each __tmp8775 _mtab7310_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass7305_ _vtab7309_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass7305_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass7242_ _obj7243_ _id7244_)
        (let ((_klass7246_
               (let () (declare (not safe)) (object-type _obj7243_)))
              (_type-id7247_
               (let () (declare (not safe)) (##type-id _subklass7242_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass7246_))
              (let ((_$e7249_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass7246_))))
                (if _$e7249_
                    ((lambda (_mixin7252_)
                       (let _lp7254_ ((_rest7256_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass7246_ _mixin7252_))))
                         (let* ((_rest72577265_ _rest7256_)
                                (_else72597273_ (lambda () '#f))
                                (_K72617279_
                                 (lambda (_rest7276_ _klass7277_)
                                   (if (let ((__tmp8785
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass7277_))))
                                         (declare (not safe))
                                         (eq? _type-id7247_ __tmp8785))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest7276_
                                          _id7244_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp7254_ _rest7276_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest72577265_))
                               (let ((_hd72627282_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest72577265_)))
                                     (_tl72637284_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest72577265_))))
                                 (let* ((_klass7287_ _hd72627282_)
                                        (_rest7289_ _tl72637284_))
                                   (declare (not safe))
                                   (_K72617279_ _rest7289_ _klass7287_)))
                               (let ()
                                 (declare (not safe))
                                 (_else72597273_))))))
                     _$e7249_)
                    (let _lp7291_ ((_klass7293_ _klass7246_))
                      (if (let ((__tmp8784
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass7293_))))
                            (declare (not safe))
                            (eq? _type-id7247_ __tmp8784))
                          (let ((__tmp8783
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass7293_))))
                            (declare (not safe))
                            (struct-find-method __tmp8783 _id7244_))
                          (let ((_$e7295_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass7293_))))
                            (if _$e7295_
                                (let ()
                                  (declare (not safe))
                                  (_lp7291_ _$e7295_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass7246_))
                  (let _lp7298_ ((_klass7300_ _klass7246_))
                    (if (let ((__tmp8782
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass7300_))))
                          (declare (not safe))
                          (eq? _type-id7247_ __tmp8782))
                        (let ((__tmp8781
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7300_))))
                          (declare (not safe))
                          (builtin-find-method __tmp8781 _id7244_))
                        (let ((_$e7302_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass7300_))))
                          (if _$e7302_
                              (let () (declare (not safe)) (_lp7298_ _$e7302_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass7232_ _obj7233_ _id7234_ . _args7235_)
        (let ((_$e7237_
               (let ()
                 (declare (not safe))
                 (next-method _subklass7232_ _obj7233_ _id7234_))))
          (if _$e7237_
              ((lambda (_methodf7240_)
                 (apply _methodf7240_ _obj7233_ _args7235_))
               _$e7237_)
              (error '"Cannot find next method" _obj7233_ _id7234_)))))
    (define write-style (lambda (_we7230_) (macro-writeenv-style _we7230_)))
    (define write-object
      (lambda (_we7222_ _obj7223_)
        (let ((_$e7225_
               (let () (declare (not safe)) (method-ref _obj7223_ ':wr))))
          (if _$e7225_
              ((lambda (_method7228_) (_method7228_ _obj7223_ _we7222_))
               _$e7225_)
              (let ()
                (declare (not safe))
                (##default-wr _we7222_ _obj7223_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
