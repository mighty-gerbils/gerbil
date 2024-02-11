(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707618263)
  (begin
    (define type-id
      (lambda (_klass84593_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84593_))
            (let () (declare (not safe)) (##type-id _klass84593_))
            (if (let () (declare (not safe)) (not _klass84593_))
                '#f
                (error '"not a type descriptor" _klass84593_)))))
    (define type=?
      (lambda (_x84590_ _y84591_)
        (let ((__tmp89087 (let () (declare (not safe)) (type-id _x84590_)))
              (__tmp89086 (let () (declare (not safe)) (type-id _y84591_))))
          (declare (not safe))
          (eq? __tmp89087 __tmp89086))))
    (define type-descriptor?
      (lambda (_klass84588_)
        (if (let () (declare (not safe)) (##type? _klass84588_))
            (let ((__tmp89088
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84588_))))
              (declare (not safe))
              (eq? __tmp89088 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84586_)
        (let ((__tmp89089
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84586_))))
          (declare (not safe))
          (assgetq 'struct: __tmp89089))))
    (define type-final?
      (lambda (_klass84584_)
        (let ((__tmp89090
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84584_))))
          (declare (not safe))
          (assgetq 'final: __tmp89090))))
    (define struct-type?
      (lambda (_klass84582_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84582_))
            (let () (declare (not safe)) (type-struct? _klass84582_))
            '#f)))
    (define class-type?
      (lambda (_klass84580_)
        (let () (declare (not safe)) (type-descriptor? _klass84580_))))
    (define properties-form
      (lambda (_properties84546_)
        (map (lambda (_e8454784549_)
               (let* ((_g8455184558_ _e8454784549_)
                      (_E8455384562_
                       (lambda () (error '"No clause matching" _g8455184558_)))
                      (_K8455484568_
                       (lambda (_val84565_ _key84566_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84566_ 'direct-supers:))
                             (let ((__tmp89091 (map type-id _val84565_)))
                               (declare (not safe))
                               (cons _key84566_ __tmp89091))
                             (let ()
                               (declare (not safe))
                               (cons _key84566_ _val84565_))))))
                 (if (let () (declare (not safe)) (##pair? _g8455184558_))
                     (let ((_hd8455584571_
                            (let ()
                              (declare (not safe))
                              (##car _g8455184558_)))
                           (_tl8455684573_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8455184558_))))
                       (let* ((_key84576_ _hd8455584571_)
                              (_val84578_ _tl8455684573_))
                         (declare (not safe))
                         (_K8455484568_ _val84578_ _key84576_)))
                     (let () (declare (not safe)) (_E8455384562_)))))
             _properties84546_)))
    (define make-type-descriptor
      (lambda (_type-id84459_
               _type-name84460_
               _type-super84461_
               _precedence-list84462_
               _all-slots84463_
               _properties84464_
               _constructor84465_
               _slot-table84466_
               _methods84467_)
        (letrec ((_make-props!84469_
                  (lambda (_key84515_)
                    (letrec* ((_ht84517_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84518_
                               (lambda (_ht84539_ _slots84540_)
                                 (for-each
                                  (lambda (_g8454184543_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84539_
                                       _g8454184543_
                                       '#t)))
                                  _slots84540_)))
                              (_put-alist!84519_
                               (lambda (_ht84528_ _key84529_ _alist84530_)
                                 (let ((_$e84532_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84529_ _alist84530_))))
                                   (if _$e84532_
                                       ((lambda (_g8453484536_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84518_
                                             _ht84528_
                                             _g8453484536_)))
                                        _$e84532_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84519_
                         _ht84517_
                         _key84515_
                         _properties84464_))
                      (for-each
                       (lambda (_mixin84521_)
                         (let ((_alist84523_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84521_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84523_))
                                   (let ((__tmp89093
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84515_
                                                     _alist84523_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89093)))
                               (let ((__tmp89092
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84521_))))
                                 (declare (not safe))
                                 (_put-slots!84518_ _ht84517_ __tmp89092))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84519_
                                  _ht84517_
                                  _key84515_
                                  _alist84523_)))))
                       _precedence-list84462_)
                      _ht84517_))))
          (let* ((_transparent?84471_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84464_)))
                 (_all-slots-printable?84476_
                  (let ((_$e84473_ _transparent?84471_))
                    (if _$e84473_
                        _$e84473_
                        (let ((__tmp89094
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84464_))))
                          (declare (not safe))
                          (eq? '#t __tmp89094)))))
                 (_printable84478_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84476_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84469_ 'print:))
                      '#f))
                 (_all-slots-equalable?84483_
                  (let ((_$e84480_ _transparent?84471_))
                    (if _$e84480_
                        _$e84480_
                        (let ((__tmp89095
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84464_))))
                          (declare (not safe))
                          (eq? '#t __tmp89095)))))
                 (_equalable84485_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84483_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84469_ 'equal:))
                      '#f))
                 (_first-new-field84487_
                  (if _type-super84461_
                      (let ((__tmp89096
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84461_))))
                        (declare (not safe))
                        (##vector-length __tmp89096))
                      '1))
                 (_field-info-length84489_
                  (let ((__tmp89097
                         (let ((__tmp89098
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84463_))))
                           (declare (not safe))
                           (##fx- __tmp89098 _first-new-field84487_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89097)))
                 (_field-info84491_ (make-vector _field-info-length84489_ '#f))
                 (_opaque?84496_
                  (let ((_$e84493_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84483_))))
                    (if _$e84493_
                        _$e84493_
                        (if _type-super84461_
                            (let ((__tmp89099
                                   (let ((__tmp89100
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84461_))))
                                     (declare (not safe))
                                     (##fxand __tmp89100 '1))))
                              (declare (not safe))
                              (##fx= __tmp89099 '1))
                            '#f)))))
            (let _loop84499_ ((_i84501_ _first-new-field84487_) (_j84502_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84502_ _field-info-length84489_))
                  (let* ((_slot84504_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84463_ _i84501_)))
                         (_flags84512_
                          (if _transparent?84471_
                              '0
                              (let ((__tmp89102
                                     (if (or _all-slots-printable?84476_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84478_
                                                _slot84504_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89101
                                     (if (or _all-slots-equalable?84483_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84485_
                                                _slot84504_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89102 __tmp89101)))))
                    (vector-set! _field-info84491_ _j84502_ _slot84504_)
                    (vector-set!
                     _field-info84491_
                     (let () (declare (not safe)) (##fx+ _j84502_ '1))
                     _flags84512_)
                    (let ((__tmp89104
                           (let () (declare (not safe)) (##fx+ _i84501_ '1)))
                          (__tmp89103
                           (let () (declare (not safe)) (##fx+ _j84502_ '3))))
                      (declare (not safe))
                      (_loop84499_ __tmp89104 __tmp89103)))
                  '#!void))
            (let ((__tmp89105 (if _opaque?84496_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84459_
               _type-name84460_
               __tmp89105
               _type-super84461_
               _field-info84491_
               _precedence-list84462_
               _all-slots84463_
               _slot-table84466_
               _properties84464_
               _constructor84465_
               _methods84467_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84457_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84457_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84455_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84455_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84453_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84453_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84451_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84451_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84449_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84449_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84447_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84447_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84444_ _ht84445_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84444_
           _ht84445_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84442_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84442_))))))
    (define type-descriptor-fields
      (lambda (_klass84440_)
        (let ((__tmp89106
               (let ((__tmp89107
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84440_))))
                 (declare (not safe))
                 (##vector-length __tmp89107))))
          (declare (not safe))
          (##fx- __tmp89106 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84438_)
        (let ((__tmp89108
               (let () (declare (not safe)) (##type-flags _klass84438_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89108))))
    (define type-descriptor-seal!
      (lambda (_klass84436_)
        (let ((__tmp89109
               (let ((__tmp89111
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89110
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84436_))))
                 (declare (not safe))
                 (##fxior __tmp89111 __tmp89110))))
          (declare (not safe))
          (##structure-set!
           _klass84436_
           __tmp89109
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84429_
               _name84430_
               _super84431_
               _direct-slots84432_
               _properties84433_
               _constructor84434_)
        (let ((__tmp89114
               (if _super84431_
                   (let () (declare (not safe)) (cons _super84431_ '()))
                   '()))
              (__tmp89112
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84433_))
                   _properties84433_
                   (let ((__tmp89113
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp89113 _properties84433_)))))
          (declare (not safe))
          (make-class-type
           _id84429_
           _name84430_
           __tmp89114
           _direct-slots84432_
           __tmp89112
           _constructor84434_))))
    (define make-struct-predicate
      (lambda (_klass84417_)
        (let ((_tid84419_
               (let () (declare (not safe)) (##type-id _klass84417_))))
          (if (let () (declare (not safe)) (type-final? _klass84417_))
              (lambda (_g8442084422_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8442084422_ _tid84419_)))
              (lambda (_g8442484426_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8442484426_ _tid84419_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84401_ _slot84402_)
        (let ((_$e84404_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84401_ _slot84402_))))
          (if _$e84404_
              ((lambda (_off84407_)
                 (if (let () (declare (not safe)) (type-final? _klass84401_))
                     (lambda (_g8440884410_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _g8440884410_
                          _off84407_
                          _klass84401_
                          '#f)))
                     (lambda (_g8441284414_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _g8441284414_
                          _off84407_
                          _klass84401_
                          '#f)))))
               _$e84404_)
              (error '"unknown slot"
                     'class:
                     _klass84401_
                     'slot:
                     _slot84402_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84379_ _slot84380_)
        (let ((_$e84382_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84379_ _slot84380_))))
          (if _$e84382_
              ((lambda (_off84385_)
                 (if (let () (declare (not safe)) (type-final? _klass84379_))
                     (lambda (_g8438684389_ _g8438784391_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _g8438684389_
                          _g8438784391_
                          _off84385_
                          _klass84379_
                          '#f)))
                     (lambda (_g8439384396_ _g8439484398_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _g8439384396_
                          _g8439484398_
                          _off84385_
                          _klass84379_
                          '#f)))))
               _$e84382_)
              (error '"unknown slot"
                     'class:
                     _klass84379_
                     'slot:
                     _slot84380_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84367_ _slot84368_)
        (let ((_$e84370_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84367_ _slot84368_))))
          (if _$e84370_
              ((lambda (_off84373_)
                 (lambda (_g8437484376_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _g8437484376_
                      _off84373_
                      _klass84367_
                      '#f))))
               _$e84370_)
              (error '"unknown slot"
                     'class:
                     _klass84367_
                     'slot:
                     _slot84368_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84356_ _slot84357_)
        (let ((_$e84359_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84356_ _slot84357_))))
          (if _$e84359_
              ((lambda (_off84362_)
                 (lambda (_obj84364_ _val84365_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84364_
                      _val84365_
                      _off84362_
                      _klass84356_
                      '#f))))
               _$e84359_)
              (error '"unknown slot"
                     'class:
                     _klass84356_
                     'slot:
                     _slot84357_)))))
    (define make-final-field-accessor
      (lambda (_klass84350_ _slot84351_ _field84352_)
        (lambda (_obj84354_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84354_
             _field84352_
             _klass84350_
             _slot84351_)))))
    (define make-struct-field-accessor
      (lambda (_klass84344_ _slot84345_ _field84346_)
        (lambda (_obj84348_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84348_
             _field84346_
             _klass84344_
             _slot84345_)))))
    (define make-final-field-mutator
      (lambda (_klass84337_ _slot84338_ _field84339_)
        (lambda (_obj84341_ _val84342_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84341_
             _val84342_
             _field84339_
             _klass84337_
             _slot84338_)))))
    (define make-struct-field-mutator
      (lambda (_klass84330_ _slot84331_ _field84332_)
        (lambda (_obj84334_ _val84335_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84334_
             _val84335_
             _field84332_
             _klass84330_
             _slot84331_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84324_ _slot84325_ _field84326_)
        (lambda (_obj84328_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84328_
             _field84326_
             _klass84324_
             _slot84325_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84317_ _slot84318_ _field84319_)
        (lambda (_obj84321_ _val84322_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84321_
             _val84322_
             _field84319_
             _klass84317_
             _slot84318_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84308_ _maybe-super-struct84309_)
        (let ((_maybe-super-struct-id84311_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84309_))))
          (let _lp84313_ ((_super-struct84315_ _maybe-sub-struct84308_))
            (if (let () (declare (not safe)) (not _super-struct84315_))
                '#f
                (if (let ((__tmp89116
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84315_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84311_ __tmp89116))
                    '#t
                    (let ((__tmp89115
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84315_))))
                      (declare (not safe))
                      (_lp84313_ __tmp89115))))))))
    (define base-struct/1
      (lambda (_klass84306_)
        (if (let () (declare (not safe)) (struct-type? _klass84306_))
            _klass84306_
            (if (let () (declare (not safe)) (class-type? _klass84306_))
                (let () (declare (not safe)) (##type-super _klass84306_))
                (if (let () (declare (not safe)) (not _klass84306_))
                    '#f
                    (error '"not a class or false" _klass84306_))))))
    (define base-struct/2
      (lambda (_klass184294_ _klass284295_)
        (let ((_s184297_
               (let () (declare (not safe)) (base-struct/1 _klass184294_)))
              (_s284298_
               (let () (declare (not safe)) (base-struct/1 _klass284295_))))
          (if (or (let () (declare (not safe)) (not _s184297_))
                  (and _s284298_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184297_ _s284298_))))
              _s284298_
              (if (or (let () (declare (not safe)) (not _s284298_))
                      (and _s184297_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284298_ _s184297_))))
                  _s184297_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184294_
                         _klass284295_
                         _s184297_
                         _s284298_))))))
    (define base-struct/list
      (lambda (_all-supers84178_)
        (let* ((_all-supers8417984204_ _all-supers84178_)
               (_E8418484208_
                (lambda ()
                  (error '"No clause matching" _all-supers8417984204_))))
          (let ((_K8420284291_ (lambda () '#f))
                (_K8419984277_
                 (lambda (_x84275_)
                   (let () (declare (not safe)) (base-struct/1 _x84275_))))
                (_K8419484254_
                 (lambda (_y84251_ _x84252_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84252_ _y84251_))))
                (_K8418584215_
                 (lambda (_y84212_ _x84213_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84213_ _y84212_)))))
            (let* ((___match8908389084_
                    (lambda (_hd8418684218_ _tl8418784220_)
                      (let ((_x84223_ _hd8418684218_))
                        (letrec ((_splice-rest8418984225_
                                  (lambda (_rest8419384232_ _y84234_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8419384232_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8418584215_ _y84234_ _x84223_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8418484208_)))))
                                 (_splice-try8419184227_
                                  (lambda (_hd8419284236_
                                           _rest8419384238_
                                           _y8418884239_)
                                    (let ((_y84242_ _hd8419284236_))
                                      (let ((__tmp89118
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8419384238_)))
                                            (__tmp89117
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84242_ _y8418884239_))))
                                        (declare (not safe))
                                        (_splice-loop8419084229_
                                         __tmp89118
                                         __tmp89117)))))
                                 (_splice-loop8419084229_
                                  (lambda (_rest8419384244_ _y8418884245_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8419384244_))
                                        (let ((__tmp89120
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8419384244_))))
                                          (declare (not safe))
                                          (_splice-try8419184227_
                                           __tmp89120
                                           _rest8419384244_
                                           _y8418884245_))
                                        (let ((__tmp89119
                                               (reverse _y8418884245_)))
                                          (declare (not safe))
                                          (_splice-rest8418984225_
                                           _rest8419384244_
                                           __tmp89119))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8419084229_ _tl8418784220_ '()))))))
                   (_try-match8418184287_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8417984204_))
                          (let ((_tl8420184282_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8417984204_)))
                                (_hd8420084280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8417984204_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8420184282_))
                                (let ((_x84285_ _hd8420084280_))
                                  (declare (not safe))
                                  (base-struct/1 _x84285_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8420184282_))
                                    (let ((_tl8419884266_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8420184282_)))
                                          (_hd8419784264_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8420184282_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8419884266_))
                                          (let ((_x84262_ _hd8420084280_)
                                                (_y84269_ _hd8419784264_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8419484254_
                                               _y84269_
                                               _x84262_)))
                                          (___match8908389084_
                                           _hd8420084280_
                                           _tl8420184282_)))
                                    (___match8908389084_
                                     _hd8420084280_
                                     _tl8420184282_))))
                          (let () (declare (not safe)) (_E8418484208_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8417984204_))
                  (let () (declare (not safe)) (_K8420284291_))
                  (let () (declare (not safe)) (_try-match8418184287_))))))))
    (define base-struct
      (lambda _all-supers84176_
        (let () (declare (not safe)) (base-struct/list _all-supers84176_))))
    (define find-super-ctor
      (lambda (_super84174_)
        (let () (declare (not safe)) (find-super-constructor _super84174_))))
    (define find-super-constructor
      (lambda (_super84126_)
        (let _lp84128_ ((_rest84130_ _super84126_) (_constructor84131_ '#f))
          (let* ((_rest8413284140_ _rest84130_)
                 (_else8413484148_ (lambda () _constructor84131_))
                 (_K8413684162_
                  (lambda (_rest84151_ _hd84152_)
                    (let ((_$e84154_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84152_))))
                      (if _$e84154_
                          ((lambda (_xconstructor84157_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84131_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84131_
                                            _xconstructor84157_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84128_ _rest84151_ _xconstructor84157_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84131_
                                        _xconstructor84157_)))
                           _$e84154_)
                          (let ()
                            (declare (not safe))
                            (_lp84128_ _rest84151_ _constructor84131_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8413284140_))
                (let ((_hd8413784165_
                       (let () (declare (not safe)) (##car _rest8413284140_)))
                      (_tl8413884167_
                       (let () (declare (not safe)) (##cdr _rest8413284140_))))
                  (let* ((_hd84170_ _hd8413784165_)
                         (_rest84172_ _tl8413884167_))
                    (declare (not safe))
                    (_K8413684162_ _rest84172_ _hd84170_)))
                (let () (declare (not safe)) (_else8413484148_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84102_ _direct-slots84103_)
        (let* ((_next-slot84105_ '1)
               (_slot-table84107_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84109_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84113_
                (lambda (_slot84111_)
                  (if (let () (declare (not safe)) (symbol? _slot84111_))
                      '#!void
                      (error '"invalid slot name" _slot84111_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84107_ _slot84111_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84107_
                           _slot84111_
                           _next-slot84105_))
                        (let ((__tmp89121 (symbol->keyword _slot84111_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84107_
                           __tmp89121
                           _next-slot84105_))
                        (set! _r-slots84109_
                              (let ()
                                (declare (not safe))
                                (cons _slot84111_ _r-slots84109_)))
                        (set! _next-slot84105_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84105_ '1)))))))
               (_process-slots84119_
                (lambda (_g8411484116_)
                  (for-each _process-slot84113_ _g8411484116_))))
          (for-each
           (lambda (_mixin84122_)
             (let ((__tmp89122
                    (let ((__tmp89123
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84122_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89123 '()))))
               (declare (not safe))
               (_process-slots84119_ __tmp89122)))
           (reverse _class-precedence-list84102_))
          (let ()
            (declare (not safe))
            (_process-slots84119_ _direct-slots84103_))
          (let ((_all-slots84124_ (list->vector (reverse _r-slots84109_))))
            (values _all-slots84124_ _slot-table84107_)))))
    (define make-class-type
      (lambda (_id84065_
               _name84066_
               _direct-supers84067_
               _direct-slots84068_
               _properties84069_
               _constructor84070_)
        (let ((_$e84074_
               (let ((__tmp89124
                      (lambda (_klass84072_)
                        (let ((__tmp89125
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84072_))))
                          (declare (not safe))
                          (not __tmp89125)))))
                 (declare (not safe))
                 (find __tmp89124 _direct-supers84067_))))
          (if _$e84074_
              ((lambda (_g8407684078_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8407684078_))
               _$e84074_)
              (let ((_$e84081_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84067_))))
                (if _$e84081_
                    ((lambda (_g8408384085_)
                       (error '"Cannot extend final class" _g8408384085_))
                     _$e84081_)
                    '#!void))))
        (let ((_g89126_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84067_))))
          (begin
            (let ((_g89127_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89126_) (##vector-length _g89126_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89127_ 2)))
                  (error "Context expects 2 values" _g89127_)))
            (let ((_precedence-list84088_
                   (let () (declare (not safe)) (##vector-ref _g89126_ 0)))
                  (_struct-super84089_
                   (let () (declare (not safe)) (##vector-ref _g89126_ 1))))
              (let ((_g89128_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84088_
                        _direct-slots84068_))))
                (begin
                  (let ((_g89129_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89128_)
                               (##vector-length _g89128_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89129_ 2)))
                        (error "Context expects 2 values" _g89129_)))
                  (let ((_all-slots84091_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89128_ 0)))
                        (_slot-table84092_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89128_ 1))))
                    (let* ((_properties84094_
                            (let ((__tmp89132
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84068_)))
                                  (__tmp89130
                                   (let ((__tmp89131
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84067_))))
                                     (declare (not safe))
                                     (cons __tmp89131 _properties84069_))))
                              (declare (not safe))
                              (cons __tmp89132 __tmp89130)))
                           (_constructor*84099_
                            (let ((_$e84096_ _constructor84070_))
                              (if _$e84096_
                                  _$e84096_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84067_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84065_
                         _name84066_
                         _struct-super84089_
                         _precedence-list84088_
                         _all-slots84091_
                         _properties84094_
                         _constructor*84099_
                         _slot-table84092_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84063_)
        (let ((__tmp89133
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84063_))))
          (declare (not safe))
          (cons _klass84063_ __tmp89133))))
    (define compute-precedence-list
      (lambda (_direct-supers84061_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84061_))))
    (define make-class-predicate
      (lambda (_klass84051_)
        (if (let () (declare (not safe)) (type-final? _klass84051_))
            (lambda (_g8405284054_)
              (let ((__tmp89134
                     (let () (declare (not safe)) (##type-id _klass84051_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8405284054_ __tmp89134)))
            (lambda (_g8405684058_)
              (let ()
                (declare (not safe))
                (class-instance? _klass84051_ _g8405684058_))))))
    (define if-class-slot-field
      (lambda (_klass84040_
               _slot84041_
               _if-final84042_
               _if-struct84043_
               _if-struct-field84044_
               _if-class-slot84045_)
        (let ((_field84047_
               (let ((__tmp89135
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84040_))))
                 (declare (not safe))
                 (table-ref __tmp89135 _slot84041_ '#f))))
          (if (let () (declare (not safe)) (not _field84047_))
              (error '"unknown slot" 'class: _klass84040_ 'slot: _slot84041_)
              (if (let () (declare (not safe)) (type-final? _klass84040_))
                  (_if-final84042_ _klass84040_ _slot84041_ _field84047_)
                  (if (let () (declare (not safe)) (type-struct? _klass84040_))
                      (_if-struct84043_ _klass84040_ _slot84041_ _field84047_)
                      (if (let ((_strukt84049_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84040_))))
                            (and _strukt84049_
                                 (let ((__tmp89136
                                        (let ((__tmp89137
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84049_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89137))))
                                   (declare (not safe))
                                   (##fx< _field84047_ __tmp89136))))
                          (_if-struct-field84044_
                           _klass84040_
                           _slot84041_
                           _field84047_)
                          (_if-class-slot84045_
                           _klass84040_
                           _slot84041_
                           _field84047_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84037_ _slot84038_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84037_
           _slot84038_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object84021_ _class84022_ _slot84023_)
        (apply error
               '"not an instance"
               'object:
               _object84021_
               'class:
               _class84022_
               (if _slot84023_
                   (let ((__tmp89138
                          (let ()
                            (declare (not safe))
                            (cons _slot84023_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89138))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84028_ _class84029_)
        (let ((_slot84031_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84028_ _class84029_ _slot84031_))))
    (define not-an-instance
      (lambda _g89140_
        (let ((_g89139_ (let () (declare (not safe)) (##length _g89140_))))
          (cond ((let () (declare (not safe)) (##fx= _g89139_ 2))
                 (apply (lambda (_object84028_ _class84029_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84028_ _class84029_)))
                        _g89140_))
                ((let () (declare (not safe)) (##fx= _g89139_ 3))
                 (apply (lambda (_object84033_ _class84034_ _slot84035_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84033_
                             _class84034_
                             _slot84035_)))
                        _g89140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89140_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass84014_ _slot84015_ _field84016_)
        (lambda (_obj84018_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84014_ _obj84018_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84018_ _field84016_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84018_ _klass84014_ _slot84015_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84008_ _slot84009_ _field84010_)
        (lambda (_obj84012_)
          (if (let ((__tmp89141
                     (let () (declare (not safe)) (##type-id _klass84008_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84012_ __tmp89141))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84012_ _field84010_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84008_ _obj84012_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84012_ _slot84009_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84012_
                     _klass84008_
                     _slot84009_)))))))
    (define make-class-slot-mutator
      (lambda (_klass84005_ _slot84006_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84005_
           _slot84006_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass83998_ _slot83999_ _field84000_)
        (lambda (_obj84002_ _val84003_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83998_ _obj84002_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84002_ _field84000_ _val84003_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84002_ _klass83998_ _slot83999_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83991_ _slot83992_ _field83993_)
        (lambda (_obj83995_ _val83996_)
          (if (let ((__tmp89142
                     (let () (declare (not safe)) (##type-id _klass83991_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83995_ __tmp89142))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83995_ _field83993_ _val83996_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83991_ _obj83995_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83995_ _slot83992_ _val83996_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83995_
                     _klass83991_
                     _slot83992_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83988_ _slot83989_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83988_
           _slot83989_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83982_ _slot83983_ _field83984_)
        (lambda (_obj83986_)
          (if (let ((__tmp89143
                     (let () (declare (not safe)) (##type-id _klass83982_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83986_ __tmp89143))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83986_ _field83984_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83986_ _slot83983_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83979_ _slot83980_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83979_
           _slot83980_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83972_ _slot83973_ _field83974_)
        (lambda (_obj83976_ _val83977_)
          (if (let ((__tmp89144
                     (let () (declare (not safe)) (##type-id _klass83972_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83976_ __tmp89144))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83976_ _field83974_ _val83977_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83976_ _slot83973_ _val83977_))))))
    (define class-slot-offset
      (lambda (_klass83969_ _slot83970_)
        (let ((__tmp89145
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83969_))))
          (declare (not safe))
          (table-ref __tmp89145 _slot83970_ '#f))))
    (define class-slot-ref
      (lambda (_klass83963_ _obj83964_ _slot83965_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83963_ _obj83964_))
            (let ((_off83967_
                   (let ((__tmp89146
                          (let ()
                            (declare (not safe))
                            (object-type _obj83964_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89146 _slot83965_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83964_
               _off83967_
               _klass83963_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83964_ _klass83963_)))))
    (define class-slot-set!
      (lambda (_klass83956_ _obj83957_ _slot83958_ _val83959_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83956_ _obj83957_))
            (let ((_off83961_
                   (let ((__tmp89147
                          (let ()
                            (declare (not safe))
                            (object-type _obj83957_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89147 _slot83958_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83957_
               _val83959_
               _off83961_
               _klass83956_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83957_ _klass83956_)))))
    (define unchecked-field-ref
      (lambda (_obj83953_ _off83954_)
        (let ((__tmp89148
               (let () (declare (not safe)) (##structure-type _obj83953_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83953_ _off83954_ __tmp89148 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83949_ _off83950_ _val83951_)
        (let ((__tmp89149
               (let () (declare (not safe)) (##structure-type _obj83949_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83949_
           _val83951_
           _off83950_
           __tmp89149
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83946_ _slot83947_)
        (let ((__tmp89150
               (let ((__tmp89151
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83946_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89151 _slot83947_))))
          (declare (not safe))
          (unchecked-field-ref _obj83946_ __tmp89150))))
    (define unchecked-slot-set!
      (lambda (_obj83942_ _slot83943_ _val83944_)
        (let ((__tmp89152
               (let ((__tmp89153
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83942_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89153 _slot83943_))))
          (declare (not safe))
          (unchecked-field-set! _obj83942_ __tmp89152 _val83944_))))
    (define slot-ref__%
      (lambda (_obj83918_ _slot83919_ _E83920_)
        (if (let () (declare (not safe)) (object? _obj83918_))
            (let* ((_klass83922_
                    (let () (declare (not safe)) (object-type _obj83918_)))
                   (_$e83925_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83922_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83922_ _slot83919_))
                        '#f)))
              (if _$e83925_
                  ((lambda (_off83928_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83918_ _off83928_)))
                   _$e83925_)
                  (_E83920_ _obj83918_ _slot83919_)))
            (_E83920_ _obj83918_ _slot83919_))))
    (define slot-ref__0
      (lambda (_obj83933_ _slot83934_)
        (let ((_E83936_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83933_ _slot83934_ _E83936_))))
    (define slot-ref
      (lambda _g89155_
        (let ((_g89154_ (let () (declare (not safe)) (##length _g89155_))))
          (cond ((let () (declare (not safe)) (##fx= _g89154_ 2))
                 (apply (lambda (_obj83933_ _slot83934_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83933_ _slot83934_)))
                        _g89155_))
                ((let () (declare (not safe)) (##fx= _g89154_ 3))
                 (apply (lambda (_obj83938_ _slot83939_ _E83940_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83938_ _slot83939_ _E83940_)))
                        _g89155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89155_))))))
    (define slot-set!__%
      (lambda (_obj83890_ _slot83891_ _val83892_ _E83893_)
        (if (let () (declare (not safe)) (object? _obj83890_))
            (let* ((_klass83895_
                    (let () (declare (not safe)) (object-type _obj83890_)))
                   (_$e83898_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83895_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83895_ _slot83891_))
                        '#f)))
              (if _$e83898_
                  ((lambda (_off83901_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83890_
                        _off83901_
                        _val83892_)))
                   _$e83898_)
                  (_E83893_ _obj83890_ _slot83891_)))
            (_E83893_ _obj83890_ _slot83891_))))
    (define slot-set!__0
      (lambda (_obj83906_ _slot83907_ _val83908_)
        (let ((_E83910_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83906_ _slot83907_ _val83908_ _E83910_))))
    (define slot-set!
      (lambda _g89157_
        (let ((_g89156_ (let () (declare (not safe)) (##length _g89157_))))
          (cond ((let () (declare (not safe)) (##fx= _g89156_ 3))
                 (apply (lambda (_obj83906_ _slot83907_ _val83908_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83906_ _slot83907_ _val83908_)))
                        _g89157_))
                ((let () (declare (not safe)) (##fx= _g89156_ 4))
                 (apply (lambda (_obj83912_ _slot83913_ _val83914_ _E83915_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83912_
                             _slot83913_
                             _val83914_
                             _E83915_)))
                        _g89157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89157_))))))
    (define __slot-error
      (lambda (_obj83886_ _slot83887_)
        (error '"Cannot find slot" 'object: _obj83886_ 'slot: _slot83887_)))
    (define subclass?
      (lambda (_maybe-sub-class83876_ _maybe-super-class83877_)
        (let* ((_maybe-super-class-id83879_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83877_)))
               (_$e83881_
                (let ((__tmp89158
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83876_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83879_ __tmp89158))))
          (if _$e83881_
              _$e83881_
              (let ((__tmp89160
                     (lambda (_super-class83884_)
                       (let ((__tmp89161
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83884_))))
                         (declare (not safe))
                         (eq? __tmp89161 _maybe-super-class-id83879_))))
                    (__tmp89159
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83876_))))
                (declare (not safe))
                (ormap1 __tmp89160 __tmp89159))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83873_ _obj83874_)
        (let ((__tmp89162
               (let () (declare (not safe)) (##type-id _klass83873_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83874_ __tmp89162))))
    (define struct-instance?
      (lambda (_klass83870_ _obj83871_)
        (let ((__tmp89163
               (let () (declare (not safe)) (##type-id _klass83870_))))
          (declare (not safe))
          (##structure-instance-of? _obj83871_ __tmp89163))))
    (define class-instance?
      (lambda (_klass83865_ _obj83866_)
        (if (let () (declare (not safe)) (object? _obj83866_))
            (let ((_type83868_
                   (let () (declare (not safe)) (object-type _obj83866_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83868_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83868_ _klass83865_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83860_ _k83861_)
        (let ((_obj83863_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83860_ _k83861_))))
          (let () (declare (not safe)) (object-fill! _obj83863_ '#f))
          _obj83863_)))
    (define object-fill!
      (lambda (_obj83853_ _fill83854_)
        (let _loop83856_ ((_i83858_
                           (let ((__tmp89165
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83853_))))
                             (declare (not safe))
                             (##fx- __tmp89165 '1))))
          (if (let () (declare (not safe)) (##fx> _i83858_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83853_
                   _fill83854_
                   _i83858_
                   '#f
                   '#f))
                (let ((__tmp89164
                       (let () (declare (not safe)) (##fx- _i83858_ '1))))
                  (declare (not safe))
                  (_loop83856_ __tmp89164)))
              _obj83853_))))
    (define make-instance
      (lambda (_klass83851_)
        (let ((__obj89085
               (let ((__tmp89166
                      (let ((__tmp89167
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83851_))))
                        (declare (not safe))
                        (##vector-length __tmp89167))))
                 (declare (not safe))
                 (##make-structure _klass83851_ __tmp89166))))
          (let () (declare (not safe)) (object-fill! __obj89085 '#f))
          __obj89085)))
    (define make-struct-instance
      (lambda (_klass83841_ . _args83842_)
        (let* ((_obj83844_
                (let () (declare (not safe)) (make-instance _klass83841_)))
               (_$e83846_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83841_))))
          (if _$e83846_
              ((lambda (_kons-id83849_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83841_
                    _kons-id83849_
                    _obj83844_
                    _args83842_)))
               _$e83846_)
              (if (let ((__tmp89169
                         (let ((__tmp89170
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83844_))))
                           (declare (not safe))
                           (##fx- __tmp89170 '1)))
                        (__tmp89168 (length _args83842_)))
                    (declare (not safe))
                    (##fx= __tmp89169 __tmp89168))
                  (apply ##structure _klass83841_ _args83842_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83841_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83841_))
                         'args:
                         _args83842_))))))
    (define make-class-instance
      (lambda (_klass83831_ . _args83832_)
        (let* ((_obj83834_
                (let () (declare (not safe)) (make-instance _klass83831_)))
               (_$e83836_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83831_))))
          (if _$e83836_
              ((lambda (_kons-id83839_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83831_
                    _kons-id83839_
                    _obj83834_
                    _args83832_)))
               _$e83836_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83831_
                 _obj83834_
                 _args83832_))))))
    (define struct-instance-init!
      (lambda (_obj83828_ . _args83829_)
        (if (let ((__tmp89172 (length _args83829_))
                  (__tmp89171
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83828_))))
              (declare (not safe))
              (##fx< __tmp89172 __tmp89171))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83828_ _args83829_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83828_
                   'args:
                   _args83829_))))
    (define __struct-instance-init!
      (lambda (_obj83787_ _args83788_)
        (let _lp83790_ ((_k83792_ '1) (_rest83793_ _args83788_))
          (let* ((_rest8379483802_ _rest83793_)
                 (_else8379683810_ (lambda () _obj83787_))
                 (_K8379883816_
                  (lambda (_rest83813_ _hd83814_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83787_ _k83792_ _hd83814_))
                    (let ((__tmp89173
                           (let () (declare (not safe)) (##fx+ _k83792_ '1))))
                      (declare (not safe))
                      (_lp83790_ __tmp89173 _rest83813_)))))
            (if (let () (declare (not safe)) (##pair? _rest8379483802_))
                (let ((_hd8379983819_
                       (let () (declare (not safe)) (##car _rest8379483802_)))
                      (_tl8380083821_
                       (let () (declare (not safe)) (##cdr _rest8379483802_))))
                  (let* ((_hd83824_ _hd8379983819_)
                         (_rest83826_ _tl8380083821_))
                    (declare (not safe))
                    (_K8379883816_ _rest83826_ _hd83824_)))
                (let () (declare (not safe)) (_else8379683810_)))))))
    (define class-instance-init!
      (lambda (_obj83784_ . _args83785_)
        (let ((__tmp89174
               (let () (declare (not safe)) (object-type _obj83784_))))
          (declare (not safe))
          (__class-instance-init! __tmp89174 _obj83784_ _args83785_))))
    (define __class-instance-init!
      (lambda (_klass83728_ _obj83729_ _args83730_)
        (let _lp83732_ ((_rest83734_ _args83730_))
          (let* ((_rest8373583745_ _rest83734_)
                 (_else8373783753_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83734_))
                        _obj83729_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83728_
                               'rest:
                               _rest83734_))))
                 (_K8373983765_
                  (lambda (_rest83756_ _val83757_ _key83758_)
                    (let ((_$e83760_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83728_ _key83758_))))
                      (if _$e83760_
                          ((lambda (_off83763_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83729_
                                _off83763_
                                _val83757_))
                             (let ()
                               (declare (not safe))
                               (_lp83732_ _rest83756_)))
                           _$e83760_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83728_
                                 'slot:
                                 _key83758_))))))
            (if (let () (declare (not safe)) (##pair? _rest8373583745_))
                (let ((_hd8374083768_
                       (let () (declare (not safe)) (##car _rest8373583745_)))
                      (_tl8374183770_
                       (let () (declare (not safe)) (##cdr _rest8373583745_))))
                  (let ((_key83773_ _hd8374083768_))
                    (if (let () (declare (not safe)) (##pair? _tl8374183770_))
                        (let ((_hd8374283775_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8374183770_)))
                              (_tl8374383777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8374183770_))))
                          (let* ((_val83780_ _hd8374283775_)
                                 (_rest83782_ _tl8374383777_))
                            (declare (not safe))
                            (_K8373983765_ _rest83782_ _val83780_ _key83773_)))
                        (let () (declare (not safe)) (_else8373783753_)))))
                (let () (declare (not safe)) (_else8373783753_)))))))
    (define constructor-init!
      (lambda (_klass83723_ _kons-id83724_ _obj83725_ . _args83726_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83723_
           _kons-id83724_
           _obj83725_
           _args83726_))))
    (define __constructor-init!
      (lambda (_klass83713_ _kons-id83714_ _obj83715_ _args83716_)
        (let ((_$e83718_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83713_ _kons-id83714_))))
          (if _$e83718_
              ((lambda (_kons83721_)
                 (apply _kons83721_ _obj83715_ _args83716_)
                 _obj83715_)
               _$e83718_)
              (error '"missing constructor"
                     'class:
                     _klass83713_
                     'method:
                     _kons-id83714_)))))
    (define struct-copy
      (lambda (_struct83711_)
        (if (let () (declare (not safe)) (##structure? _struct83711_))
            '#!void
            (error '"not a structure" _struct83711_))
        (let () (declare (not safe)) (##structure-copy _struct83711_))))
    (define struct->list
      (lambda (_obj83709_)
        (if (let () (declare (not safe)) (object? _obj83709_))
            (let () (declare (not safe)) (##vector->list _obj83709_))
            (error '"not an object" _obj83709_))))
    (define class->list
      (lambda (_obj83696_)
        (if (let () (declare (not safe)) (object? _obj83696_))
            (let ((_klass83698_
                   (let () (declare (not safe)) (object-type _obj83696_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83698_))
                  (let ((_all-slots83700_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83698_))))
                    (let _loop83702_ ((_index83704_
                                       (let ((__tmp89180
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83700_))))
                                         (declare (not safe))
                                         (##fx- __tmp89180 '1)))
                                      (_plist83705_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83704_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83698_ _plist83705_))
                          (let ((_slot83707_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83700_
                                    _index83704_))))
                            (let ((__tmp89179
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83704_ '1)))
                                  (__tmp89175
                                   (let ((__tmp89178
                                          (symbol->keyword _slot83707_))
                                         (__tmp89176
                                          (let ((__tmp89177
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83696_
                                                    _index83704_))))
                                            (declare (not safe))
                                            (cons __tmp89177 _plist83705_))))
                                     (declare (not safe))
                                     (cons __tmp89178 __tmp89176))))
                              (declare (not safe))
                              (_loop83702_ __tmp89179 __tmp89175))))))
                  (error '"not a class type"
                         'object:
                         _obj83696_
                         'class:
                         _klass83698_)))
            (error '"not an object" _obj83696_))))
    (define call-method
      (lambda (_obj83687_ _id83688_ . _args83689_)
        (let ((_$e83691_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83687_ _id83688_))))
          (if _$e83691_
              ((lambda (_method83694_)
                 (apply _method83694_ _obj83687_ _args83689_))
               _$e83691_)
              (error '"cannot find method"
                     'object:
                     _obj83687_
                     'method:
                     _id83688_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83684_ _id83685_)
        (if (let () (declare (not safe)) (object? _obj83684_))
            (let ((__tmp89181
                   (let () (declare (not safe)) (object-type _obj83684_))))
              (declare (not safe))
              (find-method __tmp89181 _id83685_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83678_ _id83679_)
        (let ((_$e83681_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83678_ _id83679_))))
          (if _$e83681_
              _$e83681_
              (error '"missing method"
                     'object:
                     _obj83678_
                     'method:
                     _id83679_)))))
    (define bound-method-ref
      (lambda (_obj83668_ _id83669_)
        (let ((_$e83671_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83668_ _id83669_))))
          (if _$e83671_
              ((lambda (_method83674_)
                 (lambda _args83676_
                   (apply _method83674_ _obj83668_ _args83676_)))
               _$e83671_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83661_ _id83662_)
        (let ((_method83664_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83661_ _id83662_))))
          (lambda _args83666_ (apply _method83664_ _obj83661_ _args83666_)))))
    (define find-method
      (lambda (_klass83658_ _id83659_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83658_))
            (let ()
              (declare (not safe))
              (__find-method _klass83658_ _id83659_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83658_ _id83659_)))))
    (define __find-method
      (lambda (_klass83652_ _id83653_)
        (let ((_$e83655_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83652_ _id83653_))))
          (if _$e83655_
              _$e83655_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83652_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83652_ _id83653_)))))))
    (define class-find-method
      (lambda (_klass83649_ _id83650_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83649_))
            (let ()
              (declare (not safe))
              (__find-method _klass83649_ _id83650_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83642_ _id83643_)
        (let ((__tmp89182
               (lambda (_g8364483646_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8364483646_ _id83643_)))))
          (declare (not safe))
          (ormap1 __tmp89182 _mixins83642_))))
    (define builtin-find-method
      (lambda (_klass83636_ _id83637_)
        (if (let () (declare (not safe)) (##type? _klass83636_))
            (let ((_$e83639_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83636_ _id83637_))))
              (if _$e83639_
                  _$e83639_
                  (let ((__tmp89183
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83636_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89183 _id83637_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83628_ _id83629_)
        (let ((_$e83631_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83628_))))
          (if _$e83631_
              ((lambda (_ht83634_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83634_ _id83629_ '#f)))
               _$e83631_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83625_ _id83626_)
        (let ((__tmp89184
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83625_))))
          (declare (not safe))
          (mixin-find-method __tmp89184 _id83626_))))
    (define builtin-method-ref
      (lambda (_klass83617_ _id83618_)
        (let ((_$e83620_
               (let ((__tmp89185
                      (let () (declare (not safe)) (##type-id _klass83617_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89185 '#f))))
          (if _$e83620_
              ((lambda (_mtab83623_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83623_ _id83618_ '#f)))
               _$e83620_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83583_ _id83584_ _proc83585_ _rebind?83586_)
        (letrec ((_bind!83588_
                  (lambda (_ht83601_)
                    (if (and (let () (declare (not safe)) (not _rebind?83586_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83601_ _id83584_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83583_
                               'method:
                               _id83584_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83601_ _id83584_ _proc83585_))))))
          (if (let () (declare (not safe)) (procedure? _proc83585_))
              '#!void
              (error '"bad method; expected procedure" _proc83585_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83583_))
              (let ((_ht83590_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83583_))))
                (if _ht83590_
                    (let () (declare (not safe)) (_bind!83588_ _ht83590_))
                    (let ((_ht83592_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83583_ _ht83592_))
                      (let () (declare (not safe)) (_bind!83588_ _ht83592_)))))
              (if (let () (declare (not safe)) (##type? _klass83583_))
                  (let ((_ht83599_
                         (let ((_$e83594_
                                (let ((__tmp89186
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83583_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89186
                                   '#f))))
                           (if _$e83594_
                               _$e83594_
                               (let ((_ht83597_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89187
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83583_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89187
                                    _ht83597_))
                                 _ht83597_)))))
                    (declare (not safe))
                    (_bind!83588_ _ht83599_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83583_))))))
    (define bind-method!__0
      (lambda (_klass83606_ _id83607_ _proc83608_)
        (let ((_rebind?83610_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83606_
           _id83607_
           _proc83608_
           _rebind?83610_))))
    (define bind-method!
      (lambda _g89189_
        (let ((_g89188_ (let () (declare (not safe)) (##length _g89189_))))
          (cond ((let () (declare (not safe)) (##fx= _g89188_ 3))
                 (apply (lambda (_klass83606_ _id83607_ _proc83608_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83606_
                             _id83607_
                             _proc83608_)))
                        _g89189_))
                ((let () (declare (not safe)) (##fx= _g89188_ 4))
                 (apply (lambda (_klass83612_
                                 _id83613_
                                 _proc83614_
                                 _rebind?83615_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83612_
                             _id83613_
                             _proc83614_
                             _rebind?83615_)))
                        _g89189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89189_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83579_ _specializer83580_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83579_ _specializer83580_))))
    (define seal-class!
      (lambda (_klass83546_)
        (letrec ((_collect-methods!83548_
                  (lambda (_mtab83564_)
                    (letrec ((_merge!83566_
                              (lambda (_tab83574_)
                                (let ((__tmp89190
                                       (lambda (_id83576_ _proc83577_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83564_
                                            _id83576_
                                            _proc83577_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89190 _tab83574_))))
                             (_collect-direct-methods!83567_
                              (lambda (_klass83569_)
                                (let ((_$e83571_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83569_))))
                                  (if _$e83571_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83566_ _$e83571_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83567_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83546_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83546_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83546_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83546_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83546_))
                    (let ((_vtab83550_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83551_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83548_ _mtab83551_))
                      (let ((__tmp89191
                             (lambda (_id83553_ _proc83554_)
                               (let ((_$e83556_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83554_
                                         '#f))))
                                 (if _$e83556_
                                     ((lambda (_specializer83559_)
                                        (let ((_proc83561_
                                               (_specializer83559_
                                                _klass83546_))
                                              (_gid83562_
                                               (let ((__tmp89192
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83546_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89192
                                                  '"::["
                                                  _id83553_
                                                  '"]"))))
                                          (eval (let ((__tmp89193
                                                       (let ((__tmp89194
                                                              (let ((__tmp89195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89196
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83561_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89196))))
                        (declare (not safe))
                        (cons __tmp89195 '()))))
                 (declare (not safe))
                 (cons _gid83562_ __tmp89194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89193)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83550_
                                             _id83553_
                                             _proc83561_))))
                                      _$e83556_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83550_
                                        _id83553_
                                        _proc83554_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89191 _mtab83551_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83546_
                         _vtab83550_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83546_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83495_ _obj83496_ _id83497_)
        (let ((_klass83499_
               (let () (declare (not safe)) (object-type _obj83496_)))
              (_type-id83500_
               (let () (declare (not safe)) (##type-id _subklass83495_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83499_))
              (let _lp83502_ ((_rest83504_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83499_))))
                (let* ((_rest8350583513_ _rest83504_)
                       (_else8350783521_ (lambda () '#f))
                       (_K8350983527_
                        (lambda (_rest83524_ _klass83525_)
                          (if (let ((__tmp89199
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83525_))))
                                (declare (not safe))
                                (eq? _type-id83500_ __tmp89199))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83524_ _id83497_))
                              (let ()
                                (declare (not safe))
                                (_lp83502_ _rest83524_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8350583513_))
                      (let ((_hd8351083530_
                             (let ()
                               (declare (not safe))
                               (##car _rest8350583513_)))
                            (_tl8351183532_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8350583513_))))
                        (let* ((_klass83535_ _hd8351083530_)
                               (_rest83537_ _tl8351183532_))
                          (declare (not safe))
                          (_K8350983527_ _rest83537_ _klass83535_)))
                      (let () (declare (not safe)) (_else8350783521_)))))
              (if (let () (declare (not safe)) (##type? _klass83499_))
                  (let _lp83539_ ((_klass83541_ _klass83499_))
                    (if (let ((__tmp89198
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83541_))))
                          (declare (not safe))
                          (eq? _type-id83500_ __tmp89198))
                        (let ((__tmp89197
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83541_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89197 _id83497_))
                        (let ((_$e83543_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83541_))))
                          (if _$e83543_
                              (let ()
                                (declare (not safe))
                                (_lp83539_ _$e83543_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83485_ _obj83486_ _id83487_ . _args83488_)
        (let ((_$e83490_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83485_ _obj83486_ _id83487_))))
          (if _$e83490_
              ((lambda (_methodf83493_)
                 (apply _methodf83493_ _obj83486_ _args83488_))
               _$e83490_)
              (error '"cannot find next method"
                     'object:
                     _obj83486_
                     'method:
                     _id83487_)))))
    (define write-style (lambda (_we83483_) (macro-writeenv-style _we83483_)))
    (define write-object
      (lambda (_we83475_ _obj83476_)
        (let ((_$e83478_
               (let () (declare (not safe)) (method-ref _obj83476_ ':wr))))
          (if _$e83478_
              ((lambda (_method83481_) (_method83481_ _obj83476_ _we83475_))
               _$e83478_)
              (let ()
                (declare (not safe))
                (##default-wr _we83475_ _obj83476_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
