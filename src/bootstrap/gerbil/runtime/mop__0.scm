(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708370113)
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
      (let* ((_slots63347_
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
             (_slot-vector63349_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots63347_))))
             (_slot-table63356_
              (let ((_slot-table63351_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot63353_ _field63354_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63351_
                      _slot63353_
                      _field63354_))
                   (let ((__tmp63496 (symbol->keyword _slot63353_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63351_
                      __tmp63496
                      _field63354_)))
                 _slots63347_
                 (let ((__tmp63497 (length _slots63347_)))
                   (declare (not safe))
                   (iota__1 __tmp63497 '1)))
                _slot-table63351_))
             (_flags63358_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields63364_
              (list->vector
               (apply append
                      (map (lambda (_g6335963361_) (list _g6335963361_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots63347_ '5))))))
             (_properties63366_
              (let ((__tmp63500
                     (let ((__tmp63501
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots63347_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp63501)))
                    (__tmp63498
                     (let ((__tmp63499
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp63499 '()))))
                (declare (not safe))
                (cons __tmp63500 __tmp63498)))
             (_t63368_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags63358_
                 ##type-type
                 _fields63364_
                 '()
                 _slot-vector63349_
                 _slot-table63356_
                 _properties63366_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t63368_ _t63368_))
        _t63368_))
    (define class-type?
      (lambda (_obj63345_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj63345_ class::t.id))))
    (define class-type=?
      (lambda (_x63342_ _y63343_)
        (let ((__tmp63503 (##structure-ref _x63342_ '1 class::t '#f))
              (__tmp63502 (##structure-ref _y63343_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp63503 __tmp63502))))
    (define type-opaque?
      (lambda (_type63340_)
        (let ((__tmp63504
               (let ((__tmp63505
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63340_))))
                 (declare (not safe))
                 (##fxand __tmp63505 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp63504 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type63338_)
        (let ((__tmp63506
               (let ((__tmp63507
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63338_))))
                 (declare (not safe))
                 (##fxand __tmp63507 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63506 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type63336_)
        (let ((__tmp63508
               (let ((__tmp63509
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63336_))))
                 (declare (not safe))
                 (##fxand __tmp63509 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63508 '0))))
    (define class-type-struct?
      (lambda (_klass63334_)
        (let ((__tmp63510
               (let ((__tmp63511
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63334_))))
                 (declare (not safe))
                 (##fxand __tmp63511 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp63510 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass63332_)
        (let ((__tmp63512
               (let ((__tmp63513
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63332_))))
                 (declare (not safe))
                 (##fxand __tmp63513 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp63512 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass63330_)
        (let ((__tmp63514
               (let ((__tmp63515
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63330_))))
                 (declare (not safe))
                 (##fxand __tmp63515 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp63514 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties63296_)
        (map (lambda (_e6329763299_)
               (let* ((_g6330163308_ _e6329763299_)
                      (_E6330363312_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6330163308_))))
                      (_K6330463318_
                       (lambda (_val63315_ _key63316_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key63316_ 'direct-supers:))
                             (let ((__tmp63516 (map class-type-id _val63315_)))
                               (declare (not safe))
                               (cons _key63316_ __tmp63516))
                             (let ()
                               (declare (not safe))
                               (cons _key63316_ _val63315_))))))
                 (if (let () (declare (not safe)) (##pair? _g6330163308_))
                     (let ((_hd6330563321_
                            (let ()
                              (declare (not safe))
                              (##car _g6330163308_)))
                           (_tl6330663323_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6330163308_))))
                       (let* ((_key63326_ _hd6330563321_)
                              (_val63328_ _tl6330663323_))
                         (declare (not safe))
                         (_K6330463318_ _val63328_ _key63326_)))
                     (let () (declare (not safe)) (_E6330363312_)))))
             _properties63296_)))
    (define make-class-type-descriptor
      (lambda (_type-id63195_
               _type-name63196_
               _type-super63197_
               _precedence-list63198_
               _slot-vector63199_
               _properties63200_
               _constructor63201_
               _slot-table63202_
               _methods63203_)
        (letrec ((_make-props!63205_
                  (lambda (_key63265_)
                    (letrec* ((_ht63267_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!63268_
                               (lambda (_ht63289_ _slots63290_)
                                 (for-each
                                  (lambda (_g6329163293_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht63289_
                                       _g6329163293_
                                       '#t)))
                                  _slots63290_)))
                              (_put-alist!63269_
                               (lambda (_ht63278_ _key63279_ _alist63280_)
                                 (let ((_$e63282_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key63279_
                                           _alist63280_))))
                                   (if _$e63282_
                                       ((lambda (_g6328463286_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!63268_
                                             _ht63278_
                                             _g6328463286_)))
                                        _$e63282_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!63269_
                         _ht63267_
                         _key63265_
                         _properties63200_))
                      (for-each
                       (lambda (_mixin63271_)
                         (let ((_alist63273_
                                (##structure-ref
                                 _mixin63271_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist63273_))
                                   (let ((__tmp63518
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key63265_
                                             _alist63273_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp63518)))
                               (let ((__tmp63517
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin63271_))))
                                 (declare (not safe))
                                 (_put-slots!63268_ _ht63267_ __tmp63517))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!63269_
                                  _ht63267_
                                  _key63265_
                                  _alist63273_)))))
                       _precedence-list63198_)
                      _ht63267_))))
          (let* ((_transparent?63207_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63200_)))
                 (_all-slots-printable?63212_
                  (let ((_$e63209_ _transparent?63207_))
                    (if _$e63209_
                        _$e63209_
                        (let ((__tmp63519
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63200_))))
                          (declare (not safe))
                          (eq? '#t __tmp63519)))))
                 (_printable63214_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63212_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63205_ 'print:))
                      '#f))
                 (_all-slots-equalable?63219_
                  (let ((_$e63216_ _transparent?63207_))
                    (if _$e63216_
                        _$e63216_
                        (let ((__tmp63520
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63200_))))
                          (declare (not safe))
                          (eq? '#t __tmp63520)))))
                 (_equalable63221_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63219_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63205_ 'equal:))
                      '#f))
                 (_first-new-field63223_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63197_
                         'gerbil#class::t))
                      (let ((__tmp63521
                             (##structure-ref
                              _type-super63197_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp63521))
                      '1))
                 (_field-info-length63225_
                  (let ((__tmp63522
                         (let ((__tmp63523
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63199_))))
                           (declare (not safe))
                           (##fx- __tmp63523 _first-new-field63223_))))
                    (declare (not safe))
                    (##fx* '3 __tmp63522)))
                 (_field-info63227_ (make-vector _field-info-length63225_ '#f))
                 (_struct?63229_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63200_)))
                 (_final?63231_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63200_)))
                 (_metaclass63239_
                  (let ((_metaclass6323263234_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63200_))))
                    (if _metaclass6323263234_
                        (let ((_metaclass63237_ _metaclass6323263234_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63237_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63195_
                                       'metaclass:
                                       _metaclass63237_)))
                          _metaclass63237_)
                        '#f)))
                 (_opaque?63244_
                  (let ((_$e63241_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63219_))))
                    (if _$e63241_
                        _$e63241_
                        (if _type-super63197_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63197_))
                            '#f))))
                 (_type-flags63246_
                  (let ((__tmp63527 (if _final?63231_ '0 type-flag-extensible))
                        (__tmp63526 (if _opaque?63244_ type-flag-opaque '0))
                        (__tmp63525
                         (if _struct?63229_ class-type-flag-struct '0))
                        (__tmp63524
                         (if _metaclass63239_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp63527
                             __tmp63526
                             __tmp63525
                             __tmp63524))))
            (let _loop63249_ ((_i63251_ _first-new-field63223_) (_j63252_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63252_ _field-info-length63225_))
                  (let* ((_slot63254_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63199_ _i63251_)))
                         (_flags63262_
                          (if _transparent?63207_
                              '0
                              (let ((__tmp63529
                                     (if (or _all-slots-printable?63212_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63214_
                                                _slot63254_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp63528
                                     (if (or _all-slots-equalable?63219_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63221_
                                                _slot63254_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp63529 __tmp63528)))))
                    (vector-set! _field-info63227_ _j63252_ _slot63254_)
                    (vector-set!
                     _field-info63227_
                     (let () (declare (not safe)) (##fx+ _j63252_ '1))
                     _flags63262_)
                    (let ((__tmp63531
                           (let () (declare (not safe)) (##fx+ _i63251_ '1)))
                          (__tmp63530
                           (let () (declare (not safe)) (##fx+ _j63252_ '3))))
                      (declare (not safe))
                      (_loop63249_ __tmp63531 __tmp63530)))
                  '#!void))
            (if _metaclass63239_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63239_
                   _type-id63195_
                   _type-name63196_
                   _type-flags63246_
                   _type-super63197_
                   _field-info63227_
                   _precedence-list63198_
                   _slot-vector63199_
                   _slot-table63202_
                   _properties63200_
                   _constructor63201_
                   _methods63203_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63195_
                   _type-name63196_
                   _type-flags63246_
                   _type-super63197_
                   _field-info63227_
                   _precedence-list63198_
                   _slot-vector63199_
                   _slot-table63202_
                   _properties63200_
                   _constructor63201_
                   _methods63203_)))))))
    (define class-type-id
      (lambda (_klass63193_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63193_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63191_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63191_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63188_ _val63189_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63188_ _val63189_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63183_ _val63185_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63183_
           _val63185_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63181_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63181_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63179_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63179_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63176_ _val63177_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63176_ _val63177_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63171_ _val63173_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63171_
           _val63173_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63169_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63169_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63167_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63167_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63164_ _val63165_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63164_ _val63165_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63159_ _val63161_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63159_
           _val63161_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63157_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63157_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63155_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63155_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63152_ _val63153_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63152_ _val63153_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63147_ _val63149_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63147_
           _val63149_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63145_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63145_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63143_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63143_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63140_ _val63141_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63140_ _val63141_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63135_ _val63137_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63135_
           _val63137_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63133_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63133_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63131_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63131_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63128_ _val63129_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63128_
           _val63129_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63123_ _val63125_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63123_
           _val63125_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63121_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63121_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63119_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63119_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63116_ _val63117_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63116_
           _val63117_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63111_ _val63113_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63111_
           _val63113_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63109_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63109_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63107_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63107_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63104_ _val63105_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63104_ _val63105_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63099_ _val63101_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63099_
           _val63101_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63097_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63097_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63095_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63095_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63092_ _val63093_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63092_ _val63093_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63087_ _val63089_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63087_
           _val63089_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63085_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63085_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63083_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63083_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63080_ _val63081_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63080_
           _val63081_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63075_ _val63077_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63075_
           _val63077_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63073_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63073_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63071_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63071_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63068_ _val63069_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63068_ _val63069_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63063_ _val63065_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63063_
           _val63065_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63061_)
        (cdr (vector->list (##structure-ref _klass63061_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63059_)
        (let ((__tmp63532
               (let ((__tmp63533
                      (##structure-ref _klass63059_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp63533))))
          (declare (not safe))
          (##fx- __tmp63532 '1))))
    (define class-type-seal!
      (lambda (_klass63057_)
        (let ((__tmp63534
               (let ((__tmp63535
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63057_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63535))))
          (declare (not safe))
          (##structure-set!
           _klass63057_
           __tmp63534
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63055_)
        (let ((__tmp63536
               (let ((__tmp63537
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63055_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63537))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63055_
           __tmp63536
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63046_ _maybe-super-struct63047_)
        (let ((_maybe-super-struct-id63049_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63047_))))
          (let _lp63051_ ((_super-struct63053_ _maybe-sub-struct63046_))
            (if (let () (declare (not safe)) (not _super-struct63053_))
                '#f
                (if (let ((__tmp63539
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63053_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63049_ __tmp63539))
                    '#t
                    (let ((__tmp63538
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63053_))))
                      (declare (not safe))
                      (_lp63051_ __tmp63538))))))))
    (define base-struct/1
      (lambda (_klass63044_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63044_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63044_))
                _klass63044_
                (let () (declare (not safe)) (##type-super _klass63044_)))
            (if (let () (declare (not safe)) (not _klass63044_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63044_))))))
    (define base-struct/2
      (lambda (_klass163032_ _klass263033_)
        (let ((_s163035_
               (let () (declare (not safe)) (base-struct/1 _klass163032_)))
              (_s263036_
               (let () (declare (not safe)) (base-struct/1 _klass263033_))))
          (if (or (let () (declare (not safe)) (not _s163035_))
                  (and _s263036_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163035_ _s263036_))))
              _s263036_
              (if (or (let () (declare (not safe)) (not _s263036_))
                      (and _s163035_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263036_ _s163035_))))
                  _s163035_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163032_
                           _klass263033_
                           _s163035_
                           _s263036_)))))))
    (define base-struct/list
      (lambda (_all-supers62916_)
        (let* ((_all-supers6291762942_ _all-supers62916_)
               (_E6292262946_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6291762942_)))))
          (let ((_K6294063029_ (lambda () '#f))
                (_K6293763015_
                 (lambda (_x63013_)
                   (let () (declare (not safe)) (base-struct/1 _x63013_))))
                (_K6293262992_
                 (lambda (_y62989_ _x62990_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x62990_ _y62989_))))
                (_K6292362953_
                 (lambda (_y62950_ _x62951_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x62951_ _y62950_)))))
            (let* ((___match6349163492_
                    (lambda (_hd6292462956_ _tl6292562958_)
                      (let ((_x62961_ _hd6292462956_))
                        (letrec ((_splice-rest6292762963_
                                  (lambda (_rest6293162970_ _y62972_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6293162970_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6292362953_ _y62972_ _x62961_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6292262946_)))))
                                 (_splice-try6292962965_
                                  (lambda (_hd6293062974_
                                           _rest6293162976_
                                           _y6292662977_)
                                    (let ((_y62980_ _hd6293062974_))
                                      (let ((__tmp63541
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6293162976_)))
                                            (__tmp63540
                                             (let ()
                                               (declare (not safe))
                                               (cons _y62980_ _y6292662977_))))
                                        (declare (not safe))
                                        (_splice-loop6292862967_
                                         __tmp63541
                                         __tmp63540)))))
                                 (_splice-loop6292862967_
                                  (lambda (_rest6293162982_ _y6292662983_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6293162982_))
                                        (let ((__tmp63543
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6293162982_))))
                                          (declare (not safe))
                                          (_splice-try6292962965_
                                           __tmp63543
                                           _rest6293162982_
                                           _y6292662983_))
                                        (let ((__tmp63542
                                               (reverse _y6292662983_)))
                                          (declare (not safe))
                                          (_splice-rest6292762963_
                                           _rest6293162982_
                                           __tmp63542))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6292862967_ _tl6292562958_ '()))))))
                   (_try-match6291963025_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6291762942_))
                          (let ((_tl6293963020_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6291762942_)))
                                (_hd6293863018_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6291762942_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6293963020_))
                                (let ((_x63023_ _hd6293863018_))
                                  (declare (not safe))
                                  (base-struct/1 _x63023_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6293963020_))
                                    (let ((_tl6293663004_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6293963020_)))
                                          (_hd6293563002_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6293963020_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6293663004_))
                                          (let ((_x63000_ _hd6293863018_)
                                                (_y63007_ _hd6293563002_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6293262992_
                                               _y63007_
                                               _x63000_)))
                                          (___match6349163492_
                                           _hd6293863018_
                                           _tl6293963020_)))
                                    (___match6349163492_
                                     _hd6293863018_
                                     _tl6293963020_))))
                          (let () (declare (not safe)) (_E6292262946_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6291762942_))
                  (let () (declare (not safe)) (_K6294063029_))
                  (let () (declare (not safe)) (_try-match6291963025_))))))))
    (define base-struct
      (lambda _all-supers62914_
        (let () (declare (not safe)) (base-struct/list _all-supers62914_))))
    (define find-super-constructor
      (lambda (_super62866_)
        (let _lp62868_ ((_rest62870_ _super62866_) (_constructor62871_ '#f))
          (let* ((_rest6287262880_ _rest62870_)
                 (_else6287462888_ (lambda () _constructor62871_))
                 (_K6287662902_
                  (lambda (_rest62891_ _hd62892_)
                    (let ((_$e62894_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd62892_
                              '10
                              class::t
                              '#f))))
                      (if _$e62894_
                          ((lambda (_xconstructor62897_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor62871_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor62871_
                                            _xconstructor62897_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp62868_ _rest62891_ _xconstructor62897_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor62871_
                                          _xconstructor62897_))))
                           _$e62894_)
                          (let ()
                            (declare (not safe))
                            (_lp62868_ _rest62891_ _constructor62871_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6287262880_))
                (let ((_hd6287762905_
                       (let () (declare (not safe)) (##car _rest6287262880_)))
                      (_tl6287862907_
                       (let () (declare (not safe)) (##cdr _rest6287262880_))))
                  (let* ((_hd62910_ _hd6287762905_)
                         (_rest62912_ _tl6287862907_))
                    (declare (not safe))
                    (_K6287662902_ _rest62912_ _hd62910_)))
                (let () (declare (not safe)) (_else6287462888_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list62842_ _direct-slots62843_)
        (let* ((_next-slot62845_ '1)
               (_slot-table62847_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots62849_ '(__class))
               (_process-slot62853_
                (lambda (_slot62851_)
                  (if (let () (declare (not safe)) (symbol? _slot62851_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot62851_)))
                  (if (let ((__tmp63545
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table62847_
                                _slot62851_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp63545 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62847_
                           _slot62851_
                           _next-slot62845_))
                        (let ((__tmp63544 (symbol->keyword _slot62851_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62847_
                           __tmp63544
                           _next-slot62845_))
                        (set! _r-slots62849_
                              (let ()
                                (declare (not safe))
                                (cons _slot62851_ _r-slots62849_)))
                        (set! _next-slot62845_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot62845_ '1))))
                      '#!void)))
               (_process-slots62859_
                (lambda (_g6285462856_)
                  (for-each _process-slot62853_ _g6285462856_))))
          (for-each
           (lambda (_mixin62862_)
             (let ((__tmp63546
                    (let ((__tmp63547
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin62862_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp63547 '()))))
               (declare (not safe))
               (_process-slots62859_ __tmp63546)))
           (reverse _class-precedence-list62842_))
          (let ()
            (declare (not safe))
            (_process-slots62859_ _direct-slots62843_))
          (let ((_slot-vector62864_ (list->vector (reverse _r-slots62849_))))
            (values _slot-vector62864_ _slot-table62847_)))))
    (define make-class-type
      (lambda (_id62804_
               _name62805_
               _direct-supers62806_
               _direct-slots62807_
               _properties62808_
               _constructor62809_)
        (let ((_$e62814_
               (let ((__tmp63548
                      (lambda (_$obj62811_)
                        (let ((__tmp63549
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj62811_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp63549)))))
                 (declare (not safe))
                 (find __tmp63548 _direct-supers62806_))))
          (if _$e62814_
              ((lambda (_g6281662818_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6281662818_)))
               _$e62814_)
              (let ((_$e62821_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers62806_))))
                (if _$e62821_
                    ((lambda (_g6282362825_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6282362825_)))
                     _$e62821_)
                    '#!void))))
        (let ((_g63550_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers62806_))))
          (begin
            (let ((_g63551_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g63550_) (##vector-length _g63550_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g63551_ 2)))
                  (error "Context expects 2 values" _g63551_)))
            (let ((_precedence-list62828_
                   (let () (declare (not safe)) (##vector-ref _g63550_ 0)))
                  (_struct-super62829_
                   (let () (declare (not safe)) (##vector-ref _g63550_ 1))))
              (let ((_g63552_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list62828_
                        _direct-slots62807_))))
                (begin
                  (let ((_g63553_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g63552_)
                               (##vector-length _g63552_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g63553_ 2)))
                        (error "Context expects 2 values" _g63553_)))
                  (let ((_slot-vector62831_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63552_ 0)))
                        (_slot-table62832_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63552_ 1))))
                    (let* ((_properties62834_
                            (let ((__tmp63556
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots62807_)))
                                  (__tmp63554
                                   (let ((__tmp63555
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers62806_))))
                                     (declare (not safe))
                                     (cons __tmp63555 _properties62808_))))
                              (declare (not safe))
                              (cons __tmp63556 __tmp63554)))
                           (_constructor*62839_
                            (let ((_$e62836_ _constructor62809_))
                              (if _$e62836_
                                  _$e62836_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers62806_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id62804_
                         _name62805_
                         _struct-super62829_
                         _precedence-list62828_
                         _slot-vector62831_
                         _properties62834_
                         _constructor*62839_
                         _slot-table62832_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass62802_)
        (let ((__tmp63557
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62802_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass62802_ __tmp63557))))
    (define compute-precedence-list
      (lambda (_direct-supers62800_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers62800_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass62784_)
        (let ((_tid62786_
               (let () (declare (not safe)) (##type-id _klass62784_))))
          (if (let () (declare (not safe)) (class-type-final? _klass62784_))
              (lambda (_g6278762789_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6278762789_ _tid62786_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass62784_))
                  (lambda (_g6279162793_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6279162793_ _tid62786_)))
                  (lambda (_g6279562797_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass62784_ _g6279562797_))))))))
    (define if-class-slot-field
      (lambda (_klass62773_
               _slot62774_
               _if-final62775_
               _if-struct62776_
               _if-struct-field62777_
               _if-class-slot62778_)
        (let ((_field62780_
               (let ((__tmp63558
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass62773_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp63558 _slot62774_ '#f))))
          (if (let () (declare (not safe)) (not _field62780_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass62773_
                       'slot:
                       _slot62774_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass62773_))
                  (_if-final62775_ _klass62773_ _slot62774_ _field62780_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass62773_))
                      (_if-struct62776_ _klass62773_ _slot62774_ _field62780_)
                      (if (let ((_strukt62782_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass62773_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt62782_
                                    'gerbil#class::t))
                                 (let ((__tmp63559
                                        (let ((__tmp63560
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt62782_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp63560))))
                                   (declare (not safe))
                                   (##fx< _field62780_ __tmp63559))))
                          (_if-struct-field62777_
                           _klass62773_
                           _slot62774_
                           _field62780_)
                          (_if-class-slot62778_
                           _klass62773_
                           _slot62774_
                           _field62780_))))))))
    (define make-class-slot-accessor
      (lambda (_klass62770_ _slot62771_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62770_
           _slot62771_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass62767_ _slot62768_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62767_
           _slot62768_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass62764_ _slot62765_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62764_
           _slot62765_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass62761_ _slot62762_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62761_
           _slot62762_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object62745_ _class62746_ _slot62747_)
        (apply error
               '"not an instance"
               'object:
               _object62745_
               'class:
               _class62746_
               (if _slot62747_
                   (let ((__tmp63561
                          (let ()
                            (declare (not safe))
                            (cons _slot62747_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp63561))
                   '()))))
    (define not-an-instance__0
      (lambda (_object62752_ _class62753_)
        (let ((_slot62755_ '#f))
          (declare (not safe))
          (not-an-instance__% _object62752_ _class62753_ _slot62755_))))
    (define not-an-instance
      (lambda _g63563_
        (let ((_g63562_ (let () (declare (not safe)) (##length _g63563_))))
          (cond ((let () (declare (not safe)) (##fx= _g63562_ 2))
                 (apply (lambda (_object62752_ _class62753_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object62752_ _class62753_)))
                        _g63563_))
                ((let () (declare (not safe)) (##fx= _g63562_ 3))
                 (apply (lambda (_object62757_ _class62758_ _slot62759_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object62757_
                             _class62758_
                             _slot62759_)))
                        _g63563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g63563_))))))
    (define make-final-slot-accessor
      (lambda (_klass62738_ _slot62739_ _field62740_)
        (lambda (_obj62742_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj62742_
             _field62740_
             _klass62738_
             _slot62739_)))))
    (define make-final-slot-mutator
      (lambda (_klass62731_ _slot62732_ _field62733_)
        (lambda (_obj62735_ _val62736_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj62735_
             _val62736_
             _field62733_
             _klass62731_
             _slot62732_)))))
    (define make-struct-slot-accessor
      (lambda (_klass62725_ _slot62726_ _field62727_)
        (lambda (_obj62729_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj62729_
             _field62727_
             _klass62725_
             _slot62726_)))))
    (define make-struct-slot-mutator
      (lambda (_klass62718_ _slot62719_ _field62720_)
        (lambda (_obj62722_ _val62723_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj62722_
             _val62723_
             _field62720_
             _klass62718_
             _slot62719_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass62712_ _slot62713_ _field62714_)
        (lambda (_obj62716_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj62716_
             _field62714_
             _klass62712_
             _slot62713_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass62705_ _slot62706_ _field62707_)
        (lambda (_obj62709_ _val62710_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj62709_
             _val62710_
             _field62707_
             _klass62705_
             _slot62706_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass62699_ _slot62700_ _field62701_)
        (lambda (_obj62703_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62699_ _obj62703_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62703_ _field62701_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62703_ _klass62699_ _slot62700_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass62692_ _slot62693_ _field62694_)
        (lambda (_obj62696_ _val62697_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62692_ _obj62696_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62696_ _field62694_ _val62697_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62696_ _klass62692_ _slot62693_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass62686_ _slot62687_ _field62688_)
        (lambda (_obj62690_)
          (if (let ((__tmp63564
                     (let () (declare (not safe)) (##type-id _klass62686_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62690_ __tmp63564))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62690_ _field62688_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62686_ _obj62690_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj62690_ _slot62687_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62690_
                     _klass62686_
                     _slot62687_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass62679_ _slot62680_ _field62681_)
        (lambda (_obj62683_ _val62684_)
          (if (let ((__tmp63565
                     (let () (declare (not safe)) (##type-id _klass62679_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62683_ __tmp63565))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62683_ _field62681_ _val62684_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62679_ _obj62683_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj62683_ _slot62680_ _val62684_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62683_
                     _klass62679_
                     _slot62680_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass62673_ _slot62674_ _field62675_)
        (lambda (_obj62677_)
          (if (let ((__tmp63566
                     (let () (declare (not safe)) (##type-id _klass62673_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62677_ __tmp63566))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62677_ _field62675_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62677_ _slot62674_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass62666_ _slot62667_ _field62668_)
        (lambda (_obj62670_ _val62671_)
          (if (let ((__tmp63567
                     (let () (declare (not safe)) (##type-id _klass62666_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62670_ __tmp63567))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62670_ _field62668_ _val62671_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj62670_ _slot62667_ _val62671_))))))
    (define class-slot-offset
      (lambda (_klass62663_ _slot62664_)
        (let ((__tmp63568
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62663_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp63568 _slot62664_ '#f))))
    (define class-slot-ref
      (lambda (_klass62657_ _obj62658_ _slot62659_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62657_ _obj62658_))
            (let ((_off62661_
                   (let ((__tmp63569 (object-type _obj62658_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63569 _slot62659_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj62658_
               _off62661_
               _klass62657_
               _slot62659_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62658_ _klass62657_)))))
    (define class-slot-set!
      (lambda (_klass62650_ _obj62651_ _slot62652_ _val62653_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62650_ _obj62651_))
            (let ((_off62655_
                   (let ((__tmp63570 (object-type _obj62651_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63570 _slot62652_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj62651_
               _val62653_
               _off62655_
               _klass62650_
               _slot62652_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62651_ _klass62650_)))))
    (define unchecked-field-ref
      (lambda (_obj62647_ _off62648_)
        (let ((__tmp63571
               (let () (declare (not safe)) (##structure-type _obj62647_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj62647_ _off62648_ __tmp63571 '#f))))
    (define unchecked-field-set!
      (lambda (_obj62643_ _off62644_ _val62645_)
        (let ((__tmp63572
               (let () (declare (not safe)) (##structure-type _obj62643_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj62643_
           _val62645_
           _off62644_
           __tmp63572
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj62640_ _slot62641_)
        (let ((__tmp63573
               (let ((__tmp63574
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62640_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63574 _slot62641_))))
          (declare (not safe))
          (unchecked-field-ref _obj62640_ __tmp63573))))
    (define unchecked-slot-set!
      (lambda (_obj62636_ _slot62637_ _val62638_)
        (let ((__tmp63575
               (let ((__tmp63576
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62636_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63576 _slot62637_))))
          (declare (not safe))
          (unchecked-field-set! _obj62636_ __tmp63575 _val62638_))))
    (define slot-ref__%
      (lambda (_obj62612_ _slot62613_ _E62614_)
        (if (object? _obj62612_)
            (let* ((_klass62616_ (object-type _obj62612_))
                   (_$e62619_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62616_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62616_ _slot62613_))
                        '#f)))
              (if _$e62619_
                  ((lambda (_off62622_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj62612_ _off62622_)))
                   _$e62619_)
                  (_E62614_ _obj62612_ _slot62613_)))
            (_E62614_ _obj62612_ _slot62613_))))
    (define slot-ref__0
      (lambda (_obj62627_ _slot62628_)
        (let ((_E62630_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj62627_ _slot62628_ _E62630_))))
    (define slot-ref
      (lambda _g63578_
        (let ((_g63577_ (let () (declare (not safe)) (##length _g63578_))))
          (cond ((let () (declare (not safe)) (##fx= _g63577_ 2))
                 (apply (lambda (_obj62627_ _slot62628_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj62627_ _slot62628_)))
                        _g63578_))
                ((let () (declare (not safe)) (##fx= _g63577_ 3))
                 (apply (lambda (_obj62632_ _slot62633_ _E62634_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj62632_ _slot62633_ _E62634_)))
                        _g63578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g63578_))))))
    (define slot-set!__%
      (lambda (_obj62584_ _slot62585_ _val62586_ _E62587_)
        (if (object? _obj62584_)
            (let* ((_klass62589_ (object-type _obj62584_))
                   (_$e62592_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62589_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62589_ _slot62585_))
                        '#f)))
              (if _$e62592_
                  ((lambda (_off62595_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj62584_
                        _off62595_
                        _val62586_)))
                   _$e62592_)
                  (_E62587_ _obj62584_ _slot62585_)))
            (_E62587_ _obj62584_ _slot62585_))))
    (define slot-set!__0
      (lambda (_obj62600_ _slot62601_ _val62602_)
        (let ((_E62604_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj62600_ _slot62601_ _val62602_ _E62604_))))
    (define slot-set!
      (lambda _g63580_
        (let ((_g63579_ (let () (declare (not safe)) (##length _g63580_))))
          (cond ((let () (declare (not safe)) (##fx= _g63579_ 3))
                 (apply (lambda (_obj62600_ _slot62601_ _val62602_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj62600_ _slot62601_ _val62602_)))
                        _g63580_))
                ((let () (declare (not safe)) (##fx= _g63579_ 4))
                 (apply (lambda (_obj62606_ _slot62607_ _val62608_ _E62609_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj62606_
                             _slot62607_
                             _val62608_
                             _E62609_)))
                        _g63580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g63580_))))))
    (define __slot-error
      (lambda (_obj62580_ _slot62581_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj62580_ 'slot: _slot62581_))))
    (define subclass?
      (lambda (_maybe-sub-class62570_ _maybe-super-class62571_)
        (let* ((_maybe-super-class-id62573_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class62571_)))
               (_$e62575_
                (let ((__tmp63581
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class62570_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id62573_ __tmp63581))))
          (if _$e62575_
              _$e62575_
              (let ((__tmp63583
                     (lambda (_super-class62578_)
                       (let ((__tmp63584
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class62578_))))
                         (declare (not safe))
                         (eq? __tmp63584 _maybe-super-class-id62573_))))
                    (__tmp63582
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class62570_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp63583 __tmp63582))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass62567_ _obj62568_)
        (let ((__tmp63585
               (let () (declare (not safe)) (##type-id _klass62567_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj62568_ __tmp63585))))
    (define struct-instance?
      (lambda (_klass62564_ _obj62565_)
        (let ((__tmp63586
               (let () (declare (not safe)) (##type-id _klass62564_))))
          (declare (not safe))
          (##structure-instance-of? _obj62565_ __tmp63586))))
    (define class-instance?
      (lambda (_klass62559_ _obj62560_)
        (if (object? _obj62560_)
            (let ((_type62562_ (object-type _obj62560_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type62562_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type62562_ _klass62559_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass62554_ _k62555_)
        (let ((_obj62557_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass62554_ _k62555_))))
          (let () (declare (not safe)) (object-fill! _obj62557_ '#f))
          _obj62557_)))
    (define object-fill!
      (lambda (_obj62547_ _fill62548_)
        (let _loop62550_ ((_i62552_
                           (let ((__tmp63588
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj62547_))))
                             (declare (not safe))
                             (##fx- __tmp63588 '1))))
          (if (let () (declare (not safe)) (##fx> _i62552_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj62547_
                   _fill62548_
                   _i62552_
                   '#f
                   '#f))
                (let ((__tmp63587
                       (let () (declare (not safe)) (##fx- _i62552_ '1))))
                  (declare (not safe))
                  (_loop62550_ __tmp63587)))
              _obj62547_))))
    (define new-instance
      (lambda (_klass62545_)
        (let ((__obj63493
               (let ((__tmp63589
                      (let ((__tmp63590
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62545_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp63590))))
                 (declare (not safe))
                 (##make-structure _klass62545_ __tmp63589))))
          (let () (declare (not safe)) (object-fill! __obj63493 '#f))
          __obj63493)))
    (define make-instance
      (lambda (_klass62535_ . _args62536_)
        (let* ((_obj62538_
                (let () (declare (not safe)) (new-instance _klass62535_)))
               (_$e62540_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass62535_ '10 class::t '#f))))
          (if _$e62540_
              ((lambda (_kons-id62543_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass62535_
                    _kons-id62543_
                    _obj62538_
                    _args62536_)))
               _$e62540_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass62535_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass62535_
                     _obj62538_
                     _args62536_))
                  (if (let ((__tmp63595
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass62535_))))
                        (declare (not safe))
                        (not __tmp63595))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass62535_
                         _obj62538_
                         _args62536_))
                      (if (let ((__tmp63593
                                 (let ((__tmp63594
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj62538_))))
                                   (declare (not safe))
                                   (##fx- __tmp63594 '1)))
                                (__tmp63592 (length _args62536_)))
                            (declare (not safe))
                            (##fx= __tmp63593 __tmp63592))
                          (apply ##structure _klass62535_ _args62536_)
                          (let ((__tmp63591
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass62535_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass62535_
                                   'slots:
                                   __tmp63591
                                   'args:
                                   _args62536_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj62532_ . _args62533_)
        (if (let ((__tmp63597 (length _args62533_))
                  (__tmp63596
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj62532_))))
              (declare (not safe))
              (##fx< __tmp63597 __tmp63596))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj62532_ _args62533_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj62532_
                     'args:
                     _args62533_)))))
    (define __struct-instance-init!
      (lambda (_obj62491_ _args62492_)
        (let _lp62494_ ((_k62496_ '1) (_rest62497_ _args62492_))
          (let* ((_rest6249862506_ _rest62497_)
                 (_else6250062514_ (lambda () _obj62491_))
                 (_K6250262520_
                  (lambda (_rest62517_ _hd62518_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj62491_ _k62496_ _hd62518_))
                    (let ((__tmp63598
                           (let () (declare (not safe)) (##fx+ _k62496_ '1))))
                      (declare (not safe))
                      (_lp62494_ __tmp63598 _rest62517_)))))
            (if (let () (declare (not safe)) (##pair? _rest6249862506_))
                (let ((_hd6250362523_
                       (let () (declare (not safe)) (##car _rest6249862506_)))
                      (_tl6250462525_
                       (let () (declare (not safe)) (##cdr _rest6249862506_))))
                  (let* ((_hd62528_ _hd6250362523_)
                         (_rest62530_ _tl6250462525_))
                    (declare (not safe))
                    (_K6250262520_ _rest62530_ _hd62528_)))
                (let () (declare (not safe)) (_else6250062514_)))))))
    (define class-instance-init!
      (lambda (_obj62488_ . _args62489_)
        (let ((__tmp63599 (object-type _obj62488_)))
          (declare (not safe))
          (__class-instance-init! __tmp63599 _obj62488_ _args62489_))))
    (define __class-instance-init!
      (lambda (_klass62432_ _obj62433_ _args62434_)
        (let _lp62436_ ((_rest62438_ _args62434_))
          (let* ((_rest6243962449_ _rest62438_)
                 (_else6244162457_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest62438_))
                        _obj62433_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass62432_
                                 'rest:
                                 _rest62438_)))))
                 (_K6244362469_
                  (lambda (_rest62460_ _val62461_ _key62462_)
                    (let ((_$e62464_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass62432_ _key62462_))))
                      (if _$e62464_
                          ((lambda (_off62467_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj62433_
                                _off62467_
                                _val62461_))
                             (let ()
                               (declare (not safe))
                               (_lp62436_ _rest62460_)))
                           _$e62464_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass62432_
                                   'slot:
                                   _key62462_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6243962449_))
                (let ((_hd6244462472_
                       (let () (declare (not safe)) (##car _rest6243962449_)))
                      (_tl6244562474_
                       (let () (declare (not safe)) (##cdr _rest6243962449_))))
                  (let ((_key62477_ _hd6244462472_))
                    (if (let () (declare (not safe)) (##pair? _tl6244562474_))
                        (let ((_hd6244662479_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6244562474_)))
                              (_tl6244762481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6244562474_))))
                          (let* ((_val62484_ _hd6244662479_)
                                 (_rest62486_ _tl6244762481_))
                            (declare (not safe))
                            (_K6244362469_ _rest62486_ _val62484_ _key62477_)))
                        (let () (declare (not safe)) (_else6244162457_)))))
                (let () (declare (not safe)) (_else6244162457_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass62428_ _obj62429_ _args62430_)
        (apply call-method
               _klass62428_
               'instance-init!
               _obj62429_
               _args62430_)))
    (define constructor-init!
      (lambda (_klass62423_ _kons-id62424_ _obj62425_ . _args62426_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass62423_
           _kons-id62424_
           _obj62425_
           _args62426_))))
    (define __constructor-init!
      (lambda (_klass62413_ _kons-id62414_ _obj62415_ _args62416_)
        (let ((_$e62418_
               (let ()
                 (declare (not safe))
                 (__find-method _klass62413_ _obj62415_ _kons-id62414_))))
          (if _$e62418_
              ((lambda (_kons62421_)
                 (apply _kons62421_ _obj62415_ _args62416_)
                 _obj62415_)
               _$e62418_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass62413_
                       'method:
                       _kons-id62414_))))))
    (define struct-copy
      (lambda (_struct62411_)
        (if (let () (declare (not safe)) (##structure? _struct62411_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct62411_)))
        (let () (declare (not safe)) (##structure-copy _struct62411_))))
    (define struct->list
      (lambda (_obj62409_)
        (if (object? _obj62409_)
            (let () (declare (not safe)) (##vector->list _obj62409_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62409_)))))
    (define class->list
      (lambda (_obj62396_)
        (if (object? _obj62396_)
            (let ((_klass62398_ (object-type _obj62396_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass62398_ 'gerbil#class::t))
                  (let ((_slot-vector62400_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass62398_
                            '7
                            class::t
                            '#f))))
                    (let _loop62402_ ((_index62404_
                                       (let ((__tmp63605
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector62400_))))
                                         (declare (not safe))
                                         (##fx- __tmp63605 '1)))
                                      (_plist62405_ '()))
                      (if (let () (declare (not safe)) (##fx< _index62404_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass62398_ _plist62405_))
                          (let ((_slot62407_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector62400_
                                    _index62404_))))
                            (let ((__tmp63604
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index62404_ '1)))
                                  (__tmp63600
                                   (let ((__tmp63603
                                          (symbol->keyword _slot62407_))
                                         (__tmp63601
                                          (let ((__tmp63602
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj62396_
                                                    _index62404_))))
                                            (declare (not safe))
                                            (cons __tmp63602 _plist62405_))))
                                     (declare (not safe))
                                     (cons __tmp63603 __tmp63601))))
                              (declare (not safe))
                              (_loop62402_ __tmp63604 __tmp63600))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj62396_
                           'class:
                           _klass62398_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62396_)))))
    (define call-method
      (lambda (_obj62387_ _id62388_ . _args62389_)
        (let ((_$e62391_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62387_ _id62388_))))
          (if _$e62391_
              ((lambda (_method62394_)
                 (apply _method62394_ _obj62387_ _args62389_))
               _$e62391_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj62387_
                       'method:
                       _id62388_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj62384_ _id62385_)
        (if (object? _obj62384_)
            (let ((__tmp63606 (object-type _obj62384_)))
              (declare (not safe))
              (find-method __tmp63606 _obj62384_ _id62385_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj62378_ _id62379_)
        (let ((_$e62381_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62378_ _id62379_))))
          (if _$e62381_
              _$e62381_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj62378_
                       'method:
                       _id62379_))))))
    (define bound-method-ref
      (lambda (_obj62368_ _id62369_)
        (let ((_$e62371_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62368_ _id62369_))))
          (if _$e62371_
              ((lambda (_method62374_)
                 (lambda _args62376_
                   (apply _method62374_ _obj62368_ _args62376_)))
               _$e62371_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj62361_ _id62362_)
        (let ((_method62364_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj62361_ _id62362_))))
          (lambda _args62366_ (apply _method62364_ _obj62361_ _args62366_)))))
    (define find-method
      (lambda (_klass62357_ _obj62358_ _id62359_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62357_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62357_ _obj62358_ _id62359_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass62357_ _obj62358_ _id62359_)))))
    (define __find-method
      (lambda (_klass62350_ _obj62351_ _id62352_)
        (let ((_$e62354_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass62350_ _obj62351_ _id62352_))))
          (if _$e62354_
              _$e62354_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62350_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass62350_ _obj62351_ _id62352_)))))))
    (define class-find-method
      (lambda (_klass62346_ _obj62347_ _id62348_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62346_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62346_ _obj62347_ _id62348_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins62338_ _obj62339_ _id62340_)
        (let ((__tmp63607
               (lambda (_g6234162343_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6234162343_ _obj62339_ _id62340_)))))
          (declare (not safe))
          (ormap1 __tmp63607 _mixins62338_))))
    (define builtin-find-method
      (lambda (_klass62331_ _obj62332_ _id62333_)
        (if (let () (declare (not safe)) (##type? _klass62331_))
            (let ((_$e62335_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass62331_ _obj62332_ _id62333_))))
              (if _$e62335_
                  _$e62335_
                  (let ((__tmp63608
                         (let ()
                           (declare (not safe))
                           (##type-super _klass62331_))))
                    (declare (not safe))
                    (builtin-find-method __tmp63608 _obj62332_ _id62333_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass62308_ _obj62309_ _id62310_)
        (letrec ((_metaclass-resolve-method62312_
                  (lambda ()
                    (let ((__method63494
                           (let ()
                             (declare (not safe))
                             (method-ref _klass62308_ 'direct-method-ref))))
                      (if __method63494
                          (__method63494 _klass62308_ _obj62309_ _id62310_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62308_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!62313_
                  (lambda ()
                    (let ((_method62328_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method62312_))))
                      (let ((__tmp63610
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62308_
                                '11
                                class::t
                                '#f)))
                            (__tmp63609 (if _method62328_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp63610 _id62310_ __tmp63609))
                      _method62328_))))
          (let ((_$e62315_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass62308_ '11 class::t '#f))))
            (if _$e62315_
                ((lambda (_ht62318_)
                   (let ((_method62320_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht62318_ _id62310_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method62320_))
                         _method62320_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass62308_))
                             (let ((_$e62322_ _method62320_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e62322_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method62312_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e62322_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!62313_)))))
                             '#f))))
                 _$e62315_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass62308_))
                    (let ((_tab62325_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62308_
                         _tab62325_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!62313_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass62304_ _obj62305_ _id62306_)
        (let ((__tmp63611 (##structure-ref _klass62304_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp63611 _obj62305_ _id62306_))))
    (define builtin-method-ref
      (lambda (_klass62295_ _obj62296_ _id62297_)
        (let ((_$e62299_
               (let ((__tmp63612
                      (let () (declare (not safe)) (##type-id _klass62295_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp63612 '#f))))
          (if _$e62299_
              ((lambda (_mtab62302_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab62302_ _id62297_ '#f)))
               _$e62299_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62261_ _id62262_ _proc62263_ _rebind?62264_)
        (letrec ((_bind!62266_
                  (lambda (_ht62279_)
                    (if (and (let () (declare (not safe)) (not _rebind?62264_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht62279_ _id62262_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62261_
                                 'method:
                                 _id62262_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht62279_
                           _id62262_
                           _proc62263_))))))
          (if (let () (declare (not safe)) (procedure? _proc62263_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62263_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62261_ 'gerbil#class::t))
              (let ((_ht62268_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62261_
                        '11
                        class::t
                        '#f))))
                (if _ht62268_
                    (let () (declare (not safe)) (_bind!62266_ _ht62268_))
                    (let ((_ht62270_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62261_
                         _ht62270_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!62266_ _ht62270_)))))
              (if (let () (declare (not safe)) (##type? _klass62261_))
                  (let ((_ht62277_
                         (let ((_$e62272_
                                (let ((__tmp63613
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62261_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp63613
                                   '#f))))
                           (if _$e62272_
                               _$e62272_
                               (let ((_ht62275_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp63614
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62261_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp63614
                                    _ht62275_))
                                 _ht62275_)))))
                    (declare (not safe))
                    (_bind!62266_ _ht62277_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62261_)))))))
    (define bind-method!__0
      (lambda (_klass62284_ _id62285_ _proc62286_)
        (let ((_rebind?62288_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass62284_
           _id62285_
           _proc62286_
           _rebind?62288_))))
    (define bind-method!
      (lambda _g63616_
        (let ((_g63615_ (let () (declare (not safe)) (##length _g63616_))))
          (cond ((let () (declare (not safe)) (##fx= _g63615_ 3))
                 (apply (lambda (_klass62284_ _id62285_ _proc62286_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass62284_
                             _id62285_
                             _proc62286_)))
                        _g63616_))
                ((let () (declare (not safe)) (##fx= _g63615_ 4))
                 (apply (lambda (_klass62290_
                                 _id62291_
                                 _proc62292_
                                 _rebind?62293_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass62290_
                             _id62291_
                             _proc62292_
                             _rebind?62293_)))
                        _g63616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g63616_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc62257_ _specializer62258_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc62257_
           _specializer62258_))))
    (define seal-class!
      (lambda (_klass62224_)
        (letrec ((_collect-methods!62226_
                  (lambda (_mtab62242_)
                    (letrec ((_merge!62244_
                              (lambda (_tab62252_)
                                (let ((__tmp63617
                                       (lambda (_id62254_ _proc62255_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab62242_
                                            _id62254_
                                            _proc62255_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab62252_ __tmp63617))))
                             (_collect-direct-methods!62245_
                              (lambda (_klass62247_)
                                (let ((_$e62249_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass62247_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e62249_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!62244_ _$e62249_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!62245_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass62224_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62224_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62224_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass62224_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot seal non-final class" _klass62224_)))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass62224_))
                        (let ((__method63495
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass62224_ 'seal-class!))))
                          (if __method63495
                              (__method63495 _klass62224_)
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       _klass62224_
                                       'seal-class!))))
                        (if (let ((__tmp63624
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass62224_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp63624))
                            (let ()
                              (declare (not safe))
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _klass62224_))
                            (let ((_vtab62228_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0)))
                                  (_mtab62229_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!62226_ _mtab62229_))
                              (let ((__tmp63618
                                     (lambda (_id62231_ _proc62232_)
                                       (let ((_$e62234_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc62232_
                                                 '#f))))
                                         (if _$e62234_
                                             ((lambda (_specializer62237_)
                                                (let ((_proc62239_
                                                       (_specializer62237_
                                                        _klass62224_))
                                                      (_gid62240_
                                                       (let ((__tmp63619
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass62224_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp63619 '"::[" _id62231_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp63620
                                                               (let ((__tmp63621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63622
                                     (let ((__tmp63623
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc62239_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp63623))))
                                (declare (not safe))
                                (cons __tmp63622 '()))))
                         (declare (not safe))
                         (cons _gid62240_ __tmp63621))))
                  (declare (not safe))
                  (cons 'def __tmp63620)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab62228_
                                                     _id62231_
                                                     _proc62239_))))
                                              _$e62234_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab62228_
                                                _id62231_
                                                _proc62232_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab62229_ __tmp63618))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass62224_
                                 _vtab62228_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass62224_))))
              '#!void))))
    (define next-method
      (lambda (_subklass62173_ _obj62174_ _id62175_)
        (let ((_klass62177_ (object-type _obj62174_))
              (_type-id62178_
               (let () (declare (not safe)) (##type-id _subklass62173_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62177_ 'gerbil#class::t))
              (let _lp62180_ ((_rest62182_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62177_))))
                (let* ((_rest6218362191_ _rest62182_)
                       (_else6218562199_ (lambda () '#f))
                       (_K6218762205_
                        (lambda (_rest62202_ _klass62203_)
                          (if (let ((__tmp63627
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62203_))))
                                (declare (not safe))
                                (eq? _type-id62178_ __tmp63627))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62202_
                                 _obj62174_
                                 _id62175_))
                              (let ()
                                (declare (not safe))
                                (_lp62180_ _rest62202_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6218362191_))
                      (let ((_hd6218862208_
                             (let ()
                               (declare (not safe))
                               (##car _rest6218362191_)))
                            (_tl6218962210_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6218362191_))))
                        (let* ((_klass62213_ _hd6218862208_)
                               (_rest62215_ _tl6218962210_))
                          (declare (not safe))
                          (_K6218762205_ _rest62215_ _klass62213_)))
                      (let () (declare (not safe)) (_else6218562199_)))))
              (if (let () (declare (not safe)) (##type? _klass62177_))
                  (let _lp62217_ ((_klass62219_ _klass62177_))
                    (if (let ((__tmp63626
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62219_))))
                          (declare (not safe))
                          (eq? _type-id62178_ __tmp63626))
                        (let ((__tmp63625
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62219_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp63625
                           _obj62174_
                           _id62175_))
                        (let ((_$e62221_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62219_))))
                          (if _$e62221_
                              (let ()
                                (declare (not safe))
                                (_lp62217_ _$e62221_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62163_ _obj62164_ _id62165_ . _args62166_)
        (let ((_$e62168_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62163_ _obj62164_ _id62165_))))
          (if _$e62168_
              ((lambda (_methodf62171_)
                 (apply _methodf62171_ _obj62164_ _args62166_))
               _$e62168_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62164_
                       'method:
                       _id62165_))))))
    (define write-style (lambda (_we62161_) (macro-writeenv-style _we62161_)))
    (define write-object
      (lambda (_we62153_ _obj62154_)
        (let ((_$e62156_
               (let () (declare (not safe)) (method-ref _obj62154_ ':wr))))
          (if _$e62156_
              ((lambda (_method62159_) (_method62159_ _obj62154_ _we62153_))
               _$e62156_)
              (let ()
                (declare (not safe))
                (##default-wr _we62153_ _obj62154_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
