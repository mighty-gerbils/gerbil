(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708210939)
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
      (let* ((_slots84486_
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
             (_slot-vector84488_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots84486_))))
             (_slot-table84495_
              (let ((_slot-table84490_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot84492_ _field84493_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84490_
                      _slot84492_
                      _field84493_))
                   (let ((__tmp88702 (symbol->keyword _slot84492_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84490_
                      __tmp88702
                      _field84493_)))
                 _slots84486_
                 (let ((__tmp88703 (length _slots84486_)))
                   (declare (not safe))
                   (iota __tmp88703 '1)))
                _slot-table84490_))
             (_flags84497_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields84503_
              (list->vector
               (apply append
                      (map (lambda (_g8449884500_) (list _g8449884500_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84486_ '5))))))
             (_properties84505_
              (let ((__tmp88706
                     (let ((__tmp88707
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots84486_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp88707)))
                    (__tmp88704
                     (let ((__tmp88705
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp88705 '()))))
                (declare (not safe))
                (cons __tmp88706 __tmp88704)))
             (_t84507_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags84497_
                 ##type-type
                 _fields84503_
                 '()
                 _slot-vector84488_
                 _slot-table84495_
                 _properties84505_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t84507_ _t84507_))
        _t84507_))
    (define class-type?
      (lambda (_obj84484_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84484_ class::t.id))))
    (define class-type=?
      (lambda (_x84481_ _y84482_)
        (let ((__tmp88709 (##structure-ref _x84481_ '1 class::t '#f))
              (__tmp88708 (##structure-ref _y84482_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp88709 __tmp88708))))
    (define type-opaque?
      (lambda (_type84479_)
        (let ((__tmp88710
               (let ((__tmp88711
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84479_))))
                 (declare (not safe))
                 (##fxand __tmp88711 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp88710 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type84477_)
        (let ((__tmp88712
               (let ((__tmp88713
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84477_))))
                 (declare (not safe))
                 (##fxand __tmp88713 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88712 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type84475_)
        (let ((__tmp88714
               (let ((__tmp88715
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84475_))))
                 (declare (not safe))
                 (##fxand __tmp88715 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88714 '0))))
    (define class-type-struct?
      (lambda (_klass84473_)
        (let ((__tmp88716
               (let ((__tmp88717
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84473_))))
                 (declare (not safe))
                 (##fxand __tmp88717 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp88716 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass84471_)
        (let ((__tmp88718
               (let ((__tmp88719
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84471_))))
                 (declare (not safe))
                 (##fxand __tmp88719 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp88718 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass84469_)
        (let ((__tmp88720
               (let ((__tmp88721
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84469_))))
                 (declare (not safe))
                 (##fxand __tmp88721 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp88720 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties84435_)
        (map (lambda (_e8443684438_)
               (let* ((_g8444084447_ _e8443684438_)
                      (_E8444284451_
                       (lambda () (error '"No clause matching" _g8444084447_)))
                      (_K8444384457_
                       (lambda (_val84454_ _key84455_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84455_ 'direct-supers:))
                             (let ((__tmp88722 (map class-type-id _val84454_)))
                               (declare (not safe))
                               (cons _key84455_ __tmp88722))
                             (let ()
                               (declare (not safe))
                               (cons _key84455_ _val84454_))))))
                 (if (let () (declare (not safe)) (##pair? _g8444084447_))
                     (let ((_hd8444484460_
                            (let ()
                              (declare (not safe))
                              (##car _g8444084447_)))
                           (_tl8444584462_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8444084447_))))
                       (let* ((_key84465_ _hd8444484460_)
                              (_val84467_ _tl8444584462_))
                         (declare (not safe))
                         (_K8444384457_ _val84467_ _key84465_)))
                     (let () (declare (not safe)) (_E8444284451_)))))
             _properties84435_)))
    (define make-class-type-descriptor
      (lambda (_type-id84334_
               _type-name84335_
               _type-super84336_
               _precedence-list84337_
               _slot-vector84338_
               _properties84339_
               _constructor84340_
               _slot-table84341_
               _methods84342_)
        (letrec ((_make-props!84344_
                  (lambda (_key84404_)
                    (letrec* ((_ht84406_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table '#f '0)))
                              (_put-slots!84407_
                               (lambda (_ht84428_ _slots84429_)
                                 (for-each
                                  (lambda (_g8443084432_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht84428_
                                       _g8443084432_
                                       '#t)))
                                  _slots84429_)))
                              (_put-alist!84408_
                               (lambda (_ht84417_ _key84418_ _alist84419_)
                                 (let ((_$e84421_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84418_ _alist84419_))))
                                   (if _$e84421_
                                       ((lambda (_g8442384425_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84407_
                                             _ht84417_
                                             _g8442384425_)))
                                        _$e84421_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84408_
                         _ht84406_
                         _key84404_
                         _properties84339_))
                      (for-each
                       (lambda (_mixin84410_)
                         (let ((_alist84412_
                                (##structure-ref
                                 _mixin84410_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84412_))
                                   (let ((__tmp88724
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84404_
                                                     _alist84412_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88724)))
                               (let ((__tmp88723
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84410_))))
                                 (declare (not safe))
                                 (_put-slots!84407_ _ht84406_ __tmp88723))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84408_
                                  _ht84406_
                                  _key84404_
                                  _alist84412_)))))
                       _precedence-list84337_)
                      _ht84406_))))
          (let* ((_transparent?84346_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84339_)))
                 (_all-slots-printable?84351_
                  (let ((_$e84348_ _transparent?84346_))
                    (if _$e84348_
                        _$e84348_
                        (let ((__tmp88725
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84339_))))
                          (declare (not safe))
                          (eq? '#t __tmp88725)))))
                 (_printable84353_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84351_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84344_ 'print:))
                      '#f))
                 (_all-slots-equalable?84358_
                  (let ((_$e84355_ _transparent?84346_))
                    (if _$e84355_
                        _$e84355_
                        (let ((__tmp88726
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84339_))))
                          (declare (not safe))
                          (eq? '#t __tmp88726)))))
                 (_equalable84360_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84358_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84344_ 'equal:))
                      '#f))
                 (_first-new-field84362_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super84336_
                         'gerbil#class::t))
                      (let ((__tmp88727
                             (##structure-ref
                              _type-super84336_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp88727))
                      '1))
                 (_field-info-length84364_
                  (let ((__tmp88728
                         (let ((__tmp88729
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84338_))))
                           (declare (not safe))
                           (##fx- __tmp88729 _first-new-field84362_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88728)))
                 (_field-info84366_ (make-vector _field-info-length84364_ '#f))
                 (_struct?84368_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84339_)))
                 (_final?84370_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84339_)))
                 (_metaclass84378_
                  (let ((_metaclass8437184373_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties84339_))))
                    (if _metaclass8437184373_
                        (let ((_metaclass84376_ _metaclass8437184373_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass84376_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id84334_
                                     'metaclass:
                                     _metaclass84376_))
                          _metaclass84376_)
                        '#f)))
                 (_opaque?84383_
                  (let ((_$e84380_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84358_))))
                    (if _$e84380_
                        _$e84380_
                        (if _type-super84336_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84336_))
                            '#f))))
                 (_type-flags84385_
                  (let ((__tmp88733 (if _final?84370_ '0 type-flag-extensible))
                        (__tmp88732 (if _opaque?84383_ type-flag-opaque '0))
                        (__tmp88731
                         (if _struct?84368_ class-type-flag-struct '0))
                        (__tmp88730
                         (if _metaclass84378_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp88733
                             __tmp88732
                             __tmp88731
                             __tmp88730))))
            (let _loop84388_ ((_i84390_ _first-new-field84362_) (_j84391_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84391_ _field-info-length84364_))
                  (let* ((_slot84393_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84338_ _i84390_)))
                         (_flags84401_
                          (if _transparent?84346_
                              '0
                              (let ((__tmp88735
                                     (if (or _all-slots-printable?84351_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable84353_
                                                _slot84393_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88734
                                     (if (or _all-slots-equalable?84358_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable84360_
                                                _slot84393_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88735 __tmp88734)))))
                    (vector-set! _field-info84366_ _j84391_ _slot84393_)
                    (vector-set!
                     _field-info84366_
                     (let () (declare (not safe)) (##fx+ _j84391_ '1))
                     _flags84401_)
                    (let ((__tmp88737
                           (let () (declare (not safe)) (##fx+ _i84390_ '1)))
                          (__tmp88736
                           (let () (declare (not safe)) (##fx+ _j84391_ '3))))
                      (declare (not safe))
                      (_loop84388_ __tmp88737 __tmp88736)))
                  '#!void))
            (if _metaclass84378_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass84378_
                   _type-id84334_
                   _type-name84335_
                   _type-flags84385_
                   _type-super84336_
                   _field-info84366_
                   _precedence-list84337_
                   _slot-vector84338_
                   _slot-table84341_
                   _properties84339_
                   _constructor84340_
                   _methods84342_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id84334_
                   _type-name84335_
                   _type-flags84385_
                   _type-super84336_
                   _field-info84366_
                   _precedence-list84337_
                   _slot-vector84338_
                   _slot-table84341_
                   _properties84339_
                   _constructor84340_
                   _methods84342_)))))))
    (define class-type-id
      (lambda (_klass84332_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84332_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass84330_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84330_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass84327_ _val84328_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84327_ _val84328_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass84322_ _val84324_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84322_
           _val84324_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass84320_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84320_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass84318_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84318_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass84315_ _val84316_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84315_ _val84316_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass84310_ _val84312_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84310_
           _val84312_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass84308_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84308_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass84306_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84306_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass84303_ _val84304_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84303_ _val84304_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass84298_ _val84300_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84298_
           _val84300_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass84296_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84296_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass84294_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84294_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass84291_ _val84292_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84291_ _val84292_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass84286_ _val84288_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84286_
           _val84288_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass84284_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84284_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass84282_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84282_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass84279_ _val84280_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84279_ _val84280_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass84274_ _val84276_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84274_
           _val84276_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass84272_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84272_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass84270_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass84270_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass84267_ _val84268_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84267_
           _val84268_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass84262_ _val84264_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84262_
           _val84264_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84260_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84260_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass84258_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84258_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass84255_ _val84256_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84255_
           _val84256_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass84250_ _val84252_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84250_
           _val84252_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84248_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84248_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass84246_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84246_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass84243_ _val84244_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84243_ _val84244_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass84238_ _val84240_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84238_
           _val84240_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass84236_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84236_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass84234_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84234_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass84231_ _val84232_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84231_ _val84232_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass84226_ _val84228_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84226_
           _val84228_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass84224_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84224_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass84222_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84222_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass84219_ _val84220_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84219_
           _val84220_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass84214_ _val84216_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84214_
           _val84216_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass84212_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84212_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass84210_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84210_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass84207_ _val84208_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84207_ _val84208_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass84202_ _val84204_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84202_
           _val84204_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass84200_)
        (cdr (vector->list (##structure-ref _klass84200_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass84198_)
        (let ((__tmp88738
               (let ((__tmp88739
                      (##structure-ref _klass84198_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp88739))))
          (declare (not safe))
          (##fx- __tmp88738 '1))))
    (define class-type-seal!
      (lambda (_klass84196_)
        (let ((__tmp88740
               (let ((__tmp88741
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84196_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88741))))
          (declare (not safe))
          (##structure-set!
           _klass84196_
           __tmp88740
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass84194_)
        (let ((__tmp88742
               (let ((__tmp88743
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84194_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88743))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84194_
           __tmp88742
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84185_ _maybe-super-struct84186_)
        (let ((_maybe-super-struct-id84188_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84186_))))
          (let _lp84190_ ((_super-struct84192_ _maybe-sub-struct84185_))
            (if (let () (declare (not safe)) (not _super-struct84192_))
                '#f
                (if (let ((__tmp88745
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct84192_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84188_ __tmp88745))
                    '#t
                    (let ((__tmp88744
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84192_))))
                      (declare (not safe))
                      (_lp84190_ __tmp88744))))))))
    (define base-struct/1
      (lambda (_klass84183_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84183_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass84183_))
                _klass84183_
                (let () (declare (not safe)) (##type-super _klass84183_)))
            (if (let () (declare (not safe)) (not _klass84183_))
                '#f
                (error '"not a class or false" _klass84183_)))))
    (define base-struct/2
      (lambda (_klass184171_ _klass284172_)
        (let ((_s184174_
               (let () (declare (not safe)) (base-struct/1 _klass184171_)))
              (_s284175_
               (let () (declare (not safe)) (base-struct/1 _klass284172_))))
          (if (or (let () (declare (not safe)) (not _s184174_))
                  (and _s284175_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184174_ _s284175_))))
              _s284175_
              (if (or (let () (declare (not safe)) (not _s284175_))
                      (and _s184174_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284175_ _s184174_))))
                  _s184174_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184171_
                         _klass284172_
                         _s184174_
                         _s284175_))))))
    (define base-struct/list
      (lambda (_all-supers84055_)
        (let* ((_all-supers8405684081_ _all-supers84055_)
               (_E8406184085_
                (lambda ()
                  (error '"No clause matching" _all-supers8405684081_))))
          (let ((_K8407984168_ (lambda () '#f))
                (_K8407684154_
                 (lambda (_x84152_)
                   (let () (declare (not safe)) (base-struct/1 _x84152_))))
                (_K8407184131_
                 (lambda (_y84128_ _x84129_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84129_ _y84128_))))
                (_K8406284092_
                 (lambda (_y84089_ _x84090_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84090_ _y84089_)))))
            (let* ((___match8869788698_
                    (lambda (_hd8406384095_ _tl8406484097_)
                      (let ((_x84100_ _hd8406384095_))
                        (letrec ((_splice-rest8406684102_
                                  (lambda (_rest8407084109_ _y84111_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8407084109_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8406284092_ _y84111_ _x84100_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8406184085_)))))
                                 (_splice-try8406884104_
                                  (lambda (_hd8406984113_
                                           _rest8407084115_
                                           _y8406584116_)
                                    (let ((_y84119_ _hd8406984113_))
                                      (let ((__tmp88747
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8407084115_)))
                                            (__tmp88746
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84119_ _y8406584116_))))
                                        (declare (not safe))
                                        (_splice-loop8406784106_
                                         __tmp88747
                                         __tmp88746)))))
                                 (_splice-loop8406784106_
                                  (lambda (_rest8407084121_ _y8406584122_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8407084121_))
                                        (let ((__tmp88749
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8407084121_))))
                                          (declare (not safe))
                                          (_splice-try8406884104_
                                           __tmp88749
                                           _rest8407084121_
                                           _y8406584122_))
                                        (let ((__tmp88748
                                               (reverse _y8406584122_)))
                                          (declare (not safe))
                                          (_splice-rest8406684102_
                                           _rest8407084121_
                                           __tmp88748))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8406784106_ _tl8406484097_ '()))))))
                   (_try-match8405884164_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8405684081_))
                          (let ((_tl8407884159_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8405684081_)))
                                (_hd8407784157_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8405684081_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8407884159_))
                                (let ((_x84162_ _hd8407784157_))
                                  (declare (not safe))
                                  (base-struct/1 _x84162_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8407884159_))
                                    (let ((_tl8407584143_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8407884159_)))
                                          (_hd8407484141_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8407884159_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8407584143_))
                                          (let ((_x84139_ _hd8407784157_)
                                                (_y84146_ _hd8407484141_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8407184131_
                                               _y84146_
                                               _x84139_)))
                                          (___match8869788698_
                                           _hd8407784157_
                                           _tl8407884159_)))
                                    (___match8869788698_
                                     _hd8407784157_
                                     _tl8407884159_))))
                          (let () (declare (not safe)) (_E8406184085_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8405684081_))
                  (let () (declare (not safe)) (_K8407984168_))
                  (let () (declare (not safe)) (_try-match8405884164_))))))))
    (define base-struct
      (lambda _all-supers84053_
        (let () (declare (not safe)) (base-struct/list _all-supers84053_))))
    (define find-super-constructor
      (lambda (_super84005_)
        (let _lp84007_ ((_rest84009_ _super84005_) (_constructor84010_ '#f))
          (let* ((_rest8401184019_ _rest84009_)
                 (_else8401384027_ (lambda () _constructor84010_))
                 (_K8401584041_
                  (lambda (_rest84030_ _hd84031_)
                    (let ((_$e84033_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84031_
                              '10
                              class::t
                              '#f))))
                      (if _$e84033_
                          ((lambda (_xconstructor84036_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84010_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84010_
                                            _xconstructor84036_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84007_ _rest84030_ _xconstructor84036_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84010_
                                        _xconstructor84036_)))
                           _$e84033_)
                          (let ()
                            (declare (not safe))
                            (_lp84007_ _rest84030_ _constructor84010_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8401184019_))
                (let ((_hd8401684044_
                       (let () (declare (not safe)) (##car _rest8401184019_)))
                      (_tl8401784046_
                       (let () (declare (not safe)) (##cdr _rest8401184019_))))
                  (let* ((_hd84049_ _hd8401684044_)
                         (_rest84051_ _tl8401784046_))
                    (declare (not safe))
                    (_K8401584041_ _rest84051_ _hd84049_)))
                (let () (declare (not safe)) (_else8401384027_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83981_ _direct-slots83982_)
        (let* ((_next-slot83984_ '1)
               (_slot-table83986_
                (let () (declare (not safe)) (make-symbolic-table '#f '0)))
               (_r-slots83988_ '(__class))
               (_process-slot83992_
                (lambda (_slot83990_)
                  (if (let () (declare (not safe)) (symbol? _slot83990_))
                      '#!void
                      (error '"invalid slot name" _slot83990_))
                  (if (let ((__tmp88751
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table83986_
                                _slot83990_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp88751 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table83986_
                           _slot83990_
                           _next-slot83984_))
                        (let ((__tmp88750 (symbol->keyword _slot83990_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table83986_
                           __tmp88750
                           _next-slot83984_))
                        (set! _r-slots83988_
                              (let ()
                                (declare (not safe))
                                (cons _slot83990_ _r-slots83988_)))
                        (set! _next-slot83984_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83984_ '1))))
                      '#!void)))
               (_process-slots83998_
                (lambda (_g8399383995_)
                  (for-each _process-slot83992_ _g8399383995_))))
          (for-each
           (lambda (_mixin84001_)
             (let ((__tmp88752
                    (let ((__tmp88753
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84001_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88753 '()))))
               (declare (not safe))
               (_process-slots83998_ __tmp88752)))
           (reverse _class-precedence-list83981_))
          (let ()
            (declare (not safe))
            (_process-slots83998_ _direct-slots83982_))
          (let ((_slot-vector84003_ (list->vector (reverse _r-slots83988_))))
            (values _slot-vector84003_ _slot-table83986_)))))
    (define make-class-type
      (lambda (_id83943_
               _name83944_
               _direct-supers83945_
               _direct-slots83946_
               _properties83947_
               _constructor83948_)
        (let ((_$e83953_
               (let ((__tmp88754
                      (lambda (_$obj83950_)
                        (let ((__tmp88755
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj83950_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp88755)))))
                 (declare (not safe))
                 (find __tmp88754 _direct-supers83945_))))
          (if _$e83953_
              ((lambda (_g8395583957_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8395583957_))
               _$e83953_)
              (let ((_$e83960_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers83945_))))
                (if _$e83960_
                    ((lambda (_g8396283964_)
                       (error '"Cannot extend final class" _g8396283964_))
                     _$e83960_)
                    '#!void))))
        (let ((_g88756_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83945_))))
          (begin
            (let ((_g88757_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88756_) (##vector-length _g88756_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88757_ 2)))
                  (error "Context expects 2 values" _g88757_)))
            (let ((_precedence-list83967_
                   (let () (declare (not safe)) (##vector-ref _g88756_ 0)))
                  (_struct-super83968_
                   (let () (declare (not safe)) (##vector-ref _g88756_ 1))))
              (let ((_g88758_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83967_
                        _direct-slots83946_))))
                (begin
                  (let ((_g88759_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88758_)
                               (##vector-length _g88758_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88759_ 2)))
                        (error "Context expects 2 values" _g88759_)))
                  (let ((_slot-vector83970_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88758_ 0)))
                        (_slot-table83971_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88758_ 1))))
                    (let* ((_properties83973_
                            (let ((__tmp88762
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83946_)))
                                  (__tmp88760
                                   (let ((__tmp88761
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83945_))))
                                     (declare (not safe))
                                     (cons __tmp88761 _properties83947_))))
                              (declare (not safe))
                              (cons __tmp88762 __tmp88760)))
                           (_constructor*83978_
                            (let ((_$e83975_ _constructor83948_))
                              (if _$e83975_
                                  _$e83975_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83945_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id83943_
                         _name83944_
                         _struct-super83968_
                         _precedence-list83967_
                         _slot-vector83970_
                         _properties83973_
                         _constructor*83978_
                         _slot-table83971_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83941_)
        (let ((__tmp88763
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83941_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass83941_ __tmp88763))))
    (define compute-precedence-list
      (lambda (_direct-supers83939_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers83939_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass83923_)
        (let ((_tid83925_
               (let () (declare (not safe)) (##type-id _klass83923_))))
          (if (let () (declare (not safe)) (class-type-final? _klass83923_))
              (lambda (_g8392683928_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8392683928_ _tid83925_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass83923_))
                  (lambda (_g8393083932_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8393083932_ _tid83925_)))
                  (lambda (_g8393483936_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83923_ _g8393483936_))))))))
    (define if-class-slot-field
      (lambda (_klass83912_
               _slot83913_
               _if-final83914_
               _if-struct83915_
               _if-struct-field83916_
               _if-class-slot83917_)
        (let ((_field83919_
               (let ((__tmp88764
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass83912_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp88764 _slot83913_ '#f))))
          (if (let () (declare (not safe)) (not _field83919_))
              (error '"unknown slot" 'class: _klass83912_ 'slot: _slot83913_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass83912_))
                  (_if-final83914_ _klass83912_ _slot83913_ _field83919_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass83912_))
                      (_if-struct83915_ _klass83912_ _slot83913_ _field83919_)
                      (if (let ((_strukt83921_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83912_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt83921_
                                    'gerbil#class::t))
                                 (let ((__tmp88765
                                        (let ((__tmp88766
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt83921_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp88766))))
                                   (declare (not safe))
                                   (##fx< _field83919_ __tmp88765))))
                          (_if-struct-field83916_
                           _klass83912_
                           _slot83913_
                           _field83919_)
                          (_if-class-slot83917_
                           _klass83912_
                           _slot83913_
                           _field83919_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83909_ _slot83910_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83909_
           _slot83910_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83906_ _slot83907_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83906_
           _slot83907_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83903_ _slot83904_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83903_
           _slot83904_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83900_ _slot83901_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83900_
           _slot83901_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83884_ _class83885_ _slot83886_)
        (apply error
               '"not an instance"
               'object:
               _object83884_
               'class:
               _class83885_
               (if _slot83886_
                   (let ((__tmp88767
                          (let ()
                            (declare (not safe))
                            (cons _slot83886_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88767))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83891_ _class83892_)
        (let ((_slot83894_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83891_ _class83892_ _slot83894_))))
    (define not-an-instance
      (lambda _g88769_
        (let ((_g88768_ (let () (declare (not safe)) (##length _g88769_))))
          (cond ((let () (declare (not safe)) (##fx= _g88768_ 2))
                 (apply (lambda (_object83891_ _class83892_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83891_ _class83892_)))
                        _g88769_))
                ((let () (declare (not safe)) (##fx= _g88768_ 3))
                 (apply (lambda (_object83896_ _class83897_ _slot83898_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83896_
                             _class83897_
                             _slot83898_)))
                        _g88769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88769_))))))
    (define make-final-slot-accessor
      (lambda (_klass83877_ _slot83878_ _field83879_)
        (lambda (_obj83881_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83881_
             _field83879_
             _klass83877_
             _slot83878_)))))
    (define make-final-slot-mutator
      (lambda (_klass83870_ _slot83871_ _field83872_)
        (lambda (_obj83874_ _val83875_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83874_
             _val83875_
             _field83872_
             _klass83870_
             _slot83871_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83864_ _slot83865_ _field83866_)
        (lambda (_obj83868_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83868_
             _field83866_
             _klass83864_
             _slot83865_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83857_ _slot83858_ _field83859_)
        (lambda (_obj83861_ _val83862_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83861_
             _val83862_
             _field83859_
             _klass83857_
             _slot83858_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83851_ _slot83852_ _field83853_)
        (lambda (_obj83855_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83855_
             _field83853_
             _klass83851_
             _slot83852_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83844_ _slot83845_ _field83846_)
        (lambda (_obj83848_ _val83849_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83848_
             _val83849_
             _field83846_
             _klass83844_
             _slot83845_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83838_ _slot83839_ _field83840_)
        (lambda (_obj83842_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83838_ _obj83842_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83842_ _field83840_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83842_ _klass83838_ _slot83839_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83831_ _slot83832_ _field83833_)
        (lambda (_obj83835_ _val83836_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83831_ _obj83835_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83835_ _field83833_ _val83836_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83835_ _klass83831_ _slot83832_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83825_ _slot83826_ _field83827_)
        (lambda (_obj83829_)
          (if (let ((__tmp88770
                     (let () (declare (not safe)) (##type-id _klass83825_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83829_ __tmp88770))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83829_ _field83827_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83825_ _obj83829_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83829_ _slot83826_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83829_
                     _klass83825_
                     _slot83826_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83818_ _slot83819_ _field83820_)
        (lambda (_obj83822_ _val83823_)
          (if (let ((__tmp88771
                     (let () (declare (not safe)) (##type-id _klass83818_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83822_ __tmp88771))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83822_ _field83820_ _val83823_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83818_ _obj83822_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83822_ _slot83819_ _val83823_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83822_
                     _klass83818_
                     _slot83819_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83812_ _slot83813_ _field83814_)
        (lambda (_obj83816_)
          (if (let ((__tmp88772
                     (let () (declare (not safe)) (##type-id _klass83812_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83816_ __tmp88772))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83816_ _field83814_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83816_ _slot83813_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83805_ _slot83806_ _field83807_)
        (lambda (_obj83809_ _val83810_)
          (if (let ((__tmp88773
                     (let () (declare (not safe)) (##type-id _klass83805_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83809_ __tmp88773))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83809_ _field83807_ _val83810_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83809_ _slot83806_ _val83810_))))))
    (define class-slot-offset
      (lambda (_klass83802_ _slot83803_)
        (let ((__tmp88774
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83802_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp88774 _slot83803_ '#f))))
    (define class-slot-ref
      (lambda (_klass83796_ _obj83797_ _slot83798_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83796_ _obj83797_))
            (let ((_off83800_
                   (let ((__tmp88775
                          (let ()
                            (declare (not safe))
                            (object-type _obj83797_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88775 _slot83798_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83797_
               _off83800_
               _klass83796_
               _slot83798_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83797_ _klass83796_)))))
    (define class-slot-set!
      (lambda (_klass83789_ _obj83790_ _slot83791_ _val83792_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83789_ _obj83790_))
            (let ((_off83794_
                   (let ((__tmp88776
                          (let ()
                            (declare (not safe))
                            (object-type _obj83790_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88776 _slot83791_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83790_
               _val83792_
               _off83794_
               _klass83789_
               _slot83791_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83790_ _klass83789_)))))
    (define unchecked-field-ref
      (lambda (_obj83786_ _off83787_)
        (let ((__tmp88777
               (let () (declare (not safe)) (##structure-type _obj83786_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83786_ _off83787_ __tmp88777 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83782_ _off83783_ _val83784_)
        (let ((__tmp88778
               (let () (declare (not safe)) (##structure-type _obj83782_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83782_
           _val83784_
           _off83783_
           __tmp88778
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83779_ _slot83780_)
        (let ((__tmp88779
               (let ((__tmp88780
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83779_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88780 _slot83780_))))
          (declare (not safe))
          (unchecked-field-ref _obj83779_ __tmp88779))))
    (define unchecked-slot-set!
      (lambda (_obj83775_ _slot83776_ _val83777_)
        (let ((__tmp88781
               (let ((__tmp88782
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83775_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88782 _slot83776_))))
          (declare (not safe))
          (unchecked-field-set! _obj83775_ __tmp88781 _val83777_))))
    (define slot-ref__%
      (lambda (_obj83751_ _slot83752_ _E83753_)
        (if (let () (declare (not safe)) (object? _obj83751_))
            (let* ((_klass83755_
                    (let () (declare (not safe)) (object-type _obj83751_)))
                   (_$e83758_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83755_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83755_ _slot83752_))
                        '#f)))
              (if _$e83758_
                  ((lambda (_off83761_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83751_ _off83761_)))
                   _$e83758_)
                  (_E83753_ _obj83751_ _slot83752_)))
            (_E83753_ _obj83751_ _slot83752_))))
    (define slot-ref__0
      (lambda (_obj83766_ _slot83767_)
        (let ((_E83769_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83766_ _slot83767_ _E83769_))))
    (define slot-ref
      (lambda _g88784_
        (let ((_g88783_ (let () (declare (not safe)) (##length _g88784_))))
          (cond ((let () (declare (not safe)) (##fx= _g88783_ 2))
                 (apply (lambda (_obj83766_ _slot83767_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83766_ _slot83767_)))
                        _g88784_))
                ((let () (declare (not safe)) (##fx= _g88783_ 3))
                 (apply (lambda (_obj83771_ _slot83772_ _E83773_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83771_ _slot83772_ _E83773_)))
                        _g88784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88784_))))))
    (define slot-set!__%
      (lambda (_obj83723_ _slot83724_ _val83725_ _E83726_)
        (if (let () (declare (not safe)) (object? _obj83723_))
            (let* ((_klass83728_
                    (let () (declare (not safe)) (object-type _obj83723_)))
                   (_$e83731_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83728_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83728_ _slot83724_))
                        '#f)))
              (if _$e83731_
                  ((lambda (_off83734_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83723_
                        _off83734_
                        _val83725_)))
                   _$e83731_)
                  (_E83726_ _obj83723_ _slot83724_)))
            (_E83726_ _obj83723_ _slot83724_))))
    (define slot-set!__0
      (lambda (_obj83739_ _slot83740_ _val83741_)
        (let ((_E83743_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83739_ _slot83740_ _val83741_ _E83743_))))
    (define slot-set!
      (lambda _g88786_
        (let ((_g88785_ (let () (declare (not safe)) (##length _g88786_))))
          (cond ((let () (declare (not safe)) (##fx= _g88785_ 3))
                 (apply (lambda (_obj83739_ _slot83740_ _val83741_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83739_ _slot83740_ _val83741_)))
                        _g88786_))
                ((let () (declare (not safe)) (##fx= _g88785_ 4))
                 (apply (lambda (_obj83745_ _slot83746_ _val83747_ _E83748_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83745_
                             _slot83746_
                             _val83747_
                             _E83748_)))
                        _g88786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88786_))))))
    (define __slot-error
      (lambda (_obj83719_ _slot83720_)
        (error '"Cannot find slot" 'object: _obj83719_ 'slot: _slot83720_)))
    (define subclass?
      (lambda (_maybe-sub-class83709_ _maybe-super-class83710_)
        (let* ((_maybe-super-class-id83712_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83710_)))
               (_$e83714_
                (let ((__tmp88787
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83709_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83712_ __tmp88787))))
          (if _$e83714_
              _$e83714_
              (let ((__tmp88789
                     (lambda (_super-class83717_)
                       (let ((__tmp88790
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83717_))))
                         (declare (not safe))
                         (eq? __tmp88790 _maybe-super-class-id83712_))))
                    (__tmp88788
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class83709_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp88789 __tmp88788))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83706_ _obj83707_)
        (let ((__tmp88791
               (let () (declare (not safe)) (##type-id _klass83706_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83707_ __tmp88791))))
    (define struct-instance?
      (lambda (_klass83703_ _obj83704_)
        (let ((__tmp88792
               (let () (declare (not safe)) (##type-id _klass83703_))))
          (declare (not safe))
          (##structure-instance-of? _obj83704_ __tmp88792))))
    (define class-instance?
      (lambda (_klass83698_ _obj83699_)
        (if (let () (declare (not safe)) (object? _obj83699_))
            (let ((_type83701_
                   (let () (declare (not safe)) (object-type _obj83699_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type83701_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83701_ _klass83698_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83693_ _k83694_)
        (let ((_obj83696_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83693_ _k83694_))))
          (let () (declare (not safe)) (object-fill! _obj83696_ '#f))
          _obj83696_)))
    (define object-fill!
      (lambda (_obj83686_ _fill83687_)
        (let _loop83689_ ((_i83691_
                           (let ((__tmp88794
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83686_))))
                             (declare (not safe))
                             (##fx- __tmp88794 '1))))
          (if (let () (declare (not safe)) (##fx> _i83691_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83686_
                   _fill83687_
                   _i83691_
                   '#f
                   '#f))
                (let ((__tmp88793
                       (let () (declare (not safe)) (##fx- _i83691_ '1))))
                  (declare (not safe))
                  (_loop83689_ __tmp88793)))
              _obj83686_))))
    (define new-instance
      (lambda (_klass83684_)
        (let ((__obj88699
               (let ((__tmp88795
                      (let ((__tmp88796
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83684_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp88796))))
                 (declare (not safe))
                 (##make-structure _klass83684_ __tmp88795))))
          (let () (declare (not safe)) (object-fill! __obj88699 '#f))
          __obj88699)))
    (define make-instance
      (lambda (_klass83674_ . _args83675_)
        (let* ((_obj83677_
                (let () (declare (not safe)) (new-instance _klass83674_)))
               (_$e83679_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass83674_ '10 class::t '#f))))
          (if _$e83679_
              ((lambda (_kons-id83682_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83674_
                    _kons-id83682_
                    _obj83677_
                    _args83675_)))
               _$e83679_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass83674_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass83674_
                     _obj83677_
                     _args83675_))
                  (if (let ((__tmp88800
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass83674_))))
                        (declare (not safe))
                        (not __tmp88800))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass83674_
                         _obj83677_
                         _args83675_))
                      (if (let ((__tmp88798
                                 (let ((__tmp88799
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj83677_))))
                                   (declare (not safe))
                                   (##fx- __tmp88799 '1)))
                                (__tmp88797 (length _args83675_)))
                            (declare (not safe))
                            (##fx= __tmp88798 __tmp88797))
                          (apply ##structure _klass83674_ _args83675_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass83674_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass83674_))
                                 'args:
                                 _args83675_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj83671_ . _args83672_)
        (if (let ((__tmp88802 (length _args83672_))
                  (__tmp88801
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83671_))))
              (declare (not safe))
              (##fx< __tmp88802 __tmp88801))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83671_ _args83672_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83671_
                   'args:
                   _args83672_))))
    (define __struct-instance-init!
      (lambda (_obj83630_ _args83631_)
        (let _lp83633_ ((_k83635_ '1) (_rest83636_ _args83631_))
          (let* ((_rest8363783645_ _rest83636_)
                 (_else8363983653_ (lambda () _obj83630_))
                 (_K8364183659_
                  (lambda (_rest83656_ _hd83657_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83630_ _k83635_ _hd83657_))
                    (let ((__tmp88803
                           (let () (declare (not safe)) (##fx+ _k83635_ '1))))
                      (declare (not safe))
                      (_lp83633_ __tmp88803 _rest83656_)))))
            (if (let () (declare (not safe)) (##pair? _rest8363783645_))
                (let ((_hd8364283662_
                       (let () (declare (not safe)) (##car _rest8363783645_)))
                      (_tl8364383664_
                       (let () (declare (not safe)) (##cdr _rest8363783645_))))
                  (let* ((_hd83667_ _hd8364283662_)
                         (_rest83669_ _tl8364383664_))
                    (declare (not safe))
                    (_K8364183659_ _rest83669_ _hd83667_)))
                (let () (declare (not safe)) (_else8363983653_)))))))
    (define class-instance-init!
      (lambda (_obj83627_ . _args83628_)
        (let ((__tmp88804
               (let () (declare (not safe)) (object-type _obj83627_))))
          (declare (not safe))
          (__class-instance-init! __tmp88804 _obj83627_ _args83628_))))
    (define __class-instance-init!
      (lambda (_klass83571_ _obj83572_ _args83573_)
        (let _lp83575_ ((_rest83577_ _args83573_))
          (let* ((_rest8357883588_ _rest83577_)
                 (_else8358083596_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83577_))
                        _obj83572_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83571_
                               'rest:
                               _rest83577_))))
                 (_K8358283608_
                  (lambda (_rest83599_ _val83600_ _key83601_)
                    (let ((_$e83603_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83571_ _key83601_))))
                      (if _$e83603_
                          ((lambda (_off83606_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83572_
                                _off83606_
                                _val83600_))
                             (let ()
                               (declare (not safe))
                               (_lp83575_ _rest83599_)))
                           _$e83603_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83571_
                                 'slot:
                                 _key83601_))))))
            (if (let () (declare (not safe)) (##pair? _rest8357883588_))
                (let ((_hd8358383611_
                       (let () (declare (not safe)) (##car _rest8357883588_)))
                      (_tl8358483613_
                       (let () (declare (not safe)) (##cdr _rest8357883588_))))
                  (let ((_key83616_ _hd8358383611_))
                    (if (let () (declare (not safe)) (##pair? _tl8358483613_))
                        (let ((_hd8358583618_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8358483613_)))
                              (_tl8358683620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8358483613_))))
                          (let* ((_val83623_ _hd8358583618_)
                                 (_rest83625_ _tl8358683620_))
                            (declare (not safe))
                            (_K8358283608_ _rest83625_ _val83623_ _key83616_)))
                        (let () (declare (not safe)) (_else8358083596_)))))
                (let () (declare (not safe)) (_else8358083596_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass83567_ _obj83568_ _args83569_)
        (apply call-method
               _klass83567_
               'instance-init!
               _obj83568_
               _args83569_)))
    (define constructor-init!
      (lambda (_klass83562_ _kons-id83563_ _obj83564_ . _args83565_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83562_
           _kons-id83563_
           _obj83564_
           _args83565_))))
    (define __constructor-init!
      (lambda (_klass83552_ _kons-id83553_ _obj83554_ _args83555_)
        (let ((_$e83557_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83552_ _obj83554_ _kons-id83553_))))
          (if _$e83557_
              ((lambda (_kons83560_)
                 (apply _kons83560_ _obj83554_ _args83555_)
                 _obj83554_)
               _$e83557_)
              (error '"missing constructor"
                     'class:
                     _klass83552_
                     'method:
                     _kons-id83553_)))))
    (define struct-copy
      (lambda (_struct83550_)
        (if (let () (declare (not safe)) (##structure? _struct83550_))
            '#!void
            (error '"not a structure" _struct83550_))
        (let () (declare (not safe)) (##structure-copy _struct83550_))))
    (define struct->list
      (lambda (_obj83548_)
        (if (let () (declare (not safe)) (object? _obj83548_))
            (let () (declare (not safe)) (##vector->list _obj83548_))
            (error '"not an object" _obj83548_))))
    (define class->list
      (lambda (_obj83535_)
        (if (let () (declare (not safe)) (object? _obj83535_))
            (let ((_klass83537_
                   (let () (declare (not safe)) (object-type _obj83535_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass83537_ 'gerbil#class::t))
                  (let ((_slot-vector83539_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass83537_
                            '7
                            class::t
                            '#f))))
                    (let _loop83541_ ((_index83543_
                                       (let ((__tmp88810
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector83539_))))
                                         (declare (not safe))
                                         (##fx- __tmp88810 '1)))
                                      (_plist83544_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83543_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83537_ _plist83544_))
                          (let ((_slot83546_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector83539_
                                    _index83543_))))
                            (let ((__tmp88809
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83543_ '1)))
                                  (__tmp88805
                                   (let ((__tmp88808
                                          (symbol->keyword _slot83546_))
                                         (__tmp88806
                                          (let ((__tmp88807
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83535_
                                                    _index83543_))))
                                            (declare (not safe))
                                            (cons __tmp88807 _plist83544_))))
                                     (declare (not safe))
                                     (cons __tmp88808 __tmp88806))))
                              (declare (not safe))
                              (_loop83541_ __tmp88809 __tmp88805))))))
                  (error '"not a class type"
                         'object:
                         _obj83535_
                         'class:
                         _klass83537_)))
            (error '"not an object" _obj83535_))))
    (define call-method
      (lambda (_obj83526_ _id83527_ . _args83528_)
        (let ((_$e83530_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83526_ _id83527_))))
          (if _$e83530_
              ((lambda (_method83533_)
                 (apply _method83533_ _obj83526_ _args83528_))
               _$e83530_)
              (error '"cannot find method"
                     'object:
                     _obj83526_
                     'method:
                     _id83527_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table '0 '#f)))
    (define method-ref
      (lambda (_obj83523_ _id83524_)
        (if (let () (declare (not safe)) (object? _obj83523_))
            (let ((__tmp88811
                   (let () (declare (not safe)) (object-type _obj83523_))))
              (declare (not safe))
              (find-method __tmp88811 _obj83523_ _id83524_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83517_ _id83518_)
        (let ((_$e83520_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83517_ _id83518_))))
          (if _$e83520_
              _$e83520_
              (error '"missing method"
                     'object:
                     _obj83517_
                     'method:
                     _id83518_)))))
    (define bound-method-ref
      (lambda (_obj83507_ _id83508_)
        (let ((_$e83510_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83507_ _id83508_))))
          (if _$e83510_
              ((lambda (_method83513_)
                 (lambda _args83515_
                   (apply _method83513_ _obj83507_ _args83515_)))
               _$e83510_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83500_ _id83501_)
        (let ((_method83503_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83500_ _id83501_))))
          (lambda _args83505_ (apply _method83503_ _obj83500_ _args83505_)))))
    (define find-method
      (lambda (_klass83496_ _obj83497_ _id83498_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83496_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83496_ _obj83497_ _id83498_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83496_ _obj83497_ _id83498_)))))
    (define __find-method
      (lambda (_klass83489_ _obj83490_ _id83491_)
        (let ((_$e83493_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83489_ _obj83490_ _id83491_))))
          (if _$e83493_
              _$e83493_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83489_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83489_ _obj83490_ _id83491_)))))))
    (define class-find-method
      (lambda (_klass83485_ _obj83486_ _id83487_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83485_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83485_ _obj83486_ _id83487_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83477_ _obj83478_ _id83479_)
        (let ((__tmp88812
               (lambda (_g8348083482_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8348083482_ _obj83478_ _id83479_)))))
          (declare (not safe))
          (ormap1 __tmp88812 _mixins83477_))))
    (define builtin-find-method
      (lambda (_klass83470_ _obj83471_ _id83472_)
        (if (let () (declare (not safe)) (##type? _klass83470_))
            (let ((_$e83474_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83470_ _obj83471_ _id83472_))))
              (if _$e83474_
                  _$e83474_
                  (let ((__tmp88813
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83470_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88813 _obj83471_ _id83472_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83447_ _obj83448_ _id83449_)
        (letrec ((_metaclass-resolve-method83451_
                  (lambda ()
                    (let ((__method88700
                           (let ()
                             (declare (not safe))
                             (method-ref _klass83447_ 'direct-method-ref))))
                      (if __method88700
                          (__method88700 _klass83447_ _obj83448_ _id83449_)
                          (error '"Missing method"
                                 _klass83447_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!83452_
                  (lambda ()
                    (let ((_method83467_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method83451_))))
                      (let ((__tmp88815
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83447_
                                '11
                                class::t
                                '#f)))
                            (__tmp88814 (if _method83467_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp88815 _id83449_ __tmp88814))
                      _method83467_))))
          (let ((_$e83454_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass83447_ '11 class::t '#f))))
            (if _$e83454_
                ((lambda (_ht83457_)
                   (let ((_method83459_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht83457_ _id83449_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method83459_))
                         _method83459_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass83447_))
                             (let ((_$e83461_ _method83459_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e83461_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method83451_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e83461_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!83452_)))))
                             '#f))))
                 _$e83454_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass83447_))
                    (let ((_tab83464_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83447_
                         _tab83464_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!83452_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass83443_ _obj83444_ _id83445_)
        (let ((__tmp88816 (##structure-ref _klass83443_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp88816 _obj83444_ _id83445_))))
    (define builtin-method-ref
      (lambda (_klass83434_ _obj83435_ _id83436_)
        (let ((_$e83438_
               (let ((__tmp88817
                      (let () (declare (not safe)) (##type-id _klass83434_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp88817 '#f))))
          (if _$e83438_
              ((lambda (_mtab83441_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab83441_ _id83436_ '#f)))
               _$e83438_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83400_ _id83401_ _proc83402_ _rebind?83403_)
        (letrec ((_bind!83405_
                  (lambda (_ht83418_)
                    (if (and (let () (declare (not safe)) (not _rebind?83403_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht83418_ _id83401_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83400_
                               'method:
                               _id83401_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht83418_
                           _id83401_
                           _proc83402_))))))
          (if (let () (declare (not safe)) (procedure? _proc83402_))
              '#!void
              (error '"bad method; expected procedure" _proc83402_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83400_ 'gerbil#class::t))
              (let ((_ht83407_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass83400_
                        '11
                        class::t
                        '#f))))
                (if _ht83407_
                    (let () (declare (not safe)) (_bind!83405_ _ht83407_))
                    (let ((_ht83409_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83400_
                         _ht83409_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!83405_ _ht83409_)))))
              (if (let () (declare (not safe)) (##type? _klass83400_))
                  (let ((_ht83416_
                         (let ((_$e83411_
                                (let ((__tmp88818
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83400_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp88818
                                   '#f))))
                           (if _$e83411_
                               _$e83411_
                               (let ((_ht83414_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table '#f '0))))
                                 (let ((__tmp88819
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83400_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp88819
                                    _ht83414_))
                                 _ht83414_)))))
                    (declare (not safe))
                    (_bind!83405_ _ht83416_))
                  (error '"bad class; expected class or builtin type"
                         _klass83400_))))))
    (define bind-method!__0
      (lambda (_klass83423_ _id83424_ _proc83425_)
        (let ((_rebind?83427_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83423_
           _id83424_
           _proc83425_
           _rebind?83427_))))
    (define bind-method!
      (lambda _g88821_
        (let ((_g88820_ (let () (declare (not safe)) (##length _g88821_))))
          (cond ((let () (declare (not safe)) (##fx= _g88820_ 3))
                 (apply (lambda (_klass83423_ _id83424_ _proc83425_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83423_
                             _id83424_
                             _proc83425_)))
                        _g88821_))
                ((let () (declare (not safe)) (##fx= _g88820_ 4))
                 (apply (lambda (_klass83429_
                                 _id83430_
                                 _proc83431_
                                 _rebind?83432_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83429_
                             _id83430_
                             _proc83431_
                             _rebind?83432_)))
                        _g88821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88821_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc83396_ _specializer83397_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc83396_
           _specializer83397_))))
    (define seal-class!
      (lambda (_klass83363_)
        (letrec ((_collect-methods!83365_
                  (lambda (_mtab83381_)
                    (letrec ((_merge!83383_
                              (lambda (_tab83391_)
                                (let ((__tmp88822
                                       (lambda (_id83393_ _proc83394_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab83381_
                                            _id83393_
                                            _proc83394_)))))
                                  (declare (not safe))
                                  (raw-table-for-each __tmp88822 _tab83391_))))
                             (_collect-direct-methods!83384_
                              (lambda (_klass83386_)
                                (let ((_$e83388_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass83386_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e83388_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83383_ _$e83388_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83384_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83363_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83363_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83363_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass83363_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83363_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass83363_))
                        (let ((__method88701
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass83363_ 'seal-class!))))
                          (if __method88701
                              (__method88701 _klass83363_)
                              (error '"Missing method"
                                     _klass83363_
                                     'seal-class!)))
                        (if (let ((__tmp88829
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass83363_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp88829))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass83363_)
                            (let ((_vtab83367_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0)))
                                  (_mtab83368_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!83365_ _mtab83368_))
                              (let ((__tmp88823
                                     (lambda (_id83370_ _proc83371_)
                                       (let ((_$e83373_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc83371_
                                                 '#f))))
                                         (if _$e83373_
                                             ((lambda (_specializer83376_)
                                                (let ((_proc83378_
                                                       (_specializer83376_
                                                        _klass83363_))
                                                      (_gid83379_
                                                       (let ((__tmp88824
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass83363_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp88824 '"::[" _id83370_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp88825
                                                               (let ((__tmp88826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88827
                                     (let ((__tmp88828
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc83378_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp88828))))
                                (declare (not safe))
                                (cons __tmp88827 '()))))
                         (declare (not safe))
                         (cons _gid83379_ __tmp88826))))
                  (declare (not safe))
                  (cons 'def __tmp88825)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab83367_
                                                     _id83370_
                                                     _proc83378_))))
                                              _$e83373_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab83367_
                                                _id83370_
                                                _proc83371_)))))))
                                (declare (not safe))
                                (raw-table-for-each __tmp88823 _mtab83368_))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass83363_
                                 _vtab83367_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass83363_))))
              '#!void))))
    (define next-method
      (lambda (_subklass83312_ _obj83313_ _id83314_)
        (let ((_klass83316_
               (let () (declare (not safe)) (object-type _obj83313_)))
              (_type-id83317_
               (let () (declare (not safe)) (##type-id _subklass83312_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83316_ 'gerbil#class::t))
              (let _lp83319_ ((_rest83321_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83316_))))
                (let* ((_rest8332283330_ _rest83321_)
                       (_else8332483338_ (lambda () '#f))
                       (_K8332683344_
                        (lambda (_rest83341_ _klass83342_)
                          (if (let ((__tmp88832
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83342_))))
                                (declare (not safe))
                                (eq? _type-id83317_ __tmp88832))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest83341_
                                 _obj83313_
                                 _id83314_))
                              (let ()
                                (declare (not safe))
                                (_lp83319_ _rest83341_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8332283330_))
                      (let ((_hd8332783347_
                             (let ()
                               (declare (not safe))
                               (##car _rest8332283330_)))
                            (_tl8332883349_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8332283330_))))
                        (let* ((_klass83352_ _hd8332783347_)
                               (_rest83354_ _tl8332883349_))
                          (declare (not safe))
                          (_K8332683344_ _rest83354_ _klass83352_)))
                      (let () (declare (not safe)) (_else8332483338_)))))
              (if (let () (declare (not safe)) (##type? _klass83316_))
                  (let _lp83356_ ((_klass83358_ _klass83316_))
                    (if (let ((__tmp88831
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83358_))))
                          (declare (not safe))
                          (eq? _type-id83317_ __tmp88831))
                        (let ((__tmp88830
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83358_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp88830
                           _obj83313_
                           _id83314_))
                        (let ((_$e83360_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83358_))))
                          (if _$e83360_
                              (let ()
                                (declare (not safe))
                                (_lp83356_ _$e83360_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83302_ _obj83303_ _id83304_ . _args83305_)
        (let ((_$e83307_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83302_ _obj83303_ _id83304_))))
          (if _$e83307_
              ((lambda (_methodf83310_)
                 (apply _methodf83310_ _obj83303_ _args83305_))
               _$e83307_)
              (error '"cannot find next method"
                     'object:
                     _obj83303_
                     'method:
                     _id83304_)))))
    (define write-style (lambda (_we83300_) (macro-writeenv-style _we83300_)))
    (define write-object
      (lambda (_we83292_ _obj83293_)
        (let ((_$e83295_
               (let () (declare (not safe)) (method-ref _obj83293_ ':wr))))
          (if _$e83295_
              ((lambda (_method83298_) (_method83298_ _obj83293_ _we83292_))
               _$e83295_)
              (let ()
                (declare (not safe))
                (##default-wr _we83292_ _obj83293_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
