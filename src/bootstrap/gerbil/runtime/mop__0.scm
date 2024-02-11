(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707610212)
  (begin
    (define type-id
      (lambda (_klass84586_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84586_))
            (let () (declare (not safe)) (##type-id _klass84586_))
            (if (let () (declare (not safe)) (not _klass84586_))
                '#f
                (error '"not a type descriptor" _klass84586_)))))
    (define type=?
      (lambda (_x84583_ _y84584_)
        (let ((__tmp89080 (let () (declare (not safe)) (type-id _x84583_)))
              (__tmp89079 (let () (declare (not safe)) (type-id _y84584_))))
          (declare (not safe))
          (eq? __tmp89080 __tmp89079))))
    (define type-descriptor?
      (lambda (_klass84581_)
        (if (let () (declare (not safe)) (##type? _klass84581_))
            (let ((__tmp89081
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84581_))))
              (declare (not safe))
              (eq? __tmp89081 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84579_)
        (let ((__tmp89082
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84579_))))
          (declare (not safe))
          (assgetq 'struct: __tmp89082))))
    (define type-final?
      (lambda (_klass84577_)
        (let ((__tmp89083
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84577_))))
          (declare (not safe))
          (assgetq 'final: __tmp89083))))
    (define struct-type?
      (lambda (_klass84575_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84575_))
            (let () (declare (not safe)) (type-struct? _klass84575_))
            '#f)))
    (define class-type?
      (lambda (_klass84573_)
        (let () (declare (not safe)) (type-descriptor? _klass84573_))))
    (define properties-form
      (lambda (_properties84539_)
        (map (lambda (_e8454084542_)
               (let* ((_g8454484551_ _e8454084542_)
                      (_E8454684555_
                       (lambda () (error '"No clause matching" _g8454484551_)))
                      (_K8454784561_
                       (lambda (_val84558_ _key84559_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84559_ 'direct-supers:))
                             (let ((__tmp89084 (map type-id _val84558_)))
                               (declare (not safe))
                               (cons _key84559_ __tmp89084))
                             (let ()
                               (declare (not safe))
                               (cons _key84559_ _val84558_))))))
                 (if (let () (declare (not safe)) (##pair? _g8454484551_))
                     (let ((_hd8454884564_
                            (let ()
                              (declare (not safe))
                              (##car _g8454484551_)))
                           (_tl8454984566_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8454484551_))))
                       (let* ((_key84569_ _hd8454884564_)
                              (_val84571_ _tl8454984566_))
                         (declare (not safe))
                         (_K8454784561_ _val84571_ _key84569_)))
                     (let () (declare (not safe)) (_E8454684555_)))))
             _properties84539_)))
    (define make-type-descriptor
      (lambda (_type-id84452_
               _type-name84453_
               _type-super84454_
               _precedence-list84455_
               _all-slots84456_
               _properties84457_
               _constructor84458_
               _slot-table84459_
               _methods84460_)
        (letrec ((_make-props!84462_
                  (lambda (_key84508_)
                    (letrec* ((_ht84510_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84511_
                               (lambda (_ht84532_ _slots84533_)
                                 (for-each
                                  (lambda (_g8453484536_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84532_
                                       _g8453484536_
                                       '#t)))
                                  _slots84533_)))
                              (_put-alist!84512_
                               (lambda (_ht84521_ _key84522_ _alist84523_)
                                 (let ((_$e84525_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84522_ _alist84523_))))
                                   (if _$e84525_
                                       ((lambda (_g8452784529_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84511_
                                             _ht84521_
                                             _g8452784529_)))
                                        _$e84525_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84512_
                         _ht84510_
                         _key84508_
                         _properties84457_))
                      (for-each
                       (lambda (_mixin84514_)
                         (let ((_alist84516_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84514_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84516_))
                                   (let ((__tmp89086
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84508_
                                                     _alist84516_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89086)))
                               (let ((__tmp89085
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84514_))))
                                 (declare (not safe))
                                 (_put-slots!84511_ _ht84510_ __tmp89085))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84512_
                                  _ht84510_
                                  _key84508_
                                  _alist84516_)))))
                       _precedence-list84455_)
                      _ht84510_))))
          (let* ((_transparent?84464_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84457_)))
                 (_all-slots-printable?84469_
                  (let ((_$e84466_ _transparent?84464_))
                    (if _$e84466_
                        _$e84466_
                        (let ((__tmp89087
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84457_))))
                          (declare (not safe))
                          (eq? '#t __tmp89087)))))
                 (_printable84471_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84469_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84462_ 'print:))
                      '#f))
                 (_all-slots-equalable?84476_
                  (let ((_$e84473_ _transparent?84464_))
                    (if _$e84473_
                        _$e84473_
                        (let ((__tmp89088
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84457_))))
                          (declare (not safe))
                          (eq? '#t __tmp89088)))))
                 (_equalable84478_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84476_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84462_ 'equal:))
                      '#f))
                 (_first-new-field84480_
                  (if _type-super84454_
                      (let ((__tmp89089
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84454_))))
                        (declare (not safe))
                        (##vector-length __tmp89089))
                      '1))
                 (_field-info-length84482_
                  (let ((__tmp89090
                         (let ((__tmp89091
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84456_))))
                           (declare (not safe))
                           (##fx- __tmp89091 _first-new-field84480_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89090)))
                 (_field-info84484_ (make-vector _field-info-length84482_ '#f))
                 (_opaque?84489_
                  (let ((_$e84486_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84476_))))
                    (if _$e84486_
                        _$e84486_
                        (if _type-super84454_
                            (let ((__tmp89092
                                   (let ((__tmp89093
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84454_))))
                                     (declare (not safe))
                                     (##fxand __tmp89093 '1))))
                              (declare (not safe))
                              (##fx= __tmp89092 '1))
                            '#f)))))
            (let _loop84492_ ((_i84494_ _first-new-field84480_) (_j84495_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84495_ _field-info-length84482_))
                  (let* ((_slot84497_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84456_ _i84494_)))
                         (_flags84505_
                          (if _transparent?84464_
                              '0
                              (let ((__tmp89095
                                     (if (or _all-slots-printable?84469_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84471_
                                                _slot84497_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89094
                                     (if (or _all-slots-equalable?84476_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84478_
                                                _slot84497_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89095 __tmp89094)))))
                    (vector-set! _field-info84484_ _j84495_ _slot84497_)
                    (vector-set!
                     _field-info84484_
                     (let () (declare (not safe)) (##fx+ _j84495_ '1))
                     _flags84505_)
                    (let ((__tmp89097
                           (let () (declare (not safe)) (##fx+ _i84494_ '1)))
                          (__tmp89096
                           (let () (declare (not safe)) (##fx+ _j84495_ '3))))
                      (declare (not safe))
                      (_loop84492_ __tmp89097 __tmp89096)))
                  '#!void))
            (let ((__tmp89098 (if _opaque?84489_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84452_
               _type-name84453_
               __tmp89098
               _type-super84454_
               _field-info84484_
               _precedence-list84455_
               _all-slots84456_
               _slot-table84459_
               _properties84457_
               _constructor84458_
               _methods84460_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84450_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84450_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84448_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84448_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84446_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84446_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84444_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84444_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84442_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84442_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84440_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84440_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84437_ _ht84438_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84437_
           _ht84438_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84435_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84435_))))))
    (define type-descriptor-fields
      (lambda (_klass84433_)
        (let ((__tmp89099
               (let ((__tmp89100
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84433_))))
                 (declare (not safe))
                 (##vector-length __tmp89100))))
          (declare (not safe))
          (##fx- __tmp89099 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84431_)
        (let ((__tmp89101
               (let () (declare (not safe)) (##type-flags _klass84431_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89101))))
    (define type-descriptor-seal!
      (lambda (_klass84429_)
        (let ((__tmp89102
               (let ((__tmp89104
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89103
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84429_))))
                 (declare (not safe))
                 (##fxior __tmp89104 __tmp89103))))
          (declare (not safe))
          (##structure-set!
           _klass84429_
           __tmp89102
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84422_
               _name84423_
               _super84424_
               _direct-slots84425_
               _properties84426_
               _constructor84427_)
        (let ((__tmp89107
               (if _super84424_
                   (let () (declare (not safe)) (cons _super84424_ '()))
                   '()))
              (__tmp89105
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84426_))
                   _properties84426_
                   (let ((__tmp89106
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp89106 _properties84426_)))))
          (declare (not safe))
          (make-class-type
           _id84422_
           _name84423_
           __tmp89107
           _direct-slots84425_
           __tmp89105
           _constructor84427_))))
    (define make-struct-predicate
      (lambda (_klass84410_)
        (let ((_tid84412_
               (let () (declare (not safe)) (##type-id _klass84410_))))
          (if (let () (declare (not safe)) (type-final? _klass84410_))
              (lambda (_g8441384415_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8441384415_ _tid84412_)))
              (lambda (_g8441784419_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8441784419_ _tid84412_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84394_ _slot84395_)
        (let ((_$e84397_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84394_ _slot84395_))))
          (if _$e84397_
              ((lambda (_off84400_)
                 (if (let () (declare (not safe)) (type-final? _klass84394_))
                     (lambda (_g8440184403_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _g8440184403_
                          _off84400_
                          _klass84394_
                          '#f)))
                     (lambda (_g8440584407_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _g8440584407_
                          _off84400_
                          _klass84394_
                          '#f)))))
               _$e84397_)
              (error '"unknown slot"
                     'class:
                     _klass84394_
                     'slot:
                     _slot84395_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84372_ _slot84373_)
        (let ((_$e84375_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84372_ _slot84373_))))
          (if _$e84375_
              ((lambda (_off84378_)
                 (if (let () (declare (not safe)) (type-final? _klass84372_))
                     (lambda (_g8437984382_ _g8438084384_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _g8437984382_
                          _g8438084384_
                          _off84378_
                          _klass84372_
                          '#f)))
                     (lambda (_g8438684389_ _g8438784391_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _g8438684389_
                          _g8438784391_
                          _off84378_
                          _klass84372_
                          '#f)))))
               _$e84375_)
              (error '"unknown slot"
                     'class:
                     _klass84372_
                     'slot:
                     _slot84373_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84360_ _slot84361_)
        (let ((_$e84363_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84360_ _slot84361_))))
          (if _$e84363_
              ((lambda (_off84366_)
                 (lambda (_g8436784369_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _g8436784369_
                      _off84366_
                      _klass84360_
                      '#f))))
               _$e84363_)
              (error '"unknown slot"
                     'class:
                     _klass84360_
                     'slot:
                     _slot84361_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84349_ _slot84350_)
        (let ((_$e84352_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84349_ _slot84350_))))
          (if _$e84352_
              ((lambda (_off84355_)
                 (lambda (_obj84357_ _val84358_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84357_
                      _val84358_
                      _off84355_
                      _klass84349_
                      '#f))))
               _$e84352_)
              (error '"unknown slot"
                     'class:
                     _klass84349_
                     'slot:
                     _slot84350_)))))
    (define make-final-field-accessor
      (lambda (_klass84343_ _slot84344_ _field84345_)
        (lambda (_obj84347_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84347_
             _field84345_
             _klass84343_
             _slot84344_)))))
    (define make-struct-field-accessor
      (lambda (_klass84337_ _slot84338_ _field84339_)
        (lambda (_obj84341_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84341_
             _field84339_
             _klass84337_
             _slot84338_)))))
    (define make-final-field-mutator
      (lambda (_klass84330_ _slot84331_ _field84332_)
        (lambda (_obj84334_ _val84335_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84334_
             _val84335_
             _field84332_
             _klass84330_
             _slot84331_)))))
    (define make-struct-field-mutator
      (lambda (_klass84323_ _slot84324_ _field84325_)
        (lambda (_obj84327_ _val84328_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84327_
             _val84328_
             _field84325_
             _klass84323_
             _slot84324_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84317_ _slot84318_ _field84319_)
        (lambda (_obj84321_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84321_
             _field84319_
             _klass84317_
             _slot84318_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84310_ _slot84311_ _field84312_)
        (lambda (_obj84314_ _val84315_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84314_
             _val84315_
             _field84312_
             _klass84310_
             _slot84311_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84301_ _maybe-super-struct84302_)
        (let ((_maybe-super-struct-id84304_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84302_))))
          (let _lp84306_ ((_super-struct84308_ _maybe-sub-struct84301_))
            (if (let () (declare (not safe)) (not _super-struct84308_))
                '#f
                (if (let ((__tmp89109
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84308_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84304_ __tmp89109))
                    '#t
                    (let ((__tmp89108
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84308_))))
                      (declare (not safe))
                      (_lp84306_ __tmp89108))))))))
    (define base-struct/1
      (lambda (_klass84299_)
        (if (let () (declare (not safe)) (struct-type? _klass84299_))
            _klass84299_
            (if (let () (declare (not safe)) (class-type? _klass84299_))
                (let () (declare (not safe)) (##type-super _klass84299_))
                (if (let () (declare (not safe)) (not _klass84299_))
                    '#f
                    (error '"not a class or false" _klass84299_))))))
    (define base-struct/2
      (lambda (_klass184287_ _klass284288_)
        (let ((_s184290_
               (let () (declare (not safe)) (base-struct/1 _klass184287_)))
              (_s284291_
               (let () (declare (not safe)) (base-struct/1 _klass284288_))))
          (if (or (let () (declare (not safe)) (not _s184290_))
                  (and _s284291_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184290_ _s284291_))))
              _s284291_
              (if (or (let () (declare (not safe)) (not _s284291_))
                      (and _s184290_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284291_ _s184290_))))
                  _s184290_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184287_
                         _klass284288_
                         _s184290_
                         _s284291_))))))
    (define base-struct/list
      (lambda (_all-supers84171_)
        (let* ((_all-supers8417284197_ _all-supers84171_)
               (_E8417784201_
                (lambda ()
                  (error '"No clause matching" _all-supers8417284197_))))
          (let ((_K8419584284_ (lambda () '#f))
                (_K8419284270_
                 (lambda (_x84268_)
                   (let () (declare (not safe)) (base-struct/1 _x84268_))))
                (_K8418784247_
                 (lambda (_y84244_ _x84245_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84245_ _y84244_))))
                (_K8417884208_
                 (lambda (_y84205_ _x84206_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84206_ _y84205_)))))
            (let* ((___match8907689077_
                    (lambda (_hd8417984211_ _tl8418084213_)
                      (let ((_x84216_ _hd8417984211_))
                        (letrec ((_splice-rest8418284218_
                                  (lambda (_rest8418684225_ _y84227_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8418684225_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8417884208_ _y84227_ _x84216_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8417784201_)))))
                                 (_splice-try8418484220_
                                  (lambda (_hd8418584229_
                                           _rest8418684231_
                                           _y8418184232_)
                                    (let ((_y84235_ _hd8418584229_))
                                      (let ((__tmp89111
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8418684231_)))
                                            (__tmp89110
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84235_ _y8418184232_))))
                                        (declare (not safe))
                                        (_splice-loop8418384222_
                                         __tmp89111
                                         __tmp89110)))))
                                 (_splice-loop8418384222_
                                  (lambda (_rest8418684237_ _y8418184238_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8418684237_))
                                        (let ((__tmp89113
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8418684237_))))
                                          (declare (not safe))
                                          (_splice-try8418484220_
                                           __tmp89113
                                           _rest8418684237_
                                           _y8418184238_))
                                        (let ((__tmp89112
                                               (reverse _y8418184238_)))
                                          (declare (not safe))
                                          (_splice-rest8418284218_
                                           _rest8418684237_
                                           __tmp89112))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8418384222_ _tl8418084213_ '()))))))
                   (_try-match8417484280_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8417284197_))
                          (let ((_tl8419484275_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8417284197_)))
                                (_hd8419384273_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8417284197_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8419484275_))
                                (let ((_x84278_ _hd8419384273_))
                                  (declare (not safe))
                                  (base-struct/1 _x84278_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8419484275_))
                                    (let ((_tl8419184259_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8419484275_)))
                                          (_hd8419084257_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8419484275_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8419184259_))
                                          (let ((_x84255_ _hd8419384273_)
                                                (_y84262_ _hd8419084257_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8418784247_
                                               _y84262_
                                               _x84255_)))
                                          (___match8907689077_
                                           _hd8419384273_
                                           _tl8419484275_)))
                                    (___match8907689077_
                                     _hd8419384273_
                                     _tl8419484275_))))
                          (let () (declare (not safe)) (_E8417784201_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8417284197_))
                  (let () (declare (not safe)) (_K8419584284_))
                  (let () (declare (not safe)) (_try-match8417484280_))))))))
    (define base-struct
      (lambda _all-supers84169_
        (let () (declare (not safe)) (base-struct/list _all-supers84169_))))
    (define find-super-ctor
      (lambda (_super84167_)
        (let () (declare (not safe)) (find-super-constructor _super84167_))))
    (define find-super-constructor
      (lambda (_super84119_)
        (let _lp84121_ ((_rest84123_ _super84119_) (_constructor84124_ '#f))
          (let* ((_rest8412584133_ _rest84123_)
                 (_else8412784141_ (lambda () _constructor84124_))
                 (_K8412984155_
                  (lambda (_rest84144_ _hd84145_)
                    (let ((_$e84147_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84145_))))
                      (if _$e84147_
                          ((lambda (_xconstructor84150_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84124_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84124_
                                            _xconstructor84150_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84121_ _rest84144_ _xconstructor84150_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84124_
                                        _xconstructor84150_)))
                           _$e84147_)
                          (let ()
                            (declare (not safe))
                            (_lp84121_ _rest84144_ _constructor84124_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8412584133_))
                (let ((_hd8413084158_
                       (let () (declare (not safe)) (##car _rest8412584133_)))
                      (_tl8413184160_
                       (let () (declare (not safe)) (##cdr _rest8412584133_))))
                  (let* ((_hd84163_ _hd8413084158_)
                         (_rest84165_ _tl8413184160_))
                    (declare (not safe))
                    (_K8412984155_ _rest84165_ _hd84163_)))
                (let () (declare (not safe)) (_else8412784141_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84095_ _direct-slots84096_)
        (let* ((_next-slot84098_ '1)
               (_slot-table84100_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84102_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84106_
                (lambda (_slot84104_)
                  (if (let () (declare (not safe)) (symbol? _slot84104_))
                      '#!void
                      (error '"invalid slot name" _slot84104_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84100_ _slot84104_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84100_
                           _slot84104_
                           _next-slot84098_))
                        (let ((__tmp89114 (symbol->keyword _slot84104_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84100_
                           __tmp89114
                           _next-slot84098_))
                        (set! _r-slots84102_
                              (let ()
                                (declare (not safe))
                                (cons _slot84104_ _r-slots84102_)))
                        (set! _next-slot84098_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84098_ '1)))))))
               (_process-slots84112_
                (lambda (_g8410784109_)
                  (for-each _process-slot84106_ _g8410784109_))))
          (for-each
           (lambda (_mixin84115_)
             (let ((__tmp89115
                    (let ((__tmp89116
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84115_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89116 '()))))
               (declare (not safe))
               (_process-slots84112_ __tmp89115)))
           (reverse _class-precedence-list84095_))
          (let ()
            (declare (not safe))
            (_process-slots84112_ _direct-slots84096_))
          (let ((_all-slots84117_ (list->vector (reverse _r-slots84102_))))
            (values _all-slots84117_ _slot-table84100_)))))
    (define make-class-type
      (lambda (_id84058_
               _name84059_
               _direct-supers84060_
               _direct-slots84061_
               _properties84062_
               _constructor84063_)
        (let ((_$e84067_
               (let ((__tmp89117
                      (lambda (_klass84065_)
                        (let ((__tmp89118
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84065_))))
                          (declare (not safe))
                          (not __tmp89118)))))
                 (declare (not safe))
                 (find __tmp89117 _direct-supers84060_))))
          (if _$e84067_
              ((lambda (_g8406984071_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8406984071_))
               _$e84067_)
              (let ((_$e84074_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84060_))))
                (if _$e84074_
                    ((lambda (_g8407684078_)
                       (error '"Cannot extend final class" _g8407684078_))
                     _$e84074_)
                    '#!void))))
        (let ((_g89119_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84060_))))
          (begin
            (let ((_g89120_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89119_) (##vector-length _g89119_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89120_ 2)))
                  (error "Context expects 2 values" _g89120_)))
            (let ((_precedence-list84081_
                   (let () (declare (not safe)) (##vector-ref _g89119_ 0)))
                  (_struct-super84082_
                   (let () (declare (not safe)) (##vector-ref _g89119_ 1))))
              (let ((_g89121_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84081_
                        _direct-slots84061_))))
                (begin
                  (let ((_g89122_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89121_)
                               (##vector-length _g89121_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89122_ 2)))
                        (error "Context expects 2 values" _g89122_)))
                  (let ((_all-slots84084_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89121_ 0)))
                        (_slot-table84085_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89121_ 1))))
                    (let* ((_properties84087_
                            (let ((__tmp89125
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84061_)))
                                  (__tmp89123
                                   (let ((__tmp89124
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84060_))))
                                     (declare (not safe))
                                     (cons __tmp89124 _properties84062_))))
                              (declare (not safe))
                              (cons __tmp89125 __tmp89123)))
                           (_constructor*84092_
                            (let ((_$e84089_ _constructor84063_))
                              (if _$e84089_
                                  _$e84089_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84060_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84058_
                         _name84059_
                         _struct-super84082_
                         _precedence-list84081_
                         _all-slots84084_
                         _properties84087_
                         _constructor*84092_
                         _slot-table84085_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84056_)
        (let ((__tmp89126
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84056_))))
          (declare (not safe))
          (cons _klass84056_ __tmp89126))))
    (define compute-precedence-list
      (lambda (_direct-supers84054_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84054_))))
    (define make-class-predicate
      (lambda (_klass84044_)
        (if (let () (declare (not safe)) (type-final? _klass84044_))
            (lambda (_g8404584047_)
              (let ((__tmp89127
                     (let () (declare (not safe)) (##type-id _klass84044_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8404584047_ __tmp89127)))
            (lambda (_g8404984051_)
              (let ()
                (declare (not safe))
                (class-instance? _klass84044_ _g8404984051_))))))
    (define if-class-slot-field
      (lambda (_klass84033_
               _slot84034_
               _if-final84035_
               _if-struct84036_
               _if-struct-field84037_
               _if-class-slot84038_)
        (let ((_field84040_
               (let ((__tmp89128
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84033_))))
                 (declare (not safe))
                 (table-ref __tmp89128 _slot84034_ '#f))))
          (if (let () (declare (not safe)) (not _field84040_))
              (error '"unknown slot" 'class: _klass84033_ 'slot: _slot84034_)
              (if (let () (declare (not safe)) (type-final? _klass84033_))
                  (_if-final84035_ _klass84033_ _slot84034_ _field84040_)
                  (if (let () (declare (not safe)) (type-struct? _klass84033_))
                      (_if-struct84036_ _klass84033_ _slot84034_ _field84040_)
                      (if (let ((_strukt84042_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84033_))))
                            (and _strukt84042_
                                 (let ((__tmp89129
                                        (let ((__tmp89130
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84042_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89130))))
                                   (declare (not safe))
                                   (##fx< _field84040_ __tmp89129))))
                          (_if-struct-field84037_
                           _klass84033_
                           _slot84034_
                           _field84040_)
                          (_if-class-slot84038_
                           _klass84033_
                           _slot84034_
                           _field84040_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84030_ _slot84031_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84030_
           _slot84031_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object84014_ _class84015_ _slot84016_)
        (apply error
               '"not an instance"
               'object:
               _object84014_
               'class:
               _class84015_
               (if _slot84016_
                   (let ((__tmp89131
                          (let ()
                            (declare (not safe))
                            (cons _slot84016_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89131))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84021_ _class84022_)
        (let ((_slot84024_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84021_ _class84022_ _slot84024_))))
    (define not-an-instance
      (lambda _g89133_
        (let ((_g89132_ (let () (declare (not safe)) (##length _g89133_))))
          (cond ((let () (declare (not safe)) (##fx= _g89132_ 2))
                 (apply (lambda (_object84021_ _class84022_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84021_ _class84022_)))
                        _g89133_))
                ((let () (declare (not safe)) (##fx= _g89132_ 3))
                 (apply (lambda (_object84026_ _class84027_ _slot84028_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84026_
                             _class84027_
                             _slot84028_)))
                        _g89133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89133_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass84007_ _slot84008_ _field84009_)
        (lambda (_obj84011_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84007_ _obj84011_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84011_ _field84009_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84011_ _klass84007_ _slot84008_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84001_ _slot84002_ _field84003_)
        (lambda (_obj84005_)
          (if (let ((__tmp89134
                     (let () (declare (not safe)) (##type-id _klass84001_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84005_ __tmp89134))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84005_ _field84003_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84001_ _obj84005_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84005_ _slot84002_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84005_
                     _klass84001_
                     _slot84002_)))))))
    (define make-class-slot-mutator
      (lambda (_klass83998_ _slot83999_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83998_
           _slot83999_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass83991_ _slot83992_ _field83993_)
        (lambda (_obj83995_ _val83996_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83991_ _obj83995_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83995_ _field83993_ _val83996_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83995_ _klass83991_ _slot83992_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83984_ _slot83985_ _field83986_)
        (lambda (_obj83988_ _val83989_)
          (if (let ((__tmp89135
                     (let () (declare (not safe)) (##type-id _klass83984_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83988_ __tmp89135))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83988_ _field83986_ _val83989_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83984_ _obj83988_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83988_ _slot83985_ _val83989_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83988_
                     _klass83984_
                     _slot83985_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83981_ _slot83982_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83981_
           _slot83982_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83975_ _slot83976_ _field83977_)
        (lambda (_obj83979_)
          (if (let ((__tmp89136
                     (let () (declare (not safe)) (##type-id _klass83975_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83979_ __tmp89136))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83979_ _field83977_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83979_ _slot83976_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83972_ _slot83973_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83972_
           _slot83973_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83965_ _slot83966_ _field83967_)
        (lambda (_obj83969_ _val83970_)
          (if (let ((__tmp89137
                     (let () (declare (not safe)) (##type-id _klass83965_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83969_ __tmp89137))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83969_ _field83967_ _val83970_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83969_ _slot83966_ _val83970_))))))
    (define class-slot-offset
      (lambda (_klass83962_ _slot83963_)
        (let ((__tmp89138
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83962_))))
          (declare (not safe))
          (table-ref __tmp89138 _slot83963_ '#f))))
    (define class-slot-ref
      (lambda (_klass83956_ _obj83957_ _slot83958_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83956_ _obj83957_))
            (let ((_off83960_
                   (let ((__tmp89139
                          (let ()
                            (declare (not safe))
                            (object-type _obj83957_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89139 _slot83958_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83957_
               _off83960_
               _klass83956_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83957_ _klass83956_)))))
    (define class-slot-set!
      (lambda (_klass83949_ _obj83950_ _slot83951_ _val83952_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83949_ _obj83950_))
            (let ((_off83954_
                   (let ((__tmp89140
                          (let ()
                            (declare (not safe))
                            (object-type _obj83950_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89140 _slot83951_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83950_
               _val83952_
               _off83954_
               _klass83949_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83950_ _klass83949_)))))
    (define unchecked-field-ref
      (lambda (_obj83946_ _off83947_)
        (let ((__tmp89141
               (let () (declare (not safe)) (##structure-type _obj83946_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83946_ _off83947_ __tmp89141 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83942_ _off83943_ _val83944_)
        (let ((__tmp89142
               (let () (declare (not safe)) (##structure-type _obj83942_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83942_
           _val83944_
           _off83943_
           __tmp89142
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83939_ _slot83940_)
        (let ((__tmp89143
               (let ((__tmp89144
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83939_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89144 _slot83940_))))
          (declare (not safe))
          (unchecked-field-ref _obj83939_ __tmp89143))))
    (define unchecked-slot-set!
      (lambda (_obj83935_ _slot83936_ _val83937_)
        (let ((__tmp89145
               (let ((__tmp89146
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83935_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89146 _slot83936_))))
          (declare (not safe))
          (unchecked-field-set! _obj83935_ __tmp89145 _val83937_))))
    (define slot-ref__%
      (lambda (_obj83911_ _slot83912_ _E83913_)
        (if (let () (declare (not safe)) (object? _obj83911_))
            (let* ((_klass83915_
                    (let () (declare (not safe)) (object-type _obj83911_)))
                   (_$e83918_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83915_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83915_ _slot83912_))
                        '#f)))
              (if _$e83918_
                  ((lambda (_off83921_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83911_ _off83921_)))
                   _$e83918_)
                  (_E83913_ _obj83911_ _slot83912_)))
            (_E83913_ _obj83911_ _slot83912_))))
    (define slot-ref__0
      (lambda (_obj83926_ _slot83927_)
        (let ((_E83929_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83926_ _slot83927_ _E83929_))))
    (define slot-ref
      (lambda _g89148_
        (let ((_g89147_ (let () (declare (not safe)) (##length _g89148_))))
          (cond ((let () (declare (not safe)) (##fx= _g89147_ 2))
                 (apply (lambda (_obj83926_ _slot83927_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83926_ _slot83927_)))
                        _g89148_))
                ((let () (declare (not safe)) (##fx= _g89147_ 3))
                 (apply (lambda (_obj83931_ _slot83932_ _E83933_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83931_ _slot83932_ _E83933_)))
                        _g89148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89148_))))))
    (define slot-set!__%
      (lambda (_obj83883_ _slot83884_ _val83885_ _E83886_)
        (if (let () (declare (not safe)) (object? _obj83883_))
            (let* ((_klass83888_
                    (let () (declare (not safe)) (object-type _obj83883_)))
                   (_$e83891_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83888_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83888_ _slot83884_))
                        '#f)))
              (if _$e83891_
                  ((lambda (_off83894_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83883_
                        _off83894_
                        _val83885_)))
                   _$e83891_)
                  (_E83886_ _obj83883_ _slot83884_)))
            (_E83886_ _obj83883_ _slot83884_))))
    (define slot-set!__0
      (lambda (_obj83899_ _slot83900_ _val83901_)
        (let ((_E83903_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83899_ _slot83900_ _val83901_ _E83903_))))
    (define slot-set!
      (lambda _g89150_
        (let ((_g89149_ (let () (declare (not safe)) (##length _g89150_))))
          (cond ((let () (declare (not safe)) (##fx= _g89149_ 3))
                 (apply (lambda (_obj83899_ _slot83900_ _val83901_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83899_ _slot83900_ _val83901_)))
                        _g89150_))
                ((let () (declare (not safe)) (##fx= _g89149_ 4))
                 (apply (lambda (_obj83905_ _slot83906_ _val83907_ _E83908_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83905_
                             _slot83906_
                             _val83907_
                             _E83908_)))
                        _g89150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89150_))))))
    (define __slot-error
      (lambda (_obj83879_ _slot83880_)
        (error '"Cannot find slot" 'object: _obj83879_ 'slot: _slot83880_)))
    (define subclass?
      (lambda (_maybe-sub-class83869_ _maybe-super-class83870_)
        (let* ((_maybe-super-class-id83872_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83870_)))
               (_$e83874_
                (let ((__tmp89151
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83869_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83872_ __tmp89151))))
          (if _$e83874_
              _$e83874_
              (let ((__tmp89153
                     (lambda (_super-class83877_)
                       (let ((__tmp89154
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83877_))))
                         (declare (not safe))
                         (eq? __tmp89154 _maybe-super-class-id83872_))))
                    (__tmp89152
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83869_))))
                (declare (not safe))
                (ormap1 __tmp89153 __tmp89152))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83866_ _obj83867_)
        (let ((__tmp89155
               (let () (declare (not safe)) (##type-id _klass83866_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83867_ __tmp89155))))
    (define struct-instance?
      (lambda (_klass83863_ _obj83864_)
        (let ((__tmp89156
               (let () (declare (not safe)) (##type-id _klass83863_))))
          (declare (not safe))
          (##structure-instance-of? _obj83864_ __tmp89156))))
    (define class-instance?
      (lambda (_klass83858_ _obj83859_)
        (if (let () (declare (not safe)) (object? _obj83859_))
            (let ((_type83861_
                   (let () (declare (not safe)) (object-type _obj83859_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83861_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83861_ _klass83858_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83853_ _k83854_)
        (let ((_obj83856_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83853_ _k83854_))))
          (let () (declare (not safe)) (object-fill! _obj83856_ '#f))
          _obj83856_)))
    (define object-fill!
      (lambda (_obj83846_ _fill83847_)
        (let _loop83849_ ((_i83851_
                           (let ((__tmp89158
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83846_))))
                             (declare (not safe))
                             (##fx- __tmp89158 '1))))
          (if (let () (declare (not safe)) (##fx> _i83851_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83846_
                   _fill83847_
                   _i83851_
                   '#f
                   '#f))
                (let ((__tmp89157
                       (let () (declare (not safe)) (##fx- _i83851_ '1))))
                  (declare (not safe))
                  (_loop83849_ __tmp89157)))
              _obj83846_))))
    (define make-instance
      (lambda (_klass83844_)
        (let ((__obj89078
               (let ((__tmp89159
                      (let ((__tmp89160
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83844_))))
                        (declare (not safe))
                        (##vector-length __tmp89160))))
                 (declare (not safe))
                 (##make-structure _klass83844_ __tmp89159))))
          (let () (declare (not safe)) (object-fill! __obj89078 '#f))
          __obj89078)))
    (define make-struct-instance
      (lambda (_klass83834_ . _args83835_)
        (let* ((_obj83837_
                (let () (declare (not safe)) (make-instance _klass83834_)))
               (_$e83839_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83834_))))
          (if _$e83839_
              ((lambda (_kons-id83842_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83834_
                    _kons-id83842_
                    _obj83837_
                    _args83835_)))
               _$e83839_)
              (if (let ((__tmp89162
                         (let ((__tmp89163
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83837_))))
                           (declare (not safe))
                           (##fx- __tmp89163 '1)))
                        (__tmp89161 (length _args83835_)))
                    (declare (not safe))
                    (##fx= __tmp89162 __tmp89161))
                  (apply ##structure _klass83834_ _args83835_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83834_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83834_))
                         'args:
                         _args83835_))))))
    (define make-class-instance
      (lambda (_klass83824_ . _args83825_)
        (let* ((_obj83827_
                (let () (declare (not safe)) (make-instance _klass83824_)))
               (_$e83829_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83824_))))
          (if _$e83829_
              ((lambda (_kons-id83832_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83824_
                    _kons-id83832_
                    _obj83827_
                    _args83825_)))
               _$e83829_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83824_
                 _obj83827_
                 _args83825_))))))
    (define struct-instance-init!
      (lambda (_obj83821_ . _args83822_)
        (if (let ((__tmp89165 (length _args83822_))
                  (__tmp89164
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83821_))))
              (declare (not safe))
              (##fx< __tmp89165 __tmp89164))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83821_ _args83822_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83821_
                   'args:
                   _args83822_))))
    (define __struct-instance-init!
      (lambda (_obj83780_ _args83781_)
        (let _lp83783_ ((_k83785_ '1) (_rest83786_ _args83781_))
          (let* ((_rest8378783795_ _rest83786_)
                 (_else8378983803_ (lambda () _obj83780_))
                 (_K8379183809_
                  (lambda (_rest83806_ _hd83807_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83780_ _k83785_ _hd83807_))
                    (let ((__tmp89166
                           (let () (declare (not safe)) (##fx+ _k83785_ '1))))
                      (declare (not safe))
                      (_lp83783_ __tmp89166 _rest83806_)))))
            (if (let () (declare (not safe)) (##pair? _rest8378783795_))
                (let ((_hd8379283812_
                       (let () (declare (not safe)) (##car _rest8378783795_)))
                      (_tl8379383814_
                       (let () (declare (not safe)) (##cdr _rest8378783795_))))
                  (let* ((_hd83817_ _hd8379283812_)
                         (_rest83819_ _tl8379383814_))
                    (declare (not safe))
                    (_K8379183809_ _rest83819_ _hd83817_)))
                (let () (declare (not safe)) (_else8378983803_)))))))
    (define class-instance-init!
      (lambda (_obj83777_ . _args83778_)
        (let ((__tmp89167
               (let () (declare (not safe)) (object-type _obj83777_))))
          (declare (not safe))
          (__class-instance-init! __tmp89167 _obj83777_ _args83778_))))
    (define __class-instance-init!
      (lambda (_klass83721_ _obj83722_ _args83723_)
        (let _lp83725_ ((_rest83727_ _args83723_))
          (let* ((_rest8372883738_ _rest83727_)
                 (_else8373083746_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83727_))
                        _obj83722_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83721_
                               'rest:
                               _rest83727_))))
                 (_K8373283758_
                  (lambda (_rest83749_ _val83750_ _key83751_)
                    (let ((_$e83753_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83721_ _key83751_))))
                      (if _$e83753_
                          ((lambda (_off83756_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83722_
                                _off83756_
                                _val83750_))
                             (let ()
                               (declare (not safe))
                               (_lp83725_ _rest83749_)))
                           _$e83753_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83721_
                                 'slot:
                                 _key83751_))))))
            (if (let () (declare (not safe)) (##pair? _rest8372883738_))
                (let ((_hd8373383761_
                       (let () (declare (not safe)) (##car _rest8372883738_)))
                      (_tl8373483763_
                       (let () (declare (not safe)) (##cdr _rest8372883738_))))
                  (let ((_key83766_ _hd8373383761_))
                    (if (let () (declare (not safe)) (##pair? _tl8373483763_))
                        (let ((_hd8373583768_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8373483763_)))
                              (_tl8373683770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8373483763_))))
                          (let* ((_val83773_ _hd8373583768_)
                                 (_rest83775_ _tl8373683770_))
                            (declare (not safe))
                            (_K8373283758_ _rest83775_ _val83773_ _key83766_)))
                        (let () (declare (not safe)) (_else8373083746_)))))
                (let () (declare (not safe)) (_else8373083746_)))))))
    (define constructor-init!
      (lambda (_klass83716_ _kons-id83717_ _obj83718_ . _args83719_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83716_
           _kons-id83717_
           _obj83718_
           _args83719_))))
    (define __constructor-init!
      (lambda (_klass83706_ _kons-id83707_ _obj83708_ _args83709_)
        (let ((_$e83711_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83706_ _kons-id83707_))))
          (if _$e83711_
              ((lambda (_kons83714_)
                 (apply _kons83714_ _obj83708_ _args83709_)
                 _obj83708_)
               _$e83711_)
              (error '"missing constructor"
                     'class:
                     _klass83706_
                     'method:
                     _kons-id83707_)))))
    (define struct-copy
      (lambda (_struct83704_)
        (if (let () (declare (not safe)) (##structure? _struct83704_))
            '#!void
            (error '"not a structure" _struct83704_))
        (let () (declare (not safe)) (##structure-copy _struct83704_))))
    (define struct->list
      (lambda (_obj83702_)
        (if (let () (declare (not safe)) (object? _obj83702_))
            (let () (declare (not safe)) (##vector->list _obj83702_))
            (error '"not an object" _obj83702_))))
    (define class->list
      (lambda (_obj83689_)
        (if (let () (declare (not safe)) (object? _obj83689_))
            (let ((_klass83691_
                   (let () (declare (not safe)) (object-type _obj83689_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83691_))
                  (let ((_all-slots83693_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83691_))))
                    (let _loop83695_ ((_index83697_
                                       (let ((__tmp89173
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83693_))))
                                         (declare (not safe))
                                         (##fx- __tmp89173 '1)))
                                      (_plist83698_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83697_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83691_ _plist83698_))
                          (let ((_slot83700_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83693_
                                    _index83697_))))
                            (let ((__tmp89172
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83697_ '1)))
                                  (__tmp89168
                                   (let ((__tmp89171
                                          (symbol->keyword _slot83700_))
                                         (__tmp89169
                                          (let ((__tmp89170
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83689_
                                                    _index83697_))))
                                            (declare (not safe))
                                            (cons __tmp89170 _plist83698_))))
                                     (declare (not safe))
                                     (cons __tmp89171 __tmp89169))))
                              (declare (not safe))
                              (_loop83695_ __tmp89172 __tmp89168))))))
                  (error '"not a class type"
                         'object:
                         _obj83689_
                         'class:
                         _klass83691_)))
            (error '"not an object" _obj83689_))))
    (define call-method
      (lambda (_obj83680_ _id83681_ . _args83682_)
        (let ((_$e83684_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83680_ _id83681_))))
          (if _$e83684_
              ((lambda (_method83687_)
                 (apply _method83687_ _obj83680_ _args83682_))
               _$e83684_)
              (error '"cannot find method"
                     'object:
                     _obj83680_
                     'method:
                     _id83681_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83677_ _id83678_)
        (if (let () (declare (not safe)) (object? _obj83677_))
            (let ((__tmp89174
                   (let () (declare (not safe)) (object-type _obj83677_))))
              (declare (not safe))
              (find-method __tmp89174 _id83678_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83671_ _id83672_)
        (let ((_$e83674_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83671_ _id83672_))))
          (if _$e83674_
              _$e83674_
              (error '"missing method"
                     'object:
                     _obj83671_
                     'method:
                     _id83672_)))))
    (define bound-method-ref
      (lambda (_obj83661_ _id83662_)
        (let ((_$e83664_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83661_ _id83662_))))
          (if _$e83664_
              ((lambda (_method83667_)
                 (lambda _args83669_
                   (apply _method83667_ _obj83661_ _args83669_)))
               _$e83664_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83654_ _id83655_)
        (let ((_method83657_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83654_ _id83655_))))
          (lambda _args83659_ (apply _method83657_ _obj83654_ _args83659_)))))
    (define find-method
      (lambda (_klass83651_ _id83652_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83651_))
            (let ()
              (declare (not safe))
              (__find-method _klass83651_ _id83652_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83651_ _id83652_)))))
    (define __find-method
      (lambda (_klass83645_ _id83646_)
        (let ((_$e83648_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83645_ _id83646_))))
          (if _$e83648_
              _$e83648_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83645_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83645_ _id83646_)))))))
    (define class-find-method
      (lambda (_klass83642_ _id83643_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83642_))
            (let ()
              (declare (not safe))
              (__find-method _klass83642_ _id83643_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83635_ _id83636_)
        (let ((__tmp89175
               (lambda (_g8363783639_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8363783639_ _id83636_)))))
          (declare (not safe))
          (ormap1 __tmp89175 _mixins83635_))))
    (define builtin-find-method
      (lambda (_klass83629_ _id83630_)
        (if (let () (declare (not safe)) (##type? _klass83629_))
            (let ((_$e83632_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83629_ _id83630_))))
              (if _$e83632_
                  _$e83632_
                  (let ((__tmp89176
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83629_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89176 _id83630_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83621_ _id83622_)
        (let ((_$e83624_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83621_))))
          (if _$e83624_
              ((lambda (_ht83627_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83627_ _id83622_ '#f)))
               _$e83624_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83618_ _id83619_)
        (let ((__tmp89177
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83618_))))
          (declare (not safe))
          (mixin-find-method __tmp89177 _id83619_))))
    (define builtin-method-ref
      (lambda (_klass83610_ _id83611_)
        (let ((_$e83613_
               (let ((__tmp89178
                      (let () (declare (not safe)) (##type-id _klass83610_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89178 '#f))))
          (if _$e83613_
              ((lambda (_mtab83616_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83616_ _id83611_ '#f)))
               _$e83613_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83576_ _id83577_ _proc83578_ _rebind?83579_)
        (letrec ((_bind!83581_
                  (lambda (_ht83594_)
                    (if (and (let () (declare (not safe)) (not _rebind?83579_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83594_ _id83577_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83576_
                               'method:
                               _id83577_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83594_ _id83577_ _proc83578_))))))
          (if (let () (declare (not safe)) (procedure? _proc83578_))
              '#!void
              (error '"bad method; expected procedure" _proc83578_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83576_))
              (let ((_ht83583_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83576_))))
                (if _ht83583_
                    (let () (declare (not safe)) (_bind!83581_ _ht83583_))
                    (let ((_ht83585_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83576_ _ht83585_))
                      (let () (declare (not safe)) (_bind!83581_ _ht83585_)))))
              (if (let () (declare (not safe)) (##type? _klass83576_))
                  (let ((_ht83592_
                         (let ((_$e83587_
                                (let ((__tmp89179
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83576_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89179
                                   '#f))))
                           (if _$e83587_
                               _$e83587_
                               (let ((_ht83590_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89180
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83576_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89180
                                    _ht83590_))
                                 _ht83590_)))))
                    (declare (not safe))
                    (_bind!83581_ _ht83592_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83576_))))))
    (define bind-method!__0
      (lambda (_klass83599_ _id83600_ _proc83601_)
        (let ((_rebind?83603_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83599_
           _id83600_
           _proc83601_
           _rebind?83603_))))
    (define bind-method!
      (lambda _g89182_
        (let ((_g89181_ (let () (declare (not safe)) (##length _g89182_))))
          (cond ((let () (declare (not safe)) (##fx= _g89181_ 3))
                 (apply (lambda (_klass83599_ _id83600_ _proc83601_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83599_
                             _id83600_
                             _proc83601_)))
                        _g89182_))
                ((let () (declare (not safe)) (##fx= _g89181_ 4))
                 (apply (lambda (_klass83605_
                                 _id83606_
                                 _proc83607_
                                 _rebind?83608_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83605_
                             _id83606_
                             _proc83607_
                             _rebind?83608_)))
                        _g89182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89182_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83572_ _specializer83573_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83572_ _specializer83573_))))
    (define seal-class!
      (lambda (_klass83539_)
        (letrec ((_collect-methods!83541_
                  (lambda (_mtab83557_)
                    (letrec ((_merge!83559_
                              (lambda (_tab83567_)
                                (let ((__tmp89183
                                       (lambda (_id83569_ _proc83570_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83557_
                                            _id83569_
                                            _proc83570_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89183 _tab83567_))))
                             (_collect-direct-methods!83560_
                              (lambda (_klass83562_)
                                (let ((_$e83564_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83562_))))
                                  (if _$e83564_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83559_ _$e83564_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83560_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83539_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83539_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83539_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83539_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83539_))
                    (let ((_vtab83543_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83544_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83541_ _mtab83544_))
                      (let ((__tmp89184
                             (lambda (_id83546_ _proc83547_)
                               (let ((_$e83549_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83547_
                                         '#f))))
                                 (if _$e83549_
                                     ((lambda (_specializer83552_)
                                        (let ((_proc83554_
                                               (_specializer83552_
                                                _klass83539_))
                                              (_gid83555_
                                               (let ((__tmp89185
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83539_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89185
                                                  '"::["
                                                  _id83546_
                                                  '"]"))))
                                          (eval (let ((__tmp89186
                                                       (let ((__tmp89187
                                                              (let ((__tmp89188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89189
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83554_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89189))))
                        (declare (not safe))
                        (cons __tmp89188 '()))))
                 (declare (not safe))
                 (cons _gid83555_ __tmp89187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89186)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83543_
                                             _id83546_
                                             _proc83554_))))
                                      _$e83549_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83543_
                                        _id83546_
                                        _proc83547_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89184 _mtab83544_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83539_
                         _vtab83543_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83539_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83488_ _obj83489_ _id83490_)
        (let ((_klass83492_
               (let () (declare (not safe)) (object-type _obj83489_)))
              (_type-id83493_
               (let () (declare (not safe)) (##type-id _subklass83488_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83492_))
              (let _lp83495_ ((_rest83497_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83492_))))
                (let* ((_rest8349883506_ _rest83497_)
                       (_else8350083514_ (lambda () '#f))
                       (_K8350283520_
                        (lambda (_rest83517_ _klass83518_)
                          (if (let ((__tmp89192
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83518_))))
                                (declare (not safe))
                                (eq? _type-id83493_ __tmp89192))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83517_ _id83490_))
                              (let ()
                                (declare (not safe))
                                (_lp83495_ _rest83517_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8349883506_))
                      (let ((_hd8350383523_
                             (let ()
                               (declare (not safe))
                               (##car _rest8349883506_)))
                            (_tl8350483525_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8349883506_))))
                        (let* ((_klass83528_ _hd8350383523_)
                               (_rest83530_ _tl8350483525_))
                          (declare (not safe))
                          (_K8350283520_ _rest83530_ _klass83528_)))
                      (let () (declare (not safe)) (_else8350083514_)))))
              (if (let () (declare (not safe)) (##type? _klass83492_))
                  (let _lp83532_ ((_klass83534_ _klass83492_))
                    (if (let ((__tmp89191
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83534_))))
                          (declare (not safe))
                          (eq? _type-id83493_ __tmp89191))
                        (let ((__tmp89190
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83534_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89190 _id83490_))
                        (let ((_$e83536_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83534_))))
                          (if _$e83536_
                              (let ()
                                (declare (not safe))
                                (_lp83532_ _$e83536_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83478_ _obj83479_ _id83480_ . _args83481_)
        (let ((_$e83483_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83478_ _obj83479_ _id83480_))))
          (if _$e83483_
              ((lambda (_methodf83486_)
                 (apply _methodf83486_ _obj83479_ _args83481_))
               _$e83483_)
              (error '"cannot find next method"
                     'object:
                     _obj83479_
                     'method:
                     _id83480_)))))
    (define write-style (lambda (_we83476_) (macro-writeenv-style _we83476_)))
    (define write-object
      (lambda (_we83468_ _obj83469_)
        (let ((_$e83471_
               (let () (declare (not safe)) (method-ref _obj83469_ ':wr))))
          (if _$e83471_
              ((lambda (_method83474_) (_method83474_ _obj83469_ _we83468_))
               _$e83471_)
              (let ()
                (declare (not safe))
                (##default-wr _we83468_ _obj83469_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
