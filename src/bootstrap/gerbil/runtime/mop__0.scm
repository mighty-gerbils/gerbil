(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708247272)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots84552_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods))
             (_slot-vector84554_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots84552_))))
             (_slot-table84561_
              (let ((_slot-table84556_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot84558_ _field84559_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84556_
                      _slot84558_
                      _field84559_))
                   (let ((__tmp88768 (symbol->keyword _slot84558_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84556_
                      __tmp88768
                      _field84559_)))
                 _slots84552_
                 (let ((__tmp88769 (length _slots84552_)))
                   (declare (not safe))
                   (iota __tmp88769 '1)))
                _slot-table84556_))
             (_flags84563_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields84569_
              (list->vector
               (apply append
                      (map (lambda (_g8456484566_) (list _g8456484566_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84552_ '5))))))
             (_properties84571_
              (let ((__tmp88772
                     (let ((__tmp88773
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots84552_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp88773)))
                    (__tmp88770
                     (let ((__tmp88771
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp88771 '()))))
                (declare (not safe))
                (cons __tmp88772 __tmp88770)))
             (_t84573_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags84563_
                 ##type-type
                 _fields84569_
                 '()
                 _slot-vector84554_
                 _slot-table84561_
                 _properties84571_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t84573_ _t84573_))
        _t84573_))
    (define class-type?
      (lambda (_obj84550_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84550_ class::t.id))))
    (define class-type=?
      (lambda (_x84547_ _y84548_)
        (let ((__tmp88775 (##structure-ref _x84547_ '1 class::t '#f))
              (__tmp88774 (##structure-ref _y84548_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp88775 __tmp88774))))
    (define type-opaque?
      (lambda (_type84545_)
        (let ((__tmp88776
               (let ((__tmp88777
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84545_))))
                 (declare (not safe))
                 (##fxand __tmp88777 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp88776 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type84543_)
        (let ((__tmp88778
               (let ((__tmp88779
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84543_))))
                 (declare (not safe))
                 (##fxand __tmp88779 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88778 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type84541_)
        (let ((__tmp88780
               (let ((__tmp88781
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84541_))))
                 (declare (not safe))
                 (##fxand __tmp88781 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88780 '0))))
    (define class-type-struct?
      (lambda (_klass84539_)
        (let ((__tmp88782
               (let ((__tmp88783
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84539_))))
                 (declare (not safe))
                 (##fxand __tmp88783 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp88782 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass84537_)
        (let ((__tmp88784
               (let ((__tmp88785
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84537_))))
                 (declare (not safe))
                 (##fxand __tmp88785 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp88784 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass84535_)
        (let ((__tmp88786
               (let ((__tmp88787
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84535_))))
                 (declare (not safe))
                 (##fxand __tmp88787 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp88786 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties84501_)
        (map (lambda (_e8450284504_)
               (let* ((_g8450684513_ _e8450284504_)
                      (_E8450884517_
                       (lambda () (error '"No clause matching" _g8450684513_)))
                      (_K8450984523_
                       (lambda (_val84520_ _key84521_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84521_ 'direct-supers:))
                             (let ((__tmp88788 (map class-type-id _val84520_)))
                               (declare (not safe))
                               (cons _key84521_ __tmp88788))
                             (let ()
                               (declare (not safe))
                               (cons _key84521_ _val84520_))))))
                 (if (let () (declare (not safe)) (##pair? _g8450684513_))
                     (let ((_hd8451084526_
                            (let ()
                              (declare (not safe))
                              (##car _g8450684513_)))
                           (_tl8451184528_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8450684513_))))
                       (let* ((_key84531_ _hd8451084526_)
                              (_val84533_ _tl8451184528_))
                         (declare (not safe))
                         (_K8450984523_ _val84533_ _key84531_)))
                     (let () (declare (not safe)) (_E8450884517_)))))
             _properties84501_)))
    (define make-class-type-descriptor
      (lambda (_type-id84400_
               _type-name84401_
               _type-super84402_
               _precedence-list84403_
               _slot-vector84404_
               _properties84405_
               _constructor84406_
               _slot-table84407_
               _methods84408_)
        (letrec ((_make-props!84410_
                  (lambda (_key84470_)
                    (letrec* ((_ht84472_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table '#f '0)))
                              (_put-slots!84473_
                               (lambda (_ht84494_ _slots84495_)
                                 (for-each
                                  (lambda (_g8449684498_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht84494_
                                       _g8449684498_
                                       '#t)))
                                  _slots84495_)))
                              (_put-alist!84474_
                               (lambda (_ht84483_ _key84484_ _alist84485_)
                                 (let ((_$e84487_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84484_ _alist84485_))))
                                   (if _$e84487_
                                       ((lambda (_g8448984491_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84473_
                                             _ht84483_
                                             _g8448984491_)))
                                        _$e84487_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84474_
                         _ht84472_
                         _key84470_
                         _properties84405_))
                      (for-each
                       (lambda (_mixin84476_)
                         (let ((_alist84478_
                                (##structure-ref
                                 _mixin84476_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84478_))
                                   (let ((__tmp88790
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84470_
                                                     _alist84478_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88790)))
                               (let ((__tmp88789
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84476_))))
                                 (declare (not safe))
                                 (_put-slots!84473_ _ht84472_ __tmp88789))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84474_
                                  _ht84472_
                                  _key84470_
                                  _alist84478_)))))
                       _precedence-list84403_)
                      _ht84472_))))
          (let* ((_transparent?84412_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84405_)))
                 (_all-slots-printable?84417_
                  (let ((_$e84414_ _transparent?84412_))
                    (if _$e84414_
                        _$e84414_
                        (let ((__tmp88791
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84405_))))
                          (declare (not safe))
                          (eq? '#t __tmp88791)))))
                 (_printable84419_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84417_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84410_ 'print:))
                      '#f))
                 (_all-slots-equalable?84424_
                  (let ((_$e84421_ _transparent?84412_))
                    (if _$e84421_
                        _$e84421_
                        (let ((__tmp88792
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84405_))))
                          (declare (not safe))
                          (eq? '#t __tmp88792)))))
                 (_equalable84426_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84424_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84410_ 'equal:))
                      '#f))
                 (_first-new-field84428_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super84402_
                         'gerbil#class::t))
                      (let ((__tmp88793
                             (##structure-ref
                              _type-super84402_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp88793))
                      '1))
                 (_field-info-length84430_
                  (let ((__tmp88794
                         (let ((__tmp88795
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84404_))))
                           (declare (not safe))
                           (##fx- __tmp88795 _first-new-field84428_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88794)))
                 (_field-info84432_ (make-vector _field-info-length84430_ '#f))
                 (_struct?84434_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84405_)))
                 (_final?84436_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84405_)))
                 (_metaclass84444_
                  (let ((_metaclass8443784439_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties84405_))))
                    (if _metaclass8443784439_
                        (let ((_metaclass84442_ _metaclass8443784439_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass84442_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id84400_
                                     'metaclass:
                                     _metaclass84442_))
                          _metaclass84442_)
                        '#f)))
                 (_opaque?84449_
                  (let ((_$e84446_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84424_))))
                    (if _$e84446_
                        _$e84446_
                        (if _type-super84402_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84402_))
                            '#f))))
                 (_type-flags84451_
                  (let ((__tmp88799 (if _final?84436_ '0 type-flag-extensible))
                        (__tmp88798 (if _opaque?84449_ type-flag-opaque '0))
                        (__tmp88797
                         (if _struct?84434_ class-type-flag-struct '0))
                        (__tmp88796
                         (if _metaclass84444_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp88799
                             __tmp88798
                             __tmp88797
                             __tmp88796))))
            (let _loop84454_ ((_i84456_ _first-new-field84428_) (_j84457_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84457_ _field-info-length84430_))
                  (let* ((_slot84459_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84404_ _i84456_)))
                         (_flags84467_
                          (if _transparent?84412_
                              '0
                              (let ((__tmp88801
                                     (if (or _all-slots-printable?84417_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable84419_
                                                _slot84459_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88800
                                     (if (or _all-slots-equalable?84424_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable84426_
                                                _slot84459_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88801 __tmp88800)))))
                    (vector-set! _field-info84432_ _j84457_ _slot84459_)
                    (vector-set!
                     _field-info84432_
                     (let () (declare (not safe)) (##fx+ _j84457_ '1))
                     _flags84467_)
                    (let ((__tmp88803
                           (let () (declare (not safe)) (##fx+ _i84456_ '1)))
                          (__tmp88802
                           (let () (declare (not safe)) (##fx+ _j84457_ '3))))
                      (declare (not safe))
                      (_loop84454_ __tmp88803 __tmp88802)))
                  '#!void))
            (if _metaclass84444_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass84444_
                   _type-id84400_
                   _type-name84401_
                   _type-flags84451_
                   _type-super84402_
                   _field-info84432_
                   _precedence-list84403_
                   _slot-vector84404_
                   _slot-table84407_
                   _properties84405_
                   _constructor84406_
                   _methods84408_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id84400_
                   _type-name84401_
                   _type-flags84451_
                   _type-super84402_
                   _field-info84432_
                   _precedence-list84403_
                   _slot-vector84404_
                   _slot-table84407_
                   _properties84405_
                   _constructor84406_
                   _methods84408_)))))))
    (define class-type-id
      (lambda (_klass84398_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84398_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass84396_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84396_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass84393_ _val84394_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84393_ _val84394_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass84388_ _val84390_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84388_
           _val84390_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass84386_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84386_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass84384_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84384_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass84381_ _val84382_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84381_ _val84382_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass84376_ _val84378_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84376_
           _val84378_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass84374_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84374_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass84372_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84372_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass84369_ _val84370_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84369_ _val84370_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass84364_ _val84366_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84364_
           _val84366_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass84362_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84362_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass84360_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84360_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass84357_ _val84358_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84357_ _val84358_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass84352_ _val84354_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84352_
           _val84354_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass84350_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84350_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass84348_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84348_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass84345_ _val84346_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84345_ _val84346_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass84340_ _val84342_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84340_
           _val84342_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass84338_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84338_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass84336_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass84336_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass84333_ _val84334_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84333_
           _val84334_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass84328_ _val84330_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84328_
           _val84330_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84326_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84326_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass84324_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84324_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass84321_ _val84322_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84321_
           _val84322_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass84316_ _val84318_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84316_
           _val84318_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84314_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84314_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass84312_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84312_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass84309_ _val84310_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84309_ _val84310_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass84304_ _val84306_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84304_
           _val84306_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass84302_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84302_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass84300_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84300_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass84297_ _val84298_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84297_ _val84298_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass84292_ _val84294_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84292_
           _val84294_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass84290_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84290_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass84288_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84288_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass84285_ _val84286_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84285_
           _val84286_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass84280_ _val84282_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84280_
           _val84282_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass84278_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84278_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass84276_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84276_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass84273_ _val84274_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84273_ _val84274_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass84268_ _val84270_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84268_
           _val84270_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass84266_)
        (cdr (vector->list (##structure-ref _klass84266_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass84264_)
        (let ((__tmp88804
               (let ((__tmp88805
                      (##structure-ref _klass84264_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp88805))))
          (declare (not safe))
          (##fx- __tmp88804 '1))))
    (define class-type-seal!
      (lambda (_klass84262_)
        (let ((__tmp88806
               (let ((__tmp88807
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84262_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88807))))
          (declare (not safe))
          (##structure-set!
           _klass84262_
           __tmp88806
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass84260_)
        (let ((__tmp88808
               (let ((__tmp88809
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84260_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88809))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84260_
           __tmp88808
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84251_ _maybe-super-struct84252_)
        (let ((_maybe-super-struct-id84254_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84252_))))
          (let _lp84256_ ((_super-struct84258_ _maybe-sub-struct84251_))
            (if (let () (declare (not safe)) (not _super-struct84258_))
                '#f
                (if (let ((__tmp88811
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct84258_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84254_ __tmp88811))
                    '#t
                    (let ((__tmp88810
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84258_))))
                      (declare (not safe))
                      (_lp84256_ __tmp88810))))))))
    (define base-struct/1
      (lambda (_klass84249_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84249_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass84249_))
                _klass84249_
                (let () (declare (not safe)) (##type-super _klass84249_)))
            (if (let () (declare (not safe)) (not _klass84249_))
                '#f
                (error '"not a class or false" _klass84249_)))))
    (define base-struct/2
      (lambda (_klass184237_ _klass284238_)
        (let ((_s184240_
               (let () (declare (not safe)) (base-struct/1 _klass184237_)))
              (_s284241_
               (let () (declare (not safe)) (base-struct/1 _klass284238_))))
          (if (or (let () (declare (not safe)) (not _s184240_))
                  (and _s284241_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184240_ _s284241_))))
              _s284241_
              (if (or (let () (declare (not safe)) (not _s284241_))
                      (and _s184240_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284241_ _s184240_))))
                  _s184240_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184237_
                         _klass284238_
                         _s184240_
                         _s284241_))))))
    (define base-struct/list
      (lambda (_all-supers84121_)
        (let* ((_all-supers8412284147_ _all-supers84121_)
               (_E8412784151_
                (lambda ()
                  (error '"No clause matching" _all-supers8412284147_))))
          (let ((_K8414584234_ (lambda () '#f))
                (_K8414284220_
                 (lambda (_x84218_)
                   (let () (declare (not safe)) (base-struct/1 _x84218_))))
                (_K8413784197_
                 (lambda (_y84194_ _x84195_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84195_ _y84194_))))
                (_K8412884158_
                 (lambda (_y84155_ _x84156_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84156_ _y84155_)))))
            (let* ((___match8876388764_
                    (lambda (_hd8412984161_ _tl8413084163_)
                      (let ((_x84166_ _hd8412984161_))
                        (letrec ((_splice-rest8413284168_
                                  (lambda (_rest8413684175_ _y84177_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8413684175_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8412884158_ _y84177_ _x84166_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8412784151_)))))
                                 (_splice-try8413484170_
                                  (lambda (_hd8413584179_
                                           _rest8413684181_
                                           _y8413184182_)
                                    (let ((_y84185_ _hd8413584179_))
                                      (let ((__tmp88813
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8413684181_)))
                                            (__tmp88812
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84185_ _y8413184182_))))
                                        (declare (not safe))
                                        (_splice-loop8413384172_
                                         __tmp88813
                                         __tmp88812)))))
                                 (_splice-loop8413384172_
                                  (lambda (_rest8413684187_ _y8413184188_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8413684187_))
                                        (let ((__tmp88815
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8413684187_))))
                                          (declare (not safe))
                                          (_splice-try8413484170_
                                           __tmp88815
                                           _rest8413684187_
                                           _y8413184188_))
                                        (let ((__tmp88814
                                               (reverse _y8413184188_)))
                                          (declare (not safe))
                                          (_splice-rest8413284168_
                                           _rest8413684187_
                                           __tmp88814))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8413384172_ _tl8413084163_ '()))))))
                   (_try-match8412484230_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8412284147_))
                          (let ((_tl8414484225_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8412284147_)))
                                (_hd8414384223_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8412284147_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8414484225_))
                                (let ((_x84228_ _hd8414384223_))
                                  (declare (not safe))
                                  (base-struct/1 _x84228_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8414484225_))
                                    (let ((_tl8414184209_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8414484225_)))
                                          (_hd8414084207_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8414484225_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8414184209_))
                                          (let ((_x84205_ _hd8414384223_)
                                                (_y84212_ _hd8414084207_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8413784197_
                                               _y84212_
                                               _x84205_)))
                                          (___match8876388764_
                                           _hd8414384223_
                                           _tl8414484225_)))
                                    (___match8876388764_
                                     _hd8414384223_
                                     _tl8414484225_))))
                          (let () (declare (not safe)) (_E8412784151_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8412284147_))
                  (let () (declare (not safe)) (_K8414584234_))
                  (let () (declare (not safe)) (_try-match8412484230_))))))))
    (define base-struct
      (lambda _all-supers84119_
        (let () (declare (not safe)) (base-struct/list _all-supers84119_))))
    (define find-super-constructor
      (lambda (_super84071_)
        (let _lp84073_ ((_rest84075_ _super84071_) (_constructor84076_ '#f))
          (let* ((_rest8407784085_ _rest84075_)
                 (_else8407984093_ (lambda () _constructor84076_))
                 (_K8408184107_
                  (lambda (_rest84096_ _hd84097_)
                    (let ((_$e84099_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84097_
                              '10
                              class::t
                              '#f))))
                      (if _$e84099_
                          ((lambda (_xconstructor84102_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84076_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84076_
                                            _xconstructor84102_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84073_ _rest84096_ _xconstructor84102_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84076_
                                        _xconstructor84102_)))
                           _$e84099_)
                          (let ()
                            (declare (not safe))
                            (_lp84073_ _rest84096_ _constructor84076_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8407784085_))
                (let ((_hd8408284110_
                       (let () (declare (not safe)) (##car _rest8407784085_)))
                      (_tl8408384112_
                       (let () (declare (not safe)) (##cdr _rest8407784085_))))
                  (let* ((_hd84115_ _hd8408284110_)
                         (_rest84117_ _tl8408384112_))
                    (declare (not safe))
                    (_K8408184107_ _rest84117_ _hd84115_)))
                (let () (declare (not safe)) (_else8407984093_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84047_ _direct-slots84048_)
        (let* ((_next-slot84050_ '1)
               (_slot-table84052_
                (let () (declare (not safe)) (make-symbolic-table '#f '0)))
               (_r-slots84054_ '(__class))
               (_process-slot84058_
                (lambda (_slot84056_)
                  (if (let () (declare (not safe)) (symbol? _slot84056_))
                      '#!void
                      (error '"invalid slot name" _slot84056_))
                  (if (let ((__tmp88817
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table84052_
                                _slot84056_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp88817 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84052_
                           _slot84056_
                           _next-slot84050_))
                        (let ((__tmp88816 (symbol->keyword _slot84056_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84052_
                           __tmp88816
                           _next-slot84050_))
                        (set! _r-slots84054_
                              (let ()
                                (declare (not safe))
                                (cons _slot84056_ _r-slots84054_)))
                        (set! _next-slot84050_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84050_ '1))))
                      '#!void)))
               (_process-slots84064_
                (lambda (_g8405984061_)
                  (for-each _process-slot84058_ _g8405984061_))))
          (for-each
           (lambda (_mixin84067_)
             (let ((__tmp88818
                    (let ((__tmp88819
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84067_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88819 '()))))
               (declare (not safe))
               (_process-slots84064_ __tmp88818)))
           (reverse _class-precedence-list84047_))
          (let ()
            (declare (not safe))
            (_process-slots84064_ _direct-slots84048_))
          (let ((_slot-vector84069_ (list->vector (reverse _r-slots84054_))))
            (values _slot-vector84069_ _slot-table84052_)))))
    (define make-class-type
      (lambda (_id84009_
               _name84010_
               _direct-supers84011_
               _direct-slots84012_
               _properties84013_
               _constructor84014_)
        (let ((_$e84019_
               (let ((__tmp88820
                      (lambda (_$obj84016_)
                        (let ((__tmp88821
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj84016_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp88821)))))
                 (declare (not safe))
                 (find __tmp88820 _direct-supers84011_))))
          (if _$e84019_
              ((lambda (_g8402184023_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8402184023_))
               _$e84019_)
              (let ((_$e84026_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84011_))))
                (if _$e84026_
                    ((lambda (_g8402884030_)
                       (error '"Cannot extend final class" _g8402884030_))
                     _$e84026_)
                    '#!void))))
        (let ((_g88822_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84011_))))
          (begin
            (let ((_g88823_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88822_) (##vector-length _g88822_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88823_ 2)))
                  (error "Context expects 2 values" _g88823_)))
            (let ((_precedence-list84033_
                   (let () (declare (not safe)) (##vector-ref _g88822_ 0)))
                  (_struct-super84034_
                   (let () (declare (not safe)) (##vector-ref _g88822_ 1))))
              (let ((_g88824_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84033_
                        _direct-slots84012_))))
                (begin
                  (let ((_g88825_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88824_)
                               (##vector-length _g88824_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88825_ 2)))
                        (error "Context expects 2 values" _g88825_)))
                  (let ((_slot-vector84036_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88824_ 0)))
                        (_slot-table84037_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88824_ 1))))
                    (let* ((_properties84039_
                            (let ((__tmp88828
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84012_)))
                                  (__tmp88826
                                   (let ((__tmp88827
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84011_))))
                                     (declare (not safe))
                                     (cons __tmp88827 _properties84013_))))
                              (declare (not safe))
                              (cons __tmp88828 __tmp88826)))
                           (_constructor*84044_
                            (let ((_$e84041_ _constructor84014_))
                              (if _$e84041_
                                  _$e84041_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84011_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84009_
                         _name84010_
                         _struct-super84034_
                         _precedence-list84033_
                         _slot-vector84036_
                         _properties84039_
                         _constructor*84044_
                         _slot-table84037_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84007_)
        (let ((__tmp88829
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84007_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass84007_ __tmp88829))))
    (define compute-precedence-list
      (lambda (_direct-supers84005_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers84005_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass83989_)
        (let ((_tid83991_
               (let () (declare (not safe)) (##type-id _klass83989_))))
          (if (let () (declare (not safe)) (class-type-final? _klass83989_))
              (lambda (_g8399283994_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8399283994_ _tid83991_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass83989_))
                  (lambda (_g8399683998_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8399683998_ _tid83991_)))
                  (lambda (_g8400084002_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83989_ _g8400084002_))))))))
    (define if-class-slot-field
      (lambda (_klass83978_
               _slot83979_
               _if-final83980_
               _if-struct83981_
               _if-struct-field83982_
               _if-class-slot83983_)
        (let ((_field83985_
               (let ((__tmp88830
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass83978_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp88830 _slot83979_ '#f))))
          (if (let () (declare (not safe)) (not _field83985_))
              (error '"unknown slot" 'class: _klass83978_ 'slot: _slot83979_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass83978_))
                  (_if-final83980_ _klass83978_ _slot83979_ _field83985_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass83978_))
                      (_if-struct83981_ _klass83978_ _slot83979_ _field83985_)
                      (if (let ((_strukt83987_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83978_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt83987_
                                    'gerbil#class::t))
                                 (let ((__tmp88831
                                        (let ((__tmp88832
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt83987_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp88832))))
                                   (declare (not safe))
                                   (##fx< _field83985_ __tmp88831))))
                          (_if-struct-field83982_
                           _klass83978_
                           _slot83979_
                           _field83985_)
                          (_if-class-slot83983_
                           _klass83978_
                           _slot83979_
                           _field83985_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83975_ _slot83976_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83975_
           _slot83976_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83972_ _slot83973_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83972_
           _slot83973_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83969_ _slot83970_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83969_
           _slot83970_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83966_ _slot83967_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83966_
           _slot83967_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83950_ _class83951_ _slot83952_)
        (apply error
               '"not an instance"
               'object:
               _object83950_
               'class:
               _class83951_
               (if _slot83952_
                   (let ((__tmp88833
                          (let ()
                            (declare (not safe))
                            (cons _slot83952_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88833))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83957_ _class83958_)
        (let ((_slot83960_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83957_ _class83958_ _slot83960_))))
    (define not-an-instance
      (lambda _g88835_
        (let ((_g88834_ (let () (declare (not safe)) (##length _g88835_))))
          (cond ((let () (declare (not safe)) (##fx= _g88834_ 2))
                 (apply (lambda (_object83957_ _class83958_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83957_ _class83958_)))
                        _g88835_))
                ((let () (declare (not safe)) (##fx= _g88834_ 3))
                 (apply (lambda (_object83962_ _class83963_ _slot83964_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83962_
                             _class83963_
                             _slot83964_)))
                        _g88835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88835_))))))
    (define make-final-slot-accessor
      (lambda (_klass83943_ _slot83944_ _field83945_)
        (lambda (_obj83947_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83947_
             _field83945_
             _klass83943_
             _slot83944_)))))
    (define make-final-slot-mutator
      (lambda (_klass83936_ _slot83937_ _field83938_)
        (lambda (_obj83940_ _val83941_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83940_
             _val83941_
             _field83938_
             _klass83936_
             _slot83937_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83930_ _slot83931_ _field83932_)
        (lambda (_obj83934_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83934_
             _field83932_
             _klass83930_
             _slot83931_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83923_ _slot83924_ _field83925_)
        (lambda (_obj83927_ _val83928_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83927_
             _val83928_
             _field83925_
             _klass83923_
             _slot83924_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83917_ _slot83918_ _field83919_)
        (lambda (_obj83921_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83921_
             _field83919_
             _klass83917_
             _slot83918_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83910_ _slot83911_ _field83912_)
        (lambda (_obj83914_ _val83915_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83914_
             _val83915_
             _field83912_
             _klass83910_
             _slot83911_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83904_ _slot83905_ _field83906_)
        (lambda (_obj83908_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83904_ _obj83908_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83908_ _field83906_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83908_ _klass83904_ _slot83905_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83897_ _slot83898_ _field83899_)
        (lambda (_obj83901_ _val83902_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83897_ _obj83901_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83901_ _field83899_ _val83902_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83901_ _klass83897_ _slot83898_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83891_ _slot83892_ _field83893_)
        (lambda (_obj83895_)
          (if (let ((__tmp88836
                     (let () (declare (not safe)) (##type-id _klass83891_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83895_ __tmp88836))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83895_ _field83893_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83891_ _obj83895_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83895_ _slot83892_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83895_
                     _klass83891_
                     _slot83892_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83884_ _slot83885_ _field83886_)
        (lambda (_obj83888_ _val83889_)
          (if (let ((__tmp88837
                     (let () (declare (not safe)) (##type-id _klass83884_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83888_ __tmp88837))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83888_ _field83886_ _val83889_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83884_ _obj83888_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83888_ _slot83885_ _val83889_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83888_
                     _klass83884_
                     _slot83885_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83878_ _slot83879_ _field83880_)
        (lambda (_obj83882_)
          (if (let ((__tmp88838
                     (let () (declare (not safe)) (##type-id _klass83878_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83882_ __tmp88838))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83882_ _field83880_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83882_ _slot83879_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83871_ _slot83872_ _field83873_)
        (lambda (_obj83875_ _val83876_)
          (if (let ((__tmp88839
                     (let () (declare (not safe)) (##type-id _klass83871_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83875_ __tmp88839))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83875_ _field83873_ _val83876_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83875_ _slot83872_ _val83876_))))))
    (define class-slot-offset
      (lambda (_klass83868_ _slot83869_)
        (let ((__tmp88840
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83868_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp88840 _slot83869_ '#f))))
    (define class-slot-ref
      (lambda (_klass83862_ _obj83863_ _slot83864_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83862_ _obj83863_))
            (let ((_off83866_
                   (let ((__tmp88841
                          (let ()
                            (declare (not safe))
                            (object-type _obj83863_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88841 _slot83864_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83863_
               _off83866_
               _klass83862_
               _slot83864_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83863_ _klass83862_)))))
    (define class-slot-set!
      (lambda (_klass83855_ _obj83856_ _slot83857_ _val83858_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83855_ _obj83856_))
            (let ((_off83860_
                   (let ((__tmp88842
                          (let ()
                            (declare (not safe))
                            (object-type _obj83856_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88842 _slot83857_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83856_
               _val83858_
               _off83860_
               _klass83855_
               _slot83857_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83856_ _klass83855_)))))
    (define unchecked-field-ref
      (lambda (_obj83852_ _off83853_)
        (let ((__tmp88843
               (let () (declare (not safe)) (##structure-type _obj83852_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83852_ _off83853_ __tmp88843 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83848_ _off83849_ _val83850_)
        (let ((__tmp88844
               (let () (declare (not safe)) (##structure-type _obj83848_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83848_
           _val83850_
           _off83849_
           __tmp88844
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83845_ _slot83846_)
        (let ((__tmp88845
               (let ((__tmp88846
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83845_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88846 _slot83846_))))
          (declare (not safe))
          (unchecked-field-ref _obj83845_ __tmp88845))))
    (define unchecked-slot-set!
      (lambda (_obj83841_ _slot83842_ _val83843_)
        (let ((__tmp88847
               (let ((__tmp88848
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83841_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88848 _slot83842_))))
          (declare (not safe))
          (unchecked-field-set! _obj83841_ __tmp88847 _val83843_))))
    (define slot-ref__%
      (lambda (_obj83817_ _slot83818_ _E83819_)
        (if (let () (declare (not safe)) (object? _obj83817_))
            (let* ((_klass83821_
                    (let () (declare (not safe)) (object-type _obj83817_)))
                   (_$e83824_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83821_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83821_ _slot83818_))
                        '#f)))
              (if _$e83824_
                  ((lambda (_off83827_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83817_ _off83827_)))
                   _$e83824_)
                  (_E83819_ _obj83817_ _slot83818_)))
            (_E83819_ _obj83817_ _slot83818_))))
    (define slot-ref__0
      (lambda (_obj83832_ _slot83833_)
        (let ((_E83835_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83832_ _slot83833_ _E83835_))))
    (define slot-ref
      (lambda _g88850_
        (let ((_g88849_ (let () (declare (not safe)) (##length _g88850_))))
          (cond ((let () (declare (not safe)) (##fx= _g88849_ 2))
                 (apply (lambda (_obj83832_ _slot83833_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83832_ _slot83833_)))
                        _g88850_))
                ((let () (declare (not safe)) (##fx= _g88849_ 3))
                 (apply (lambda (_obj83837_ _slot83838_ _E83839_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83837_ _slot83838_ _E83839_)))
                        _g88850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88850_))))))
    (define slot-set!__%
      (lambda (_obj83789_ _slot83790_ _val83791_ _E83792_)
        (if (let () (declare (not safe)) (object? _obj83789_))
            (let* ((_klass83794_
                    (let () (declare (not safe)) (object-type _obj83789_)))
                   (_$e83797_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83794_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83794_ _slot83790_))
                        '#f)))
              (if _$e83797_
                  ((lambda (_off83800_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83789_
                        _off83800_
                        _val83791_)))
                   _$e83797_)
                  (_E83792_ _obj83789_ _slot83790_)))
            (_E83792_ _obj83789_ _slot83790_))))
    (define slot-set!__0
      (lambda (_obj83805_ _slot83806_ _val83807_)
        (let ((_E83809_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83805_ _slot83806_ _val83807_ _E83809_))))
    (define slot-set!
      (lambda _g88852_
        (let ((_g88851_ (let () (declare (not safe)) (##length _g88852_))))
          (cond ((let () (declare (not safe)) (##fx= _g88851_ 3))
                 (apply (lambda (_obj83805_ _slot83806_ _val83807_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83805_ _slot83806_ _val83807_)))
                        _g88852_))
                ((let () (declare (not safe)) (##fx= _g88851_ 4))
                 (apply (lambda (_obj83811_ _slot83812_ _val83813_ _E83814_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83811_
                             _slot83812_
                             _val83813_
                             _E83814_)))
                        _g88852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88852_))))))
    (define __slot-error
      (lambda (_obj83785_ _slot83786_)
        (error '"Cannot find slot" 'object: _obj83785_ 'slot: _slot83786_)))
    (define subclass?
      (lambda (_maybe-sub-class83775_ _maybe-super-class83776_)
        (let* ((_maybe-super-class-id83778_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83776_)))
               (_$e83780_
                (let ((__tmp88853
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83775_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83778_ __tmp88853))))
          (if _$e83780_
              _$e83780_
              (let ((__tmp88855
                     (lambda (_super-class83783_)
                       (let ((__tmp88856
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83783_))))
                         (declare (not safe))
                         (eq? __tmp88856 _maybe-super-class-id83778_))))
                    (__tmp88854
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class83775_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp88855 __tmp88854))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83772_ _obj83773_)
        (let ((__tmp88857
               (let () (declare (not safe)) (##type-id _klass83772_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83773_ __tmp88857))))
    (define struct-instance?
      (lambda (_klass83769_ _obj83770_)
        (let ((__tmp88858
               (let () (declare (not safe)) (##type-id _klass83769_))))
          (declare (not safe))
          (##structure-instance-of? _obj83770_ __tmp88858))))
    (define class-instance?
      (lambda (_klass83764_ _obj83765_)
        (if (let () (declare (not safe)) (object? _obj83765_))
            (let ((_type83767_
                   (let () (declare (not safe)) (object-type _obj83765_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type83767_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83767_ _klass83764_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83759_ _k83760_)
        (let ((_obj83762_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83759_ _k83760_))))
          (let () (declare (not safe)) (object-fill! _obj83762_ '#f))
          _obj83762_)))
    (define object-fill!
      (lambda (_obj83752_ _fill83753_)
        (let _loop83755_ ((_i83757_
                           (let ((__tmp88860
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83752_))))
                             (declare (not safe))
                             (##fx- __tmp88860 '1))))
          (if (let () (declare (not safe)) (##fx> _i83757_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83752_
                   _fill83753_
                   _i83757_
                   '#f
                   '#f))
                (let ((__tmp88859
                       (let () (declare (not safe)) (##fx- _i83757_ '1))))
                  (declare (not safe))
                  (_loop83755_ __tmp88859)))
              _obj83752_))))
    (define new-instance
      (lambda (_klass83750_)
        (let ((__obj88765
               (let ((__tmp88861
                      (let ((__tmp88862
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83750_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp88862))))
                 (declare (not safe))
                 (##make-structure _klass83750_ __tmp88861))))
          (let () (declare (not safe)) (object-fill! __obj88765 '#f))
          __obj88765)))
    (define make-instance
      (lambda (_klass83740_ . _args83741_)
        (let* ((_obj83743_
                (let () (declare (not safe)) (new-instance _klass83740_)))
               (_$e83745_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass83740_ '10 class::t '#f))))
          (if _$e83745_
              ((lambda (_kons-id83748_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83740_
                    _kons-id83748_
                    _obj83743_
                    _args83741_)))
               _$e83745_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass83740_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass83740_
                     _obj83743_
                     _args83741_))
                  (if (let ((__tmp88866
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass83740_))))
                        (declare (not safe))
                        (not __tmp88866))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass83740_
                         _obj83743_
                         _args83741_))
                      (if (let ((__tmp88864
                                 (let ((__tmp88865
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj83743_))))
                                   (declare (not safe))
                                   (##fx- __tmp88865 '1)))
                                (__tmp88863 (length _args83741_)))
                            (declare (not safe))
                            (##fx= __tmp88864 __tmp88863))
                          (apply ##structure _klass83740_ _args83741_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass83740_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass83740_))
                                 'args:
                                 _args83741_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj83737_ . _args83738_)
        (if (let ((__tmp88868 (length _args83738_))
                  (__tmp88867
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83737_))))
              (declare (not safe))
              (##fx< __tmp88868 __tmp88867))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83737_ _args83738_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83737_
                   'args:
                   _args83738_))))
    (define __struct-instance-init!
      (lambda (_obj83696_ _args83697_)
        (let _lp83699_ ((_k83701_ '1) (_rest83702_ _args83697_))
          (let* ((_rest8370383711_ _rest83702_)
                 (_else8370583719_ (lambda () _obj83696_))
                 (_K8370783725_
                  (lambda (_rest83722_ _hd83723_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83696_ _k83701_ _hd83723_))
                    (let ((__tmp88869
                           (let () (declare (not safe)) (##fx+ _k83701_ '1))))
                      (declare (not safe))
                      (_lp83699_ __tmp88869 _rest83722_)))))
            (if (let () (declare (not safe)) (##pair? _rest8370383711_))
                (let ((_hd8370883728_
                       (let () (declare (not safe)) (##car _rest8370383711_)))
                      (_tl8370983730_
                       (let () (declare (not safe)) (##cdr _rest8370383711_))))
                  (let* ((_hd83733_ _hd8370883728_)
                         (_rest83735_ _tl8370983730_))
                    (declare (not safe))
                    (_K8370783725_ _rest83735_ _hd83733_)))
                (let () (declare (not safe)) (_else8370583719_)))))))
    (define class-instance-init!
      (lambda (_obj83693_ . _args83694_)
        (let ((__tmp88870
               (let () (declare (not safe)) (object-type _obj83693_))))
          (declare (not safe))
          (__class-instance-init! __tmp88870 _obj83693_ _args83694_))))
    (define __class-instance-init!
      (lambda (_klass83637_ _obj83638_ _args83639_)
        (let _lp83641_ ((_rest83643_ _args83639_))
          (let* ((_rest8364483654_ _rest83643_)
                 (_else8364683662_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83643_))
                        _obj83638_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83637_
                               'rest:
                               _rest83643_))))
                 (_K8364883674_
                  (lambda (_rest83665_ _val83666_ _key83667_)
                    (let ((_$e83669_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83637_ _key83667_))))
                      (if _$e83669_
                          ((lambda (_off83672_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83638_
                                _off83672_
                                _val83666_))
                             (let ()
                               (declare (not safe))
                               (_lp83641_ _rest83665_)))
                           _$e83669_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83637_
                                 'slot:
                                 _key83667_))))))
            (if (let () (declare (not safe)) (##pair? _rest8364483654_))
                (let ((_hd8364983677_
                       (let () (declare (not safe)) (##car _rest8364483654_)))
                      (_tl8365083679_
                       (let () (declare (not safe)) (##cdr _rest8364483654_))))
                  (let ((_key83682_ _hd8364983677_))
                    (if (let () (declare (not safe)) (##pair? _tl8365083679_))
                        (let ((_hd8365183684_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8365083679_)))
                              (_tl8365283686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8365083679_))))
                          (let* ((_val83689_ _hd8365183684_)
                                 (_rest83691_ _tl8365283686_))
                            (declare (not safe))
                            (_K8364883674_ _rest83691_ _val83689_ _key83682_)))
                        (let () (declare (not safe)) (_else8364683662_)))))
                (let () (declare (not safe)) (_else8364683662_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass83633_ _obj83634_ _args83635_)
        (apply call-method
               _klass83633_
               'instance-init!
               _obj83634_
               _args83635_)))
    (define constructor-init!
      (lambda (_klass83628_ _kons-id83629_ _obj83630_ . _args83631_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83628_
           _kons-id83629_
           _obj83630_
           _args83631_))))
    (define __constructor-init!
      (lambda (_klass83618_ _kons-id83619_ _obj83620_ _args83621_)
        (let ((_$e83623_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83618_ _obj83620_ _kons-id83619_))))
          (if _$e83623_
              ((lambda (_kons83626_)
                 (apply _kons83626_ _obj83620_ _args83621_)
                 _obj83620_)
               _$e83623_)
              (error '"missing constructor"
                     'class:
                     _klass83618_
                     'method:
                     _kons-id83619_)))))
    (define struct-copy
      (lambda (_struct83616_)
        (if (let () (declare (not safe)) (##structure? _struct83616_))
            '#!void
            (error '"not a structure" _struct83616_))
        (let () (declare (not safe)) (##structure-copy _struct83616_))))
    (define struct->list
      (lambda (_obj83614_)
        (if (let () (declare (not safe)) (object? _obj83614_))
            (let () (declare (not safe)) (##vector->list _obj83614_))
            (error '"not an object" _obj83614_))))
    (define class->list
      (lambda (_obj83601_)
        (if (let () (declare (not safe)) (object? _obj83601_))
            (let ((_klass83603_
                   (let () (declare (not safe)) (object-type _obj83601_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass83603_ 'gerbil#class::t))
                  (let ((_slot-vector83605_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass83603_
                            '7
                            class::t
                            '#f))))
                    (let _loop83607_ ((_index83609_
                                       (let ((__tmp88876
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector83605_))))
                                         (declare (not safe))
                                         (##fx- __tmp88876 '1)))
                                      (_plist83610_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83609_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83603_ _plist83610_))
                          (let ((_slot83612_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector83605_
                                    _index83609_))))
                            (let ((__tmp88875
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83609_ '1)))
                                  (__tmp88871
                                   (let ((__tmp88874
                                          (symbol->keyword _slot83612_))
                                         (__tmp88872
                                          (let ((__tmp88873
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83601_
                                                    _index83609_))))
                                            (declare (not safe))
                                            (cons __tmp88873 _plist83610_))))
                                     (declare (not safe))
                                     (cons __tmp88874 __tmp88872))))
                              (declare (not safe))
                              (_loop83607_ __tmp88875 __tmp88871))))))
                  (error '"not a class type"
                         'object:
                         _obj83601_
                         'class:
                         _klass83603_)))
            (error '"not an object" _obj83601_))))
    (define call-method
      (lambda (_obj83592_ _id83593_ . _args83594_)
        (let ((_$e83596_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83592_ _id83593_))))
          (if _$e83596_
              ((lambda (_method83599_)
                 (apply _method83599_ _obj83592_ _args83594_))
               _$e83596_)
              (error '"cannot find method"
                     'object:
                     _obj83592_
                     'method:
                     _id83593_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table '0 '#f)))
    (define method-ref
      (lambda (_obj83589_ _id83590_)
        (if (let () (declare (not safe)) (object? _obj83589_))
            (let ((__tmp88877
                   (let () (declare (not safe)) (object-type _obj83589_))))
              (declare (not safe))
              (find-method __tmp88877 _obj83589_ _id83590_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83583_ _id83584_)
        (let ((_$e83586_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83583_ _id83584_))))
          (if _$e83586_
              _$e83586_
              (error '"missing method"
                     'object:
                     _obj83583_
                     'method:
                     _id83584_)))))
    (define bound-method-ref
      (lambda (_obj83573_ _id83574_)
        (let ((_$e83576_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83573_ _id83574_))))
          (if _$e83576_
              ((lambda (_method83579_)
                 (lambda _args83581_
                   (apply _method83579_ _obj83573_ _args83581_)))
               _$e83576_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83566_ _id83567_)
        (let ((_method83569_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83566_ _id83567_))))
          (lambda _args83571_ (apply _method83569_ _obj83566_ _args83571_)))))
    (define find-method
      (lambda (_klass83562_ _obj83563_ _id83564_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83562_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83562_ _obj83563_ _id83564_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83562_ _obj83563_ _id83564_)))))
    (define __find-method
      (lambda (_klass83555_ _obj83556_ _id83557_)
        (let ((_$e83559_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83555_ _obj83556_ _id83557_))))
          (if _$e83559_
              _$e83559_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83555_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83555_ _obj83556_ _id83557_)))))))
    (define class-find-method
      (lambda (_klass83551_ _obj83552_ _id83553_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83551_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83551_ _obj83552_ _id83553_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83543_ _obj83544_ _id83545_)
        (let ((__tmp88878
               (lambda (_g8354683548_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8354683548_ _obj83544_ _id83545_)))))
          (declare (not safe))
          (ormap1 __tmp88878 _mixins83543_))))
    (define builtin-find-method
      (lambda (_klass83536_ _obj83537_ _id83538_)
        (if (let () (declare (not safe)) (##type? _klass83536_))
            (let ((_$e83540_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83536_ _obj83537_ _id83538_))))
              (if _$e83540_
                  _$e83540_
                  (let ((__tmp88879
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83536_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88879 _obj83537_ _id83538_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83513_ _obj83514_ _id83515_)
        (letrec ((_metaclass-resolve-method83517_
                  (lambda ()
                    (let ((__method88766
                           (let ()
                             (declare (not safe))
                             (method-ref _klass83513_ 'direct-method-ref))))
                      (if __method88766
                          (__method88766 _klass83513_ _obj83514_ _id83515_)
                          (error '"Missing method"
                                 _klass83513_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!83518_
                  (lambda ()
                    (let ((_method83533_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method83517_))))
                      (let ((__tmp88881
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83513_
                                '11
                                class::t
                                '#f)))
                            (__tmp88880 (if _method83533_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp88881 _id83515_ __tmp88880))
                      _method83533_))))
          (let ((_$e83520_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass83513_ '11 class::t '#f))))
            (if _$e83520_
                ((lambda (_ht83523_)
                   (let ((_method83525_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht83523_ _id83515_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method83525_))
                         _method83525_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass83513_))
                             (let ((_$e83527_ _method83525_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e83527_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method83517_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e83527_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!83518_)))))
                             '#f))))
                 _$e83520_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass83513_))
                    (let ((_tab83530_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83513_
                         _tab83530_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!83518_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass83509_ _obj83510_ _id83511_)
        (let ((__tmp88882 (##structure-ref _klass83509_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp88882 _obj83510_ _id83511_))))
    (define builtin-method-ref
      (lambda (_klass83500_ _obj83501_ _id83502_)
        (let ((_$e83504_
               (let ((__tmp88883
                      (let () (declare (not safe)) (##type-id _klass83500_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp88883 '#f))))
          (if _$e83504_
              ((lambda (_mtab83507_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab83507_ _id83502_ '#f)))
               _$e83504_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83466_ _id83467_ _proc83468_ _rebind?83469_)
        (letrec ((_bind!83471_
                  (lambda (_ht83484_)
                    (if (and (let () (declare (not safe)) (not _rebind?83469_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht83484_ _id83467_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83466_
                               'method:
                               _id83467_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht83484_
                           _id83467_
                           _proc83468_))))))
          (if (let () (declare (not safe)) (procedure? _proc83468_))
              '#!void
              (error '"bad method; expected procedure" _proc83468_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83466_ 'gerbil#class::t))
              (let ((_ht83473_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass83466_
                        '11
                        class::t
                        '#f))))
                (if _ht83473_
                    (let () (declare (not safe)) (_bind!83471_ _ht83473_))
                    (let ((_ht83475_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83466_
                         _ht83475_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!83471_ _ht83475_)))))
              (if (let () (declare (not safe)) (##type? _klass83466_))
                  (let ((_ht83482_
                         (let ((_$e83477_
                                (let ((__tmp88884
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83466_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp88884
                                   '#f))))
                           (if _$e83477_
                               _$e83477_
                               (let ((_ht83480_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table '#f '0))))
                                 (let ((__tmp88885
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83466_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp88885
                                    _ht83480_))
                                 _ht83480_)))))
                    (declare (not safe))
                    (_bind!83471_ _ht83482_))
                  (error '"bad class; expected class or builtin type"
                         _klass83466_))))))
    (define bind-method!__0
      (lambda (_klass83489_ _id83490_ _proc83491_)
        (let ((_rebind?83493_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83489_
           _id83490_
           _proc83491_
           _rebind?83493_))))
    (define bind-method!
      (lambda _g88887_
        (let ((_g88886_ (let () (declare (not safe)) (##length _g88887_))))
          (cond ((let () (declare (not safe)) (##fx= _g88886_ 3))
                 (apply (lambda (_klass83489_ _id83490_ _proc83491_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83489_
                             _id83490_
                             _proc83491_)))
                        _g88887_))
                ((let () (declare (not safe)) (##fx= _g88886_ 4))
                 (apply (lambda (_klass83495_
                                 _id83496_
                                 _proc83497_
                                 _rebind?83498_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83495_
                             _id83496_
                             _proc83497_
                             _rebind?83498_)))
                        _g88887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88887_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc83462_ _specializer83463_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc83462_
           _specializer83463_))))
    (define seal-class!
      (lambda (_klass83429_)
        (letrec ((_collect-methods!83431_
                  (lambda (_mtab83447_)
                    (letrec ((_merge!83449_
                              (lambda (_tab83457_)
                                (let ((__tmp88888
                                       (lambda (_id83459_ _proc83460_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab83447_
                                            _id83459_
                                            _proc83460_)))))
                                  (declare (not safe))
                                  (raw-table-for-each __tmp88888 _tab83457_))))
                             (_collect-direct-methods!83450_
                              (lambda (_klass83452_)
                                (let ((_$e83454_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass83452_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e83454_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83449_ _$e83454_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83450_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83429_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83429_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83429_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass83429_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83429_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass83429_))
                        (let ((__method88767
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass83429_ 'seal-class!))))
                          (if __method88767
                              (__method88767 _klass83429_)
                              (error '"Missing method"
                                     _klass83429_
                                     'seal-class!)))
                        (if (let ((__tmp88895
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass83429_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp88895))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass83429_)
                            (let ((_vtab83433_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0)))
                                  (_mtab83434_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!83431_ _mtab83434_))
                              (let ((__tmp88889
                                     (lambda (_id83436_ _proc83437_)
                                       (let ((_$e83439_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc83437_
                                                 '#f))))
                                         (if _$e83439_
                                             ((lambda (_specializer83442_)
                                                (let ((_proc83444_
                                                       (_specializer83442_
                                                        _klass83429_))
                                                      (_gid83445_
                                                       (let ((__tmp88890
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass83429_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp88890 '"::[" _id83436_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp88891
                                                               (let ((__tmp88892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88893
                                     (let ((__tmp88894
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc83444_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp88894))))
                                (declare (not safe))
                                (cons __tmp88893 '()))))
                         (declare (not safe))
                         (cons _gid83445_ __tmp88892))))
                  (declare (not safe))
                  (cons 'def __tmp88891)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab83433_
                                                     _id83436_
                                                     _proc83444_))))
                                              _$e83439_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab83433_
                                                _id83436_
                                                _proc83437_)))))))
                                (declare (not safe))
                                (raw-table-for-each __tmp88889 _mtab83434_))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass83429_
                                 _vtab83433_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass83429_))))
              '#!void))))
    (define next-method
      (lambda (_subklass83378_ _obj83379_ _id83380_)
        (let ((_klass83382_
               (let () (declare (not safe)) (object-type _obj83379_)))
              (_type-id83383_
               (let () (declare (not safe)) (##type-id _subklass83378_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83382_ 'gerbil#class::t))
              (let _lp83385_ ((_rest83387_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83382_))))
                (let* ((_rest8338883396_ _rest83387_)
                       (_else8339083404_ (lambda () '#f))
                       (_K8339283410_
                        (lambda (_rest83407_ _klass83408_)
                          (if (let ((__tmp88898
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83408_))))
                                (declare (not safe))
                                (eq? _type-id83383_ __tmp88898))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest83407_
                                 _obj83379_
                                 _id83380_))
                              (let ()
                                (declare (not safe))
                                (_lp83385_ _rest83407_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8338883396_))
                      (let ((_hd8339383413_
                             (let ()
                               (declare (not safe))
                               (##car _rest8338883396_)))
                            (_tl8339483415_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8338883396_))))
                        (let* ((_klass83418_ _hd8339383413_)
                               (_rest83420_ _tl8339483415_))
                          (declare (not safe))
                          (_K8339283410_ _rest83420_ _klass83418_)))
                      (let () (declare (not safe)) (_else8339083404_)))))
              (if (let () (declare (not safe)) (##type? _klass83382_))
                  (let _lp83422_ ((_klass83424_ _klass83382_))
                    (if (let ((__tmp88897
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83424_))))
                          (declare (not safe))
                          (eq? _type-id83383_ __tmp88897))
                        (let ((__tmp88896
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83424_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp88896
                           _obj83379_
                           _id83380_))
                        (let ((_$e83426_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83424_))))
                          (if _$e83426_
                              (let ()
                                (declare (not safe))
                                (_lp83422_ _$e83426_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83368_ _obj83369_ _id83370_ . _args83371_)
        (let ((_$e83373_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83368_ _obj83369_ _id83370_))))
          (if _$e83373_
              ((lambda (_methodf83376_)
                 (apply _methodf83376_ _obj83369_ _args83371_))
               _$e83373_)
              (error '"cannot find next method"
                     'object:
                     _obj83369_
                     'method:
                     _id83370_)))))
    (define write-style (lambda (_we83366_) (macro-writeenv-style _we83366_)))
    (define write-object
      (lambda (_we83358_ _obj83359_)
        (let ((_$e83361_
               (let () (declare (not safe)) (method-ref _obj83359_ ':wr))))
          (if _$e83361_
              ((lambda (_method83364_) (_method83364_ _obj83359_ _we83358_))
               _$e83361_)
              (let ()
                (declare (not safe))
                (##default-wr _we83358_ _obj83359_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
