(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708387687)
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
      (let* ((_slots63359_
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
             (_slot-vector63361_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots63359_))))
             (_slot-table63368_
              (let ((_slot-table63363_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot63365_ _field63366_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63363_
                      _slot63365_
                      _field63366_))
                   (let ((__tmp63508 (symbol->keyword _slot63365_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63363_
                      __tmp63508
                      _field63366_)))
                 _slots63359_
                 (let ((__tmp63509 (length _slots63359_)))
                   (declare (not safe))
                   (iota__1 __tmp63509 '1)))
                _slot-table63363_))
             (_flags63370_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields63376_
              (list->vector
               (apply append
                      (map (lambda (_g6337163373_) (list _g6337163373_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots63359_ '5))))))
             (_properties63378_
              (let ((__tmp63512
                     (let ((__tmp63513
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots63359_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp63513)))
                    (__tmp63510
                     (let ((__tmp63511
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp63511 '()))))
                (declare (not safe))
                (cons __tmp63512 __tmp63510)))
             (_t63380_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags63370_
                 ##type-type
                 _fields63376_
                 '()
                 _slot-vector63361_
                 _slot-table63368_
                 _properties63378_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t63380_ _t63380_))
        _t63380_))
    (define class-type?
      (lambda (_obj63357_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj63357_ class::t.id))))
    (define class-type=?
      (lambda (_x63354_ _y63355_)
        (let ((__tmp63515 (##structure-ref _x63354_ '1 class::t '#f))
              (__tmp63514 (##structure-ref _y63355_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp63515 __tmp63514))))
    (define type-opaque?
      (lambda (_type63352_)
        (let ((__tmp63516
               (let ((__tmp63517
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63352_))))
                 (declare (not safe))
                 (##fxand __tmp63517 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp63516 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type63350_)
        (let ((__tmp63518
               (let ((__tmp63519
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63350_))))
                 (declare (not safe))
                 (##fxand __tmp63519 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63518 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type63348_)
        (let ((__tmp63520
               (let ((__tmp63521
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63348_))))
                 (declare (not safe))
                 (##fxand __tmp63521 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63520 '0))))
    (define class-type-struct?
      (lambda (_klass63346_)
        (let ((__tmp63522
               (let ((__tmp63523
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63346_))))
                 (declare (not safe))
                 (##fxand __tmp63523 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp63522 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass63344_)
        (let ((__tmp63524
               (let ((__tmp63525
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63344_))))
                 (declare (not safe))
                 (##fxand __tmp63525 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp63524 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass63342_)
        (let ((__tmp63526
               (let ((__tmp63527
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63342_))))
                 (declare (not safe))
                 (##fxand __tmp63527 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp63526 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties63308_)
        (map (lambda (_e6330963311_)
               (let* ((_g6331363320_ _e6330963311_)
                      (_E6331563324_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6331363320_))))
                      (_K6331663330_
                       (lambda (_val63327_ _key63328_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key63328_ 'direct-supers:))
                             (let ((__tmp63528 (map class-type-id _val63327_)))
                               (declare (not safe))
                               (cons _key63328_ __tmp63528))
                             (let ()
                               (declare (not safe))
                               (cons _key63328_ _val63327_))))))
                 (if (let () (declare (not safe)) (##pair? _g6331363320_))
                     (let ((_hd6331763333_
                            (let ()
                              (declare (not safe))
                              (##car _g6331363320_)))
                           (_tl6331863335_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6331363320_))))
                       (let* ((_key63338_ _hd6331763333_)
                              (_val63340_ _tl6331863335_))
                         (declare (not safe))
                         (_K6331663330_ _val63340_ _key63338_)))
                     (let () (declare (not safe)) (_E6331563324_)))))
             _properties63308_)))
    (define make-class-type-descriptor
      (lambda (_type-id63207_
               _type-name63208_
               _type-super63209_
               _precedence-list63210_
               _slot-vector63211_
               _properties63212_
               _constructor63213_
               _slot-table63214_
               _methods63215_)
        (letrec ((_make-props!63217_
                  (lambda (_key63277_)
                    (letrec* ((_ht63279_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!63280_
                               (lambda (_ht63301_ _slots63302_)
                                 (for-each
                                  (lambda (_g6330363305_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht63301_
                                       _g6330363305_
                                       '#t)))
                                  _slots63302_)))
                              (_put-alist!63281_
                               (lambda (_ht63290_ _key63291_ _alist63292_)
                                 (let ((_$e63294_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key63291_
                                           _alist63292_))))
                                   (if _$e63294_
                                       ((lambda (_g6329663298_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!63280_
                                             _ht63290_
                                             _g6329663298_)))
                                        _$e63294_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!63281_
                         _ht63279_
                         _key63277_
                         _properties63212_))
                      (for-each
                       (lambda (_mixin63283_)
                         (let ((_alist63285_
                                (##structure-ref
                                 _mixin63283_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist63285_))
                                   (let ((__tmp63530
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key63277_
                                             _alist63285_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp63530)))
                               (let ((__tmp63529
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin63283_))))
                                 (declare (not safe))
                                 (_put-slots!63280_ _ht63279_ __tmp63529))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!63281_
                                  _ht63279_
                                  _key63277_
                                  _alist63285_)))))
                       _precedence-list63210_)
                      _ht63279_))))
          (let* ((_transparent?63219_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63212_)))
                 (_all-slots-printable?63224_
                  (let ((_$e63221_ _transparent?63219_))
                    (if _$e63221_
                        _$e63221_
                        (let ((__tmp63531
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63212_))))
                          (declare (not safe))
                          (eq? '#t __tmp63531)))))
                 (_printable63226_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63224_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63217_ 'print:))
                      '#f))
                 (_all-slots-equalable?63231_
                  (let ((_$e63228_ _transparent?63219_))
                    (if _$e63228_
                        _$e63228_
                        (let ((__tmp63532
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63212_))))
                          (declare (not safe))
                          (eq? '#t __tmp63532)))))
                 (_equalable63233_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63231_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63217_ 'equal:))
                      '#f))
                 (_first-new-field63235_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63209_
                         'gerbil#class::t))
                      (let ((__tmp63533
                             (##structure-ref
                              _type-super63209_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp63533))
                      '1))
                 (_field-info-length63237_
                  (let ((__tmp63534
                         (let ((__tmp63535
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63211_))))
                           (declare (not safe))
                           (##fx- __tmp63535 _first-new-field63235_))))
                    (declare (not safe))
                    (##fx* '3 __tmp63534)))
                 (_field-info63239_ (make-vector _field-info-length63237_ '#f))
                 (_struct?63241_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63212_)))
                 (_final?63243_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63212_)))
                 (_metaclass63251_
                  (let ((_metaclass6324463246_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63212_))))
                    (if _metaclass6324463246_
                        (let ((_metaclass63249_ _metaclass6324463246_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63249_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63207_
                                       'metaclass:
                                       _metaclass63249_)))
                          _metaclass63249_)
                        '#f)))
                 (_opaque?63256_
                  (let ((_$e63253_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63231_))))
                    (if _$e63253_
                        _$e63253_
                        (if _type-super63209_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63209_))
                            '#f))))
                 (_type-flags63258_
                  (let ((__tmp63539 (if _final?63243_ '0 type-flag-extensible))
                        (__tmp63538 (if _opaque?63256_ type-flag-opaque '0))
                        (__tmp63537
                         (if _struct?63241_ class-type-flag-struct '0))
                        (__tmp63536
                         (if _metaclass63251_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp63539
                             __tmp63538
                             __tmp63537
                             __tmp63536))))
            (let _loop63261_ ((_i63263_ _first-new-field63235_) (_j63264_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63264_ _field-info-length63237_))
                  (let* ((_slot63266_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63211_ _i63263_)))
                         (_flags63274_
                          (if _transparent?63219_
                              '0
                              (let ((__tmp63541
                                     (if (or _all-slots-printable?63224_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63226_
                                                _slot63266_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp63540
                                     (if (or _all-slots-equalable?63231_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63233_
                                                _slot63266_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp63541 __tmp63540)))))
                    (vector-set! _field-info63239_ _j63264_ _slot63266_)
                    (vector-set!
                     _field-info63239_
                     (let () (declare (not safe)) (##fx+ _j63264_ '1))
                     _flags63274_)
                    (let ((__tmp63543
                           (let () (declare (not safe)) (##fx+ _i63263_ '1)))
                          (__tmp63542
                           (let () (declare (not safe)) (##fx+ _j63264_ '3))))
                      (declare (not safe))
                      (_loop63261_ __tmp63543 __tmp63542)))
                  '#!void))
            (if _metaclass63251_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63251_
                   _type-id63207_
                   _type-name63208_
                   _type-flags63258_
                   _type-super63209_
                   _field-info63239_
                   _precedence-list63210_
                   _slot-vector63211_
                   _slot-table63214_
                   _properties63212_
                   _constructor63213_
                   _methods63215_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63207_
                   _type-name63208_
                   _type-flags63258_
                   _type-super63209_
                   _field-info63239_
                   _precedence-list63210_
                   _slot-vector63211_
                   _slot-table63214_
                   _properties63212_
                   _constructor63213_
                   _methods63215_)))))))
    (define class-type-id
      (lambda (_klass63205_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63205_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63203_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63203_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63200_ _val63201_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63200_ _val63201_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63195_ _val63197_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63195_
           _val63197_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63193_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63193_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63191_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63191_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63188_ _val63189_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63188_ _val63189_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63183_ _val63185_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63183_
           _val63185_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63181_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63181_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63179_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63179_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63176_ _val63177_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63176_ _val63177_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63171_ _val63173_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63171_
           _val63173_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63169_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63169_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63167_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63167_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63164_ _val63165_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63164_ _val63165_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63159_ _val63161_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63159_
           _val63161_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63157_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63157_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63155_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63155_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63152_ _val63153_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63152_ _val63153_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63147_ _val63149_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63147_
           _val63149_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63145_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63145_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63143_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63143_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63140_ _val63141_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63140_
           _val63141_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63135_ _val63137_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63135_
           _val63137_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63133_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63133_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63131_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63131_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63128_ _val63129_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63128_
           _val63129_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63123_ _val63125_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63123_
           _val63125_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63121_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63121_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63119_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63119_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63116_ _val63117_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63116_ _val63117_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63111_ _val63113_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63111_
           _val63113_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63109_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63109_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63107_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63107_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63104_ _val63105_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63104_ _val63105_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63099_ _val63101_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63099_
           _val63101_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63097_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63097_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63095_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63095_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63092_ _val63093_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63092_
           _val63093_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63087_ _val63089_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63087_
           _val63089_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63085_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63085_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63083_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63083_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63080_ _val63081_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63080_ _val63081_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63075_ _val63077_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63075_
           _val63077_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63073_)
        (cdr (vector->list (##structure-ref _klass63073_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63071_)
        (let ((__tmp63544
               (let ((__tmp63545
                      (##structure-ref _klass63071_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp63545))))
          (declare (not safe))
          (##fx- __tmp63544 '1))))
    (define class-type-seal!
      (lambda (_klass63069_)
        (let ((__tmp63546
               (let ((__tmp63547
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63069_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63547))))
          (declare (not safe))
          (##structure-set!
           _klass63069_
           __tmp63546
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63067_)
        (let ((__tmp63548
               (let ((__tmp63549
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63067_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63549))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63067_
           __tmp63548
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63058_ _maybe-super-struct63059_)
        (let ((_maybe-super-struct-id63061_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63059_))))
          (let _lp63063_ ((_super-struct63065_ _maybe-sub-struct63058_))
            (if (let () (declare (not safe)) (not _super-struct63065_))
                '#f
                (if (let ((__tmp63551
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63065_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63061_ __tmp63551))
                    '#t
                    (let ((__tmp63550
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63065_))))
                      (declare (not safe))
                      (_lp63063_ __tmp63550))))))))
    (define base-struct/1
      (lambda (_klass63056_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63056_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63056_))
                _klass63056_
                (let () (declare (not safe)) (##type-super _klass63056_)))
            (if (let () (declare (not safe)) (not _klass63056_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63056_))))))
    (define base-struct/2
      (lambda (_klass163044_ _klass263045_)
        (let ((_s163047_
               (let () (declare (not safe)) (base-struct/1 _klass163044_)))
              (_s263048_
               (let () (declare (not safe)) (base-struct/1 _klass263045_))))
          (if (or (let () (declare (not safe)) (not _s163047_))
                  (and _s263048_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163047_ _s263048_))))
              _s263048_
              (if (or (let () (declare (not safe)) (not _s263048_))
                      (and _s163047_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263048_ _s163047_))))
                  _s163047_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163044_
                           _klass263045_
                           _s163047_
                           _s263048_)))))))
    (define base-struct/list
      (lambda (_all-supers62928_)
        (let* ((_all-supers6292962954_ _all-supers62928_)
               (_E6293462958_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6292962954_)))))
          (let ((_K6295263041_ (lambda () '#f))
                (_K6294963027_
                 (lambda (_x63025_)
                   (let () (declare (not safe)) (base-struct/1 _x63025_))))
                (_K6294463004_
                 (lambda (_y63001_ _x63002_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x63002_ _y63001_))))
                (_K6293562965_
                 (lambda (_y62962_ _x62963_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x62963_ _y62962_)))))
            (let* ((___match6350363504_
                    (lambda (_hd6293662968_ _tl6293762970_)
                      (let ((_x62973_ _hd6293662968_))
                        (letrec ((_splice-rest6293962975_
                                  (lambda (_rest6294362982_ _y62984_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6294362982_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6293562965_ _y62984_ _x62973_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6293462958_)))))
                                 (_splice-try6294162977_
                                  (lambda (_hd6294262986_
                                           _rest6294362988_
                                           _y6293862989_)
                                    (let ((_y62992_ _hd6294262986_))
                                      (let ((__tmp63553
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6294362988_)))
                                            (__tmp63552
                                             (let ()
                                               (declare (not safe))
                                               (cons _y62992_ _y6293862989_))))
                                        (declare (not safe))
                                        (_splice-loop6294062979_
                                         __tmp63553
                                         __tmp63552)))))
                                 (_splice-loop6294062979_
                                  (lambda (_rest6294362994_ _y6293862995_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6294362994_))
                                        (let ((__tmp63555
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6294362994_))))
                                          (declare (not safe))
                                          (_splice-try6294162977_
                                           __tmp63555
                                           _rest6294362994_
                                           _y6293862995_))
                                        (let ((__tmp63554
                                               (reverse _y6293862995_)))
                                          (declare (not safe))
                                          (_splice-rest6293962975_
                                           _rest6294362994_
                                           __tmp63554))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6294062979_ _tl6293762970_ '()))))))
                   (_try-match6293163037_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6292962954_))
                          (let ((_tl6295163032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6292962954_)))
                                (_hd6295063030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6292962954_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6295163032_))
                                (let ((_x63035_ _hd6295063030_))
                                  (declare (not safe))
                                  (base-struct/1 _x63035_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6295163032_))
                                    (let ((_tl6294863016_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6295163032_)))
                                          (_hd6294763014_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6295163032_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6294863016_))
                                          (let ((_x63012_ _hd6295063030_)
                                                (_y63019_ _hd6294763014_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6294463004_
                                               _y63019_
                                               _x63012_)))
                                          (___match6350363504_
                                           _hd6295063030_
                                           _tl6295163032_)))
                                    (___match6350363504_
                                     _hd6295063030_
                                     _tl6295163032_))))
                          (let () (declare (not safe)) (_E6293462958_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6292962954_))
                  (let () (declare (not safe)) (_K6295263041_))
                  (let () (declare (not safe)) (_try-match6293163037_))))))))
    (define base-struct
      (lambda _all-supers62926_
        (let () (declare (not safe)) (base-struct/list _all-supers62926_))))
    (define find-super-constructor
      (lambda (_super62878_)
        (let _lp62880_ ((_rest62882_ _super62878_) (_constructor62883_ '#f))
          (let* ((_rest6288462892_ _rest62882_)
                 (_else6288662900_ (lambda () _constructor62883_))
                 (_K6288862914_
                  (lambda (_rest62903_ _hd62904_)
                    (let ((_$e62906_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd62904_
                              '10
                              class::t
                              '#f))))
                      (if _$e62906_
                          ((lambda (_xconstructor62909_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor62883_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor62883_
                                            _xconstructor62909_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp62880_ _rest62903_ _xconstructor62909_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor62883_
                                          _xconstructor62909_))))
                           _$e62906_)
                          (let ()
                            (declare (not safe))
                            (_lp62880_ _rest62903_ _constructor62883_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6288462892_))
                (let ((_hd6288962917_
                       (let () (declare (not safe)) (##car _rest6288462892_)))
                      (_tl6289062919_
                       (let () (declare (not safe)) (##cdr _rest6288462892_))))
                  (let* ((_hd62922_ _hd6288962917_)
                         (_rest62924_ _tl6289062919_))
                    (declare (not safe))
                    (_K6288862914_ _rest62924_ _hd62922_)))
                (let () (declare (not safe)) (_else6288662900_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list62854_ _direct-slots62855_)
        (let* ((_next-slot62857_ '1)
               (_slot-table62859_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots62861_ '(__class))
               (_process-slot62865_
                (lambda (_slot62863_)
                  (if (let () (declare (not safe)) (symbol? _slot62863_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot62863_)))
                  (if (let ((__tmp63557
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table62859_
                                _slot62863_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp63557 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62859_
                           _slot62863_
                           _next-slot62857_))
                        (let ((__tmp63556 (symbol->keyword _slot62863_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62859_
                           __tmp63556
                           _next-slot62857_))
                        (set! _r-slots62861_
                              (let ()
                                (declare (not safe))
                                (cons _slot62863_ _r-slots62861_)))
                        (set! _next-slot62857_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot62857_ '1))))
                      '#!void)))
               (_process-slots62871_
                (lambda (_g6286662868_)
                  (for-each _process-slot62865_ _g6286662868_))))
          (for-each
           (lambda (_mixin62874_)
             (let ((__tmp63558
                    (let ((__tmp63559
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin62874_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp63559 '()))))
               (declare (not safe))
               (_process-slots62871_ __tmp63558)))
           (reverse _class-precedence-list62854_))
          (let ()
            (declare (not safe))
            (_process-slots62871_ _direct-slots62855_))
          (let ((_slot-vector62876_ (list->vector (reverse _r-slots62861_))))
            (values _slot-vector62876_ _slot-table62859_)))))
    (define make-class-type
      (lambda (_id62816_
               _name62817_
               _direct-supers62818_
               _direct-slots62819_
               _properties62820_
               _constructor62821_)
        (let ((_$e62826_
               (let ((__tmp63560
                      (lambda (_$obj62823_)
                        (let ((__tmp63561
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj62823_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp63561)))))
                 (declare (not safe))
                 (find __tmp63560 _direct-supers62818_))))
          (if _$e62826_
              ((lambda (_g6282862830_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6282862830_)))
               _$e62826_)
              (let ((_$e62833_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers62818_))))
                (if _$e62833_
                    ((lambda (_g6283562837_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6283562837_)))
                     _$e62833_)
                    '#!void))))
        (let ((_g63562_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers62818_))))
          (begin
            (let ((_g63563_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g63562_) (##vector-length _g63562_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g63563_ 2)))
                  (error "Context expects 2 values" _g63563_)))
            (let ((_precedence-list62840_
                   (let () (declare (not safe)) (##vector-ref _g63562_ 0)))
                  (_struct-super62841_
                   (let () (declare (not safe)) (##vector-ref _g63562_ 1))))
              (let ((_g63564_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list62840_
                        _direct-slots62819_))))
                (begin
                  (let ((_g63565_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g63564_)
                               (##vector-length _g63564_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g63565_ 2)))
                        (error "Context expects 2 values" _g63565_)))
                  (let ((_slot-vector62843_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63564_ 0)))
                        (_slot-table62844_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63564_ 1))))
                    (let* ((_properties62846_
                            (let ((__tmp63568
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots62819_)))
                                  (__tmp63566
                                   (let ((__tmp63567
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers62818_))))
                                     (declare (not safe))
                                     (cons __tmp63567 _properties62820_))))
                              (declare (not safe))
                              (cons __tmp63568 __tmp63566)))
                           (_constructor*62851_
                            (let ((_$e62848_ _constructor62821_))
                              (if _$e62848_
                                  _$e62848_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers62818_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id62816_
                         _name62817_
                         _struct-super62841_
                         _precedence-list62840_
                         _slot-vector62843_
                         _properties62846_
                         _constructor*62851_
                         _slot-table62844_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass62814_)
        (let ((__tmp63569
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62814_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass62814_ __tmp63569))))
    (define compute-precedence-list
      (lambda (_direct-supers62812_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers62812_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass62796_)
        (let ((_tid62798_
               (let () (declare (not safe)) (##type-id _klass62796_))))
          (if (let () (declare (not safe)) (class-type-final? _klass62796_))
              (lambda (_g6279962801_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6279962801_ _tid62798_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass62796_))
                  (lambda (_g6280362805_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6280362805_ _tid62798_)))
                  (lambda (_g6280762809_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass62796_ _g6280762809_))))))))
    (define if-class-slot-field
      (lambda (_klass62785_
               _slot62786_
               _if-final62787_
               _if-struct62788_
               _if-struct-field62789_
               _if-class-slot62790_)
        (let ((_field62792_
               (let ((__tmp63570
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass62785_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp63570 _slot62786_ '#f))))
          (if (let () (declare (not safe)) (not _field62792_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass62785_
                       'slot:
                       _slot62786_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass62785_))
                  (_if-final62787_ _klass62785_ _slot62786_ _field62792_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass62785_))
                      (_if-struct62788_ _klass62785_ _slot62786_ _field62792_)
                      (if (let ((_strukt62794_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass62785_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt62794_
                                    'gerbil#class::t))
                                 (let ((__tmp63571
                                        (let ((__tmp63572
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt62794_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp63572))))
                                   (declare (not safe))
                                   (##fx< _field62792_ __tmp63571))))
                          (_if-struct-field62789_
                           _klass62785_
                           _slot62786_
                           _field62792_)
                          (_if-class-slot62790_
                           _klass62785_
                           _slot62786_
                           _field62792_))))))))
    (define make-class-slot-accessor
      (lambda (_klass62782_ _slot62783_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62782_
           _slot62783_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass62779_ _slot62780_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62779_
           _slot62780_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass62776_ _slot62777_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62776_
           _slot62777_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass62773_ _slot62774_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62773_
           _slot62774_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object62757_ _class62758_ _slot62759_)
        (apply error
               '"not an instance"
               'object:
               _object62757_
               'class:
               _class62758_
               (if _slot62759_
                   (let ((__tmp63573
                          (let ()
                            (declare (not safe))
                            (cons _slot62759_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp63573))
                   '()))))
    (define not-an-instance__0
      (lambda (_object62764_ _class62765_)
        (let ((_slot62767_ '#f))
          (declare (not safe))
          (not-an-instance__% _object62764_ _class62765_ _slot62767_))))
    (define not-an-instance
      (lambda _g63575_
        (let ((_g63574_ (let () (declare (not safe)) (##length _g63575_))))
          (cond ((let () (declare (not safe)) (##fx= _g63574_ 2))
                 (apply (lambda (_object62764_ _class62765_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object62764_ _class62765_)))
                        _g63575_))
                ((let () (declare (not safe)) (##fx= _g63574_ 3))
                 (apply (lambda (_object62769_ _class62770_ _slot62771_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object62769_
                             _class62770_
                             _slot62771_)))
                        _g63575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g63575_))))))
    (define make-final-slot-accessor
      (lambda (_klass62750_ _slot62751_ _field62752_)
        (lambda (_obj62754_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj62754_
             _field62752_
             _klass62750_
             _slot62751_)))))
    (define make-final-slot-mutator
      (lambda (_klass62743_ _slot62744_ _field62745_)
        (lambda (_obj62747_ _val62748_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj62747_
             _val62748_
             _field62745_
             _klass62743_
             _slot62744_)))))
    (define make-struct-slot-accessor
      (lambda (_klass62737_ _slot62738_ _field62739_)
        (lambda (_obj62741_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj62741_
             _field62739_
             _klass62737_
             _slot62738_)))))
    (define make-struct-slot-mutator
      (lambda (_klass62730_ _slot62731_ _field62732_)
        (lambda (_obj62734_ _val62735_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj62734_
             _val62735_
             _field62732_
             _klass62730_
             _slot62731_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass62724_ _slot62725_ _field62726_)
        (lambda (_obj62728_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj62728_
             _field62726_
             _klass62724_
             _slot62725_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass62717_ _slot62718_ _field62719_)
        (lambda (_obj62721_ _val62722_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj62721_
             _val62722_
             _field62719_
             _klass62717_
             _slot62718_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass62711_ _slot62712_ _field62713_)
        (lambda (_obj62715_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62711_ _obj62715_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62715_ _field62713_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62715_ _klass62711_ _slot62712_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass62704_ _slot62705_ _field62706_)
        (lambda (_obj62708_ _val62709_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62704_ _obj62708_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62708_ _field62706_ _val62709_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62708_ _klass62704_ _slot62705_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass62698_ _slot62699_ _field62700_)
        (lambda (_obj62702_)
          (if (let ((__tmp63576
                     (let () (declare (not safe)) (##type-id _klass62698_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62702_ __tmp63576))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62702_ _field62700_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62698_ _obj62702_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj62702_ _slot62699_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62702_
                     _klass62698_
                     _slot62699_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass62691_ _slot62692_ _field62693_)
        (lambda (_obj62695_ _val62696_)
          (if (let ((__tmp63577
                     (let () (declare (not safe)) (##type-id _klass62691_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62695_ __tmp63577))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62695_ _field62693_ _val62696_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62691_ _obj62695_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj62695_ _slot62692_ _val62696_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62695_
                     _klass62691_
                     _slot62692_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass62685_ _slot62686_ _field62687_)
        (lambda (_obj62689_)
          (if (let ((__tmp63578
                     (let () (declare (not safe)) (##type-id _klass62685_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62689_ __tmp63578))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62689_ _field62687_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62689_ _slot62686_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass62678_ _slot62679_ _field62680_)
        (lambda (_obj62682_ _val62683_)
          (if (let ((__tmp63579
                     (let () (declare (not safe)) (##type-id _klass62678_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62682_ __tmp63579))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62682_ _field62680_ _val62683_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj62682_ _slot62679_ _val62683_))))))
    (define class-slot-offset
      (lambda (_klass62675_ _slot62676_)
        (let ((__tmp63580
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62675_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp63580 _slot62676_ '#f))))
    (define class-slot-ref
      (lambda (_klass62669_ _obj62670_ _slot62671_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62669_ _obj62670_))
            (let ((_off62673_
                   (let ((__tmp63581 (object-type _obj62670_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63581 _slot62671_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj62670_
               _off62673_
               _klass62669_
               _slot62671_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62670_ _klass62669_)))))
    (define class-slot-set!
      (lambda (_klass62662_ _obj62663_ _slot62664_ _val62665_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62662_ _obj62663_))
            (let ((_off62667_
                   (let ((__tmp63582 (object-type _obj62663_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63582 _slot62664_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj62663_
               _val62665_
               _off62667_
               _klass62662_
               _slot62664_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62663_ _klass62662_)))))
    (define unchecked-field-ref
      (lambda (_obj62659_ _off62660_)
        (let ((__tmp63583
               (let () (declare (not safe)) (##structure-type _obj62659_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj62659_ _off62660_ __tmp63583 '#f))))
    (define unchecked-field-set!
      (lambda (_obj62655_ _off62656_ _val62657_)
        (let ((__tmp63584
               (let () (declare (not safe)) (##structure-type _obj62655_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj62655_
           _val62657_
           _off62656_
           __tmp63584
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj62652_ _slot62653_)
        (let ((__tmp63585
               (let ((__tmp63586
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62652_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63586 _slot62653_))))
          (declare (not safe))
          (unchecked-field-ref _obj62652_ __tmp63585))))
    (define unchecked-slot-set!
      (lambda (_obj62648_ _slot62649_ _val62650_)
        (let ((__tmp63587
               (let ((__tmp63588
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62648_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63588 _slot62649_))))
          (declare (not safe))
          (unchecked-field-set! _obj62648_ __tmp63587 _val62650_))))
    (define slot-ref__%
      (lambda (_obj62624_ _slot62625_ _E62626_)
        (if (object? _obj62624_)
            (let* ((_klass62628_ (object-type _obj62624_))
                   (_$e62631_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62628_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62628_ _slot62625_))
                        '#f)))
              (if _$e62631_
                  ((lambda (_off62634_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj62624_ _off62634_)))
                   _$e62631_)
                  (_E62626_ _obj62624_ _slot62625_)))
            (_E62626_ _obj62624_ _slot62625_))))
    (define slot-ref__0
      (lambda (_obj62639_ _slot62640_)
        (let ((_E62642_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj62639_ _slot62640_ _E62642_))))
    (define slot-ref
      (lambda _g63590_
        (let ((_g63589_ (let () (declare (not safe)) (##length _g63590_))))
          (cond ((let () (declare (not safe)) (##fx= _g63589_ 2))
                 (apply (lambda (_obj62639_ _slot62640_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj62639_ _slot62640_)))
                        _g63590_))
                ((let () (declare (not safe)) (##fx= _g63589_ 3))
                 (apply (lambda (_obj62644_ _slot62645_ _E62646_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj62644_ _slot62645_ _E62646_)))
                        _g63590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g63590_))))))
    (define slot-set!__%
      (lambda (_obj62596_ _slot62597_ _val62598_ _E62599_)
        (if (object? _obj62596_)
            (let* ((_klass62601_ (object-type _obj62596_))
                   (_$e62604_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62601_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62601_ _slot62597_))
                        '#f)))
              (if _$e62604_
                  ((lambda (_off62607_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj62596_
                        _off62607_
                        _val62598_)))
                   _$e62604_)
                  (_E62599_ _obj62596_ _slot62597_)))
            (_E62599_ _obj62596_ _slot62597_))))
    (define slot-set!__0
      (lambda (_obj62612_ _slot62613_ _val62614_)
        (let ((_E62616_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj62612_ _slot62613_ _val62614_ _E62616_))))
    (define slot-set!
      (lambda _g63592_
        (let ((_g63591_ (let () (declare (not safe)) (##length _g63592_))))
          (cond ((let () (declare (not safe)) (##fx= _g63591_ 3))
                 (apply (lambda (_obj62612_ _slot62613_ _val62614_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj62612_ _slot62613_ _val62614_)))
                        _g63592_))
                ((let () (declare (not safe)) (##fx= _g63591_ 4))
                 (apply (lambda (_obj62618_ _slot62619_ _val62620_ _E62621_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj62618_
                             _slot62619_
                             _val62620_
                             _E62621_)))
                        _g63592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g63592_))))))
    (define __slot-error
      (lambda (_obj62592_ _slot62593_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj62592_ 'slot: _slot62593_))))
    (define subclass?
      (lambda (_maybe-sub-class62582_ _maybe-super-class62583_)
        (let* ((_maybe-super-class-id62585_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class62583_)))
               (_$e62587_
                (let ((__tmp63593
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class62582_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id62585_ __tmp63593))))
          (if _$e62587_
              _$e62587_
              (let ((__tmp63595
                     (lambda (_super-class62590_)
                       (let ((__tmp63596
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class62590_))))
                         (declare (not safe))
                         (eq? __tmp63596 _maybe-super-class-id62585_))))
                    (__tmp63594
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class62582_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp63595 __tmp63594))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass62579_ _obj62580_)
        (let ((__tmp63597
               (let () (declare (not safe)) (##type-id _klass62579_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj62580_ __tmp63597))))
    (define struct-instance?
      (lambda (_klass62576_ _obj62577_)
        (let ((__tmp63598
               (let () (declare (not safe)) (##type-id _klass62576_))))
          (declare (not safe))
          (##structure-instance-of? _obj62577_ __tmp63598))))
    (define class-instance?
      (lambda (_klass62571_ _obj62572_)
        (if (object? _obj62572_)
            (let ((_type62574_ (object-type _obj62572_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type62574_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type62574_ _klass62571_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass62566_ _k62567_)
        (let ((_obj62569_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass62566_ _k62567_))))
          (let () (declare (not safe)) (object-fill! _obj62569_ '#f))
          _obj62569_)))
    (define object-fill!
      (lambda (_obj62559_ _fill62560_)
        (let _loop62562_ ((_i62564_
                           (let ((__tmp63600
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj62559_))))
                             (declare (not safe))
                             (##fx- __tmp63600 '1))))
          (if (let () (declare (not safe)) (##fx> _i62564_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj62559_
                   _fill62560_
                   _i62564_
                   '#f
                   '#f))
                (let ((__tmp63599
                       (let () (declare (not safe)) (##fx- _i62564_ '1))))
                  (declare (not safe))
                  (_loop62562_ __tmp63599)))
              _obj62559_))))
    (define new-instance
      (lambda (_klass62557_)
        (let ((__obj63505
               (let ((__tmp63601
                      (let ((__tmp63602
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62557_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp63602))))
                 (declare (not safe))
                 (##make-structure _klass62557_ __tmp63601))))
          (let () (declare (not safe)) (object-fill! __obj63505 '#f))
          __obj63505)))
    (define make-instance
      (lambda (_klass62547_ . _args62548_)
        (let* ((_obj62550_
                (let () (declare (not safe)) (new-instance _klass62547_)))
               (_$e62552_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass62547_ '10 class::t '#f))))
          (if _$e62552_
              ((lambda (_kons-id62555_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass62547_
                    _kons-id62555_
                    _obj62550_
                    _args62548_)))
               _$e62552_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass62547_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass62547_
                     _obj62550_
                     _args62548_))
                  (if (let ((__tmp63607
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass62547_))))
                        (declare (not safe))
                        (not __tmp63607))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass62547_
                         _obj62550_
                         _args62548_))
                      (if (let ((__tmp63605
                                 (let ((__tmp63606
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj62550_))))
                                   (declare (not safe))
                                   (##fx- __tmp63606 '1)))
                                (__tmp63604 (length _args62548_)))
                            (declare (not safe))
                            (##fx= __tmp63605 __tmp63604))
                          (apply ##structure _klass62547_ _args62548_)
                          (let ((__tmp63603
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass62547_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass62547_
                                   'slots:
                                   __tmp63603
                                   'args:
                                   _args62548_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj62544_ . _args62545_)
        (if (let ((__tmp63609 (length _args62545_))
                  (__tmp63608
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj62544_))))
              (declare (not safe))
              (##fx< __tmp63609 __tmp63608))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj62544_ _args62545_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj62544_
                     'args:
                     _args62545_)))))
    (define __struct-instance-init!
      (lambda (_obj62503_ _args62504_)
        (let _lp62506_ ((_k62508_ '1) (_rest62509_ _args62504_))
          (let* ((_rest6251062518_ _rest62509_)
                 (_else6251262526_ (lambda () _obj62503_))
                 (_K6251462532_
                  (lambda (_rest62529_ _hd62530_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj62503_ _k62508_ _hd62530_))
                    (let ((__tmp63610
                           (let () (declare (not safe)) (##fx+ _k62508_ '1))))
                      (declare (not safe))
                      (_lp62506_ __tmp63610 _rest62529_)))))
            (if (let () (declare (not safe)) (##pair? _rest6251062518_))
                (let ((_hd6251562535_
                       (let () (declare (not safe)) (##car _rest6251062518_)))
                      (_tl6251662537_
                       (let () (declare (not safe)) (##cdr _rest6251062518_))))
                  (let* ((_hd62540_ _hd6251562535_)
                         (_rest62542_ _tl6251662537_))
                    (declare (not safe))
                    (_K6251462532_ _rest62542_ _hd62540_)))
                (let () (declare (not safe)) (_else6251262526_)))))))
    (define class-instance-init!
      (lambda (_obj62500_ . _args62501_)
        (let ((__tmp63611 (object-type _obj62500_)))
          (declare (not safe))
          (__class-instance-init! __tmp63611 _obj62500_ _args62501_))))
    (define __class-instance-init!
      (lambda (_klass62444_ _obj62445_ _args62446_)
        (let _lp62448_ ((_rest62450_ _args62446_))
          (let* ((_rest6245162461_ _rest62450_)
                 (_else6245362469_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest62450_))
                        _obj62445_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass62444_
                                 'rest:
                                 _rest62450_)))))
                 (_K6245562481_
                  (lambda (_rest62472_ _val62473_ _key62474_)
                    (let ((_$e62476_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass62444_ _key62474_))))
                      (if _$e62476_
                          ((lambda (_off62479_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj62445_
                                _off62479_
                                _val62473_))
                             (let ()
                               (declare (not safe))
                               (_lp62448_ _rest62472_)))
                           _$e62476_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass62444_
                                   'slot:
                                   _key62474_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6245162461_))
                (let ((_hd6245662484_
                       (let () (declare (not safe)) (##car _rest6245162461_)))
                      (_tl6245762486_
                       (let () (declare (not safe)) (##cdr _rest6245162461_))))
                  (let ((_key62489_ _hd6245662484_))
                    (if (let () (declare (not safe)) (##pair? _tl6245762486_))
                        (let ((_hd6245862491_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6245762486_)))
                              (_tl6245962493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6245762486_))))
                          (let* ((_val62496_ _hd6245862491_)
                                 (_rest62498_ _tl6245962493_))
                            (declare (not safe))
                            (_K6245562481_ _rest62498_ _val62496_ _key62489_)))
                        (let () (declare (not safe)) (_else6245362469_)))))
                (let () (declare (not safe)) (_else6245362469_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass62440_ _obj62441_ _args62442_)
        (apply call-method
               _klass62440_
               'instance-init!
               _obj62441_
               _args62442_)))
    (define constructor-init!
      (lambda (_klass62435_ _kons-id62436_ _obj62437_ . _args62438_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass62435_
           _kons-id62436_
           _obj62437_
           _args62438_))))
    (define __constructor-init!
      (lambda (_klass62425_ _kons-id62426_ _obj62427_ _args62428_)
        (let ((_$e62430_
               (let ()
                 (declare (not safe))
                 (__find-method _klass62425_ _obj62427_ _kons-id62426_))))
          (if _$e62430_
              ((lambda (_kons62433_)
                 (apply _kons62433_ _obj62427_ _args62428_)
                 _obj62427_)
               _$e62430_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass62425_
                       'method:
                       _kons-id62426_))))))
    (define struct-copy
      (lambda (_struct62423_)
        (if (let () (declare (not safe)) (##structure? _struct62423_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct62423_)))
        (let () (declare (not safe)) (##structure-copy _struct62423_))))
    (define struct->list
      (lambda (_obj62421_)
        (if (object? _obj62421_)
            (let () (declare (not safe)) (##vector->list _obj62421_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62421_)))))
    (define class->list
      (lambda (_obj62408_)
        (if (object? _obj62408_)
            (let ((_klass62410_ (object-type _obj62408_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass62410_ 'gerbil#class::t))
                  (let ((_slot-vector62412_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass62410_
                            '7
                            class::t
                            '#f))))
                    (let _loop62414_ ((_index62416_
                                       (let ((__tmp63617
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector62412_))))
                                         (declare (not safe))
                                         (##fx- __tmp63617 '1)))
                                      (_plist62417_ '()))
                      (if (let () (declare (not safe)) (##fx< _index62416_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass62410_ _plist62417_))
                          (let ((_slot62419_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector62412_
                                    _index62416_))))
                            (let ((__tmp63616
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index62416_ '1)))
                                  (__tmp63612
                                   (let ((__tmp63615
                                          (symbol->keyword _slot62419_))
                                         (__tmp63613
                                          (let ((__tmp63614
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj62408_
                                                    _index62416_))))
                                            (declare (not safe))
                                            (cons __tmp63614 _plist62417_))))
                                     (declare (not safe))
                                     (cons __tmp63615 __tmp63613))))
                              (declare (not safe))
                              (_loop62414_ __tmp63616 __tmp63612))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj62408_
                           'class:
                           _klass62410_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62408_)))))
    (define call-method
      (lambda (_obj62399_ _id62400_ . _args62401_)
        (let ((_$e62403_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62399_ _id62400_))))
          (if _$e62403_
              ((lambda (_method62406_)
                 (apply _method62406_ _obj62399_ _args62401_))
               _$e62403_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj62399_
                       'method:
                       _id62400_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj62396_ _id62397_)
        (if (object? _obj62396_)
            (let ((__tmp63618 (object-type _obj62396_)))
              (declare (not safe))
              (find-method __tmp63618 _obj62396_ _id62397_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj62390_ _id62391_)
        (let ((_$e62393_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62390_ _id62391_))))
          (if _$e62393_
              _$e62393_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj62390_
                       'method:
                       _id62391_))))))
    (define bound-method-ref
      (lambda (_obj62380_ _id62381_)
        (let ((_$e62383_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62380_ _id62381_))))
          (if _$e62383_
              ((lambda (_method62386_)
                 (lambda _args62388_
                   (apply _method62386_ _obj62380_ _args62388_)))
               _$e62383_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj62373_ _id62374_)
        (let ((_method62376_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj62373_ _id62374_))))
          (lambda _args62378_ (apply _method62376_ _obj62373_ _args62378_)))))
    (define find-method
      (lambda (_klass62369_ _obj62370_ _id62371_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62369_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62369_ _obj62370_ _id62371_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass62369_ _obj62370_ _id62371_)))))
    (define __find-method
      (lambda (_klass62362_ _obj62363_ _id62364_)
        (let ((_$e62366_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass62362_ _obj62363_ _id62364_))))
          (if _$e62366_
              _$e62366_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62362_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass62362_ _obj62363_ _id62364_)))))))
    (define class-find-method
      (lambda (_klass62358_ _obj62359_ _id62360_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62358_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62358_ _obj62359_ _id62360_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins62350_ _obj62351_ _id62352_)
        (let ((__tmp63619
               (lambda (_g6235362355_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6235362355_ _obj62351_ _id62352_)))))
          (declare (not safe))
          (ormap1 __tmp63619 _mixins62350_))))
    (define builtin-find-method
      (lambda (_klass62343_ _obj62344_ _id62345_)
        (if (let () (declare (not safe)) (##type? _klass62343_))
            (let ((_$e62347_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass62343_ _obj62344_ _id62345_))))
              (if _$e62347_
                  _$e62347_
                  (let ((__tmp63620
                         (let ()
                           (declare (not safe))
                           (##type-super _klass62343_))))
                    (declare (not safe))
                    (builtin-find-method __tmp63620 _obj62344_ _id62345_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass62320_ _obj62321_ _id62322_)
        (letrec ((_metaclass-resolve-method62324_
                  (lambda ()
                    (let ((__method63506
                           (let ()
                             (declare (not safe))
                             (method-ref _klass62320_ 'direct-method-ref))))
                      (if __method63506
                          (__method63506 _klass62320_ _obj62321_ _id62322_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62320_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!62325_
                  (lambda ()
                    (let ((_method62340_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method62324_))))
                      (let ((__tmp63622
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62320_
                                '11
                                class::t
                                '#f)))
                            (__tmp63621 (if _method62340_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp63622 _id62322_ __tmp63621))
                      _method62340_))))
          (let ((_$e62327_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass62320_ '11 class::t '#f))))
            (if _$e62327_
                ((lambda (_ht62330_)
                   (let ((_method62332_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht62330_ _id62322_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method62332_))
                         _method62332_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass62320_))
                             (let ((_$e62334_ _method62332_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e62334_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method62324_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e62334_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!62325_)))))
                             '#f))))
                 _$e62327_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass62320_))
                    (let ((_tab62337_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62320_
                         _tab62337_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!62325_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass62316_ _obj62317_ _id62318_)
        (let ((__tmp63623 (##structure-ref _klass62316_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp63623 _obj62317_ _id62318_))))
    (define builtin-method-ref
      (lambda (_klass62307_ _obj62308_ _id62309_)
        (let ((_$e62311_
               (let ((__tmp63624
                      (let () (declare (not safe)) (##type-id _klass62307_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp63624 '#f))))
          (if _$e62311_
              ((lambda (_mtab62314_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab62314_ _id62309_ '#f)))
               _$e62311_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62273_ _id62274_ _proc62275_ _rebind?62276_)
        (letrec ((_bind!62278_
                  (lambda (_ht62291_)
                    (if (and (let () (declare (not safe)) (not _rebind?62276_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht62291_ _id62274_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62273_
                                 'method:
                                 _id62274_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht62291_
                           _id62274_
                           _proc62275_))))))
          (if (let () (declare (not safe)) (procedure? _proc62275_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62275_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62273_ 'gerbil#class::t))
              (let ((_ht62280_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62273_
                        '11
                        class::t
                        '#f))))
                (if _ht62280_
                    (let () (declare (not safe)) (_bind!62278_ _ht62280_))
                    (let ((_ht62282_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62273_
                         _ht62282_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!62278_ _ht62282_)))))
              (if (let () (declare (not safe)) (##type? _klass62273_))
                  (let ((_ht62289_
                         (let ((_$e62284_
                                (let ((__tmp63625
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62273_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp63625
                                   '#f))))
                           (if _$e62284_
                               _$e62284_
                               (let ((_ht62287_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp63626
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62273_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp63626
                                    _ht62287_))
                                 _ht62287_)))))
                    (declare (not safe))
                    (_bind!62278_ _ht62289_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62273_)))))))
    (define bind-method!__0
      (lambda (_klass62296_ _id62297_ _proc62298_)
        (let ((_rebind?62300_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass62296_
           _id62297_
           _proc62298_
           _rebind?62300_))))
    (define bind-method!
      (lambda _g63628_
        (let ((_g63627_ (let () (declare (not safe)) (##length _g63628_))))
          (cond ((let () (declare (not safe)) (##fx= _g63627_ 3))
                 (apply (lambda (_klass62296_ _id62297_ _proc62298_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass62296_
                             _id62297_
                             _proc62298_)))
                        _g63628_))
                ((let () (declare (not safe)) (##fx= _g63627_ 4))
                 (apply (lambda (_klass62302_
                                 _id62303_
                                 _proc62304_
                                 _rebind?62305_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass62302_
                             _id62303_
                             _proc62304_
                             _rebind?62305_)))
                        _g63628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g63628_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc62269_ _specializer62270_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc62269_
           _specializer62270_))))
    (define seal-class!
      (lambda (_klass62236_)
        (letrec ((_collect-methods!62238_
                  (lambda (_mtab62254_)
                    (letrec ((_merge!62256_
                              (lambda (_tab62264_)
                                (let ((__tmp63629
                                       (lambda (_id62266_ _proc62267_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab62254_
                                            _id62266_
                                            _proc62267_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab62264_ __tmp63629))))
                             (_collect-direct-methods!62257_
                              (lambda (_klass62259_)
                                (let ((_$e62261_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass62259_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e62261_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!62256_ _$e62261_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!62257_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass62236_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62236_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62236_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass62236_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot seal non-final class" _klass62236_)))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass62236_))
                        (let ((__method63507
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass62236_ 'seal-class!))))
                          (if __method63507
                              (__method63507 _klass62236_)
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       _klass62236_
                                       'seal-class!))))
                        (if (let ((__tmp63636
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass62236_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp63636))
                            (let ()
                              (declare (not safe))
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _klass62236_))
                            (let ((_vtab62240_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0)))
                                  (_mtab62241_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!62238_ _mtab62241_))
                              (let ((__tmp63630
                                     (lambda (_id62243_ _proc62244_)
                                       (let ((_$e62246_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc62244_
                                                 '#f))))
                                         (if _$e62246_
                                             ((lambda (_specializer62249_)
                                                (let ((_proc62251_
                                                       (_specializer62249_
                                                        _klass62236_))
                                                      (_gid62252_
                                                       (let ((__tmp63631
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass62236_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp63631 '"::[" _id62243_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp63632
                                                               (let ((__tmp63633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63634
                                     (let ((__tmp63635
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc62251_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp63635))))
                                (declare (not safe))
                                (cons __tmp63634 '()))))
                         (declare (not safe))
                         (cons _gid62252_ __tmp63633))))
                  (declare (not safe))
                  (cons 'def __tmp63632)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab62240_
                                                     _id62243_
                                                     _proc62251_))))
                                              _$e62246_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab62240_
                                                _id62243_
                                                _proc62244_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab62241_ __tmp63630))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass62236_
                                 _vtab62240_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass62236_))))
              '#!void))))
    (define next-method
      (lambda (_subklass62185_ _obj62186_ _id62187_)
        (let ((_klass62189_ (object-type _obj62186_))
              (_type-id62190_
               (let () (declare (not safe)) (##type-id _subklass62185_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62189_ 'gerbil#class::t))
              (let _lp62192_ ((_rest62194_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62189_))))
                (let* ((_rest6219562203_ _rest62194_)
                       (_else6219762211_ (lambda () '#f))
                       (_K6219962217_
                        (lambda (_rest62214_ _klass62215_)
                          (if (let ((__tmp63639
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62215_))))
                                (declare (not safe))
                                (eq? _type-id62190_ __tmp63639))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62214_
                                 _obj62186_
                                 _id62187_))
                              (let ()
                                (declare (not safe))
                                (_lp62192_ _rest62214_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6219562203_))
                      (let ((_hd6220062220_
                             (let ()
                               (declare (not safe))
                               (##car _rest6219562203_)))
                            (_tl6220162222_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6219562203_))))
                        (let* ((_klass62225_ _hd6220062220_)
                               (_rest62227_ _tl6220162222_))
                          (declare (not safe))
                          (_K6219962217_ _rest62227_ _klass62225_)))
                      (let () (declare (not safe)) (_else6219762211_)))))
              (if (let () (declare (not safe)) (##type? _klass62189_))
                  (let _lp62229_ ((_klass62231_ _klass62189_))
                    (if (let ((__tmp63638
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62231_))))
                          (declare (not safe))
                          (eq? _type-id62190_ __tmp63638))
                        (let ((__tmp63637
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62231_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp63637
                           _obj62186_
                           _id62187_))
                        (let ((_$e62233_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62231_))))
                          (if _$e62233_
                              (let ()
                                (declare (not safe))
                                (_lp62229_ _$e62233_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62175_ _obj62176_ _id62177_ . _args62178_)
        (let ((_$e62180_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62175_ _obj62176_ _id62177_))))
          (if _$e62180_
              ((lambda (_methodf62183_)
                 (apply _methodf62183_ _obj62176_ _args62178_))
               _$e62180_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62176_
                       'method:
                       _id62177_))))))
    (define write-style (lambda (_we62173_) (macro-writeenv-style _we62173_)))
    (define write-object
      (lambda (_we62165_ _obj62166_)
        (let ((_$e62168_
               (let () (declare (not safe)) (method-ref _obj62166_ ':wr))))
          (if _$e62168_
              ((lambda (_method62171_) (_method62171_ _obj62166_ _we62165_))
               _$e62168_)
              (let ()
                (declare (not safe))
                (##default-wr _we62165_ _obj62166_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
