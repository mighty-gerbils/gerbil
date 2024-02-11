(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707616236)
  (begin
    (define type-id
      (lambda (_klass84590_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84590_))
            (let () (declare (not safe)) (##type-id _klass84590_))
            (if (let () (declare (not safe)) (not _klass84590_))
                '#f
                (error '"not a type descriptor" _klass84590_)))))
    (define type=?
      (lambda (_x84587_ _y84588_)
        (let ((__tmp89084 (let () (declare (not safe)) (type-id _x84587_)))
              (__tmp89083 (let () (declare (not safe)) (type-id _y84588_))))
          (declare (not safe))
          (eq? __tmp89084 __tmp89083))))
    (define type-descriptor?
      (lambda (_klass84585_)
        (if (let () (declare (not safe)) (##type? _klass84585_))
            (let ((__tmp89085
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84585_))))
              (declare (not safe))
              (eq? __tmp89085 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84583_)
        (let ((__tmp89086
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84583_))))
          (declare (not safe))
          (assgetq 'struct: __tmp89086))))
    (define type-final?
      (lambda (_klass84581_)
        (let ((__tmp89087
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84581_))))
          (declare (not safe))
          (assgetq 'final: __tmp89087))))
    (define struct-type?
      (lambda (_klass84579_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84579_))
            (let () (declare (not safe)) (type-struct? _klass84579_))
            '#f)))
    (define class-type?
      (lambda (_klass84577_)
        (let () (declare (not safe)) (type-descriptor? _klass84577_))))
    (define properties-form
      (lambda (_properties84543_)
        (map (lambda (_e8454484546_)
               (let* ((_g8454884555_ _e8454484546_)
                      (_E8455084559_
                       (lambda () (error '"No clause matching" _g8454884555_)))
                      (_K8455184565_
                       (lambda (_val84562_ _key84563_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84563_ 'direct-supers:))
                             (let ((__tmp89088 (map type-id _val84562_)))
                               (declare (not safe))
                               (cons _key84563_ __tmp89088))
                             (let ()
                               (declare (not safe))
                               (cons _key84563_ _val84562_))))))
                 (if (let () (declare (not safe)) (##pair? _g8454884555_))
                     (let ((_hd8455284568_
                            (let ()
                              (declare (not safe))
                              (##car _g8454884555_)))
                           (_tl8455384570_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8454884555_))))
                       (let* ((_key84573_ _hd8455284568_)
                              (_val84575_ _tl8455384570_))
                         (declare (not safe))
                         (_K8455184565_ _val84575_ _key84573_)))
                     (let () (declare (not safe)) (_E8455084559_)))))
             _properties84543_)))
    (define make-type-descriptor
      (lambda (_type-id84456_
               _type-name84457_
               _type-super84458_
               _precedence-list84459_
               _all-slots84460_
               _properties84461_
               _constructor84462_
               _slot-table84463_
               _methods84464_)
        (letrec ((_make-props!84466_
                  (lambda (_key84512_)
                    (letrec* ((_ht84514_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84515_
                               (lambda (_ht84536_ _slots84537_)
                                 (for-each
                                  (lambda (_g8453884540_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84536_
                                       _g8453884540_
                                       '#t)))
                                  _slots84537_)))
                              (_put-alist!84516_
                               (lambda (_ht84525_ _key84526_ _alist84527_)
                                 (let ((_$e84529_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84526_ _alist84527_))))
                                   (if _$e84529_
                                       ((lambda (_g8453184533_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84515_
                                             _ht84525_
                                             _g8453184533_)))
                                        _$e84529_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84516_
                         _ht84514_
                         _key84512_
                         _properties84461_))
                      (for-each
                       (lambda (_mixin84518_)
                         (let ((_alist84520_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84518_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84520_))
                                   (let ((__tmp89090
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84512_
                                                     _alist84520_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89090)))
                               (let ((__tmp89089
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84518_))))
                                 (declare (not safe))
                                 (_put-slots!84515_ _ht84514_ __tmp89089))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84516_
                                  _ht84514_
                                  _key84512_
                                  _alist84520_)))))
                       _precedence-list84459_)
                      _ht84514_))))
          (let* ((_transparent?84468_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84461_)))
                 (_all-slots-printable?84473_
                  (let ((_$e84470_ _transparent?84468_))
                    (if _$e84470_
                        _$e84470_
                        (let ((__tmp89091
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84461_))))
                          (declare (not safe))
                          (eq? '#t __tmp89091)))))
                 (_printable84475_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84473_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84466_ 'print:))
                      '#f))
                 (_all-slots-equalable?84480_
                  (let ((_$e84477_ _transparent?84468_))
                    (if _$e84477_
                        _$e84477_
                        (let ((__tmp89092
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84461_))))
                          (declare (not safe))
                          (eq? '#t __tmp89092)))))
                 (_equalable84482_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84480_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84466_ 'equal:))
                      '#f))
                 (_first-new-field84484_
                  (if _type-super84458_
                      (let ((__tmp89093
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84458_))))
                        (declare (not safe))
                        (##vector-length __tmp89093))
                      '1))
                 (_field-info-length84486_
                  (let ((__tmp89094
                         (let ((__tmp89095
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84460_))))
                           (declare (not safe))
                           (##fx- __tmp89095 _first-new-field84484_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89094)))
                 (_field-info84488_ (make-vector _field-info-length84486_ '#f))
                 (_opaque?84493_
                  (let ((_$e84490_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84480_))))
                    (if _$e84490_
                        _$e84490_
                        (if _type-super84458_
                            (let ((__tmp89096
                                   (let ((__tmp89097
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84458_))))
                                     (declare (not safe))
                                     (##fxand __tmp89097 '1))))
                              (declare (not safe))
                              (##fx= __tmp89096 '1))
                            '#f)))))
            (let _loop84496_ ((_i84498_ _first-new-field84484_) (_j84499_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84499_ _field-info-length84486_))
                  (let* ((_slot84501_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84460_ _i84498_)))
                         (_flags84509_
                          (if _transparent?84468_
                              '0
                              (let ((__tmp89099
                                     (if (or _all-slots-printable?84473_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84475_
                                                _slot84501_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89098
                                     (if (or _all-slots-equalable?84480_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84482_
                                                _slot84501_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89099 __tmp89098)))))
                    (vector-set! _field-info84488_ _j84499_ _slot84501_)
                    (vector-set!
                     _field-info84488_
                     (let () (declare (not safe)) (##fx+ _j84499_ '1))
                     _flags84509_)
                    (let ((__tmp89101
                           (let () (declare (not safe)) (##fx+ _i84498_ '1)))
                          (__tmp89100
                           (let () (declare (not safe)) (##fx+ _j84499_ '3))))
                      (declare (not safe))
                      (_loop84496_ __tmp89101 __tmp89100)))
                  '#!void))
            (let ((__tmp89102 (if _opaque?84493_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84456_
               _type-name84457_
               __tmp89102
               _type-super84458_
               _field-info84488_
               _precedence-list84459_
               _all-slots84460_
               _slot-table84463_
               _properties84461_
               _constructor84462_
               _methods84464_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84454_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84454_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84452_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84452_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84450_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84450_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84448_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84448_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84446_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84446_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84444_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84444_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84441_ _ht84442_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84441_
           _ht84442_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84439_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84439_))))))
    (define type-descriptor-fields
      (lambda (_klass84437_)
        (let ((__tmp89103
               (let ((__tmp89104
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84437_))))
                 (declare (not safe))
                 (##vector-length __tmp89104))))
          (declare (not safe))
          (##fx- __tmp89103 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84435_)
        (let ((__tmp89105
               (let () (declare (not safe)) (##type-flags _klass84435_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89105))))
    (define type-descriptor-seal!
      (lambda (_klass84433_)
        (let ((__tmp89106
               (let ((__tmp89108
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89107
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84433_))))
                 (declare (not safe))
                 (##fxior __tmp89108 __tmp89107))))
          (declare (not safe))
          (##structure-set!
           _klass84433_
           __tmp89106
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84426_
               _name84427_
               _super84428_
               _direct-slots84429_
               _properties84430_
               _constructor84431_)
        (let ((__tmp89111
               (if _super84428_
                   (let () (declare (not safe)) (cons _super84428_ '()))
                   '()))
              (__tmp89109
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84430_))
                   _properties84430_
                   (let ((__tmp89110
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp89110 _properties84430_)))))
          (declare (not safe))
          (make-class-type
           _id84426_
           _name84427_
           __tmp89111
           _direct-slots84429_
           __tmp89109
           _constructor84431_))))
    (define make-struct-predicate
      (lambda (_klass84414_)
        (let ((_tid84416_
               (let () (declare (not safe)) (##type-id _klass84414_))))
          (if (let () (declare (not safe)) (type-final? _klass84414_))
              (lambda (_g8441784419_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8441784419_ _tid84416_)))
              (lambda (_g8442184423_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8442184423_ _tid84416_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84398_ _slot84399_)
        (let ((_$e84401_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84398_ _slot84399_))))
          (if _$e84401_
              ((lambda (_off84404_)
                 (if (let () (declare (not safe)) (type-final? _klass84398_))
                     (lambda (_g8440584407_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _g8440584407_
                          _off84404_
                          _klass84398_
                          '#f)))
                     (lambda (_g8440984411_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _g8440984411_
                          _off84404_
                          _klass84398_
                          '#f)))))
               _$e84401_)
              (error '"unknown slot"
                     'class:
                     _klass84398_
                     'slot:
                     _slot84399_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84376_ _slot84377_)
        (let ((_$e84379_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84376_ _slot84377_))))
          (if _$e84379_
              ((lambda (_off84382_)
                 (if (let () (declare (not safe)) (type-final? _klass84376_))
                     (lambda (_g8438384386_ _g8438484388_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _g8438384386_
                          _g8438484388_
                          _off84382_
                          _klass84376_
                          '#f)))
                     (lambda (_g8439084393_ _g8439184395_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _g8439084393_
                          _g8439184395_
                          _off84382_
                          _klass84376_
                          '#f)))))
               _$e84379_)
              (error '"unknown slot"
                     'class:
                     _klass84376_
                     'slot:
                     _slot84377_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84364_ _slot84365_)
        (let ((_$e84367_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84364_ _slot84365_))))
          (if _$e84367_
              ((lambda (_off84370_)
                 (lambda (_g8437184373_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _g8437184373_
                      _off84370_
                      _klass84364_
                      '#f))))
               _$e84367_)
              (error '"unknown slot"
                     'class:
                     _klass84364_
                     'slot:
                     _slot84365_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84353_ _slot84354_)
        (let ((_$e84356_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84353_ _slot84354_))))
          (if _$e84356_
              ((lambda (_off84359_)
                 (lambda (_obj84361_ _val84362_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84361_
                      _val84362_
                      _off84359_
                      _klass84353_
                      '#f))))
               _$e84356_)
              (error '"unknown slot"
                     'class:
                     _klass84353_
                     'slot:
                     _slot84354_)))))
    (define make-final-field-accessor
      (lambda (_klass84347_ _slot84348_ _field84349_)
        (lambda (_obj84351_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84351_
             _field84349_
             _klass84347_
             _slot84348_)))))
    (define make-struct-field-accessor
      (lambda (_klass84341_ _slot84342_ _field84343_)
        (lambda (_obj84345_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84345_
             _field84343_
             _klass84341_
             _slot84342_)))))
    (define make-final-field-mutator
      (lambda (_klass84334_ _slot84335_ _field84336_)
        (lambda (_obj84338_ _val84339_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84338_
             _val84339_
             _field84336_
             _klass84334_
             _slot84335_)))))
    (define make-struct-field-mutator
      (lambda (_klass84327_ _slot84328_ _field84329_)
        (lambda (_obj84331_ _val84332_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84331_
             _val84332_
             _field84329_
             _klass84327_
             _slot84328_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84321_ _slot84322_ _field84323_)
        (lambda (_obj84325_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84325_
             _field84323_
             _klass84321_
             _slot84322_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84314_ _slot84315_ _field84316_)
        (lambda (_obj84318_ _val84319_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84318_
             _val84319_
             _field84316_
             _klass84314_
             _slot84315_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84305_ _maybe-super-struct84306_)
        (let ((_maybe-super-struct-id84308_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84306_))))
          (let _lp84310_ ((_super-struct84312_ _maybe-sub-struct84305_))
            (if (let () (declare (not safe)) (not _super-struct84312_))
                '#f
                (if (let ((__tmp89113
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84312_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84308_ __tmp89113))
                    '#t
                    (let ((__tmp89112
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84312_))))
                      (declare (not safe))
                      (_lp84310_ __tmp89112))))))))
    (define base-struct/1
      (lambda (_klass84303_)
        (if (let () (declare (not safe)) (struct-type? _klass84303_))
            _klass84303_
            (if (let () (declare (not safe)) (class-type? _klass84303_))
                (let () (declare (not safe)) (##type-super _klass84303_))
                (if (let () (declare (not safe)) (not _klass84303_))
                    '#f
                    (error '"not a class or false" _klass84303_))))))
    (define base-struct/2
      (lambda (_klass184291_ _klass284292_)
        (let ((_s184294_
               (let () (declare (not safe)) (base-struct/1 _klass184291_)))
              (_s284295_
               (let () (declare (not safe)) (base-struct/1 _klass284292_))))
          (if (or (let () (declare (not safe)) (not _s184294_))
                  (and _s284295_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184294_ _s284295_))))
              _s284295_
              (if (or (let () (declare (not safe)) (not _s284295_))
                      (and _s184294_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284295_ _s184294_))))
                  _s184294_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184291_
                         _klass284292_
                         _s184294_
                         _s284295_))))))
    (define base-struct/list
      (lambda (_all-supers84175_)
        (let* ((_all-supers8417684201_ _all-supers84175_)
               (_E8418184205_
                (lambda ()
                  (error '"No clause matching" _all-supers8417684201_))))
          (let ((_K8419984288_ (lambda () '#f))
                (_K8419684274_
                 (lambda (_x84272_)
                   (let () (declare (not safe)) (base-struct/1 _x84272_))))
                (_K8419184251_
                 (lambda (_y84248_ _x84249_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84249_ _y84248_))))
                (_K8418284212_
                 (lambda (_y84209_ _x84210_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84210_ _y84209_)))))
            (let* ((___match8908089081_
                    (lambda (_hd8418384215_ _tl8418484217_)
                      (let ((_x84220_ _hd8418384215_))
                        (letrec ((_splice-rest8418684222_
                                  (lambda (_rest8419084229_ _y84231_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8419084229_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8418284212_ _y84231_ _x84220_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8418184205_)))))
                                 (_splice-try8418884224_
                                  (lambda (_hd8418984233_
                                           _rest8419084235_
                                           _y8418584236_)
                                    (let ((_y84239_ _hd8418984233_))
                                      (let ((__tmp89115
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8419084235_)))
                                            (__tmp89114
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84239_ _y8418584236_))))
                                        (declare (not safe))
                                        (_splice-loop8418784226_
                                         __tmp89115
                                         __tmp89114)))))
                                 (_splice-loop8418784226_
                                  (lambda (_rest8419084241_ _y8418584242_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8419084241_))
                                        (let ((__tmp89117
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8419084241_))))
                                          (declare (not safe))
                                          (_splice-try8418884224_
                                           __tmp89117
                                           _rest8419084241_
                                           _y8418584242_))
                                        (let ((__tmp89116
                                               (reverse _y8418584242_)))
                                          (declare (not safe))
                                          (_splice-rest8418684222_
                                           _rest8419084241_
                                           __tmp89116))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8418784226_ _tl8418484217_ '()))))))
                   (_try-match8417884284_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8417684201_))
                          (let ((_tl8419884279_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8417684201_)))
                                (_hd8419784277_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8417684201_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8419884279_))
                                (let ((_x84282_ _hd8419784277_))
                                  (declare (not safe))
                                  (base-struct/1 _x84282_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8419884279_))
                                    (let ((_tl8419584263_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8419884279_)))
                                          (_hd8419484261_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8419884279_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8419584263_))
                                          (let ((_x84259_ _hd8419784277_)
                                                (_y84266_ _hd8419484261_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8419184251_
                                               _y84266_
                                               _x84259_)))
                                          (___match8908089081_
                                           _hd8419784277_
                                           _tl8419884279_)))
                                    (___match8908089081_
                                     _hd8419784277_
                                     _tl8419884279_))))
                          (let () (declare (not safe)) (_E8418184205_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8417684201_))
                  (let () (declare (not safe)) (_K8419984288_))
                  (let () (declare (not safe)) (_try-match8417884284_))))))))
    (define base-struct
      (lambda _all-supers84173_
        (let () (declare (not safe)) (base-struct/list _all-supers84173_))))
    (define find-super-ctor
      (lambda (_super84171_)
        (let () (declare (not safe)) (find-super-constructor _super84171_))))
    (define find-super-constructor
      (lambda (_super84123_)
        (let _lp84125_ ((_rest84127_ _super84123_) (_constructor84128_ '#f))
          (let* ((_rest8412984137_ _rest84127_)
                 (_else8413184145_ (lambda () _constructor84128_))
                 (_K8413384159_
                  (lambda (_rest84148_ _hd84149_)
                    (let ((_$e84151_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84149_))))
                      (if _$e84151_
                          ((lambda (_xconstructor84154_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84128_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84128_
                                            _xconstructor84154_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84125_ _rest84148_ _xconstructor84154_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84128_
                                        _xconstructor84154_)))
                           _$e84151_)
                          (let ()
                            (declare (not safe))
                            (_lp84125_ _rest84148_ _constructor84128_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8412984137_))
                (let ((_hd8413484162_
                       (let () (declare (not safe)) (##car _rest8412984137_)))
                      (_tl8413584164_
                       (let () (declare (not safe)) (##cdr _rest8412984137_))))
                  (let* ((_hd84167_ _hd8413484162_)
                         (_rest84169_ _tl8413584164_))
                    (declare (not safe))
                    (_K8413384159_ _rest84169_ _hd84167_)))
                (let () (declare (not safe)) (_else8413184145_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84099_ _direct-slots84100_)
        (let* ((_next-slot84102_ '1)
               (_slot-table84104_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84106_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84110_
                (lambda (_slot84108_)
                  (if (let () (declare (not safe)) (symbol? _slot84108_))
                      '#!void
                      (error '"invalid slot name" _slot84108_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84104_ _slot84108_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84104_
                           _slot84108_
                           _next-slot84102_))
                        (let ((__tmp89118 (symbol->keyword _slot84108_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84104_
                           __tmp89118
                           _next-slot84102_))
                        (set! _r-slots84106_
                              (let ()
                                (declare (not safe))
                                (cons _slot84108_ _r-slots84106_)))
                        (set! _next-slot84102_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84102_ '1)))))))
               (_process-slots84116_
                (lambda (_g8411184113_)
                  (for-each _process-slot84110_ _g8411184113_))))
          (for-each
           (lambda (_mixin84119_)
             (let ((__tmp89119
                    (let ((__tmp89120
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84119_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89120 '()))))
               (declare (not safe))
               (_process-slots84116_ __tmp89119)))
           (reverse _class-precedence-list84099_))
          (let ()
            (declare (not safe))
            (_process-slots84116_ _direct-slots84100_))
          (let ((_all-slots84121_ (list->vector (reverse _r-slots84106_))))
            (values _all-slots84121_ _slot-table84104_)))))
    (define make-class-type
      (lambda (_id84062_
               _name84063_
               _direct-supers84064_
               _direct-slots84065_
               _properties84066_
               _constructor84067_)
        (let ((_$e84071_
               (let ((__tmp89121
                      (lambda (_klass84069_)
                        (let ((__tmp89122
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84069_))))
                          (declare (not safe))
                          (not __tmp89122)))))
                 (declare (not safe))
                 (find __tmp89121 _direct-supers84064_))))
          (if _$e84071_
              ((lambda (_g8407384075_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8407384075_))
               _$e84071_)
              (let ((_$e84078_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84064_))))
                (if _$e84078_
                    ((lambda (_g8408084082_)
                       (error '"Cannot extend final class" _g8408084082_))
                     _$e84078_)
                    '#!void))))
        (let ((_g89123_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84064_))))
          (begin
            (let ((_g89124_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89123_) (##vector-length _g89123_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89124_ 2)))
                  (error "Context expects 2 values" _g89124_)))
            (let ((_precedence-list84085_
                   (let () (declare (not safe)) (##vector-ref _g89123_ 0)))
                  (_struct-super84086_
                   (let () (declare (not safe)) (##vector-ref _g89123_ 1))))
              (let ((_g89125_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84085_
                        _direct-slots84065_))))
                (begin
                  (let ((_g89126_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89125_)
                               (##vector-length _g89125_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89126_ 2)))
                        (error "Context expects 2 values" _g89126_)))
                  (let ((_all-slots84088_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89125_ 0)))
                        (_slot-table84089_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89125_ 1))))
                    (let* ((_properties84091_
                            (let ((__tmp89129
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84065_)))
                                  (__tmp89127
                                   (let ((__tmp89128
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84064_))))
                                     (declare (not safe))
                                     (cons __tmp89128 _properties84066_))))
                              (declare (not safe))
                              (cons __tmp89129 __tmp89127)))
                           (_constructor*84096_
                            (let ((_$e84093_ _constructor84067_))
                              (if _$e84093_
                                  _$e84093_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84064_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84062_
                         _name84063_
                         _struct-super84086_
                         _precedence-list84085_
                         _all-slots84088_
                         _properties84091_
                         _constructor*84096_
                         _slot-table84089_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84060_)
        (let ((__tmp89130
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84060_))))
          (declare (not safe))
          (cons _klass84060_ __tmp89130))))
    (define compute-precedence-list
      (lambda (_direct-supers84058_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84058_))))
    (define make-class-predicate
      (lambda (_klass84048_)
        (if (let () (declare (not safe)) (type-final? _klass84048_))
            (lambda (_g8404984051_)
              (let ((__tmp89131
                     (let () (declare (not safe)) (##type-id _klass84048_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8404984051_ __tmp89131)))
            (lambda (_g8405384055_)
              (let ()
                (declare (not safe))
                (class-instance? _klass84048_ _g8405384055_))))))
    (define if-class-slot-field
      (lambda (_klass84037_
               _slot84038_
               _if-final84039_
               _if-struct84040_
               _if-struct-field84041_
               _if-class-slot84042_)
        (let ((_field84044_
               (let ((__tmp89132
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84037_))))
                 (declare (not safe))
                 (table-ref __tmp89132 _slot84038_ '#f))))
          (if (let () (declare (not safe)) (not _field84044_))
              (error '"unknown slot" 'class: _klass84037_ 'slot: _slot84038_)
              (if (let () (declare (not safe)) (type-final? _klass84037_))
                  (_if-final84039_ _klass84037_ _slot84038_ _field84044_)
                  (if (let () (declare (not safe)) (type-struct? _klass84037_))
                      (_if-struct84040_ _klass84037_ _slot84038_ _field84044_)
                      (if (let ((_strukt84046_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84037_))))
                            (and _strukt84046_
                                 (let ((__tmp89133
                                        (let ((__tmp89134
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84046_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89134))))
                                   (declare (not safe))
                                   (##fx< _field84044_ __tmp89133))))
                          (_if-struct-field84041_
                           _klass84037_
                           _slot84038_
                           _field84044_)
                          (_if-class-slot84042_
                           _klass84037_
                           _slot84038_
                           _field84044_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84034_ _slot84035_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84034_
           _slot84035_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object84018_ _class84019_ _slot84020_)
        (apply error
               '"not an instance"
               'object:
               _object84018_
               'class:
               _class84019_
               (if _slot84020_
                   (let ((__tmp89135
                          (let ()
                            (declare (not safe))
                            (cons _slot84020_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89135))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84025_ _class84026_)
        (let ((_slot84028_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84025_ _class84026_ _slot84028_))))
    (define not-an-instance
      (lambda _g89137_
        (let ((_g89136_ (let () (declare (not safe)) (##length _g89137_))))
          (cond ((let () (declare (not safe)) (##fx= _g89136_ 2))
                 (apply (lambda (_object84025_ _class84026_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84025_ _class84026_)))
                        _g89137_))
                ((let () (declare (not safe)) (##fx= _g89136_ 3))
                 (apply (lambda (_object84030_ _class84031_ _slot84032_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84030_
                             _class84031_
                             _slot84032_)))
                        _g89137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89137_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass84011_ _slot84012_ _field84013_)
        (lambda (_obj84015_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84011_ _obj84015_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84015_ _field84013_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84015_ _klass84011_ _slot84012_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84005_ _slot84006_ _field84007_)
        (lambda (_obj84009_)
          (if (let ((__tmp89138
                     (let () (declare (not safe)) (##type-id _klass84005_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84009_ __tmp89138))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84009_ _field84007_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84005_ _obj84009_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84009_ _slot84006_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84009_
                     _klass84005_
                     _slot84006_)))))))
    (define make-class-slot-mutator
      (lambda (_klass84002_ _slot84003_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84002_
           _slot84003_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass83995_ _slot83996_ _field83997_)
        (lambda (_obj83999_ _val84000_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83995_ _obj83999_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83999_ _field83997_ _val84000_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83999_ _klass83995_ _slot83996_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83988_ _slot83989_ _field83990_)
        (lambda (_obj83992_ _val83993_)
          (if (let ((__tmp89139
                     (let () (declare (not safe)) (##type-id _klass83988_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83992_ __tmp89139))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83992_ _field83990_ _val83993_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83988_ _obj83992_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83992_ _slot83989_ _val83993_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83992_
                     _klass83988_
                     _slot83989_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83985_ _slot83986_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83985_
           _slot83986_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83979_ _slot83980_ _field83981_)
        (lambda (_obj83983_)
          (if (let ((__tmp89140
                     (let () (declare (not safe)) (##type-id _klass83979_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83983_ __tmp89140))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83983_ _field83981_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83983_ _slot83980_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83976_ _slot83977_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83976_
           _slot83977_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83969_ _slot83970_ _field83971_)
        (lambda (_obj83973_ _val83974_)
          (if (let ((__tmp89141
                     (let () (declare (not safe)) (##type-id _klass83969_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83973_ __tmp89141))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83973_ _field83971_ _val83974_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83973_ _slot83970_ _val83974_))))))
    (define class-slot-offset
      (lambda (_klass83966_ _slot83967_)
        (let ((__tmp89142
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83966_))))
          (declare (not safe))
          (table-ref __tmp89142 _slot83967_ '#f))))
    (define class-slot-ref
      (lambda (_klass83960_ _obj83961_ _slot83962_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83960_ _obj83961_))
            (let ((_off83964_
                   (let ((__tmp89143
                          (let ()
                            (declare (not safe))
                            (object-type _obj83961_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89143 _slot83962_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83961_
               _off83964_
               _klass83960_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83961_ _klass83960_)))))
    (define class-slot-set!
      (lambda (_klass83953_ _obj83954_ _slot83955_ _val83956_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83953_ _obj83954_))
            (let ((_off83958_
                   (let ((__tmp89144
                          (let ()
                            (declare (not safe))
                            (object-type _obj83954_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89144 _slot83955_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83954_
               _val83956_
               _off83958_
               _klass83953_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83954_ _klass83953_)))))
    (define unchecked-field-ref
      (lambda (_obj83950_ _off83951_)
        (let ((__tmp89145
               (let () (declare (not safe)) (##structure-type _obj83950_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83950_ _off83951_ __tmp89145 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83946_ _off83947_ _val83948_)
        (let ((__tmp89146
               (let () (declare (not safe)) (##structure-type _obj83946_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83946_
           _val83948_
           _off83947_
           __tmp89146
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83943_ _slot83944_)
        (let ((__tmp89147
               (let ((__tmp89148
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83943_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89148 _slot83944_))))
          (declare (not safe))
          (unchecked-field-ref _obj83943_ __tmp89147))))
    (define unchecked-slot-set!
      (lambda (_obj83939_ _slot83940_ _val83941_)
        (let ((__tmp89149
               (let ((__tmp89150
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83939_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89150 _slot83940_))))
          (declare (not safe))
          (unchecked-field-set! _obj83939_ __tmp89149 _val83941_))))
    (define slot-ref__%
      (lambda (_obj83915_ _slot83916_ _E83917_)
        (if (let () (declare (not safe)) (object? _obj83915_))
            (let* ((_klass83919_
                    (let () (declare (not safe)) (object-type _obj83915_)))
                   (_$e83922_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83919_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83919_ _slot83916_))
                        '#f)))
              (if _$e83922_
                  ((lambda (_off83925_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83915_ _off83925_)))
                   _$e83922_)
                  (_E83917_ _obj83915_ _slot83916_)))
            (_E83917_ _obj83915_ _slot83916_))))
    (define slot-ref__0
      (lambda (_obj83930_ _slot83931_)
        (let ((_E83933_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83930_ _slot83931_ _E83933_))))
    (define slot-ref
      (lambda _g89152_
        (let ((_g89151_ (let () (declare (not safe)) (##length _g89152_))))
          (cond ((let () (declare (not safe)) (##fx= _g89151_ 2))
                 (apply (lambda (_obj83930_ _slot83931_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83930_ _slot83931_)))
                        _g89152_))
                ((let () (declare (not safe)) (##fx= _g89151_ 3))
                 (apply (lambda (_obj83935_ _slot83936_ _E83937_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83935_ _slot83936_ _E83937_)))
                        _g89152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89152_))))))
    (define slot-set!__%
      (lambda (_obj83887_ _slot83888_ _val83889_ _E83890_)
        (if (let () (declare (not safe)) (object? _obj83887_))
            (let* ((_klass83892_
                    (let () (declare (not safe)) (object-type _obj83887_)))
                   (_$e83895_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83892_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83892_ _slot83888_))
                        '#f)))
              (if _$e83895_
                  ((lambda (_off83898_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83887_
                        _off83898_
                        _val83889_)))
                   _$e83895_)
                  (_E83890_ _obj83887_ _slot83888_)))
            (_E83890_ _obj83887_ _slot83888_))))
    (define slot-set!__0
      (lambda (_obj83903_ _slot83904_ _val83905_)
        (let ((_E83907_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83903_ _slot83904_ _val83905_ _E83907_))))
    (define slot-set!
      (lambda _g89154_
        (let ((_g89153_ (let () (declare (not safe)) (##length _g89154_))))
          (cond ((let () (declare (not safe)) (##fx= _g89153_ 3))
                 (apply (lambda (_obj83903_ _slot83904_ _val83905_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83903_ _slot83904_ _val83905_)))
                        _g89154_))
                ((let () (declare (not safe)) (##fx= _g89153_ 4))
                 (apply (lambda (_obj83909_ _slot83910_ _val83911_ _E83912_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83909_
                             _slot83910_
                             _val83911_
                             _E83912_)))
                        _g89154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89154_))))))
    (define __slot-error
      (lambda (_obj83883_ _slot83884_)
        (error '"Cannot find slot" 'object: _obj83883_ 'slot: _slot83884_)))
    (define subclass?
      (lambda (_maybe-sub-class83873_ _maybe-super-class83874_)
        (let* ((_maybe-super-class-id83876_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83874_)))
               (_$e83878_
                (let ((__tmp89155
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83873_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83876_ __tmp89155))))
          (if _$e83878_
              _$e83878_
              (let ((__tmp89157
                     (lambda (_super-class83881_)
                       (let ((__tmp89158
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83881_))))
                         (declare (not safe))
                         (eq? __tmp89158 _maybe-super-class-id83876_))))
                    (__tmp89156
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83873_))))
                (declare (not safe))
                (ormap1 __tmp89157 __tmp89156))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83870_ _obj83871_)
        (let ((__tmp89159
               (let () (declare (not safe)) (##type-id _klass83870_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83871_ __tmp89159))))
    (define struct-instance?
      (lambda (_klass83867_ _obj83868_)
        (let ((__tmp89160
               (let () (declare (not safe)) (##type-id _klass83867_))))
          (declare (not safe))
          (##structure-instance-of? _obj83868_ __tmp89160))))
    (define class-instance?
      (lambda (_klass83862_ _obj83863_)
        (if (let () (declare (not safe)) (object? _obj83863_))
            (let ((_type83865_
                   (let () (declare (not safe)) (object-type _obj83863_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83865_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83865_ _klass83862_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83857_ _k83858_)
        (let ((_obj83860_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83857_ _k83858_))))
          (let () (declare (not safe)) (object-fill! _obj83860_ '#f))
          _obj83860_)))
    (define object-fill!
      (lambda (_obj83850_ _fill83851_)
        (let _loop83853_ ((_i83855_
                           (let ((__tmp89162
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83850_))))
                             (declare (not safe))
                             (##fx- __tmp89162 '1))))
          (if (let () (declare (not safe)) (##fx> _i83855_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83850_
                   _fill83851_
                   _i83855_
                   '#f
                   '#f))
                (let ((__tmp89161
                       (let () (declare (not safe)) (##fx- _i83855_ '1))))
                  (declare (not safe))
                  (_loop83853_ __tmp89161)))
              _obj83850_))))
    (define make-instance
      (lambda (_klass83848_)
        (let ((__obj89082
               (let ((__tmp89163
                      (let ((__tmp89164
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83848_))))
                        (declare (not safe))
                        (##vector-length __tmp89164))))
                 (declare (not safe))
                 (##make-structure _klass83848_ __tmp89163))))
          (let () (declare (not safe)) (object-fill! __obj89082 '#f))
          __obj89082)))
    (define make-struct-instance
      (lambda (_klass83838_ . _args83839_)
        (let* ((_obj83841_
                (let () (declare (not safe)) (make-instance _klass83838_)))
               (_$e83843_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83838_))))
          (if _$e83843_
              ((lambda (_kons-id83846_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83838_
                    _kons-id83846_
                    _obj83841_
                    _args83839_)))
               _$e83843_)
              (if (let ((__tmp89166
                         (let ((__tmp89167
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83841_))))
                           (declare (not safe))
                           (##fx- __tmp89167 '1)))
                        (__tmp89165 (length _args83839_)))
                    (declare (not safe))
                    (##fx= __tmp89166 __tmp89165))
                  (apply ##structure _klass83838_ _args83839_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83838_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83838_))
                         'args:
                         _args83839_))))))
    (define make-class-instance
      (lambda (_klass83828_ . _args83829_)
        (let* ((_obj83831_
                (let () (declare (not safe)) (make-instance _klass83828_)))
               (_$e83833_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83828_))))
          (if _$e83833_
              ((lambda (_kons-id83836_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83828_
                    _kons-id83836_
                    _obj83831_
                    _args83829_)))
               _$e83833_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83828_
                 _obj83831_
                 _args83829_))))))
    (define struct-instance-init!
      (lambda (_obj83825_ . _args83826_)
        (if (let ((__tmp89169 (length _args83826_))
                  (__tmp89168
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83825_))))
              (declare (not safe))
              (##fx< __tmp89169 __tmp89168))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83825_ _args83826_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83825_
                   'args:
                   _args83826_))))
    (define __struct-instance-init!
      (lambda (_obj83784_ _args83785_)
        (let _lp83787_ ((_k83789_ '1) (_rest83790_ _args83785_))
          (let* ((_rest8379183799_ _rest83790_)
                 (_else8379383807_ (lambda () _obj83784_))
                 (_K8379583813_
                  (lambda (_rest83810_ _hd83811_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83784_ _k83789_ _hd83811_))
                    (let ((__tmp89170
                           (let () (declare (not safe)) (##fx+ _k83789_ '1))))
                      (declare (not safe))
                      (_lp83787_ __tmp89170 _rest83810_)))))
            (if (let () (declare (not safe)) (##pair? _rest8379183799_))
                (let ((_hd8379683816_
                       (let () (declare (not safe)) (##car _rest8379183799_)))
                      (_tl8379783818_
                       (let () (declare (not safe)) (##cdr _rest8379183799_))))
                  (let* ((_hd83821_ _hd8379683816_)
                         (_rest83823_ _tl8379783818_))
                    (declare (not safe))
                    (_K8379583813_ _rest83823_ _hd83821_)))
                (let () (declare (not safe)) (_else8379383807_)))))))
    (define class-instance-init!
      (lambda (_obj83781_ . _args83782_)
        (let ((__tmp89171
               (let () (declare (not safe)) (object-type _obj83781_))))
          (declare (not safe))
          (__class-instance-init! __tmp89171 _obj83781_ _args83782_))))
    (define __class-instance-init!
      (lambda (_klass83725_ _obj83726_ _args83727_)
        (let _lp83729_ ((_rest83731_ _args83727_))
          (let* ((_rest8373283742_ _rest83731_)
                 (_else8373483750_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83731_))
                        _obj83726_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83725_
                               'rest:
                               _rest83731_))))
                 (_K8373683762_
                  (lambda (_rest83753_ _val83754_ _key83755_)
                    (let ((_$e83757_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83725_ _key83755_))))
                      (if _$e83757_
                          ((lambda (_off83760_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83726_
                                _off83760_
                                _val83754_))
                             (let ()
                               (declare (not safe))
                               (_lp83729_ _rest83753_)))
                           _$e83757_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83725_
                                 'slot:
                                 _key83755_))))))
            (if (let () (declare (not safe)) (##pair? _rest8373283742_))
                (let ((_hd8373783765_
                       (let () (declare (not safe)) (##car _rest8373283742_)))
                      (_tl8373883767_
                       (let () (declare (not safe)) (##cdr _rest8373283742_))))
                  (let ((_key83770_ _hd8373783765_))
                    (if (let () (declare (not safe)) (##pair? _tl8373883767_))
                        (let ((_hd8373983772_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8373883767_)))
                              (_tl8374083774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8373883767_))))
                          (let* ((_val83777_ _hd8373983772_)
                                 (_rest83779_ _tl8374083774_))
                            (declare (not safe))
                            (_K8373683762_ _rest83779_ _val83777_ _key83770_)))
                        (let () (declare (not safe)) (_else8373483750_)))))
                (let () (declare (not safe)) (_else8373483750_)))))))
    (define constructor-init!
      (lambda (_klass83720_ _kons-id83721_ _obj83722_ . _args83723_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83720_
           _kons-id83721_
           _obj83722_
           _args83723_))))
    (define __constructor-init!
      (lambda (_klass83710_ _kons-id83711_ _obj83712_ _args83713_)
        (let ((_$e83715_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83710_ _kons-id83711_))))
          (if _$e83715_
              ((lambda (_kons83718_)
                 (apply _kons83718_ _obj83712_ _args83713_)
                 _obj83712_)
               _$e83715_)
              (error '"missing constructor"
                     'class:
                     _klass83710_
                     'method:
                     _kons-id83711_)))))
    (define struct-copy
      (lambda (_struct83708_)
        (if (let () (declare (not safe)) (##structure? _struct83708_))
            '#!void
            (error '"not a structure" _struct83708_))
        (let () (declare (not safe)) (##structure-copy _struct83708_))))
    (define struct->list
      (lambda (_obj83706_)
        (if (let () (declare (not safe)) (object? _obj83706_))
            (let () (declare (not safe)) (##vector->list _obj83706_))
            (error '"not an object" _obj83706_))))
    (define class->list
      (lambda (_obj83693_)
        (if (let () (declare (not safe)) (object? _obj83693_))
            (let ((_klass83695_
                   (let () (declare (not safe)) (object-type _obj83693_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83695_))
                  (let ((_all-slots83697_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83695_))))
                    (let _loop83699_ ((_index83701_
                                       (let ((__tmp89177
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83697_))))
                                         (declare (not safe))
                                         (##fx- __tmp89177 '1)))
                                      (_plist83702_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83701_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83695_ _plist83702_))
                          (let ((_slot83704_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83697_
                                    _index83701_))))
                            (let ((__tmp89176
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83701_ '1)))
                                  (__tmp89172
                                   (let ((__tmp89175
                                          (symbol->keyword _slot83704_))
                                         (__tmp89173
                                          (let ((__tmp89174
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83693_
                                                    _index83701_))))
                                            (declare (not safe))
                                            (cons __tmp89174 _plist83702_))))
                                     (declare (not safe))
                                     (cons __tmp89175 __tmp89173))))
                              (declare (not safe))
                              (_loop83699_ __tmp89176 __tmp89172))))))
                  (error '"not a class type"
                         'object:
                         _obj83693_
                         'class:
                         _klass83695_)))
            (error '"not an object" _obj83693_))))
    (define call-method
      (lambda (_obj83684_ _id83685_ . _args83686_)
        (let ((_$e83688_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83684_ _id83685_))))
          (if _$e83688_
              ((lambda (_method83691_)
                 (apply _method83691_ _obj83684_ _args83686_))
               _$e83688_)
              (error '"cannot find method"
                     'object:
                     _obj83684_
                     'method:
                     _id83685_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83681_ _id83682_)
        (if (let () (declare (not safe)) (object? _obj83681_))
            (let ((__tmp89178
                   (let () (declare (not safe)) (object-type _obj83681_))))
              (declare (not safe))
              (find-method __tmp89178 _id83682_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83675_ _id83676_)
        (let ((_$e83678_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83675_ _id83676_))))
          (if _$e83678_
              _$e83678_
              (error '"missing method"
                     'object:
                     _obj83675_
                     'method:
                     _id83676_)))))
    (define bound-method-ref
      (lambda (_obj83665_ _id83666_)
        (let ((_$e83668_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83665_ _id83666_))))
          (if _$e83668_
              ((lambda (_method83671_)
                 (lambda _args83673_
                   (apply _method83671_ _obj83665_ _args83673_)))
               _$e83668_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83658_ _id83659_)
        (let ((_method83661_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83658_ _id83659_))))
          (lambda _args83663_ (apply _method83661_ _obj83658_ _args83663_)))))
    (define find-method
      (lambda (_klass83655_ _id83656_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83655_))
            (let ()
              (declare (not safe))
              (__find-method _klass83655_ _id83656_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83655_ _id83656_)))))
    (define __find-method
      (lambda (_klass83649_ _id83650_)
        (let ((_$e83652_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83649_ _id83650_))))
          (if _$e83652_
              _$e83652_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83649_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83649_ _id83650_)))))))
    (define class-find-method
      (lambda (_klass83646_ _id83647_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83646_))
            (let ()
              (declare (not safe))
              (__find-method _klass83646_ _id83647_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83639_ _id83640_)
        (let ((__tmp89179
               (lambda (_g8364183643_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8364183643_ _id83640_)))))
          (declare (not safe))
          (ormap1 __tmp89179 _mixins83639_))))
    (define builtin-find-method
      (lambda (_klass83633_ _id83634_)
        (if (let () (declare (not safe)) (##type? _klass83633_))
            (let ((_$e83636_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83633_ _id83634_))))
              (if _$e83636_
                  _$e83636_
                  (let ((__tmp89180
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83633_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89180 _id83634_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83625_ _id83626_)
        (let ((_$e83628_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83625_))))
          (if _$e83628_
              ((lambda (_ht83631_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83631_ _id83626_ '#f)))
               _$e83628_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83622_ _id83623_)
        (let ((__tmp89181
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83622_))))
          (declare (not safe))
          (mixin-find-method __tmp89181 _id83623_))))
    (define builtin-method-ref
      (lambda (_klass83614_ _id83615_)
        (let ((_$e83617_
               (let ((__tmp89182
                      (let () (declare (not safe)) (##type-id _klass83614_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89182 '#f))))
          (if _$e83617_
              ((lambda (_mtab83620_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83620_ _id83615_ '#f)))
               _$e83617_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83580_ _id83581_ _proc83582_ _rebind?83583_)
        (letrec ((_bind!83585_
                  (lambda (_ht83598_)
                    (if (and (let () (declare (not safe)) (not _rebind?83583_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83598_ _id83581_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83580_
                               'method:
                               _id83581_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83598_ _id83581_ _proc83582_))))))
          (if (let () (declare (not safe)) (procedure? _proc83582_))
              '#!void
              (error '"bad method; expected procedure" _proc83582_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83580_))
              (let ((_ht83587_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83580_))))
                (if _ht83587_
                    (let () (declare (not safe)) (_bind!83585_ _ht83587_))
                    (let ((_ht83589_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83580_ _ht83589_))
                      (let () (declare (not safe)) (_bind!83585_ _ht83589_)))))
              (if (let () (declare (not safe)) (##type? _klass83580_))
                  (let ((_ht83596_
                         (let ((_$e83591_
                                (let ((__tmp89183
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83580_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89183
                                   '#f))))
                           (if _$e83591_
                               _$e83591_
                               (let ((_ht83594_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89184
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83580_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89184
                                    _ht83594_))
                                 _ht83594_)))))
                    (declare (not safe))
                    (_bind!83585_ _ht83596_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83580_))))))
    (define bind-method!__0
      (lambda (_klass83603_ _id83604_ _proc83605_)
        (let ((_rebind?83607_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83603_
           _id83604_
           _proc83605_
           _rebind?83607_))))
    (define bind-method!
      (lambda _g89186_
        (let ((_g89185_ (let () (declare (not safe)) (##length _g89186_))))
          (cond ((let () (declare (not safe)) (##fx= _g89185_ 3))
                 (apply (lambda (_klass83603_ _id83604_ _proc83605_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83603_
                             _id83604_
                             _proc83605_)))
                        _g89186_))
                ((let () (declare (not safe)) (##fx= _g89185_ 4))
                 (apply (lambda (_klass83609_
                                 _id83610_
                                 _proc83611_
                                 _rebind?83612_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83609_
                             _id83610_
                             _proc83611_
                             _rebind?83612_)))
                        _g89186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89186_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83576_ _specializer83577_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83576_ _specializer83577_))))
    (define seal-class!
      (lambda (_klass83543_)
        (letrec ((_collect-methods!83545_
                  (lambda (_mtab83561_)
                    (letrec ((_merge!83563_
                              (lambda (_tab83571_)
                                (let ((__tmp89187
                                       (lambda (_id83573_ _proc83574_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83561_
                                            _id83573_
                                            _proc83574_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89187 _tab83571_))))
                             (_collect-direct-methods!83564_
                              (lambda (_klass83566_)
                                (let ((_$e83568_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83566_))))
                                  (if _$e83568_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83563_ _$e83568_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83564_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83543_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83543_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83543_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83543_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83543_))
                    (let ((_vtab83547_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83548_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83545_ _mtab83548_))
                      (let ((__tmp89188
                             (lambda (_id83550_ _proc83551_)
                               (let ((_$e83553_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83551_
                                         '#f))))
                                 (if _$e83553_
                                     ((lambda (_specializer83556_)
                                        (let ((_proc83558_
                                               (_specializer83556_
                                                _klass83543_))
                                              (_gid83559_
                                               (let ((__tmp89189
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83543_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89189
                                                  '"::["
                                                  _id83550_
                                                  '"]"))))
                                          (eval (let ((__tmp89190
                                                       (let ((__tmp89191
                                                              (let ((__tmp89192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89193
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83558_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89193))))
                        (declare (not safe))
                        (cons __tmp89192 '()))))
                 (declare (not safe))
                 (cons _gid83559_ __tmp89191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89190)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83547_
                                             _id83550_
                                             _proc83558_))))
                                      _$e83553_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83547_
                                        _id83550_
                                        _proc83551_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89188 _mtab83548_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83543_
                         _vtab83547_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83543_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83492_ _obj83493_ _id83494_)
        (let ((_klass83496_
               (let () (declare (not safe)) (object-type _obj83493_)))
              (_type-id83497_
               (let () (declare (not safe)) (##type-id _subklass83492_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83496_))
              (let _lp83499_ ((_rest83501_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83496_))))
                (let* ((_rest8350283510_ _rest83501_)
                       (_else8350483518_ (lambda () '#f))
                       (_K8350683524_
                        (lambda (_rest83521_ _klass83522_)
                          (if (let ((__tmp89196
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83522_))))
                                (declare (not safe))
                                (eq? _type-id83497_ __tmp89196))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83521_ _id83494_))
                              (let ()
                                (declare (not safe))
                                (_lp83499_ _rest83521_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8350283510_))
                      (let ((_hd8350783527_
                             (let ()
                               (declare (not safe))
                               (##car _rest8350283510_)))
                            (_tl8350883529_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8350283510_))))
                        (let* ((_klass83532_ _hd8350783527_)
                               (_rest83534_ _tl8350883529_))
                          (declare (not safe))
                          (_K8350683524_ _rest83534_ _klass83532_)))
                      (let () (declare (not safe)) (_else8350483518_)))))
              (if (let () (declare (not safe)) (##type? _klass83496_))
                  (let _lp83536_ ((_klass83538_ _klass83496_))
                    (if (let ((__tmp89195
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83538_))))
                          (declare (not safe))
                          (eq? _type-id83497_ __tmp89195))
                        (let ((__tmp89194
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83538_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89194 _id83494_))
                        (let ((_$e83540_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83538_))))
                          (if _$e83540_
                              (let ()
                                (declare (not safe))
                                (_lp83536_ _$e83540_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83482_ _obj83483_ _id83484_ . _args83485_)
        (let ((_$e83487_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83482_ _obj83483_ _id83484_))))
          (if _$e83487_
              ((lambda (_methodf83490_)
                 (apply _methodf83490_ _obj83483_ _args83485_))
               _$e83487_)
              (error '"cannot find next method"
                     'object:
                     _obj83483_
                     'method:
                     _id83484_)))))
    (define write-style (lambda (_we83480_) (macro-writeenv-style _we83480_)))
    (define write-object
      (lambda (_we83472_ _obj83473_)
        (let ((_$e83475_
               (let () (declare (not safe)) (method-ref _obj83473_ ':wr))))
          (if _$e83475_
              ((lambda (_method83478_) (_method83478_ _obj83473_ _we83472_))
               _$e83475_)
              (let ()
                (declare (not safe))
                (##default-wr _we83472_ _obj83473_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
