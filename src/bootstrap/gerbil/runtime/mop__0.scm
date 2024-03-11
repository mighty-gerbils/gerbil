(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710170106)
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
      (let* ((_slots64025_
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
             (_slot-vector64027_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64025_))))
             (_slot-table64034_
              (let ((_slot-table64029_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64031_ _field64032_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64029_
                      _slot64031_
                      _field64032_))
                   (let ((__tmp64175
                          (let ()
                            (declare (not safe))
                            (symbol->keyword _slot64031_))))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64029_
                      __tmp64175
                      _field64032_)))
                 _slots64025_
                 (iota (length _slots64025_) '1))
                _slot-table64029_))
             (_flags64036_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64042_
              (list->vector
               (apply append
                      (map (lambda (_g6403764039_) (list _g6403764039_ '5 '#f))
                           (drop _slots64025_ '5)))))
             (_properties64044_
              (let ((__tmp64178
                     (let ((__tmp64179
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64025_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64179)))
                    (__tmp64176
                     (let ((__tmp64177
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64177 '()))))
                (declare (not safe))
                (cons __tmp64178 __tmp64176)))
             (_t64046_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64036_
                 ##type-type
                 _fields64042_
                 '()
                 _slot-vector64027_
                 _slot-table64034_
                 _properties64044_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64046_ _t64046_))
        _t64046_))
    (define class-type?
      (lambda (_obj64023_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64023_ class::t.id))))
    (define class-type=?
      (lambda (_x64020_ _y64021_)
        (let ((__tmp64181 (##structure-ref _x64020_ '1 class::t '#f))
              (__tmp64180 (##structure-ref _y64021_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64181 __tmp64180))))
    (define type-opaque?
      (lambda (_type64018_)
        (let ((__tmp64182
               (let ((__tmp64183
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64018_))))
                 (declare (not safe))
                 (##fxand __tmp64183 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64182 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64016_)
        (let ((__tmp64184
               (let ((__tmp64185
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64016_))))
                 (declare (not safe))
                 (##fxand __tmp64185 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64184 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64014_)
        (let ((__tmp64186
               (let ((__tmp64187
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64014_))))
                 (declare (not safe))
                 (##fxand __tmp64187 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64186 '0))))
    (define class-type-struct?
      (lambda (_klass64012_)
        (let ((__tmp64188
               (let ((__tmp64189
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64012_))))
                 (declare (not safe))
                 (##fxand __tmp64189 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64188 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64010_)
        (let ((__tmp64190
               (let ((__tmp64191
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64010_))))
                 (declare (not safe))
                 (##fxand __tmp64191 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64190 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64008_)
        (let ((__tmp64192
               (let ((__tmp64193
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64008_))))
                 (declare (not safe))
                 (##fxand __tmp64193 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64192 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties63974_)
        (map (lambda (_e6397563977_)
               (let* ((_g6397963986_ _e6397563977_)
                      (_E6398163990_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6397963986_))))
                      (_K6398263996_
                       (lambda (_val63993_ _key63994_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key63994_ 'direct-supers:))
                             (let ((__tmp64194 (map class-type-id _val63993_)))
                               (declare (not safe))
                               (cons _key63994_ __tmp64194))
                             (let ()
                               (declare (not safe))
                               (cons _key63994_ _val63993_))))))
                 (if (let () (declare (not safe)) (##pair? _g6397963986_))
                     (let ((_hd6398363999_
                            (let ()
                              (declare (not safe))
                              (##car _g6397963986_)))
                           (_tl6398464001_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6397963986_))))
                       (let* ((_key64004_ _hd6398363999_)
                              (_val64006_ _tl6398464001_))
                         (declare (not safe))
                         (_K6398263996_ _val64006_ _key64004_)))
                     (let () (declare (not safe)) (_E6398163990_)))))
             _properties63974_)))
    (define make-class-type-descriptor
      (lambda (_type-id63873_
               _type-name63874_
               _type-super63875_
               _precedence-list63876_
               _slot-vector63877_
               _properties63878_
               _constructor63879_
               _slot-table63880_
               _methods63881_)
        (letrec ((_make-props!63883_
                  (lambda (_key63943_)
                    (letrec* ((_ht63945_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!63946_
                               (lambda (_ht63967_ _slots63968_)
                                 (for-each
                                  (lambda (_g6396963971_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht63967_
                                       _g6396963971_
                                       '#t)))
                                  _slots63968_)))
                              (_put-alist!63947_
                               (lambda (_ht63956_ _key63957_ _alist63958_)
                                 (let ((_$e63960_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key63957_
                                           _alist63958_))))
                                   (if _$e63960_
                                       ((lambda (_g6396263964_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!63946_
                                             _ht63956_
                                             _g6396263964_)))
                                        _$e63960_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!63947_
                         _ht63945_
                         _key63943_
                         _properties63878_))
                      (for-each
                       (lambda (_mixin63949_)
                         (let ((_alist63951_
                                (##structure-ref
                                 _mixin63949_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist63951_))
                                   (let ((__tmp64196
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key63943_
                                             _alist63951_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64196)))
                               (let ((__tmp64195
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin63949_))))
                                 (declare (not safe))
                                 (_put-slots!63946_ _ht63945_ __tmp64195))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!63947_
                                  _ht63945_
                                  _key63943_
                                  _alist63951_)))))
                       _precedence-list63876_)
                      _ht63945_))))
          (let* ((_transparent?63885_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63878_)))
                 (_all-slots-printable?63890_
                  (let ((_$e63887_ _transparent?63885_))
                    (if _$e63887_
                        _$e63887_
                        (let ((__tmp64197
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63878_))))
                          (declare (not safe))
                          (eq? '#t __tmp64197)))))
                 (_printable63892_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63890_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63883_ 'print:))
                      '#f))
                 (_all-slots-equalable?63897_
                  (let ((_$e63894_ _transparent?63885_))
                    (if _$e63894_
                        _$e63894_
                        (let ((__tmp64198
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63878_))))
                          (declare (not safe))
                          (eq? '#t __tmp64198)))))
                 (_equalable63899_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63897_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63883_ 'equal:))
                      '#f))
                 (_first-new-field63901_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63875_
                         'gerbil#class::t))
                      (let ((__tmp64199
                             (##structure-ref
                              _type-super63875_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64199))
                      '1))
                 (_field-info-length63903_
                  (let ((__tmp64200
                         (let ((__tmp64201
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63877_))))
                           (declare (not safe))
                           (##fx- __tmp64201 _first-new-field63901_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64200)))
                 (_field-info63905_ (make-vector _field-info-length63903_ '#f))
                 (_struct?63907_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63878_)))
                 (_final?63909_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63878_)))
                 (_metaclass63917_
                  (let ((_metaclass6391063912_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63878_))))
                    (if _metaclass6391063912_
                        (let ((_metaclass63915_ _metaclass6391063912_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63915_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63873_
                                       'metaclass:
                                       _metaclass63915_)))
                          _metaclass63915_)
                        '#f)))
                 (_opaque?63922_
                  (let ((_$e63919_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63897_))))
                    (if _$e63919_
                        _$e63919_
                        (if _type-super63875_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63875_))
                            '#f))))
                 (_type-flags63924_
                  (let ((__tmp64205 (if _final?63909_ '0 type-flag-extensible))
                        (__tmp64204 (if _opaque?63922_ type-flag-opaque '0))
                        (__tmp64203
                         (if _struct?63907_ class-type-flag-struct '0))
                        (__tmp64202
                         (if _metaclass63917_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64205
                             __tmp64204
                             __tmp64203
                             __tmp64202))))
            (let _loop63927_ ((_i63929_ _first-new-field63901_) (_j63930_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63930_ _field-info-length63903_))
                  (let* ((_slot63932_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63877_ _i63929_)))
                         (_flags63940_
                          (if _transparent?63885_
                              '0
                              (let ((__tmp64207
                                     (if (or _all-slots-printable?63890_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63892_
                                                _slot63932_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64206
                                     (if (or _all-slots-equalable?63897_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63899_
                                                _slot63932_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64207 __tmp64206)))))
                    (vector-set! _field-info63905_ _j63930_ _slot63932_)
                    (vector-set!
                     _field-info63905_
                     (let () (declare (not safe)) (##fx+ _j63930_ '1))
                     _flags63940_)
                    (let ((__tmp64209
                           (let () (declare (not safe)) (##fx+ _i63929_ '1)))
                          (__tmp64208
                           (let () (declare (not safe)) (##fx+ _j63930_ '3))))
                      (declare (not safe))
                      (_loop63927_ __tmp64209 __tmp64208)))
                  '#!void))
            (if _metaclass63917_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63917_
                   _type-id63873_
                   _type-name63874_
                   _type-flags63924_
                   _type-super63875_
                   _field-info63905_
                   _precedence-list63876_
                   _slot-vector63877_
                   _slot-table63880_
                   _properties63878_
                   _constructor63879_
                   _methods63881_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63873_
                   _type-name63874_
                   _type-flags63924_
                   _type-super63875_
                   _field-info63905_
                   _precedence-list63876_
                   _slot-vector63877_
                   _slot-table63880_
                   _properties63878_
                   _constructor63879_
                   _methods63881_)))))))
    (define class-type-id
      (lambda (_klass63871_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63871_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63869_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63869_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63866_ _val63867_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63866_ _val63867_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63861_ _val63863_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63861_
           _val63863_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63859_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63859_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63857_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63857_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63854_ _val63855_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63854_ _val63855_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63849_ _val63851_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63849_
           _val63851_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63847_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63847_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63845_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63845_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63842_ _val63843_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63842_ _val63843_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63837_ _val63839_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63837_
           _val63839_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63835_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63835_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63833_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63833_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63830_ _val63831_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63830_ _val63831_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63825_ _val63827_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63825_
           _val63827_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63823_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63823_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63821_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63821_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63818_ _val63819_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63818_ _val63819_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63813_ _val63815_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63813_
           _val63815_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63811_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63811_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63809_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63809_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63806_ _val63807_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63806_
           _val63807_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63801_ _val63803_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63801_
           _val63803_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63799_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63799_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63797_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63797_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63794_ _val63795_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63794_
           _val63795_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63789_ _val63791_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63789_
           _val63791_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63787_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63787_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63785_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63785_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63782_ _val63783_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63782_ _val63783_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63777_ _val63779_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63777_
           _val63779_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63775_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63775_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63773_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63773_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63770_ _val63771_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63770_ _val63771_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63765_ _val63767_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63765_
           _val63767_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63763_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63763_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63761_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63761_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63758_ _val63759_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63758_
           _val63759_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63753_ _val63755_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63753_
           _val63755_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63751_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63751_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63749_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63749_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63746_ _val63747_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63746_ _val63747_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63741_ _val63743_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63741_
           _val63743_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63739_)
        (cdr (vector->list (##structure-ref _klass63739_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63737_)
        (let ((__tmp64210
               (let ((__tmp64211
                      (##structure-ref _klass63737_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64211))))
          (declare (not safe))
          (##fx- __tmp64210 '1))))
    (define class-type-seal!
      (lambda (_klass63735_)
        (let ((__tmp64212
               (let ((__tmp64213
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63735_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64213))))
          (declare (not safe))
          (##structure-set!
           _klass63735_
           __tmp64212
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63733_)
        (let ((__tmp64214
               (let ((__tmp64215
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63733_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64215))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63733_
           __tmp64214
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63724_ _maybe-super-struct63725_)
        (let ((_maybe-super-struct-id63727_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63725_))))
          (let _lp63729_ ((_super-struct63731_ _maybe-sub-struct63724_))
            (if (let () (declare (not safe)) (not _super-struct63731_))
                '#f
                (if (let ((__tmp64217
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63731_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63727_ __tmp64217))
                    '#t
                    (let ((__tmp64216
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63731_))))
                      (declare (not safe))
                      (_lp63729_ __tmp64216))))))))
    (define base-struct/1
      (lambda (_klass63722_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63722_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63722_))
                _klass63722_
                (let () (declare (not safe)) (##type-super _klass63722_)))
            (if (let () (declare (not safe)) (not _klass63722_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63722_))))))
    (define base-struct/2
      (lambda (_klass163710_ _klass263711_)
        (let ((_s163713_
               (let () (declare (not safe)) (base-struct/1 _klass163710_)))
              (_s263714_
               (let () (declare (not safe)) (base-struct/1 _klass263711_))))
          (if (or (let () (declare (not safe)) (not _s163713_))
                  (and _s263714_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163713_ _s263714_))))
              _s263714_
              (if (or (let () (declare (not safe)) (not _s263714_))
                      (and _s163713_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263714_ _s163713_))))
                  _s163713_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163710_
                           _klass263711_
                           _s163713_
                           _s263714_)))))))
    (define base-struct/list
      (lambda (_all-supers63594_)
        (let* ((_all-supers6359563620_ _all-supers63594_)
               (_E6360063624_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6359563620_)))))
          (let ((_K6361863707_ (lambda () '#f))
                (_K6361563693_
                 (lambda (_x63691_)
                   (let () (declare (not safe)) (base-struct/1 _x63691_))))
                (_K6361063670_
                 (lambda (_y63667_ _x63668_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x63668_ _y63667_))))
                (_K6360163631_
                 (lambda (_y63628_ _x63629_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x63629_ _y63628_)))))
            (let* ((___match6416964170_
                    (lambda (_hd6360263634_ _tl6360363636_)
                      (let ((_x63639_ _hd6360263634_))
                        (letrec ((_splice-rest6360563641_
                                  (lambda (_rest6360963648_ _y63650_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6360963648_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6360163631_ _y63650_ _x63639_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6360063624_)))))
                                 (_splice-try6360763643_
                                  (lambda (_hd6360863652_
                                           _rest6360963654_
                                           _y6360463655_)
                                    (let ((_y63658_ _hd6360863652_))
                                      (let ((__tmp64219
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6360963654_)))
                                            (__tmp64218
                                             (let ()
                                               (declare (not safe))
                                               (cons _y63658_ _y6360463655_))))
                                        (declare (not safe))
                                        (_splice-loop6360663645_
                                         __tmp64219
                                         __tmp64218)))))
                                 (_splice-loop6360663645_
                                  (lambda (_rest6360963660_ _y6360463661_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6360963660_))
                                        (let ((__tmp64221
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6360963660_))))
                                          (declare (not safe))
                                          (_splice-try6360763643_
                                           __tmp64221
                                           _rest6360963660_
                                           _y6360463661_))
                                        (let ((__tmp64220
                                               (reverse _y6360463661_)))
                                          (declare (not safe))
                                          (_splice-rest6360563641_
                                           _rest6360963660_
                                           __tmp64220))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6360663645_ _tl6360363636_ '()))))))
                   (_try-match6359763703_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6359563620_))
                          (let ((_tl6361763698_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6359563620_)))
                                (_hd6361663696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6359563620_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6361763698_))
                                (let ((_x63701_ _hd6361663696_))
                                  (declare (not safe))
                                  (base-struct/1 _x63701_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6361763698_))
                                    (let ((_tl6361463682_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6361763698_)))
                                          (_hd6361363680_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6361763698_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6361463682_))
                                          (let ((_x63678_ _hd6361663696_)
                                                (_y63685_ _hd6361363680_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6361063670_
                                               _y63685_
                                               _x63678_)))
                                          (___match6416964170_
                                           _hd6361663696_
                                           _tl6361763698_)))
                                    (___match6416964170_
                                     _hd6361663696_
                                     _tl6361763698_))))
                          (let () (declare (not safe)) (_E6360063624_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6359563620_))
                  (let () (declare (not safe)) (_K6361863707_))
                  (let () (declare (not safe)) (_try-match6359763703_))))))))
    (define base-struct
      (lambda _all-supers63592_
        (let () (declare (not safe)) (base-struct/list _all-supers63592_))))
    (define find-super-constructor
      (lambda (_super63544_)
        (let _lp63546_ ((_rest63548_ _super63544_) (_constructor63549_ '#f))
          (let* ((_rest6355063558_ _rest63548_)
                 (_else6355263566_ (lambda () _constructor63549_))
                 (_K6355463580_
                  (lambda (_rest63569_ _hd63570_)
                    (let ((_$e63572_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63570_
                              '10
                              class::t
                              '#f))))
                      (if _$e63572_
                          ((lambda (_xconstructor63575_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63549_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63549_
                                            _xconstructor63575_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63546_ _rest63569_ _xconstructor63575_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63549_
                                          _xconstructor63575_))))
                           _$e63572_)
                          (let ()
                            (declare (not safe))
                            (_lp63546_ _rest63569_ _constructor63549_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6355063558_))
                (let ((_hd6355563583_
                       (let () (declare (not safe)) (##car _rest6355063558_)))
                      (_tl6355663585_
                       (let () (declare (not safe)) (##cdr _rest6355063558_))))
                  (let* ((_hd63588_ _hd6355563583_)
                         (_rest63590_ _tl6355663585_))
                    (declare (not safe))
                    (_K6355463580_ _rest63590_ _hd63588_)))
                (let () (declare (not safe)) (_else6355263566_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63520_ _direct-slots63521_)
        (let* ((_next-slot63523_ '1)
               (_slot-table63525_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63527_ '(__class))
               (_process-slot63531_
                (lambda (_slot63529_)
                  (if (let () (declare (not safe)) (symbol? _slot63529_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63529_)))
                  (if (let ((__tmp64223
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63525_
                                _slot63529_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64223 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63525_
                           _slot63529_
                           _next-slot63523_))
                        (let ((__tmp64222
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _slot63529_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63525_
                           __tmp64222
                           _next-slot63523_))
                        (set! _r-slots63527_
                              (let ()
                                (declare (not safe))
                                (cons _slot63529_ _r-slots63527_)))
                        (set! _next-slot63523_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63523_ '1))))
                      '#!void)))
               (_process-slots63537_
                (lambda (_g6353263534_)
                  (for-each _process-slot63531_ _g6353263534_))))
          (for-each
           (lambda (_mixin63540_)
             (let ((__tmp64224
                    (let ((__tmp64225
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63540_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64225 '()))))
               (declare (not safe))
               (_process-slots63537_ __tmp64224)))
           (reverse _class-precedence-list63520_))
          (let ()
            (declare (not safe))
            (_process-slots63537_ _direct-slots63521_))
          (let ((_slot-vector63542_ (list->vector (reverse _r-slots63527_))))
            (values _slot-vector63542_ _slot-table63525_)))))
    (define make-class-type
      (lambda (_id63482_
               _name63483_
               _direct-supers63484_
               _direct-slots63485_
               _properties63486_
               _constructor63487_)
        (let ((_$e63492_
               (let ((__tmp64226
                      (lambda (_$obj63489_)
                        (let ((__tmp64227
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63489_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64227)))))
                 (declare (not safe))
                 (find __tmp64226 _direct-supers63484_))))
          (if _$e63492_
              ((lambda (_g6349463496_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6349463496_)))
               _$e63492_)
              (let ((_$e63499_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63484_))))
                (if _$e63499_
                    ((lambda (_g6350163503_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6350163503_)))
                     _$e63499_)
                    '#!void))))
        (let ((_g64228_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63484_))))
          (begin
            (let ((_g64229_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64228_) (##vector-length _g64228_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64229_ 2)))
                  (error "Context expects 2 values" _g64229_)))
            (let ((_precedence-list63506_
                   (let () (declare (not safe)) (##vector-ref _g64228_ 0)))
                  (_struct-super63507_
                   (let () (declare (not safe)) (##vector-ref _g64228_ 1))))
              (let ((_g64230_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63506_
                        _direct-slots63485_))))
                (begin
                  (let ((_g64231_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64230_)
                               (##vector-length _g64230_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64231_ 2)))
                        (error "Context expects 2 values" _g64231_)))
                  (let ((_slot-vector63509_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64230_ 0)))
                        (_slot-table63510_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64230_ 1))))
                    (let* ((_properties63512_
                            (let ((__tmp64234
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63485_)))
                                  (__tmp64232
                                   (let ((__tmp64233
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63484_))))
                                     (declare (not safe))
                                     (cons __tmp64233 _properties63486_))))
                              (declare (not safe))
                              (cons __tmp64234 __tmp64232)))
                           (_constructor*63517_
                            (let ((_$e63514_ _constructor63487_))
                              (if _$e63514_
                                  _$e63514_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63484_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63482_
                         _name63483_
                         _struct-super63507_
                         _precedence-list63506_
                         _slot-vector63509_
                         _properties63512_
                         _constructor*63517_
                         _slot-table63510_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63480_)
        (let ((__tmp64235
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63480_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63480_ __tmp64235))))
    (define compute-precedence-list
      (lambda (_direct-supers63478_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63478_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63462_)
        (let ((_tid63464_
               (let () (declare (not safe)) (##type-id _klass63462_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63462_))
              (lambda (_g6346563467_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6346563467_ _tid63464_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63462_))
                  (lambda (_g6346963471_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6346963471_ _tid63464_)))
                  (lambda (_g6347363475_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63462_ _g6347363475_))))))))
    (define if-class-slot-field
      (lambda (_klass63451_
               _slot63452_
               _if-final63453_
               _if-struct63454_
               _if-struct-field63455_
               _if-class-slot63456_)
        (let ((_field63458_
               (let ((__tmp64236
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63451_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64236 _slot63452_ '#f))))
          (if (let () (declare (not safe)) (not _field63458_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63451_
                       'slot:
                       _slot63452_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63451_))
                  (_if-final63453_ _klass63451_ _slot63452_ _field63458_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63451_))
                      (_if-struct63454_ _klass63451_ _slot63452_ _field63458_)
                      (if (let ((_strukt63460_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63451_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63460_
                                    'gerbil#class::t))
                                 (let ((__tmp64237
                                        (let ((__tmp64238
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63460_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64238))))
                                   (declare (not safe))
                                   (##fx< _field63458_ __tmp64237))))
                          (_if-struct-field63455_
                           _klass63451_
                           _slot63452_
                           _field63458_)
                          (_if-class-slot63456_
                           _klass63451_
                           _slot63452_
                           _field63458_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63448_ _slot63449_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63448_
           _slot63449_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63445_ _slot63446_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63445_
           _slot63446_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63442_ _slot63443_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63442_
           _slot63443_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63439_ _slot63440_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63439_
           _slot63440_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63423_ _class63424_ _slot63425_)
        (apply error
               '"not an instance"
               'object:
               _object63423_
               'class:
               _class63424_
               (if _slot63425_
                   (let ((__tmp64239
                          (let ()
                            (declare (not safe))
                            (cons _slot63425_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64239))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63430_ _class63431_)
        (let ((_slot63433_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63430_ _class63431_ _slot63433_))))
    (define not-an-instance
      (lambda _g64241_
        (let ((_g64240_ (let () (declare (not safe)) (##length _g64241_))))
          (cond ((let () (declare (not safe)) (##fx= _g64240_ 2))
                 (apply (lambda (_object63430_ _class63431_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63430_ _class63431_)))
                        _g64241_))
                ((let () (declare (not safe)) (##fx= _g64240_ 3))
                 (apply (lambda (_object63435_ _class63436_ _slot63437_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63435_
                             _class63436_
                             _slot63437_)))
                        _g64241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64241_))))))
    (define make-final-slot-accessor
      (lambda (_klass63416_ _slot63417_ _field63418_)
        (lambda (_obj63420_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63420_
             _field63418_
             _klass63416_
             _slot63417_)))))
    (define make-final-slot-mutator
      (lambda (_klass63409_ _slot63410_ _field63411_)
        (lambda (_obj63413_ _val63414_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63413_
             _val63414_
             _field63411_
             _klass63409_
             _slot63410_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63403_ _slot63404_ _field63405_)
        (lambda (_obj63407_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63407_
             _field63405_
             _klass63403_
             _slot63404_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63396_ _slot63397_ _field63398_)
        (lambda (_obj63400_ _val63401_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63400_
             _val63401_
             _field63398_
             _klass63396_
             _slot63397_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63390_ _slot63391_ _field63392_)
        (lambda (_obj63394_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63394_
             _field63392_
             _klass63390_
             _slot63391_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63383_ _slot63384_ _field63385_)
        (lambda (_obj63387_ _val63388_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63387_
             _val63388_
             _field63385_
             _klass63383_
             _slot63384_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63377_ _slot63378_ _field63379_)
        (lambda (_obj63381_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63377_ _obj63381_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63381_ _field63379_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63381_ _klass63377_ _slot63378_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63370_ _slot63371_ _field63372_)
        (lambda (_obj63374_ _val63375_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63370_ _obj63374_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63374_ _field63372_ _val63375_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63374_ _klass63370_ _slot63371_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63364_ _slot63365_ _field63366_)
        (lambda (_obj63368_)
          (if (let ((__tmp64242
                     (let () (declare (not safe)) (##type-id _klass63364_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63368_ __tmp64242))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63368_ _field63366_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63364_ _obj63368_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63368_ _slot63365_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63368_
                     _klass63364_
                     _slot63365_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63357_ _slot63358_ _field63359_)
        (lambda (_obj63361_ _val63362_)
          (if (let ((__tmp64243
                     (let () (declare (not safe)) (##type-id _klass63357_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63361_ __tmp64243))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63361_ _field63359_ _val63362_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63357_ _obj63361_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63361_ _slot63358_ _val63362_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63361_
                     _klass63357_
                     _slot63358_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63351_ _slot63352_ _field63353_)
        (lambda (_obj63355_)
          (if (let ((__tmp64244
                     (let () (declare (not safe)) (##type-id _klass63351_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63355_ __tmp64244))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63355_ _field63353_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63355_ _slot63352_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63344_ _slot63345_ _field63346_)
        (lambda (_obj63348_ _val63349_)
          (if (let ((__tmp64245
                     (let () (declare (not safe)) (##type-id _klass63344_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63348_ __tmp64245))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63348_ _field63346_ _val63349_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63348_ _slot63345_ _val63349_))))))
    (define class-slot-offset
      (lambda (_klass63341_ _slot63342_)
        (let ((__tmp64246
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63341_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64246 _slot63342_ '#f))))
    (define class-slot-ref
      (lambda (_klass63335_ _obj63336_ _slot63337_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63335_ _obj63336_))
            (let ((_off63339_
                   (let ((__tmp64247 (object-type _obj63336_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64247 _slot63337_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63336_
               _off63339_
               _klass63335_
               _slot63337_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63336_ _klass63335_)))))
    (define class-slot-set!
      (lambda (_klass63328_ _obj63329_ _slot63330_ _val63331_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63328_ _obj63329_))
            (let ((_off63333_
                   (let ((__tmp64248 (object-type _obj63329_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64248 _slot63330_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63329_
               _val63331_
               _off63333_
               _klass63328_
               _slot63330_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63329_ _klass63328_)))))
    (define unchecked-field-ref
      (lambda (_obj63325_ _off63326_)
        (let ((__tmp64249
               (let () (declare (not safe)) (##structure-type _obj63325_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63325_ _off63326_ __tmp64249 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63321_ _off63322_ _val63323_)
        (let ((__tmp64250
               (let () (declare (not safe)) (##structure-type _obj63321_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63321_
           _val63323_
           _off63322_
           __tmp64250
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63318_ _slot63319_)
        (let ((__tmp64251
               (let ((__tmp64252
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63318_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64252 _slot63319_))))
          (declare (not safe))
          (unchecked-field-ref _obj63318_ __tmp64251))))
    (define unchecked-slot-set!
      (lambda (_obj63314_ _slot63315_ _val63316_)
        (let ((__tmp64253
               (let ((__tmp64254
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63314_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64254 _slot63315_))))
          (declare (not safe))
          (unchecked-field-set! _obj63314_ __tmp64253 _val63316_))))
    (define slot-ref__%
      (lambda (_obj63290_ _slot63291_ _E63292_)
        (if (object? _obj63290_)
            (let* ((_klass63294_ (object-type _obj63290_))
                   (_$e63297_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63294_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63294_ _slot63291_))
                        '#f)))
              (if _$e63297_
                  ((lambda (_off63300_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63290_ _off63300_)))
                   _$e63297_)
                  (_E63292_ _obj63290_ _slot63291_)))
            (_E63292_ _obj63290_ _slot63291_))))
    (define slot-ref__0
      (lambda (_obj63305_ _slot63306_)
        (let ((_E63308_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63305_ _slot63306_ _E63308_))))
    (define slot-ref
      (lambda _g64256_
        (let ((_g64255_ (let () (declare (not safe)) (##length _g64256_))))
          (cond ((let () (declare (not safe)) (##fx= _g64255_ 2))
                 (apply (lambda (_obj63305_ _slot63306_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63305_ _slot63306_)))
                        _g64256_))
                ((let () (declare (not safe)) (##fx= _g64255_ 3))
                 (apply (lambda (_obj63310_ _slot63311_ _E63312_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63310_ _slot63311_ _E63312_)))
                        _g64256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64256_))))))
    (define slot-set!__%
      (lambda (_obj63262_ _slot63263_ _val63264_ _E63265_)
        (if (object? _obj63262_)
            (let* ((_klass63267_ (object-type _obj63262_))
                   (_$e63270_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63267_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63267_ _slot63263_))
                        '#f)))
              (if _$e63270_
                  ((lambda (_off63273_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63262_
                        _off63273_
                        _val63264_)))
                   _$e63270_)
                  (_E63265_ _obj63262_ _slot63263_)))
            (_E63265_ _obj63262_ _slot63263_))))
    (define slot-set!__0
      (lambda (_obj63278_ _slot63279_ _val63280_)
        (let ((_E63282_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63278_ _slot63279_ _val63280_ _E63282_))))
    (define slot-set!
      (lambda _g64258_
        (let ((_g64257_ (let () (declare (not safe)) (##length _g64258_))))
          (cond ((let () (declare (not safe)) (##fx= _g64257_ 3))
                 (apply (lambda (_obj63278_ _slot63279_ _val63280_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63278_ _slot63279_ _val63280_)))
                        _g64258_))
                ((let () (declare (not safe)) (##fx= _g64257_ 4))
                 (apply (lambda (_obj63284_ _slot63285_ _val63286_ _E63287_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63284_
                             _slot63285_
                             _val63286_
                             _E63287_)))
                        _g64258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64258_))))))
    (define __slot-error
      (lambda (_obj63258_ _slot63259_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63258_ 'slot: _slot63259_))))
    (define subclass?
      (lambda (_maybe-sub-class63248_ _maybe-super-class63249_)
        (let* ((_maybe-super-class-id63251_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63249_)))
               (_$e63253_
                (let ((__tmp64259
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63248_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63251_ __tmp64259))))
          (if _$e63253_
              _$e63253_
              (let ((__tmp64261
                     (lambda (_super-class63256_)
                       (let ((__tmp64262
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63256_))))
                         (declare (not safe))
                         (eq? __tmp64262 _maybe-super-class-id63251_))))
                    (__tmp64260
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63248_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64261 __tmp64260))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63245_ _obj63246_)
        (let ((__tmp64263
               (let () (declare (not safe)) (##type-id _klass63245_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63246_ __tmp64263))))
    (define struct-instance?
      (lambda (_klass63242_ _obj63243_)
        (let ((__tmp64264
               (let () (declare (not safe)) (##type-id _klass63242_))))
          (declare (not safe))
          (##structure-instance-of? _obj63243_ __tmp64264))))
    (define class-instance?
      (lambda (_klass63237_ _obj63238_)
        (if (object? _obj63238_)
            (let ((_type63240_ (object-type _obj63238_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63240_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63240_ _klass63237_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63232_ _k63233_)
        (let ((_obj63235_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63232_ _k63233_))))
          (let () (declare (not safe)) (object-fill! _obj63235_ '#f))
          _obj63235_)))
    (define object-fill!
      (lambda (_obj63225_ _fill63226_)
        (let _loop63228_ ((_i63230_
                           (let ((__tmp64266
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63225_))))
                             (declare (not safe))
                             (##fx- __tmp64266 '1))))
          (if (let () (declare (not safe)) (##fx> _i63230_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63225_
                   _fill63226_
                   _i63230_
                   '#f
                   '#f))
                (let ((__tmp64265
                       (let () (declare (not safe)) (##fx- _i63230_ '1))))
                  (declare (not safe))
                  (_loop63228_ __tmp64265)))
              _obj63225_))))
    (define new-instance
      (lambda (_klass63223_)
        (let ((__obj64171
               (let ((__tmp64267
                      (let ((__tmp64268
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63223_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64268))))
                 (declare (not safe))
                 (##make-structure _klass63223_ __tmp64267))))
          (let () (declare (not safe)) (object-fill! __obj64171 '#f))
          __obj64171)))
    (define make-instance
      (lambda (_klass63213_ . _args63214_)
        (let* ((_obj63216_
                (let () (declare (not safe)) (new-instance _klass63213_)))
               (_$e63218_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63213_ '10 class::t '#f))))
          (if _$e63218_
              ((lambda (_kons-id63221_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63213_
                    _kons-id63221_
                    _obj63216_
                    _args63214_)))
               _$e63218_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63213_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63213_
                     _obj63216_
                     _args63214_))
                  (if (let ((__tmp64273
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63213_))))
                        (declare (not safe))
                        (not __tmp64273))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63213_
                         _obj63216_
                         _args63214_))
                      (if (let ((__tmp64271
                                 (let ((__tmp64272
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63216_))))
                                   (declare (not safe))
                                   (##fx- __tmp64272 '1)))
                                (__tmp64270 (length _args63214_)))
                            (declare (not safe))
                            (##fx= __tmp64271 __tmp64270))
                          (apply ##structure _klass63213_ _args63214_)
                          (let ((__tmp64269
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63213_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63213_
                                   'slots:
                                   __tmp64269
                                   'args:
                                   _args63214_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63210_ . _args63211_)
        (if (let ((__tmp64275 (length _args63211_))
                  (__tmp64274
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63210_))))
              (declare (not safe))
              (##fx< __tmp64275 __tmp64274))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63210_ _args63211_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63210_
                     'args:
                     _args63211_)))))
    (define __struct-instance-init!
      (lambda (_obj63169_ _args63170_)
        (let _lp63172_ ((_k63174_ '1) (_rest63175_ _args63170_))
          (let* ((_rest6317663184_ _rest63175_)
                 (_else6317863192_ (lambda () _obj63169_))
                 (_K6318063198_
                  (lambda (_rest63195_ _hd63196_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63169_ _k63174_ _hd63196_))
                    (let ((__tmp64276
                           (let () (declare (not safe)) (##fx+ _k63174_ '1))))
                      (declare (not safe))
                      (_lp63172_ __tmp64276 _rest63195_)))))
            (if (let () (declare (not safe)) (##pair? _rest6317663184_))
                (let ((_hd6318163201_
                       (let () (declare (not safe)) (##car _rest6317663184_)))
                      (_tl6318263203_
                       (let () (declare (not safe)) (##cdr _rest6317663184_))))
                  (let* ((_hd63206_ _hd6318163201_)
                         (_rest63208_ _tl6318263203_))
                    (declare (not safe))
                    (_K6318063198_ _rest63208_ _hd63206_)))
                (let () (declare (not safe)) (_else6317863192_)))))))
    (define class-instance-init!
      (lambda (_obj63166_ . _args63167_)
        (let ((__tmp64277 (object-type _obj63166_)))
          (declare (not safe))
          (__class-instance-init! __tmp64277 _obj63166_ _args63167_))))
    (define __class-instance-init!
      (lambda (_klass63110_ _obj63111_ _args63112_)
        (let _lp63114_ ((_rest63116_ _args63112_))
          (let* ((_rest6311763127_ _rest63116_)
                 (_else6311963135_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63116_))
                        _obj63111_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63110_
                                 'rest:
                                 _rest63116_)))))
                 (_K6312163147_
                  (lambda (_rest63138_ _val63139_ _key63140_)
                    (let ((_$e63142_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63110_ _key63140_))))
                      (if _$e63142_
                          ((lambda (_off63145_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63111_
                                _off63145_
                                _val63139_))
                             (let ()
                               (declare (not safe))
                               (_lp63114_ _rest63138_)))
                           _$e63142_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63110_
                                   'slot:
                                   _key63140_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6311763127_))
                (let ((_hd6312263150_
                       (let () (declare (not safe)) (##car _rest6311763127_)))
                      (_tl6312363152_
                       (let () (declare (not safe)) (##cdr _rest6311763127_))))
                  (let ((_key63155_ _hd6312263150_))
                    (if (let () (declare (not safe)) (##pair? _tl6312363152_))
                        (let ((_hd6312463157_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6312363152_)))
                              (_tl6312563159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6312363152_))))
                          (let* ((_val63162_ _hd6312463157_)
                                 (_rest63164_ _tl6312563159_))
                            (declare (not safe))
                            (_K6312163147_ _rest63164_ _val63162_ _key63155_)))
                        (let () (declare (not safe)) (_else6311963135_)))))
                (let () (declare (not safe)) (_else6311963135_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63106_ _obj63107_ _args63108_)
        (apply call-method
               _klass63106_
               'instance-init!
               _obj63107_
               _args63108_)))
    (define constructor-init!
      (lambda (_klass63101_ _kons-id63102_ _obj63103_ . _args63104_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63101_
           _kons-id63102_
           _obj63103_
           _args63104_))))
    (define __constructor-init!
      (lambda (_klass63091_ _kons-id63092_ _obj63093_ _args63094_)
        (let ((_$e63096_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63091_ _obj63093_ _kons-id63092_))))
          (if _$e63096_
              ((lambda (_kons63099_)
                 (apply _kons63099_ _obj63093_ _args63094_)
                 _obj63093_)
               _$e63096_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63091_
                       'method:
                       _kons-id63092_))))))
    (define struct-copy
      (lambda (_struct63089_)
        (if (let () (declare (not safe)) (##structure? _struct63089_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63089_)))
        (let () (declare (not safe)) (##structure-copy _struct63089_))))
    (define struct->list
      (lambda (_obj63087_)
        (if (object? _obj63087_)
            (let () (declare (not safe)) (##vector->list _obj63087_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63087_)))))
    (define class->list
      (lambda (_obj63074_)
        (if (object? _obj63074_)
            (let ((_klass63076_ (object-type _obj63074_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63076_ 'gerbil#class::t))
                  (let ((_slot-vector63078_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63076_
                            '7
                            class::t
                            '#f))))
                    (let _loop63080_ ((_index63082_
                                       (let ((__tmp64283
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63078_))))
                                         (declare (not safe))
                                         (##fx- __tmp64283 '1)))
                                      (_plist63083_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63082_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63076_ _plist63083_))
                          (let ((_slot63085_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63078_
                                    _index63082_))))
                            (let ((__tmp64282
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63082_ '1)))
                                  (__tmp64278
                                   (let ((__tmp64281
                                          (let ()
                                            (declare (not safe))
                                            (symbol->keyword _slot63085_)))
                                         (__tmp64279
                                          (let ((__tmp64280
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63074_
                                                    _index63082_))))
                                            (declare (not safe))
                                            (cons __tmp64280 _plist63083_))))
                                     (declare (not safe))
                                     (cons __tmp64281 __tmp64279))))
                              (declare (not safe))
                              (_loop63080_ __tmp64282 __tmp64278))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63074_
                           'class:
                           _klass63076_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63074_)))))
    (define call-method
      (lambda (_obj63065_ _id63066_ . _args63067_)
        (let ((_$e63069_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63065_ _id63066_))))
          (if _$e63069_
              ((lambda (_method63072_)
                 (apply _method63072_ _obj63065_ _args63067_))
               _$e63069_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63065_
                       'method:
                       _id63066_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63062_ _id63063_)
        (if (object? _obj63062_)
            (let ((__tmp64284 (object-type _obj63062_)))
              (declare (not safe))
              (find-method __tmp64284 _obj63062_ _id63063_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63056_ _id63057_)
        (let ((_$e63059_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63056_ _id63057_))))
          (if _$e63059_
              _$e63059_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63056_
                       'method:
                       _id63057_))))))
    (define bound-method-ref
      (lambda (_obj63046_ _id63047_)
        (let ((_$e63049_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63046_ _id63047_))))
          (if _$e63049_
              ((lambda (_method63052_)
                 (lambda _args63054_
                   (apply _method63052_ _obj63046_ _args63054_)))
               _$e63049_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63039_ _id63040_)
        (let ((_method63042_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63039_ _id63040_))))
          (lambda _args63044_ (apply _method63042_ _obj63039_ _args63044_)))))
    (define find-method
      (lambda (_klass63035_ _obj63036_ _id63037_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63035_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63035_ _obj63036_ _id63037_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63035_ _obj63036_ _id63037_)))))
    (define __find-method
      (lambda (_klass63028_ _obj63029_ _id63030_)
        (let ((_$e63032_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63028_ _obj63029_ _id63030_))))
          (if _$e63032_
              _$e63032_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63028_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63028_ _obj63029_ _id63030_)))))))
    (define mixin-find-method
      (lambda (_mixins63020_ _obj63021_ _id63022_)
        (let ((__tmp64285
               (lambda (_g6302363025_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6302363025_ _obj63021_ _id63022_)))))
          (declare (not safe))
          (ormap1 __tmp64285 _mixins63020_))))
    (define builtin-find-method
      (lambda (_klass63013_ _obj63014_ _id63015_)
        (if (let () (declare (not safe)) (##type? _klass63013_))
            (let ((_$e63017_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63013_ _obj63014_ _id63015_))))
              (if _$e63017_
                  _$e63017_
                  (let ((__tmp64286
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63013_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64286 _obj63014_ _id63015_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass62990_ _obj62991_ _id62992_)
        (letrec ((_metaclass-resolve-method62994_
                  (lambda ()
                    (let ((__method64172
                           (let ()
                             (declare (not safe))
                             (method-ref _klass62990_ 'direct-method-ref))))
                      (if __method64172
                          (__method64172 _klass62990_ _obj62991_ _id62992_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62990_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!62995_
                  (lambda ()
                    (let ((_method63010_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method62994_))))
                      (let ((__tmp64288
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62990_
                                '11
                                class::t
                                '#f)))
                            (__tmp64287 (if _method63010_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64288 _id62992_ __tmp64287))
                      _method63010_))))
          (let ((_$e62997_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass62990_ '11 class::t '#f))))
            (if _$e62997_
                ((lambda (_ht63000_)
                   (let ((_method63002_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63000_ _id62992_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63002_))
                         _method63002_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass62990_))
                             (let ((_$e63004_ _method63002_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63004_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method62994_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63004_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!62995_)))))
                             '#f))))
                 _$e62997_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass62990_))
                    (let ((_tab63007_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62990_
                         _tab63007_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!62995_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass62986_ _obj62987_ _id62988_)
        (let ((__tmp64289 (##structure-ref _klass62986_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64289 _obj62987_ _id62988_))))
    (define builtin-method-ref
      (lambda (_klass62977_ _obj62978_ _id62979_)
        (let ((_$e62981_
               (let ((__tmp64290
                      (let () (declare (not safe)) (##type-id _klass62977_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64290 '#f))))
          (if _$e62981_
              ((lambda (_mtab62984_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab62984_ _id62979_ '#f)))
               _$e62981_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62943_ _id62944_ _proc62945_ _rebind?62946_)
        (letrec ((_bind!62948_
                  (lambda (_ht62961_)
                    (if (and (let () (declare (not safe)) (not _rebind?62946_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht62961_ _id62944_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62943_
                                 'method:
                                 _id62944_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht62961_
                           _id62944_
                           _proc62945_))))))
          (if (let () (declare (not safe)) (procedure? _proc62945_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62945_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62943_ 'gerbil#class::t))
              (let ((_ht62950_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62943_
                        '11
                        class::t
                        '#f))))
                (if _ht62950_
                    (let () (declare (not safe)) (_bind!62948_ _ht62950_))
                    (let ((_ht62952_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62943_
                         _ht62952_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!62948_ _ht62952_)))))
              (if (let () (declare (not safe)) (##type? _klass62943_))
                  (let ((_ht62959_
                         (let ((_$e62954_
                                (let ((__tmp64291
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62943_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64291
                                   '#f))))
                           (if _$e62954_
                               _$e62954_
                               (let ((_ht62957_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64292
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62943_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64292
                                    _ht62957_))
                                 _ht62957_)))))
                    (declare (not safe))
                    (_bind!62948_ _ht62959_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62943_)))))))
    (define bind-method!__0
      (lambda (_klass62966_ _id62967_ _proc62968_)
        (let ((_rebind?62970_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass62966_
           _id62967_
           _proc62968_
           _rebind?62970_))))
    (define bind-method!
      (lambda _g64294_
        (let ((_g64293_ (let () (declare (not safe)) (##length _g64294_))))
          (cond ((let () (declare (not safe)) (##fx= _g64293_ 3))
                 (apply (lambda (_klass62966_ _id62967_ _proc62968_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass62966_
                             _id62967_
                             _proc62968_)))
                        _g64294_))
                ((let () (declare (not safe)) (##fx= _g64293_ 4))
                 (apply (lambda (_klass62972_
                                 _id62973_
                                 _proc62974_
                                 _rebind?62975_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass62972_
                             _id62973_
                             _proc62974_
                             _rebind?62975_)))
                        _g64294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64294_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint62923_ _seed62925_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint62923_
           procedure-hash
           eq?
           _seed62925_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint62931_ '#f) (_seed62933_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint62931_ _seed62933_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint62935_)
        (let ((_seed62937_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint62935_ _seed62937_))))
    (define make-method-specializer-table
      (lambda _g64296_
        (let ((_g64295_ (let () (declare (not safe)) (##length _g64296_))))
          (cond ((let () (declare (not safe)) (##fx= _g64295_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64296_))
                ((let () (declare (not safe)) (##fx= _g64295_ 1))
                 (apply (lambda (_size-hint62935_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint62935_)))
                        _g64296_))
                ((let () (declare (not safe)) (##fx= _g64295_ 2))
                 (apply (lambda (_size-hint62939_ _seed62940_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint62939_
                             _seed62940_)))
                        _g64296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64296_))))))
    (define method-specializer-table-ref
      (lambda (_tab62880_ _key62881_ _default62882_)
        (let ((_table62884_
               (let () (declare (not safe)) (&raw-table-table _tab62880_)))
              (_seed62885_
               (let () (declare (not safe)) (&raw-table-seed _tab62880_))))
          (let* ((_h62887_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62881_))
                         _seed62885_))
                 (_size62890_ (vector-length _table62884_))
                 (_entries62893_ (fxquotient _size62890_ '2))
                 (_start62896_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62887_ _entries62893_)
                   '1)))
            (let _loop62900_ ((_probe62903_ _start62896_)
                              (_i62905_ '1)
                              (_deleted62907_ '#f))
              (let ((_k62910_ (vector-ref _table62884_ _probe62903_)))
                (if (let ((__tmp64303 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62910_ __tmp64303))
                    _default62882_
                    (if (let ((__tmp64302 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62910_ __tmp64302))
                        (let ((__tmp64301
                               (let ((_next-probe62913_
                                      (fx+ _start62896_
                                           _i62905_
                                           (fx* _i62905_ _i62905_))))
                                 (fxmodulo _next-probe62913_ _size62890_)))
                              (__tmp64300 (fx+ _i62905_ '1))
                              (__tmp64299
                               (let ((_$e62916_ _deleted62907_))
                                 (if _$e62916_ _$e62916_ _probe62903_))))
                          (declare (not safe))
                          (_loop62900_ __tmp64301 __tmp64300 __tmp64299))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62881_ _k62910_))
                            (vector-ref _table62884_ (fx+ _probe62903_ '1))
                            (let ((__tmp64298
                                   (let ((_next-probe62919_
                                          (fx+ _start62896_
                                               _i62905_
                                               (fx* _i62905_ _i62905_))))
                                     (fxmodulo _next-probe62919_ _size62890_)))
                                  (__tmp64297 (fx+ _i62905_ '1)))
                              (declare (not safe))
                              (_loop62900_
                               __tmp64298
                               __tmp64297
                               _deleted62907_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab62876_ _key62877_ _value62878_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62876_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62876_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62876_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab62876_
           _key62877_
           _value62878_))))
    (define __method-specializer-table-set!
      (lambda (_tab62831_ _key62832_ _value62833_)
        (let ((_table62836_
               (let () (declare (not safe)) (&raw-table-table _tab62831_)))
              (_seed62837_
               (let () (declare (not safe)) (&raw-table-seed _tab62831_))))
          (let* ((_h62839_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62832_))
                         _seed62837_))
                 (_size62842_ (vector-length _table62836_))
                 (_entries62845_ (fxquotient _size62842_ '2))
                 (_start62848_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62839_ _entries62845_)
                   '1)))
            (let _loop62852_ ((_probe62855_ _start62848_)
                              (_i62857_ '1)
                              (_deleted62859_ '#f))
              (let ((_k62862_ (vector-ref _table62836_ _probe62855_)))
                (if (let ((__tmp64313 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62862_ __tmp64313))
                    (if _deleted62859_
                        (begin
                          (vector-set! _table62836_ _deleted62859_ _key62832_)
                          (vector-set!
                           _table62836_
                           (fx+ _deleted62859_ '1)
                           _value62833_)
                          ((lambda ()
                             (let ((__tmp64312
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62831_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62831_
                                __tmp64312)))))
                        (begin
                          (vector-set! _table62836_ _probe62855_ _key62832_)
                          (vector-set!
                           _table62836_
                           (fx+ _probe62855_ '1)
                           _value62833_)
                          ((lambda ()
                             (let ((__tmp64310
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62831_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62831_ __tmp64310))
                             (let ((__tmp64311
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62831_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62831_
                                __tmp64311))))))
                    (if (let ((__tmp64309 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62862_ __tmp64309))
                        (let ((__tmp64308
                               (let ((_next-probe62867_
                                      (fx+ _start62848_
                                           _i62857_
                                           (fx* _i62857_ _i62857_))))
                                 (fxmodulo _next-probe62867_ _size62842_)))
                              (__tmp64307 (fx+ _i62857_ '1))
                              (__tmp64306
                               (let ((_$e62870_ _deleted62859_))
                                 (if _$e62870_ _$e62870_ _probe62855_))))
                          (declare (not safe))
                          (_loop62852_ __tmp64308 __tmp64307 __tmp64306))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62832_ _k62862_))
                            (begin
                              (vector-set!
                               _table62836_
                               _probe62855_
                               _key62832_)
                              (vector-set!
                               _table62836_
                               (fx+ _probe62855_ '1)
                               _value62833_))
                            (let ((__tmp64305
                                   (let ((_next-probe62873_
                                          (fx+ _start62848_
                                               _i62857_
                                               (fx* _i62857_ _i62857_))))
                                     (fxmodulo _next-probe62873_ _size62842_)))
                                  (__tmp64304 (fx+ _i62857_ '1)))
                              (declare (not safe))
                              (_loop62852_
                               __tmp64305
                               __tmp64304
                               _deleted62859_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab62826_
               _key62827_
               _method-specializer-table-update!62828_
               _default62829_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62826_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62826_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62826_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab62826_
           _key62827_
           _method-specializer-table-update!62828_
           _default62829_))))
    (define __method-specializer-table-update!
      (lambda (_tab62780_
               _key62781_
               _method-specializer-table-update!62782_
               _default62783_)
        (let ((_table62786_
               (let () (declare (not safe)) (&raw-table-table _tab62780_)))
              (_seed62787_
               (let () (declare (not safe)) (&raw-table-seed _tab62780_))))
          (let* ((_h62789_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62781_))
                         _seed62787_))
                 (_size62792_ (vector-length _table62786_))
                 (_entries62795_ (fxquotient _size62792_ '2))
                 (_start62798_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62789_ _entries62795_)
                   '1)))
            (let _loop62802_ ((_probe62805_ _start62798_)
                              (_i62807_ '1)
                              (_deleted62809_ '#f))
              (let ((_k62812_ (vector-ref _table62786_ _probe62805_)))
                (if (let ((__tmp64323 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62812_ __tmp64323))
                    (if _deleted62809_
                        (begin
                          (vector-set! _table62786_ _deleted62809_ _key62781_)
                          (vector-set!
                           _table62786_
                           (fx+ _deleted62809_ '1)
                           (_method-specializer-table-update!62782_
                            _default62783_))
                          ((lambda ()
                             (let ((__tmp64322
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62780_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62780_
                                __tmp64322)))))
                        (begin
                          (vector-set! _table62786_ _probe62805_ _key62781_)
                          (vector-set!
                           _table62786_
                           (fx+ _probe62805_ '1)
                           (_method-specializer-table-update!62782_
                            _default62783_))
                          ((lambda ()
                             (let ((__tmp64320
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62780_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62780_ __tmp64320))
                             (let ((__tmp64321
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62780_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62780_
                                __tmp64321))))))
                    (if (let ((__tmp64319 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62812_ __tmp64319))
                        (let ((__tmp64318
                               (let ((_next-probe62817_
                                      (fx+ _start62798_
                                           _i62807_
                                           (fx* _i62807_ _i62807_))))
                                 (fxmodulo _next-probe62817_ _size62792_)))
                              (__tmp64317 (fx+ _i62807_ '1))
                              (__tmp64316
                               (let ((_$e62820_ _deleted62809_))
                                 (if _$e62820_ _$e62820_ _probe62805_))))
                          (declare (not safe))
                          (_loop62802_ __tmp64318 __tmp64317 __tmp64316))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62781_ _k62812_))
                            (begin
                              (vector-set!
                               _table62786_
                               _probe62805_
                               _key62781_)
                              (vector-set!
                               _table62786_
                               (fx+ _probe62805_ '1)
                               (_method-specializer-table-update!62782_
                                (vector-ref
                                 _table62786_
                                 (fx+ _probe62805_ '1)))))
                            (let ((__tmp64315
                                   (let ((_next-probe62823_
                                          (fx+ _start62798_
                                               _i62807_
                                               (fx* _i62807_ _i62807_))))
                                     (fxmodulo _next-probe62823_ _size62792_)))
                                  (__tmp64314 (fx+ _i62807_ '1)))
                              (declare (not safe))
                              (_loop62802_
                               __tmp64315
                               __tmp64314
                               _deleted62809_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab62739_ _key62741_)
        (let ((_table62744_
               (let () (declare (not safe)) (&raw-table-table _tab62739_)))
              (_seed62746_
               (let () (declare (not safe)) (&raw-table-seed _tab62739_))))
          (let* ((_h62749_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62741_))
                         _seed62746_))
                 (_size62752_ (vector-length _table62744_))
                 (_entries62755_ (fxquotient _size62752_ '2))
                 (_start62758_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62749_ _entries62755_)
                   '1)))
            (let _loop62762_ ((_probe62765_ _start62758_) (_i62767_ '1))
              (let ((_k62770_ (vector-ref _table62744_ _probe62765_)))
                (if (let ((__tmp64330 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62770_ __tmp64330))
                    '#!void
                    (if (let ((__tmp64329 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62770_ __tmp64329))
                        (let ((__tmp64328
                               (let ((_next-probe62773_
                                      (fx+ _start62758_
                                           _i62767_
                                           (fx* _i62767_ _i62767_))))
                                 (fxmodulo _next-probe62773_ _size62752_)))
                              (__tmp64327 (fx+ _i62767_ '1)))
                          (declare (not safe))
                          (_loop62762_ __tmp64328 __tmp64327))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62741_ _k62770_))
                            (begin
                              (vector-set!
                               _table62744_
                               _probe62765_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62744_
                               (fx+ _probe62765_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64326
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62739_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62739_
                                    __tmp64326)))))
                            (let ((__tmp64325
                                   (let ((_next-probe62777_
                                          (fx+ _start62758_
                                               _i62767_
                                               (fx* _i62767_ _i62767_))))
                                     (fxmodulo _next-probe62777_ _size62752_)))
                                  (__tmp64324 (fx+ _i62767_ '1)))
                              (declare (not safe))
                              (_loop62762_ __tmp64325 __tmp64324)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc62730_ _specializer62731_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62735_ ()
            (if (let ((__tmp64331
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64331 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62735_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc62730_
           _specializer62731_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc62720_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62724_ ()
            (if (let ((__tmp64332
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64332 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62724_))))))
        (let ((_specializer62728_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc62720_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer62728_)))
    (define __class-specializer-hash-key
      (lambda (_klass62718_)
        (let ((__tmp64333
               (let () (declare (not safe)) (##type-id _klass62718_))))
          (declare (not safe))
          (symbolic-hash __tmp64333))))
    (define make-class-specializer-table__%
      (lambda (_size-hint62699_ _seed62701_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint62699_
           __class-specializer-hash-key
           eq?
           _seed62701_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint62707_ '#f) (_seed62709_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62707_ _seed62709_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint62711_)
        (let ((_seed62713_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62711_ _seed62713_))))
    (define make-class-specializer-table
      (lambda _g64335_
        (let ((_g64334_ (let () (declare (not safe)) (##length _g64335_))))
          (cond ((let () (declare (not safe)) (##fx= _g64334_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64335_))
                ((let () (declare (not safe)) (##fx= _g64334_ 1))
                 (apply (lambda (_size-hint62711_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint62711_)))
                        _g64335_))
                ((let () (declare (not safe)) (##fx= _g64334_ 2))
                 (apply (lambda (_size-hint62715_ _seed62716_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint62715_
                             _seed62716_)))
                        _g64335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64335_))))))
    (define class-specializer-table-ref
      (lambda (_tab62656_ _key62657_ _default62658_)
        (let ((_table62660_
               (let () (declare (not safe)) (&raw-table-table _tab62656_)))
              (_seed62661_
               (let () (declare (not safe)) (&raw-table-seed _tab62656_))))
          (let* ((_h62663_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62657_))
                         _seed62661_))
                 (_size62666_ (vector-length _table62660_))
                 (_entries62669_ (fxquotient _size62666_ '2))
                 (_start62672_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62663_ _entries62669_)
                   '1)))
            (let _loop62676_ ((_probe62679_ _start62672_)
                              (_i62681_ '1)
                              (_deleted62683_ '#f))
              (let ((_k62686_ (vector-ref _table62660_ _probe62679_)))
                (if (let ((__tmp64342 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62686_ __tmp64342))
                    _default62658_
                    (if (let ((__tmp64341 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62686_ __tmp64341))
                        (let ((__tmp64340
                               (let ((_next-probe62689_
                                      (fx+ _start62672_
                                           _i62681_
                                           (fx* _i62681_ _i62681_))))
                                 (fxmodulo _next-probe62689_ _size62666_)))
                              (__tmp64339 (fx+ _i62681_ '1))
                              (__tmp64338
                               (let ((_$e62692_ _deleted62683_))
                                 (if _$e62692_ _$e62692_ _probe62679_))))
                          (declare (not safe))
                          (_loop62676_ __tmp64340 __tmp64339 __tmp64338))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62657_ _k62686_))
                            (vector-ref _table62660_ (fx+ _probe62679_ '1))
                            (let ((__tmp64337
                                   (let ((_next-probe62695_
                                          (fx+ _start62672_
                                               _i62681_
                                               (fx* _i62681_ _i62681_))))
                                     (fxmodulo _next-probe62695_ _size62666_)))
                                  (__tmp64336 (fx+ _i62681_ '1)))
                              (declare (not safe))
                              (_loop62676_
                               __tmp64337
                               __tmp64336
                               _deleted62683_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab62652_ _key62653_ _value62654_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62652_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62652_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62652_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab62652_
           _key62653_
           _value62654_))))
    (define __class-specializer-table-set!
      (lambda (_tab62607_ _key62608_ _value62609_)
        (let ((_table62612_
               (let () (declare (not safe)) (&raw-table-table _tab62607_)))
              (_seed62613_
               (let () (declare (not safe)) (&raw-table-seed _tab62607_))))
          (let* ((_h62615_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62608_))
                         _seed62613_))
                 (_size62618_ (vector-length _table62612_))
                 (_entries62621_ (fxquotient _size62618_ '2))
                 (_start62624_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62615_ _entries62621_)
                   '1)))
            (let _loop62628_ ((_probe62631_ _start62624_)
                              (_i62633_ '1)
                              (_deleted62635_ '#f))
              (let ((_k62638_ (vector-ref _table62612_ _probe62631_)))
                (if (let ((__tmp64352 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62638_ __tmp64352))
                    (if _deleted62635_
                        (begin
                          (vector-set! _table62612_ _deleted62635_ _key62608_)
                          (vector-set!
                           _table62612_
                           (fx+ _deleted62635_ '1)
                           _value62609_)
                          ((lambda ()
                             (let ((__tmp64351
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62607_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62607_
                                __tmp64351)))))
                        (begin
                          (vector-set! _table62612_ _probe62631_ _key62608_)
                          (vector-set!
                           _table62612_
                           (fx+ _probe62631_ '1)
                           _value62609_)
                          ((lambda ()
                             (let ((__tmp64349
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62607_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62607_ __tmp64349))
                             (let ((__tmp64350
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62607_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62607_
                                __tmp64350))))))
                    (if (let ((__tmp64348 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62638_ __tmp64348))
                        (let ((__tmp64347
                               (let ((_next-probe62643_
                                      (fx+ _start62624_
                                           _i62633_
                                           (fx* _i62633_ _i62633_))))
                                 (fxmodulo _next-probe62643_ _size62618_)))
                              (__tmp64346 (fx+ _i62633_ '1))
                              (__tmp64345
                               (let ((_$e62646_ _deleted62635_))
                                 (if _$e62646_ _$e62646_ _probe62631_))))
                          (declare (not safe))
                          (_loop62628_ __tmp64347 __tmp64346 __tmp64345))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62608_ _k62638_))
                            (begin
                              (vector-set!
                               _table62612_
                               _probe62631_
                               _key62608_)
                              (vector-set!
                               _table62612_
                               (fx+ _probe62631_ '1)
                               _value62609_))
                            (let ((__tmp64344
                                   (let ((_next-probe62649_
                                          (fx+ _start62624_
                                               _i62633_
                                               (fx* _i62633_ _i62633_))))
                                     (fxmodulo _next-probe62649_ _size62618_)))
                                  (__tmp64343 (fx+ _i62633_ '1)))
                              (declare (not safe))
                              (_loop62628_
                               __tmp64344
                               __tmp64343
                               _deleted62635_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab62602_
               _key62603_
               _class-specializer-table-update!62604_
               _default62605_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62602_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62602_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62602_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab62602_
           _key62603_
           _class-specializer-table-update!62604_
           _default62605_))))
    (define __class-specializer-table-update!
      (lambda (_tab62556_
               _key62557_
               _class-specializer-table-update!62558_
               _default62559_)
        (let ((_table62562_
               (let () (declare (not safe)) (&raw-table-table _tab62556_)))
              (_seed62563_
               (let () (declare (not safe)) (&raw-table-seed _tab62556_))))
          (let* ((_h62565_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62557_))
                         _seed62563_))
                 (_size62568_ (vector-length _table62562_))
                 (_entries62571_ (fxquotient _size62568_ '2))
                 (_start62574_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62565_ _entries62571_)
                   '1)))
            (let _loop62578_ ((_probe62581_ _start62574_)
                              (_i62583_ '1)
                              (_deleted62585_ '#f))
              (let ((_k62588_ (vector-ref _table62562_ _probe62581_)))
                (if (let ((__tmp64362 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62588_ __tmp64362))
                    (if _deleted62585_
                        (begin
                          (vector-set! _table62562_ _deleted62585_ _key62557_)
                          (vector-set!
                           _table62562_
                           (fx+ _deleted62585_ '1)
                           (_class-specializer-table-update!62558_
                            _default62559_))
                          ((lambda ()
                             (let ((__tmp64361
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62556_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62556_
                                __tmp64361)))))
                        (begin
                          (vector-set! _table62562_ _probe62581_ _key62557_)
                          (vector-set!
                           _table62562_
                           (fx+ _probe62581_ '1)
                           (_class-specializer-table-update!62558_
                            _default62559_))
                          ((lambda ()
                             (let ((__tmp64359
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62556_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62556_ __tmp64359))
                             (let ((__tmp64360
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62556_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62556_
                                __tmp64360))))))
                    (if (let ((__tmp64358 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62588_ __tmp64358))
                        (let ((__tmp64357
                               (let ((_next-probe62593_
                                      (fx+ _start62574_
                                           _i62583_
                                           (fx* _i62583_ _i62583_))))
                                 (fxmodulo _next-probe62593_ _size62568_)))
                              (__tmp64356 (fx+ _i62583_ '1))
                              (__tmp64355
                               (let ((_$e62596_ _deleted62585_))
                                 (if _$e62596_ _$e62596_ _probe62581_))))
                          (declare (not safe))
                          (_loop62578_ __tmp64357 __tmp64356 __tmp64355))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62557_ _k62588_))
                            (begin
                              (vector-set!
                               _table62562_
                               _probe62581_
                               _key62557_)
                              (vector-set!
                               _table62562_
                               (fx+ _probe62581_ '1)
                               (_class-specializer-table-update!62558_
                                (vector-ref
                                 _table62562_
                                 (fx+ _probe62581_ '1)))))
                            (let ((__tmp64354
                                   (let ((_next-probe62599_
                                          (fx+ _start62574_
                                               _i62583_
                                               (fx* _i62583_ _i62583_))))
                                     (fxmodulo _next-probe62599_ _size62568_)))
                                  (__tmp64353 (fx+ _i62583_ '1)))
                              (declare (not safe))
                              (_loop62578_
                               __tmp64354
                               __tmp64353
                               _deleted62585_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62515_ _key62517_)
        (let ((_table62520_
               (let () (declare (not safe)) (&raw-table-table _tab62515_)))
              (_seed62522_
               (let () (declare (not safe)) (&raw-table-seed _tab62515_))))
          (let* ((_h62525_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62517_))
                         _seed62522_))
                 (_size62528_ (vector-length _table62520_))
                 (_entries62531_ (fxquotient _size62528_ '2))
                 (_start62534_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62525_ _entries62531_)
                   '1)))
            (let _loop62538_ ((_probe62541_ _start62534_) (_i62543_ '1))
              (let ((_k62546_ (vector-ref _table62520_ _probe62541_)))
                (if (let ((__tmp64369 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62546_ __tmp64369))
                    '#!void
                    (if (let ((__tmp64368 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62546_ __tmp64368))
                        (let ((__tmp64367
                               (let ((_next-probe62549_
                                      (fx+ _start62534_
                                           _i62543_
                                           (fx* _i62543_ _i62543_))))
                                 (fxmodulo _next-probe62549_ _size62528_)))
                              (__tmp64366 (fx+ _i62543_ '1)))
                          (declare (not safe))
                          (_loop62538_ __tmp64367 __tmp64366))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62517_ _k62546_))
                            (begin
                              (vector-set!
                               _table62520_
                               _probe62541_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62520_
                               (fx+ _probe62541_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64365
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62515_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62515_
                                    __tmp64365)))))
                            (let ((__tmp64364
                                   (let ((_next-probe62553_
                                          (fx+ _start62534_
                                               _i62543_
                                               (fx* _i62543_ _i62543_))))
                                     (fxmodulo _next-probe62553_ _size62528_)))
                                  (__tmp64363 (fx+ _i62543_ '1)))
                              (declare (not safe))
                              (_loop62538_ __tmp64364 __tmp64363)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62508_)
        (let ((_$e62510_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62508_))))
          (if _$e62510_
              _$e62510_
              (let ((_method-table62513_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62508_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62508_ _method-table62513_))
                _method-table62513_)))))
    (define __lookup-class-specializer
      (lambda (_klass62498_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62502_ ()
            (if (let ((__tmp64370
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64370 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62502_))))))
        (let ((_method-table62506_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62498_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62506_)))
    (define __bind-class-specializer!
      (lambda (_klass62489_ _method-table62490_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62494_ ()
            (if (let ((__tmp64371
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64371 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62494_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62489_
           _method-table62490_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62474_ _method-table62475_ _method62476_ _proc62477_)
        (let ((_$e62479_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62475_ _method62476_ '#f))))
          (if _$e62479_
              _$e62479_
              (let ((_$e62482_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62477_))))
                (if _$e62482_
                    ((lambda (_specialize62485_)
                       (let ((_specialized-proc62487_
                              (_specialize62485_
                               _klass62474_
                               _method-table62475_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62475_
                          _method62476_
                          _specialized-proc62487_)))
                     _$e62482_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62475_
                       _method62476_
                       _proc62477_))))))))
    (define __specialize-class
      (lambda (_klass62401_)
        (if (let ((__tmp64377
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62401_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64377))
            (if (let () (declare (not safe)) (##type? _klass62401_))
                (let ((_method-table62403_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62405_ ((_xklass62407_ _klass62401_))
                    (if _xklass62407_
                        (begin
                          (let ((_xmethod-table6240862410_
                                 (let ((__tmp64374
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62407_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64374
                                    '#f))))
                            (if _xmethod-table6240862410_
                                (let* ((_xmethod-table62413_
                                        _xmethod-table6240862410_)
                                       (__tmp64375
                                        (lambda (_g6241462417_ _g6241562419_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62401_
                                             _method-table62403_
                                             _g6241462417_
                                             _g6241562419_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62413_
                                   __tmp64375))
                                '#f))
                          (let ((__tmp64376
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62407_))))
                            (declare (not safe))
                            (_loop62405_ __tmp64376)))
                        '#!void))
                  _method-table62403_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62401_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62401_))
                (let ((__method64173
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62401_ 'specialize-class))))
                  (if __method64173
                      (__method64173 _klass62401_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62401_
                               'specialize-class))))
                (if (let ((__tmp64373
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62401_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64373))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62401_))
                    (let ((_method-table62422_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62424_ ((_rest62426_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62401_))))
                        (let* ((_rest6242762435_ _rest62426_)
                               (_else6242962443_
                                (lambda () _method-table62422_))
                               (_K6243162462_
                                (lambda (_rest62446_ _xklass62447_)
                                  (let ((_xmethod-table6244862450_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62447_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6244862450_
                                        (let* ((_xmethod-table62453_
                                                _xmethod-table6244862450_)
                                               (__tmp64372
                                                (lambda (_g6245462457_
                                                         _g6245562459_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62401_
                                                     _method-table62422_
                                                     _g6245462457_
                                                     _g6245562459_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62453_
                                           __tmp64372))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62424_ _rest62446_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6242762435_))
                              (let ((_hd6243262465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6242762435_)))
                                    (_tl6243362467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6242762435_))))
                                (let* ((_xklass62470_ _hd6243262465_)
                                       (_rest62472_ _tl6243362467_))
                                  (declare (not safe))
                                  (_K6243162462_ _rest62472_ _xklass62470_)))
                              (let ()
                                (declare (not safe))
                                (_else6242962443_)))))))))))
    (define seal-class!
      (lambda (_klass62397_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62397_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62397_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62397_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62397_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62397_))
                      (let ((__method64174
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62397_ 'seal-class!))))
                        (if __method64174
                            (__method64174 _klass62397_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62397_
                                     'seal-class!))))
                      (if (let ((__tmp64378
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62397_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64378))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62397_))
                          (let ((_method-table62399_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62397_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62397_
                             _method-table62399_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62397_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62346_ _obj62347_ _id62348_)
        (let ((_klass62350_ (object-type _obj62347_))
              (_type-id62351_
               (let () (declare (not safe)) (##type-id _subklass62346_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62350_ 'gerbil#class::t))
              (let _lp62353_ ((_rest62355_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62350_))))
                (let* ((_rest6235662364_ _rest62355_)
                       (_else6235862372_ (lambda () '#f))
                       (_K6236062378_
                        (lambda (_rest62375_ _klass62376_)
                          (if (let ((__tmp64381
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62376_))))
                                (declare (not safe))
                                (eq? _type-id62351_ __tmp64381))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62375_
                                 _obj62347_
                                 _id62348_))
                              (let ()
                                (declare (not safe))
                                (_lp62353_ _rest62375_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6235662364_))
                      (let ((_hd6236162381_
                             (let ()
                               (declare (not safe))
                               (##car _rest6235662364_)))
                            (_tl6236262383_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6235662364_))))
                        (let* ((_klass62386_ _hd6236162381_)
                               (_rest62388_ _tl6236262383_))
                          (declare (not safe))
                          (_K6236062378_ _rest62388_ _klass62386_)))
                      (let () (declare (not safe)) (_else6235862372_)))))
              (if (let () (declare (not safe)) (##type? _klass62350_))
                  (let _lp62390_ ((_klass62392_ _klass62350_))
                    (if (let ((__tmp64380
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62392_))))
                          (declare (not safe))
                          (eq? _type-id62351_ __tmp64380))
                        (let ((__tmp64379
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62392_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64379
                           _obj62347_
                           _id62348_))
                        (let ((_$e62394_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62392_))))
                          (if _$e62394_
                              (let ()
                                (declare (not safe))
                                (_lp62390_ _$e62394_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62336_ _obj62337_ _id62338_ . _args62339_)
        (let ((_$e62341_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62336_ _obj62337_ _id62338_))))
          (if _$e62341_
              ((lambda (_methodf62344_)
                 (apply _methodf62344_ _obj62337_ _args62339_))
               _$e62341_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62337_
                       'method:
                       _id62338_))))))
    (define write-style (lambda (_we62334_) (macro-writeenv-style _we62334_)))
    (define write-object
      (lambda (_we62326_ _obj62327_)
        (let ((_$e62329_
               (let () (declare (not safe)) (method-ref _obj62327_ ':wr))))
          (if _$e62329_
              ((lambda (_method62332_) (_method62332_ _obj62327_ _we62326_))
               _$e62329_)
              (let ()
                (declare (not safe))
                (##default-wr _we62326_ _obj62327_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
