(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707601715)
  (begin
    (define type-id
      (lambda (_klass84554_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84554_))
            (let () (declare (not safe)) (##type-id _klass84554_))
            (if (let () (declare (not safe)) (not _klass84554_))
                '#f
                (error '"not a type descriptor" _klass84554_)))))
    (define type=?
      (lambda (_x84551_ _y84552_)
        (let ((__tmp89048 (let () (declare (not safe)) (type-id _x84551_)))
              (__tmp89047 (let () (declare (not safe)) (type-id _y84552_))))
          (declare (not safe))
          (eq? __tmp89048 __tmp89047))))
    (define type-descriptor?
      (lambda (_klass84549_)
        (if (let () (declare (not safe)) (##type? _klass84549_))
            (let ((__tmp89049
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84549_))))
              (declare (not safe))
              (eq? __tmp89049 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84547_)
        (let ((__tmp89050
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84547_))))
          (declare (not safe))
          (assgetq 'struct: __tmp89050))))
    (define type-final?
      (lambda (_klass84545_)
        (let ((__tmp89051
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass84545_))))
          (declare (not safe))
          (assgetq 'final: __tmp89051))))
    (define struct-type?
      (lambda (_klass84543_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84543_))
            (let () (declare (not safe)) (type-struct? _klass84543_))
            '#f)))
    (define class-type?
      (lambda (_klass84541_)
        (let () (declare (not safe)) (type-descriptor? _klass84541_))))
    (define properties-form
      (lambda (_properties84507_)
        (map (lambda (_e8450884510_)
               (let* ((_g8451284519_ _e8450884510_)
                      (_E8451484523_
                       (lambda () (error '"No clause matching" _g8451284519_)))
                      (_K8451584529_
                       (lambda (_val84526_ _key84527_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84527_ 'direct-supers:))
                             (let ((__tmp89052 (map type-id _val84526_)))
                               (declare (not safe))
                               (cons _key84527_ __tmp89052))
                             (let ()
                               (declare (not safe))
                               (cons _key84527_ _val84526_))))))
                 (if (let () (declare (not safe)) (##pair? _g8451284519_))
                     (let ((_hd8451684532_
                            (let ()
                              (declare (not safe))
                              (##car _g8451284519_)))
                           (_tl8451784534_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8451284519_))))
                       (let* ((_key84537_ _hd8451684532_)
                              (_val84539_ _tl8451784534_))
                         (declare (not safe))
                         (_K8451584529_ _val84539_ _key84537_)))
                     (let () (declare (not safe)) (_E8451484523_)))))
             _properties84507_)))
    (define make-type-descriptor
      (lambda (_type-id84420_
               _type-name84421_
               _type-super84422_
               _precedence-list84423_
               _all-slots84424_
               _properties84425_
               _constructor84426_
               _slot-table84427_
               _methods84428_)
        (letrec ((_make-props!84430_
                  (lambda (_key84476_)
                    (letrec* ((_ht84478_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84479_
                               (lambda (_ht84500_ _slots84501_)
                                 (for-each
                                  (lambda (_g8450284504_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84500_
                                       _g8450284504_
                                       '#t)))
                                  _slots84501_)))
                              (_put-alist!84480_
                               (lambda (_ht84489_ _key84490_ _alist84491_)
                                 (let ((_$e84493_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84490_ _alist84491_))))
                                   (if _$e84493_
                                       ((lambda (_g8449584497_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84479_
                                             _ht84489_
                                             _g8449584497_)))
                                        _$e84493_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84480_
                         _ht84478_
                         _key84476_
                         _properties84425_))
                      (for-each
                       (lambda (_mixin84482_)
                         (let ((_alist84484_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84482_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84484_))
                                   (let ((__tmp89054
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84476_
                                                     _alist84484_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89054)))
                               (let ((__tmp89053
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84482_))))
                                 (declare (not safe))
                                 (_put-slots!84479_ _ht84478_ __tmp89053))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84480_
                                  _ht84478_
                                  _key84476_
                                  _alist84484_)))))
                       _precedence-list84423_)
                      _ht84478_))))
          (let* ((_transparent?84432_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84425_)))
                 (_all-slots-printable?84437_
                  (let ((_$e84434_ _transparent?84432_))
                    (if _$e84434_
                        _$e84434_
                        (let ((__tmp89055
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84425_))))
                          (declare (not safe))
                          (eq? '#t __tmp89055)))))
                 (_printable84439_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84437_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84430_ 'print:))
                      '#f))
                 (_all-slots-equalable?84444_
                  (let ((_$e84441_ _transparent?84432_))
                    (if _$e84441_
                        _$e84441_
                        (let ((__tmp89056
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84425_))))
                          (declare (not safe))
                          (eq? '#t __tmp89056)))))
                 (_equalable84446_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84444_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84430_ 'equal:))
                      '#f))
                 (_first-new-field84448_
                  (if _type-super84422_
                      (let ((__tmp89057
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84422_))))
                        (declare (not safe))
                        (##vector-length __tmp89057))
                      '1))
                 (_field-info-length84450_
                  (let ((__tmp89058
                         (let ((__tmp89059
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84424_))))
                           (declare (not safe))
                           (##fx- __tmp89059 _first-new-field84448_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89058)))
                 (_field-info84452_ (make-vector _field-info-length84450_ '#f))
                 (_opaque?84457_
                  (let ((_$e84454_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84444_))))
                    (if _$e84454_
                        _$e84454_
                        (if _type-super84422_
                            (let ((__tmp89060
                                   (let ((__tmp89061
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84422_))))
                                     (declare (not safe))
                                     (##fxand __tmp89061 '1))))
                              (declare (not safe))
                              (##fx= __tmp89060 '1))
                            '#f)))))
            (let _loop84460_ ((_i84462_ _first-new-field84448_) (_j84463_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84463_ _field-info-length84450_))
                  (let* ((_slot84465_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84424_ _i84462_)))
                         (_flags84473_
                          (if _transparent?84432_
                              '0
                              (let ((__tmp89063
                                     (if (or _all-slots-printable?84437_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84439_
                                                _slot84465_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89062
                                     (if (or _all-slots-equalable?84444_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84446_
                                                _slot84465_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89063 __tmp89062)))))
                    (vector-set! _field-info84452_ _j84463_ _slot84465_)
                    (vector-set!
                     _field-info84452_
                     (let () (declare (not safe)) (##fx+ _j84463_ '1))
                     _flags84473_)
                    (let ((__tmp89065
                           (let () (declare (not safe)) (##fx+ _i84462_ '1)))
                          (__tmp89064
                           (let () (declare (not safe)) (##fx+ _j84463_ '3))))
                      (declare (not safe))
                      (_loop84460_ __tmp89065 __tmp89064)))
                  '#!void))
            (let ((__tmp89066 (if _opaque?84457_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84420_
               _type-name84421_
               __tmp89066
               _type-super84422_
               _field-info84452_
               _precedence-list84423_
               _all-slots84424_
               _slot-table84427_
               _properties84425_
               _constructor84426_
               _methods84428_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84418_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84418_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84416_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84416_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84414_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84414_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84412_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84412_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84410_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84410_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84408_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84408_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84405_ _ht84406_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84405_
           _ht84406_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84403_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84403_))))))
    (define type-descriptor-fields
      (lambda (_klass84401_)
        (let ((__tmp89067
               (let ((__tmp89068
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84401_))))
                 (declare (not safe))
                 (##vector-length __tmp89068))))
          (declare (not safe))
          (##fx- __tmp89067 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84399_)
        (let ((__tmp89069
               (let () (declare (not safe)) (##type-flags _klass84399_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89069))))
    (define type-descriptor-seal!
      (lambda (_klass84397_)
        (let ((__tmp89070
               (let ((__tmp89072
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89071
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84397_))))
                 (declare (not safe))
                 (##fxior __tmp89072 __tmp89071))))
          (declare (not safe))
          (##structure-set!
           _klass84397_
           __tmp89070
           '3
           ##type-type
           type-descriptor-seal!))))
    (define make-struct-type
      (lambda (_id84390_
               _name84391_
               _super84392_
               _direct-slots84393_
               _properties84394_
               _constructor84395_)
        (let ((__tmp89075
               (if _super84392_
                   (let () (declare (not safe)) (cons _super84392_ '()))
                   '()))
              (__tmp89073
               (if (let ()
                     (declare (not safe))
                     (assgetq 'struct: _properties84394_))
                   _properties84394_
                   (let ((__tmp89074
                          (let () (declare (not safe)) (cons 'struct: '#t))))
                     (declare (not safe))
                     (cons __tmp89074 _properties84394_)))))
          (declare (not safe))
          (make-class-type
           _id84390_
           _name84391_
           __tmp89075
           _direct-slots84393_
           __tmp89073
           _constructor84395_))))
    (define make-struct-predicate
      (lambda (_klass84378_)
        (let ((_tid84380_
               (let () (declare (not safe)) (##type-id _klass84378_))))
          (if (let () (declare (not safe)) (type-final? _klass84378_))
              (lambda (_g8438184383_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8438184383_ _tid84380_)))
              (lambda (_g8438584387_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _g8438584387_ _tid84380_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass84362_ _slot84363_)
        (let ((_$e84365_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84362_ _slot84363_))))
          (if _$e84365_
              ((lambda (_off84368_)
                 (if (let () (declare (not safe)) (type-final? _klass84362_))
                     (lambda (_g8436984371_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _g8436984371_
                          _off84368_
                          _klass84362_
                          '#f)))
                     (lambda (_g8437384375_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _g8437384375_
                          _off84368_
                          _klass84362_
                          '#f)))))
               _$e84365_)
              (error '"unknown slot"
                     'class:
                     _klass84362_
                     'slot:
                     _slot84363_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84340_ _slot84341_)
        (let ((_$e84343_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84340_ _slot84341_))))
          (if _$e84343_
              ((lambda (_off84346_)
                 (if (let () (declare (not safe)) (type-final? _klass84340_))
                     (lambda (_g8434784350_ _g8434884352_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _g8434784350_
                          _g8434884352_
                          _off84346_
                          _klass84340_
                          '#f)))
                     (lambda (_g8435484357_ _g8435584359_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _g8435484357_
                          _g8435584359_
                          _off84346_
                          _klass84340_
                          '#f)))))
               _$e84343_)
              (error '"unknown slot"
                     'class:
                     _klass84340_
                     'slot:
                     _slot84341_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84328_ _slot84329_)
        (let ((_$e84331_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84328_ _slot84329_))))
          (if _$e84331_
              ((lambda (_off84334_)
                 (lambda (_g8433584337_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _g8433584337_
                      _off84334_
                      _klass84328_
                      '#f))))
               _$e84331_)
              (error '"unknown slot"
                     'class:
                     _klass84328_
                     'slot:
                     _slot84329_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84317_ _slot84318_)
        (let ((_$e84320_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass84317_ _slot84318_))))
          (if _$e84320_
              ((lambda (_off84323_)
                 (lambda (_obj84325_ _val84326_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj84325_
                      _val84326_
                      _off84323_
                      _klass84317_
                      '#f))))
               _$e84320_)
              (error '"unknown slot"
                     'class:
                     _klass84317_
                     'slot:
                     _slot84318_)))))
    (define make-final-field-accessor
      (lambda (_klass84311_ _slot84312_ _field84313_)
        (lambda (_obj84315_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84315_
             _field84313_
             _klass84311_
             _slot84312_)))))
    (define make-struct-field-accessor
      (lambda (_klass84305_ _slot84306_ _field84307_)
        (lambda (_obj84309_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84309_
             _field84307_
             _klass84305_
             _slot84306_)))))
    (define make-final-field-mutator
      (lambda (_klass84298_ _slot84299_ _field84300_)
        (lambda (_obj84302_ _val84303_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84302_
             _val84303_
             _field84300_
             _klass84298_
             _slot84299_)))))
    (define make-struct-field-mutator
      (lambda (_klass84291_ _slot84292_ _field84293_)
        (lambda (_obj84295_ _val84296_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84295_
             _val84296_
             _field84293_
             _klass84291_
             _slot84292_)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass84285_ _slot84286_ _field84287_)
        (lambda (_obj84289_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84289_
             _field84287_
             _klass84285_
             _slot84286_)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass84278_ _slot84279_ _field84280_)
        (lambda (_obj84282_ _val84283_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84282_
             _val84283_
             _field84280_
             _klass84278_
             _slot84279_)))))
    (define substruct?
      (lambda (_maybe-sub-struct84269_ _maybe-super-struct84270_)
        (let ((_maybe-super-struct-id84272_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84270_))))
          (let _lp84274_ ((_super-struct84276_ _maybe-sub-struct84269_))
            (if (let () (declare (not safe)) (not _super-struct84276_))
                '#f
                (if (let ((__tmp89077
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84276_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84272_ __tmp89077))
                    '#t
                    (let ((__tmp89076
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84276_))))
                      (declare (not safe))
                      (_lp84274_ __tmp89076))))))))
    (define base-struct/1
      (lambda (_klass84267_)
        (if (let () (declare (not safe)) (struct-type? _klass84267_))
            _klass84267_
            (if (let () (declare (not safe)) (class-type? _klass84267_))
                (let () (declare (not safe)) (##type-super _klass84267_))
                (if (let () (declare (not safe)) (not _klass84267_))
                    '#f
                    (error '"not a class or false" _klass84267_))))))
    (define base-struct/2
      (lambda (_klass184255_ _klass284256_)
        (let ((_s184258_
               (let () (declare (not safe)) (base-struct/1 _klass184255_)))
              (_s284259_
               (let () (declare (not safe)) (base-struct/1 _klass284256_))))
          (if (or (let () (declare (not safe)) (not _s184258_))
                  (and _s284259_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184258_ _s284259_))))
              _s284259_
              (if (or (let () (declare (not safe)) (not _s284259_))
                      (and _s184258_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284259_ _s184258_))))
                  _s184258_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184255_
                         _klass284256_
                         _s184258_
                         _s284259_))))))
    (define base-struct/list
      (lambda (_all-supers84139_)
        (let* ((_all-supers8414084165_ _all-supers84139_)
               (_E8414584169_
                (lambda ()
                  (error '"No clause matching" _all-supers8414084165_))))
          (let ((_K8416384252_ (lambda () '#f))
                (_K8416084238_
                 (lambda (_x84236_)
                   (let () (declare (not safe)) (base-struct/1 _x84236_))))
                (_K8415584215_
                 (lambda (_y84212_ _x84213_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84213_ _y84212_))))
                (_K8414684176_
                 (lambda (_y84173_ _x84174_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84174_ _y84173_)))))
            (let* ((___match8904489045_
                    (lambda (_hd8414784179_ _tl8414884181_)
                      (let ((_x84184_ _hd8414784179_))
                        (letrec ((_splice-rest8415084186_
                                  (lambda (_rest8415484193_ _y84195_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8415484193_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8414684176_ _y84195_ _x84184_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8414584169_)))))
                                 (_splice-try8415284188_
                                  (lambda (_hd8415384197_
                                           _rest8415484199_
                                           _y8414984200_)
                                    (let ((_y84203_ _hd8415384197_))
                                      (let ((__tmp89079
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8415484199_)))
                                            (__tmp89078
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84203_ _y8414984200_))))
                                        (declare (not safe))
                                        (_splice-loop8415184190_
                                         __tmp89079
                                         __tmp89078)))))
                                 (_splice-loop8415184190_
                                  (lambda (_rest8415484205_ _y8414984206_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8415484205_))
                                        (let ((__tmp89081
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8415484205_))))
                                          (declare (not safe))
                                          (_splice-try8415284188_
                                           __tmp89081
                                           _rest8415484205_
                                           _y8414984206_))
                                        (let ((__tmp89080
                                               (reverse _y8414984206_)))
                                          (declare (not safe))
                                          (_splice-rest8415084186_
                                           _rest8415484205_
                                           __tmp89080))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8415184190_ _tl8414884181_ '()))))))
                   (_try-match8414284248_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8414084165_))
                          (let ((_tl8416284243_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8414084165_)))
                                (_hd8416184241_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8414084165_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8416284243_))
                                (let ((_x84246_ _hd8416184241_))
                                  (declare (not safe))
                                  (base-struct/1 _x84246_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8416284243_))
                                    (let ((_tl8415984227_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8416284243_)))
                                          (_hd8415884225_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8416284243_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8415984227_))
                                          (let ((_x84223_ _hd8416184241_)
                                                (_y84230_ _hd8415884225_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8415584215_
                                               _y84230_
                                               _x84223_)))
                                          (___match8904489045_
                                           _hd8416184241_
                                           _tl8416284243_)))
                                    (___match8904489045_
                                     _hd8416184241_
                                     _tl8416284243_))))
                          (let () (declare (not safe)) (_E8414584169_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8414084165_))
                  (let () (declare (not safe)) (_K8416384252_))
                  (let () (declare (not safe)) (_try-match8414284248_))))))))
    (define base-struct
      (lambda _all-supers84137_
        (let () (declare (not safe)) (base-struct/list _all-supers84137_))))
    (define find-super-ctor
      (lambda (_super84135_)
        (let () (declare (not safe)) (find-super-constructor _super84135_))))
    (define find-super-constructor
      (lambda (_super84087_)
        (let _lp84089_ ((_rest84091_ _super84087_) (_constructor84092_ '#f))
          (let* ((_rest8409384101_ _rest84091_)
                 (_else8409584109_ (lambda () _constructor84092_))
                 (_K8409784123_
                  (lambda (_rest84112_ _hd84113_)
                    (let ((_$e84115_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84113_))))
                      (if _$e84115_
                          ((lambda (_xconstructor84118_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84092_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84092_
                                            _xconstructor84118_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84089_ _rest84112_ _xconstructor84118_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84092_
                                        _xconstructor84118_)))
                           _$e84115_)
                          (let ()
                            (declare (not safe))
                            (_lp84089_ _rest84112_ _constructor84092_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8409384101_))
                (let ((_hd8409884126_
                       (let () (declare (not safe)) (##car _rest8409384101_)))
                      (_tl8409984128_
                       (let () (declare (not safe)) (##cdr _rest8409384101_))))
                  (let* ((_hd84131_ _hd8409884126_)
                         (_rest84133_ _tl8409984128_))
                    (declare (not safe))
                    (_K8409784123_ _rest84133_ _hd84131_)))
                (let () (declare (not safe)) (_else8409584109_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84063_ _direct-slots84064_)
        (let* ((_next-slot84066_ '1)
               (_slot-table84068_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84070_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84074_
                (lambda (_slot84072_)
                  (if (let () (declare (not safe)) (symbol? _slot84072_))
                      '#!void
                      (error '"invalid slot name" _slot84072_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84068_ _slot84072_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84068_
                           _slot84072_
                           _next-slot84066_))
                        (let ((__tmp89082 (symbol->keyword _slot84072_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84068_
                           __tmp89082
                           _next-slot84066_))
                        (set! _r-slots84070_
                              (let ()
                                (declare (not safe))
                                (cons _slot84072_ _r-slots84070_)))
                        (set! _next-slot84066_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84066_ '1)))))))
               (_process-slots84080_
                (lambda (_g8407584077_)
                  (for-each _process-slot84074_ _g8407584077_))))
          (for-each
           (lambda (_mixin84083_)
             (let ((__tmp89083
                    (let ((__tmp89084
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84083_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89084 '()))))
               (declare (not safe))
               (_process-slots84080_ __tmp89083)))
           (reverse _class-precedence-list84063_))
          (let ()
            (declare (not safe))
            (_process-slots84080_ _direct-slots84064_))
          (let ((_all-slots84085_ (list->vector (reverse _r-slots84070_))))
            (values _all-slots84085_ _slot-table84068_)))))
    (define make-class-type
      (lambda (_id84026_
               _name84027_
               _direct-supers84028_
               _direct-slots84029_
               _properties84030_
               _constructor84031_)
        (let ((_$e84035_
               (let ((__tmp89085
                      (lambda (_klass84033_)
                        (let ((__tmp89086
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84033_))))
                          (declare (not safe))
                          (not __tmp89086)))))
                 (declare (not safe))
                 (find __tmp89085 _direct-supers84028_))))
          (if _$e84035_
              ((lambda (_g8403784039_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8403784039_))
               _$e84035_)
              (let ((_$e84042_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84028_))))
                (if _$e84042_
                    ((lambda (_g8404484046_)
                       (error '"Cannot extend final class" _g8404484046_))
                     _$e84042_)
                    '#!void))))
        (let ((_g89087_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84028_))))
          (begin
            (let ((_g89088_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89087_) (##vector-length _g89087_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89088_ 2)))
                  (error "Context expects 2 values" _g89088_)))
            (let ((_precedence-list84049_
                   (let () (declare (not safe)) (##vector-ref _g89087_ 0)))
                  (_struct-super84050_
                   (let () (declare (not safe)) (##vector-ref _g89087_ 1))))
              (let ((_g89089_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84049_
                        _direct-slots84029_))))
                (begin
                  (let ((_g89090_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89089_)
                               (##vector-length _g89089_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89090_ 2)))
                        (error "Context expects 2 values" _g89090_)))
                  (let ((_all-slots84052_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89089_ 0)))
                        (_slot-table84053_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89089_ 1))))
                    (let* ((_properties84055_
                            (let ((__tmp89093
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84029_)))
                                  (__tmp89091
                                   (let ((__tmp89092
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84028_))))
                                     (declare (not safe))
                                     (cons __tmp89092 _properties84030_))))
                              (declare (not safe))
                              (cons __tmp89093 __tmp89091)))
                           (_constructor*84060_
                            (let ((_$e84057_ _constructor84031_))
                              (if _$e84057_
                                  _$e84057_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84028_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84026_
                         _name84027_
                         _struct-super84050_
                         _precedence-list84049_
                         _all-slots84052_
                         _properties84055_
                         _constructor*84060_
                         _slot-table84053_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84024_)
        (let ((__tmp89094
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84024_))))
          (declare (not safe))
          (cons _klass84024_ __tmp89094))))
    (define compute-precedence-list
      (lambda (_direct-supers84022_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84022_))))
    (define make-class-predicate
      (lambda (_klass84012_)
        (if (let () (declare (not safe)) (type-final? _klass84012_))
            (lambda (_g8401384015_)
              (let ((__tmp89095
                     (let () (declare (not safe)) (##type-id _klass84012_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8401384015_ __tmp89095)))
            (lambda (_g8401784019_)
              (let ()
                (declare (not safe))
                (class-instance? _klass84012_ _g8401784019_))))))
    (define if-class-slot-field
      (lambda (_klass84001_
               _slot84002_
               _if-final84003_
               _if-struct84004_
               _if-struct-field84005_
               _if-class-slot84006_)
        (let ((_field84008_
               (let ((__tmp89096
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84001_))))
                 (declare (not safe))
                 (table-ref __tmp89096 _slot84002_ '#f))))
          (if (let () (declare (not safe)) (not _field84008_))
              (error '"unknown slot" 'class: _klass84001_ 'slot: _slot84002_)
              (if (let () (declare (not safe)) (type-final? _klass84001_))
                  (_if-final84003_ _klass84001_ _slot84002_ _field84008_)
                  (if (let () (declare (not safe)) (type-struct? _klass84001_))
                      (_if-struct84004_ _klass84001_ _slot84002_ _field84008_)
                      (if (let ((_strukt84010_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84001_))))
                            (and _strukt84010_
                                 (let ((__tmp89097
                                        (let ((__tmp89098
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84010_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89098))))
                                   (declare (not safe))
                                   (##fx< _field84008_ __tmp89097))))
                          (_if-struct-field84005_
                           _klass84001_
                           _slot84002_
                           _field84008_)
                          (_if-class-slot84006_
                           _klass84001_
                           _slot84002_
                           _field84008_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83998_ _slot83999_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83998_
           _slot83999_
           make-final-field-accessor
           make-struct-field-accessor
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define not-an-instance__%
      (lambda (_object83982_ _class83983_ _slot83984_)
        (apply error
               '"not an instance"
               'object:
               _object83982_
               'class:
               _class83983_
               (if _slot83984_
                   (let ((__tmp89099
                          (let ()
                            (declare (not safe))
                            (cons _slot83984_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89099))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83989_ _class83990_)
        (let ((_slot83992_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83989_ _class83990_ _slot83992_))))
    (define not-an-instance
      (lambda _g89101_
        (let ((_g89100_ (let () (declare (not safe)) (##length _g89101_))))
          (cond ((let () (declare (not safe)) (##fx= _g89100_ 2))
                 (apply (lambda (_object83989_ _class83990_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83989_ _class83990_)))
                        _g89101_))
                ((let () (declare (not safe)) (##fx= _g89100_ 3))
                 (apply (lambda (_object83994_ _class83995_ _slot83996_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83994_
                             _class83995_
                             _slot83996_)))
                        _g89101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89101_))))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass83975_ _slot83976_ _field83977_)
        (lambda (_obj83979_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83975_ _obj83979_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83979_ _field83977_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83979_ _klass83975_ _slot83976_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83969_ _slot83970_ _field83971_)
        (lambda (_obj83973_)
          (if (let ((__tmp89102
                     (let () (declare (not safe)) (##type-id _klass83969_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83973_ __tmp89102))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83973_ _field83971_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83969_ _obj83973_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83973_ _slot83970_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83973_
                     _klass83969_
                     _slot83970_)))))))
    (define make-class-slot-mutator
      (lambda (_klass83966_ _slot83967_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83966_
           _slot83967_
           make-final-field-mutator
           make-struct-field-mutator
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass83959_ _slot83960_ _field83961_)
        (lambda (_obj83963_ _val83964_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83959_ _obj83963_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83963_ _field83961_ _val83964_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83963_ _klass83959_ _slot83960_))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83952_ _slot83953_ _field83954_)
        (lambda (_obj83956_ _val83957_)
          (if (let ((__tmp89103
                     (let () (declare (not safe)) (##type-id _klass83952_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83956_ __tmp89103))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83956_ _field83954_ _val83957_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83952_ _obj83956_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83956_ _slot83953_ _val83957_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83956_
                     _klass83952_
                     _slot83953_)))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83949_ _slot83950_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83949_
           _slot83950_
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-struct-field-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83943_ _slot83944_ _field83945_)
        (lambda (_obj83947_)
          (if (let ((__tmp89104
                     (let () (declare (not safe)) (##type-id _klass83943_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83947_ __tmp89104))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83947_ _field83945_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83947_ _slot83944_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83940_ _slot83941_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83940_
           _slot83941_
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-struct-field-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83933_ _slot83934_ _field83935_)
        (lambda (_obj83937_ _val83938_)
          (if (let ((__tmp89105
                     (let () (declare (not safe)) (##type-id _klass83933_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83937_ __tmp89105))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83937_ _field83935_ _val83938_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83937_ _slot83934_ _val83938_))))))
    (define class-slot-offset
      (lambda (_klass83930_ _slot83931_)
        (let ((__tmp89106
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83930_))))
          (declare (not safe))
          (table-ref __tmp89106 _slot83931_ '#f))))
    (define class-slot-ref
      (lambda (_klass83924_ _obj83925_ _slot83926_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83924_ _obj83925_))
            (let ((_off83928_
                   (let ((__tmp89107
                          (let ()
                            (declare (not safe))
                            (object-type _obj83925_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89107 _slot83926_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83925_
               _off83928_
               _klass83924_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83925_ _klass83924_)))))
    (define class-slot-set!
      (lambda (_klass83917_ _obj83918_ _slot83919_ _val83920_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83917_ _obj83918_))
            (let ((_off83922_
                   (let ((__tmp89108
                          (let ()
                            (declare (not safe))
                            (object-type _obj83918_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89108 _slot83919_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83918_
               _val83920_
               _off83922_
               _klass83917_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83918_ _klass83917_)))))
    (define unchecked-field-ref
      (lambda (_obj83914_ _off83915_)
        (let ((__tmp89109
               (let () (declare (not safe)) (##structure-type _obj83914_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83914_ _off83915_ __tmp89109 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83910_ _off83911_ _val83912_)
        (let ((__tmp89110
               (let () (declare (not safe)) (##structure-type _obj83910_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83910_
           _val83912_
           _off83911_
           __tmp89110
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83907_ _slot83908_)
        (let ((__tmp89111
               (let ((__tmp89112
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83907_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89112 _slot83908_))))
          (declare (not safe))
          (unchecked-field-ref _obj83907_ __tmp89111))))
    (define unchecked-slot-set!
      (lambda (_obj83903_ _slot83904_ _val83905_)
        (let ((__tmp89113
               (let ((__tmp89114
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83903_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89114 _slot83904_))))
          (declare (not safe))
          (unchecked-field-set! _obj83903_ __tmp89113 _val83905_))))
    (define slot-ref__%
      (lambda (_obj83879_ _slot83880_ _E83881_)
        (if (let () (declare (not safe)) (object? _obj83879_))
            (let* ((_klass83883_
                    (let () (declare (not safe)) (object-type _obj83879_)))
                   (_$e83886_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83883_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83883_ _slot83880_))
                        '#f)))
              (if _$e83886_
                  ((lambda (_off83889_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83879_ _off83889_)))
                   _$e83886_)
                  (_E83881_ _obj83879_ _slot83880_)))
            (_E83881_ _obj83879_ _slot83880_))))
    (define slot-ref__0
      (lambda (_obj83894_ _slot83895_)
        (let ((_E83897_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83894_ _slot83895_ _E83897_))))
    (define slot-ref
      (lambda _g89116_
        (let ((_g89115_ (let () (declare (not safe)) (##length _g89116_))))
          (cond ((let () (declare (not safe)) (##fx= _g89115_ 2))
                 (apply (lambda (_obj83894_ _slot83895_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83894_ _slot83895_)))
                        _g89116_))
                ((let () (declare (not safe)) (##fx= _g89115_ 3))
                 (apply (lambda (_obj83899_ _slot83900_ _E83901_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83899_ _slot83900_ _E83901_)))
                        _g89116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89116_))))))
    (define slot-set!__%
      (lambda (_obj83851_ _slot83852_ _val83853_ _E83854_)
        (if (let () (declare (not safe)) (object? _obj83851_))
            (let* ((_klass83856_
                    (let () (declare (not safe)) (object-type _obj83851_)))
                   (_$e83859_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83856_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83856_ _slot83852_))
                        '#f)))
              (if _$e83859_
                  ((lambda (_off83862_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83851_
                        _off83862_
                        _val83853_)))
                   _$e83859_)
                  (_E83854_ _obj83851_ _slot83852_)))
            (_E83854_ _obj83851_ _slot83852_))))
    (define slot-set!__0
      (lambda (_obj83867_ _slot83868_ _val83869_)
        (let ((_E83871_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83867_ _slot83868_ _val83869_ _E83871_))))
    (define slot-set!
      (lambda _g89118_
        (let ((_g89117_ (let () (declare (not safe)) (##length _g89118_))))
          (cond ((let () (declare (not safe)) (##fx= _g89117_ 3))
                 (apply (lambda (_obj83867_ _slot83868_ _val83869_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83867_ _slot83868_ _val83869_)))
                        _g89118_))
                ((let () (declare (not safe)) (##fx= _g89117_ 4))
                 (apply (lambda (_obj83873_ _slot83874_ _val83875_ _E83876_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83873_
                             _slot83874_
                             _val83875_
                             _E83876_)))
                        _g89118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89118_))))))
    (define __slot-error
      (lambda (_obj83847_ _slot83848_)
        (error '"Cannot find slot" 'object: _obj83847_ 'slot: _slot83848_)))
    (define subclass?
      (lambda (_maybe-sub-class83837_ _maybe-super-class83838_)
        (let* ((_maybe-super-class-id83840_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83838_)))
               (_$e83842_
                (let ((__tmp89119
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83837_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83840_ __tmp89119))))
          (if _$e83842_
              _$e83842_
              (let ((__tmp89121
                     (lambda (_super-class83845_)
                       (let ((__tmp89122
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83845_))))
                         (declare (not safe))
                         (eq? __tmp89122 _maybe-super-class-id83840_))))
                    (__tmp89120
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83837_))))
                (declare (not safe))
                (ormap1 __tmp89121 __tmp89120))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83834_ _obj83835_)
        (let ((__tmp89123
               (let () (declare (not safe)) (##type-id _klass83834_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83835_ __tmp89123))))
    (define struct-instance?
      (lambda (_klass83831_ _obj83832_)
        (let ((__tmp89124
               (let () (declare (not safe)) (##type-id _klass83831_))))
          (declare (not safe))
          (##structure-instance-of? _obj83832_ __tmp89124))))
    (define class-instance?
      (lambda (_klass83826_ _obj83827_)
        (if (let () (declare (not safe)) (object? _obj83827_))
            (let ((_type83829_
                   (let () (declare (not safe)) (object-type _obj83827_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83829_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83829_ _klass83826_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83821_ _k83822_)
        (let ((_obj83824_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83821_ _k83822_))))
          (let () (declare (not safe)) (object-fill! _obj83824_ '#f))
          _obj83824_)))
    (define object-fill!
      (lambda (_obj83814_ _fill83815_)
        (let _loop83817_ ((_i83819_
                           (let ((__tmp89126
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83814_))))
                             (declare (not safe))
                             (##fx- __tmp89126 '1))))
          (if (let () (declare (not safe)) (##fx> _i83819_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83814_
                   _fill83815_
                   _i83819_
                   '#f
                   '#f))
                (let ((__tmp89125
                       (let () (declare (not safe)) (##fx- _i83819_ '1))))
                  (declare (not safe))
                  (_loop83817_ __tmp89125)))
              _obj83814_))))
    (define make-instance
      (lambda (_klass83812_)
        (let ((__obj89046
               (let ((__tmp89127
                      (let ((__tmp89128
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83812_))))
                        (declare (not safe))
                        (##vector-length __tmp89128))))
                 (declare (not safe))
                 (##make-structure _klass83812_ __tmp89127))))
          (let () (declare (not safe)) (object-fill! __obj89046 '#f))
          __obj89046)))
    (define make-struct-instance
      (lambda (_klass83802_ . _args83803_)
        (let* ((_obj83805_
                (let () (declare (not safe)) (make-instance _klass83802_)))
               (_$e83807_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83802_))))
          (if _$e83807_
              ((lambda (_kons-id83810_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83802_
                    _kons-id83810_
                    _obj83805_
                    _args83803_)))
               _$e83807_)
              (if (let ((__tmp89130
                         (let ((__tmp89131
                                (let ()
                                  (declare (not safe))
                                  (##structure-length _obj83805_))))
                           (declare (not safe))
                           (##fx- __tmp89131 '1)))
                        (__tmp89129 (length _args83803_)))
                    (declare (not safe))
                    (##fx= __tmp89130 __tmp89129))
                  (apply ##structure _klass83802_ _args83803_)
                  (error '"arguments don't match object size"
                         'class:
                         _klass83802_
                         'slots:
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slot-list _klass83802_))
                         'args:
                         _args83803_))))))
    (define make-class-instance
      (lambda (_klass83792_ . _args83793_)
        (let* ((_obj83795_
                (let () (declare (not safe)) (make-instance _klass83792_)))
               (_$e83797_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83792_))))
          (if _$e83797_
              ((lambda (_kons-id83800_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83792_
                    _kons-id83800_
                    _obj83795_
                    _args83793_)))
               _$e83797_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass83792_
                 _obj83795_
                 _args83793_))))))
    (define struct-instance-init!
      (lambda (_obj83789_ . _args83790_)
        (if (let ((__tmp89133 (length _args83790_))
                  (__tmp89132
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83789_))))
              (declare (not safe))
              (##fx< __tmp89133 __tmp89132))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83789_ _args83790_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83789_
                   'args:
                   _args83790_))))
    (define __struct-instance-init!
      (lambda (_obj83748_ _args83749_)
        (let _lp83751_ ((_k83753_ '1) (_rest83754_ _args83749_))
          (let* ((_rest8375583763_ _rest83754_)
                 (_else8375783771_ (lambda () _obj83748_))
                 (_K8375983777_
                  (lambda (_rest83774_ _hd83775_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83748_ _k83753_ _hd83775_))
                    (let ((__tmp89134
                           (let () (declare (not safe)) (##fx+ _k83753_ '1))))
                      (declare (not safe))
                      (_lp83751_ __tmp89134 _rest83774_)))))
            (if (let () (declare (not safe)) (##pair? _rest8375583763_))
                (let ((_hd8376083780_
                       (let () (declare (not safe)) (##car _rest8375583763_)))
                      (_tl8376183782_
                       (let () (declare (not safe)) (##cdr _rest8375583763_))))
                  (let* ((_hd83785_ _hd8376083780_)
                         (_rest83787_ _tl8376183782_))
                    (declare (not safe))
                    (_K8375983777_ _rest83787_ _hd83785_)))
                (let () (declare (not safe)) (_else8375783771_)))))))
    (define class-instance-init!
      (lambda (_obj83745_ . _args83746_)
        (let ((__tmp89135
               (let () (declare (not safe)) (object-type _obj83745_))))
          (declare (not safe))
          (__class-instance-init! __tmp89135 _obj83745_ _args83746_))))
    (define __class-instance-init!
      (lambda (_klass83689_ _obj83690_ _args83691_)
        (let _lp83693_ ((_rest83695_ _args83691_))
          (let* ((_rest8369683706_ _rest83695_)
                 (_else8369883714_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83695_))
                        _obj83690_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83689_
                               'rest:
                               _rest83695_))))
                 (_K8370083726_
                  (lambda (_rest83717_ _val83718_ _key83719_)
                    (let ((_$e83721_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83689_ _key83719_))))
                      (if _$e83721_
                          ((lambda (_off83724_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83690_
                                _off83724_
                                _val83718_))
                             (let ()
                               (declare (not safe))
                               (_lp83693_ _rest83717_)))
                           _$e83721_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83689_
                                 'slot:
                                 _key83719_))))))
            (if (let () (declare (not safe)) (##pair? _rest8369683706_))
                (let ((_hd8370183729_
                       (let () (declare (not safe)) (##car _rest8369683706_)))
                      (_tl8370283731_
                       (let () (declare (not safe)) (##cdr _rest8369683706_))))
                  (let ((_key83734_ _hd8370183729_))
                    (if (let () (declare (not safe)) (##pair? _tl8370283731_))
                        (let ((_hd8370383736_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8370283731_)))
                              (_tl8370483738_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8370283731_))))
                          (let* ((_val83741_ _hd8370383736_)
                                 (_rest83743_ _tl8370483738_))
                            (declare (not safe))
                            (_K8370083726_ _rest83743_ _val83741_ _key83734_)))
                        (let () (declare (not safe)) (_else8369883714_)))))
                (let () (declare (not safe)) (_else8369883714_)))))))
    (define constructor-init!
      (lambda (_klass83684_ _kons-id83685_ _obj83686_ . _args83687_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83684_
           _kons-id83685_
           _obj83686_
           _args83687_))))
    (define __constructor-init!
      (lambda (_klass83674_ _kons-id83675_ _obj83676_ _args83677_)
        (let ((_$e83679_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83674_ _kons-id83675_))))
          (if _$e83679_
              ((lambda (_kons83682_)
                 (apply _kons83682_ _obj83676_ _args83677_)
                 _obj83676_)
               _$e83679_)
              (error '"missing constructor"
                     'class:
                     _klass83674_
                     'method:
                     _kons-id83675_)))))
    (define struct-copy
      (lambda (_struct83672_)
        (if (let () (declare (not safe)) (##structure? _struct83672_))
            '#!void
            (error '"not a structure" _struct83672_))
        (let () (declare (not safe)) (##structure-copy _struct83672_))))
    (define struct->list
      (lambda (_obj83670_)
        (if (let () (declare (not safe)) (object? _obj83670_))
            (let () (declare (not safe)) (##vector->list _obj83670_))
            (error '"not an object" _obj83670_))))
    (define class->list
      (lambda (_obj83657_)
        (if (let () (declare (not safe)) (object? _obj83657_))
            (let ((_klass83659_
                   (let () (declare (not safe)) (object-type _obj83657_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83659_))
                  (let ((_all-slots83661_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83659_))))
                    (let _loop83663_ ((_index83665_
                                       (let ((__tmp89141
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83661_))))
                                         (declare (not safe))
                                         (##fx- __tmp89141 '1)))
                                      (_plist83666_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83665_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83659_ _plist83666_))
                          (let ((_slot83668_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83661_
                                    _index83665_))))
                            (let ((__tmp89140
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83665_ '1)))
                                  (__tmp89136
                                   (let ((__tmp89139
                                          (symbol->keyword _slot83668_))
                                         (__tmp89137
                                          (let ((__tmp89138
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83657_
                                                    _index83665_))))
                                            (declare (not safe))
                                            (cons __tmp89138 _plist83666_))))
                                     (declare (not safe))
                                     (cons __tmp89139 __tmp89137))))
                              (declare (not safe))
                              (_loop83663_ __tmp89140 __tmp89136))))))
                  (error '"not a class type"
                         'object:
                         _obj83657_
                         'class:
                         _klass83659_)))
            (error '"not an object" _obj83657_))))
    (define call-method
      (lambda (_obj83648_ _id83649_ . _args83650_)
        (let ((_$e83652_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83648_ _id83649_))))
          (if _$e83652_
              ((lambda (_method83655_)
                 (apply _method83655_ _obj83648_ _args83650_))
               _$e83652_)
              (error '"cannot find method"
                     'object:
                     _obj83648_
                     'method:
                     _id83649_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83645_ _id83646_)
        (if (let () (declare (not safe)) (object? _obj83645_))
            (let ((__tmp89142
                   (let () (declare (not safe)) (object-type _obj83645_))))
              (declare (not safe))
              (find-method __tmp89142 _id83646_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83639_ _id83640_)
        (let ((_$e83642_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83639_ _id83640_))))
          (if _$e83642_
              _$e83642_
              (error '"missing method"
                     'object:
                     _obj83639_
                     'method:
                     _id83640_)))))
    (define bound-method-ref
      (lambda (_obj83629_ _id83630_)
        (let ((_$e83632_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83629_ _id83630_))))
          (if _$e83632_
              ((lambda (_method83635_)
                 (lambda _args83637_
                   (apply _method83635_ _obj83629_ _args83637_)))
               _$e83632_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83622_ _id83623_)
        (let ((_method83625_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83622_ _id83623_))))
          (lambda _args83627_ (apply _method83625_ _obj83622_ _args83627_)))))
    (define find-method
      (lambda (_klass83619_ _id83620_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83619_))
            (let ()
              (declare (not safe))
              (__find-method _klass83619_ _id83620_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83619_ _id83620_)))))
    (define __find-method
      (lambda (_klass83613_ _id83614_)
        (let ((_$e83616_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83613_ _id83614_))))
          (if _$e83616_
              _$e83616_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83613_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83613_ _id83614_)))))))
    (define class-find-method
      (lambda (_klass83610_ _id83611_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83610_))
            (let ()
              (declare (not safe))
              (__find-method _klass83610_ _id83611_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83603_ _id83604_)
        (let ((__tmp89143
               (lambda (_g8360583607_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8360583607_ _id83604_)))))
          (declare (not safe))
          (ormap1 __tmp89143 _mixins83603_))))
    (define builtin-find-method
      (lambda (_klass83597_ _id83598_)
        (if (let () (declare (not safe)) (##type? _klass83597_))
            (let ((_$e83600_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83597_ _id83598_))))
              (if _$e83600_
                  _$e83600_
                  (let ((__tmp89144
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83597_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89144 _id83598_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83589_ _id83590_)
        (let ((_$e83592_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83589_))))
          (if _$e83592_
              ((lambda (_ht83595_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83595_ _id83590_ '#f)))
               _$e83592_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83586_ _id83587_)
        (let ((__tmp89145
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83586_))))
          (declare (not safe))
          (mixin-find-method __tmp89145 _id83587_))))
    (define builtin-method-ref
      (lambda (_klass83578_ _id83579_)
        (let ((_$e83581_
               (let ((__tmp89146
                      (let () (declare (not safe)) (##type-id _klass83578_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89146 '#f))))
          (if _$e83581_
              ((lambda (_mtab83584_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83584_ _id83579_ '#f)))
               _$e83581_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83544_ _id83545_ _proc83546_ _rebind?83547_)
        (letrec ((_bind!83549_
                  (lambda (_ht83562_)
                    (if (and (let () (declare (not safe)) (not _rebind?83547_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83562_ _id83545_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83544_
                               'method:
                               _id83545_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83562_ _id83545_ _proc83546_))))))
          (if (let () (declare (not safe)) (procedure? _proc83546_))
              '#!void
              (error '"bad method; expected procedure" _proc83546_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83544_))
              (let ((_ht83551_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83544_))))
                (if _ht83551_
                    (let () (declare (not safe)) (_bind!83549_ _ht83551_))
                    (let ((_ht83553_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83544_ _ht83553_))
                      (let () (declare (not safe)) (_bind!83549_ _ht83553_)))))
              (if (let () (declare (not safe)) (##type? _klass83544_))
                  (let ((_ht83560_
                         (let ((_$e83555_
                                (let ((__tmp89147
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83544_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89147
                                   '#f))))
                           (if _$e83555_
                               _$e83555_
                               (let ((_ht83558_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89148
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83544_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89148
                                    _ht83558_))
                                 _ht83558_)))))
                    (declare (not safe))
                    (_bind!83549_ _ht83560_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83544_))))))
    (define bind-method!__0
      (lambda (_klass83567_ _id83568_ _proc83569_)
        (let ((_rebind?83571_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83567_
           _id83568_
           _proc83569_
           _rebind?83571_))))
    (define bind-method!
      (lambda _g89150_
        (let ((_g89149_ (let () (declare (not safe)) (##length _g89150_))))
          (cond ((let () (declare (not safe)) (##fx= _g89149_ 3))
                 (apply (lambda (_klass83567_ _id83568_ _proc83569_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83567_
                             _id83568_
                             _proc83569_)))
                        _g89150_))
                ((let () (declare (not safe)) (##fx= _g89149_ 4))
                 (apply (lambda (_klass83573_
                                 _id83574_
                                 _proc83575_
                                 _rebind?83576_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83573_
                             _id83574_
                             _proc83575_
                             _rebind?83576_)))
                        _g89150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89150_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83540_ _specializer83541_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83540_ _specializer83541_))))
    (define seal-class!
      (lambda (_klass83507_)
        (letrec ((_collect-methods!83509_
                  (lambda (_mtab83525_)
                    (letrec ((_merge!83527_
                              (lambda (_tab83535_)
                                (let ((__tmp89151
                                       (lambda (_id83537_ _proc83538_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83525_
                                            _id83537_
                                            _proc83538_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89151 _tab83535_))))
                             (_collect-direct-methods!83528_
                              (lambda (_klass83530_)
                                (let ((_$e83532_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83530_))))
                                  (if _$e83532_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83527_ _$e83532_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83528_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83507_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83507_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83507_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83507_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83507_))
                    (let ((_vtab83511_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83512_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83509_ _mtab83512_))
                      (let ((__tmp89152
                             (lambda (_id83514_ _proc83515_)
                               (let ((_$e83517_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83515_
                                         '#f))))
                                 (if _$e83517_
                                     ((lambda (_specializer83520_)
                                        (let ((_proc83522_
                                               (_specializer83520_
                                                _klass83507_))
                                              (_gid83523_
                                               (let ((__tmp89153
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83507_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89153
                                                  '"::["
                                                  _id83514_
                                                  '"]"))))
                                          (eval (let ((__tmp89154
                                                       (let ((__tmp89155
                                                              (let ((__tmp89156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89157
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83522_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89157))))
                        (declare (not safe))
                        (cons __tmp89156 '()))))
                 (declare (not safe))
                 (cons _gid83523_ __tmp89155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89154)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83511_
                                             _id83514_
                                             _proc83522_))))
                                      _$e83517_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83511_
                                        _id83514_
                                        _proc83515_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89152 _mtab83512_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83507_
                         _vtab83511_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83507_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83456_ _obj83457_ _id83458_)
        (let ((_klass83460_
               (let () (declare (not safe)) (object-type _obj83457_)))
              (_type-id83461_
               (let () (declare (not safe)) (##type-id _subklass83456_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83460_))
              (let _lp83463_ ((_rest83465_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83460_))))
                (let* ((_rest8346683474_ _rest83465_)
                       (_else8346883482_ (lambda () '#f))
                       (_K8347083488_
                        (lambda (_rest83485_ _klass83486_)
                          (if (let ((__tmp89160
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83486_))))
                                (declare (not safe))
                                (eq? _type-id83461_ __tmp89160))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83485_ _id83458_))
                              (let ()
                                (declare (not safe))
                                (_lp83463_ _rest83485_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8346683474_))
                      (let ((_hd8347183491_
                             (let ()
                               (declare (not safe))
                               (##car _rest8346683474_)))
                            (_tl8347283493_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8346683474_))))
                        (let* ((_klass83496_ _hd8347183491_)
                               (_rest83498_ _tl8347283493_))
                          (declare (not safe))
                          (_K8347083488_ _rest83498_ _klass83496_)))
                      (let () (declare (not safe)) (_else8346883482_)))))
              (if (let () (declare (not safe)) (##type? _klass83460_))
                  (let _lp83500_ ((_klass83502_ _klass83460_))
                    (if (let ((__tmp89159
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83502_))))
                          (declare (not safe))
                          (eq? _type-id83461_ __tmp89159))
                        (let ((__tmp89158
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83502_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89158 _id83458_))
                        (let ((_$e83504_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83502_))))
                          (if _$e83504_
                              (let ()
                                (declare (not safe))
                                (_lp83500_ _$e83504_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83446_ _obj83447_ _id83448_ . _args83449_)
        (let ((_$e83451_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83446_ _obj83447_ _id83448_))))
          (if _$e83451_
              ((lambda (_methodf83454_)
                 (apply _methodf83454_ _obj83447_ _args83449_))
               _$e83451_)
              (error '"cannot find next method"
                     'object:
                     _obj83447_
                     'method:
                     _id83448_)))))
    (define write-style (lambda (_we83444_) (macro-writeenv-style _we83444_)))
    (define write-object
      (lambda (_we83436_ _obj83437_)
        (let ((_$e83439_
               (let () (declare (not safe)) (method-ref _obj83437_ ':wr))))
          (if _$e83439_
              ((lambda (_method83442_) (_method83442_ _obj83437_ _we83436_))
               _$e83439_)
              (let ()
                (declare (not safe))
                (##default-wr _we83436_ _obj83437_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
