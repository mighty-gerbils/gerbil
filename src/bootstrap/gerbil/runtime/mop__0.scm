(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710687283)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class-type-flag-system '8192)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots65312_
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
             (_slot-vector65314_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots65312_))))
             (_slot-table65321_
              (let ((_slot-table65316_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot65318_ _field65319_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65316_
                      _slot65318_
                      _field65319_))
                   (let ((__tmp65462
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot65318_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65316_
                      __tmp65462
                      _field65319_)))
                 _slots65312_
                 (iota (length _slots65312_) '1))
                _slot-table65316_))
             (_flags65323_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields65329_
              (list->vector
               (apply append
                      (map (lambda (_g6532465326_) (list _g6532465326_ '5 '#f))
                           (drop _slots65312_ '5)))))
             (_properties65331_
              (let ((__tmp65465
                     (let ((__tmp65466
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots65312_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp65466)))
                    (__tmp65463
                     (let ((__tmp65464
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp65464 '()))))
                (declare (not safe))
                (cons __tmp65465 __tmp65463)))
             (_t65333_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags65323_
                 ##type-type
                 _fields65329_
                 '()
                 _slot-vector65314_
                 _slot-table65321_
                 _properties65331_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t65333_ _t65333_))
        _t65333_))
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags65308_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65309_ '((direct-slots:) (system: . #t)))
            (_slot-table65310_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           't
           _flags65308_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table65310_
           _properties65309_
           '#f
           '#f))))
    (let ((__tmp65467 (let () (declare (not safe)) (cons t::t '()))))
      (declare (not safe))
      (##unchecked-structure-set! class::t __tmp65467 '6 '#f '#f))
    (define class-type?
      (lambda (_obj65306_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj65306_ class::t.id))))
    (define class-type=?
      (lambda (_x65303_ _y65304_)
        (let ((__tmp65469 (##structure-ref _x65303_ '1 class::t '#f))
              (__tmp65468 (##structure-ref _y65304_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp65469 __tmp65468))))
    (define type-opaque?
      (lambda (_type65301_)
        (let ((__tmp65470
               (let ((__tmp65471
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65301_))))
                 (declare (not safe))
                 (##fxand __tmp65471 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp65470 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type65299_)
        (let ((__tmp65472
               (let ((__tmp65473
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65299_))))
                 (declare (not safe))
                 (##fxand __tmp65473 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65472 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type65297_)
        (let ((__tmp65474
               (let ((__tmp65475
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65297_))))
                 (declare (not safe))
                 (##fxand __tmp65475 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65474 '0))))
    (define class-type-struct?
      (lambda (_klass65295_)
        (let ((__tmp65476
               (let ((__tmp65477
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65295_))))
                 (declare (not safe))
                 (##fxand __tmp65477 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp65476 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass65293_)
        (let ((__tmp65478
               (let ((__tmp65479
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65293_))))
                 (declare (not safe))
                 (##fxand __tmp65479 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp65478 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass65291_)
        (let ((__tmp65480
               (let ((__tmp65481
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65291_))))
                 (declare (not safe))
                 (##fxand __tmp65481 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp65480 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass65289_)
        (let ((__tmp65482
               (let ((__tmp65483
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65289_))))
                 (declare (not safe))
                 (##fxand __tmp65483 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp65482 class-type-flag-system))))
    (define properties-form
      (lambda (_properties65255_)
        (map (lambda (_e6525665258_)
               (let* ((_g6526065267_ _e6525665258_)
                      (_E6526265271_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6526065267_))))
                      (_K6526365277_
                       (lambda (_val65274_ _key65275_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key65275_ 'direct-supers:))
                             (let ((__tmp65484 (map class-type-id _val65274_)))
                               (declare (not safe))
                               (cons _key65275_ __tmp65484))
                             (let ()
                               (declare (not safe))
                               (cons _key65275_ _val65274_))))))
                 (if (let () (declare (not safe)) (##pair? _g6526065267_))
                     (let ((_hd6526465280_
                            (let ()
                              (declare (not safe))
                              (##car _g6526065267_)))
                           (_tl6526565282_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6526065267_))))
                       (let* ((_key65285_ _hd6526465280_)
                              (_val65287_ _tl6526565282_))
                         (declare (not safe))
                         (_K6526365277_ _val65287_ _key65285_)))
                     (let () (declare (not safe)) (_E6526265271_)))))
             _properties65255_)))
    (define make-class-type-descriptor
      (lambda (_type-id65150_
               _type-name65151_
               _type-super65152_
               _precedence-list65153_
               _slot-vector65154_
               _properties65155_
               _constructor65156_
               _slot-table65157_
               _methods65158_)
        (letrec ((_make-props!65160_
                  (lambda (_key65224_)
                    (letrec* ((_ht65226_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!65227_
                               (lambda (_ht65248_ _slots65249_)
                                 (for-each
                                  (lambda (_g6525065252_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht65248_
                                       _g6525065252_
                                       '#t)))
                                  _slots65249_)))
                              (_put-alist!65228_
                               (lambda (_ht65237_ _key65238_ _alist65239_)
                                 (let ((_$e65241_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key65238_
                                           _alist65239_))))
                                   (if _$e65241_
                                       ((lambda (_g6524365245_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!65227_
                                             _ht65237_
                                             _g6524365245_)))
                                        _$e65241_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!65228_
                         _ht65226_
                         _key65224_
                         _properties65155_))
                      (for-each
                       (lambda (_mixin65230_)
                         (let ((_alist65232_
                                (##structure-ref
                                 _mixin65230_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist65232_))
                                   (let ((__tmp65486
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key65224_
                                             _alist65232_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp65486)))
                               (let ((__tmp65485
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin65230_))))
                                 (declare (not safe))
                                 (_put-slots!65227_ _ht65226_ __tmp65485))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!65228_
                                  _ht65226_
                                  _key65224_
                                  _alist65232_)))))
                       _precedence-list65153_)
                      _ht65226_))))
          (let* ((_transparent?65162_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties65155_)))
                 (_all-slots-printable?65167_
                  (let ((_$e65164_ _transparent?65162_))
                    (if _$e65164_
                        _$e65164_
                        (let ((__tmp65487
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties65155_))))
                          (declare (not safe))
                          (eq? '#t __tmp65487)))))
                 (_printable65169_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?65167_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65160_ 'print:))
                      '#f))
                 (_all-slots-equalable?65174_
                  (let ((_$e65171_ _transparent?65162_))
                    (if _$e65171_
                        _$e65171_
                        (let ((__tmp65488
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties65155_))))
                          (declare (not safe))
                          (eq? '#t __tmp65488)))))
                 (_equalable65176_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?65174_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65160_ 'equal:))
                      '#f))
                 (_first-new-field65178_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super65152_
                         'gerbil#class::t))
                      (let ((__tmp65489
                             (##structure-ref
                              _type-super65152_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp65489))
                      '1))
                 (_field-info-length65180_
                  (let ((__tmp65490
                         (let ((__tmp65491
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector65154_))))
                           (declare (not safe))
                           (##fx- __tmp65491 _first-new-field65178_))))
                    (declare (not safe))
                    (##fx* '3 __tmp65490)))
                 (_field-info65182_ (make-vector _field-info-length65180_ '#f))
                 (_struct?65184_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties65155_)))
                 (_final?65186_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties65155_)))
                 (_metaclass65194_
                  (let ((_metaclass6518765189_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties65155_))))
                    (if _metaclass6518765189_
                        (let ((_metaclass65192_ _metaclass6518765189_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass65192_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id65150_
                                       'metaclass:
                                       _metaclass65192_)))
                          _metaclass65192_)
                        '#f)))
                 (_system?65196_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties65155_)))
                 (_opaque?65201_
                  (let ((_$e65198_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?65174_))))
                    (if _$e65198_
                        _$e65198_
                        (if _type-super65152_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super65152_))
                            '#f))))
                 (_type-flags65203_
                  (let ((__tmp65496 (if _final?65186_ '0 type-flag-extensible))
                        (__tmp65495 (if _opaque?65201_ type-flag-opaque '0))
                        (__tmp65494
                         (if _struct?65184_ class-type-flag-struct '0))
                        (__tmp65493
                         (if _metaclass65194_ class-type-flag-metaclass '0))
                        (__tmp65492
                         (if _system?65196_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp65496
                             __tmp65495
                             __tmp65494
                             __tmp65493
                             __tmp65492)))
                 (_precedence-list65205_
                  (if (memq t::t _precedence-list65153_)
                      (begin
                        (if (let ((__tmp65497 (last _precedence-list65153_)))
                              (declare (not safe))
                              (eq? __tmp65497 t::t))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"BUG: t::t is not last in the precedence list")))
                        _precedence-list65153_)
                      (append _precedence-list65153_
                              (let () (declare (not safe)) (cons t::t '()))))))
            (let _loop65208_ ((_i65210_ _first-new-field65178_) (_j65211_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j65211_ _field-info-length65180_))
                  (let* ((_slot65213_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector65154_ _i65210_)))
                         (_flags65221_
                          (if _transparent?65162_
                              '0
                              (let ((__tmp65499
                                     (if (or _all-slots-printable?65167_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable65169_
                                                _slot65213_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp65498
                                     (if (or _all-slots-equalable?65174_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable65176_
                                                _slot65213_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp65499 __tmp65498)))))
                    (vector-set! _field-info65182_ _j65211_ _slot65213_)
                    (vector-set!
                     _field-info65182_
                     (let () (declare (not safe)) (##fx+ _j65211_ '1))
                     _flags65221_)
                    (let ((__tmp65501
                           (let () (declare (not safe)) (##fx+ _i65210_ '1)))
                          (__tmp65500
                           (let () (declare (not safe)) (##fx+ _j65211_ '3))))
                      (declare (not safe))
                      (_loop65208_ __tmp65501 __tmp65500)))
                  '#!void))
            (if _metaclass65194_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass65194_
                   _type-id65150_
                   _type-name65151_
                   _type-flags65203_
                   _type-super65152_
                   _field-info65182_
                   _precedence-list65205_
                   _slot-vector65154_
                   _slot-table65157_
                   _properties65155_
                   _constructor65156_
                   _methods65158_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id65150_
                   _type-name65151_
                   _type-flags65203_
                   _type-super65152_
                   _field-info65182_
                   _precedence-list65205_
                   _slot-vector65154_
                   _slot-table65157_
                   _properties65155_
                   _constructor65156_
                   _methods65158_)))))))
    (define class-type-id
      (lambda (_klass65148_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65148_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass65146_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65146_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass65143_ _val65144_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65143_ _val65144_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass65138_ _val65140_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65138_
           _val65140_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass65136_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65136_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass65134_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65134_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass65131_ _val65132_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65131_ _val65132_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass65126_ _val65128_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65126_
           _val65128_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass65124_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65124_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass65122_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65122_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass65119_ _val65120_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65119_ _val65120_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass65114_ _val65116_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65114_
           _val65116_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass65112_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65112_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass65110_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65110_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass65107_ _val65108_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65107_ _val65108_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass65102_ _val65104_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65102_
           _val65104_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass65100_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65100_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass65098_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65098_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass65095_ _val65096_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65095_ _val65096_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass65090_ _val65092_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65090_
           _val65092_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass65088_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65088_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass65086_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass65086_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass65083_ _val65084_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65083_
           _val65084_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass65078_ _val65080_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65078_
           _val65080_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass65076_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65076_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass65074_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65074_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass65071_ _val65072_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65071_
           _val65072_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass65066_ _val65068_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65066_
           _val65068_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass65064_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65064_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass65062_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65062_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass65059_ _val65060_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65059_ _val65060_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass65054_ _val65056_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65054_
           _val65056_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass65052_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65052_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass65050_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65050_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass65047_ _val65048_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65047_ _val65048_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass65042_ _val65044_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65042_
           _val65044_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass65040_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65040_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass65038_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65038_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass65035_ _val65036_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65035_
           _val65036_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass65030_ _val65032_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65030_
           _val65032_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass65028_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65028_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass65026_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65026_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass65023_ _val65024_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65023_ _val65024_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass65018_ _val65020_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65018_
           _val65020_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass65016_)
        (cdr (vector->list (##structure-ref _klass65016_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass65014_)
        (let ((__tmp65502
               (let ((__tmp65503
                      (##structure-ref _klass65014_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp65503))))
          (declare (not safe))
          (##fx- __tmp65502 '1))))
    (define class-type-seal!
      (lambda (_klass65012_)
        (let ((__tmp65504
               (let ((__tmp65505
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65012_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65505))))
          (declare (not safe))
          (##structure-set!
           _klass65012_
           __tmp65504
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass65010_)
        (let ((__tmp65506
               (let ((__tmp65507
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65010_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65507))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65010_
           __tmp65506
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct65001_ _maybe-super-struct65002_)
        (let ((_maybe-super-struct-id65004_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct65002_))))
          (let _lp65006_ ((_super-struct65008_ _maybe-sub-struct65001_))
            (if (let () (declare (not safe)) (not _super-struct65008_))
                '#f
                (if (let ((__tmp65509
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct65008_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id65004_ __tmp65509))
                    '#t
                    (let ((__tmp65508
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct65008_))))
                      (declare (not safe))
                      (_lp65006_ __tmp65508))))))))
    (define base-struct/1
      (lambda (_klass64999_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64999_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64999_))
                _klass64999_
                (let () (declare (not safe)) (##type-super _klass64999_)))
            (if (let () (declare (not safe)) (not _klass64999_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64999_))))))
    (define base-struct/2
      (lambda (_klass164987_ _klass264988_)
        (let ((_s164990_
               (let () (declare (not safe)) (base-struct/1 _klass164987_)))
              (_s264991_
               (let () (declare (not safe)) (base-struct/1 _klass264988_))))
          (if (or (let () (declare (not safe)) (not _s164990_))
                  (and _s264991_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164990_ _s264991_))))
              _s264991_
              (if (or (let () (declare (not safe)) (not _s264991_))
                      (and _s164990_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264991_ _s164990_))))
                  _s164990_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164987_
                           _klass264988_
                           _s164990_
                           _s264991_)))))))
    (define base-struct/list
      (lambda (_all-supers64871_)
        (let* ((_all-supers6487264897_ _all-supers64871_)
               (_E6487764901_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6487264897_)))))
          (let ((_K6489564984_ (lambda () '#f))
                (_K6489264970_
                 (lambda (_x64968_)
                   (let () (declare (not safe)) (base-struct/1 _x64968_))))
                (_K6488764947_
                 (lambda (_y64944_ _x64945_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64945_ _y64944_))))
                (_K6487864908_
                 (lambda (_y64905_ _x64906_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64906_ _y64905_)))))
            (let* ((___match6545665457_
                    (lambda (_hd6487964911_ _tl6488064913_)
                      (let ((_x64916_ _hd6487964911_))
                        (letrec ((_splice-rest6488264918_
                                  (lambda (_rest6488664925_ _y64927_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6488664925_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6487864908_ _y64927_ _x64916_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6487764901_)))))
                                 (_splice-try6488464920_
                                  (lambda (_hd6488564929_
                                           _rest6488664931_
                                           _y6488164932_)
                                    (let ((_y64935_ _hd6488564929_))
                                      (let ((__tmp65511
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6488664931_)))
                                            (__tmp65510
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64935_ _y6488164932_))))
                                        (declare (not safe))
                                        (_splice-loop6488364922_
                                         __tmp65511
                                         __tmp65510)))))
                                 (_splice-loop6488364922_
                                  (lambda (_rest6488664937_ _y6488164938_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6488664937_))
                                        (let ((__tmp65513
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6488664937_))))
                                          (declare (not safe))
                                          (_splice-try6488464920_
                                           __tmp65513
                                           _rest6488664937_
                                           _y6488164938_))
                                        (let ((__tmp65512
                                               (reverse _y6488164938_)))
                                          (declare (not safe))
                                          (_splice-rest6488264918_
                                           _rest6488664937_
                                           __tmp65512))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6488364922_ _tl6488064913_ '()))))))
                   (_try-match6487464980_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6487264897_))
                          (let ((_tl6489464975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6487264897_)))
                                (_hd6489364973_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6487264897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6489464975_))
                                (let ((_x64978_ _hd6489364973_))
                                  (declare (not safe))
                                  (base-struct/1 _x64978_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6489464975_))
                                    (let ((_tl6489164959_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6489464975_)))
                                          (_hd6489064957_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6489464975_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6489164959_))
                                          (let ((_x64955_ _hd6489364973_)
                                                (_y64962_ _hd6489064957_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6488764947_
                                               _y64962_
                                               _x64955_)))
                                          (___match6545665457_
                                           _hd6489364973_
                                           _tl6489464975_)))
                                    (___match6545665457_
                                     _hd6489364973_
                                     _tl6489464975_))))
                          (let () (declare (not safe)) (_E6487764901_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6487264897_))
                  (let () (declare (not safe)) (_K6489564984_))
                  (let () (declare (not safe)) (_try-match6487464980_))))))))
    (define base-struct
      (lambda _all-supers64869_
        (let () (declare (not safe)) (base-struct/list _all-supers64869_))))
    (define find-super-constructor
      (lambda (_super64821_)
        (let _lp64823_ ((_rest64825_ _super64821_) (_constructor64826_ '#f))
          (let* ((_rest6482764835_ _rest64825_)
                 (_else6482964843_ (lambda () _constructor64826_))
                 (_K6483164857_
                  (lambda (_rest64846_ _hd64847_)
                    (let ((_$e64849_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd64847_
                              '10
                              class::t
                              '#f))))
                      (if _$e64849_
                          ((lambda (_xconstructor64852_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor64826_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor64826_
                                            _xconstructor64852_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp64823_ _rest64846_ _xconstructor64852_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor64826_
                                          _xconstructor64852_))))
                           _$e64849_)
                          (let ()
                            (declare (not safe))
                            (_lp64823_ _rest64846_ _constructor64826_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6482764835_))
                (let ((_hd6483264860_
                       (let () (declare (not safe)) (##car _rest6482764835_)))
                      (_tl6483364862_
                       (let () (declare (not safe)) (##cdr _rest6482764835_))))
                  (let* ((_hd64865_ _hd6483264860_)
                         (_rest64867_ _tl6483364862_))
                    (declare (not safe))
                    (_K6483164857_ _rest64867_ _hd64865_)))
                (let () (declare (not safe)) (_else6482964843_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list64797_ _direct-slots64798_)
        (let* ((_next-slot64800_ '1)
               (_slot-table64802_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots64804_ '(__class))
               (_process-slot64808_
                (lambda (_slot64806_)
                  (if (let () (declare (not safe)) (symbol? _slot64806_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot64806_)))
                  (if (let ((__tmp65515
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table64802_
                                _slot64806_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp65515 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64802_
                           _slot64806_
                           _next-slot64800_))
                        (let ((__tmp65514
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _slot64806_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64802_
                           __tmp65514
                           _next-slot64800_))
                        (set! _r-slots64804_
                              (let ()
                                (declare (not safe))
                                (cons _slot64806_ _r-slots64804_)))
                        (set! _next-slot64800_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot64800_ '1))))
                      '#!void)))
               (_process-slots64814_
                (lambda (_g6480964811_)
                  (for-each _process-slot64808_ _g6480964811_))))
          (for-each
           (lambda (_mixin64817_)
             (let ((__tmp65516
                    (let ((__tmp65517
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin64817_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp65517 '()))))
               (declare (not safe))
               (_process-slots64814_ __tmp65516)))
           (reverse _class-precedence-list64797_))
          (let ()
            (declare (not safe))
            (_process-slots64814_ _direct-slots64798_))
          (let ((_slot-vector64819_ (list->vector (reverse _r-slots64804_))))
            (values _slot-vector64819_ _slot-table64802_)))))
    (define make-class-type
      (lambda (_id64759_
               _name64760_
               _direct-supers64761_
               _direct-slots64762_
               _properties64763_
               _constructor64764_)
        (let ((_$e64769_
               (let ((__tmp65518
                      (lambda (_$obj64766_)
                        (let ((__tmp65519
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj64766_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp65519)))))
                 (declare (not safe))
                 (find __tmp65518 _direct-supers64761_))))
          (if _$e64769_
              ((lambda (_g6477164773_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6477164773_)))
               _$e64769_)
              (let ((_$e64776_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers64761_))))
                (if _$e64776_
                    ((lambda (_g6477864780_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6477864780_)))
                     _$e64776_)
                    '#!void))))
        (let ((_g65520_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers64761_))))
          (begin
            (let ((_g65521_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g65520_) (##vector-length _g65520_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g65521_ 2)))
                  (error "Context expects 2 values" _g65521_)))
            (let ((_precedence-list64783_
                   (let () (declare (not safe)) (##vector-ref _g65520_ 0)))
                  (_struct-super64784_
                   (let () (declare (not safe)) (##vector-ref _g65520_ 1))))
              (let ((_g65522_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list64783_
                        _direct-slots64762_))))
                (begin
                  (let ((_g65523_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g65522_)
                               (##vector-length _g65522_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g65523_ 2)))
                        (error "Context expects 2 values" _g65523_)))
                  (let ((_slot-vector64786_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65522_ 0)))
                        (_slot-table64787_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65522_ 1))))
                    (let* ((_properties64789_
                            (let ((__tmp65526
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots64762_)))
                                  (__tmp65524
                                   (let ((__tmp65525
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers64761_))))
                                     (declare (not safe))
                                     (cons __tmp65525 _properties64763_))))
                              (declare (not safe))
                              (cons __tmp65526 __tmp65524)))
                           (_constructor*64794_
                            (let ((_$e64791_ _constructor64764_))
                              (if _$e64791_
                                  _$e64791_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers64761_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id64759_
                         _name64760_
                         _struct-super64784_
                         _precedence-list64783_
                         _slot-vector64786_
                         _properties64789_
                         _constructor*64794_
                         _slot-table64787_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass64757_)
        (let ((__tmp65527
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64757_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass64757_ __tmp65527))))
    (define compute-precedence-list
      (lambda (_direct-supers64755_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers64755_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass64739_)
        (let ((_tid64741_
               (let () (declare (not safe)) (##type-id _klass64739_))))
          (if (let () (declare (not safe)) (class-type-final? _klass64739_))
              (lambda (_g6474264744_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6474264744_ _tid64741_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass64739_))
                  (lambda (_g6474664748_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6474664748_ _tid64741_)))
                  (lambda (_g6475064752_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass64739_ _g6475064752_))))))))
    (define if-class-slot-field
      (lambda (_klass64728_
               _slot64729_
               _if-final64730_
               _if-struct64731_
               _if-struct-field64732_
               _if-class-slot64733_)
        (let ((_field64735_
               (let ((__tmp65528
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass64728_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp65528 _slot64729_ '#f))))
          (if (let () (declare (not safe)) (not _field64735_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass64728_
                       'slot:
                       _slot64729_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass64728_))
                  (_if-final64730_ _klass64728_ _slot64729_ _field64735_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass64728_))
                      (_if-struct64731_ _klass64728_ _slot64729_ _field64735_)
                      (if (let ((_strukt64737_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass64728_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt64737_
                                    'gerbil#class::t))
                                 (let ((__tmp65529
                                        (let ((__tmp65530
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt64737_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp65530))))
                                   (declare (not safe))
                                   (##fx< _field64735_ __tmp65529))))
                          (_if-struct-field64732_
                           _klass64728_
                           _slot64729_
                           _field64735_)
                          (_if-class-slot64733_
                           _klass64728_
                           _slot64729_
                           _field64735_))))))))
    (define make-class-slot-accessor
      (lambda (_klass64725_ _slot64726_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64725_
           _slot64726_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass64722_ _slot64723_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64722_
           _slot64723_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass64719_ _slot64720_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64719_
           _slot64720_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass64716_ _slot64717_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64716_
           _slot64717_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object64700_ _class64701_ _slot64702_)
        (apply error
               '"not an instance"
               'object:
               _object64700_
               'class:
               _class64701_
               (if _slot64702_
                   (let ((__tmp65531
                          (let ()
                            (declare (not safe))
                            (cons _slot64702_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp65531))
                   '()))))
    (define not-an-instance__0
      (lambda (_object64707_ _class64708_)
        (let ((_slot64710_ '#f))
          (declare (not safe))
          (not-an-instance__% _object64707_ _class64708_ _slot64710_))))
    (define not-an-instance
      (lambda _g65533_
        (let ((_g65532_ (let () (declare (not safe)) (##length _g65533_))))
          (cond ((let () (declare (not safe)) (##fx= _g65532_ 2))
                 (apply (lambda (_object64707_ _class64708_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object64707_ _class64708_)))
                        _g65533_))
                ((let () (declare (not safe)) (##fx= _g65532_ 3))
                 (apply (lambda (_object64712_ _class64713_ _slot64714_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object64712_
                             _class64713_
                             _slot64714_)))
                        _g65533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g65533_))))))
    (define make-final-slot-accessor
      (lambda (_klass64693_ _slot64694_ _field64695_)
        (lambda (_obj64697_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj64697_
             _field64695_
             _klass64693_
             _slot64694_)))))
    (define make-final-slot-mutator
      (lambda (_klass64686_ _slot64687_ _field64688_)
        (lambda (_obj64690_ _val64691_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj64690_
             _val64691_
             _field64688_
             _klass64686_
             _slot64687_)))))
    (define make-struct-slot-accessor
      (lambda (_klass64680_ _slot64681_ _field64682_)
        (lambda (_obj64684_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj64684_
             _field64682_
             _klass64680_
             _slot64681_)))))
    (define make-struct-slot-mutator
      (lambda (_klass64673_ _slot64674_ _field64675_)
        (lambda (_obj64677_ _val64678_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj64677_
             _val64678_
             _field64675_
             _klass64673_
             _slot64674_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass64667_ _slot64668_ _field64669_)
        (lambda (_obj64671_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj64671_
             _field64669_
             _klass64667_
             _slot64668_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass64660_ _slot64661_ _field64662_)
        (lambda (_obj64664_ _val64665_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj64664_
             _val64665_
             _field64662_
             _klass64660_
             _slot64661_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass64654_ _slot64655_ _field64656_)
        (lambda (_obj64658_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64654_ _obj64658_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64658_ _field64656_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64658_ _klass64654_ _slot64655_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64647_ _slot64648_ _field64649_)
        (lambda (_obj64651_ _val64652_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64647_ _obj64651_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64651_ _field64649_ _val64652_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64651_ _klass64647_ _slot64648_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64641_ _slot64642_ _field64643_)
        (lambda (_obj64645_)
          (if (let ((__tmp65534
                     (let () (declare (not safe)) (##type-id _klass64641_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64645_ __tmp65534))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64645_ _field64643_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64641_ _obj64645_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64645_ _slot64642_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64645_
                     _klass64641_
                     _slot64642_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64634_ _slot64635_ _field64636_)
        (lambda (_obj64638_ _val64639_)
          (if (let ((__tmp65535
                     (let () (declare (not safe)) (##type-id _klass64634_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64638_ __tmp65535))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64638_ _field64636_ _val64639_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64634_ _obj64638_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64638_ _slot64635_ _val64639_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64638_
                     _klass64634_
                     _slot64635_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64628_ _slot64629_ _field64630_)
        (lambda (_obj64632_)
          (if (let ((__tmp65536
                     (let () (declare (not safe)) (##type-id _klass64628_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64632_ __tmp65536))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64632_ _field64630_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64632_ _slot64629_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64621_ _slot64622_ _field64623_)
        (lambda (_obj64625_ _val64626_)
          (if (let ((__tmp65537
                     (let () (declare (not safe)) (##type-id _klass64621_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64625_ __tmp65537))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64625_ _field64623_ _val64626_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64625_ _slot64622_ _val64626_))))))
    (define class-slot-offset
      (lambda (_klass64618_ _slot64619_)
        (let ((__tmp65538
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64618_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp65538 _slot64619_ '#f))))
    (define class-slot-ref
      (lambda (_klass64612_ _obj64613_ _slot64614_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64612_ _obj64613_))
            (let ((_off64616_
                   (let ((__tmp65539 (object-type _obj64613_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65539 _slot64614_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64613_
               _off64616_
               _klass64612_
               _slot64614_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64613_ _klass64612_)))))
    (define class-slot-set!
      (lambda (_klass64605_ _obj64606_ _slot64607_ _val64608_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64605_ _obj64606_))
            (let ((_off64610_
                   (let ((__tmp65540 (object-type _obj64606_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65540 _slot64607_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64606_
               _val64608_
               _off64610_
               _klass64605_
               _slot64607_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64606_ _klass64605_)))))
    (define unchecked-field-ref
      (lambda (_obj64602_ _off64603_)
        (let ((__tmp65541
               (let () (declare (not safe)) (##structure-type _obj64602_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64602_ _off64603_ __tmp65541 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64598_ _off64599_ _val64600_)
        (let ((__tmp65542
               (let () (declare (not safe)) (##structure-type _obj64598_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64598_
           _val64600_
           _off64599_
           __tmp65542
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj64595_ _slot64596_)
        (let ((__tmp65543
               (let ((__tmp65544
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64595_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65544 _slot64596_))))
          (declare (not safe))
          (unchecked-field-ref _obj64595_ __tmp65543))))
    (define unchecked-slot-set!
      (lambda (_obj64591_ _slot64592_ _val64593_)
        (let ((__tmp65545
               (let ((__tmp65546
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64591_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65546 _slot64592_))))
          (declare (not safe))
          (unchecked-field-set! _obj64591_ __tmp65545 _val64593_))))
    (define slot-ref__%
      (lambda (_obj64567_ _slot64568_ _E64569_)
        (if (object? _obj64567_)
            (let* ((_klass64571_ (object-type _obj64567_))
                   (_$e64574_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64571_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64571_ _slot64568_))
                        '#f)))
              (if _$e64574_
                  ((lambda (_off64577_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj64567_ _off64577_)))
                   _$e64574_)
                  (_E64569_ _obj64567_ _slot64568_)))
            (_E64569_ _obj64567_ _slot64568_))))
    (define slot-ref__0
      (lambda (_obj64582_ _slot64583_)
        (let ((_E64585_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj64582_ _slot64583_ _E64585_))))
    (define slot-ref
      (lambda _g65548_
        (let ((_g65547_ (let () (declare (not safe)) (##length _g65548_))))
          (cond ((let () (declare (not safe)) (##fx= _g65547_ 2))
                 (apply (lambda (_obj64582_ _slot64583_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj64582_ _slot64583_)))
                        _g65548_))
                ((let () (declare (not safe)) (##fx= _g65547_ 3))
                 (apply (lambda (_obj64587_ _slot64588_ _E64589_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj64587_ _slot64588_ _E64589_)))
                        _g65548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g65548_))))))
    (define slot-set!__%
      (lambda (_obj64539_ _slot64540_ _val64541_ _E64542_)
        (if (object? _obj64539_)
            (let* ((_klass64544_ (object-type _obj64539_))
                   (_$e64547_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64544_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64544_ _slot64540_))
                        '#f)))
              (if _$e64547_
                  ((lambda (_off64550_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj64539_
                        _off64550_
                        _val64541_)))
                   _$e64547_)
                  (_E64542_ _obj64539_ _slot64540_)))
            (_E64542_ _obj64539_ _slot64540_))))
    (define slot-set!__0
      (lambda (_obj64555_ _slot64556_ _val64557_)
        (let ((_E64559_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj64555_ _slot64556_ _val64557_ _E64559_))))
    (define slot-set!
      (lambda _g65550_
        (let ((_g65549_ (let () (declare (not safe)) (##length _g65550_))))
          (cond ((let () (declare (not safe)) (##fx= _g65549_ 3))
                 (apply (lambda (_obj64555_ _slot64556_ _val64557_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj64555_ _slot64556_ _val64557_)))
                        _g65550_))
                ((let () (declare (not safe)) (##fx= _g65549_ 4))
                 (apply (lambda (_obj64561_ _slot64562_ _val64563_ _E64564_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj64561_
                             _slot64562_
                             _val64563_
                             _E64564_)))
                        _g65550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g65550_))))))
    (define __slot-error
      (lambda (_obj64535_ _slot64536_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj64535_ 'slot: _slot64536_))))
    (define subclass?
      (lambda (_maybe-sub-class64525_ _maybe-super-class64526_)
        (let* ((_maybe-super-class-id64528_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class64526_)))
               (_$e64530_
                (let ((__tmp65551
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class64525_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id64528_ __tmp65551))))
          (if _$e64530_
              _$e64530_
              (let ((__tmp65553
                     (lambda (_super-class64533_)
                       (let ((__tmp65554
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class64533_))))
                         (declare (not safe))
                         (eq? __tmp65554 _maybe-super-class-id64528_))))
                    (__tmp65552
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class64525_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp65553 __tmp65552))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass64522_ _obj64523_)
        (let ((__tmp65555
               (let () (declare (not safe)) (##type-id _klass64522_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj64523_ __tmp65555))))
    (define struct-instance?
      (lambda (_klass64519_ _obj64520_)
        (let ((__tmp65556
               (let () (declare (not safe)) (##type-id _klass64519_))))
          (declare (not safe))
          (##structure-instance-of? _obj64520_ __tmp65556))))
    (define class-instance?
      (lambda (_klass64514_ _obj64515_)
        (if (object? _obj64515_)
            (let ((_type64517_ (object-type _obj64515_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type64517_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type64517_ _klass64514_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass64509_ _k64510_)
        (if (let () (declare (not safe)) (class-type-system? _klass64509_))
            (let ()
              (declare (not safe))
              (error '"cannot instantiate system class" 'class: _klass64509_))
            (let ((_obj64512_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass64509_ _k64510_))))
              (let () (declare (not safe)) (object-fill! _obj64512_ '#f))
              _obj64512_))))
    (define object-fill!
      (lambda (_obj64502_ _fill64503_)
        (let _loop64505_ ((_i64507_
                           (let ((__tmp65558
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj64502_))))
                             (declare (not safe))
                             (##fx- __tmp65558 '1))))
          (if (let () (declare (not safe)) (##fx> _i64507_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj64502_
                   _fill64503_
                   _i64507_
                   '#f
                   '#f))
                (let ((__tmp65557
                       (let () (declare (not safe)) (##fx- _i64507_ '1))))
                  (declare (not safe))
                  (_loop64505_ __tmp65557)))
              _obj64502_))))
    (define new-instance
      (lambda (_klass64500_)
        (let ((__obj65458
               (let ((__tmp65559
                      (let ((__tmp65560
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64500_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp65560))))
                 (declare (not safe))
                 (##make-structure _klass64500_ __tmp65559))))
          (let () (declare (not safe)) (object-fill! __obj65458 '#f))
          __obj65458)))
    (define make-instance
      (lambda (_klass64490_ . _args64491_)
        (let* ((_obj64493_
                (let () (declare (not safe)) (new-instance _klass64490_)))
               (_$e64495_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64490_ '10 class::t '#f))))
          (if _$e64495_
              ((lambda (_kons-id64498_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass64490_
                    _kons-id64498_
                    _obj64493_
                    _args64491_)))
               _$e64495_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass64490_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass64490_
                     _obj64493_
                     _args64491_))
                  (if (let ((__tmp65565
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass64490_))))
                        (declare (not safe))
                        (not __tmp65565))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass64490_
                         _obj64493_
                         _args64491_))
                      (if (let ((__tmp65563
                                 (let ((__tmp65564
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj64493_))))
                                   (declare (not safe))
                                   (##fx- __tmp65564 '1)))
                                (__tmp65562 (length _args64491_)))
                            (declare (not safe))
                            (##fx= __tmp65563 __tmp65562))
                          (apply ##structure _klass64490_ _args64491_)
                          (let ((__tmp65561
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass64490_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass64490_
                                   'slots:
                                   __tmp65561
                                   'args:
                                   _args64491_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj64487_ . _args64488_)
        (if (let ((__tmp65567 (length _args64488_))
                  (__tmp65566
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj64487_))))
              (declare (not safe))
              (##fx< __tmp65567 __tmp65566))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj64487_ _args64488_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj64487_
                     'args:
                     _args64488_)))))
    (define __struct-instance-init!
      (lambda (_obj64446_ _args64447_)
        (let _lp64449_ ((_k64451_ '1) (_rest64452_ _args64447_))
          (let* ((_rest6445364461_ _rest64452_)
                 (_else6445564469_ (lambda () _obj64446_))
                 (_K6445764475_
                  (lambda (_rest64472_ _hd64473_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj64446_ _k64451_ _hd64473_))
                    (let ((__tmp65568
                           (let () (declare (not safe)) (##fx+ _k64451_ '1))))
                      (declare (not safe))
                      (_lp64449_ __tmp65568 _rest64472_)))))
            (if (let () (declare (not safe)) (##pair? _rest6445364461_))
                (let ((_hd6445864478_
                       (let () (declare (not safe)) (##car _rest6445364461_)))
                      (_tl6445964480_
                       (let () (declare (not safe)) (##cdr _rest6445364461_))))
                  (let* ((_hd64483_ _hd6445864478_)
                         (_rest64485_ _tl6445964480_))
                    (declare (not safe))
                    (_K6445764475_ _rest64485_ _hd64483_)))
                (let () (declare (not safe)) (_else6445564469_)))))))
    (define class-instance-init!
      (lambda (_obj64443_ . _args64444_)
        (let ((__tmp65569 (object-type _obj64443_)))
          (declare (not safe))
          (__class-instance-init! __tmp65569 _obj64443_ _args64444_))))
    (define __class-instance-init!
      (lambda (_klass64387_ _obj64388_ _args64389_)
        (let _lp64391_ ((_rest64393_ _args64389_))
          (let* ((_rest6439464404_ _rest64393_)
                 (_else6439664412_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest64393_))
                        _obj64388_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass64387_
                                 'rest:
                                 _rest64393_)))))
                 (_K6439864424_
                  (lambda (_rest64415_ _val64416_ _key64417_)
                    (let ((_$e64419_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass64387_ _key64417_))))
                      (if _$e64419_
                          ((lambda (_off64422_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj64388_
                                _off64422_
                                _val64416_))
                             (let ()
                               (declare (not safe))
                               (_lp64391_ _rest64415_)))
                           _$e64419_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass64387_
                                   'slot:
                                   _key64417_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6439464404_))
                (let ((_hd6439964427_
                       (let () (declare (not safe)) (##car _rest6439464404_)))
                      (_tl6440064429_
                       (let () (declare (not safe)) (##cdr _rest6439464404_))))
                  (let ((_key64432_ _hd6439964427_))
                    (if (let () (declare (not safe)) (##pair? _tl6440064429_))
                        (let ((_hd6440164434_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6440064429_)))
                              (_tl6440264436_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6440064429_))))
                          (let* ((_val64439_ _hd6440164434_)
                                 (_rest64441_ _tl6440264436_))
                            (declare (not safe))
                            (_K6439864424_ _rest64441_ _val64439_ _key64432_)))
                        (let () (declare (not safe)) (_else6439664412_)))))
                (let () (declare (not safe)) (_else6439664412_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass64383_ _obj64384_ _args64385_)
        (apply call-method
               _klass64383_
               'instance-init!
               _obj64384_
               _args64385_)))
    (define constructor-init!
      (lambda (_klass64378_ _kons-id64379_ _obj64380_ . _args64381_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass64378_
           _kons-id64379_
           _obj64380_
           _args64381_))))
    (define __constructor-init!
      (lambda (_klass64368_ _kons-id64369_ _obj64370_ _args64371_)
        (let ((_$e64373_
               (let ()
                 (declare (not safe))
                 (__find-method _klass64368_ _obj64370_ _kons-id64369_))))
          (if _$e64373_
              ((lambda (_kons64376_)
                 (apply _kons64376_ _obj64370_ _args64371_)
                 _obj64370_)
               _$e64373_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass64368_
                       'method:
                       _kons-id64369_))))))
    (define struct-copy
      (lambda (_struct64366_)
        (if (let () (declare (not safe)) (##structure? _struct64366_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct64366_)))
        (let () (declare (not safe)) (##structure-copy _struct64366_))))
    (define struct->list
      (lambda (_obj64364_)
        (if (object? _obj64364_)
            (let () (declare (not safe)) (##vector->list _obj64364_))
            (let ()
              (declare (not safe))
              (error '"not a structure" _obj64364_)))))
    (define class->list
      (lambda (_obj64351_)
        (if (object? _obj64351_)
            (let ((_klass64353_ (object-type _obj64351_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass64353_ 'gerbil#class::t))
                  (let ((_slot-vector64355_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass64353_
                            '7
                            class::t
                            '#f))))
                    (let _loop64357_ ((_index64359_
                                       (let ((__tmp65575
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector64355_))))
                                         (declare (not safe))
                                         (##fx- __tmp65575 '1)))
                                      (_plist64360_ '()))
                      (if (let () (declare (not safe)) (##fx< _index64359_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass64353_ _plist64360_))
                          (let ((_slot64362_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector64355_
                                    _index64359_))))
                            (let ((__tmp65574
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index64359_ '1)))
                                  (__tmp65570
                                   (let ((__tmp65573
                                          (let ()
                                            (declare (not safe))
                                            (symbol->keyword _slot64362_)))
                                         (__tmp65571
                                          (let ((__tmp65572
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj64351_
                                                    _index64359_))))
                                            (declare (not safe))
                                            (cons __tmp65572 _plist64360_))))
                                     (declare (not safe))
                                     (cons __tmp65573 __tmp65571))))
                              (declare (not safe))
                              (_loop64357_ __tmp65574 __tmp65570))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj64351_
                           'class:
                           _klass64353_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj64351_)))))
    (define call-method
      (lambda (_obj64342_ _id64343_ . _args64344_)
        (let ((_$e64346_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64342_ _id64343_))))
          (if _$e64346_
              ((lambda (_method64349_)
                 (apply _method64349_ _obj64342_ _args64344_))
               _$e64346_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj64342_
                       'method:
                       _id64343_))))))
    (define method-ref
      (lambda (_obj64339_ _id64340_)
        (let ((__tmp65576 (let () (declare (not safe)) (class-of _obj64339_))))
          (declare (not safe))
          (find-method __tmp65576 _obj64339_ _id64340_))))
    (define checked-method-ref
      (lambda (_obj64333_ _id64334_)
        (let ((_$e64336_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64333_ _id64334_))))
          (if _$e64336_
              _$e64336_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj64333_
                       'method:
                       _id64334_))))))
    (define bound-method-ref
      (lambda (_obj64323_ _id64324_)
        (let ((_$e64326_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64323_ _id64324_))))
          (if _$e64326_
              ((lambda (_method64329_)
                 (lambda _args64331_
                   (apply _method64329_ _obj64323_ _args64331_)))
               _$e64326_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj64316_ _id64317_)
        (let ((_method64319_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj64316_ _id64317_))))
          (lambda _args64321_ (apply _method64319_ _obj64316_ _args64321_)))))
    (define find-method
      (lambda (_klass64312_ _obj64313_ _id64314_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64312_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass64312_ _obj64313_ _id64314_))
            (if (let () (declare (not safe)) (##type? _klass64312_))
                (let ((__tmp65577
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64312_))))
                  (declare (not safe))
                  (__find-method __tmp65577 _obj64313_ _id64314_))
                (let ()
                  (declare (not safe))
                  (error '"bad class; must be a class-type or builtin type"
                         'class:
                         _klass64312_
                         'method:
                         _id64314_))))))
    (define __find-method
      (lambda (_klass64305_ _obj64306_ _id64307_)
        (let ((_$e64309_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass64305_ _obj64306_ _id64307_))))
          (if _$e64309_
              _$e64309_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass64305_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass64305_ _obj64306_ _id64307_)))))))
    (define mixin-find-method
      (lambda (_mixins64297_ _obj64298_ _id64299_)
        (let ((__tmp65578
               (lambda (_g6430064302_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6430064302_ _obj64298_ _id64299_)))))
          (declare (not safe))
          (ormap1 __tmp65578 _mixins64297_))))
    (define direct-method-ref
      (lambda (_klass64274_ _obj64275_ _id64276_)
        (letrec ((_metaclass-resolve-method64278_
                  (lambda ()
                    (let ((__method65459
                           (let ()
                             (declare (not safe))
                             (method-ref _klass64274_ 'direct-method-ref))))
                      (if __method65459
                          (__method65459 _klass64274_ _obj64275_ _id64276_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass64274_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!64279_
                  (lambda ()
                    (let ((_method64294_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method64278_))))
                      (let ((__tmp65580
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64274_
                                '11
                                class::t
                                '#f)))
                            (__tmp65579 (if _method64294_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp65580 _id64276_ __tmp65579))
                      _method64294_))))
          (let ((_$e64281_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass64274_ '11 class::t '#f))))
            (if _$e64281_
                ((lambda (_ht64284_)
                   (let ((_method64286_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht64284_ _id64276_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method64286_))
                         _method64286_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass64274_))
                             (let ((_$e64288_ _method64286_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e64288_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method64278_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e64288_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!64279_)))))
                             '#f))))
                 _$e64281_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass64274_))
                    (let ((_tab64291_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64274_
                         _tab64291_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!64279_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass64270_ _obj64271_ _id64272_)
        (let ((__tmp65581 (##structure-ref _klass64270_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp65581 _obj64271_ _id64272_))))
    (define bind-method!__%
      (lambda (_klass64243_ _id64244_ _proc64245_ _rebind?64246_)
        (letrec ((_bind!64248_
                  (lambda (_ht64254_)
                    (if (and (let () (declare (not safe)) (not _rebind?64246_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht64254_ _id64244_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass64243_
                                 'method:
                                 _id64244_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht64254_
                           _id64244_
                           _proc64245_))))))
          (if (let () (declare (not safe)) (procedure? _proc64245_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc64245_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass64243_ 'gerbil#class::t))
              (let ((_ht64250_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass64243_
                        '11
                        class::t
                        '#f))))
                (if _ht64250_
                    (let () (declare (not safe)) (_bind!64248_ _ht64250_))
                    (let ((_ht64252_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64243_
                         _ht64252_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!64248_ _ht64252_)))))
              (if (let () (declare (not safe)) (##type? _klass64243_))
                  (let ((__tmp65582
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass64243_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp65582
                     _id64244_
                     _proc64245_
                     _rebind?64246_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass64243_)))))))
    (define bind-method!__0
      (lambda (_klass64259_ _id64260_ _proc64261_)
        (let ((_rebind?64263_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass64259_
           _id64260_
           _proc64261_
           _rebind?64263_))))
    (define bind-method!
      (lambda _g65584_
        (let ((_g65583_ (let () (declare (not safe)) (##length _g65584_))))
          (cond ((let () (declare (not safe)) (##fx= _g65583_ 3))
                 (apply (lambda (_klass64259_ _id64260_ _proc64261_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass64259_
                             _id64260_
                             _proc64261_)))
                        _g65584_))
                ((let () (declare (not safe)) (##fx= _g65583_ 4))
                 (apply (lambda (_klass64265_
                                 _id64266_
                                 _proc64267_
                                 _rebind?64268_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass64265_
                             _id64266_
                             _proc64267_
                             _rebind?64268_)))
                        _g65584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g65584_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint64223_ _seed64225_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64223_
           procedure-hash
           eq?
           _seed64225_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint64231_ '#f) (_seed64233_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64231_ _seed64233_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint64235_)
        (let ((_seed64237_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64235_ _seed64237_))))
    (define make-method-specializer-table
      (lambda _g65586_
        (let ((_g65585_ (let () (declare (not safe)) (##length _g65586_))))
          (cond ((let () (declare (not safe)) (##fx= _g65585_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g65586_))
                ((let () (declare (not safe)) (##fx= _g65585_ 1))
                 (apply (lambda (_size-hint64235_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint64235_)))
                        _g65586_))
                ((let () (declare (not safe)) (##fx= _g65585_ 2))
                 (apply (lambda (_size-hint64239_ _seed64240_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint64239_
                             _seed64240_)))
                        _g65586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g65586_))))))
    (define method-specializer-table-ref
      (lambda (_tab64180_ _key64181_ _default64182_)
        (let ((_table64184_
               (let () (declare (not safe)) (&raw-table-table _tab64180_)))
              (_seed64185_
               (let () (declare (not safe)) (&raw-table-seed _tab64180_))))
          (let* ((_h64187_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64181_))
                         _seed64185_))
                 (_size64190_ (vector-length _table64184_))
                 (_entries64193_ (fxquotient _size64190_ '2))
                 (_start64196_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64187_ _entries64193_)
                   '1)))
            (let _loop64200_ ((_probe64203_ _start64196_)
                              (_i64205_ '1)
                              (_deleted64207_ '#f))
              (let ((_k64210_ (vector-ref _table64184_ _probe64203_)))
                (if (let ((__tmp65593 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64210_ __tmp65593))
                    _default64182_
                    (if (let ((__tmp65592 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64210_ __tmp65592))
                        (let ((__tmp65591
                               (let ((_next-probe64213_
                                      (fx+ _start64196_
                                           _i64205_
                                           (fx* _i64205_ _i64205_))))
                                 (fxmodulo _next-probe64213_ _size64190_)))
                              (__tmp65590 (fx+ _i64205_ '1))
                              (__tmp65589
                               (let ((_$e64216_ _deleted64207_))
                                 (if _$e64216_ _$e64216_ _probe64203_))))
                          (declare (not safe))
                          (_loop64200_ __tmp65591 __tmp65590 __tmp65589))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64181_ _k64210_))
                            (vector-ref _table64184_ (fx+ _probe64203_ '1))
                            (let ((__tmp65588
                                   (let ((_next-probe64219_
                                          (fx+ _start64196_
                                               _i64205_
                                               (fx* _i64205_ _i64205_))))
                                     (fxmodulo _next-probe64219_ _size64190_)))
                                  (__tmp65587 (fx+ _i64205_ '1)))
                              (declare (not safe))
                              (_loop64200_
                               __tmp65588
                               __tmp65587
                               _deleted64207_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab64176_ _key64177_ _value64178_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64176_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64176_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64176_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab64176_
           _key64177_
           _value64178_))))
    (define __method-specializer-table-set!
      (lambda (_tab64131_ _key64132_ _value64133_)
        (let ((_table64136_
               (let () (declare (not safe)) (&raw-table-table _tab64131_)))
              (_seed64137_
               (let () (declare (not safe)) (&raw-table-seed _tab64131_))))
          (let* ((_h64139_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64132_))
                         _seed64137_))
                 (_size64142_ (vector-length _table64136_))
                 (_entries64145_ (fxquotient _size64142_ '2))
                 (_start64148_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64139_ _entries64145_)
                   '1)))
            (let _loop64152_ ((_probe64155_ _start64148_)
                              (_i64157_ '1)
                              (_deleted64159_ '#f))
              (let ((_k64162_ (vector-ref _table64136_ _probe64155_)))
                (if (let ((__tmp65603 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64162_ __tmp65603))
                    (if _deleted64159_
                        (begin
                          (vector-set! _table64136_ _deleted64159_ _key64132_)
                          (vector-set!
                           _table64136_
                           (fx+ _deleted64159_ '1)
                           _value64133_)
                          ((lambda ()
                             (let ((__tmp65602
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64131_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64131_
                                __tmp65602)))))
                        (begin
                          (vector-set! _table64136_ _probe64155_ _key64132_)
                          (vector-set!
                           _table64136_
                           (fx+ _probe64155_ '1)
                           _value64133_)
                          ((lambda ()
                             (let ((__tmp65600
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64131_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64131_ __tmp65600))
                             (let ((__tmp65601
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64131_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64131_
                                __tmp65601))))))
                    (if (let ((__tmp65599 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64162_ __tmp65599))
                        (let ((__tmp65598
                               (let ((_next-probe64167_
                                      (fx+ _start64148_
                                           _i64157_
                                           (fx* _i64157_ _i64157_))))
                                 (fxmodulo _next-probe64167_ _size64142_)))
                              (__tmp65597 (fx+ _i64157_ '1))
                              (__tmp65596
                               (let ((_$e64170_ _deleted64159_))
                                 (if _$e64170_ _$e64170_ _probe64155_))))
                          (declare (not safe))
                          (_loop64152_ __tmp65598 __tmp65597 __tmp65596))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64132_ _k64162_))
                            (begin
                              (vector-set!
                               _table64136_
                               _probe64155_
                               _key64132_)
                              (vector-set!
                               _table64136_
                               (fx+ _probe64155_ '1)
                               _value64133_))
                            (let ((__tmp65595
                                   (let ((_next-probe64173_
                                          (fx+ _start64148_
                                               _i64157_
                                               (fx* _i64157_ _i64157_))))
                                     (fxmodulo _next-probe64173_ _size64142_)))
                                  (__tmp65594 (fx+ _i64157_ '1)))
                              (declare (not safe))
                              (_loop64152_
                               __tmp65595
                               __tmp65594
                               _deleted64159_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab64126_
               _key64127_
               _method-specializer-table-update!64128_
               _default64129_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64126_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64126_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64126_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab64126_
           _key64127_
           _method-specializer-table-update!64128_
           _default64129_))))
    (define __method-specializer-table-update!
      (lambda (_tab64080_
               _key64081_
               _method-specializer-table-update!64082_
               _default64083_)
        (let ((_table64086_
               (let () (declare (not safe)) (&raw-table-table _tab64080_)))
              (_seed64087_
               (let () (declare (not safe)) (&raw-table-seed _tab64080_))))
          (let* ((_h64089_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64081_))
                         _seed64087_))
                 (_size64092_ (vector-length _table64086_))
                 (_entries64095_ (fxquotient _size64092_ '2))
                 (_start64098_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64089_ _entries64095_)
                   '1)))
            (let _loop64102_ ((_probe64105_ _start64098_)
                              (_i64107_ '1)
                              (_deleted64109_ '#f))
              (let ((_k64112_ (vector-ref _table64086_ _probe64105_)))
                (if (let ((__tmp65613 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64112_ __tmp65613))
                    (if _deleted64109_
                        (begin
                          (vector-set! _table64086_ _deleted64109_ _key64081_)
                          (vector-set!
                           _table64086_
                           (fx+ _deleted64109_ '1)
                           (_method-specializer-table-update!64082_
                            _default64083_))
                          ((lambda ()
                             (let ((__tmp65612
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64080_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64080_
                                __tmp65612)))))
                        (begin
                          (vector-set! _table64086_ _probe64105_ _key64081_)
                          (vector-set!
                           _table64086_
                           (fx+ _probe64105_ '1)
                           (_method-specializer-table-update!64082_
                            _default64083_))
                          ((lambda ()
                             (let ((__tmp65610
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64080_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64080_ __tmp65610))
                             (let ((__tmp65611
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64080_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64080_
                                __tmp65611))))))
                    (if (let ((__tmp65609 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64112_ __tmp65609))
                        (let ((__tmp65608
                               (let ((_next-probe64117_
                                      (fx+ _start64098_
                                           _i64107_
                                           (fx* _i64107_ _i64107_))))
                                 (fxmodulo _next-probe64117_ _size64092_)))
                              (__tmp65607 (fx+ _i64107_ '1))
                              (__tmp65606
                               (let ((_$e64120_ _deleted64109_))
                                 (if _$e64120_ _$e64120_ _probe64105_))))
                          (declare (not safe))
                          (_loop64102_ __tmp65608 __tmp65607 __tmp65606))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64081_ _k64112_))
                            (begin
                              (vector-set!
                               _table64086_
                               _probe64105_
                               _key64081_)
                              (vector-set!
                               _table64086_
                               (fx+ _probe64105_ '1)
                               (_method-specializer-table-update!64082_
                                (vector-ref
                                 _table64086_
                                 (fx+ _probe64105_ '1)))))
                            (let ((__tmp65605
                                   (let ((_next-probe64123_
                                          (fx+ _start64098_
                                               _i64107_
                                               (fx* _i64107_ _i64107_))))
                                     (fxmodulo _next-probe64123_ _size64092_)))
                                  (__tmp65604 (fx+ _i64107_ '1)))
                              (declare (not safe))
                              (_loop64102_
                               __tmp65605
                               __tmp65604
                               _deleted64109_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab64039_ _key64041_)
        (let ((_table64044_
               (let () (declare (not safe)) (&raw-table-table _tab64039_)))
              (_seed64046_
               (let () (declare (not safe)) (&raw-table-seed _tab64039_))))
          (let* ((_h64049_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64041_))
                         _seed64046_))
                 (_size64052_ (vector-length _table64044_))
                 (_entries64055_ (fxquotient _size64052_ '2))
                 (_start64058_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64049_ _entries64055_)
                   '1)))
            (let _loop64062_ ((_probe64065_ _start64058_) (_i64067_ '1))
              (let ((_k64070_ (vector-ref _table64044_ _probe64065_)))
                (if (let ((__tmp65620 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64070_ __tmp65620))
                    '#!void
                    (if (let ((__tmp65619 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64070_ __tmp65619))
                        (let ((__tmp65618
                               (let ((_next-probe64073_
                                      (fx+ _start64058_
                                           _i64067_
                                           (fx* _i64067_ _i64067_))))
                                 (fxmodulo _next-probe64073_ _size64052_)))
                              (__tmp65617 (fx+ _i64067_ '1)))
                          (declare (not safe))
                          (_loop64062_ __tmp65618 __tmp65617))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64041_ _k64070_))
                            (begin
                              (vector-set!
                               _table64044_
                               _probe64065_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64044_
                               (fx+ _probe64065_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65616
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64039_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64039_
                                    __tmp65616)))))
                            (let ((__tmp65615
                                   (let ((_next-probe64077_
                                          (fx+ _start64058_
                                               _i64067_
                                               (fx* _i64067_ _i64067_))))
                                     (fxmodulo _next-probe64077_ _size64052_)))
                                  (__tmp65614 (fx+ _i64067_ '1)))
                              (declare (not safe))
                              (_loop64062_ __tmp65615 __tmp65614)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc64030_ _specializer64031_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64035_ ()
            (if (let ((__tmp65621
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65621 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64035_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc64030_
           _specializer64031_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc64020_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64024_ ()
            (if (let ((__tmp65622
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65622 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64024_))))))
        (let ((_specializer64028_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc64020_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer64028_)))
    (define __class-specializer-hash-key
      (lambda (_klass64018_)
        (let ((__tmp65623
               (let () (declare (not safe)) (##type-id _klass64018_))))
          (declare (not safe))
          (symbolic-hash __tmp65623))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63999_ _seed64001_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63999_
           __class-specializer-hash-key
           eq?
           _seed64001_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint64007_ '#f) (_seed64009_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64007_ _seed64009_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint64011_)
        (let ((_seed64013_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64011_ _seed64013_))))
    (define make-class-specializer-table
      (lambda _g65625_
        (let ((_g65624_ (let () (declare (not safe)) (##length _g65625_))))
          (cond ((let () (declare (not safe)) (##fx= _g65624_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g65625_))
                ((let () (declare (not safe)) (##fx= _g65624_ 1))
                 (apply (lambda (_size-hint64011_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint64011_)))
                        _g65625_))
                ((let () (declare (not safe)) (##fx= _g65624_ 2))
                 (apply (lambda (_size-hint64015_ _seed64016_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint64015_
                             _seed64016_)))
                        _g65625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g65625_))))))
    (define class-specializer-table-ref
      (lambda (_tab63956_ _key63957_ _default63958_)
        (let ((_table63960_
               (let () (declare (not safe)) (&raw-table-table _tab63956_)))
              (_seed63961_
               (let () (declare (not safe)) (&raw-table-seed _tab63956_))))
          (let* ((_h63963_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63957_))
                         _seed63961_))
                 (_size63966_ (vector-length _table63960_))
                 (_entries63969_ (fxquotient _size63966_ '2))
                 (_start63972_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63963_ _entries63969_)
                   '1)))
            (let _loop63976_ ((_probe63979_ _start63972_)
                              (_i63981_ '1)
                              (_deleted63983_ '#f))
              (let ((_k63986_ (vector-ref _table63960_ _probe63979_)))
                (if (let ((__tmp65632 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63986_ __tmp65632))
                    _default63958_
                    (if (let ((__tmp65631 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63986_ __tmp65631))
                        (let ((__tmp65630
                               (let ((_next-probe63989_
                                      (fx+ _start63972_
                                           _i63981_
                                           (fx* _i63981_ _i63981_))))
                                 (fxmodulo _next-probe63989_ _size63966_)))
                              (__tmp65629 (fx+ _i63981_ '1))
                              (__tmp65628
                               (let ((_$e63992_ _deleted63983_))
                                 (if _$e63992_ _$e63992_ _probe63979_))))
                          (declare (not safe))
                          (_loop63976_ __tmp65630 __tmp65629 __tmp65628))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63957_ _k63986_))
                            (vector-ref _table63960_ (fx+ _probe63979_ '1))
                            (let ((__tmp65627
                                   (let ((_next-probe63995_
                                          (fx+ _start63972_
                                               _i63981_
                                               (fx* _i63981_ _i63981_))))
                                     (fxmodulo _next-probe63995_ _size63966_)))
                                  (__tmp65626 (fx+ _i63981_ '1)))
                              (declare (not safe))
                              (_loop63976_
                               __tmp65627
                               __tmp65626
                               _deleted63983_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63952_ _key63953_ _value63954_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63952_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63952_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63952_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63952_
           _key63953_
           _value63954_))))
    (define __class-specializer-table-set!
      (lambda (_tab63907_ _key63908_ _value63909_)
        (let ((_table63912_
               (let () (declare (not safe)) (&raw-table-table _tab63907_)))
              (_seed63913_
               (let () (declare (not safe)) (&raw-table-seed _tab63907_))))
          (let* ((_h63915_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63908_))
                         _seed63913_))
                 (_size63918_ (vector-length _table63912_))
                 (_entries63921_ (fxquotient _size63918_ '2))
                 (_start63924_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63915_ _entries63921_)
                   '1)))
            (let _loop63928_ ((_probe63931_ _start63924_)
                              (_i63933_ '1)
                              (_deleted63935_ '#f))
              (let ((_k63938_ (vector-ref _table63912_ _probe63931_)))
                (if (let ((__tmp65642 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63938_ __tmp65642))
                    (if _deleted63935_
                        (begin
                          (vector-set! _table63912_ _deleted63935_ _key63908_)
                          (vector-set!
                           _table63912_
                           (fx+ _deleted63935_ '1)
                           _value63909_)
                          ((lambda ()
                             (let ((__tmp65641
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63907_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63907_
                                __tmp65641)))))
                        (begin
                          (vector-set! _table63912_ _probe63931_ _key63908_)
                          (vector-set!
                           _table63912_
                           (fx+ _probe63931_ '1)
                           _value63909_)
                          ((lambda ()
                             (let ((__tmp65639
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63907_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63907_ __tmp65639))
                             (let ((__tmp65640
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63907_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63907_
                                __tmp65640))))))
                    (if (let ((__tmp65638 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63938_ __tmp65638))
                        (let ((__tmp65637
                               (let ((_next-probe63943_
                                      (fx+ _start63924_
                                           _i63933_
                                           (fx* _i63933_ _i63933_))))
                                 (fxmodulo _next-probe63943_ _size63918_)))
                              (__tmp65636 (fx+ _i63933_ '1))
                              (__tmp65635
                               (let ((_$e63946_ _deleted63935_))
                                 (if _$e63946_ _$e63946_ _probe63931_))))
                          (declare (not safe))
                          (_loop63928_ __tmp65637 __tmp65636 __tmp65635))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63908_ _k63938_))
                            (begin
                              (vector-set!
                               _table63912_
                               _probe63931_
                               _key63908_)
                              (vector-set!
                               _table63912_
                               (fx+ _probe63931_ '1)
                               _value63909_))
                            (let ((__tmp65634
                                   (let ((_next-probe63949_
                                          (fx+ _start63924_
                                               _i63933_
                                               (fx* _i63933_ _i63933_))))
                                     (fxmodulo _next-probe63949_ _size63918_)))
                                  (__tmp65633 (fx+ _i63933_ '1)))
                              (declare (not safe))
                              (_loop63928_
                               __tmp65634
                               __tmp65633
                               _deleted63935_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63902_
               _key63903_
               _class-specializer-table-update!63904_
               _default63905_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63902_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63902_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63902_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63902_
           _key63903_
           _class-specializer-table-update!63904_
           _default63905_))))
    (define __class-specializer-table-update!
      (lambda (_tab63856_
               _key63857_
               _class-specializer-table-update!63858_
               _default63859_)
        (let ((_table63862_
               (let () (declare (not safe)) (&raw-table-table _tab63856_)))
              (_seed63863_
               (let () (declare (not safe)) (&raw-table-seed _tab63856_))))
          (let* ((_h63865_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63857_))
                         _seed63863_))
                 (_size63868_ (vector-length _table63862_))
                 (_entries63871_ (fxquotient _size63868_ '2))
                 (_start63874_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63865_ _entries63871_)
                   '1)))
            (let _loop63878_ ((_probe63881_ _start63874_)
                              (_i63883_ '1)
                              (_deleted63885_ '#f))
              (let ((_k63888_ (vector-ref _table63862_ _probe63881_)))
                (if (let ((__tmp65652 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63888_ __tmp65652))
                    (if _deleted63885_
                        (begin
                          (vector-set! _table63862_ _deleted63885_ _key63857_)
                          (vector-set!
                           _table63862_
                           (fx+ _deleted63885_ '1)
                           (_class-specializer-table-update!63858_
                            _default63859_))
                          ((lambda ()
                             (let ((__tmp65651
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63856_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63856_
                                __tmp65651)))))
                        (begin
                          (vector-set! _table63862_ _probe63881_ _key63857_)
                          (vector-set!
                           _table63862_
                           (fx+ _probe63881_ '1)
                           (_class-specializer-table-update!63858_
                            _default63859_))
                          ((lambda ()
                             (let ((__tmp65649
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63856_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63856_ __tmp65649))
                             (let ((__tmp65650
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63856_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63856_
                                __tmp65650))))))
                    (if (let ((__tmp65648 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63888_ __tmp65648))
                        (let ((__tmp65647
                               (let ((_next-probe63893_
                                      (fx+ _start63874_
                                           _i63883_
                                           (fx* _i63883_ _i63883_))))
                                 (fxmodulo _next-probe63893_ _size63868_)))
                              (__tmp65646 (fx+ _i63883_ '1))
                              (__tmp65645
                               (let ((_$e63896_ _deleted63885_))
                                 (if _$e63896_ _$e63896_ _probe63881_))))
                          (declare (not safe))
                          (_loop63878_ __tmp65647 __tmp65646 __tmp65645))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63857_ _k63888_))
                            (begin
                              (vector-set!
                               _table63862_
                               _probe63881_
                               _key63857_)
                              (vector-set!
                               _table63862_
                               (fx+ _probe63881_ '1)
                               (_class-specializer-table-update!63858_
                                (vector-ref
                                 _table63862_
                                 (fx+ _probe63881_ '1)))))
                            (let ((__tmp65644
                                   (let ((_next-probe63899_
                                          (fx+ _start63874_
                                               _i63883_
                                               (fx* _i63883_ _i63883_))))
                                     (fxmodulo _next-probe63899_ _size63868_)))
                                  (__tmp65643 (fx+ _i63883_ '1)))
                              (declare (not safe))
                              (_loop63878_
                               __tmp65644
                               __tmp65643
                               _deleted63885_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab63815_ _key63817_)
        (let ((_table63820_
               (let () (declare (not safe)) (&raw-table-table _tab63815_)))
              (_seed63822_
               (let () (declare (not safe)) (&raw-table-seed _tab63815_))))
          (let* ((_h63825_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63817_))
                         _seed63822_))
                 (_size63828_ (vector-length _table63820_))
                 (_entries63831_ (fxquotient _size63828_ '2))
                 (_start63834_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63825_ _entries63831_)
                   '1)))
            (let _loop63838_ ((_probe63841_ _start63834_) (_i63843_ '1))
              (let ((_k63846_ (vector-ref _table63820_ _probe63841_)))
                (if (let ((__tmp65659 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63846_ __tmp65659))
                    '#!void
                    (if (let ((__tmp65658 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63846_ __tmp65658))
                        (let ((__tmp65657
                               (let ((_next-probe63849_
                                      (fx+ _start63834_
                                           _i63843_
                                           (fx* _i63843_ _i63843_))))
                                 (fxmodulo _next-probe63849_ _size63828_)))
                              (__tmp65656 (fx+ _i63843_ '1)))
                          (declare (not safe))
                          (_loop63838_ __tmp65657 __tmp65656))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63817_ _k63846_))
                            (begin
                              (vector-set!
                               _table63820_
                               _probe63841_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63820_
                               (fx+ _probe63841_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65655
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63815_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63815_
                                    __tmp65655)))))
                            (let ((__tmp65654
                                   (let ((_next-probe63853_
                                          (fx+ _start63834_
                                               _i63843_
                                               (fx* _i63843_ _i63843_))))
                                     (fxmodulo _next-probe63853_ _size63828_)))
                                  (__tmp65653 (fx+ _i63843_ '1)))
                              (declare (not safe))
                              (_loop63838_ __tmp65654 __tmp65653)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass63808_)
        (let ((_$e63810_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass63808_))))
          (if _$e63810_
              _$e63810_
              (let ((_method-table63813_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass63808_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass63808_ _method-table63813_))
                _method-table63813_)))))
    (define __lookup-class-specializer
      (lambda (_klass63798_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63802_ ()
            (if (let ((__tmp65660
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65660 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63802_))))))
        (let ((_method-table63806_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass63798_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table63806_)))
    (define __bind-class-specializer!
      (lambda (_klass63789_ _method-table63790_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63794_ ()
            (if (let ((__tmp65661
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65661 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63794_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass63789_
           _method-table63790_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass63774_ _method-table63775_ _method63776_ _proc63777_)
        (let ((_$e63779_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table63775_ _method63776_ '#f))))
          (if _$e63779_
              _$e63779_
              (let ((_$e63782_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc63777_))))
                (if _$e63782_
                    ((lambda (_specialize63785_)
                       (let ((_specialized-proc63787_
                              (_specialize63785_
                               _klass63774_
                               _method-table63775_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table63775_
                          _method63776_
                          _specialized-proc63787_)))
                     _$e63782_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table63775_
                       _method63776_
                       _proc63777_))))))))
    (define __specialize-class
      (lambda (_klass63720_)
        (if (let ((__tmp65665
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass63720_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp65665))
            (if (let () (declare (not safe)) (##type? _klass63720_))
                (let ((__tmp65664
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass63720_))))
                  (declare (not safe))
                  (__specialize-class __tmp65664))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass63720_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass63720_))
                (let ((__method65460
                       (let ()
                         (declare (not safe))
                         (method-ref _klass63720_ 'specialize-class))))
                  (if __method65460
                      (__method65460 _klass63720_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass63720_
                               'specialize-class))))
                (if (let ((__tmp65663
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass63720_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp65663))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass63720_))
                    (let ((_method-table63722_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop63724_ ((_rest63726_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass63720_))))
                        (let* ((_rest6372763735_ _rest63726_)
                               (_else6372963743_
                                (lambda () _method-table63722_))
                               (_K6373163762_
                                (lambda (_rest63746_ _xklass63747_)
                                  (let ((_xmethod-table6374863750_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass63747_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6374863750_
                                        (let* ((_xmethod-table63753_
                                                _xmethod-table6374863750_)
                                               (__tmp65662
                                                (lambda (_g6375463757_
                                                         _g6375563759_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass63720_
                                                     _method-table63722_
                                                     _g6375463757_
                                                     _g6375563759_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table63753_
                                           __tmp65662))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop63724_ _rest63746_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6372763735_))
                              (let ((_hd6373263765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6372763735_)))
                                    (_tl6373363767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6372763735_))))
                                (let* ((_xklass63770_ _hd6373263765_)
                                       (_rest63772_ _tl6373363767_))
                                  (declare (not safe))
                                  (_K6373163762_ _rest63772_ _xklass63770_)))
                              (let ()
                                (declare (not safe))
                                (_else6372963743_)))))))))))
    (define seal-class!
      (lambda (_klass63716_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63716_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass63716_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass63716_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass63716_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass63716_))
                      (let ((__method65461
                             (let ()
                               (declare (not safe))
                               (method-ref _klass63716_ 'seal-class!))))
                        (if __method65461
                            (__method65461 _klass63716_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass63716_
                                     'seal-class!))))
                      (if (let ((__tmp65666
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass63716_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp65666))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass63716_))
                          (let ((_method-table63718_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass63716_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass63716_
                             _method-table63718_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass63716_))))
            '#!void)))
    (define next-method
      (lambda (_subklass63671_ _obj63672_ _id63673_)
        (letrec ((_find-next-method63675_
                  (lambda (_klass63677_)
                    (let _lp63679_ ((_rest63681_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass63677_))))
                      (let* ((_rest6368263690_ _rest63681_)
                             (_else6368463698_ (lambda () '#f))
                             (_K6368663704_
                              (lambda (_rest63701_ _klass63702_)
                                (if (let ((__tmp65668
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass63671_)))
                                          (__tmp65667
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass63702_))))
                                      (declare (not safe))
                                      (eq? __tmp65668 __tmp65667))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest63701_
                                       _obj63672_
                                       _id63673_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp63679_ _rest63701_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6368263690_))
                            (let ((_hd6368763707_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6368263690_)))
                                  (_tl6368863709_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6368263690_))))
                              (let* ((_klass63712_ _hd6368763707_)
                                     (_rest63714_ _tl6368863709_))
                                (declare (not safe))
                                (_K6368663704_ _rest63714_ _klass63712_)))
                            (let ()
                              (declare (not safe))
                              (_else6368463698_))))))))
          (let ((__tmp65669
                 (let () (declare (not safe)) (class-of _obj63672_))))
            (declare (not safe))
            (_find-next-method63675_ __tmp65669)))))
    (define call-next-method
      (lambda (_subklass63661_ _obj63662_ _id63663_ . _args63664_)
        (let ((_$e63666_
               (let ()
                 (declare (not safe))
                 (next-method _subklass63661_ _obj63662_ _id63663_))))
          (if _$e63666_
              ((lambda (_methodf63669_)
                 (apply _methodf63669_ _obj63662_ _args63664_))
               _$e63666_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj63662_
                       'method:
                       _id63663_))))))
    (define write-style (lambda (_we63659_) (macro-writeenv-style _we63659_)))
    (define write-object
      (lambda (_we63651_ _obj63652_)
        (let ((_$e63654_
               (let () (declare (not safe)) (method-ref _obj63652_ ':wr))))
          (if _$e63654_
              ((lambda (_method63657_) (_method63657_ _obj63652_ _we63651_))
               _$e63654_)
              (let ()
                (declare (not safe))
                (##default-wr _we63651_ _obj63652_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type63570_)
        (letrec ((_shadow-type-id63572_
                  (lambda (_type63649_)
                    (let ((__tmp65670
                           (let ()
                             (declare (not safe))
                             (##type-name _type63649_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp65670 '"::t"))))
                 (_shadow-type-name63573_
                  (lambda (_type63647_)
                    (let () (declare (not safe)) (##type-name _type63647_))))
                 (_make-shadow-class63574_
                  (lambda (_type63639_ _precedence-list63640_)
                    (let* ((_super63642_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list63640_))
                                (let ((__tmp65671
                                       (car _precedence-list63640_)))
                                  (declare (not safe))
                                  (cons __tmp65671 '()))
                                '()))
                           (_klass63644_
                            (let ((__tmp65679
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id63572_ _type63639_)))
                                  (__tmp65678
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type63639_)))
                                  (__tmp65672
                                   (let ((__tmp65677
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp65673
                                          (let ((__tmp65676
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp65674
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type63639_))
                                                     '()
                                                     (let ((__tmp65675
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp65675 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp65676 __tmp65674))))
                                     (declare (not safe))
                                     (cons __tmp65677 __tmp65673))))
                              (declare (not safe))
                              (make-class-type
                               __tmp65679
                               __tmp65678
                               _super63642_
                               '()
                               __tmp65672
                               '#f))))
                      (let ((__tmp65680
                             (let ()
                               (declare (not safe))
                               (##type-id _type63639_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp65680
                         _klass63644_))
                      _klass63644_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again63578_ ()
              (if (let ((__tmp65681
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp65681 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again63578_))))))
          (let ((_$e63582_
                 (let ((__tmp65682
                        (let () (declare (not safe)) (##type-id _type63570_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp65682 '#f))))
            (if _$e63582_
                ((lambda (_klass63585_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass63585_)
                 _$e63582_)
                (let _loop63587_ ((_super63589_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type63570_)))
                                  (_hierarchy63590_ '()))
                  (if (let () (declare (not safe)) (not _super63589_))
                      (let _loop63592_ ((_rest63594_ _hierarchy63590_)
                                        (_precedence-list63595_ '()))
                        (let* ((_rest6359663604_ _rest63594_)
                               (_else6359863614_
                                (lambda ()
                                  (let ((_klass63612_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class63574_
                                            _type63570_
                                            _precedence-list63595_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass63612_)))
                               (_K6360063627_
                                (lambda (_rest63617_ _type63618_)
                                  (let ((_$e63620_
                                         (let ((__tmp65685
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type63618_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp65685
                                            '#f))))
                                    (if _$e63620_
                                        ((lambda (_klass63623_)
                                           (let ((__tmp65687
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass63623_
                                                          _precedence-list63595_))))
                                             (declare (not safe))
                                             (_loop63592_
                                              _rest63617_
                                              __tmp65687)))
                                         _$e63620_)
                                        (let* ((_klass63625_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class63574_
                                                   _type63618_
                                                   _precedence-list63595_)))
                                               (__tmp65686
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass63625_
                                                        _precedence-list63595_))))
                                          (declare (not safe))
                                          (_loop63592_
                                           _rest63617_
                                           __tmp65686)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6359663604_))
                              (let ((_hd6360163630_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6359663604_)))
                                    (_tl6360263632_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6359663604_))))
                                (let* ((_type63635_ _hd6360163630_)
                                       (_rest63637_ _tl6360263632_))
                                  (declare (not safe))
                                  (_K6360063627_ _rest63637_ _type63635_)))
                              (let ()
                                (declare (not safe))
                                (_else6359863614_)))))
                      (let ((__tmp65684
                             (let ()
                               (declare (not safe))
                               (##type-super _super63589_)))
                            (__tmp65683
                             (let ()
                               (declare (not safe))
                               (cons _super63589_ _hierarchy63590_))))
                        (declare (not safe))
                        (_loop63587_ __tmp65684 __tmp65683)))))))))
    (define class-of
      (lambda (_obj63558_)
        (declare (not interrupts-enabled))
        (let ((_t63561_ (let () (declare (not safe)) (##type _obj63558_))))
          (if (fx= _t63561_ (macro-type-subtyped))
              (let ((_st63563_
                     (let () (declare (not safe)) (##subtype _obj63558_))))
                (if (fx= _st63563_ (macro-subtype-structure))
                    (let ((_klass63565_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj63558_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass63565_
                             'gerbil#class::t))
                          _klass63565_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass63565_))))
                    (if (fx= _st63563_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj63558_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e63567_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st63563_))))
                          (if _$e63567_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e63567_))
                              (let ()
                                (declare (not safe))
                                (error '"unknown class"
                                       'subtype:
                                       _st63563_
                                       'object:
                                       _obj63558_)))))))
              (if (fx= _t63561_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t63561_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj63558_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj63558_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj63558_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj63558_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj63558_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj63558_ '#!eof))
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'eof))
                                              (let ()
                                                (declare (not safe))
                                                (__system-class
                                                 'special))))))))))))))
    (define __subtype-id (make-vector '32 '#f))
    (vector-set! __subtype-id (macro-subtype-vector) 'vector)
    (vector-set! __subtype-id (macro-subtype-pair) 'pair)
    (vector-set! __subtype-id (macro-subtype-ratnum) 'ratnum)
    (vector-set! __subtype-id (macro-subtype-cpxnum) 'cpxnum)
    (vector-set! __subtype-id (macro-subtype-symbol) 'symbol)
    (vector-set! __subtype-id (macro-subtype-keyword) 'keyword)
    (vector-set! __subtype-id (macro-subtype-frame) 'frame)
    (vector-set! __subtype-id (macro-subtype-continuation) 'continuation)
    (vector-set! __subtype-id (macro-subtype-promise) 'promise)
    (vector-set! __subtype-id (macro-subtype-weak) 'weak)
    (vector-set! __subtype-id (macro-subtype-procedure) 'procedure)
    (vector-set! __subtype-id (macro-subtype-return) 'return)
    (vector-set! __subtype-id (macro-subtype-foreign) 'foreign)
    (vector-set! __subtype-id (macro-subtype-string) 'string)
    (vector-set! __subtype-id (macro-subtype-s8vector) 's8vector)
    (vector-set! __subtype-id (macro-subtype-u8vector) 'u8vector)
    (vector-set! __subtype-id (macro-subtype-s16vector) 's16vector)
    (vector-set! __subtype-id (macro-subtype-u16vector) 'u16vector)
    (vector-set! __subtype-id (macro-subtype-s32vector) 's32vector)
    (vector-set! __subtype-id (macro-subtype-u32vector) 'u32vector)
    (vector-set! __subtype-id (macro-subtype-f32vector) 'f32vector)
    (vector-set! __subtype-id (macro-subtype-s64vector) 's64vector)
    (vector-set! __subtype-id (macro-subtype-u64vector) 'u64vector)
    (vector-set! __subtype-id (macro-subtype-f64vector) 'f64vector)
    (vector-set! __subtype-id (macro-subtype-flonum) 'flonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_id63553_)
        (let ((_$e63555_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id63553_ '#f))))
          (if _$e63555_
              _$e63555_
              (let ()
                (declare (not safe))
                (error '"unknown system class" _id63553_))))))
    (define __make-system-class
      (lambda (_id63548_ _super63549_)
        (let ((_klass63551_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id63548_
                  _id63548_
                  _super63549_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id63548_ _klass63551_))
          _klass63551_)))))
