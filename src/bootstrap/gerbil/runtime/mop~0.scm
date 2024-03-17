(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710715074)
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
      (let* ((_slots65319_
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
             (_slot-vector65321_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots65319_))))
             (_slot-table65328_
              (let ((_slot-table65323_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot65325_ _field65326_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65323_
                      _slot65325_
                      _field65326_))
                   (let ((__tmp65469
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot65325_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65323_
                      __tmp65469
                      _field65326_)))
                 _slots65319_
                 (iota (length _slots65319_) '1))
                _slot-table65323_))
             (_flags65330_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields65336_
              (list->vector
               (apply append
                      (map (lambda (_g6533165333_) (list _g6533165333_ '5 '#f))
                           (drop _slots65319_ '5)))))
             (_properties65338_
              (let ((__tmp65472
                     (let ((__tmp65473
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots65319_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp65473)))
                    (__tmp65470
                     (let ((__tmp65471
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp65471 '()))))
                (declare (not safe))
                (cons __tmp65472 __tmp65470)))
             (_t65340_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags65330_
                 ##type-type
                 _fields65336_
                 '()
                 _slot-vector65321_
                 _slot-table65328_
                 _properties65338_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t65340_ _t65340_))
        _t65340_))
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags65315_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65316_ '((direct-slots:) (system: . #t)))
            (_slot-table65317_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           't
           _flags65315_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table65317_
           _properties65316_
           '#f
           '#f))))
    (let ((__tmp65474 (let () (declare (not safe)) (cons t::t '()))))
      (declare (not safe))
      (##unchecked-structure-set! class::t __tmp65474 '6 '#f '#f))
    (define class-type?
      (lambda (_obj65313_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj65313_ class::t.id))))
    (define class-type=?
      (lambda (_x65310_ _y65311_)
        (let ((__tmp65476 (##structure-ref _x65310_ '1 class::t '#f))
              (__tmp65475 (##structure-ref _y65311_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp65476 __tmp65475))))
    (define type-opaque?
      (lambda (_type65308_)
        (let ((__tmp65477
               (let ((__tmp65478
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65308_))))
                 (declare (not safe))
                 (##fxand __tmp65478 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp65477 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type65306_)
        (let ((__tmp65479
               (let ((__tmp65480
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65306_))))
                 (declare (not safe))
                 (##fxand __tmp65480 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65479 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type65304_)
        (let ((__tmp65481
               (let ((__tmp65482
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65304_))))
                 (declare (not safe))
                 (##fxand __tmp65482 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65481 '0))))
    (define class-type-struct?
      (lambda (_klass65302_)
        (let ((__tmp65483
               (let ((__tmp65484
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65302_))))
                 (declare (not safe))
                 (##fxand __tmp65484 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp65483 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass65300_)
        (let ((__tmp65485
               (let ((__tmp65486
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65300_))))
                 (declare (not safe))
                 (##fxand __tmp65486 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp65485 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass65298_)
        (let ((__tmp65487
               (let ((__tmp65488
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65298_))))
                 (declare (not safe))
                 (##fxand __tmp65488 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp65487 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass65296_)
        (let ((__tmp65489
               (let ((__tmp65490
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65296_))))
                 (declare (not safe))
                 (##fxand __tmp65490 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp65489 class-type-flag-system))))
    (define properties-form
      (lambda (_properties65262_)
        (map (lambda (_e6526365265_)
               (let* ((_g6526765274_ _e6526365265_)
                      (_E6526965278_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6526765274_))))
                      (_K6527065284_
                       (lambda (_val65281_ _key65282_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key65282_ 'direct-supers:))
                             (let ((__tmp65491 (map class-type-id _val65281_)))
                               (declare (not safe))
                               (cons _key65282_ __tmp65491))
                             (let ()
                               (declare (not safe))
                               (cons _key65282_ _val65281_))))))
                 (if (let () (declare (not safe)) (##pair? _g6526765274_))
                     (let ((_hd6527165287_
                            (let ()
                              (declare (not safe))
                              (##car _g6526765274_)))
                           (_tl6527265289_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6526765274_))))
                       (let* ((_key65292_ _hd6527165287_)
                              (_val65294_ _tl6527265289_))
                         (declare (not safe))
                         (_K6527065284_ _val65294_ _key65292_)))
                     (let () (declare (not safe)) (_E6526965278_)))))
             _properties65262_)))
    (define make-class-type-descriptor
      (lambda (_type-id65157_
               _type-name65158_
               _type-super65159_
               _precedence-list65160_
               _slot-vector65161_
               _properties65162_
               _constructor65163_
               _slot-table65164_
               _methods65165_)
        (letrec ((_make-props!65167_
                  (lambda (_key65231_)
                    (letrec* ((_ht65233_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!65234_
                               (lambda (_ht65255_ _slots65256_)
                                 (for-each
                                  (lambda (_g6525765259_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht65255_
                                       _g6525765259_
                                       '#t)))
                                  _slots65256_)))
                              (_put-alist!65235_
                               (lambda (_ht65244_ _key65245_ _alist65246_)
                                 (let ((_$e65248_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key65245_
                                           _alist65246_))))
                                   (if _$e65248_
                                       ((lambda (_g6525065252_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!65234_
                                             _ht65244_
                                             _g6525065252_)))
                                        _$e65248_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!65235_
                         _ht65233_
                         _key65231_
                         _properties65162_))
                      (for-each
                       (lambda (_mixin65237_)
                         (let ((_alist65239_
                                (##structure-ref
                                 _mixin65237_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist65239_))
                                   (let ((__tmp65493
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key65231_
                                             _alist65239_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp65493)))
                               (let ((__tmp65492
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin65237_))))
                                 (declare (not safe))
                                 (_put-slots!65234_ _ht65233_ __tmp65492))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!65235_
                                  _ht65233_
                                  _key65231_
                                  _alist65239_)))))
                       _precedence-list65160_)
                      _ht65233_))))
          (let* ((_transparent?65169_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties65162_)))
                 (_all-slots-printable?65174_
                  (let ((_$e65171_ _transparent?65169_))
                    (if _$e65171_
                        _$e65171_
                        (let ((__tmp65494
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties65162_))))
                          (declare (not safe))
                          (eq? '#t __tmp65494)))))
                 (_printable65176_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?65174_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65167_ 'print:))
                      '#f))
                 (_all-slots-equalable?65181_
                  (let ((_$e65178_ _transparent?65169_))
                    (if _$e65178_
                        _$e65178_
                        (let ((__tmp65495
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties65162_))))
                          (declare (not safe))
                          (eq? '#t __tmp65495)))))
                 (_equalable65183_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?65181_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65167_ 'equal:))
                      '#f))
                 (_first-new-field65185_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super65159_
                         'gerbil#class::t))
                      (let ((__tmp65496
                             (##structure-ref
                              _type-super65159_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp65496))
                      '1))
                 (_field-info-length65187_
                  (let ((__tmp65497
                         (let ((__tmp65498
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector65161_))))
                           (declare (not safe))
                           (##fx- __tmp65498 _first-new-field65185_))))
                    (declare (not safe))
                    (##fx* '3 __tmp65497)))
                 (_field-info65189_ (make-vector _field-info-length65187_ '#f))
                 (_struct?65191_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties65162_)))
                 (_final?65193_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties65162_)))
                 (_metaclass65201_
                  (let ((_metaclass6519465196_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties65162_))))
                    (if _metaclass6519465196_
                        (let ((_metaclass65199_ _metaclass6519465196_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass65199_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id65157_
                                       'metaclass:
                                       _metaclass65199_)))
                          _metaclass65199_)
                        '#f)))
                 (_system?65203_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties65162_)))
                 (_opaque?65208_
                  (let ((_$e65205_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?65181_))))
                    (if _$e65205_
                        _$e65205_
                        (if _type-super65159_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super65159_))
                            '#f))))
                 (_type-flags65210_
                  (let ((__tmp65503 (if _final?65193_ '0 type-flag-extensible))
                        (__tmp65502 (if _opaque?65208_ type-flag-opaque '0))
                        (__tmp65501
                         (if _struct?65191_ class-type-flag-struct '0))
                        (__tmp65500
                         (if _metaclass65201_ class-type-flag-metaclass '0))
                        (__tmp65499
                         (if _system?65203_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp65503
                             __tmp65502
                             __tmp65501
                             __tmp65500
                             __tmp65499)))
                 (_precedence-list65212_
                  (if (memq t::t _precedence-list65160_)
                      (begin
                        (if (let ((__tmp65504 (last _precedence-list65160_)))
                              (declare (not safe))
                              (eq? __tmp65504 t::t))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"BUG: t::t is not last in the precedence list")))
                        _precedence-list65160_)
                      (append _precedence-list65160_
                              (let () (declare (not safe)) (cons t::t '()))))))
            (let _loop65215_ ((_i65217_ _first-new-field65185_) (_j65218_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j65218_ _field-info-length65187_))
                  (let* ((_slot65220_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector65161_ _i65217_)))
                         (_flags65228_
                          (if _transparent?65169_
                              '0
                              (let ((__tmp65506
                                     (if (or _all-slots-printable?65174_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable65176_
                                                _slot65220_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp65505
                                     (if (or _all-slots-equalable?65181_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable65183_
                                                _slot65220_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp65506 __tmp65505)))))
                    (vector-set! _field-info65189_ _j65218_ _slot65220_)
                    (vector-set!
                     _field-info65189_
                     (let () (declare (not safe)) (##fx+ _j65218_ '1))
                     _flags65228_)
                    (let ((__tmp65508
                           (let () (declare (not safe)) (##fx+ _i65217_ '1)))
                          (__tmp65507
                           (let () (declare (not safe)) (##fx+ _j65218_ '3))))
                      (declare (not safe))
                      (_loop65215_ __tmp65508 __tmp65507)))
                  '#!void))
            (if _metaclass65201_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass65201_
                   _type-id65157_
                   _type-name65158_
                   _type-flags65210_
                   _type-super65159_
                   _field-info65189_
                   _precedence-list65212_
                   _slot-vector65161_
                   _slot-table65164_
                   _properties65162_
                   _constructor65163_
                   _methods65165_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id65157_
                   _type-name65158_
                   _type-flags65210_
                   _type-super65159_
                   _field-info65189_
                   _precedence-list65212_
                   _slot-vector65161_
                   _slot-table65164_
                   _properties65162_
                   _constructor65163_
                   _methods65165_)))))))
    (define class-type-id
      (lambda (_klass65155_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65155_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass65153_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65153_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass65150_ _val65151_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65150_ _val65151_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass65145_ _val65147_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65145_
           _val65147_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass65143_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65143_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass65141_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65141_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass65138_ _val65139_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65138_ _val65139_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass65133_ _val65135_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65133_
           _val65135_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass65131_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65131_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass65129_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65129_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass65126_ _val65127_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65126_ _val65127_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass65121_ _val65123_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65121_
           _val65123_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass65119_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65119_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass65117_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65117_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass65114_ _val65115_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65114_ _val65115_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass65109_ _val65111_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65109_
           _val65111_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass65107_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65107_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass65105_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65105_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass65102_ _val65103_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65102_ _val65103_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass65097_ _val65099_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65097_
           _val65099_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass65095_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65095_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass65093_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass65093_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass65090_ _val65091_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65090_
           _val65091_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass65085_ _val65087_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65085_
           _val65087_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass65083_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65083_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass65081_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65081_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass65078_ _val65079_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65078_
           _val65079_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass65073_ _val65075_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65073_
           _val65075_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass65071_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65071_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass65069_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65069_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass65066_ _val65067_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65066_ _val65067_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass65061_ _val65063_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65061_
           _val65063_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass65059_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65059_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass65057_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65057_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass65054_ _val65055_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65054_ _val65055_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass65049_ _val65051_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65049_
           _val65051_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass65047_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65047_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass65045_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65045_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass65042_ _val65043_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65042_
           _val65043_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass65037_ _val65039_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65037_
           _val65039_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass65035_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65035_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass65033_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65033_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass65030_ _val65031_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65030_ _val65031_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass65025_ _val65027_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65025_
           _val65027_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass65023_)
        (cdr (vector->list (##structure-ref _klass65023_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass65021_)
        (let ((__tmp65509
               (let ((__tmp65510
                      (##structure-ref _klass65021_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp65510))))
          (declare (not safe))
          (##fx- __tmp65509 '1))))
    (define class-type-seal!
      (lambda (_klass65019_)
        (let ((__tmp65511
               (let ((__tmp65512
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65019_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65512))))
          (declare (not safe))
          (##structure-set!
           _klass65019_
           __tmp65511
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass65017_)
        (let ((__tmp65513
               (let ((__tmp65514
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65017_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65514))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65017_
           __tmp65513
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct65008_ _maybe-super-struct65009_)
        (let ((_maybe-super-struct-id65011_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct65009_))))
          (let _lp65013_ ((_super-struct65015_ _maybe-sub-struct65008_))
            (if (let () (declare (not safe)) (not _super-struct65015_))
                '#f
                (if (let ((__tmp65516
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct65015_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id65011_ __tmp65516))
                    '#t
                    (let ((__tmp65515
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct65015_))))
                      (declare (not safe))
                      (_lp65013_ __tmp65515))))))))
    (define base-struct/1
      (lambda (_klass65006_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass65006_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass65006_))
                _klass65006_
                (let () (declare (not safe)) (##type-super _klass65006_)))
            (if (let () (declare (not safe)) (not _klass65006_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass65006_))))))
    (define base-struct/2
      (lambda (_klass164994_ _klass264995_)
        (let ((_s164997_
               (let () (declare (not safe)) (base-struct/1 _klass164994_)))
              (_s264998_
               (let () (declare (not safe)) (base-struct/1 _klass264995_))))
          (if (or (let () (declare (not safe)) (not _s164997_))
                  (and _s264998_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164997_ _s264998_))))
              _s264998_
              (if (or (let () (declare (not safe)) (not _s264998_))
                      (and _s164997_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264998_ _s164997_))))
                  _s164997_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164994_
                           _klass264995_
                           _s164997_
                           _s264998_)))))))
    (define base-struct/list
      (lambda (_all-supers64878_)
        (let* ((_all-supers6487964904_ _all-supers64878_)
               (_E6488464908_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6487964904_)))))
          (let ((_K6490264991_ (lambda () '#f))
                (_K6489964977_
                 (lambda (_x64975_)
                   (let () (declare (not safe)) (base-struct/1 _x64975_))))
                (_K6489464954_
                 (lambda (_y64951_ _x64952_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64952_ _y64951_))))
                (_K6488564915_
                 (lambda (_y64912_ _x64913_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64913_ _y64912_)))))
            (let* ((___match6546365464_
                    (lambda (_hd6488664918_ _tl6488764920_)
                      (let ((_x64923_ _hd6488664918_))
                        (letrec ((_splice-rest6488964925_
                                  (lambda (_rest6489364932_ _y64934_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6489364932_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6488564915_ _y64934_ _x64923_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6488464908_)))))
                                 (_splice-try6489164927_
                                  (lambda (_hd6489264936_
                                           _rest6489364938_
                                           _y6488864939_)
                                    (let ((_y64942_ _hd6489264936_))
                                      (let ((__tmp65518
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6489364938_)))
                                            (__tmp65517
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64942_ _y6488864939_))))
                                        (declare (not safe))
                                        (_splice-loop6489064929_
                                         __tmp65518
                                         __tmp65517)))))
                                 (_splice-loop6489064929_
                                  (lambda (_rest6489364944_ _y6488864945_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6489364944_))
                                        (let ((__tmp65520
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6489364944_))))
                                          (declare (not safe))
                                          (_splice-try6489164927_
                                           __tmp65520
                                           _rest6489364944_
                                           _y6488864945_))
                                        (let ((__tmp65519
                                               (reverse _y6488864945_)))
                                          (declare (not safe))
                                          (_splice-rest6488964925_
                                           _rest6489364944_
                                           __tmp65519))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6489064929_ _tl6488764920_ '()))))))
                   (_try-match6488164987_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6487964904_))
                          (let ((_tl6490164982_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6487964904_)))
                                (_hd6490064980_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6487964904_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6490164982_))
                                (let ((_x64985_ _hd6490064980_))
                                  (declare (not safe))
                                  (base-struct/1 _x64985_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6490164982_))
                                    (let ((_tl6489864966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6490164982_)))
                                          (_hd6489764964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6490164982_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6489864966_))
                                          (let ((_x64962_ _hd6490064980_)
                                                (_y64969_ _hd6489764964_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6489464954_
                                               _y64969_
                                               _x64962_)))
                                          (___match6546365464_
                                           _hd6490064980_
                                           _tl6490164982_)))
                                    (___match6546365464_
                                     _hd6490064980_
                                     _tl6490164982_))))
                          (let () (declare (not safe)) (_E6488464908_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6487964904_))
                  (let () (declare (not safe)) (_K6490264991_))
                  (let () (declare (not safe)) (_try-match6488164987_))))))))
    (define base-struct
      (lambda _all-supers64876_
        (let () (declare (not safe)) (base-struct/list _all-supers64876_))))
    (define find-super-constructor
      (lambda (_super64828_)
        (let _lp64830_ ((_rest64832_ _super64828_) (_constructor64833_ '#f))
          (let* ((_rest6483464842_ _rest64832_)
                 (_else6483664850_ (lambda () _constructor64833_))
                 (_K6483864864_
                  (lambda (_rest64853_ _hd64854_)
                    (let ((_$e64856_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd64854_
                              '10
                              class::t
                              '#f))))
                      (if _$e64856_
                          ((lambda (_xconstructor64859_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor64833_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor64833_
                                            _xconstructor64859_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp64830_ _rest64853_ _xconstructor64859_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor64833_
                                          _xconstructor64859_))))
                           _$e64856_)
                          (let ()
                            (declare (not safe))
                            (_lp64830_ _rest64853_ _constructor64833_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6483464842_))
                (let ((_hd6483964867_
                       (let () (declare (not safe)) (##car _rest6483464842_)))
                      (_tl6484064869_
                       (let () (declare (not safe)) (##cdr _rest6483464842_))))
                  (let* ((_hd64872_ _hd6483964867_)
                         (_rest64874_ _tl6484064869_))
                    (declare (not safe))
                    (_K6483864864_ _rest64874_ _hd64872_)))
                (let () (declare (not safe)) (_else6483664850_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list64804_ _direct-slots64805_)
        (let* ((_next-slot64807_ '1)
               (_slot-table64809_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots64811_ '(__class))
               (_process-slot64815_
                (lambda (_slot64813_)
                  (if (let () (declare (not safe)) (symbol? _slot64813_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot64813_)))
                  (if (let ((__tmp65522
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table64809_
                                _slot64813_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp65522 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64809_
                           _slot64813_
                           _next-slot64807_))
                        (let ((__tmp65521
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _slot64813_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64809_
                           __tmp65521
                           _next-slot64807_))
                        (set! _r-slots64811_
                              (let ()
                                (declare (not safe))
                                (cons _slot64813_ _r-slots64811_)))
                        (set! _next-slot64807_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot64807_ '1))))
                      '#!void)))
               (_process-slots64821_
                (lambda (_g6481664818_)
                  (for-each _process-slot64815_ _g6481664818_))))
          (for-each
           (lambda (_mixin64824_)
             (let ((__tmp65523
                    (let ((__tmp65524
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin64824_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp65524 '()))))
               (declare (not safe))
               (_process-slots64821_ __tmp65523)))
           (reverse _class-precedence-list64804_))
          (let ()
            (declare (not safe))
            (_process-slots64821_ _direct-slots64805_))
          (let ((_slot-vector64826_ (list->vector (reverse _r-slots64811_))))
            (values _slot-vector64826_ _slot-table64809_)))))
    (define make-class-type
      (lambda (_id64766_
               _name64767_
               _direct-supers64768_
               _direct-slots64769_
               _properties64770_
               _constructor64771_)
        (let ((_$e64776_
               (let ((__tmp65525
                      (lambda (_$obj64773_)
                        (let ((__tmp65526
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj64773_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp65526)))))
                 (declare (not safe))
                 (find __tmp65525 _direct-supers64768_))))
          (if _$e64776_
              ((lambda (_g6477864780_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6477864780_)))
               _$e64776_)
              (let ((_$e64783_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers64768_))))
                (if _$e64783_
                    ((lambda (_g6478564787_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6478564787_)))
                     _$e64783_)
                    '#!void))))
        (let ((_g65527_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers64768_))))
          (begin
            (let ((_g65528_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g65527_) (##vector-length _g65527_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g65528_ 2)))
                  (error "Context expects 2 values" _g65528_)))
            (let ((_precedence-list64790_
                   (let () (declare (not safe)) (##vector-ref _g65527_ 0)))
                  (_struct-super64791_
                   (let () (declare (not safe)) (##vector-ref _g65527_ 1))))
              (let ((_g65529_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list64790_
                        _direct-slots64769_))))
                (begin
                  (let ((_g65530_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g65529_)
                               (##vector-length _g65529_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g65530_ 2)))
                        (error "Context expects 2 values" _g65530_)))
                  (let ((_slot-vector64793_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65529_ 0)))
                        (_slot-table64794_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65529_ 1))))
                    (let* ((_properties64796_
                            (let ((__tmp65533
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots64769_)))
                                  (__tmp65531
                                   (let ((__tmp65532
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers64768_))))
                                     (declare (not safe))
                                     (cons __tmp65532 _properties64770_))))
                              (declare (not safe))
                              (cons __tmp65533 __tmp65531)))
                           (_constructor*64801_
                            (let ((_$e64798_ _constructor64771_))
                              (if _$e64798_
                                  _$e64798_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers64768_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id64766_
                         _name64767_
                         _struct-super64791_
                         _precedence-list64790_
                         _slot-vector64793_
                         _properties64796_
                         _constructor*64801_
                         _slot-table64794_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass64764_)
        (let ((__tmp65534
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64764_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass64764_ __tmp65534))))
    (define compute-precedence-list
      (lambda (_direct-supers64762_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers64762_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass64746_)
        (let ((_tid64748_
               (let () (declare (not safe)) (##type-id _klass64746_))))
          (if (let () (declare (not safe)) (class-type-final? _klass64746_))
              (lambda (_g6474964751_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6474964751_ _tid64748_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass64746_))
                  (lambda (_g6475364755_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6475364755_ _tid64748_)))
                  (lambda (_g6475764759_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass64746_ _g6475764759_))))))))
    (define if-class-slot-field
      (lambda (_klass64735_
               _slot64736_
               _if-final64737_
               _if-struct64738_
               _if-struct-field64739_
               _if-class-slot64740_)
        (let ((_field64742_
               (let ((__tmp65535
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass64735_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp65535 _slot64736_ '#f))))
          (if (let () (declare (not safe)) (not _field64742_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass64735_
                       'slot:
                       _slot64736_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass64735_))
                  (_if-final64737_ _klass64735_ _slot64736_ _field64742_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass64735_))
                      (_if-struct64738_ _klass64735_ _slot64736_ _field64742_)
                      (if (let ((_strukt64744_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass64735_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt64744_
                                    'gerbil#class::t))
                                 (let ((__tmp65536
                                        (let ((__tmp65537
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt64744_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp65537))))
                                   (declare (not safe))
                                   (##fx< _field64742_ __tmp65536))))
                          (_if-struct-field64739_
                           _klass64735_
                           _slot64736_
                           _field64742_)
                          (_if-class-slot64740_
                           _klass64735_
                           _slot64736_
                           _field64742_))))))))
    (define make-class-slot-accessor
      (lambda (_klass64732_ _slot64733_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64732_
           _slot64733_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass64729_ _slot64730_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64729_
           _slot64730_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass64726_ _slot64727_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64726_
           _slot64727_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass64723_ _slot64724_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64723_
           _slot64724_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object64707_ _class64708_ _slot64709_)
        (apply error
               '"not an instance"
               'object:
               _object64707_
               'class:
               _class64708_
               (if _slot64709_
                   (let ((__tmp65538
                          (let ()
                            (declare (not safe))
                            (cons _slot64709_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp65538))
                   '()))))
    (define not-an-instance__0
      (lambda (_object64714_ _class64715_)
        (let ((_slot64717_ '#f))
          (declare (not safe))
          (not-an-instance__% _object64714_ _class64715_ _slot64717_))))
    (define not-an-instance
      (lambda _g65540_
        (let ((_g65539_ (let () (declare (not safe)) (##length _g65540_))))
          (cond ((let () (declare (not safe)) (##fx= _g65539_ 2))
                 (apply (lambda (_object64714_ _class64715_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object64714_ _class64715_)))
                        _g65540_))
                ((let () (declare (not safe)) (##fx= _g65539_ 3))
                 (apply (lambda (_object64719_ _class64720_ _slot64721_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object64719_
                             _class64720_
                             _slot64721_)))
                        _g65540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g65540_))))))
    (define make-final-slot-accessor
      (lambda (_klass64700_ _slot64701_ _field64702_)
        (lambda (_obj64704_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj64704_
             _field64702_
             _klass64700_
             _slot64701_)))))
    (define make-final-slot-mutator
      (lambda (_klass64693_ _slot64694_ _field64695_)
        (lambda (_obj64697_ _val64698_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj64697_
             _val64698_
             _field64695_
             _klass64693_
             _slot64694_)))))
    (define make-struct-slot-accessor
      (lambda (_klass64687_ _slot64688_ _field64689_)
        (lambda (_obj64691_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj64691_
             _field64689_
             _klass64687_
             _slot64688_)))))
    (define make-struct-slot-mutator
      (lambda (_klass64680_ _slot64681_ _field64682_)
        (lambda (_obj64684_ _val64685_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj64684_
             _val64685_
             _field64682_
             _klass64680_
             _slot64681_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass64674_ _slot64675_ _field64676_)
        (lambda (_obj64678_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj64678_
             _field64676_
             _klass64674_
             _slot64675_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass64667_ _slot64668_ _field64669_)
        (lambda (_obj64671_ _val64672_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj64671_
             _val64672_
             _field64669_
             _klass64667_
             _slot64668_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass64661_ _slot64662_ _field64663_)
        (lambda (_obj64665_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64661_ _obj64665_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64665_ _field64663_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64665_ _klass64661_ _slot64662_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64654_ _slot64655_ _field64656_)
        (lambda (_obj64658_ _val64659_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64654_ _obj64658_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64658_ _field64656_ _val64659_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64658_ _klass64654_ _slot64655_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64648_ _slot64649_ _field64650_)
        (lambda (_obj64652_)
          (if (let ((__tmp65541
                     (let () (declare (not safe)) (##type-id _klass64648_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64652_ __tmp65541))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64652_ _field64650_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64648_ _obj64652_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64652_ _slot64649_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64652_
                     _klass64648_
                     _slot64649_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64641_ _slot64642_ _field64643_)
        (lambda (_obj64645_ _val64646_)
          (if (let ((__tmp65542
                     (let () (declare (not safe)) (##type-id _klass64641_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64645_ __tmp65542))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64645_ _field64643_ _val64646_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64641_ _obj64645_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64645_ _slot64642_ _val64646_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64645_
                     _klass64641_
                     _slot64642_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64635_ _slot64636_ _field64637_)
        (lambda (_obj64639_)
          (if (let ((__tmp65543
                     (let () (declare (not safe)) (##type-id _klass64635_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64639_ __tmp65543))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64639_ _field64637_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64639_ _slot64636_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64628_ _slot64629_ _field64630_)
        (lambda (_obj64632_ _val64633_)
          (if (let ((__tmp65544
                     (let () (declare (not safe)) (##type-id _klass64628_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64632_ __tmp65544))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64632_ _field64630_ _val64633_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64632_ _slot64629_ _val64633_))))))
    (define class-slot-offset
      (lambda (_klass64625_ _slot64626_)
        (let ((__tmp65545
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64625_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp65545 _slot64626_ '#f))))
    (define class-slot-ref
      (lambda (_klass64619_ _obj64620_ _slot64621_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64619_ _obj64620_))
            (let ((_off64623_
                   (let ((__tmp65546 (object-type _obj64620_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65546 _slot64621_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64620_
               _off64623_
               _klass64619_
               _slot64621_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64620_ _klass64619_)))))
    (define class-slot-set!
      (lambda (_klass64612_ _obj64613_ _slot64614_ _val64615_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64612_ _obj64613_))
            (let ((_off64617_
                   (let ((__tmp65547 (object-type _obj64613_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65547 _slot64614_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64613_
               _val64615_
               _off64617_
               _klass64612_
               _slot64614_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64613_ _klass64612_)))))
    (define unchecked-field-ref
      (lambda (_obj64609_ _off64610_)
        (let ((__tmp65548
               (let () (declare (not safe)) (##structure-type _obj64609_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64609_ _off64610_ __tmp65548 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64605_ _off64606_ _val64607_)
        (let ((__tmp65549
               (let () (declare (not safe)) (##structure-type _obj64605_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64605_
           _val64607_
           _off64606_
           __tmp65549
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj64602_ _slot64603_)
        (let ((__tmp65550
               (let ((__tmp65551
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64602_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65551 _slot64603_))))
          (declare (not safe))
          (unchecked-field-ref _obj64602_ __tmp65550))))
    (define unchecked-slot-set!
      (lambda (_obj64598_ _slot64599_ _val64600_)
        (let ((__tmp65552
               (let ((__tmp65553
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64598_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65553 _slot64599_))))
          (declare (not safe))
          (unchecked-field-set! _obj64598_ __tmp65552 _val64600_))))
    (define slot-ref__%
      (lambda (_obj64574_ _slot64575_ _E64576_)
        (if (object? _obj64574_)
            (let* ((_klass64578_ (object-type _obj64574_))
                   (_$e64581_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64578_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64578_ _slot64575_))
                        '#f)))
              (if _$e64581_
                  ((lambda (_off64584_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj64574_ _off64584_)))
                   _$e64581_)
                  (_E64576_ _obj64574_ _slot64575_)))
            (_E64576_ _obj64574_ _slot64575_))))
    (define slot-ref__0
      (lambda (_obj64589_ _slot64590_)
        (let ((_E64592_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj64589_ _slot64590_ _E64592_))))
    (define slot-ref
      (lambda _g65555_
        (let ((_g65554_ (let () (declare (not safe)) (##length _g65555_))))
          (cond ((let () (declare (not safe)) (##fx= _g65554_ 2))
                 (apply (lambda (_obj64589_ _slot64590_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj64589_ _slot64590_)))
                        _g65555_))
                ((let () (declare (not safe)) (##fx= _g65554_ 3))
                 (apply (lambda (_obj64594_ _slot64595_ _E64596_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj64594_ _slot64595_ _E64596_)))
                        _g65555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g65555_))))))
    (define slot-set!__%
      (lambda (_obj64546_ _slot64547_ _val64548_ _E64549_)
        (if (object? _obj64546_)
            (let* ((_klass64551_ (object-type _obj64546_))
                   (_$e64554_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64551_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64551_ _slot64547_))
                        '#f)))
              (if _$e64554_
                  ((lambda (_off64557_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj64546_
                        _off64557_
                        _val64548_)))
                   _$e64554_)
                  (_E64549_ _obj64546_ _slot64547_)))
            (_E64549_ _obj64546_ _slot64547_))))
    (define slot-set!__0
      (lambda (_obj64562_ _slot64563_ _val64564_)
        (let ((_E64566_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj64562_ _slot64563_ _val64564_ _E64566_))))
    (define slot-set!
      (lambda _g65557_
        (let ((_g65556_ (let () (declare (not safe)) (##length _g65557_))))
          (cond ((let () (declare (not safe)) (##fx= _g65556_ 3))
                 (apply (lambda (_obj64562_ _slot64563_ _val64564_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj64562_ _slot64563_ _val64564_)))
                        _g65557_))
                ((let () (declare (not safe)) (##fx= _g65556_ 4))
                 (apply (lambda (_obj64568_ _slot64569_ _val64570_ _E64571_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj64568_
                             _slot64569_
                             _val64570_
                             _E64571_)))
                        _g65557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g65557_))))))
    (define __slot-error
      (lambda (_obj64542_ _slot64543_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj64542_ 'slot: _slot64543_))))
    (define subclass?
      (lambda (_maybe-sub-class64532_ _maybe-super-class64533_)
        (let* ((_maybe-super-class-id64535_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class64533_)))
               (_$e64537_
                (let ((__tmp65558
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class64532_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id64535_ __tmp65558))))
          (if _$e64537_
              _$e64537_
              (let ((__tmp65560
                     (lambda (_super-class64540_)
                       (let ((__tmp65561
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class64540_))))
                         (declare (not safe))
                         (eq? __tmp65561 _maybe-super-class-id64535_))))
                    (__tmp65559
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class64532_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp65560 __tmp65559))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass64529_ _obj64530_)
        (let ((__tmp65562
               (let () (declare (not safe)) (##type-id _klass64529_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj64530_ __tmp65562))))
    (define struct-instance?
      (lambda (_klass64526_ _obj64527_)
        (let ((__tmp65563
               (let () (declare (not safe)) (##type-id _klass64526_))))
          (declare (not safe))
          (##structure-instance-of? _obj64527_ __tmp65563))))
    (define class-instance?
      (lambda (_klass64521_ _obj64522_)
        (if (object? _obj64522_)
            (let ((_type64524_ (object-type _obj64522_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type64524_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type64524_ _klass64521_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass64516_ _k64517_)
        (if (let () (declare (not safe)) (class-type-system? _klass64516_))
            (let ()
              (declare (not safe))
              (error '"cannot instantiate system class" 'class: _klass64516_))
            (let ((_obj64519_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass64516_ _k64517_))))
              (let () (declare (not safe)) (object-fill! _obj64519_ '#f))
              _obj64519_))))
    (define object-fill!
      (lambda (_obj64509_ _fill64510_)
        (let _loop64512_ ((_i64514_
                           (let ((__tmp65565
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj64509_))))
                             (declare (not safe))
                             (##fx- __tmp65565 '1))))
          (if (let () (declare (not safe)) (##fx> _i64514_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj64509_
                   _fill64510_
                   _i64514_
                   '#f
                   '#f))
                (let ((__tmp65564
                       (let () (declare (not safe)) (##fx- _i64514_ '1))))
                  (declare (not safe))
                  (_loop64512_ __tmp65564)))
              _obj64509_))))
    (define new-instance
      (lambda (_klass64507_)
        (let ((__obj65465
               (let ((__tmp65566
                      (let ((__tmp65567
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64507_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp65567))))
                 (declare (not safe))
                 (##make-structure _klass64507_ __tmp65566))))
          (let () (declare (not safe)) (object-fill! __obj65465 '#f))
          __obj65465)))
    (define make-instance
      (lambda (_klass64497_ . _args64498_)
        (let* ((_obj64500_
                (let () (declare (not safe)) (new-instance _klass64497_)))
               (_$e64502_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64497_ '10 class::t '#f))))
          (if _$e64502_
              ((lambda (_kons-id64505_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass64497_
                    _kons-id64505_
                    _obj64500_
                    _args64498_)))
               _$e64502_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass64497_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass64497_
                     _obj64500_
                     _args64498_))
                  (if (let ((__tmp65572
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass64497_))))
                        (declare (not safe))
                        (not __tmp65572))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass64497_
                         _obj64500_
                         _args64498_))
                      (if (let ((__tmp65570
                                 (let ((__tmp65571
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj64500_))))
                                   (declare (not safe))
                                   (##fx- __tmp65571 '1)))
                                (__tmp65569 (length _args64498_)))
                            (declare (not safe))
                            (##fx= __tmp65570 __tmp65569))
                          (apply ##structure _klass64497_ _args64498_)
                          (let ((__tmp65568
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass64497_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass64497_
                                   'slots:
                                   __tmp65568
                                   'args:
                                   _args64498_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj64494_ . _args64495_)
        (if (let ((__tmp65574 (length _args64495_))
                  (__tmp65573
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj64494_))))
              (declare (not safe))
              (##fx< __tmp65574 __tmp65573))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj64494_ _args64495_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj64494_
                     'args:
                     _args64495_)))))
    (define __struct-instance-init!
      (lambda (_obj64453_ _args64454_)
        (let _lp64456_ ((_k64458_ '1) (_rest64459_ _args64454_))
          (let* ((_rest6446064468_ _rest64459_)
                 (_else6446264476_ (lambda () _obj64453_))
                 (_K6446464482_
                  (lambda (_rest64479_ _hd64480_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj64453_ _k64458_ _hd64480_))
                    (let ((__tmp65575
                           (let () (declare (not safe)) (##fx+ _k64458_ '1))))
                      (declare (not safe))
                      (_lp64456_ __tmp65575 _rest64479_)))))
            (if (let () (declare (not safe)) (##pair? _rest6446064468_))
                (let ((_hd6446564485_
                       (let () (declare (not safe)) (##car _rest6446064468_)))
                      (_tl6446664487_
                       (let () (declare (not safe)) (##cdr _rest6446064468_))))
                  (let* ((_hd64490_ _hd6446564485_)
                         (_rest64492_ _tl6446664487_))
                    (declare (not safe))
                    (_K6446464482_ _rest64492_ _hd64490_)))
                (let () (declare (not safe)) (_else6446264476_)))))))
    (define class-instance-init!
      (lambda (_obj64450_ . _args64451_)
        (let ((__tmp65576 (object-type _obj64450_)))
          (declare (not safe))
          (__class-instance-init! __tmp65576 _obj64450_ _args64451_))))
    (define __class-instance-init!
      (lambda (_klass64394_ _obj64395_ _args64396_)
        (let _lp64398_ ((_rest64400_ _args64396_))
          (let* ((_rest6440164411_ _rest64400_)
                 (_else6440364419_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest64400_))
                        _obj64395_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass64394_
                                 'rest:
                                 _rest64400_)))))
                 (_K6440564431_
                  (lambda (_rest64422_ _val64423_ _key64424_)
                    (let ((_$e64426_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass64394_ _key64424_))))
                      (if _$e64426_
                          ((lambda (_off64429_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj64395_
                                _off64429_
                                _val64423_))
                             (let ()
                               (declare (not safe))
                               (_lp64398_ _rest64422_)))
                           _$e64426_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass64394_
                                   'slot:
                                   _key64424_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6440164411_))
                (let ((_hd6440664434_
                       (let () (declare (not safe)) (##car _rest6440164411_)))
                      (_tl6440764436_
                       (let () (declare (not safe)) (##cdr _rest6440164411_))))
                  (let ((_key64439_ _hd6440664434_))
                    (if (let () (declare (not safe)) (##pair? _tl6440764436_))
                        (let ((_hd6440864441_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6440764436_)))
                              (_tl6440964443_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6440764436_))))
                          (let* ((_val64446_ _hd6440864441_)
                                 (_rest64448_ _tl6440964443_))
                            (declare (not safe))
                            (_K6440564431_ _rest64448_ _val64446_ _key64439_)))
                        (let () (declare (not safe)) (_else6440364419_)))))
                (let () (declare (not safe)) (_else6440364419_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass64390_ _obj64391_ _args64392_)
        (apply call-method
               _klass64390_
               'instance-init!
               _obj64391_
               _args64392_)))
    (define constructor-init!
      (lambda (_klass64385_ _kons-id64386_ _obj64387_ . _args64388_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass64385_
           _kons-id64386_
           _obj64387_
           _args64388_))))
    (define __constructor-init!
      (lambda (_klass64375_ _kons-id64376_ _obj64377_ _args64378_)
        (let ((_$e64380_
               (let ()
                 (declare (not safe))
                 (__find-method _klass64375_ _obj64377_ _kons-id64376_))))
          (if _$e64380_
              ((lambda (_kons64383_)
                 (apply _kons64383_ _obj64377_ _args64378_)
                 _obj64377_)
               _$e64380_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass64375_
                       'method:
                       _kons-id64376_))))))
    (define struct-copy
      (lambda (_struct64373_)
        (if (let () (declare (not safe)) (##structure? _struct64373_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct64373_)))
        (let () (declare (not safe)) (##structure-copy _struct64373_))))
    (define struct->list
      (lambda (_obj64371_)
        (if (object? _obj64371_)
            (let () (declare (not safe)) (##vector->list _obj64371_))
            (let ()
              (declare (not safe))
              (error '"not a structure" _obj64371_)))))
    (define class->list
      (lambda (_obj64358_)
        (if (object? _obj64358_)
            (let ((_klass64360_ (object-type _obj64358_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass64360_ 'gerbil#class::t))
                  (let ((_slot-vector64362_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass64360_
                            '7
                            class::t
                            '#f))))
                    (let _loop64364_ ((_index64366_
                                       (let ((__tmp65582
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector64362_))))
                                         (declare (not safe))
                                         (##fx- __tmp65582 '1)))
                                      (_plist64367_ '()))
                      (if (let () (declare (not safe)) (##fx< _index64366_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass64360_ _plist64367_))
                          (let ((_slot64369_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector64362_
                                    _index64366_))))
                            (let ((__tmp65581
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index64366_ '1)))
                                  (__tmp65577
                                   (let ((__tmp65580
                                          (let ()
                                            (declare (not safe))
                                            (symbol->keyword _slot64369_)))
                                         (__tmp65578
                                          (let ((__tmp65579
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj64358_
                                                    _index64366_))))
                                            (declare (not safe))
                                            (cons __tmp65579 _plist64367_))))
                                     (declare (not safe))
                                     (cons __tmp65580 __tmp65578))))
                              (declare (not safe))
                              (_loop64364_ __tmp65581 __tmp65577))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj64358_
                           'class:
                           _klass64360_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj64358_)))))
    (define call-method
      (lambda (_obj64349_ _id64350_ . _args64351_)
        (let ((_$e64353_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64349_ _id64350_))))
          (if _$e64353_
              ((lambda (_method64356_)
                 (apply _method64356_ _obj64349_ _args64351_))
               _$e64353_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj64349_
                       'method:
                       _id64350_))))))
    (define method-ref
      (lambda (_obj64346_ _id64347_)
        (let ((__tmp65583 (let () (declare (not safe)) (class-of _obj64346_))))
          (declare (not safe))
          (find-method __tmp65583 _obj64346_ _id64347_))))
    (define checked-method-ref
      (lambda (_obj64340_ _id64341_)
        (let ((_$e64343_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64340_ _id64341_))))
          (if _$e64343_
              _$e64343_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj64340_
                       'method:
                       _id64341_))))))
    (define bound-method-ref
      (lambda (_obj64330_ _id64331_)
        (let ((_$e64333_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64330_ _id64331_))))
          (if _$e64333_
              ((lambda (_method64336_)
                 (lambda _args64338_
                   (apply _method64336_ _obj64330_ _args64338_)))
               _$e64333_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj64323_ _id64324_)
        (let ((_method64326_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj64323_ _id64324_))))
          (lambda _args64328_ (apply _method64326_ _obj64323_ _args64328_)))))
    (define find-method
      (lambda (_klass64319_ _obj64320_ _id64321_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64319_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass64319_ _obj64320_ _id64321_))
            (if (let () (declare (not safe)) (##type? _klass64319_))
                (let ((__tmp65584
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64319_))))
                  (declare (not safe))
                  (__find-method __tmp65584 _obj64320_ _id64321_))
                (let ()
                  (declare (not safe))
                  (error '"bad class; must be a class-type or builtin type"
                         'class:
                         _klass64319_
                         'method:
                         _id64321_))))))
    (define __find-method
      (lambda (_klass64312_ _obj64313_ _id64314_)
        (let ((_$e64316_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass64312_ _obj64313_ _id64314_))))
          (if _$e64316_
              _$e64316_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass64312_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass64312_ _obj64313_ _id64314_)))))))
    (define mixin-find-method
      (lambda (_mixins64304_ _obj64305_ _id64306_)
        (let ((__tmp65585
               (lambda (_g6430764309_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6430764309_ _obj64305_ _id64306_)))))
          (declare (not safe))
          (ormap1 __tmp65585 _mixins64304_))))
    (define direct-method-ref
      (lambda (_klass64281_ _obj64282_ _id64283_)
        (letrec ((_metaclass-resolve-method64285_
                  (lambda ()
                    (let ((__method65466
                           (let ()
                             (declare (not safe))
                             (method-ref _klass64281_ 'direct-method-ref))))
                      (if __method65466
                          (__method65466 _klass64281_ _obj64282_ _id64283_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass64281_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!64286_
                  (lambda ()
                    (let ((_method64301_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method64285_))))
                      (let ((__tmp65587
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64281_
                                '11
                                class::t
                                '#f)))
                            (__tmp65586 (if _method64301_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp65587 _id64283_ __tmp65586))
                      _method64301_))))
          (let ((_$e64288_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass64281_ '11 class::t '#f))))
            (if _$e64288_
                ((lambda (_ht64291_)
                   (let ((_method64293_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht64291_ _id64283_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method64293_))
                         _method64293_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass64281_))
                             (let ((_$e64295_ _method64293_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e64295_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method64285_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e64295_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!64286_)))))
                             '#f))))
                 _$e64288_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass64281_))
                    (let ((_tab64298_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64281_
                         _tab64298_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!64286_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass64277_ _obj64278_ _id64279_)
        (let ((__tmp65588 (##structure-ref _klass64277_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp65588 _obj64278_ _id64279_))))
    (define bind-method!__%
      (lambda (_klass64250_ _id64251_ _proc64252_ _rebind?64253_)
        (letrec ((_bind!64255_
                  (lambda (_ht64261_)
                    (if (and (let () (declare (not safe)) (not _rebind?64253_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht64261_ _id64251_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass64250_
                                 'method:
                                 _id64251_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht64261_
                           _id64251_
                           _proc64252_))))))
          (if (let () (declare (not safe)) (procedure? _proc64252_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc64252_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass64250_ 'gerbil#class::t))
              (let ((_ht64257_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass64250_
                        '11
                        class::t
                        '#f))))
                (if _ht64257_
                    (let () (declare (not safe)) (_bind!64255_ _ht64257_))
                    (let ((_ht64259_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64250_
                         _ht64259_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!64255_ _ht64259_)))))
              (if (let () (declare (not safe)) (##type? _klass64250_))
                  (let ((__tmp65589
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass64250_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp65589
                     _id64251_
                     _proc64252_
                     _rebind?64253_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass64250_)))))))
    (define bind-method!__0
      (lambda (_klass64266_ _id64267_ _proc64268_)
        (let ((_rebind?64270_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass64266_
           _id64267_
           _proc64268_
           _rebind?64270_))))
    (define bind-method!
      (lambda _g65591_
        (let ((_g65590_ (let () (declare (not safe)) (##length _g65591_))))
          (cond ((let () (declare (not safe)) (##fx= _g65590_ 3))
                 (apply (lambda (_klass64266_ _id64267_ _proc64268_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass64266_
                             _id64267_
                             _proc64268_)))
                        _g65591_))
                ((let () (declare (not safe)) (##fx= _g65590_ 4))
                 (apply (lambda (_klass64272_
                                 _id64273_
                                 _proc64274_
                                 _rebind?64275_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass64272_
                             _id64273_
                             _proc64274_
                             _rebind?64275_)))
                        _g65591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g65591_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint64230_ _seed64232_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64230_
           procedure-hash
           eq?
           _seed64232_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint64238_ '#f) (_seed64240_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64238_ _seed64240_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint64242_)
        (let ((_seed64244_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64242_ _seed64244_))))
    (define make-method-specializer-table
      (lambda _g65593_
        (let ((_g65592_ (let () (declare (not safe)) (##length _g65593_))))
          (cond ((let () (declare (not safe)) (##fx= _g65592_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g65593_))
                ((let () (declare (not safe)) (##fx= _g65592_ 1))
                 (apply (lambda (_size-hint64242_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint64242_)))
                        _g65593_))
                ((let () (declare (not safe)) (##fx= _g65592_ 2))
                 (apply (lambda (_size-hint64246_ _seed64247_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint64246_
                             _seed64247_)))
                        _g65593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g65593_))))))
    (define method-specializer-table-ref
      (lambda (_tab64187_ _key64188_ _default64189_)
        (let ((_table64191_
               (let () (declare (not safe)) (&raw-table-table _tab64187_)))
              (_seed64192_
               (let () (declare (not safe)) (&raw-table-seed _tab64187_))))
          (let* ((_h64194_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64188_))
                         _seed64192_))
                 (_size64197_ (vector-length _table64191_))
                 (_entries64200_ (fxquotient _size64197_ '2))
                 (_start64203_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64194_ _entries64200_)
                   '1)))
            (let _loop64207_ ((_probe64210_ _start64203_)
                              (_i64212_ '1)
                              (_deleted64214_ '#f))
              (let ((_k64217_ (vector-ref _table64191_ _probe64210_)))
                (if (let ((__tmp65600 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64217_ __tmp65600))
                    _default64189_
                    (if (let ((__tmp65599 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64217_ __tmp65599))
                        (let ((__tmp65598
                               (let ((_next-probe64220_
                                      (fx+ _start64203_
                                           _i64212_
                                           (fx* _i64212_ _i64212_))))
                                 (fxmodulo _next-probe64220_ _size64197_)))
                              (__tmp65597 (fx+ _i64212_ '1))
                              (__tmp65596
                               (let ((_$e64223_ _deleted64214_))
                                 (if _$e64223_ _$e64223_ _probe64210_))))
                          (declare (not safe))
                          (_loop64207_ __tmp65598 __tmp65597 __tmp65596))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64188_ _k64217_))
                            (vector-ref _table64191_ (fx+ _probe64210_ '1))
                            (let ((__tmp65595
                                   (let ((_next-probe64226_
                                          (fx+ _start64203_
                                               _i64212_
                                               (fx* _i64212_ _i64212_))))
                                     (fxmodulo _next-probe64226_ _size64197_)))
                                  (__tmp65594 (fx+ _i64212_ '1)))
                              (declare (not safe))
                              (_loop64207_
                               __tmp65595
                               __tmp65594
                               _deleted64214_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab64183_ _key64184_ _value64185_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64183_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64183_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64183_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab64183_
           _key64184_
           _value64185_))))
    (define __method-specializer-table-set!
      (lambda (_tab64138_ _key64139_ _value64140_)
        (let ((_table64143_
               (let () (declare (not safe)) (&raw-table-table _tab64138_)))
              (_seed64144_
               (let () (declare (not safe)) (&raw-table-seed _tab64138_))))
          (let* ((_h64146_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64139_))
                         _seed64144_))
                 (_size64149_ (vector-length _table64143_))
                 (_entries64152_ (fxquotient _size64149_ '2))
                 (_start64155_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64146_ _entries64152_)
                   '1)))
            (let _loop64159_ ((_probe64162_ _start64155_)
                              (_i64164_ '1)
                              (_deleted64166_ '#f))
              (let ((_k64169_ (vector-ref _table64143_ _probe64162_)))
                (if (let ((__tmp65610 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64169_ __tmp65610))
                    (if _deleted64166_
                        (begin
                          (vector-set! _table64143_ _deleted64166_ _key64139_)
                          (vector-set!
                           _table64143_
                           (fx+ _deleted64166_ '1)
                           _value64140_)
                          ((lambda ()
                             (let ((__tmp65609
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64138_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64138_
                                __tmp65609)))))
                        (begin
                          (vector-set! _table64143_ _probe64162_ _key64139_)
                          (vector-set!
                           _table64143_
                           (fx+ _probe64162_ '1)
                           _value64140_)
                          ((lambda ()
                             (let ((__tmp65607
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64138_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64138_ __tmp65607))
                             (let ((__tmp65608
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64138_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64138_
                                __tmp65608))))))
                    (if (let ((__tmp65606 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64169_ __tmp65606))
                        (let ((__tmp65605
                               (let ((_next-probe64174_
                                      (fx+ _start64155_
                                           _i64164_
                                           (fx* _i64164_ _i64164_))))
                                 (fxmodulo _next-probe64174_ _size64149_)))
                              (__tmp65604 (fx+ _i64164_ '1))
                              (__tmp65603
                               (let ((_$e64177_ _deleted64166_))
                                 (if _$e64177_ _$e64177_ _probe64162_))))
                          (declare (not safe))
                          (_loop64159_ __tmp65605 __tmp65604 __tmp65603))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64139_ _k64169_))
                            (begin
                              (vector-set!
                               _table64143_
                               _probe64162_
                               _key64139_)
                              (vector-set!
                               _table64143_
                               (fx+ _probe64162_ '1)
                               _value64140_))
                            (let ((__tmp65602
                                   (let ((_next-probe64180_
                                          (fx+ _start64155_
                                               _i64164_
                                               (fx* _i64164_ _i64164_))))
                                     (fxmodulo _next-probe64180_ _size64149_)))
                                  (__tmp65601 (fx+ _i64164_ '1)))
                              (declare (not safe))
                              (_loop64159_
                               __tmp65602
                               __tmp65601
                               _deleted64166_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab64133_
               _key64134_
               _method-specializer-table-update!64135_
               _default64136_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64133_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64133_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64133_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab64133_
           _key64134_
           _method-specializer-table-update!64135_
           _default64136_))))
    (define __method-specializer-table-update!
      (lambda (_tab64087_
               _key64088_
               _method-specializer-table-update!64089_
               _default64090_)
        (let ((_table64093_
               (let () (declare (not safe)) (&raw-table-table _tab64087_)))
              (_seed64094_
               (let () (declare (not safe)) (&raw-table-seed _tab64087_))))
          (let* ((_h64096_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64088_))
                         _seed64094_))
                 (_size64099_ (vector-length _table64093_))
                 (_entries64102_ (fxquotient _size64099_ '2))
                 (_start64105_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64096_ _entries64102_)
                   '1)))
            (let _loop64109_ ((_probe64112_ _start64105_)
                              (_i64114_ '1)
                              (_deleted64116_ '#f))
              (let ((_k64119_ (vector-ref _table64093_ _probe64112_)))
                (if (let ((__tmp65620 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64119_ __tmp65620))
                    (if _deleted64116_
                        (begin
                          (vector-set! _table64093_ _deleted64116_ _key64088_)
                          (vector-set!
                           _table64093_
                           (fx+ _deleted64116_ '1)
                           (_method-specializer-table-update!64089_
                            _default64090_))
                          ((lambda ()
                             (let ((__tmp65619
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64087_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64087_
                                __tmp65619)))))
                        (begin
                          (vector-set! _table64093_ _probe64112_ _key64088_)
                          (vector-set!
                           _table64093_
                           (fx+ _probe64112_ '1)
                           (_method-specializer-table-update!64089_
                            _default64090_))
                          ((lambda ()
                             (let ((__tmp65617
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64087_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64087_ __tmp65617))
                             (let ((__tmp65618
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64087_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64087_
                                __tmp65618))))))
                    (if (let ((__tmp65616 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64119_ __tmp65616))
                        (let ((__tmp65615
                               (let ((_next-probe64124_
                                      (fx+ _start64105_
                                           _i64114_
                                           (fx* _i64114_ _i64114_))))
                                 (fxmodulo _next-probe64124_ _size64099_)))
                              (__tmp65614 (fx+ _i64114_ '1))
                              (__tmp65613
                               (let ((_$e64127_ _deleted64116_))
                                 (if _$e64127_ _$e64127_ _probe64112_))))
                          (declare (not safe))
                          (_loop64109_ __tmp65615 __tmp65614 __tmp65613))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64088_ _k64119_))
                            (begin
                              (vector-set!
                               _table64093_
                               _probe64112_
                               _key64088_)
                              (vector-set!
                               _table64093_
                               (fx+ _probe64112_ '1)
                               (_method-specializer-table-update!64089_
                                (vector-ref
                                 _table64093_
                                 (fx+ _probe64112_ '1)))))
                            (let ((__tmp65612
                                   (let ((_next-probe64130_
                                          (fx+ _start64105_
                                               _i64114_
                                               (fx* _i64114_ _i64114_))))
                                     (fxmodulo _next-probe64130_ _size64099_)))
                                  (__tmp65611 (fx+ _i64114_ '1)))
                              (declare (not safe))
                              (_loop64109_
                               __tmp65612
                               __tmp65611
                               _deleted64116_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab64046_ _key64048_)
        (let ((_table64051_
               (let () (declare (not safe)) (&raw-table-table _tab64046_)))
              (_seed64053_
               (let () (declare (not safe)) (&raw-table-seed _tab64046_))))
          (let* ((_h64056_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64048_))
                         _seed64053_))
                 (_size64059_ (vector-length _table64051_))
                 (_entries64062_ (fxquotient _size64059_ '2))
                 (_start64065_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64056_ _entries64062_)
                   '1)))
            (let _loop64069_ ((_probe64072_ _start64065_) (_i64074_ '1))
              (let ((_k64077_ (vector-ref _table64051_ _probe64072_)))
                (if (let ((__tmp65627 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64077_ __tmp65627))
                    '#!void
                    (if (let ((__tmp65626 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64077_ __tmp65626))
                        (let ((__tmp65625
                               (let ((_next-probe64080_
                                      (fx+ _start64065_
                                           _i64074_
                                           (fx* _i64074_ _i64074_))))
                                 (fxmodulo _next-probe64080_ _size64059_)))
                              (__tmp65624 (fx+ _i64074_ '1)))
                          (declare (not safe))
                          (_loop64069_ __tmp65625 __tmp65624))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64048_ _k64077_))
                            (begin
                              (vector-set!
                               _table64051_
                               _probe64072_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64051_
                               (fx+ _probe64072_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65623
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64046_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64046_
                                    __tmp65623)))))
                            (let ((__tmp65622
                                   (let ((_next-probe64084_
                                          (fx+ _start64065_
                                               _i64074_
                                               (fx* _i64074_ _i64074_))))
                                     (fxmodulo _next-probe64084_ _size64059_)))
                                  (__tmp65621 (fx+ _i64074_ '1)))
                              (declare (not safe))
                              (_loop64069_ __tmp65622 __tmp65621)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc64037_ _specializer64038_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64042_ ()
            (if (let ((__tmp65628
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65628 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64042_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc64037_
           _specializer64038_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc64027_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64031_ ()
            (if (let ((__tmp65629
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65629 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64031_))))))
        (let ((_specializer64035_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc64027_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer64035_)))
    (define __class-specializer-hash-key
      (lambda (_klass64025_)
        (let ((__tmp65630
               (let () (declare (not safe)) (##type-id _klass64025_))))
          (declare (not safe))
          (symbolic-hash __tmp65630))))
    (define make-class-specializer-table__%
      (lambda (_size-hint64006_ _seed64008_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64006_
           __class-specializer-hash-key
           eq?
           _seed64008_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint64014_ '#f) (_seed64016_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64014_ _seed64016_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint64018_)
        (let ((_seed64020_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64018_ _seed64020_))))
    (define make-class-specializer-table
      (lambda _g65632_
        (let ((_g65631_ (let () (declare (not safe)) (##length _g65632_))))
          (cond ((let () (declare (not safe)) (##fx= _g65631_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g65632_))
                ((let () (declare (not safe)) (##fx= _g65631_ 1))
                 (apply (lambda (_size-hint64018_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint64018_)))
                        _g65632_))
                ((let () (declare (not safe)) (##fx= _g65631_ 2))
                 (apply (lambda (_size-hint64022_ _seed64023_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint64022_
                             _seed64023_)))
                        _g65632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g65632_))))))
    (define class-specializer-table-ref
      (lambda (_tab63963_ _key63964_ _default63965_)
        (let ((_table63967_
               (let () (declare (not safe)) (&raw-table-table _tab63963_)))
              (_seed63968_
               (let () (declare (not safe)) (&raw-table-seed _tab63963_))))
          (let* ((_h63970_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63964_))
                         _seed63968_))
                 (_size63973_ (vector-length _table63967_))
                 (_entries63976_ (fxquotient _size63973_ '2))
                 (_start63979_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63970_ _entries63976_)
                   '1)))
            (let _loop63983_ ((_probe63986_ _start63979_)
                              (_i63988_ '1)
                              (_deleted63990_ '#f))
              (let ((_k63993_ (vector-ref _table63967_ _probe63986_)))
                (if (let ((__tmp65639 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63993_ __tmp65639))
                    _default63965_
                    (if (let ((__tmp65638 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63993_ __tmp65638))
                        (let ((__tmp65637
                               (let ((_next-probe63996_
                                      (fx+ _start63979_
                                           _i63988_
                                           (fx* _i63988_ _i63988_))))
                                 (fxmodulo _next-probe63996_ _size63973_)))
                              (__tmp65636 (fx+ _i63988_ '1))
                              (__tmp65635
                               (let ((_$e63999_ _deleted63990_))
                                 (if _$e63999_ _$e63999_ _probe63986_))))
                          (declare (not safe))
                          (_loop63983_ __tmp65637 __tmp65636 __tmp65635))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63964_ _k63993_))
                            (vector-ref _table63967_ (fx+ _probe63986_ '1))
                            (let ((__tmp65634
                                   (let ((_next-probe64002_
                                          (fx+ _start63979_
                                               _i63988_
                                               (fx* _i63988_ _i63988_))))
                                     (fxmodulo _next-probe64002_ _size63973_)))
                                  (__tmp65633 (fx+ _i63988_ '1)))
                              (declare (not safe))
                              (_loop63983_
                               __tmp65634
                               __tmp65633
                               _deleted63990_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63959_ _key63960_ _value63961_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63959_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63959_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63959_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63959_
           _key63960_
           _value63961_))))
    (define __class-specializer-table-set!
      (lambda (_tab63914_ _key63915_ _value63916_)
        (let ((_table63919_
               (let () (declare (not safe)) (&raw-table-table _tab63914_)))
              (_seed63920_
               (let () (declare (not safe)) (&raw-table-seed _tab63914_))))
          (let* ((_h63922_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63915_))
                         _seed63920_))
                 (_size63925_ (vector-length _table63919_))
                 (_entries63928_ (fxquotient _size63925_ '2))
                 (_start63931_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63922_ _entries63928_)
                   '1)))
            (let _loop63935_ ((_probe63938_ _start63931_)
                              (_i63940_ '1)
                              (_deleted63942_ '#f))
              (let ((_k63945_ (vector-ref _table63919_ _probe63938_)))
                (if (let ((__tmp65649 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63945_ __tmp65649))
                    (if _deleted63942_
                        (begin
                          (vector-set! _table63919_ _deleted63942_ _key63915_)
                          (vector-set!
                           _table63919_
                           (fx+ _deleted63942_ '1)
                           _value63916_)
                          ((lambda ()
                             (let ((__tmp65648
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63914_
                                __tmp65648)))))
                        (begin
                          (vector-set! _table63919_ _probe63938_ _key63915_)
                          (vector-set!
                           _table63919_
                           (fx+ _probe63938_ '1)
                           _value63916_)
                          ((lambda ()
                             (let ((__tmp65646
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63914_ __tmp65646))
                             (let ((__tmp65647
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63914_
                                __tmp65647))))))
                    (if (let ((__tmp65645 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63945_ __tmp65645))
                        (let ((__tmp65644
                               (let ((_next-probe63950_
                                      (fx+ _start63931_
                                           _i63940_
                                           (fx* _i63940_ _i63940_))))
                                 (fxmodulo _next-probe63950_ _size63925_)))
                              (__tmp65643 (fx+ _i63940_ '1))
                              (__tmp65642
                               (let ((_$e63953_ _deleted63942_))
                                 (if _$e63953_ _$e63953_ _probe63938_))))
                          (declare (not safe))
                          (_loop63935_ __tmp65644 __tmp65643 __tmp65642))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63915_ _k63945_))
                            (begin
                              (vector-set!
                               _table63919_
                               _probe63938_
                               _key63915_)
                              (vector-set!
                               _table63919_
                               (fx+ _probe63938_ '1)
                               _value63916_))
                            (let ((__tmp65641
                                   (let ((_next-probe63956_
                                          (fx+ _start63931_
                                               _i63940_
                                               (fx* _i63940_ _i63940_))))
                                     (fxmodulo _next-probe63956_ _size63925_)))
                                  (__tmp65640 (fx+ _i63940_ '1)))
                              (declare (not safe))
                              (_loop63935_
                               __tmp65641
                               __tmp65640
                               _deleted63942_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63909_
               _key63910_
               _class-specializer-table-update!63911_
               _default63912_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63909_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63909_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63909_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63909_
           _key63910_
           _class-specializer-table-update!63911_
           _default63912_))))
    (define __class-specializer-table-update!
      (lambda (_tab63863_
               _key63864_
               _class-specializer-table-update!63865_
               _default63866_)
        (let ((_table63869_
               (let () (declare (not safe)) (&raw-table-table _tab63863_)))
              (_seed63870_
               (let () (declare (not safe)) (&raw-table-seed _tab63863_))))
          (let* ((_h63872_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63864_))
                         _seed63870_))
                 (_size63875_ (vector-length _table63869_))
                 (_entries63878_ (fxquotient _size63875_ '2))
                 (_start63881_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63872_ _entries63878_)
                   '1)))
            (let _loop63885_ ((_probe63888_ _start63881_)
                              (_i63890_ '1)
                              (_deleted63892_ '#f))
              (let ((_k63895_ (vector-ref _table63869_ _probe63888_)))
                (if (let ((__tmp65659 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63895_ __tmp65659))
                    (if _deleted63892_
                        (begin
                          (vector-set! _table63869_ _deleted63892_ _key63864_)
                          (vector-set!
                           _table63869_
                           (fx+ _deleted63892_ '1)
                           (_class-specializer-table-update!63865_
                            _default63866_))
                          ((lambda ()
                             (let ((__tmp65658
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63863_
                                __tmp65658)))))
                        (begin
                          (vector-set! _table63869_ _probe63888_ _key63864_)
                          (vector-set!
                           _table63869_
                           (fx+ _probe63888_ '1)
                           (_class-specializer-table-update!63865_
                            _default63866_))
                          ((lambda ()
                             (let ((__tmp65656
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63863_ __tmp65656))
                             (let ((__tmp65657
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63863_
                                __tmp65657))))))
                    (if (let ((__tmp65655 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63895_ __tmp65655))
                        (let ((__tmp65654
                               (let ((_next-probe63900_
                                      (fx+ _start63881_
                                           _i63890_
                                           (fx* _i63890_ _i63890_))))
                                 (fxmodulo _next-probe63900_ _size63875_)))
                              (__tmp65653 (fx+ _i63890_ '1))
                              (__tmp65652
                               (let ((_$e63903_ _deleted63892_))
                                 (if _$e63903_ _$e63903_ _probe63888_))))
                          (declare (not safe))
                          (_loop63885_ __tmp65654 __tmp65653 __tmp65652))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63864_ _k63895_))
                            (begin
                              (vector-set!
                               _table63869_
                               _probe63888_
                               _key63864_)
                              (vector-set!
                               _table63869_
                               (fx+ _probe63888_ '1)
                               (_class-specializer-table-update!63865_
                                (vector-ref
                                 _table63869_
                                 (fx+ _probe63888_ '1)))))
                            (let ((__tmp65651
                                   (let ((_next-probe63906_
                                          (fx+ _start63881_
                                               _i63890_
                                               (fx* _i63890_ _i63890_))))
                                     (fxmodulo _next-probe63906_ _size63875_)))
                                  (__tmp65650 (fx+ _i63890_ '1)))
                              (declare (not safe))
                              (_loop63885_
                               __tmp65651
                               __tmp65650
                               _deleted63892_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab63822_ _key63824_)
        (let ((_table63827_
               (let () (declare (not safe)) (&raw-table-table _tab63822_)))
              (_seed63829_
               (let () (declare (not safe)) (&raw-table-seed _tab63822_))))
          (let* ((_h63832_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63824_))
                         _seed63829_))
                 (_size63835_ (vector-length _table63827_))
                 (_entries63838_ (fxquotient _size63835_ '2))
                 (_start63841_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63832_ _entries63838_)
                   '1)))
            (let _loop63845_ ((_probe63848_ _start63841_) (_i63850_ '1))
              (let ((_k63853_ (vector-ref _table63827_ _probe63848_)))
                (if (let ((__tmp65666 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63853_ __tmp65666))
                    '#!void
                    (if (let ((__tmp65665 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63853_ __tmp65665))
                        (let ((__tmp65664
                               (let ((_next-probe63856_
                                      (fx+ _start63841_
                                           _i63850_
                                           (fx* _i63850_ _i63850_))))
                                 (fxmodulo _next-probe63856_ _size63835_)))
                              (__tmp65663 (fx+ _i63850_ '1)))
                          (declare (not safe))
                          (_loop63845_ __tmp65664 __tmp65663))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63824_ _k63853_))
                            (begin
                              (vector-set!
                               _table63827_
                               _probe63848_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63827_
                               (fx+ _probe63848_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65662
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63822_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63822_
                                    __tmp65662)))))
                            (let ((__tmp65661
                                   (let ((_next-probe63860_
                                          (fx+ _start63841_
                                               _i63850_
                                               (fx* _i63850_ _i63850_))))
                                     (fxmodulo _next-probe63860_ _size63835_)))
                                  (__tmp65660 (fx+ _i63850_ '1)))
                              (declare (not safe))
                              (_loop63845_ __tmp65661 __tmp65660)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass63815_)
        (let ((_$e63817_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass63815_))))
          (if _$e63817_
              _$e63817_
              (let ((_method-table63820_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass63815_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass63815_ _method-table63820_))
                _method-table63820_)))))
    (define __lookup-class-specializer
      (lambda (_klass63805_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63809_ ()
            (if (let ((__tmp65667
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65667 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63809_))))))
        (let ((_method-table63813_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass63805_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table63813_)))
    (define __bind-class-specializer!
      (lambda (_klass63796_ _method-table63797_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63801_ ()
            (if (let ((__tmp65668
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65668 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63801_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass63796_
           _method-table63797_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass63781_ _method-table63782_ _method63783_ _proc63784_)
        (let ((_$e63786_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table63782_ _method63783_ '#f))))
          (if _$e63786_
              _$e63786_
              (let ((_$e63789_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc63784_))))
                (if _$e63789_
                    ((lambda (_specialize63792_)
                       (let ((_specialized-proc63794_
                              (_specialize63792_
                               _klass63781_
                               _method-table63782_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table63782_
                          _method63783_
                          _specialized-proc63794_)))
                     _$e63789_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table63782_
                       _method63783_
                       _proc63784_))))))))
    (define __specialize-class
      (lambda (_klass63727_)
        (if (let ((__tmp65672
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass63727_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp65672))
            (if (let () (declare (not safe)) (##type? _klass63727_))
                (let ((__tmp65671
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass63727_))))
                  (declare (not safe))
                  (__specialize-class __tmp65671))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass63727_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass63727_))
                (let ((__method65467
                       (let ()
                         (declare (not safe))
                         (method-ref _klass63727_ 'specialize-class))))
                  (if __method65467
                      (__method65467 _klass63727_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass63727_
                               'specialize-class))))
                (if (let ((__tmp65670
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass63727_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp65670))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass63727_))
                    (let ((_method-table63729_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop63731_ ((_rest63733_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass63727_))))
                        (let* ((_rest6373463742_ _rest63733_)
                               (_else6373663750_
                                (lambda () _method-table63729_))
                               (_K6373863769_
                                (lambda (_rest63753_ _xklass63754_)
                                  (let ((_xmethod-table6375563757_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass63754_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6375563757_
                                        (let* ((_xmethod-table63760_
                                                _xmethod-table6375563757_)
                                               (__tmp65669
                                                (lambda (_g6376163764_
                                                         _g6376263766_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass63727_
                                                     _method-table63729_
                                                     _g6376163764_
                                                     _g6376263766_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table63760_
                                           __tmp65669))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop63731_ _rest63753_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6373463742_))
                              (let ((_hd6373963772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6373463742_)))
                                    (_tl6374063774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6373463742_))))
                                (let* ((_xklass63777_ _hd6373963772_)
                                       (_rest63779_ _tl6374063774_))
                                  (declare (not safe))
                                  (_K6373863769_ _rest63779_ _xklass63777_)))
                              (let ()
                                (declare (not safe))
                                (_else6373663750_)))))))))))
    (define seal-class!
      (lambda (_klass63723_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63723_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass63723_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass63723_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass63723_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass63723_))
                      (let ((__method65468
                             (let ()
                               (declare (not safe))
                               (method-ref _klass63723_ 'seal-class!))))
                        (if __method65468
                            (__method65468 _klass63723_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass63723_
                                     'seal-class!))))
                      (if (let ((__tmp65673
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass63723_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp65673))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass63723_))
                          (let ((_method-table63725_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass63723_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass63723_
                             _method-table63725_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass63723_))))
            '#!void)))
    (define next-method
      (lambda (_subklass63678_ _obj63679_ _id63680_)
        (letrec ((_find-next-method63682_
                  (lambda (_klass63684_)
                    (let _lp63686_ ((_rest63688_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass63684_))))
                      (let* ((_rest6368963697_ _rest63688_)
                             (_else6369163705_ (lambda () '#f))
                             (_K6369363711_
                              (lambda (_rest63708_ _klass63709_)
                                (if (let ((__tmp65675
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass63678_)))
                                          (__tmp65674
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass63709_))))
                                      (declare (not safe))
                                      (eq? __tmp65675 __tmp65674))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest63708_
                                       _obj63679_
                                       _id63680_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp63686_ _rest63708_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6368963697_))
                            (let ((_hd6369463714_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6368963697_)))
                                  (_tl6369563716_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6368963697_))))
                              (let* ((_klass63719_ _hd6369463714_)
                                     (_rest63721_ _tl6369563716_))
                                (declare (not safe))
                                (_K6369363711_ _rest63721_ _klass63719_)))
                            (let ()
                              (declare (not safe))
                              (_else6369163705_))))))))
          (let ((__tmp65676
                 (let () (declare (not safe)) (class-of _obj63679_))))
            (declare (not safe))
            (_find-next-method63682_ __tmp65676)))))
    (define call-next-method
      (lambda (_subklass63668_ _obj63669_ _id63670_ . _args63671_)
        (let ((_$e63673_
               (let ()
                 (declare (not safe))
                 (next-method _subklass63668_ _obj63669_ _id63670_))))
          (if _$e63673_
              ((lambda (_methodf63676_)
                 (apply _methodf63676_ _obj63669_ _args63671_))
               _$e63673_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj63669_
                       'method:
                       _id63670_))))))
    (define write-style (lambda (_we63666_) (macro-writeenv-style _we63666_)))
    (define write-object
      (lambda (_we63658_ _obj63659_)
        (let ((_$e63661_
               (let () (declare (not safe)) (method-ref _obj63659_ ':wr))))
          (if _$e63661_
              ((lambda (_method63664_) (_method63664_ _obj63659_ _we63658_))
               _$e63661_)
              (let ()
                (declare (not safe))
                (##default-wr _we63658_ _obj63659_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type63577_)
        (letrec ((_shadow-type-id63579_
                  (lambda (_type63656_)
                    (let ((__tmp65677
                           (let ()
                             (declare (not safe))
                             (##type-name _type63656_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp65677 '"::t"))))
                 (_shadow-type-name63580_
                  (lambda (_type63654_)
                    (let () (declare (not safe)) (##type-name _type63654_))))
                 (_make-shadow-class63581_
                  (lambda (_type63646_ _precedence-list63647_)
                    (let* ((_super63649_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list63647_))
                                (let ((__tmp65678
                                       (car _precedence-list63647_)))
                                  (declare (not safe))
                                  (cons __tmp65678 '()))
                                '()))
                           (_klass63651_
                            (let ((__tmp65686
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id63579_ _type63646_)))
                                  (__tmp65685
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type63646_)))
                                  (__tmp65679
                                   (let ((__tmp65684
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp65680
                                          (let ((__tmp65683
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp65681
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type63646_))
                                                     '()
                                                     (let ((__tmp65682
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp65682 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp65683 __tmp65681))))
                                     (declare (not safe))
                                     (cons __tmp65684 __tmp65680))))
                              (declare (not safe))
                              (make-class-type
                               __tmp65686
                               __tmp65685
                               _super63649_
                               '()
                               __tmp65679
                               '#f))))
                      (let ((__tmp65687
                             (let ()
                               (declare (not safe))
                               (##type-id _type63646_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp65687
                         _klass63651_))
                      _klass63651_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again63585_ ()
              (if (let ((__tmp65688
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp65688 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again63585_))))))
          (let ((_$e63589_
                 (let ((__tmp65689
                        (let () (declare (not safe)) (##type-id _type63577_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp65689 '#f))))
            (if _$e63589_
                ((lambda (_klass63592_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass63592_)
                 _$e63589_)
                (let _loop63594_ ((_super63596_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type63577_)))
                                  (_hierarchy63597_ '()))
                  (if (let () (declare (not safe)) (not _super63596_))
                      (let _loop63599_ ((_rest63601_ _hierarchy63597_)
                                        (_precedence-list63602_ '()))
                        (let* ((_rest6360363611_ _rest63601_)
                               (_else6360563621_
                                (lambda ()
                                  (let ((_klass63619_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class63581_
                                            _type63577_
                                            _precedence-list63602_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass63619_)))
                               (_K6360763634_
                                (lambda (_rest63624_ _type63625_)
                                  (let ((_$e63627_
                                         (let ((__tmp65692
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type63625_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp65692
                                            '#f))))
                                    (if _$e63627_
                                        ((lambda (_klass63630_)
                                           (let ((__tmp65694
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass63630_
                                                          _precedence-list63602_))))
                                             (declare (not safe))
                                             (_loop63599_
                                              _rest63624_
                                              __tmp65694)))
                                         _$e63627_)
                                        (let* ((_klass63632_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class63581_
                                                   _type63625_
                                                   _precedence-list63602_)))
                                               (__tmp65693
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass63632_
                                                        _precedence-list63602_))))
                                          (declare (not safe))
                                          (_loop63599_
                                           _rest63624_
                                           __tmp65693)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6360363611_))
                              (let ((_hd6360863637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6360363611_)))
                                    (_tl6360963639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6360363611_))))
                                (let* ((_type63642_ _hd6360863637_)
                                       (_rest63644_ _tl6360963639_))
                                  (declare (not safe))
                                  (_K6360763634_ _rest63644_ _type63642_)))
                              (let ()
                                (declare (not safe))
                                (_else6360563621_)))))
                      (let ((__tmp65691
                             (let ()
                               (declare (not safe))
                               (##type-super _super63596_)))
                            (__tmp65690
                             (let ()
                               (declare (not safe))
                               (cons _super63596_ _hierarchy63597_))))
                        (declare (not safe))
                        (_loop63594_ __tmp65691 __tmp65690)))))))))
    (define class-of
      (lambda (_obj63565_)
        (declare (not interrupts-enabled))
        (let ((_t63568_ (let () (declare (not safe)) (##type _obj63565_))))
          (if (fx= _t63568_ (macro-type-subtyped))
              (let ((_st63570_
                     (let () (declare (not safe)) (##subtype _obj63565_))))
                (if (fx= _st63570_ (macro-subtype-structure))
                    (let ((_klass63572_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj63565_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass63572_
                             'gerbil#class::t))
                          _klass63572_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass63572_))))
                    (if (fx= _st63570_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj63565_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e63574_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st63570_))))
                          (if _$e63574_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e63574_))
                              (let ()
                                (declare (not safe))
                                (error '"unknown class"
                                       'subtype:
                                       _st63570_
                                       'object:
                                       _obj63565_)))))))
              (if (fx= _t63568_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t63568_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj63565_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj63565_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj63565_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj63565_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj63565_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj63565_ '#!eof))
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
      (lambda (_id63560_)
        (let ((_$e63562_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id63560_ '#f))))
          (if _$e63562_
              _$e63562_
              (let ()
                (declare (not safe))
                (error '"unknown system class" _id63560_))))))
    (define __make-system-class
      (lambda (_id63555_ _super63556_)
        (let ((_klass63558_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id63555_
                  _id63555_
                  _super63556_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id63555_ _klass63558_))
          _klass63558_)))))
