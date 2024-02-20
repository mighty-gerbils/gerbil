(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708451991)
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
      (let* ((_slots61117_
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
             (_slot-vector61119_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots61117_))))
             (_slot-table61126_
              (let ((_slot-table61121_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot61123_ _field61124_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table61121_
                      _slot61123_
                      _field61124_))
                   (let ((__tmp61267 (symbol->keyword _slot61123_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table61121_
                      __tmp61267
                      _field61124_)))
                 _slots61117_
                 (let ((__tmp61268 (length _slots61117_)))
                   (declare (not safe))
                   (iota__1 __tmp61268 '1)))
                _slot-table61121_))
             (_flags61128_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields61134_
              (list->vector
               (apply append
                      (map (lambda (_g6112961131_) (list _g6112961131_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots61117_ '5))))))
             (_properties61136_
              (let ((__tmp61271
                     (let ((__tmp61272
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots61117_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp61272)))
                    (__tmp61269
                     (let ((__tmp61270
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp61270 '()))))
                (declare (not safe))
                (cons __tmp61271 __tmp61269)))
             (_t61138_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags61128_
                 ##type-type
                 _fields61134_
                 '()
                 _slot-vector61119_
                 _slot-table61126_
                 _properties61136_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t61138_ _t61138_))
        _t61138_))
    (define class-type?
      (lambda (_obj61115_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj61115_ class::t.id))))
    (define class-type=?
      (lambda (_x61112_ _y61113_)
        (let ((__tmp61274 (##structure-ref _x61112_ '1 class::t '#f))
              (__tmp61273 (##structure-ref _y61113_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp61274 __tmp61273))))
    (define type-opaque?
      (lambda (_type61110_)
        (let ((__tmp61275
               (let ((__tmp61276
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61110_))))
                 (declare (not safe))
                 (##fxand __tmp61276 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp61275 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type61108_)
        (let ((__tmp61277
               (let ((__tmp61278
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61108_))))
                 (declare (not safe))
                 (##fxand __tmp61278 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp61277 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type61106_)
        (let ((__tmp61279
               (let ((__tmp61280
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61106_))))
                 (declare (not safe))
                 (##fxand __tmp61280 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp61279 '0))))
    (define class-type-struct?
      (lambda (_klass61104_)
        (let ((__tmp61281
               (let ((__tmp61282
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61104_))))
                 (declare (not safe))
                 (##fxand __tmp61282 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp61281 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass61102_)
        (let ((__tmp61283
               (let ((__tmp61284
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61102_))))
                 (declare (not safe))
                 (##fxand __tmp61284 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp61283 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass61100_)
        (let ((__tmp61285
               (let ((__tmp61286
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61100_))))
                 (declare (not safe))
                 (##fxand __tmp61286 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp61285 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties61066_)
        (map (lambda (_e6106761069_)
               (let* ((_g6107161078_ _e6106761069_)
                      (_E6107361082_
                       (lambda () (error '"No clause matching" _g6107161078_)))
                      (_K6107461088_
                       (lambda (_val61085_ _key61086_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key61086_ 'direct-supers:))
                             (let ((__tmp61287 (map class-type-id _val61085_)))
                               (declare (not safe))
                               (cons _key61086_ __tmp61287))
                             (let ()
                               (declare (not safe))
                               (cons _key61086_ _val61085_))))))
                 (if (let () (declare (not safe)) (##pair? _g6107161078_))
                     (let ((_hd6107561091_
                            (let ()
                              (declare (not safe))
                              (##car _g6107161078_)))
                           (_tl6107661093_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6107161078_))))
                       (let* ((_key61096_ _hd6107561091_)
                              (_val61098_ _tl6107661093_))
                         (declare (not safe))
                         (_K6107461088_ _val61098_ _key61096_)))
                     (let () (declare (not safe)) (_E6107361082_)))))
             _properties61066_)))
    (define make-class-type-descriptor
      (lambda (_type-id60965_
               _type-name60966_
               _type-super60967_
               _precedence-list60968_
               _slot-vector60969_
               _properties60970_
               _constructor60971_
               _slot-table60972_
               _methods60973_)
        (letrec ((_make-props!60975_
                  (lambda (_key61035_)
                    (letrec* ((_ht61037_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!61038_
                               (lambda (_ht61059_ _slots61060_)
                                 (for-each
                                  (lambda (_g6106161063_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht61059_
                                       _g6106161063_
                                       '#t)))
                                  _slots61060_)))
                              (_put-alist!61039_
                               (lambda (_ht61048_ _key61049_ _alist61050_)
                                 (let ((_$e61052_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key61049_
                                           _alist61050_))))
                                   (if _$e61052_
                                       ((lambda (_g6105461056_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!61038_
                                             _ht61048_
                                             _g6105461056_)))
                                        _$e61052_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!61039_
                         _ht61037_
                         _key61035_
                         _properties60970_))
                      (for-each
                       (lambda (_mixin61041_)
                         (let ((_alist61043_
                                (##structure-ref
                                 _mixin61041_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist61043_))
                                   (let ((__tmp61288
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key61035_
                                             _alist61043_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp61288)))
                               (let ((__tmp61289
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin61041_))))
                                 (declare (not safe))
                                 (_put-slots!61038_ _ht61037_ __tmp61289))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!61039_
                                  _ht61037_
                                  _key61035_
                                  _alist61043_)))))
                       _precedence-list60968_)
                      _ht61037_))))
          (let* ((_transparent?60977_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties60970_)))
                 (_all-slots-printable?60982_
                  (let ((_$e60979_ _transparent?60977_))
                    (if _$e60979_
                        _$e60979_
                        (let ((__tmp61290
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties60970_))))
                          (declare (not safe))
                          (eq? '#t __tmp61290)))))
                 (_printable60984_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?60982_))
                      (let ()
                        (declare (not safe))
                        (_make-props!60975_ 'print:))
                      '#f))
                 (_all-slots-equalable?60989_
                  (let ((_$e60986_ _transparent?60977_))
                    (if _$e60986_
                        _$e60986_
                        (let ((__tmp61291
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties60970_))))
                          (declare (not safe))
                          (eq? '#t __tmp61291)))))
                 (_equalable60991_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?60989_))
                      (let ()
                        (declare (not safe))
                        (_make-props!60975_ 'equal:))
                      '#f))
                 (_first-new-field60993_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super60967_
                         'gerbil#class::t))
                      (let ((__tmp61292
                             (##structure-ref
                              _type-super60967_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp61292))
                      '1))
                 (_field-info-length60995_
                  (let ((__tmp61293
                         (let ((__tmp61294
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector60969_))))
                           (declare (not safe))
                           (##fx- __tmp61294 _first-new-field60993_))))
                    (declare (not safe))
                    (##fx* '3 __tmp61293)))
                 (_field-info60997_ (make-vector _field-info-length60995_ '#f))
                 (_struct?60999_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties60970_)))
                 (_final?61001_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties60970_)))
                 (_metaclass61009_
                  (let ((_metaclass6100261004_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties60970_))))
                    (if _metaclass6100261004_
                        (let ((_metaclass61007_ _metaclass6100261004_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass61007_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id60965_
                                     'metaclass:
                                     _metaclass61007_))
                          _metaclass61007_)
                        '#f)))
                 (_opaque?61014_
                  (let ((_$e61011_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?60989_))))
                    (if _$e61011_
                        _$e61011_
                        (if _type-super60967_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super60967_))
                            '#f))))
                 (_type-flags61016_
                  (let ((__tmp61298 (if _final?61001_ '0 type-flag-extensible))
                        (__tmp61297 (if _opaque?61014_ type-flag-opaque '0))
                        (__tmp61296
                         (if _struct?60999_ class-type-flag-struct '0))
                        (__tmp61295
                         (if _metaclass61009_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp61298
                             __tmp61297
                             __tmp61296
                             __tmp61295))))
            (let _loop61019_ ((_i61021_ _first-new-field60993_) (_j61022_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j61022_ _field-info-length60995_))
                  (let* ((_slot61024_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector60969_ _i61021_)))
                         (_flags61032_
                          (if _transparent?60977_
                              '0
                              (let ((__tmp61300
                                     (if (or _all-slots-printable?60982_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable60984_
                                                _slot61024_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp61299
                                     (if (or _all-slots-equalable?60989_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable60991_
                                                _slot61024_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp61300 __tmp61299)))))
                    (vector-set! _field-info60997_ _j61022_ _slot61024_)
                    (vector-set!
                     _field-info60997_
                     (let () (declare (not safe)) (##fx+ _j61022_ '1))
                     _flags61032_)
                    (let ((__tmp61302
                           (let () (declare (not safe)) (##fx+ _i61021_ '1)))
                          (__tmp61301
                           (let () (declare (not safe)) (##fx+ _j61022_ '3))))
                      (declare (not safe))
                      (_loop61019_ __tmp61302 __tmp61301)))
                  '#!void))
            (if _metaclass61009_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass61009_
                   _type-id60965_
                   _type-name60966_
                   _type-flags61016_
                   _type-super60967_
                   _field-info60997_
                   _precedence-list60968_
                   _slot-vector60969_
                   _slot-table60972_
                   _properties60970_
                   _constructor60971_
                   _methods60973_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id60965_
                   _type-name60966_
                   _type-flags61016_
                   _type-super60967_
                   _field-info60997_
                   _precedence-list60968_
                   _slot-vector60969_
                   _slot-table60972_
                   _properties60970_
                   _constructor60971_
                   _methods60973_)))))))
    (define class-type-id
      (lambda (_klass60963_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60963_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass60961_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60961_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass60958_ _val60959_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60958_ _val60959_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass60953_ _val60955_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60953_
           _val60955_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass60951_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60951_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass60949_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60949_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass60946_ _val60947_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60946_ _val60947_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass60941_ _val60943_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60941_
           _val60943_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass60939_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60939_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass60937_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60937_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass60934_ _val60935_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60934_ _val60935_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass60929_ _val60931_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60929_
           _val60931_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass60927_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60927_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass60925_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60925_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass60922_ _val60923_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60922_ _val60923_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass60917_ _val60919_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60917_
           _val60919_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass60915_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60915_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass60913_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60913_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass60910_ _val60911_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60910_ _val60911_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass60905_ _val60907_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60905_
           _val60907_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass60903_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60903_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass60901_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass60901_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass60898_ _val60899_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass60898_
           _val60899_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass60893_ _val60895_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60893_
           _val60895_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass60891_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60891_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass60889_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60889_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass60886_ _val60887_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass60886_
           _val60887_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass60881_ _val60883_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60881_
           _val60883_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass60879_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60879_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass60877_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60877_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass60874_ _val60875_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60874_ _val60875_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass60869_ _val60871_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60869_
           _val60871_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass60867_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60867_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass60865_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60865_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass60862_ _val60863_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60862_ _val60863_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass60857_ _val60859_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60857_
           _val60859_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass60855_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60855_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass60853_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60853_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass60850_ _val60851_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass60850_
           _val60851_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass60845_ _val60847_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60845_
           _val60847_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass60843_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass60843_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass60841_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass60841_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass60838_ _val60839_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass60838_ _val60839_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass60833_ _val60835_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60833_
           _val60835_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass60831_)
        (cdr (vector->list (##structure-ref _klass60831_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass60829_)
        (let ((__tmp61303
               (let ((__tmp61304
                      (##structure-ref _klass60829_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp61304))))
          (declare (not safe))
          (##fx- __tmp61303 '1))))
    (define class-type-seal!
      (lambda (_klass60827_)
        (let ((__tmp61305
               (let ((__tmp61306
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass60827_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp61306))))
          (declare (not safe))
          (##structure-set!
           _klass60827_
           __tmp61305
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass60825_)
        (let ((__tmp61307
               (let ((__tmp61308
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass60825_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp61308))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass60825_
           __tmp61307
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct60816_ _maybe-super-struct60817_)
        (let ((_maybe-super-struct-id60819_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct60817_))))
          (let _lp60821_ ((_super-struct60823_ _maybe-sub-struct60816_))
            (if (let () (declare (not safe)) (not _super-struct60823_))
                '#f
                (if (let ((__tmp61309
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct60823_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id60819_ __tmp61309))
                    '#t
                    (let ((__tmp61310
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct60823_))))
                      (declare (not safe))
                      (_lp60821_ __tmp61310))))))))
    (define base-struct/1
      (lambda (_klass60814_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass60814_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass60814_))
                _klass60814_
                (let () (declare (not safe)) (##type-super _klass60814_)))
            (if (let () (declare (not safe)) (not _klass60814_))
                '#f
                (error '"not a class or false" _klass60814_)))))
    (define base-struct/2
      (lambda (_klass160802_ _klass260803_)
        (let ((_s160805_
               (let () (declare (not safe)) (base-struct/1 _klass160802_)))
              (_s260806_
               (let () (declare (not safe)) (base-struct/1 _klass260803_))))
          (if (or (let () (declare (not safe)) (not _s160805_))
                  (and _s260806_
                       (let ()
                         (declare (not safe))
                         (substruct? _s160805_ _s260806_))))
              _s260806_
              (if (or (let () (declare (not safe)) (not _s260806_))
                      (and _s160805_
                           (let ()
                             (declare (not safe))
                             (substruct? _s260806_ _s160805_))))
                  _s160805_
                  (error '"bad mixin: incompatible struct bases"
                         _klass160802_
                         _klass260803_
                         _s160805_
                         _s260806_))))))
    (define base-struct/list
      (lambda (_all-supers60686_)
        (let* ((_all-supers6068760712_ _all-supers60686_)
               (_E6069260716_
                (lambda ()
                  (error '"No clause matching" _all-supers6068760712_))))
          (let ((_K6071060799_ (lambda () '#f))
                (_K6070760785_
                 (lambda (_x60783_)
                   (let () (declare (not safe)) (base-struct/1 _x60783_))))
                (_K6070260762_
                 (lambda (_y60759_ _x60760_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x60760_ _y60759_))))
                (_K6069360723_
                 (lambda (_y60720_ _x60721_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x60721_ _y60720_)))))
            (let* ((___match6126161262_
                    (lambda (_hd6069460726_ _tl6069560728_)
                      (let ((_x60731_ _hd6069460726_))
                        (letrec ((_splice-rest6069760733_
                                  (lambda (_rest6070160740_ _y60742_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6070160740_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6069360723_ _y60742_ _x60731_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6069260716_)))))
                                 (_splice-try6069960735_
                                  (lambda (_hd6070060744_
                                           _rest6070160746_
                                           _y6069660747_)
                                    (let ((_y60750_ _hd6070060744_))
                                      (let ((__tmp61312
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6070160746_)))
                                            (__tmp61311
                                             (let ()
                                               (declare (not safe))
                                               (cons _y60750_ _y6069660747_))))
                                        (declare (not safe))
                                        (_splice-loop6069860737_
                                         __tmp61312
                                         __tmp61311)))))
                                 (_splice-loop6069860737_
                                  (lambda (_rest6070160752_ _y6069660753_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6070160752_))
                                        (let ((__tmp61313
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6070160752_))))
                                          (declare (not safe))
                                          (_splice-try6069960735_
                                           __tmp61313
                                           _rest6070160752_
                                           _y6069660753_))
                                        (let ((__tmp61314
                                               (reverse _y6069660753_)))
                                          (declare (not safe))
                                          (_splice-rest6069760733_
                                           _rest6070160752_
                                           __tmp61314))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6069860737_ _tl6069560728_ '()))))))
                   (_try-match6068960795_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6068760712_))
                          (let ((_tl6070960790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6068760712_)))
                                (_hd6070860788_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6068760712_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6070960790_))
                                (let ((_x60793_ _hd6070860788_))
                                  (declare (not safe))
                                  (base-struct/1 _x60793_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6070960790_))
                                    (let ((_tl6070660774_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6070960790_)))
                                          (_hd6070560772_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6070960790_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6070660774_))
                                          (let ((_x60770_ _hd6070860788_)
                                                (_y60777_ _hd6070560772_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6070260762_
                                               _y60777_
                                               _x60770_)))
                                          (___match6126161262_
                                           _hd6070860788_
                                           _tl6070960790_)))
                                    (___match6126161262_
                                     _hd6070860788_
                                     _tl6070960790_))))
                          (let () (declare (not safe)) (_E6069260716_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6068760712_))
                  (let () (declare (not safe)) (_K6071060799_))
                  (let () (declare (not safe)) (_try-match6068960795_))))))))
    (define base-struct
      (lambda _all-supers60684_
        (let () (declare (not safe)) (base-struct/list _all-supers60684_))))
    (define find-super-constructor
      (lambda (_super60636_)
        (let _lp60638_ ((_rest60640_ _super60636_) (_constructor60641_ '#f))
          (let* ((_rest6064260650_ _rest60640_)
                 (_else6064460658_ (lambda () _constructor60641_))
                 (_K6064660672_
                  (lambda (_rest60661_ _hd60662_)
                    (let ((_$e60664_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd60662_
                              '10
                              class::t
                              '#f))))
                      (if _$e60664_
                          ((lambda (_xconstructor60667_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor60641_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor60641_
                                            _xconstructor60667_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp60638_ _rest60661_ _xconstructor60667_))
                                 (error '"conflicting implicit constructors"
                                        _constructor60641_
                                        _xconstructor60667_)))
                           _$e60664_)
                          (let ()
                            (declare (not safe))
                            (_lp60638_ _rest60661_ _constructor60641_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6064260650_))
                (let ((_hd6064760675_
                       (let () (declare (not safe)) (##car _rest6064260650_)))
                      (_tl6064860677_
                       (let () (declare (not safe)) (##cdr _rest6064260650_))))
                  (let* ((_hd60680_ _hd6064760675_)
                         (_rest60682_ _tl6064860677_))
                    (declare (not safe))
                    (_K6064660672_ _rest60682_ _hd60680_)))
                (let () (declare (not safe)) (_else6064460658_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list60612_ _direct-slots60613_)
        (let* ((_next-slot60615_ '1)
               (_slot-table60617_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots60619_ '(__class))
               (_process-slot60623_
                (lambda (_slot60621_)
                  (if (let () (declare (not safe)) (symbol? _slot60621_))
                      '#!void
                      (error '"invalid slot name" _slot60621_))
                  (if (let ((__tmp61315
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table60617_
                                _slot60621_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp61315 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table60617_
                           _slot60621_
                           _next-slot60615_))
                        (let ((__tmp61316 (symbol->keyword _slot60621_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table60617_
                           __tmp61316
                           _next-slot60615_))
                        (set! _r-slots60619_
                              (let ()
                                (declare (not safe))
                                (cons _slot60621_ _r-slots60619_)))
                        (set! _next-slot60615_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot60615_ '1))))
                      '#!void)))
               (_process-slots60629_
                (lambda (_g6062460626_)
                  (for-each _process-slot60623_ _g6062460626_))))
          (for-each
           (lambda (_mixin60632_)
             (let ((__tmp61317
                    (let ((__tmp61318
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin60632_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp61318 '()))))
               (declare (not safe))
               (_process-slots60629_ __tmp61317)))
           (reverse _class-precedence-list60612_))
          (let ()
            (declare (not safe))
            (_process-slots60629_ _direct-slots60613_))
          (let ((_slot-vector60634_ (list->vector (reverse _r-slots60619_))))
            (values _slot-vector60634_ _slot-table60617_)))))
    (define make-class-type
      (lambda (_id60574_
               _name60575_
               _direct-supers60576_
               _direct-slots60577_
               _properties60578_
               _constructor60579_)
        (let ((_$e60584_
               (let ((__tmp61319
                      (lambda (_$obj60581_)
                        (let ((__tmp61320
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj60581_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp61320)))))
                 (declare (not safe))
                 (find __tmp61319 _direct-supers60576_))))
          (if _$e60584_
              ((lambda (_g6058660588_)
                 (error '"Illegal super class; not a class descriptor"
                        _g6058660588_))
               _$e60584_)
              (let ((_$e60591_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers60576_))))
                (if _$e60591_
                    ((lambda (_g6059360595_)
                       (error '"Cannot extend final class" _g6059360595_))
                     _$e60591_)
                    '#!void))))
        (let ((_g61321_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers60576_))))
          (begin
            (let ((_g61322_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g61321_) (##vector-length _g61321_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g61322_ 2)))
                  (error "Context expects 2 values" _g61322_)))
            (let ((_precedence-list60598_
                   (let () (declare (not safe)) (##vector-ref _g61321_ 0)))
                  (_struct-super60599_
                   (let () (declare (not safe)) (##vector-ref _g61321_ 1))))
              (let ((_g61323_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list60598_
                        _direct-slots60577_))))
                (begin
                  (let ((_g61324_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g61323_)
                               (##vector-length _g61323_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g61324_ 2)))
                        (error "Context expects 2 values" _g61324_)))
                  (let ((_slot-vector60601_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g61323_ 0)))
                        (_slot-table60602_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g61323_ 1))))
                    (let* ((_properties60604_
                            (let ((__tmp61327
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots60577_)))
                                  (__tmp61325
                                   (let ((__tmp61326
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers60576_))))
                                     (declare (not safe))
                                     (cons __tmp61326 _properties60578_))))
                              (declare (not safe))
                              (cons __tmp61327 __tmp61325)))
                           (_constructor*60609_
                            (let ((_$e60606_ _constructor60579_))
                              (if _$e60606_
                                  _$e60606_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers60576_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id60574_
                         _name60575_
                         _struct-super60599_
                         _precedence-list60598_
                         _slot-vector60601_
                         _properties60604_
                         _constructor*60609_
                         _slot-table60602_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass60572_)
        (let ((__tmp61328
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass60572_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass60572_ __tmp61328))))
    (define compute-precedence-list
      (lambda (_direct-supers60570_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers60570_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass60554_)
        (let ((_tid60556_
               (let () (declare (not safe)) (##type-id _klass60554_))))
          (if (let () (declare (not safe)) (class-type-final? _klass60554_))
              (lambda (_g6055760559_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6055760559_ _tid60556_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass60554_))
                  (lambda (_g6056160563_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6056160563_ _tid60556_)))
                  (lambda (_g6056560567_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass60554_ _g6056560567_))))))))
    (define if-class-slot-field
      (lambda (_klass60543_
               _slot60544_
               _if-final60545_
               _if-struct60546_
               _if-struct-field60547_
               _if-class-slot60548_)
        (let ((_field60550_
               (let ((__tmp61329
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass60543_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp61329 _slot60544_ '#f))))
          (if (let () (declare (not safe)) (not _field60550_))
              (error '"unknown slot" 'class: _klass60543_ 'slot: _slot60544_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass60543_))
                  (_if-final60545_ _klass60543_ _slot60544_ _field60550_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass60543_))
                      (_if-struct60546_ _klass60543_ _slot60544_ _field60550_)
                      (if (let ((_strukt60552_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass60543_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt60552_
                                    'gerbil#class::t))
                                 (let ((__tmp61330
                                        (let ((__tmp61331
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt60552_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp61331))))
                                   (declare (not safe))
                                   (##fx< _field60550_ __tmp61330))))
                          (_if-struct-field60547_
                           _klass60543_
                           _slot60544_
                           _field60550_)
                          (_if-class-slot60548_
                           _klass60543_
                           _slot60544_
                           _field60550_))))))))
    (define make-class-slot-accessor
      (lambda (_klass60540_ _slot60541_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60540_
           _slot60541_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass60537_ _slot60538_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60537_
           _slot60538_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass60534_ _slot60535_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60534_
           _slot60535_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass60531_ _slot60532_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60531_
           _slot60532_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object60515_ _class60516_ _slot60517_)
        (apply error
               '"not an instance"
               'object:
               _object60515_
               'class:
               _class60516_
               (if _slot60517_
                   (let ((__tmp61332
                          (let ()
                            (declare (not safe))
                            (cons _slot60517_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp61332))
                   '()))))
    (define not-an-instance__0
      (lambda (_object60522_ _class60523_)
        (let ((_slot60525_ '#f))
          (declare (not safe))
          (not-an-instance__% _object60522_ _class60523_ _slot60525_))))
    (define not-an-instance
      (lambda _g61334_
        (let ((_g61333_ (let () (declare (not safe)) (##length _g61334_))))
          (cond ((let () (declare (not safe)) (##fx= _g61333_ 2))
                 (apply (lambda (_object60522_ _class60523_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object60522_ _class60523_)))
                        _g61334_))
                ((let () (declare (not safe)) (##fx= _g61333_ 3))
                 (apply (lambda (_object60527_ _class60528_ _slot60529_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object60527_
                             _class60528_
                             _slot60529_)))
                        _g61334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g61334_))))))
    (define make-final-slot-accessor
      (lambda (_klass60508_ _slot60509_ _field60510_)
        (lambda (_obj60512_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj60512_
             _field60510_
             _klass60508_
             _slot60509_)))))
    (define make-final-slot-mutator
      (lambda (_klass60501_ _slot60502_ _field60503_)
        (lambda (_obj60505_ _val60506_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj60505_
             _val60506_
             _field60503_
             _klass60501_
             _slot60502_)))))
    (define make-struct-slot-accessor
      (lambda (_klass60495_ _slot60496_ _field60497_)
        (lambda (_obj60499_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj60499_
             _field60497_
             _klass60495_
             _slot60496_)))))
    (define make-struct-slot-mutator
      (lambda (_klass60488_ _slot60489_ _field60490_)
        (lambda (_obj60492_ _val60493_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj60492_
             _val60493_
             _field60490_
             _klass60488_
             _slot60489_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass60482_ _slot60483_ _field60484_)
        (lambda (_obj60486_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj60486_
             _field60484_
             _klass60482_
             _slot60483_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass60475_ _slot60476_ _field60477_)
        (lambda (_obj60479_ _val60480_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj60479_
             _val60480_
             _field60477_
             _klass60475_
             _slot60476_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass60469_ _slot60470_ _field60471_)
        (lambda (_obj60473_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass60469_ _obj60473_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj60473_ _field60471_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj60473_ _klass60469_ _slot60470_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass60462_ _slot60463_ _field60464_)
        (lambda (_obj60466_ _val60467_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass60462_ _obj60466_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60466_ _field60464_ _val60467_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj60466_ _klass60462_ _slot60463_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass60456_ _slot60457_ _field60458_)
        (lambda (_obj60460_)
          (if (let ((__tmp61335
                     (let () (declare (not safe)) (##type-id _klass60456_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60460_ __tmp61335))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj60460_ _field60458_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass60456_ _obj60460_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj60460_ _slot60457_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj60460_
                     _klass60456_
                     _slot60457_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass60449_ _slot60450_ _field60451_)
        (lambda (_obj60453_ _val60454_)
          (if (let ((__tmp61336
                     (let () (declare (not safe)) (##type-id _klass60449_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60453_ __tmp61336))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60453_ _field60451_ _val60454_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass60449_ _obj60453_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj60453_ _slot60450_ _val60454_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj60453_
                     _klass60449_
                     _slot60450_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass60443_ _slot60444_ _field60445_)
        (lambda (_obj60447_)
          (if (let ((__tmp61337
                     (let () (declare (not safe)) (##type-id _klass60443_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60447_ __tmp61337))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj60447_ _field60445_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj60447_ _slot60444_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass60436_ _slot60437_ _field60438_)
        (lambda (_obj60440_ _val60441_)
          (if (let ((__tmp61338
                     (let () (declare (not safe)) (##type-id _klass60436_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60440_ __tmp61338))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60440_ _field60438_ _val60441_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj60440_ _slot60437_ _val60441_))))))
    (define class-slot-offset
      (lambda (_klass60433_ _slot60434_)
        (let ((__tmp61339
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass60433_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp61339 _slot60434_ '#f))))
    (define class-slot-ref
      (lambda (_klass60427_ _obj60428_ _slot60429_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass60427_ _obj60428_))
            (let ((_off60431_
                   (let ((__tmp61340 (object-type _obj60428_)))
                     (declare (not safe))
                     (class-slot-offset __tmp61340 _slot60429_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj60428_
               _off60431_
               _klass60427_
               _slot60429_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj60428_ _klass60427_)))))
    (define class-slot-set!
      (lambda (_klass60420_ _obj60421_ _slot60422_ _val60423_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass60420_ _obj60421_))
            (let ((_off60425_
                   (let ((__tmp61341 (object-type _obj60421_)))
                     (declare (not safe))
                     (class-slot-offset __tmp61341 _slot60422_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj60421_
               _val60423_
               _off60425_
               _klass60420_
               _slot60422_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj60421_ _klass60420_)))))
    (define unchecked-field-ref
      (lambda (_obj60417_ _off60418_)
        (let ((__tmp61342
               (let () (declare (not safe)) (##structure-type _obj60417_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj60417_ _off60418_ __tmp61342 '#f))))
    (define unchecked-field-set!
      (lambda (_obj60413_ _off60414_ _val60415_)
        (let ((__tmp61343
               (let () (declare (not safe)) (##structure-type _obj60413_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj60413_
           _val60415_
           _off60414_
           __tmp61343
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj60410_ _slot60411_)
        (let ((__tmp61344
               (let ((__tmp61345
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj60410_))))
                 (declare (not safe))
                 (class-slot-offset __tmp61345 _slot60411_))))
          (declare (not safe))
          (unchecked-field-ref _obj60410_ __tmp61344))))
    (define unchecked-slot-set!
      (lambda (_obj60406_ _slot60407_ _val60408_)
        (let ((__tmp61346
               (let ((__tmp61347
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj60406_))))
                 (declare (not safe))
                 (class-slot-offset __tmp61347 _slot60407_))))
          (declare (not safe))
          (unchecked-field-set! _obj60406_ __tmp61346 _val60408_))))
    (define slot-ref__%
      (lambda (_obj60382_ _slot60383_ _E60384_)
        (if (object? _obj60382_)
            (let* ((_klass60386_ (object-type _obj60382_))
                   (_$e60389_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass60386_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass60386_ _slot60383_))
                        '#f)))
              (if _$e60389_
                  ((lambda (_off60392_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj60382_ _off60392_)))
                   _$e60389_)
                  (_E60384_ _obj60382_ _slot60383_)))
            (_E60384_ _obj60382_ _slot60383_))))
    (define slot-ref__0
      (lambda (_obj60397_ _slot60398_)
        (let ((_E60400_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj60397_ _slot60398_ _E60400_))))
    (define slot-ref
      (lambda _g61349_
        (let ((_g61348_ (let () (declare (not safe)) (##length _g61349_))))
          (cond ((let () (declare (not safe)) (##fx= _g61348_ 2))
                 (apply (lambda (_obj60397_ _slot60398_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj60397_ _slot60398_)))
                        _g61349_))
                ((let () (declare (not safe)) (##fx= _g61348_ 3))
                 (apply (lambda (_obj60402_ _slot60403_ _E60404_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj60402_ _slot60403_ _E60404_)))
                        _g61349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g61349_))))))
    (define slot-set!__%
      (lambda (_obj60354_ _slot60355_ _val60356_ _E60357_)
        (if (object? _obj60354_)
            (let* ((_klass60359_ (object-type _obj60354_))
                   (_$e60362_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass60359_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass60359_ _slot60355_))
                        '#f)))
              (if _$e60362_
                  ((lambda (_off60365_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj60354_
                        _off60365_
                        _val60356_)))
                   _$e60362_)
                  (_E60357_ _obj60354_ _slot60355_)))
            (_E60357_ _obj60354_ _slot60355_))))
    (define slot-set!__0
      (lambda (_obj60370_ _slot60371_ _val60372_)
        (let ((_E60374_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj60370_ _slot60371_ _val60372_ _E60374_))))
    (define slot-set!
      (lambda _g61351_
        (let ((_g61350_ (let () (declare (not safe)) (##length _g61351_))))
          (cond ((let () (declare (not safe)) (##fx= _g61350_ 3))
                 (apply (lambda (_obj60370_ _slot60371_ _val60372_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj60370_ _slot60371_ _val60372_)))
                        _g61351_))
                ((let () (declare (not safe)) (##fx= _g61350_ 4))
                 (apply (lambda (_obj60376_ _slot60377_ _val60378_ _E60379_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj60376_
                             _slot60377_
                             _val60378_
                             _E60379_)))
                        _g61351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g61351_))))))
    (define __slot-error
      (lambda (_obj60350_ _slot60351_)
        (error '"Cannot find slot" 'object: _obj60350_ 'slot: _slot60351_)))
    (define subclass?
      (lambda (_maybe-sub-class60340_ _maybe-super-class60341_)
        (let* ((_maybe-super-class-id60343_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class60341_)))
               (_$e60345_
                (let ((__tmp61352
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class60340_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id60343_ __tmp61352))))
          (if _$e60345_
              _$e60345_
              (let ((__tmp61354
                     (lambda (_super-class60348_)
                       (let ((__tmp61355
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class60348_))))
                         (declare (not safe))
                         (eq? __tmp61355 _maybe-super-class-id60343_))))
                    (__tmp61353
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class60340_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp61354 __tmp61353))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass60337_ _obj60338_)
        (let ((__tmp61356
               (let () (declare (not safe)) (##type-id _klass60337_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj60338_ __tmp61356))))
    (define struct-instance?
      (lambda (_klass60334_ _obj60335_)
        (let ((__tmp61357
               (let () (declare (not safe)) (##type-id _klass60334_))))
          (declare (not safe))
          (##structure-instance-of? _obj60335_ __tmp61357))))
    (define class-instance?
      (lambda (_klass60329_ _obj60330_)
        (if (object? _obj60330_)
            (let ((_type60332_ (object-type _obj60330_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type60332_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type60332_ _klass60329_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass60324_ _k60325_)
        (let ((_obj60327_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass60324_ _k60325_))))
          (let () (declare (not safe)) (object-fill! _obj60327_ '#f))
          _obj60327_)))
    (define object-fill!
      (lambda (_obj60317_ _fill60318_)
        (let _loop60320_ ((_i60322_
                           (let ((__tmp61359
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj60317_))))
                             (declare (not safe))
                             (##fx- __tmp61359 '1))))
          (if (let () (declare (not safe)) (##fx> _i60322_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj60317_
                   _fill60318_
                   _i60322_
                   '#f
                   '#f))
                (let ((__tmp61358
                       (let () (declare (not safe)) (##fx- _i60322_ '1))))
                  (declare (not safe))
                  (_loop60320_ __tmp61358)))
              _obj60317_))))
    (define new-instance
      (lambda (_klass60315_)
        (let ((__obj61263
               (let ((__tmp61360
                      (let ((__tmp61361
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass60315_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp61361))))
                 (declare (not safe))
                 (##make-structure _klass60315_ __tmp61360))))
          (let () (declare (not safe)) (object-fill! __obj61263 '#f))
          __obj61263)))
    (define make-instance
      (lambda (_klass60305_ . _args60306_)
        (let* ((_obj60308_
                (let () (declare (not safe)) (new-instance _klass60305_)))
               (_$e60310_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass60305_ '10 class::t '#f))))
          (if _$e60310_
              ((lambda (_kons-id60313_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass60305_
                    _kons-id60313_
                    _obj60308_
                    _args60306_)))
               _$e60310_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass60305_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass60305_
                     _obj60308_
                     _args60306_))
                  (if (let ((__tmp61362
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass60305_))))
                        (declare (not safe))
                        (not __tmp61362))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass60305_
                         _obj60308_
                         _args60306_))
                      (if (let ((__tmp61364
                                 (let ((__tmp61365
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj60308_))))
                                   (declare (not safe))
                                   (##fx- __tmp61365 '1)))
                                (__tmp61363 (length _args60306_)))
                            (declare (not safe))
                            (##fx= __tmp61364 __tmp61363))
                          (apply ##structure _klass60305_ _args60306_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass60305_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass60305_))
                                 'args:
                                 _args60306_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj60302_ . _args60303_)
        (if (let ((__tmp61367 (length _args60303_))
                  (__tmp61366
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj60302_))))
              (declare (not safe))
              (##fx< __tmp61367 __tmp61366))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj60302_ _args60303_))
            (error '"too many arguments for struct"
                   'object:
                   _obj60302_
                   'args:
                   _args60303_))))
    (define __struct-instance-init!
      (lambda (_obj60261_ _args60262_)
        (let _lp60264_ ((_k60266_ '1) (_rest60267_ _args60262_))
          (let* ((_rest6026860276_ _rest60267_)
                 (_else6027060284_ (lambda () _obj60261_))
                 (_K6027260290_
                  (lambda (_rest60287_ _hd60288_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj60261_ _k60266_ _hd60288_))
                    (let ((__tmp61368
                           (let () (declare (not safe)) (##fx+ _k60266_ '1))))
                      (declare (not safe))
                      (_lp60264_ __tmp61368 _rest60287_)))))
            (if (let () (declare (not safe)) (##pair? _rest6026860276_))
                (let ((_hd6027360293_
                       (let () (declare (not safe)) (##car _rest6026860276_)))
                      (_tl6027460295_
                       (let () (declare (not safe)) (##cdr _rest6026860276_))))
                  (let* ((_hd60298_ _hd6027360293_)
                         (_rest60300_ _tl6027460295_))
                    (declare (not safe))
                    (_K6027260290_ _rest60300_ _hd60298_)))
                (let () (declare (not safe)) (_else6027060284_)))))))
    (define class-instance-init!
      (lambda (_obj60258_ . _args60259_)
        (let ((__tmp61369 (object-type _obj60258_)))
          (declare (not safe))
          (__class-instance-init! __tmp61369 _obj60258_ _args60259_))))
    (define __class-instance-init!
      (lambda (_klass60202_ _obj60203_ _args60204_)
        (let _lp60206_ ((_rest60208_ _args60204_))
          (let* ((_rest6020960219_ _rest60208_)
                 (_else6021160227_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest60208_))
                        _obj60203_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass60202_
                               'rest:
                               _rest60208_))))
                 (_K6021360239_
                  (lambda (_rest60230_ _val60231_ _key60232_)
                    (let ((_$e60234_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass60202_ _key60232_))))
                      (if _$e60234_
                          ((lambda (_off60237_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj60203_
                                _off60237_
                                _val60231_))
                             (let ()
                               (declare (not safe))
                               (_lp60206_ _rest60230_)))
                           _$e60234_)
                          (error '"unknown slot"
                                 'class:
                                 _klass60202_
                                 'slot:
                                 _key60232_))))))
            (if (let () (declare (not safe)) (##pair? _rest6020960219_))
                (let ((_hd6021460242_
                       (let () (declare (not safe)) (##car _rest6020960219_)))
                      (_tl6021560244_
                       (let () (declare (not safe)) (##cdr _rest6020960219_))))
                  (let ((_key60247_ _hd6021460242_))
                    (if (let () (declare (not safe)) (##pair? _tl6021560244_))
                        (let ((_hd6021660249_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6021560244_)))
                              (_tl6021760251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6021560244_))))
                          (let* ((_val60254_ _hd6021660249_)
                                 (_rest60256_ _tl6021760251_))
                            (declare (not safe))
                            (_K6021360239_ _rest60256_ _val60254_ _key60247_)))
                        (let () (declare (not safe)) (_else6021160227_)))))
                (let () (declare (not safe)) (_else6021160227_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass60198_ _obj60199_ _args60200_)
        (apply call-method
               _klass60198_
               'instance-init!
               _obj60199_
               _args60200_)))
    (define constructor-init!
      (lambda (_klass60193_ _kons-id60194_ _obj60195_ . _args60196_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass60193_
           _kons-id60194_
           _obj60195_
           _args60196_))))
    (define __constructor-init!
      (lambda (_klass60183_ _kons-id60184_ _obj60185_ _args60186_)
        (let ((_$e60188_
               (let ()
                 (declare (not safe))
                 (__find-method _klass60183_ _obj60185_ _kons-id60184_))))
          (if _$e60188_
              ((lambda (_kons60191_)
                 (apply _kons60191_ _obj60185_ _args60186_)
                 _obj60185_)
               _$e60188_)
              (error '"missing constructor"
                     'class:
                     _klass60183_
                     'method:
                     _kons-id60184_)))))
    (define struct-copy
      (lambda (_struct60181_)
        (if (let () (declare (not safe)) (##structure? _struct60181_))
            '#!void
            (error '"not a structure" _struct60181_))
        (let () (declare (not safe)) (##structure-copy _struct60181_))))
    (define struct->list
      (lambda (_obj60179_)
        (if (object? _obj60179_)
            (let () (declare (not safe)) (##vector->list _obj60179_))
            (error '"not an object" _obj60179_))))
    (define class->list
      (lambda (_obj60166_)
        (if (object? _obj60166_)
            (let ((_klass60168_ (object-type _obj60166_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass60168_ 'gerbil#class::t))
                  (let ((_slot-vector60170_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass60168_
                            '7
                            class::t
                            '#f))))
                    (let _loop60172_ ((_index60174_
                                       (let ((__tmp61375
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector60170_))))
                                         (declare (not safe))
                                         (##fx- __tmp61375 '1)))
                                      (_plist60175_ '()))
                      (if (let () (declare (not safe)) (##fx< _index60174_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass60168_ _plist60175_))
                          (let ((_slot60177_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector60170_
                                    _index60174_))))
                            (let ((__tmp61374
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index60174_ '1)))
                                  (__tmp61370
                                   (let ((__tmp61373
                                          (symbol->keyword _slot60177_))
                                         (__tmp61371
                                          (let ((__tmp61372
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj60166_
                                                    _index60174_))))
                                            (declare (not safe))
                                            (cons __tmp61372 _plist60175_))))
                                     (declare (not safe))
                                     (cons __tmp61373 __tmp61371))))
                              (declare (not safe))
                              (_loop60172_ __tmp61374 __tmp61370))))))
                  (error '"not a class type"
                         'object:
                         _obj60166_
                         'class:
                         _klass60168_)))
            (error '"not an object" _obj60166_))))
    (define call-method
      (lambda (_obj60157_ _id60158_ . _args60159_)
        (let ((_$e60161_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60157_ _id60158_))))
          (if _$e60161_
              ((lambda (_method60164_)
                 (apply _method60164_ _obj60157_ _args60159_))
               _$e60161_)
              (error '"cannot find method"
                     'object:
                     _obj60157_
                     'method:
                     _id60158_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj60154_ _id60155_)
        (if (object? _obj60154_)
            (let ((__tmp61376 (object-type _obj60154_)))
              (declare (not safe))
              (find-method __tmp61376 _obj60154_ _id60155_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj60148_ _id60149_)
        (let ((_$e60151_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60148_ _id60149_))))
          (if _$e60151_
              _$e60151_
              (error '"missing method"
                     'object:
                     _obj60148_
                     'method:
                     _id60149_)))))
    (define bound-method-ref
      (lambda (_obj60138_ _id60139_)
        (let ((_$e60141_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60138_ _id60139_))))
          (if _$e60141_
              ((lambda (_method60144_)
                 (lambda _args60146_
                   (apply _method60144_ _obj60138_ _args60146_)))
               _$e60141_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj60131_ _id60132_)
        (let ((_method60134_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj60131_ _id60132_))))
          (lambda _args60136_ (apply _method60134_ _obj60131_ _args60136_)))))
    (define find-method
      (lambda (_klass60127_ _obj60128_ _id60129_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass60127_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass60127_ _obj60128_ _id60129_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass60127_ _obj60128_ _id60129_)))))
    (define __find-method
      (lambda (_klass60120_ _obj60121_ _id60122_)
        (let ((_$e60124_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass60120_ _obj60121_ _id60122_))))
          (if _$e60124_
              _$e60124_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass60120_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass60120_ _obj60121_ _id60122_)))))))
    (define class-find-method
      (lambda (_klass60116_ _obj60117_ _id60118_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass60116_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass60116_ _obj60117_ _id60118_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins60108_ _obj60109_ _id60110_)
        (let ((__tmp61377
               (lambda (_g6011160113_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6011160113_ _obj60109_ _id60110_)))))
          (declare (not safe))
          (ormap1 __tmp61377 _mixins60108_))))
    (define builtin-find-method
      (lambda (_klass60101_ _obj60102_ _id60103_)
        (if (let () (declare (not safe)) (##type? _klass60101_))
            (let ((_$e60105_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass60101_ _obj60102_ _id60103_))))
              (if _$e60105_
                  _$e60105_
                  (let ((__tmp61378
                         (let ()
                           (declare (not safe))
                           (##type-super _klass60101_))))
                    (declare (not safe))
                    (builtin-find-method __tmp61378 _obj60102_ _id60103_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass60078_ _obj60079_ _id60080_)
        (letrec ((_metaclass-resolve-method60082_
                  (lambda ()
                    (let ((__method61264
                           (let ()
                             (declare (not safe))
                             (method-ref _klass60078_ 'direct-method-ref))))
                      (if __method61264
                          (__method61264 _klass60078_ _obj60079_ _id60080_)
                          (error '"Missing method"
                                 _klass60078_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!60083_
                  (lambda ()
                    (let ((_method60098_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method60082_))))
                      (let ((__tmp61380
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass60078_
                                '11
                                class::t
                                '#f)))
                            (__tmp61379 (if _method60098_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp61380 _id60080_ __tmp61379))
                      _method60098_))))
          (let ((_$e60085_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass60078_ '11 class::t '#f))))
            (if _$e60085_
                ((lambda (_ht60088_)
                   (let ((_method60090_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht60088_ _id60080_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method60090_))
                         _method60090_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass60078_))
                             (let ((_$e60092_ _method60090_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e60092_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method60082_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e60092_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!60083_)))))
                             '#f))))
                 _$e60085_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass60078_))
                    (let ((_tab60095_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass60078_
                         _tab60095_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!60083_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass60074_ _obj60075_ _id60076_)
        (let ((__tmp61381 (##structure-ref _klass60074_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp61381 _obj60075_ _id60076_))))
    (define builtin-method-ref
      (lambda (_klass60065_ _obj60066_ _id60067_)
        (let ((_$e60069_
               (let ((__tmp61382
                      (let () (declare (not safe)) (##type-id _klass60065_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp61382 '#f))))
          (if _$e60069_
              ((lambda (_mtab60072_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab60072_ _id60067_ '#f)))
               _$e60069_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass60031_ _id60032_ _proc60033_ _rebind?60034_)
        (letrec ((_bind!60036_
                  (lambda (_ht60049_)
                    (if (and (let () (declare (not safe)) (not _rebind?60034_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht60049_ _id60032_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass60031_
                               'method:
                               _id60032_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht60049_
                           _id60032_
                           _proc60033_))))))
          (if (let () (declare (not safe)) (procedure? _proc60033_))
              '#!void
              (error '"bad method; expected procedure" _proc60033_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass60031_ 'gerbil#class::t))
              (let ((_ht60038_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass60031_
                        '11
                        class::t
                        '#f))))
                (if _ht60038_
                    (let () (declare (not safe)) (_bind!60036_ _ht60038_))
                    (let ((_ht60040_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass60031_
                         _ht60040_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!60036_ _ht60040_)))))
              (if (let () (declare (not safe)) (##type? _klass60031_))
                  (let ((_ht60047_
                         (let ((_$e60042_
                                (let ((__tmp61383
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass60031_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp61383
                                   '#f))))
                           (if _$e60042_
                               _$e60042_
                               (let ((_ht60045_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp61384
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass60031_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp61384
                                    _ht60045_))
                                 _ht60045_)))))
                    (declare (not safe))
                    (_bind!60036_ _ht60047_))
                  (error '"bad class; expected class or builtin type"
                         _klass60031_))))))
    (define bind-method!__0
      (lambda (_klass60054_ _id60055_ _proc60056_)
        (let ((_rebind?60058_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass60054_
           _id60055_
           _proc60056_
           _rebind?60058_))))
    (define bind-method!
      (lambda _g61386_
        (let ((_g61385_ (let () (declare (not safe)) (##length _g61386_))))
          (cond ((let () (declare (not safe)) (##fx= _g61385_ 3))
                 (apply (lambda (_klass60054_ _id60055_ _proc60056_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass60054_
                             _id60055_
                             _proc60056_)))
                        _g61386_))
                ((let () (declare (not safe)) (##fx= _g61385_ 4))
                 (apply (lambda (_klass60060_
                                 _id60061_
                                 _proc60062_
                                 _rebind?60063_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass60060_
                             _id60061_
                             _proc60062_
                             _rebind?60063_)))
                        _g61386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g61386_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_method-proc60027_ _specializer60028_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _method-proc60027_
           _specializer60028_))))
    (define __class-specializer-hash-key
      (lambda (_klass60025_)
        (let ((__tmp61387
               (let () (declare (not safe)) (##type-id _klass60025_))))
          (declare (not safe))
          (symbolic-hash __tmp61387))))
    (define make-class-specializer-table__%
      (lambda (_size-hint60006_ _seed60008_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint60006_
           __class-specializer-hash-key
           eq?
           _seed60008_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint60014_ '#f) (_seed60016_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint60014_ _seed60016_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint60018_)
        (let ((_seed60020_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint60018_ _seed60020_))))
    (define make-class-specializer-table
      (lambda _g61389_
        (let ((_g61388_ (let () (declare (not safe)) (##length _g61389_))))
          (cond ((let () (declare (not safe)) (##fx= _g61388_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g61389_))
                ((let () (declare (not safe)) (##fx= _g61388_ 1))
                 (apply (lambda (_size-hint60018_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint60018_)))
                        _g61389_))
                ((let () (declare (not safe)) (##fx= _g61388_ 2))
                 (apply (lambda (_size-hint60022_ _seed60023_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint60022_
                             _seed60023_)))
                        _g61389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g61389_))))))
    (define class-specializer-table-ref
      (lambda (_tab59963_ _key59964_ _default59965_)
        (let ((_table59967_
               (let () (declare (not safe)) (&raw-table-table _tab59963_)))
              (_seed59968_
               (let () (declare (not safe)) (&raw-table-seed _tab59963_))))
          (let* ((_h59970_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59964_))
                         _seed59968_))
                 (_size59973_ (vector-length _table59967_))
                 (_entries59976_ (fxquotient _size59973_ '2))
                 (_start59979_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59970_ _entries59976_)
                   '1)))
            (let _loop59983_ ((_probe59986_ _start59979_)
                              (_i59988_ '1)
                              (_deleted59990_ '#f))
              (let ((_k59993_ (vector-ref _table59967_ _probe59986_)))
                (if (let ((__tmp61390 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59993_ __tmp61390))
                    _default59965_
                    (if (let ((__tmp61391 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59993_ __tmp61391))
                        (let ((__tmp61394
                               (let ((_next-probe59996_
                                      (fx+ _start59979_
                                           _i59988_
                                           (fx* _i59988_ _i59988_))))
                                 (fxmodulo _next-probe59996_ _size59973_)))
                              (__tmp61393 (fx+ _i59988_ '1))
                              (__tmp61392
                               (let ((_$e59999_ _deleted59990_))
                                 (if _$e59999_ _$e59999_ _probe59986_))))
                          (declare (not safe))
                          (_loop59983_ __tmp61394 __tmp61393 __tmp61392))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59964_ _k59993_))
                            (vector-ref _table59967_ (fx+ _probe59986_ '1))
                            (let ((__tmp61396
                                   (let ((_next-probe60002_
                                          (fx+ _start59979_
                                               _i59988_
                                               (fx* _i59988_ _i59988_))))
                                     (fxmodulo _next-probe60002_ _size59973_)))
                                  (__tmp61395 (fx+ _i59988_ '1)))
                              (declare (not safe))
                              (_loop59983_
                               __tmp61396
                               __tmp61395
                               _deleted59990_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab59959_ _key59960_ _value59961_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab59959_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab59959_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab59959_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab59959_
           _key59960_
           _value59961_))))
    (define __class-specializer-table-set!
      (lambda (_tab59914_ _key59915_ _value59916_)
        (let ((_table59919_
               (let () (declare (not safe)) (&raw-table-table _tab59914_)))
              (_seed59920_
               (let () (declare (not safe)) (&raw-table-seed _tab59914_))))
          (let* ((_h59922_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59915_))
                         _seed59920_))
                 (_size59925_ (vector-length _table59919_))
                 (_entries59928_ (fxquotient _size59925_ '2))
                 (_start59931_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59922_ _entries59928_)
                   '1)))
            (let _loop59935_ ((_probe59938_ _start59931_)
                              (_i59940_ '1)
                              (_deleted59942_ '#f))
              (let ((_k59945_ (vector-ref _table59919_ _probe59938_)))
                (if (let ((__tmp61397 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59945_ __tmp61397))
                    (if _deleted59942_
                        (begin
                          (vector-set! _table59919_ _deleted59942_ _key59915_)
                          (vector-set!
                           _table59919_
                           (fx+ _deleted59942_ '1)
                           _value59916_)
                          ((lambda ()
                             (let ((__tmp61398
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59914_
                                __tmp61398)))))
                        (begin
                          (vector-set! _table59919_ _probe59938_ _key59915_)
                          (vector-set!
                           _table59919_
                           (fx+ _probe59938_ '1)
                           _value59916_)
                          ((lambda ()
                             (let ((__tmp61399
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab59914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab59914_ __tmp61399))
                             (let ((__tmp61400
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59914_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59914_
                                __tmp61400))))))
                    (if (let ((__tmp61401 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59945_ __tmp61401))
                        (let ((__tmp61404
                               (let ((_next-probe59950_
                                      (fx+ _start59931_
                                           _i59940_
                                           (fx* _i59940_ _i59940_))))
                                 (fxmodulo _next-probe59950_ _size59925_)))
                              (__tmp61403 (fx+ _i59940_ '1))
                              (__tmp61402
                               (let ((_$e59953_ _deleted59942_))
                                 (if _$e59953_ _$e59953_ _probe59938_))))
                          (declare (not safe))
                          (_loop59935_ __tmp61404 __tmp61403 __tmp61402))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59915_ _k59945_))
                            (begin
                              (vector-set!
                               _table59919_
                               _probe59938_
                               _key59915_)
                              (vector-set!
                               _table59919_
                               (fx+ _probe59938_ '1)
                               _value59916_))
                            (let ((__tmp61406
                                   (let ((_next-probe59956_
                                          (fx+ _start59931_
                                               _i59940_
                                               (fx* _i59940_ _i59940_))))
                                     (fxmodulo _next-probe59956_ _size59925_)))
                                  (__tmp61405 (fx+ _i59940_ '1)))
                              (declare (not safe))
                              (_loop59935_
                               __tmp61406
                               __tmp61405
                               _deleted59942_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab59909_
               _key59910_
               _class-specializer-table-update!59911_
               _default59912_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab59909_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab59909_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab59909_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab59909_
           _key59910_
           _class-specializer-table-update!59911_
           _default59912_))))
    (define __class-specializer-table-update!
      (lambda (_tab59863_
               _key59864_
               _class-specializer-table-update!59865_
               _default59866_)
        (let ((_table59869_
               (let () (declare (not safe)) (&raw-table-table _tab59863_)))
              (_seed59870_
               (let () (declare (not safe)) (&raw-table-seed _tab59863_))))
          (let* ((_h59872_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59864_))
                         _seed59870_))
                 (_size59875_ (vector-length _table59869_))
                 (_entries59878_ (fxquotient _size59875_ '2))
                 (_start59881_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59872_ _entries59878_)
                   '1)))
            (let _loop59885_ ((_probe59888_ _start59881_)
                              (_i59890_ '1)
                              (_deleted59892_ '#f))
              (let ((_k59895_ (vector-ref _table59869_ _probe59888_)))
                (if (let ((__tmp61407 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59895_ __tmp61407))
                    (if _deleted59892_
                        (begin
                          (vector-set! _table59869_ _deleted59892_ _key59864_)
                          (vector-set!
                           _table59869_
                           (fx+ _deleted59892_ '1)
                           (_class-specializer-table-update!59865_
                            _default59866_))
                          ((lambda ()
                             (let ((__tmp61408
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59863_
                                __tmp61408)))))
                        (begin
                          (vector-set! _table59869_ _probe59888_ _key59864_)
                          (vector-set!
                           _table59869_
                           (fx+ _probe59888_ '1)
                           (_class-specializer-table-update!59865_
                            _default59866_))
                          ((lambda ()
                             (let ((__tmp61409
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab59863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab59863_ __tmp61409))
                             (let ((__tmp61410
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59863_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59863_
                                __tmp61410))))))
                    (if (let ((__tmp61411 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59895_ __tmp61411))
                        (let ((__tmp61414
                               (let ((_next-probe59900_
                                      (fx+ _start59881_
                                           _i59890_
                                           (fx* _i59890_ _i59890_))))
                                 (fxmodulo _next-probe59900_ _size59875_)))
                              (__tmp61413 (fx+ _i59890_ '1))
                              (__tmp61412
                               (let ((_$e59903_ _deleted59892_))
                                 (if _$e59903_ _$e59903_ _probe59888_))))
                          (declare (not safe))
                          (_loop59885_ __tmp61414 __tmp61413 __tmp61412))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59864_ _k59895_))
                            (begin
                              (vector-set!
                               _table59869_
                               _probe59888_
                               _key59864_)
                              (vector-set!
                               _table59869_
                               (fx+ _probe59888_ '1)
                               (_class-specializer-table-update!59865_
                                (vector-ref
                                 _table59869_
                                 (fx+ _probe59888_ '1)))))
                            (let ((__tmp61416
                                   (let ((_next-probe59906_
                                          (fx+ _start59881_
                                               _i59890_
                                               (fx* _i59890_ _i59890_))))
                                     (fxmodulo _next-probe59906_ _size59875_)))
                                  (__tmp61415 (fx+ _i59890_ '1)))
                              (declare (not safe))
                              (_loop59885_
                               __tmp61416
                               __tmp61415
                               _deleted59892_)))))))))))
    (define class-specializer-trable-delete!
      (lambda (_tab59822_ _key59824_)
        (let ((_table59827_
               (let () (declare (not safe)) (&raw-table-table _tab59822_)))
              (_seed59829_
               (let () (declare (not safe)) (&raw-table-seed _tab59822_))))
          (let* ((_h59832_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59824_))
                         _seed59829_))
                 (_size59835_ (vector-length _table59827_))
                 (_entries59838_ (fxquotient _size59835_ '2))
                 (_start59841_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59832_ _entries59838_)
                   '1)))
            (let _loop59845_ ((_probe59848_ _start59841_) (_i59850_ '1))
              (let ((_k59853_ (vector-ref _table59827_ _probe59848_)))
                (if (let ((__tmp61417 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59853_ __tmp61417))
                    '#!void
                    (if (let ((__tmp61418 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59853_ __tmp61418))
                        (let ((__tmp61420
                               (let ((_next-probe59856_
                                      (fx+ _start59841_
                                           _i59850_
                                           (fx* _i59850_ _i59850_))))
                                 (fxmodulo _next-probe59856_ _size59835_)))
                              (__tmp61419 (fx+ _i59850_ '1)))
                          (declare (not safe))
                          (_loop59845_ __tmp61420 __tmp61419))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59824_ _k59853_))
                            (begin
                              (vector-set!
                               _table59827_
                               _probe59848_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59827_
                               (fx+ _probe59848_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp61421
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab59822_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab59822_
                                    __tmp61421)))))
                            (let ((__tmp61423
                                   (let ((_next-probe59860_
                                          (fx+ _start59841_
                                               _i59850_
                                               (fx* _i59850_ _i59850_))))
                                     (fxmodulo _next-probe59860_ _size59835_)))
                                  (__tmp61422 (fx+ _i59850_ '1)))
                              (declare (not safe))
                              (_loop59845_ __tmp61423 __tmp61422)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass59815_)
        (let ((_$e59817_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass59815_))))
          (if _$e59817_
              _$e59817_
              (let ((_method-table59820_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass59815_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass59815_ _method-table59820_))
                _method-table59820_)))))
    (define __lookup-class-specializer
      (lambda (_klass59805_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again59809_ ()
            (if (let ((__tmp61424
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61424 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again59809_))))))
        (let ((_method-table59813_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass59805_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table59813_)))
    (define __bind-class-specializer!
      (lambda (_klass59796_ _method-table59797_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again59801_ ()
            (if (let ((__tmp61425
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61425 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again59801_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass59796_
           _method-table59797_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass59781_ _method-table59782_ _method59783_ _proc59784_)
        (let ((_$e59786_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table59782_ _method59783_ '#f))))
          (if _$e59786_
              _$e59786_
              (let ((_$e59789_
                     (let ()
                       (declare (not safe))
                       (eq-table-ref __method-specializers _proc59784_ '#f))))
                (if _$e59789_
                    ((lambda (_specialize59792_)
                       (let ((_specialized-proc59794_
                              (_specialize59792_
                               _klass59781_
                               _method-table59782_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table59782_
                          _method59783_
                          _specialized-proc59794_)))
                     _$e59789_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table59782_
                       _method59783_
                       _proc59784_))))))))
    (define __specialize-class
      (lambda (_klass59708_)
        (if (let ((__tmp61426
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass59708_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp61426))
            (if (let () (declare (not safe)) (##type? _klass59708_))
                (let ((_method-table59710_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop59712_ ((_xklass59714_ _klass59708_))
                    (if _xklass59714_
                        (begin
                          (let ((_xmethod-table5971559717_
                                 (let ((__tmp61427
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass59714_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp61427
                                    '#f))))
                            (if _xmethod-table5971559717_
                                (let* ((_xmethod-table59720_
                                        _xmethod-table5971559717_)
                                       (__tmp61428
                                        (lambda (_g5972159724_ _g5972259726_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass59708_
                                             _method-table59710_
                                             _g5972159724_
                                             _g5972259726_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table59720_
                                   __tmp61428))
                                '#f))
                          (let ((__tmp61429
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass59714_))))
                            (declare (not safe))
                            (_loop59712_ __tmp61429)))
                        '#!void))
                  _method-table59710_)
                (error '"bad class; cannot specialize" _klass59708_))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass59708_))
                (let ((__method61265
                       (let ()
                         (declare (not safe))
                         (method-ref _klass59708_ 'specialize-class))))
                  (if __method61265
                      (__method61265 _klass59708_)
                      (error '"Missing method"
                             _klass59708_
                             'specialize-class)))
                (if (let ((__tmp61430
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass59708_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp61430))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _klass59708_)
                    (let ((_method-table59729_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop59731_ ((_rest59733_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass59708_))))
                        (let* ((_rest5973459742_ _rest59733_)
                               (_else5973659750_
                                (lambda () _method-table59729_))
                               (_K5973859769_
                                (lambda (_rest59753_ _xklass59754_)
                                  (let ((_xmethod-table5975559757_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass59754_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table5975559757_
                                        (let* ((_xmethod-table59760_
                                                _xmethod-table5975559757_)
                                               (__tmp61431
                                                (lambda (_g5976159764_
                                                         _g5976259766_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass59708_
                                                     _method-table59729_
                                                     _g5976159764_
                                                     _g5976259766_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table59760_
                                           __tmp61431))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop59731_ _rest59753_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest5973459742_))
                              (let ((_hd5973959772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest5973459742_)))
                                    (_tl5974059774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest5973459742_))))
                                (let* ((_xklass59777_ _hd5973959772_)
                                       (_rest59779_ _tl5974059774_))
                                  (declare (not safe))
                                  (_K5973859769_ _rest59779_ _xklass59777_)))
                              (let ()
                                (declare (not safe))
                                (_else5973659750_)))))))))))
    (define seal-class!
      (lambda (_klass59704_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass59704_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass59704_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass59704_))
                      '#!void
                      (error '"cannot seal non-final class" _klass59704_))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass59704_))
                      (let ((__method61266
                             (let ()
                               (declare (not safe))
                               (method-ref _klass59704_ 'seal-class!))))
                        (if __method61266
                            (__method61266 _klass59704_)
                            (error '"Missing method"
                                   _klass59704_
                                   'seal-class!)))
                      (if (let ((__tmp61432
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass59704_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp61432))
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _klass59704_)
                          (let ((_method-table59706_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass59704_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass59704_
                             _method-table59706_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass59704_))))
            '#!void)))
    (define next-method
      (lambda (_subklass59653_ _obj59654_ _id59655_)
        (let ((_klass59657_ (object-type _obj59654_))
              (_type-id59658_
               (let () (declare (not safe)) (##type-id _subklass59653_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass59657_ 'gerbil#class::t))
              (let _lp59660_ ((_rest59662_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass59657_))))
                (let* ((_rest5966359671_ _rest59662_)
                       (_else5966559679_ (lambda () '#f))
                       (_K5966759685_
                        (lambda (_rest59682_ _klass59683_)
                          (if (let ((__tmp61433
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass59683_))))
                                (declare (not safe))
                                (eq? _type-id59658_ __tmp61433))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest59682_
                                 _obj59654_
                                 _id59655_))
                              (let ()
                                (declare (not safe))
                                (_lp59660_ _rest59682_))))))
                  (if (let () (declare (not safe)) (##pair? _rest5966359671_))
                      (let ((_hd5966859688_
                             (let ()
                               (declare (not safe))
                               (##car _rest5966359671_)))
                            (_tl5966959690_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest5966359671_))))
                        (let* ((_klass59693_ _hd5966859688_)
                               (_rest59695_ _tl5966959690_))
                          (declare (not safe))
                          (_K5966759685_ _rest59695_ _klass59693_)))
                      (let () (declare (not safe)) (_else5966559679_)))))
              (if (let () (declare (not safe)) (##type? _klass59657_))
                  (let _lp59697_ ((_klass59699_ _klass59657_))
                    (if (let ((__tmp61434
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass59699_))))
                          (declare (not safe))
                          (eq? _type-id59658_ __tmp61434))
                        (let ((__tmp61435
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass59699_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp61435
                           _obj59654_
                           _id59655_))
                        (let ((_$e59701_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass59699_))))
                          (if _$e59701_
                              (let ()
                                (declare (not safe))
                                (_lp59697_ _$e59701_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass59643_ _obj59644_ _id59645_ . _args59646_)
        (let ((_$e59648_
               (let ()
                 (declare (not safe))
                 (next-method _subklass59643_ _obj59644_ _id59645_))))
          (if _$e59648_
              ((lambda (_methodf59651_)
                 (apply _methodf59651_ _obj59644_ _args59646_))
               _$e59648_)
              (error '"cannot find next method"
                     'object:
                     _obj59644_
                     'method:
                     _id59645_)))))
    (define write-style (lambda (_we59641_) (macro-writeenv-style _we59641_)))
    (define write-object
      (lambda (_we59633_ _obj59634_)
        (let ((_$e59636_
               (let () (declare (not safe)) (method-ref _obj59634_ ':wr))))
          (if _$e59636_
              ((lambda (_method59639_) (_method59639_ _obj59634_ _we59633_))
               _$e59636_)
              (let ()
                (declare (not safe))
                (##default-wr _we59633_ _obj59634_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
