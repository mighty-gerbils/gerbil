(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708194417)
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
      (let* ((_slots84314_
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
             (_slot-vector84316_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots84314_))))
             (_slot-table84323_
              (let ((_slot-table84318_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (for-each
                 (lambda (_slot84320_ _field84321_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table84318_ _slot84320_ _field84321_))
                   (let ((__tmp88530 (symbol->keyword _slot84320_)))
                     (declare (not safe))
                     (table-set! _slot-table84318_ __tmp88530 _field84321_)))
                 _slots84314_
                 (let ((__tmp88531 (length _slots84314_)))
                   (declare (not safe))
                   (iota __tmp88531 '1)))
                _slot-table84318_))
             (_flags84325_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields84331_
              (list->vector
               (apply append
                      (map (lambda (_g8432684328_) (list _g8432684328_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84314_ '5))))))
             (_properties84333_
              (let ((__tmp88534
                     (let ((__tmp88535
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots84314_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp88535)))
                    (__tmp88532
                     (let ((__tmp88533
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp88533 '()))))
                (declare (not safe))
                (cons __tmp88534 __tmp88532)))
             (_t84335_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags84325_
                 ##type-type
                 _fields84331_
                 '()
                 _slot-vector84316_
                 _slot-table84323_
                 _properties84333_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t84335_ _t84335_))
        _t84335_))
    (define class-type?
      (lambda (_obj84312_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84312_ class::t.id))))
    (define class-type=?
      (lambda (_x84309_ _y84310_)
        (let ((__tmp88537 (##structure-ref _x84309_ '1 class::t '#f))
              (__tmp88536 (##structure-ref _y84310_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp88537 __tmp88536))))
    (define type-opaque?
      (lambda (_type84307_)
        (let ((__tmp88538
               (let ((__tmp88539
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84307_))))
                 (declare (not safe))
                 (##fxand __tmp88539 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp88538 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type84305_)
        (let ((__tmp88540
               (let ((__tmp88541
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84305_))))
                 (declare (not safe))
                 (##fxand __tmp88541 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88540 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type84303_)
        (let ((__tmp88542
               (let ((__tmp88543
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84303_))))
                 (declare (not safe))
                 (##fxand __tmp88543 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88542 '0))))
    (define class-type-struct?
      (lambda (_klass84301_)
        (let ((__tmp88544
               (let ((__tmp88545
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84301_))))
                 (declare (not safe))
                 (##fxand __tmp88545 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp88544 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass84299_)
        (let ((__tmp88546
               (let ((__tmp88547
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84299_))))
                 (declare (not safe))
                 (##fxand __tmp88547 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp88546 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass84297_)
        (let ((__tmp88548
               (let ((__tmp88549
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84297_))))
                 (declare (not safe))
                 (##fxand __tmp88549 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp88548 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties84263_)
        (map (lambda (_e8426484266_)
               (let* ((_g8426884275_ _e8426484266_)
                      (_E8427084279_
                       (lambda () (error '"No clause matching" _g8426884275_)))
                      (_K8427184285_
                       (lambda (_val84282_ _key84283_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84283_ 'direct-supers:))
                             (let ((__tmp88550 (map class-type-id _val84282_)))
                               (declare (not safe))
                               (cons _key84283_ __tmp88550))
                             (let ()
                               (declare (not safe))
                               (cons _key84283_ _val84282_))))))
                 (if (let () (declare (not safe)) (##pair? _g8426884275_))
                     (let ((_hd8427284288_
                            (let ()
                              (declare (not safe))
                              (##car _g8426884275_)))
                           (_tl8427384290_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8426884275_))))
                       (let* ((_key84293_ _hd8427284288_)
                              (_val84295_ _tl8427384290_))
                         (declare (not safe))
                         (_K8427184285_ _val84295_ _key84293_)))
                     (let () (declare (not safe)) (_E8427084279_)))))
             _properties84263_)))
    (define make-class-type-descriptor
      (lambda (_type-id84162_
               _type-name84163_
               _type-super84164_
               _precedence-list84165_
               _slot-vector84166_
               _properties84167_
               _constructor84168_
               _slot-table84169_
               _methods84170_)
        (letrec ((_make-props!84172_
                  (lambda (_key84232_)
                    (letrec* ((_ht84234_
                               (let ()
                                 (declare (not safe))
                                 (make-hash-table-eq)))
                              (_put-slots!84235_
                               (lambda (_ht84256_ _slots84257_)
                                 (for-each
                                  (lambda (_g8425884260_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84256_
                                       _g8425884260_
                                       '#t)))
                                  _slots84257_)))
                              (_put-alist!84236_
                               (lambda (_ht84245_ _key84246_ _alist84247_)
                                 (let ((_$e84249_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84246_ _alist84247_))))
                                   (if _$e84249_
                                       ((lambda (_g8425184253_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84235_
                                             _ht84245_
                                             _g8425184253_)))
                                        _$e84249_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84236_
                         _ht84234_
                         _key84232_
                         _properties84167_))
                      (for-each
                       (lambda (_mixin84238_)
                         (let ((_alist84240_
                                (##structure-ref
                                 _mixin84238_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84240_))
                                   (let ((__tmp88551
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84232_
                                                     _alist84240_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88551)))
                               (let ((__tmp88552
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84238_))))
                                 (declare (not safe))
                                 (_put-slots!84235_ _ht84234_ __tmp88552))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84236_
                                  _ht84234_
                                  _key84232_
                                  _alist84240_)))))
                       _precedence-list84165_)
                      _ht84234_))))
          (let* ((_transparent?84174_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84167_)))
                 (_all-slots-printable?84179_
                  (let ((_$e84176_ _transparent?84174_))
                    (if _$e84176_
                        _$e84176_
                        (let ((__tmp88553
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84167_))))
                          (declare (not safe))
                          (eq? '#t __tmp88553)))))
                 (_printable84181_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84179_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84172_ 'print:))
                      '#f))
                 (_all-slots-equalable?84186_
                  (let ((_$e84183_ _transparent?84174_))
                    (if _$e84183_
                        _$e84183_
                        (let ((__tmp88554
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84167_))))
                          (declare (not safe))
                          (eq? '#t __tmp88554)))))
                 (_equalable84188_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84186_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84172_ 'equal:))
                      '#f))
                 (_first-new-field84190_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super84164_
                         'gerbil#class::t))
                      (let ((__tmp88555
                             (##structure-ref
                              _type-super84164_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp88555))
                      '1))
                 (_field-info-length84192_
                  (let ((__tmp88556
                         (let ((__tmp88557
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84166_))))
                           (declare (not safe))
                           (##fx- __tmp88557 _first-new-field84190_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88556)))
                 (_field-info84194_ (make-vector _field-info-length84192_ '#f))
                 (_struct?84196_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84167_)))
                 (_final?84198_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84167_)))
                 (_metaclass84206_
                  (let ((_metaclass8419984201_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties84167_))))
                    (if _metaclass8419984201_
                        (let ((_metaclass84204_ _metaclass8419984201_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass84204_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id84162_
                                     'metaclass:
                                     _metaclass84204_))
                          _metaclass84204_)
                        '#f)))
                 (_opaque?84211_
                  (let ((_$e84208_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84186_))))
                    (if _$e84208_
                        _$e84208_
                        (if _type-super84164_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84164_))
                            '#f))))
                 (_type-flags84213_
                  (let ((__tmp88561 (if _final?84198_ '0 type-flag-extensible))
                        (__tmp88560 (if _opaque?84211_ type-flag-opaque '0))
                        (__tmp88559
                         (if _struct?84196_ class-type-flag-struct '0))
                        (__tmp88558
                         (if _metaclass84206_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp88561
                             __tmp88560
                             __tmp88559
                             __tmp88558))))
            (let _loop84216_ ((_i84218_ _first-new-field84190_) (_j84219_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84219_ _field-info-length84192_))
                  (let* ((_slot84221_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84166_ _i84218_)))
                         (_flags84229_
                          (if _transparent?84174_
                              '0
                              (let ((__tmp88563
                                     (if (or _all-slots-printable?84179_
                                             (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _printable84181_
                                                _slot84221_)))
                                         '0
                                         '1))
                                    (__tmp88562
                                     (if (or _all-slots-equalable?84186_
                                             (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _equalable84188_
                                                _slot84221_)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88563 __tmp88562)))))
                    (vector-set! _field-info84194_ _j84219_ _slot84221_)
                    (vector-set!
                     _field-info84194_
                     (let () (declare (not safe)) (##fx+ _j84219_ '1))
                     _flags84229_)
                    (let ((__tmp88565
                           (let () (declare (not safe)) (##fx+ _i84218_ '1)))
                          (__tmp88564
                           (let () (declare (not safe)) (##fx+ _j84219_ '3))))
                      (declare (not safe))
                      (_loop84216_ __tmp88565 __tmp88564)))
                  '#!void))
            (if _metaclass84206_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass84206_
                   _type-id84162_
                   _type-name84163_
                   _type-flags84213_
                   _type-super84164_
                   _field-info84194_
                   _precedence-list84165_
                   _slot-vector84166_
                   _slot-table84169_
                   _properties84167_
                   _constructor84168_
                   _methods84170_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id84162_
                   _type-name84163_
                   _type-flags84213_
                   _type-super84164_
                   _field-info84194_
                   _precedence-list84165_
                   _slot-vector84166_
                   _slot-table84169_
                   _properties84167_
                   _constructor84168_
                   _methods84170_)))))))
    (define class-type-id
      (lambda (_klass84160_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84160_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass84158_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84158_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass84155_ _val84156_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84155_ _val84156_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass84150_ _val84152_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84150_
           _val84152_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass84148_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84148_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass84146_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84146_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass84143_ _val84144_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84143_ _val84144_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass84138_ _val84140_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84138_
           _val84140_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass84136_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84136_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass84134_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84134_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass84131_ _val84132_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84131_ _val84132_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass84126_ _val84128_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84126_
           _val84128_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass84124_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84124_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass84122_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84122_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass84119_ _val84120_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84119_ _val84120_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass84114_ _val84116_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84114_
           _val84116_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass84112_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84112_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass84110_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84110_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass84107_ _val84108_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84107_ _val84108_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass84102_ _val84104_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84102_
           _val84104_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass84100_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84100_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass84098_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass84098_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass84095_ _val84096_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84095_
           _val84096_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass84090_ _val84092_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84090_
           _val84092_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84088_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84088_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass84086_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84086_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass84083_ _val84084_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84083_
           _val84084_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass84078_ _val84080_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84078_
           _val84080_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84076_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84076_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass84074_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84074_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass84071_ _val84072_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84071_ _val84072_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass84066_ _val84068_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84066_
           _val84068_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass84064_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84064_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass84062_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84062_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass84059_ _val84060_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84059_ _val84060_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass84054_ _val84056_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84054_
           _val84056_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass84052_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84052_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass84050_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84050_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass84047_ _val84048_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84047_
           _val84048_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass84042_ _val84044_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84042_
           _val84044_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass84040_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84040_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass84038_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84038_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass84035_ _val84036_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84035_ _val84036_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass84030_ _val84032_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84030_
           _val84032_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass84028_)
        (cdr (vector->list (##structure-ref _klass84028_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass84026_)
        (let ((__tmp88566
               (let ((__tmp88567
                      (##structure-ref _klass84026_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp88567))))
          (declare (not safe))
          (##fx- __tmp88566 '1))))
    (define class-type-seal!
      (lambda (_klass84024_)
        (let ((__tmp88568
               (let ((__tmp88569
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84024_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88569))))
          (declare (not safe))
          (##structure-set!
           _klass84024_
           __tmp88568
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass84022_)
        (let ((__tmp88570
               (let ((__tmp88571
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84022_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88571))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84022_
           __tmp88570
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84013_ _maybe-super-struct84014_)
        (let ((_maybe-super-struct-id84016_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84014_))))
          (let _lp84018_ ((_super-struct84020_ _maybe-sub-struct84013_))
            (if (let () (declare (not safe)) (not _super-struct84020_))
                '#f
                (if (let ((__tmp88572
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct84020_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84016_ __tmp88572))
                    '#t
                    (let ((__tmp88573
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84020_))))
                      (declare (not safe))
                      (_lp84018_ __tmp88573))))))))
    (define base-struct/1
      (lambda (_klass84011_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84011_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass84011_))
                _klass84011_
                (let () (declare (not safe)) (##type-super _klass84011_)))
            (if (let () (declare (not safe)) (not _klass84011_))
                '#f
                (error '"not a class or false" _klass84011_)))))
    (define base-struct/2
      (lambda (_klass183999_ _klass284000_)
        (let ((_s184002_
               (let () (declare (not safe)) (base-struct/1 _klass183999_)))
              (_s284003_
               (let () (declare (not safe)) (base-struct/1 _klass284000_))))
          (if (or (let () (declare (not safe)) (not _s184002_))
                  (and _s284003_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184002_ _s284003_))))
              _s284003_
              (if (or (let () (declare (not safe)) (not _s284003_))
                      (and _s184002_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284003_ _s184002_))))
                  _s184002_
                  (error '"bad mixin: incompatible struct bases"
                         _klass183999_
                         _klass284000_
                         _s184002_
                         _s284003_))))))
    (define base-struct/list
      (lambda (_all-supers83883_)
        (let* ((_all-supers8388483909_ _all-supers83883_)
               (_E8388983913_
                (lambda ()
                  (error '"No clause matching" _all-supers8388483909_))))
          (let ((_K8390783996_ (lambda () '#f))
                (_K8390483982_
                 (lambda (_x83980_)
                   (let () (declare (not safe)) (base-struct/1 _x83980_))))
                (_K8389983959_
                 (lambda (_y83956_ _x83957_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x83957_ _y83956_))))
                (_K8389083920_
                 (lambda (_y83917_ _x83918_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x83918_ _y83917_)))))
            (let* ((___match8852588526_
                    (lambda (_hd8389183923_ _tl8389283925_)
                      (let ((_x83928_ _hd8389183923_))
                        (letrec ((_splice-rest8389483930_
                                  (lambda (_rest8389883937_ _y83939_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8389883937_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8389083920_ _y83939_ _x83928_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8388983913_)))))
                                 (_splice-try8389683932_
                                  (lambda (_hd8389783941_
                                           _rest8389883943_
                                           _y8389383944_)
                                    (let ((_y83947_ _hd8389783941_))
                                      (let ((__tmp88575
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8389883943_)))
                                            (__tmp88574
                                             (let ()
                                               (declare (not safe))
                                               (cons _y83947_ _y8389383944_))))
                                        (declare (not safe))
                                        (_splice-loop8389583934_
                                         __tmp88575
                                         __tmp88574)))))
                                 (_splice-loop8389583934_
                                  (lambda (_rest8389883949_ _y8389383950_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8389883949_))
                                        (let ((__tmp88576
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8389883949_))))
                                          (declare (not safe))
                                          (_splice-try8389683932_
                                           __tmp88576
                                           _rest8389883949_
                                           _y8389383950_))
                                        (let ((__tmp88577
                                               (reverse _y8389383950_)))
                                          (declare (not safe))
                                          (_splice-rest8389483930_
                                           _rest8389883949_
                                           __tmp88577))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8389583934_ _tl8389283925_ '()))))))
                   (_try-match8388683992_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8388483909_))
                          (let ((_tl8390683987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8388483909_)))
                                (_hd8390583985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8388483909_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8390683987_))
                                (let ((_x83990_ _hd8390583985_))
                                  (declare (not safe))
                                  (base-struct/1 _x83990_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8390683987_))
                                    (let ((_tl8390383971_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8390683987_)))
                                          (_hd8390283969_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8390683987_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8390383971_))
                                          (let ((_x83967_ _hd8390583985_)
                                                (_y83974_ _hd8390283969_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8389983959_
                                               _y83974_
                                               _x83967_)))
                                          (___match8852588526_
                                           _hd8390583985_
                                           _tl8390683987_)))
                                    (___match8852588526_
                                     _hd8390583985_
                                     _tl8390683987_))))
                          (let () (declare (not safe)) (_E8388983913_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8388483909_))
                  (let () (declare (not safe)) (_K8390783996_))
                  (let () (declare (not safe)) (_try-match8388683992_))))))))
    (define base-struct
      (lambda _all-supers83881_
        (let () (declare (not safe)) (base-struct/list _all-supers83881_))))
    (define find-super-constructor
      (lambda (_super83833_)
        (let _lp83835_ ((_rest83837_ _super83833_) (_constructor83838_ '#f))
          (let* ((_rest8383983847_ _rest83837_)
                 (_else8384183855_ (lambda () _constructor83838_))
                 (_K8384383869_
                  (lambda (_rest83858_ _hd83859_)
                    (let ((_$e83861_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd83859_
                              '10
                              class::t
                              '#f))))
                      (if _$e83861_
                          ((lambda (_xconstructor83864_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83838_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83838_
                                            _xconstructor83864_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83835_ _rest83858_ _xconstructor83864_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83838_
                                        _xconstructor83864_)))
                           _$e83861_)
                          (let ()
                            (declare (not safe))
                            (_lp83835_ _rest83858_ _constructor83838_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8383983847_))
                (let ((_hd8384483872_
                       (let () (declare (not safe)) (##car _rest8383983847_)))
                      (_tl8384583874_
                       (let () (declare (not safe)) (##cdr _rest8383983847_))))
                  (let* ((_hd83877_ _hd8384483872_)
                         (_rest83879_ _tl8384583874_))
                    (declare (not safe))
                    (_K8384383869_ _rest83879_ _hd83877_)))
                (let () (declare (not safe)) (_else8384183855_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83809_ _direct-slots83810_)
        (let* ((_next-slot83812_ '1)
               (_slot-table83814_
                (let () (declare (not safe)) (make-hash-table-eq)))
               (_r-slots83816_ '(__class))
               (_process-slot83820_
                (lambda (_slot83818_)
                  (if (let () (declare (not safe)) (symbol? _slot83818_))
                      '#!void
                      (error '"invalid slot name" _slot83818_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83814_ _slot83818_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83814_
                           _slot83818_
                           _next-slot83812_))
                        (let ((__tmp88578 (symbol->keyword _slot83818_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83814_
                           __tmp88578
                           _next-slot83812_))
                        (set! _r-slots83816_
                              (let ()
                                (declare (not safe))
                                (cons _slot83818_ _r-slots83816_)))
                        (set! _next-slot83812_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83812_ '1)))))))
               (_process-slots83826_
                (lambda (_g8382183823_)
                  (for-each _process-slot83820_ _g8382183823_))))
          (for-each
           (lambda (_mixin83829_)
             (let ((__tmp88579
                    (let ((__tmp88580
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin83829_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88580 '()))))
               (declare (not safe))
               (_process-slots83826_ __tmp88579)))
           (reverse _class-precedence-list83809_))
          (let ()
            (declare (not safe))
            (_process-slots83826_ _direct-slots83810_))
          (let ((_slot-vector83831_ (list->vector (reverse _r-slots83816_))))
            (values _slot-vector83831_ _slot-table83814_)))))
    (define make-class-type
      (lambda (_id83771_
               _name83772_
               _direct-supers83773_
               _direct-slots83774_
               _properties83775_
               _constructor83776_)
        (let ((_$e83781_
               (let ((__tmp88581
                      (lambda (_$obj83778_)
                        (let ((__tmp88582
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj83778_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp88582)))))
                 (declare (not safe))
                 (find __tmp88581 _direct-supers83773_))))
          (if _$e83781_
              ((lambda (_g8378383785_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8378383785_))
               _$e83781_)
              (let ((_$e83788_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers83773_))))
                (if _$e83788_
                    ((lambda (_g8379083792_)
                       (error '"Cannot extend final class" _g8379083792_))
                     _$e83788_)
                    '#!void))))
        (let ((_g88583_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83773_))))
          (begin
            (let ((_g88584_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88583_) (##vector-length _g88583_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88584_ 2)))
                  (error "Context expects 2 values" _g88584_)))
            (let ((_precedence-list83795_
                   (let () (declare (not safe)) (##vector-ref _g88583_ 0)))
                  (_struct-super83796_
                   (let () (declare (not safe)) (##vector-ref _g88583_ 1))))
              (let ((_g88585_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83795_
                        _direct-slots83774_))))
                (begin
                  (let ((_g88586_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88585_)
                               (##vector-length _g88585_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88586_ 2)))
                        (error "Context expects 2 values" _g88586_)))
                  (let ((_slot-vector83798_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88585_ 0)))
                        (_slot-table83799_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88585_ 1))))
                    (let* ((_properties83801_
                            (let ((__tmp88589
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83774_)))
                                  (__tmp88587
                                   (let ((__tmp88588
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83773_))))
                                     (declare (not safe))
                                     (cons __tmp88588 _properties83775_))))
                              (declare (not safe))
                              (cons __tmp88589 __tmp88587)))
                           (_constructor*83806_
                            (let ((_$e83803_ _constructor83776_))
                              (if _$e83803_
                                  _$e83803_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83773_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id83771_
                         _name83772_
                         _struct-super83796_
                         _precedence-list83795_
                         _slot-vector83798_
                         _properties83801_
                         _constructor*83806_
                         _slot-table83799_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83769_)
        (let ((__tmp88590
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83769_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass83769_ __tmp88590))))
    (define compute-precedence-list
      (lambda (_direct-supers83767_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers83767_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass83751_)
        (let ((_tid83753_
               (let () (declare (not safe)) (##type-id _klass83751_))))
          (if (let () (declare (not safe)) (class-type-final? _klass83751_))
              (lambda (_g8375483756_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8375483756_ _tid83753_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass83751_))
                  (lambda (_g8375883760_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8375883760_ _tid83753_)))
                  (lambda (_g8376283764_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83751_ _g8376283764_))))))))
    (define if-class-slot-field
      (lambda (_klass83740_
               _slot83741_
               _if-final83742_
               _if-struct83743_
               _if-struct-field83744_
               _if-class-slot83745_)
        (let ((_field83747_
               (let ((__tmp88591
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass83740_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (hash-get __tmp88591 _slot83741_))))
          (if (let () (declare (not safe)) (not _field83747_))
              (error '"unknown slot" 'class: _klass83740_ 'slot: _slot83741_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass83740_))
                  (_if-final83742_ _klass83740_ _slot83741_ _field83747_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass83740_))
                      (_if-struct83743_ _klass83740_ _slot83741_ _field83747_)
                      (if (let ((_strukt83749_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83740_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt83749_
                                    'gerbil#class::t))
                                 (let ((__tmp88592
                                        (let ((__tmp88593
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt83749_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp88593))))
                                   (declare (not safe))
                                   (##fx< _field83747_ __tmp88592))))
                          (_if-struct-field83744_
                           _klass83740_
                           _slot83741_
                           _field83747_)
                          (_if-class-slot83745_
                           _klass83740_
                           _slot83741_
                           _field83747_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83737_ _slot83738_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83737_
           _slot83738_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83734_ _slot83735_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83734_
           _slot83735_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83731_ _slot83732_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83731_
           _slot83732_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83728_ _slot83729_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83728_
           _slot83729_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83712_ _class83713_ _slot83714_)
        (apply error
               '"not an instance"
               'object:
               _object83712_
               'class:
               _class83713_
               (if _slot83714_
                   (let ((__tmp88594
                          (let ()
                            (declare (not safe))
                            (cons _slot83714_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88594))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83719_ _class83720_)
        (let ((_slot83722_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83719_ _class83720_ _slot83722_))))
    (define not-an-instance
      (lambda _g88596_
        (let ((_g88595_ (let () (declare (not safe)) (##length _g88596_))))
          (cond ((let () (declare (not safe)) (##fx= _g88595_ 2))
                 (apply (lambda (_object83719_ _class83720_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83719_ _class83720_)))
                        _g88596_))
                ((let () (declare (not safe)) (##fx= _g88595_ 3))
                 (apply (lambda (_object83724_ _class83725_ _slot83726_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83724_
                             _class83725_
                             _slot83726_)))
                        _g88596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88596_))))))
    (define make-final-slot-accessor
      (lambda (_klass83705_ _slot83706_ _field83707_)
        (lambda (_obj83709_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83709_
             _field83707_
             _klass83705_
             _slot83706_)))))
    (define make-final-slot-mutator
      (lambda (_klass83698_ _slot83699_ _field83700_)
        (lambda (_obj83702_ _val83703_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83702_
             _val83703_
             _field83700_
             _klass83698_
             _slot83699_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83692_ _slot83693_ _field83694_)
        (lambda (_obj83696_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83696_
             _field83694_
             _klass83692_
             _slot83693_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83685_ _slot83686_ _field83687_)
        (lambda (_obj83689_ _val83690_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83689_
             _val83690_
             _field83687_
             _klass83685_
             _slot83686_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83679_ _slot83680_ _field83681_)
        (lambda (_obj83683_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83683_
             _field83681_
             _klass83679_
             _slot83680_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83672_ _slot83673_ _field83674_)
        (lambda (_obj83676_ _val83677_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83676_
             _val83677_
             _field83674_
             _klass83672_
             _slot83673_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83666_ _slot83667_ _field83668_)
        (lambda (_obj83670_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83666_ _obj83670_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83670_ _field83668_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83670_ _klass83666_ _slot83667_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83659_ _slot83660_ _field83661_)
        (lambda (_obj83663_ _val83664_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83659_ _obj83663_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83663_ _field83661_ _val83664_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83663_ _klass83659_ _slot83660_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83653_ _slot83654_ _field83655_)
        (lambda (_obj83657_)
          (if (let ((__tmp88597
                     (let () (declare (not safe)) (##type-id _klass83653_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83657_ __tmp88597))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83657_ _field83655_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83653_ _obj83657_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83657_ _slot83654_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83657_
                     _klass83653_
                     _slot83654_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83646_ _slot83647_ _field83648_)
        (lambda (_obj83650_ _val83651_)
          (if (let ((__tmp88598
                     (let () (declare (not safe)) (##type-id _klass83646_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83650_ __tmp88598))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83650_ _field83648_ _val83651_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83646_ _obj83650_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83650_ _slot83647_ _val83651_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83650_
                     _klass83646_
                     _slot83647_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83640_ _slot83641_ _field83642_)
        (lambda (_obj83644_)
          (if (let ((__tmp88599
                     (let () (declare (not safe)) (##type-id _klass83640_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83644_ __tmp88599))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83644_ _field83642_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83644_ _slot83641_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83633_ _slot83634_ _field83635_)
        (lambda (_obj83637_ _val83638_)
          (if (let ((__tmp88600
                     (let () (declare (not safe)) (##type-id _klass83633_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83637_ __tmp88600))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83637_ _field83635_ _val83638_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83637_ _slot83634_ _val83638_))))))
    (define class-slot-offset
      (lambda (_klass83630_ _slot83631_)
        (let ((__tmp88601
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83630_ '8 class::t '#f))))
          (declare (not safe))
          (hash-get __tmp88601 _slot83631_))))
    (define class-slot-ref
      (lambda (_klass83624_ _obj83625_ _slot83626_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83624_ _obj83625_))
            (let ((_off83628_
                   (let ((__tmp88602
                          (let ()
                            (declare (not safe))
                            (object-type _obj83625_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88602 _slot83626_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83625_
               _off83628_
               _klass83624_
               _slot83626_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83625_ _klass83624_)))))
    (define class-slot-set!
      (lambda (_klass83617_ _obj83618_ _slot83619_ _val83620_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83617_ _obj83618_))
            (let ((_off83622_
                   (let ((__tmp88603
                          (let ()
                            (declare (not safe))
                            (object-type _obj83618_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88603 _slot83619_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83618_
               _val83620_
               _off83622_
               _klass83617_
               _slot83619_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83618_ _klass83617_)))))
    (define unchecked-field-ref
      (lambda (_obj83614_ _off83615_)
        (let ((__tmp88604
               (let () (declare (not safe)) (##structure-type _obj83614_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83614_ _off83615_ __tmp88604 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83610_ _off83611_ _val83612_)
        (let ((__tmp88605
               (let () (declare (not safe)) (##structure-type _obj83610_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83610_
           _val83612_
           _off83611_
           __tmp88605
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83607_ _slot83608_)
        (let ((__tmp88606
               (let ((__tmp88607
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83607_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88607 _slot83608_))))
          (declare (not safe))
          (unchecked-field-ref _obj83607_ __tmp88606))))
    (define unchecked-slot-set!
      (lambda (_obj83603_ _slot83604_ _val83605_)
        (let ((__tmp88608
               (let ((__tmp88609
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83603_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88609 _slot83604_))))
          (declare (not safe))
          (unchecked-field-set! _obj83603_ __tmp88608 _val83605_))))
    (define slot-ref__%
      (lambda (_obj83579_ _slot83580_ _E83581_)
        (if (let () (declare (not safe)) (object? _obj83579_))
            (let* ((_klass83583_
                    (let () (declare (not safe)) (object-type _obj83579_)))
                   (_$e83586_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83583_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83583_ _slot83580_))
                        '#f)))
              (if _$e83586_
                  ((lambda (_off83589_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83579_ _off83589_)))
                   _$e83586_)
                  (_E83581_ _obj83579_ _slot83580_)))
            (_E83581_ _obj83579_ _slot83580_))))
    (define slot-ref__0
      (lambda (_obj83594_ _slot83595_)
        (let ((_E83597_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83594_ _slot83595_ _E83597_))))
    (define slot-ref
      (lambda _g88611_
        (let ((_g88610_ (let () (declare (not safe)) (##length _g88611_))))
          (cond ((let () (declare (not safe)) (##fx= _g88610_ 2))
                 (apply (lambda (_obj83594_ _slot83595_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83594_ _slot83595_)))
                        _g88611_))
                ((let () (declare (not safe)) (##fx= _g88610_ 3))
                 (apply (lambda (_obj83599_ _slot83600_ _E83601_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83599_ _slot83600_ _E83601_)))
                        _g88611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88611_))))))
    (define slot-set!__%
      (lambda (_obj83551_ _slot83552_ _val83553_ _E83554_)
        (if (let () (declare (not safe)) (object? _obj83551_))
            (let* ((_klass83556_
                    (let () (declare (not safe)) (object-type _obj83551_)))
                   (_$e83559_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83556_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83556_ _slot83552_))
                        '#f)))
              (if _$e83559_
                  ((lambda (_off83562_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83551_
                        _off83562_
                        _val83553_)))
                   _$e83559_)
                  (_E83554_ _obj83551_ _slot83552_)))
            (_E83554_ _obj83551_ _slot83552_))))
    (define slot-set!__0
      (lambda (_obj83567_ _slot83568_ _val83569_)
        (let ((_E83571_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83567_ _slot83568_ _val83569_ _E83571_))))
    (define slot-set!
      (lambda _g88613_
        (let ((_g88612_ (let () (declare (not safe)) (##length _g88613_))))
          (cond ((let () (declare (not safe)) (##fx= _g88612_ 3))
                 (apply (lambda (_obj83567_ _slot83568_ _val83569_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83567_ _slot83568_ _val83569_)))
                        _g88613_))
                ((let () (declare (not safe)) (##fx= _g88612_ 4))
                 (apply (lambda (_obj83573_ _slot83574_ _val83575_ _E83576_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83573_
                             _slot83574_
                             _val83575_
                             _E83576_)))
                        _g88613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88613_))))))
    (define __slot-error
      (lambda (_obj83547_ _slot83548_)
        (error '"Cannot find slot" 'object: _obj83547_ 'slot: _slot83548_)))
    (define subclass?
      (lambda (_maybe-sub-class83537_ _maybe-super-class83538_)
        (let* ((_maybe-super-class-id83540_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83538_)))
               (_$e83542_
                (let ((__tmp88614
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83537_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83540_ __tmp88614))))
          (if _$e83542_
              _$e83542_
              (let ((__tmp88616
                     (lambda (_super-class83545_)
                       (let ((__tmp88617
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83545_))))
                         (declare (not safe))
                         (eq? __tmp88617 _maybe-super-class-id83540_))))
                    (__tmp88615
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class83537_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp88616 __tmp88615))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83534_ _obj83535_)
        (let ((__tmp88618
               (let () (declare (not safe)) (##type-id _klass83534_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83535_ __tmp88618))))
    (define struct-instance?
      (lambda (_klass83531_ _obj83532_)
        (let ((__tmp88619
               (let () (declare (not safe)) (##type-id _klass83531_))))
          (declare (not safe))
          (##structure-instance-of? _obj83532_ __tmp88619))))
    (define class-instance?
      (lambda (_klass83526_ _obj83527_)
        (if (let () (declare (not safe)) (object? _obj83527_))
            (let ((_type83529_
                   (let () (declare (not safe)) (object-type _obj83527_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type83529_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83529_ _klass83526_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83521_ _k83522_)
        (let ((_obj83524_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83521_ _k83522_))))
          (let () (declare (not safe)) (object-fill! _obj83524_ '#f))
          _obj83524_)))
    (define object-fill!
      (lambda (_obj83514_ _fill83515_)
        (let _loop83517_ ((_i83519_
                           (let ((__tmp88621
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83514_))))
                             (declare (not safe))
                             (##fx- __tmp88621 '1))))
          (if (let () (declare (not safe)) (##fx> _i83519_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83514_
                   _fill83515_
                   _i83519_
                   '#f
                   '#f))
                (let ((__tmp88620
                       (let () (declare (not safe)) (##fx- _i83519_ '1))))
                  (declare (not safe))
                  (_loop83517_ __tmp88620)))
              _obj83514_))))
    (define new-instance
      (lambda (_klass83512_)
        (let ((__obj88527
               (let ((__tmp88622
                      (let ((__tmp88623
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83512_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp88623))))
                 (declare (not safe))
                 (##make-structure _klass83512_ __tmp88622))))
          (let () (declare (not safe)) (object-fill! __obj88527 '#f))
          __obj88527)))
    (define make-instance
      (lambda (_klass83502_ . _args83503_)
        (let* ((_obj83505_
                (let () (declare (not safe)) (new-instance _klass83502_)))
               (_$e83507_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass83502_ '10 class::t '#f))))
          (if _$e83507_
              ((lambda (_kons-id83510_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83502_
                    _kons-id83510_
                    _obj83505_
                    _args83503_)))
               _$e83507_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass83502_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass83502_
                     _obj83505_
                     _args83503_))
                  (if (let ((__tmp88624
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass83502_))))
                        (declare (not safe))
                        (not __tmp88624))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass83502_
                         _obj83505_
                         _args83503_))
                      (if (let ((__tmp88626
                                 (let ((__tmp88627
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj83505_))))
                                   (declare (not safe))
                                   (##fx- __tmp88627 '1)))
                                (__tmp88625 (length _args83503_)))
                            (declare (not safe))
                            (##fx= __tmp88626 __tmp88625))
                          (apply ##structure _klass83502_ _args83503_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass83502_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass83502_))
                                 'args:
                                 _args83503_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj83499_ . _args83500_)
        (if (let ((__tmp88629 (length _args83500_))
                  (__tmp88628
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83499_))))
              (declare (not safe))
              (##fx< __tmp88629 __tmp88628))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83499_ _args83500_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83499_
                   'args:
                   _args83500_))))
    (define __struct-instance-init!
      (lambda (_obj83458_ _args83459_)
        (let _lp83461_ ((_k83463_ '1) (_rest83464_ _args83459_))
          (let* ((_rest8346583473_ _rest83464_)
                 (_else8346783481_ (lambda () _obj83458_))
                 (_K8346983487_
                  (lambda (_rest83484_ _hd83485_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83458_ _k83463_ _hd83485_))
                    (let ((__tmp88630
                           (let () (declare (not safe)) (##fx+ _k83463_ '1))))
                      (declare (not safe))
                      (_lp83461_ __tmp88630 _rest83484_)))))
            (if (let () (declare (not safe)) (##pair? _rest8346583473_))
                (let ((_hd8347083490_
                       (let () (declare (not safe)) (##car _rest8346583473_)))
                      (_tl8347183492_
                       (let () (declare (not safe)) (##cdr _rest8346583473_))))
                  (let* ((_hd83495_ _hd8347083490_)
                         (_rest83497_ _tl8347183492_))
                    (declare (not safe))
                    (_K8346983487_ _rest83497_ _hd83495_)))
                (let () (declare (not safe)) (_else8346783481_)))))))
    (define class-instance-init!
      (lambda (_obj83455_ . _args83456_)
        (let ((__tmp88631
               (let () (declare (not safe)) (object-type _obj83455_))))
          (declare (not safe))
          (__class-instance-init! __tmp88631 _obj83455_ _args83456_))))
    (define __class-instance-init!
      (lambda (_klass83399_ _obj83400_ _args83401_)
        (let _lp83403_ ((_rest83405_ _args83401_))
          (let* ((_rest8340683416_ _rest83405_)
                 (_else8340883424_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83405_))
                        _obj83400_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83399_
                               'rest:
                               _rest83405_))))
                 (_K8341083436_
                  (lambda (_rest83427_ _val83428_ _key83429_)
                    (let ((_$e83431_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83399_ _key83429_))))
                      (if _$e83431_
                          ((lambda (_off83434_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83400_
                                _off83434_
                                _val83428_))
                             (let ()
                               (declare (not safe))
                               (_lp83403_ _rest83427_)))
                           _$e83431_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83399_
                                 'slot:
                                 _key83429_))))))
            (if (let () (declare (not safe)) (##pair? _rest8340683416_))
                (let ((_hd8341183439_
                       (let () (declare (not safe)) (##car _rest8340683416_)))
                      (_tl8341283441_
                       (let () (declare (not safe)) (##cdr _rest8340683416_))))
                  (let ((_key83444_ _hd8341183439_))
                    (if (let () (declare (not safe)) (##pair? _tl8341283441_))
                        (let ((_hd8341383446_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8341283441_)))
                              (_tl8341483448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8341283441_))))
                          (let* ((_val83451_ _hd8341383446_)
                                 (_rest83453_ _tl8341483448_))
                            (declare (not safe))
                            (_K8341083436_ _rest83453_ _val83451_ _key83444_)))
                        (let () (declare (not safe)) (_else8340883424_)))))
                (let () (declare (not safe)) (_else8340883424_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass83395_ _obj83396_ _args83397_)
        (apply call-method
               _klass83395_
               'instance-init!
               _obj83396_
               _args83397_)))
    (define constructor-init!
      (lambda (_klass83390_ _kons-id83391_ _obj83392_ . _args83393_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83390_
           _kons-id83391_
           _obj83392_
           _args83393_))))
    (define __constructor-init!
      (lambda (_klass83380_ _kons-id83381_ _obj83382_ _args83383_)
        (let ((_$e83385_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83380_ _obj83382_ _kons-id83381_))))
          (if _$e83385_
              ((lambda (_kons83388_)
                 (apply _kons83388_ _obj83382_ _args83383_)
                 _obj83382_)
               _$e83385_)
              (error '"missing constructor"
                     'class:
                     _klass83380_
                     'method:
                     _kons-id83381_)))))
    (define struct-copy
      (lambda (_struct83378_)
        (if (let () (declare (not safe)) (##structure? _struct83378_))
            '#!void
            (error '"not a structure" _struct83378_))
        (let () (declare (not safe)) (##structure-copy _struct83378_))))
    (define struct->list
      (lambda (_obj83376_)
        (if (let () (declare (not safe)) (object? _obj83376_))
            (let () (declare (not safe)) (##vector->list _obj83376_))
            (error '"not an object" _obj83376_))))
    (define class->list
      (lambda (_obj83363_)
        (if (let () (declare (not safe)) (object? _obj83363_))
            (let ((_klass83365_
                   (let () (declare (not safe)) (object-type _obj83363_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass83365_ 'gerbil#class::t))
                  (let ((_slot-vector83367_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass83365_
                            '7
                            class::t
                            '#f))))
                    (let _loop83369_ ((_index83371_
                                       (let ((__tmp88637
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector83367_))))
                                         (declare (not safe))
                                         (##fx- __tmp88637 '1)))
                                      (_plist83372_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83371_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83365_ _plist83372_))
                          (let ((_slot83374_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector83367_
                                    _index83371_))))
                            (let ((__tmp88636
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83371_ '1)))
                                  (__tmp88632
                                   (let ((__tmp88635
                                          (symbol->keyword _slot83374_))
                                         (__tmp88633
                                          (let ((__tmp88634
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83363_
                                                    _index83371_))))
                                            (declare (not safe))
                                            (cons __tmp88634 _plist83372_))))
                                     (declare (not safe))
                                     (cons __tmp88635 __tmp88633))))
                              (declare (not safe))
                              (_loop83369_ __tmp88636 __tmp88632))))))
                  (error '"not a class type"
                         'object:
                         _obj83363_
                         'class:
                         _klass83365_)))
            (error '"not an object" _obj83363_))))
    (define call-method
      (lambda (_obj83354_ _id83355_ . _args83356_)
        (let ((_$e83358_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83354_ _id83355_))))
          (if _$e83358_
              ((lambda (_method83361_)
                 (apply _method83361_ _obj83354_ _args83356_))
               _$e83358_)
              (error '"cannot find method"
                     'object:
                     _obj83354_
                     'method:
                     _id83355_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83351_ _id83352_)
        (if (let () (declare (not safe)) (object? _obj83351_))
            (let ((__tmp88638
                   (let () (declare (not safe)) (object-type _obj83351_))))
              (declare (not safe))
              (find-method __tmp88638 _obj83351_ _id83352_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83345_ _id83346_)
        (let ((_$e83348_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83345_ _id83346_))))
          (if _$e83348_
              _$e83348_
              (error '"missing method"
                     'object:
                     _obj83345_
                     'method:
                     _id83346_)))))
    (define bound-method-ref
      (lambda (_obj83335_ _id83336_)
        (let ((_$e83338_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83335_ _id83336_))))
          (if _$e83338_
              ((lambda (_method83341_)
                 (lambda _args83343_
                   (apply _method83341_ _obj83335_ _args83343_)))
               _$e83338_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83328_ _id83329_)
        (let ((_method83331_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83328_ _id83329_))))
          (lambda _args83333_ (apply _method83331_ _obj83328_ _args83333_)))))
    (define find-method
      (lambda (_klass83324_ _obj83325_ _id83326_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83324_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83324_ _obj83325_ _id83326_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83324_ _obj83325_ _id83326_)))))
    (define __find-method
      (lambda (_klass83317_ _obj83318_ _id83319_)
        (let ((_$e83321_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83317_ _obj83318_ _id83319_))))
          (if _$e83321_
              _$e83321_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83317_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83317_ _obj83318_ _id83319_)))))))
    (define class-find-method
      (lambda (_klass83313_ _obj83314_ _id83315_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83313_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83313_ _obj83314_ _id83315_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83305_ _obj83306_ _id83307_)
        (let ((__tmp88639
               (lambda (_g8330883310_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8330883310_ _obj83306_ _id83307_)))))
          (declare (not safe))
          (ormap1 __tmp88639 _mixins83305_))))
    (define builtin-find-method
      (lambda (_klass83298_ _obj83299_ _id83300_)
        (if (let () (declare (not safe)) (##type? _klass83298_))
            (let ((_$e83302_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83298_ _obj83299_ _id83300_))))
              (if _$e83302_
                  _$e83302_
                  (let ((__tmp88640
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83298_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88640 _obj83299_ _id83300_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83275_ _obj83276_ _id83277_)
        (letrec ((_metaclass-resolve-method83279_
                  (lambda ()
                    (let ((__method88528
                           (let ()
                             (declare (not safe))
                             (method-ref _klass83275_ 'direct-method-ref))))
                      (if __method88528
                          (__method88528 _klass83275_ _obj83276_ _id83277_)
                          (error '"Missing method"
                                 _klass83275_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!83280_
                  (lambda ()
                    (let ((_method83295_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method83279_))))
                      (let ((__tmp88642
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83275_
                                '11
                                class::t
                                '#f)))
                            (__tmp88641 (if _method83295_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp88642 _id83277_ __tmp88641))
                      _method83295_))))
          (let ((_$e83282_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass83275_ '11 class::t '#f))))
            (if _$e83282_
                ((lambda (_ht83285_)
                   (let ((_method83287_
                          (let ()
                            (declare (not safe))
                            (hash-get _ht83285_ _id83277_))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method83287_))
                         _method83287_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass83275_))
                             (let ((_$e83289_ _method83287_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e83289_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method83279_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e83289_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!83280_)))))
                             '#f))))
                 _$e83282_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass83275_))
                    (let ((_tab83292_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83275_
                         _tab83292_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!83280_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass83271_ _obj83272_ _id83273_)
        (let ((__tmp88643 (##structure-ref _klass83271_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp88643 _obj83272_ _id83273_))))
    (define builtin-method-ref
      (lambda (_klass83262_ _obj83263_ _id83264_)
        (let ((_$e83266_
               (let ((__tmp88644
                      (let () (declare (not safe)) (##type-id _klass83262_))))
                 (declare (not safe))
                 (hash-get __builtin-type-methods __tmp88644))))
          (if _$e83266_
              ((lambda (_mtab83269_)
                 (let ()
                   (declare (not safe))
                   (hash-get _mtab83269_ _id83264_)))
               _$e83266_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83228_ _id83229_ _proc83230_ _rebind?83231_)
        (letrec ((_bind!83233_
                  (lambda (_ht83246_)
                    (if (and (let () (declare (not safe)) (not _rebind?83231_))
                             (let ()
                               (declare (not safe))
                               (hash-get _ht83246_ _id83229_)))
                        (error '"method already bound"
                               'class:
                               _klass83228_
                               'method:
                               _id83229_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83246_ _id83229_ _proc83230_))))))
          (if (let () (declare (not safe)) (procedure? _proc83230_))
              '#!void
              (error '"bad method; expected procedure" _proc83230_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83228_ 'gerbil#class::t))
              (let ((_ht83235_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass83228_
                        '11
                        class::t
                        '#f))))
                (if _ht83235_
                    (let () (declare (not safe)) (_bind!83233_ _ht83235_))
                    (let ((_ht83237_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83228_
                         _ht83237_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!83233_ _ht83237_)))))
              (if (let () (declare (not safe)) (##type? _klass83228_))
                  (let ((_ht83244_
                         (let ((_$e83239_
                                (let ((__tmp88645
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83228_))))
                                  (declare (not safe))
                                  (hash-get
                                   __builtin-type-methods
                                   __tmp88645))))
                           (if _$e83239_
                               _$e83239_
                               (let ((_ht83242_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let ((__tmp88646
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83228_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88646
                                    _ht83242_))
                                 _ht83242_)))))
                    (declare (not safe))
                    (_bind!83233_ _ht83244_))
                  (error '"bad class; expected class or builtin type"
                         _klass83228_))))))
    (define bind-method!__0
      (lambda (_klass83251_ _id83252_ _proc83253_)
        (let ((_rebind?83255_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83251_
           _id83252_
           _proc83253_
           _rebind?83255_))))
    (define bind-method!
      (lambda _g88648_
        (let ((_g88647_ (let () (declare (not safe)) (##length _g88648_))))
          (cond ((let () (declare (not safe)) (##fx= _g88647_ 3))
                 (apply (lambda (_klass83251_ _id83252_ _proc83253_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83251_
                             _id83252_
                             _proc83253_)))
                        _g88648_))
                ((let () (declare (not safe)) (##fx= _g88647_ 4))
                 (apply (lambda (_klass83257_
                                 _id83258_
                                 _proc83259_
                                 _rebind?83260_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83257_
                             _id83258_
                             _proc83259_
                             _rebind?83260_)))
                        _g88648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88648_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83224_ _specializer83225_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83224_ _specializer83225_))))
    (define seal-class!
      (lambda (_klass83191_)
        (letrec ((_collect-methods!83193_
                  (lambda (_mtab83209_)
                    (letrec ((_merge!83211_
                              (lambda (_tab83219_)
                                (hash-for-each
                                 (lambda (_id83221_ _proc83222_)
                                   (let ()
                                     (declare (not safe))
                                     (table-set!
                                      _mtab83209_
                                      _id83221_
                                      _proc83222_)))
                                 _tab83219_)))
                             (_collect-direct-methods!83212_
                              (lambda (_klass83214_)
                                (let ((_$e83216_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass83214_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e83216_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83211_ _$e83216_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83212_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83191_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83191_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83191_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass83191_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83191_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass83191_))
                        (let ((__method88529
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass83191_ 'seal-class!))))
                          (if __method88529
                              (__method88529 _klass83191_)
                              (error '"Missing method"
                                     _klass83191_
                                     'seal-class!)))
                        (if (let ((__tmp88649
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass83191_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp88649))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass83191_)
                            (let ((_vtab83195_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (_mtab83196_
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!83193_ _mtab83196_))
                              (hash-for-each
                               (lambda (_id83198_ _proc83199_)
                                 (let ((_$e83201_
                                        (let ()
                                          (declare (not safe))
                                          (hash-get
                                           __method-specializers
                                           _proc83199_))))
                                   (if _$e83201_
                                       ((lambda (_specializer83204_)
                                          (let ((_proc83206_
                                                 (_specializer83204_
                                                  _klass83191_))
                                                (_gid83207_
                                                 (let ((__tmp88650
                                                        (let ()
                                                          (declare (not safe))
                                                          (##type-id
                                                           _klass83191_))))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp88650
                                                    '"::["
                                                    _id83198_
                                                    '"]"))))
                                            (eval (let ((__tmp88651
                                                         (let ((__tmp88652
                                                                (let ((__tmp88653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp88654
                                      (let ()
                                        (declare (not safe))
                                        (cons _proc83206_ '()))))
                                 (declare (not safe))
                                 (cons 'quote __tmp88654))))
                          (declare (not safe))
                          (cons __tmp88653 '()))))
                   (declare (not safe))
                   (cons _gid83207_ __tmp88652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'def __tmp88651)))
                                            (let ()
                                              (declare (not safe))
                                              (table-set!
                                               _vtab83195_
                                               _id83198_
                                               _proc83206_))))
                                        _$e83201_)
                                       (let ()
                                         (declare (not safe))
                                         (table-set!
                                          _vtab83195_
                                          _id83198_
                                          _proc83199_)))))
                               _mtab83196_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass83191_
                                 _vtab83195_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass83191_))))
              '#!void))))
    (define next-method
      (lambda (_subklass83140_ _obj83141_ _id83142_)
        (let ((_klass83144_
               (let () (declare (not safe)) (object-type _obj83141_)))
              (_type-id83145_
               (let () (declare (not safe)) (##type-id _subklass83140_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83144_ 'gerbil#class::t))
              (let _lp83147_ ((_rest83149_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83144_))))
                (let* ((_rest8315083158_ _rest83149_)
                       (_else8315283166_ (lambda () '#f))
                       (_K8315483172_
                        (lambda (_rest83169_ _klass83170_)
                          (if (let ((__tmp88655
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83170_))))
                                (declare (not safe))
                                (eq? _type-id83145_ __tmp88655))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest83169_
                                 _obj83141_
                                 _id83142_))
                              (let ()
                                (declare (not safe))
                                (_lp83147_ _rest83169_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8315083158_))
                      (let ((_hd8315583175_
                             (let ()
                               (declare (not safe))
                               (##car _rest8315083158_)))
                            (_tl8315683177_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8315083158_))))
                        (let* ((_klass83180_ _hd8315583175_)
                               (_rest83182_ _tl8315683177_))
                          (declare (not safe))
                          (_K8315483172_ _rest83182_ _klass83180_)))
                      (let () (declare (not safe)) (_else8315283166_)))))
              (if (let () (declare (not safe)) (##type? _klass83144_))
                  (let _lp83184_ ((_klass83186_ _klass83144_))
                    (if (let ((__tmp88656
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83186_))))
                          (declare (not safe))
                          (eq? _type-id83145_ __tmp88656))
                        (let ((__tmp88657
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83186_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp88657
                           _obj83141_
                           _id83142_))
                        (let ((_$e83188_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83186_))))
                          (if _$e83188_
                              (let ()
                                (declare (not safe))
                                (_lp83184_ _$e83188_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83130_ _obj83131_ _id83132_ . _args83133_)
        (let ((_$e83135_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83130_ _obj83131_ _id83132_))))
          (if _$e83135_
              ((lambda (_methodf83138_)
                 (apply _methodf83138_ _obj83131_ _args83133_))
               _$e83135_)
              (error '"cannot find next method"
                     'object:
                     _obj83131_
                     'method:
                     _id83132_)))))
    (define write-style (lambda (_we83128_) (macro-writeenv-style _we83128_)))
    (define write-object
      (lambda (_we83120_ _obj83121_)
        (let ((_$e83123_
               (let () (declare (not safe)) (method-ref _obj83121_ ':wr))))
          (if _$e83123_
              ((lambda (_method83126_) (_method83126_ _obj83121_ _we83120_))
               _$e83123_)
              (let ()
                (declare (not safe))
                (##default-wr _we83120_ _obj83121_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
