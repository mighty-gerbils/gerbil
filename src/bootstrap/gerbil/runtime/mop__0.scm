(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709038441)
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
      (let* ((_slots63875_
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
             (_slot-vector63877_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots63875_))))
             (_slot-table63884_
              (let ((_slot-table63879_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot63881_ _field63882_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63879_
                      _slot63881_
                      _field63882_))
                   (let ((__tmp64025 (symbol->keyword _slot63881_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63879_
                      __tmp64025
                      _field63882_)))
                 _slots63875_
                 (let ((__tmp64026 (length _slots63875_)))
                   (declare (not safe))
                   (iota__1 __tmp64026 '1)))
                _slot-table63879_))
             (_flags63886_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields63892_
              (list->vector
               (apply append
                      (map (lambda (_g6388763889_) (list _g6388763889_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots63875_ '5))))))
             (_properties63894_
              (let ((__tmp64029
                     (let ((__tmp64030
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots63875_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64030)))
                    (__tmp64027
                     (let ((__tmp64028
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64028 '()))))
                (declare (not safe))
                (cons __tmp64029 __tmp64027)))
             (_t63896_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags63886_
                 ##type-type
                 _fields63892_
                 '()
                 _slot-vector63877_
                 _slot-table63884_
                 _properties63894_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t63896_ _t63896_))
        _t63896_))
    (define class-type?
      (lambda (_obj63873_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj63873_ class::t.id))))
    (define class-type=?
      (lambda (_x63870_ _y63871_)
        (let ((__tmp64032 (##structure-ref _x63870_ '1 class::t '#f))
              (__tmp64031 (##structure-ref _y63871_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64032 __tmp64031))))
    (define type-opaque?
      (lambda (_type63868_)
        (let ((__tmp64033
               (let ((__tmp64034
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63868_))))
                 (declare (not safe))
                 (##fxand __tmp64034 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64033 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type63866_)
        (let ((__tmp64035
               (let ((__tmp64036
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63866_))))
                 (declare (not safe))
                 (##fxand __tmp64036 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64035 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type63864_)
        (let ((__tmp64037
               (let ((__tmp64038
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63864_))))
                 (declare (not safe))
                 (##fxand __tmp64038 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64037 '0))))
    (define class-type-struct?
      (lambda (_klass63862_)
        (let ((__tmp64039
               (let ((__tmp64040
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63862_))))
                 (declare (not safe))
                 (##fxand __tmp64040 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64039 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass63860_)
        (let ((__tmp64041
               (let ((__tmp64042
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63860_))))
                 (declare (not safe))
                 (##fxand __tmp64042 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64041 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass63858_)
        (let ((__tmp64043
               (let ((__tmp64044
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63858_))))
                 (declare (not safe))
                 (##fxand __tmp64044 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64043 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties63824_)
        (map (lambda (_e6382563827_)
               (let* ((_g6382963836_ _e6382563827_)
                      (_E6383163840_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6382963836_))))
                      (_K6383263846_
                       (lambda (_val63843_ _key63844_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key63844_ 'direct-supers:))
                             (let ((__tmp64045 (map class-type-id _val63843_)))
                               (declare (not safe))
                               (cons _key63844_ __tmp64045))
                             (let ()
                               (declare (not safe))
                               (cons _key63844_ _val63843_))))))
                 (if (let () (declare (not safe)) (##pair? _g6382963836_))
                     (let ((_hd6383363849_
                            (let ()
                              (declare (not safe))
                              (##car _g6382963836_)))
                           (_tl6383463851_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6382963836_))))
                       (let* ((_key63854_ _hd6383363849_)
                              (_val63856_ _tl6383463851_))
                         (declare (not safe))
                         (_K6383263846_ _val63856_ _key63854_)))
                     (let () (declare (not safe)) (_E6383163840_)))))
             _properties63824_)))
    (define make-class-type-descriptor
      (lambda (_type-id63723_
               _type-name63724_
               _type-super63725_
               _precedence-list63726_
               _slot-vector63727_
               _properties63728_
               _constructor63729_
               _slot-table63730_
               _methods63731_)
        (letrec ((_make-props!63733_
                  (lambda (_key63793_)
                    (letrec* ((_ht63795_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!63796_
                               (lambda (_ht63817_ _slots63818_)
                                 (for-each
                                  (lambda (_g6381963821_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht63817_
                                       _g6381963821_
                                       '#t)))
                                  _slots63818_)))
                              (_put-alist!63797_
                               (lambda (_ht63806_ _key63807_ _alist63808_)
                                 (let ((_$e63810_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key63807_
                                           _alist63808_))))
                                   (if _$e63810_
                                       ((lambda (_g6381263814_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!63796_
                                             _ht63806_
                                             _g6381263814_)))
                                        _$e63810_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!63797_
                         _ht63795_
                         _key63793_
                         _properties63728_))
                      (for-each
                       (lambda (_mixin63799_)
                         (let ((_alist63801_
                                (##structure-ref
                                 _mixin63799_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist63801_))
                                   (let ((__tmp64047
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key63793_
                                             _alist63801_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64047)))
                               (let ((__tmp64046
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin63799_))))
                                 (declare (not safe))
                                 (_put-slots!63796_ _ht63795_ __tmp64046))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!63797_
                                  _ht63795_
                                  _key63793_
                                  _alist63801_)))))
                       _precedence-list63726_)
                      _ht63795_))))
          (let* ((_transparent?63735_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63728_)))
                 (_all-slots-printable?63740_
                  (let ((_$e63737_ _transparent?63735_))
                    (if _$e63737_
                        _$e63737_
                        (let ((__tmp64048
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63728_))))
                          (declare (not safe))
                          (eq? '#t __tmp64048)))))
                 (_printable63742_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63740_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63733_ 'print:))
                      '#f))
                 (_all-slots-equalable?63747_
                  (let ((_$e63744_ _transparent?63735_))
                    (if _$e63744_
                        _$e63744_
                        (let ((__tmp64049
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63728_))))
                          (declare (not safe))
                          (eq? '#t __tmp64049)))))
                 (_equalable63749_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63747_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63733_ 'equal:))
                      '#f))
                 (_first-new-field63751_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63725_
                         'gerbil#class::t))
                      (let ((__tmp64050
                             (##structure-ref
                              _type-super63725_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64050))
                      '1))
                 (_field-info-length63753_
                  (let ((__tmp64051
                         (let ((__tmp64052
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63727_))))
                           (declare (not safe))
                           (##fx- __tmp64052 _first-new-field63751_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64051)))
                 (_field-info63755_ (make-vector _field-info-length63753_ '#f))
                 (_struct?63757_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63728_)))
                 (_final?63759_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63728_)))
                 (_metaclass63767_
                  (let ((_metaclass6376063762_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63728_))))
                    (if _metaclass6376063762_
                        (let ((_metaclass63765_ _metaclass6376063762_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63765_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63723_
                                       'metaclass:
                                       _metaclass63765_)))
                          _metaclass63765_)
                        '#f)))
                 (_opaque?63772_
                  (let ((_$e63769_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63747_))))
                    (if _$e63769_
                        _$e63769_
                        (if _type-super63725_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63725_))
                            '#f))))
                 (_type-flags63774_
                  (let ((__tmp64056 (if _final?63759_ '0 type-flag-extensible))
                        (__tmp64055 (if _opaque?63772_ type-flag-opaque '0))
                        (__tmp64054
                         (if _struct?63757_ class-type-flag-struct '0))
                        (__tmp64053
                         (if _metaclass63767_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64056
                             __tmp64055
                             __tmp64054
                             __tmp64053))))
            (let _loop63777_ ((_i63779_ _first-new-field63751_) (_j63780_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63780_ _field-info-length63753_))
                  (let* ((_slot63782_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63727_ _i63779_)))
                         (_flags63790_
                          (if _transparent?63735_
                              '0
                              (let ((__tmp64058
                                     (if (or _all-slots-printable?63740_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63742_
                                                _slot63782_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64057
                                     (if (or _all-slots-equalable?63747_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63749_
                                                _slot63782_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64058 __tmp64057)))))
                    (vector-set! _field-info63755_ _j63780_ _slot63782_)
                    (vector-set!
                     _field-info63755_
                     (let () (declare (not safe)) (##fx+ _j63780_ '1))
                     _flags63790_)
                    (let ((__tmp64060
                           (let () (declare (not safe)) (##fx+ _i63779_ '1)))
                          (__tmp64059
                           (let () (declare (not safe)) (##fx+ _j63780_ '3))))
                      (declare (not safe))
                      (_loop63777_ __tmp64060 __tmp64059)))
                  '#!void))
            (if _metaclass63767_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63767_
                   _type-id63723_
                   _type-name63724_
                   _type-flags63774_
                   _type-super63725_
                   _field-info63755_
                   _precedence-list63726_
                   _slot-vector63727_
                   _slot-table63730_
                   _properties63728_
                   _constructor63729_
                   _methods63731_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63723_
                   _type-name63724_
                   _type-flags63774_
                   _type-super63725_
                   _field-info63755_
                   _precedence-list63726_
                   _slot-vector63727_
                   _slot-table63730_
                   _properties63728_
                   _constructor63729_
                   _methods63731_)))))))
    (define class-type-id
      (lambda (_klass63721_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63721_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63719_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63719_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63716_ _val63717_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63716_ _val63717_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63711_ _val63713_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63711_
           _val63713_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63709_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63709_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63707_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63707_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63704_ _val63705_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63704_ _val63705_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63699_ _val63701_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63699_
           _val63701_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63697_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63697_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63695_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63695_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63692_ _val63693_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63692_ _val63693_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63687_ _val63689_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63687_
           _val63689_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63685_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63685_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63683_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63683_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63680_ _val63681_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63680_ _val63681_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63675_ _val63677_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63675_
           _val63677_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63673_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63673_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63671_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63671_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63668_ _val63669_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63668_ _val63669_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63663_ _val63665_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63663_
           _val63665_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63661_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63661_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63659_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63659_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63656_ _val63657_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63656_
           _val63657_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63651_ _val63653_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63651_
           _val63653_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63649_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63649_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63647_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63647_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63644_ _val63645_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63644_
           _val63645_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63639_ _val63641_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63639_
           _val63641_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63637_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63637_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63635_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63635_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63632_ _val63633_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63632_ _val63633_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63627_ _val63629_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63627_
           _val63629_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63625_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63625_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63623_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63623_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63620_ _val63621_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63620_ _val63621_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63615_ _val63617_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63615_
           _val63617_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63613_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63613_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63611_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63611_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63608_ _val63609_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63608_
           _val63609_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63603_ _val63605_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63603_
           _val63605_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63601_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63601_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63599_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63599_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63596_ _val63597_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63596_ _val63597_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63591_ _val63593_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63591_
           _val63593_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63589_)
        (cdr (vector->list (##structure-ref _klass63589_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63587_)
        (let ((__tmp64061
               (let ((__tmp64062
                      (##structure-ref _klass63587_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64062))))
          (declare (not safe))
          (##fx- __tmp64061 '1))))
    (define class-type-seal!
      (lambda (_klass63585_)
        (let ((__tmp64063
               (let ((__tmp64064
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63585_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64064))))
          (declare (not safe))
          (##structure-set!
           _klass63585_
           __tmp64063
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63583_)
        (let ((__tmp64065
               (let ((__tmp64066
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63583_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64066))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63583_
           __tmp64065
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63574_ _maybe-super-struct63575_)
        (let ((_maybe-super-struct-id63577_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63575_))))
          (let _lp63579_ ((_super-struct63581_ _maybe-sub-struct63574_))
            (if (let () (declare (not safe)) (not _super-struct63581_))
                '#f
                (if (let ((__tmp64068
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63581_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63577_ __tmp64068))
                    '#t
                    (let ((__tmp64067
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63581_))))
                      (declare (not safe))
                      (_lp63579_ __tmp64067))))))))
    (define base-struct/1
      (lambda (_klass63572_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63572_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63572_))
                _klass63572_
                (let () (declare (not safe)) (##type-super _klass63572_)))
            (if (let () (declare (not safe)) (not _klass63572_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63572_))))))
    (define base-struct/2
      (lambda (_klass163560_ _klass263561_)
        (let ((_s163563_
               (let () (declare (not safe)) (base-struct/1 _klass163560_)))
              (_s263564_
               (let () (declare (not safe)) (base-struct/1 _klass263561_))))
          (if (or (let () (declare (not safe)) (not _s163563_))
                  (and _s263564_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163563_ _s263564_))))
              _s263564_
              (if (or (let () (declare (not safe)) (not _s263564_))
                      (and _s163563_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263564_ _s163563_))))
                  _s163563_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163560_
                           _klass263561_
                           _s163563_
                           _s263564_)))))))
    (define base-struct/list
      (lambda (_all-supers63444_)
        (let* ((_all-supers6344563470_ _all-supers63444_)
               (_E6345063474_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6344563470_)))))
          (let ((_K6346863557_ (lambda () '#f))
                (_K6346563543_
                 (lambda (_x63541_)
                   (let () (declare (not safe)) (base-struct/1 _x63541_))))
                (_K6346063520_
                 (lambda (_y63517_ _x63518_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x63518_ _y63517_))))
                (_K6345163481_
                 (lambda (_y63478_ _x63479_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x63479_ _y63478_)))))
            (let* ((___match6401964020_
                    (lambda (_hd6345263484_ _tl6345363486_)
                      (let ((_x63489_ _hd6345263484_))
                        (letrec ((_splice-rest6345563491_
                                  (lambda (_rest6345963498_ _y63500_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6345963498_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6345163481_ _y63500_ _x63489_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6345063474_)))))
                                 (_splice-try6345763493_
                                  (lambda (_hd6345863502_
                                           _rest6345963504_
                                           _y6345463505_)
                                    (let ((_y63508_ _hd6345863502_))
                                      (let ((__tmp64070
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6345963504_)))
                                            (__tmp64069
                                             (let ()
                                               (declare (not safe))
                                               (cons _y63508_ _y6345463505_))))
                                        (declare (not safe))
                                        (_splice-loop6345663495_
                                         __tmp64070
                                         __tmp64069)))))
                                 (_splice-loop6345663495_
                                  (lambda (_rest6345963510_ _y6345463511_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6345963510_))
                                        (let ((__tmp64072
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6345963510_))))
                                          (declare (not safe))
                                          (_splice-try6345763493_
                                           __tmp64072
                                           _rest6345963510_
                                           _y6345463511_))
                                        (let ((__tmp64071
                                               (reverse _y6345463511_)))
                                          (declare (not safe))
                                          (_splice-rest6345563491_
                                           _rest6345963510_
                                           __tmp64071))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6345663495_ _tl6345363486_ '()))))))
                   (_try-match6344763553_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6344563470_))
                          (let ((_tl6346763548_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6344563470_)))
                                (_hd6346663546_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6344563470_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6346763548_))
                                (let ((_x63551_ _hd6346663546_))
                                  (declare (not safe))
                                  (base-struct/1 _x63551_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6346763548_))
                                    (let ((_tl6346463532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6346763548_)))
                                          (_hd6346363530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6346763548_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6346463532_))
                                          (let ((_x63528_ _hd6346663546_)
                                                (_y63535_ _hd6346363530_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6346063520_
                                               _y63535_
                                               _x63528_)))
                                          (___match6401964020_
                                           _hd6346663546_
                                           _tl6346763548_)))
                                    (___match6401964020_
                                     _hd6346663546_
                                     _tl6346763548_))))
                          (let () (declare (not safe)) (_E6345063474_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6344563470_))
                  (let () (declare (not safe)) (_K6346863557_))
                  (let () (declare (not safe)) (_try-match6344763553_))))))))
    (define base-struct
      (lambda _all-supers63442_
        (let () (declare (not safe)) (base-struct/list _all-supers63442_))))
    (define find-super-constructor
      (lambda (_super63394_)
        (let _lp63396_ ((_rest63398_ _super63394_) (_constructor63399_ '#f))
          (let* ((_rest6340063408_ _rest63398_)
                 (_else6340263416_ (lambda () _constructor63399_))
                 (_K6340463430_
                  (lambda (_rest63419_ _hd63420_)
                    (let ((_$e63422_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63420_
                              '10
                              class::t
                              '#f))))
                      (if _$e63422_
                          ((lambda (_xconstructor63425_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63399_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63399_
                                            _xconstructor63425_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63396_ _rest63419_ _xconstructor63425_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63399_
                                          _xconstructor63425_))))
                           _$e63422_)
                          (let ()
                            (declare (not safe))
                            (_lp63396_ _rest63419_ _constructor63399_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6340063408_))
                (let ((_hd6340563433_
                       (let () (declare (not safe)) (##car _rest6340063408_)))
                      (_tl6340663435_
                       (let () (declare (not safe)) (##cdr _rest6340063408_))))
                  (let* ((_hd63438_ _hd6340563433_)
                         (_rest63440_ _tl6340663435_))
                    (declare (not safe))
                    (_K6340463430_ _rest63440_ _hd63438_)))
                (let () (declare (not safe)) (_else6340263416_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63370_ _direct-slots63371_)
        (let* ((_next-slot63373_ '1)
               (_slot-table63375_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63377_ '(__class))
               (_process-slot63381_
                (lambda (_slot63379_)
                  (if (let () (declare (not safe)) (symbol? _slot63379_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63379_)))
                  (if (let ((__tmp64074
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63375_
                                _slot63379_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64074 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63375_
                           _slot63379_
                           _next-slot63373_))
                        (let ((__tmp64073 (symbol->keyword _slot63379_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63375_
                           __tmp64073
                           _next-slot63373_))
                        (set! _r-slots63377_
                              (let ()
                                (declare (not safe))
                                (cons _slot63379_ _r-slots63377_)))
                        (set! _next-slot63373_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63373_ '1))))
                      '#!void)))
               (_process-slots63387_
                (lambda (_g6338263384_)
                  (for-each _process-slot63381_ _g6338263384_))))
          (for-each
           (lambda (_mixin63390_)
             (let ((__tmp64075
                    (let ((__tmp64076
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63390_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64076 '()))))
               (declare (not safe))
               (_process-slots63387_ __tmp64075)))
           (reverse _class-precedence-list63370_))
          (let ()
            (declare (not safe))
            (_process-slots63387_ _direct-slots63371_))
          (let ((_slot-vector63392_ (list->vector (reverse _r-slots63377_))))
            (values _slot-vector63392_ _slot-table63375_)))))
    (define make-class-type
      (lambda (_id63332_
               _name63333_
               _direct-supers63334_
               _direct-slots63335_
               _properties63336_
               _constructor63337_)
        (let ((_$e63342_
               (let ((__tmp64077
                      (lambda (_$obj63339_)
                        (let ((__tmp64078
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63339_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64078)))))
                 (declare (not safe))
                 (find __tmp64077 _direct-supers63334_))))
          (if _$e63342_
              ((lambda (_g6334463346_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6334463346_)))
               _$e63342_)
              (let ((_$e63349_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63334_))))
                (if _$e63349_
                    ((lambda (_g6335163353_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6335163353_)))
                     _$e63349_)
                    '#!void))))
        (let ((_g64079_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63334_))))
          (begin
            (let ((_g64080_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64079_) (##vector-length _g64079_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64080_ 2)))
                  (error "Context expects 2 values" _g64080_)))
            (let ((_precedence-list63356_
                   (let () (declare (not safe)) (##vector-ref _g64079_ 0)))
                  (_struct-super63357_
                   (let () (declare (not safe)) (##vector-ref _g64079_ 1))))
              (let ((_g64081_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63356_
                        _direct-slots63335_))))
                (begin
                  (let ((_g64082_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64081_)
                               (##vector-length _g64081_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64082_ 2)))
                        (error "Context expects 2 values" _g64082_)))
                  (let ((_slot-vector63359_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64081_ 0)))
                        (_slot-table63360_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64081_ 1))))
                    (let* ((_properties63362_
                            (let ((__tmp64085
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63335_)))
                                  (__tmp64083
                                   (let ((__tmp64084
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63334_))))
                                     (declare (not safe))
                                     (cons __tmp64084 _properties63336_))))
                              (declare (not safe))
                              (cons __tmp64085 __tmp64083)))
                           (_constructor*63367_
                            (let ((_$e63364_ _constructor63337_))
                              (if _$e63364_
                                  _$e63364_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63334_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63332_
                         _name63333_
                         _struct-super63357_
                         _precedence-list63356_
                         _slot-vector63359_
                         _properties63362_
                         _constructor*63367_
                         _slot-table63360_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63330_)
        (let ((__tmp64086
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63330_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63330_ __tmp64086))))
    (define compute-precedence-list
      (lambda (_direct-supers63328_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63328_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63312_)
        (let ((_tid63314_
               (let () (declare (not safe)) (##type-id _klass63312_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63312_))
              (lambda (_g6331563317_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6331563317_ _tid63314_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63312_))
                  (lambda (_g6331963321_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6331963321_ _tid63314_)))
                  (lambda (_g6332363325_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63312_ _g6332363325_))))))))
    (define if-class-slot-field
      (lambda (_klass63301_
               _slot63302_
               _if-final63303_
               _if-struct63304_
               _if-struct-field63305_
               _if-class-slot63306_)
        (let ((_field63308_
               (let ((__tmp64087
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63301_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64087 _slot63302_ '#f))))
          (if (let () (declare (not safe)) (not _field63308_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63301_
                       'slot:
                       _slot63302_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63301_))
                  (_if-final63303_ _klass63301_ _slot63302_ _field63308_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63301_))
                      (_if-struct63304_ _klass63301_ _slot63302_ _field63308_)
                      (if (let ((_strukt63310_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63301_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63310_
                                    'gerbil#class::t))
                                 (let ((__tmp64088
                                        (let ((__tmp64089
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63310_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64089))))
                                   (declare (not safe))
                                   (##fx< _field63308_ __tmp64088))))
                          (_if-struct-field63305_
                           _klass63301_
                           _slot63302_
                           _field63308_)
                          (_if-class-slot63306_
                           _klass63301_
                           _slot63302_
                           _field63308_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63298_ _slot63299_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63298_
           _slot63299_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63295_ _slot63296_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63295_
           _slot63296_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63292_ _slot63293_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63292_
           _slot63293_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63289_ _slot63290_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63289_
           _slot63290_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63273_ _class63274_ _slot63275_)
        (apply error
               '"not an instance"
               'object:
               _object63273_
               'class:
               _class63274_
               (if _slot63275_
                   (let ((__tmp64090
                          (let ()
                            (declare (not safe))
                            (cons _slot63275_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64090))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63280_ _class63281_)
        (let ((_slot63283_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63280_ _class63281_ _slot63283_))))
    (define not-an-instance
      (lambda _g64092_
        (let ((_g64091_ (let () (declare (not safe)) (##length _g64092_))))
          (cond ((let () (declare (not safe)) (##fx= _g64091_ 2))
                 (apply (lambda (_object63280_ _class63281_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63280_ _class63281_)))
                        _g64092_))
                ((let () (declare (not safe)) (##fx= _g64091_ 3))
                 (apply (lambda (_object63285_ _class63286_ _slot63287_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63285_
                             _class63286_
                             _slot63287_)))
                        _g64092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64092_))))))
    (define make-final-slot-accessor
      (lambda (_klass63266_ _slot63267_ _field63268_)
        (lambda (_obj63270_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63270_
             _field63268_
             _klass63266_
             _slot63267_)))))
    (define make-final-slot-mutator
      (lambda (_klass63259_ _slot63260_ _field63261_)
        (lambda (_obj63263_ _val63264_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63263_
             _val63264_
             _field63261_
             _klass63259_
             _slot63260_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63253_ _slot63254_ _field63255_)
        (lambda (_obj63257_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63257_
             _field63255_
             _klass63253_
             _slot63254_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63246_ _slot63247_ _field63248_)
        (lambda (_obj63250_ _val63251_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63250_
             _val63251_
             _field63248_
             _klass63246_
             _slot63247_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63240_ _slot63241_ _field63242_)
        (lambda (_obj63244_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63244_
             _field63242_
             _klass63240_
             _slot63241_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63233_ _slot63234_ _field63235_)
        (lambda (_obj63237_ _val63238_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63237_
             _val63238_
             _field63235_
             _klass63233_
             _slot63234_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63227_ _slot63228_ _field63229_)
        (lambda (_obj63231_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63227_ _obj63231_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63231_ _field63229_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63231_ _klass63227_ _slot63228_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63220_ _slot63221_ _field63222_)
        (lambda (_obj63224_ _val63225_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63220_ _obj63224_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63224_ _field63222_ _val63225_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63224_ _klass63220_ _slot63221_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63214_ _slot63215_ _field63216_)
        (lambda (_obj63218_)
          (if (let ((__tmp64093
                     (let () (declare (not safe)) (##type-id _klass63214_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63218_ __tmp64093))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63218_ _field63216_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63214_ _obj63218_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63218_ _slot63215_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63218_
                     _klass63214_
                     _slot63215_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63207_ _slot63208_ _field63209_)
        (lambda (_obj63211_ _val63212_)
          (if (let ((__tmp64094
                     (let () (declare (not safe)) (##type-id _klass63207_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63211_ __tmp64094))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63211_ _field63209_ _val63212_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63207_ _obj63211_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63211_ _slot63208_ _val63212_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63211_
                     _klass63207_
                     _slot63208_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63201_ _slot63202_ _field63203_)
        (lambda (_obj63205_)
          (if (let ((__tmp64095
                     (let () (declare (not safe)) (##type-id _klass63201_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63205_ __tmp64095))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63205_ _field63203_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63205_ _slot63202_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63194_ _slot63195_ _field63196_)
        (lambda (_obj63198_ _val63199_)
          (if (let ((__tmp64096
                     (let () (declare (not safe)) (##type-id _klass63194_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63198_ __tmp64096))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63198_ _field63196_ _val63199_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63198_ _slot63195_ _val63199_))))))
    (define class-slot-offset
      (lambda (_klass63191_ _slot63192_)
        (let ((__tmp64097
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63191_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64097 _slot63192_ '#f))))
    (define class-slot-ref
      (lambda (_klass63185_ _obj63186_ _slot63187_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63185_ _obj63186_))
            (let ((_off63189_
                   (let ((__tmp64098 (object-type _obj63186_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64098 _slot63187_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63186_
               _off63189_
               _klass63185_
               _slot63187_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63186_ _klass63185_)))))
    (define class-slot-set!
      (lambda (_klass63178_ _obj63179_ _slot63180_ _val63181_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63178_ _obj63179_))
            (let ((_off63183_
                   (let ((__tmp64099 (object-type _obj63179_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64099 _slot63180_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63179_
               _val63181_
               _off63183_
               _klass63178_
               _slot63180_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63179_ _klass63178_)))))
    (define unchecked-field-ref
      (lambda (_obj63175_ _off63176_)
        (let ((__tmp64100
               (let () (declare (not safe)) (##structure-type _obj63175_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63175_ _off63176_ __tmp64100 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63171_ _off63172_ _val63173_)
        (let ((__tmp64101
               (let () (declare (not safe)) (##structure-type _obj63171_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63171_
           _val63173_
           _off63172_
           __tmp64101
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63168_ _slot63169_)
        (let ((__tmp64102
               (let ((__tmp64103
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63168_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64103 _slot63169_))))
          (declare (not safe))
          (unchecked-field-ref _obj63168_ __tmp64102))))
    (define unchecked-slot-set!
      (lambda (_obj63164_ _slot63165_ _val63166_)
        (let ((__tmp64104
               (let ((__tmp64105
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63164_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64105 _slot63165_))))
          (declare (not safe))
          (unchecked-field-set! _obj63164_ __tmp64104 _val63166_))))
    (define slot-ref__%
      (lambda (_obj63140_ _slot63141_ _E63142_)
        (if (object? _obj63140_)
            (let* ((_klass63144_ (object-type _obj63140_))
                   (_$e63147_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63144_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63144_ _slot63141_))
                        '#f)))
              (if _$e63147_
                  ((lambda (_off63150_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63140_ _off63150_)))
                   _$e63147_)
                  (_E63142_ _obj63140_ _slot63141_)))
            (_E63142_ _obj63140_ _slot63141_))))
    (define slot-ref__0
      (lambda (_obj63155_ _slot63156_)
        (let ((_E63158_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63155_ _slot63156_ _E63158_))))
    (define slot-ref
      (lambda _g64107_
        (let ((_g64106_ (let () (declare (not safe)) (##length _g64107_))))
          (cond ((let () (declare (not safe)) (##fx= _g64106_ 2))
                 (apply (lambda (_obj63155_ _slot63156_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63155_ _slot63156_)))
                        _g64107_))
                ((let () (declare (not safe)) (##fx= _g64106_ 3))
                 (apply (lambda (_obj63160_ _slot63161_ _E63162_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63160_ _slot63161_ _E63162_)))
                        _g64107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64107_))))))
    (define slot-set!__%
      (lambda (_obj63112_ _slot63113_ _val63114_ _E63115_)
        (if (object? _obj63112_)
            (let* ((_klass63117_ (object-type _obj63112_))
                   (_$e63120_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63117_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63117_ _slot63113_))
                        '#f)))
              (if _$e63120_
                  ((lambda (_off63123_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63112_
                        _off63123_
                        _val63114_)))
                   _$e63120_)
                  (_E63115_ _obj63112_ _slot63113_)))
            (_E63115_ _obj63112_ _slot63113_))))
    (define slot-set!__0
      (lambda (_obj63128_ _slot63129_ _val63130_)
        (let ((_E63132_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63128_ _slot63129_ _val63130_ _E63132_))))
    (define slot-set!
      (lambda _g64109_
        (let ((_g64108_ (let () (declare (not safe)) (##length _g64109_))))
          (cond ((let () (declare (not safe)) (##fx= _g64108_ 3))
                 (apply (lambda (_obj63128_ _slot63129_ _val63130_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63128_ _slot63129_ _val63130_)))
                        _g64109_))
                ((let () (declare (not safe)) (##fx= _g64108_ 4))
                 (apply (lambda (_obj63134_ _slot63135_ _val63136_ _E63137_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63134_
                             _slot63135_
                             _val63136_
                             _E63137_)))
                        _g64109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64109_))))))
    (define __slot-error
      (lambda (_obj63108_ _slot63109_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63108_ 'slot: _slot63109_))))
    (define subclass?
      (lambda (_maybe-sub-class63098_ _maybe-super-class63099_)
        (let* ((_maybe-super-class-id63101_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63099_)))
               (_$e63103_
                (let ((__tmp64110
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63098_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63101_ __tmp64110))))
          (if _$e63103_
              _$e63103_
              (let ((__tmp64112
                     (lambda (_super-class63106_)
                       (let ((__tmp64113
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63106_))))
                         (declare (not safe))
                         (eq? __tmp64113 _maybe-super-class-id63101_))))
                    (__tmp64111
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63098_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64112 __tmp64111))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63095_ _obj63096_)
        (let ((__tmp64114
               (let () (declare (not safe)) (##type-id _klass63095_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63096_ __tmp64114))))
    (define struct-instance?
      (lambda (_klass63092_ _obj63093_)
        (let ((__tmp64115
               (let () (declare (not safe)) (##type-id _klass63092_))))
          (declare (not safe))
          (##structure-instance-of? _obj63093_ __tmp64115))))
    (define class-instance?
      (lambda (_klass63087_ _obj63088_)
        (if (object? _obj63088_)
            (let ((_type63090_ (object-type _obj63088_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63090_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63090_ _klass63087_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63082_ _k63083_)
        (let ((_obj63085_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63082_ _k63083_))))
          (let () (declare (not safe)) (object-fill! _obj63085_ '#f))
          _obj63085_)))
    (define object-fill!
      (lambda (_obj63075_ _fill63076_)
        (let _loop63078_ ((_i63080_
                           (let ((__tmp64117
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63075_))))
                             (declare (not safe))
                             (##fx- __tmp64117 '1))))
          (if (let () (declare (not safe)) (##fx> _i63080_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63075_
                   _fill63076_
                   _i63080_
                   '#f
                   '#f))
                (let ((__tmp64116
                       (let () (declare (not safe)) (##fx- _i63080_ '1))))
                  (declare (not safe))
                  (_loop63078_ __tmp64116)))
              _obj63075_))))
    (define new-instance
      (lambda (_klass63073_)
        (let ((__obj64021
               (let ((__tmp64118
                      (let ((__tmp64119
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63073_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64119))))
                 (declare (not safe))
                 (##make-structure _klass63073_ __tmp64118))))
          (let () (declare (not safe)) (object-fill! __obj64021 '#f))
          __obj64021)))
    (define make-instance
      (lambda (_klass63063_ . _args63064_)
        (let* ((_obj63066_
                (let () (declare (not safe)) (new-instance _klass63063_)))
               (_$e63068_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63063_ '10 class::t '#f))))
          (if _$e63068_
              ((lambda (_kons-id63071_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63063_
                    _kons-id63071_
                    _obj63066_
                    _args63064_)))
               _$e63068_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63063_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63063_
                     _obj63066_
                     _args63064_))
                  (if (let ((__tmp64124
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63063_))))
                        (declare (not safe))
                        (not __tmp64124))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63063_
                         _obj63066_
                         _args63064_))
                      (if (let ((__tmp64122
                                 (let ((__tmp64123
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63066_))))
                                   (declare (not safe))
                                   (##fx- __tmp64123 '1)))
                                (__tmp64121 (length _args63064_)))
                            (declare (not safe))
                            (##fx= __tmp64122 __tmp64121))
                          (apply ##structure _klass63063_ _args63064_)
                          (let ((__tmp64120
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63063_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63063_
                                   'slots:
                                   __tmp64120
                                   'args:
                                   _args63064_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63060_ . _args63061_)
        (if (let ((__tmp64126 (length _args63061_))
                  (__tmp64125
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63060_))))
              (declare (not safe))
              (##fx< __tmp64126 __tmp64125))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63060_ _args63061_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63060_
                     'args:
                     _args63061_)))))
    (define __struct-instance-init!
      (lambda (_obj63019_ _args63020_)
        (let _lp63022_ ((_k63024_ '1) (_rest63025_ _args63020_))
          (let* ((_rest6302663034_ _rest63025_)
                 (_else6302863042_ (lambda () _obj63019_))
                 (_K6303063048_
                  (lambda (_rest63045_ _hd63046_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63019_ _k63024_ _hd63046_))
                    (let ((__tmp64127
                           (let () (declare (not safe)) (##fx+ _k63024_ '1))))
                      (declare (not safe))
                      (_lp63022_ __tmp64127 _rest63045_)))))
            (if (let () (declare (not safe)) (##pair? _rest6302663034_))
                (let ((_hd6303163051_
                       (let () (declare (not safe)) (##car _rest6302663034_)))
                      (_tl6303263053_
                       (let () (declare (not safe)) (##cdr _rest6302663034_))))
                  (let* ((_hd63056_ _hd6303163051_)
                         (_rest63058_ _tl6303263053_))
                    (declare (not safe))
                    (_K6303063048_ _rest63058_ _hd63056_)))
                (let () (declare (not safe)) (_else6302863042_)))))))
    (define class-instance-init!
      (lambda (_obj63016_ . _args63017_)
        (let ((__tmp64128 (object-type _obj63016_)))
          (declare (not safe))
          (__class-instance-init! __tmp64128 _obj63016_ _args63017_))))
    (define __class-instance-init!
      (lambda (_klass62960_ _obj62961_ _args62962_)
        (let _lp62964_ ((_rest62966_ _args62962_))
          (let* ((_rest6296762977_ _rest62966_)
                 (_else6296962985_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest62966_))
                        _obj62961_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass62960_
                                 'rest:
                                 _rest62966_)))))
                 (_K6297162997_
                  (lambda (_rest62988_ _val62989_ _key62990_)
                    (let ((_$e62992_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass62960_ _key62990_))))
                      (if _$e62992_
                          ((lambda (_off62995_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj62961_
                                _off62995_
                                _val62989_))
                             (let ()
                               (declare (not safe))
                               (_lp62964_ _rest62988_)))
                           _$e62992_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass62960_
                                   'slot:
                                   _key62990_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6296762977_))
                (let ((_hd6297263000_
                       (let () (declare (not safe)) (##car _rest6296762977_)))
                      (_tl6297363002_
                       (let () (declare (not safe)) (##cdr _rest6296762977_))))
                  (let ((_key63005_ _hd6297263000_))
                    (if (let () (declare (not safe)) (##pair? _tl6297363002_))
                        (let ((_hd6297463007_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6297363002_)))
                              (_tl6297563009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6297363002_))))
                          (let* ((_val63012_ _hd6297463007_)
                                 (_rest63014_ _tl6297563009_))
                            (declare (not safe))
                            (_K6297162997_ _rest63014_ _val63012_ _key63005_)))
                        (let () (declare (not safe)) (_else6296962985_)))))
                (let () (declare (not safe)) (_else6296962985_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass62956_ _obj62957_ _args62958_)
        (apply call-method
               _klass62956_
               'instance-init!
               _obj62957_
               _args62958_)))
    (define constructor-init!
      (lambda (_klass62951_ _kons-id62952_ _obj62953_ . _args62954_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass62951_
           _kons-id62952_
           _obj62953_
           _args62954_))))
    (define __constructor-init!
      (lambda (_klass62941_ _kons-id62942_ _obj62943_ _args62944_)
        (let ((_$e62946_
               (let ()
                 (declare (not safe))
                 (__find-method _klass62941_ _obj62943_ _kons-id62942_))))
          (if _$e62946_
              ((lambda (_kons62949_)
                 (apply _kons62949_ _obj62943_ _args62944_)
                 _obj62943_)
               _$e62946_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass62941_
                       'method:
                       _kons-id62942_))))))
    (define struct-copy
      (lambda (_struct62939_)
        (if (let () (declare (not safe)) (##structure? _struct62939_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct62939_)))
        (let () (declare (not safe)) (##structure-copy _struct62939_))))
    (define struct->list
      (lambda (_obj62937_)
        (if (object? _obj62937_)
            (let () (declare (not safe)) (##vector->list _obj62937_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62937_)))))
    (define class->list
      (lambda (_obj62924_)
        (if (object? _obj62924_)
            (let ((_klass62926_ (object-type _obj62924_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass62926_ 'gerbil#class::t))
                  (let ((_slot-vector62928_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass62926_
                            '7
                            class::t
                            '#f))))
                    (let _loop62930_ ((_index62932_
                                       (let ((__tmp64134
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector62928_))))
                                         (declare (not safe))
                                         (##fx- __tmp64134 '1)))
                                      (_plist62933_ '()))
                      (if (let () (declare (not safe)) (##fx< _index62932_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass62926_ _plist62933_))
                          (let ((_slot62935_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector62928_
                                    _index62932_))))
                            (let ((__tmp64133
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index62932_ '1)))
                                  (__tmp64129
                                   (let ((__tmp64132
                                          (symbol->keyword _slot62935_))
                                         (__tmp64130
                                          (let ((__tmp64131
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj62924_
                                                    _index62932_))))
                                            (declare (not safe))
                                            (cons __tmp64131 _plist62933_))))
                                     (declare (not safe))
                                     (cons __tmp64132 __tmp64130))))
                              (declare (not safe))
                              (_loop62930_ __tmp64133 __tmp64129))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj62924_
                           'class:
                           _klass62926_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62924_)))))
    (define call-method
      (lambda (_obj62915_ _id62916_ . _args62917_)
        (let ((_$e62919_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62915_ _id62916_))))
          (if _$e62919_
              ((lambda (_method62922_)
                 (apply _method62922_ _obj62915_ _args62917_))
               _$e62919_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj62915_
                       'method:
                       _id62916_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj62912_ _id62913_)
        (if (object? _obj62912_)
            (let ((__tmp64135 (object-type _obj62912_)))
              (declare (not safe))
              (find-method __tmp64135 _obj62912_ _id62913_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj62906_ _id62907_)
        (let ((_$e62909_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62906_ _id62907_))))
          (if _$e62909_
              _$e62909_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj62906_
                       'method:
                       _id62907_))))))
    (define bound-method-ref
      (lambda (_obj62896_ _id62897_)
        (let ((_$e62899_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62896_ _id62897_))))
          (if _$e62899_
              ((lambda (_method62902_)
                 (lambda _args62904_
                   (apply _method62902_ _obj62896_ _args62904_)))
               _$e62899_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj62889_ _id62890_)
        (let ((_method62892_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj62889_ _id62890_))))
          (lambda _args62894_ (apply _method62892_ _obj62889_ _args62894_)))))
    (define find-method
      (lambda (_klass62885_ _obj62886_ _id62887_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62885_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62885_ _obj62886_ _id62887_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass62885_ _obj62886_ _id62887_)))))
    (define __find-method
      (lambda (_klass62878_ _obj62879_ _id62880_)
        (let ((_$e62882_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass62878_ _obj62879_ _id62880_))))
          (if _$e62882_
              _$e62882_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62878_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass62878_ _obj62879_ _id62880_)))))))
    (define class-find-method
      (lambda (_klass62874_ _obj62875_ _id62876_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62874_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62874_ _obj62875_ _id62876_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins62866_ _obj62867_ _id62868_)
        (let ((__tmp64136
               (lambda (_g6286962871_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6286962871_ _obj62867_ _id62868_)))))
          (declare (not safe))
          (ormap1 __tmp64136 _mixins62866_))))
    (define builtin-find-method
      (lambda (_klass62859_ _obj62860_ _id62861_)
        (if (let () (declare (not safe)) (##type? _klass62859_))
            (let ((_$e62863_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass62859_ _obj62860_ _id62861_))))
              (if _$e62863_
                  _$e62863_
                  (let ((__tmp64137
                         (let ()
                           (declare (not safe))
                           (##type-super _klass62859_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64137 _obj62860_ _id62861_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass62836_ _obj62837_ _id62838_)
        (letrec ((_metaclass-resolve-method62840_
                  (lambda ()
                    (let ((__method64022
                           (let ()
                             (declare (not safe))
                             (method-ref _klass62836_ 'direct-method-ref))))
                      (if __method64022
                          (__method64022 _klass62836_ _obj62837_ _id62838_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62836_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!62841_
                  (lambda ()
                    (let ((_method62856_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method62840_))))
                      (let ((__tmp64139
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62836_
                                '11
                                class::t
                                '#f)))
                            (__tmp64138 (if _method62856_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64139 _id62838_ __tmp64138))
                      _method62856_))))
          (let ((_$e62843_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass62836_ '11 class::t '#f))))
            (if _$e62843_
                ((lambda (_ht62846_)
                   (let ((_method62848_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht62846_ _id62838_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method62848_))
                         _method62848_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass62836_))
                             (let ((_$e62850_ _method62848_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e62850_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method62840_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e62850_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!62841_)))))
                             '#f))))
                 _$e62843_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass62836_))
                    (let ((_tab62853_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62836_
                         _tab62853_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!62841_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass62832_ _obj62833_ _id62834_)
        (let ((__tmp64140 (##structure-ref _klass62832_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64140 _obj62833_ _id62834_))))
    (define builtin-method-ref
      (lambda (_klass62823_ _obj62824_ _id62825_)
        (let ((_$e62827_
               (let ((__tmp64141
                      (let () (declare (not safe)) (##type-id _klass62823_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64141 '#f))))
          (if _$e62827_
              ((lambda (_mtab62830_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab62830_ _id62825_ '#f)))
               _$e62827_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62789_ _id62790_ _proc62791_ _rebind?62792_)
        (letrec ((_bind!62794_
                  (lambda (_ht62807_)
                    (if (and (let () (declare (not safe)) (not _rebind?62792_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht62807_ _id62790_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62789_
                                 'method:
                                 _id62790_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht62807_
                           _id62790_
                           _proc62791_))))))
          (if (let () (declare (not safe)) (procedure? _proc62791_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62791_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62789_ 'gerbil#class::t))
              (let ((_ht62796_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62789_
                        '11
                        class::t
                        '#f))))
                (if _ht62796_
                    (let () (declare (not safe)) (_bind!62794_ _ht62796_))
                    (let ((_ht62798_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62789_
                         _ht62798_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!62794_ _ht62798_)))))
              (if (let () (declare (not safe)) (##type? _klass62789_))
                  (let ((_ht62805_
                         (let ((_$e62800_
                                (let ((__tmp64142
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62789_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64142
                                   '#f))))
                           (if _$e62800_
                               _$e62800_
                               (let ((_ht62803_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64143
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62789_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64143
                                    _ht62803_))
                                 _ht62803_)))))
                    (declare (not safe))
                    (_bind!62794_ _ht62805_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62789_)))))))
    (define bind-method!__0
      (lambda (_klass62812_ _id62813_ _proc62814_)
        (let ((_rebind?62816_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass62812_
           _id62813_
           _proc62814_
           _rebind?62816_))))
    (define bind-method!
      (lambda _g64145_
        (let ((_g64144_ (let () (declare (not safe)) (##length _g64145_))))
          (cond ((let () (declare (not safe)) (##fx= _g64144_ 3))
                 (apply (lambda (_klass62812_ _id62813_ _proc62814_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass62812_
                             _id62813_
                             _proc62814_)))
                        _g64145_))
                ((let () (declare (not safe)) (##fx= _g64144_ 4))
                 (apply (lambda (_klass62818_
                                 _id62819_
                                 _proc62820_
                                 _rebind?62821_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass62818_
                             _id62819_
                             _proc62820_
                             _rebind?62821_)))
                        _g64145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64145_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc62779_ _specializer62780_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62784_ ()
            (if (let ((__tmp64146
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64146 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62784_))))))
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _method-proc62779_
           _specializer62780_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc62769_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62773_ ()
            (if (let ((__tmp64147
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64147 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62773_))))))
        (let ((_specializer62777_
               (let ()
                 (declare (not safe))
                 (eq-table-ref __method-specializers _proc62769_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer62777_)))
    (define __class-specializer-hash-key
      (lambda (_klass62767_)
        (let ((__tmp64148
               (let () (declare (not safe)) (##type-id _klass62767_))))
          (declare (not safe))
          (symbolic-hash __tmp64148))))
    (define make-class-specializer-table__%
      (lambda (_size-hint62748_ _seed62750_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint62748_
           __class-specializer-hash-key
           eq?
           _seed62750_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint62756_ '#f) (_seed62758_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62756_ _seed62758_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint62760_)
        (let ((_seed62762_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62760_ _seed62762_))))
    (define make-class-specializer-table
      (lambda _g64150_
        (let ((_g64149_ (let () (declare (not safe)) (##length _g64150_))))
          (cond ((let () (declare (not safe)) (##fx= _g64149_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64150_))
                ((let () (declare (not safe)) (##fx= _g64149_ 1))
                 (apply (lambda (_size-hint62760_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint62760_)))
                        _g64150_))
                ((let () (declare (not safe)) (##fx= _g64149_ 2))
                 (apply (lambda (_size-hint62764_ _seed62765_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint62764_
                             _seed62765_)))
                        _g64150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64150_))))))
    (define class-specializer-table-ref
      (lambda (_tab62705_ _key62706_ _default62707_)
        (let ((_table62709_
               (let () (declare (not safe)) (&raw-table-table _tab62705_)))
              (_seed62710_
               (let () (declare (not safe)) (&raw-table-seed _tab62705_))))
          (let* ((_h62712_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62706_))
                         _seed62710_))
                 (_size62715_ (vector-length _table62709_))
                 (_entries62718_ (fxquotient _size62715_ '2))
                 (_start62721_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62712_ _entries62718_)
                   '1)))
            (let _loop62725_ ((_probe62728_ _start62721_)
                              (_i62730_ '1)
                              (_deleted62732_ '#f))
              (let ((_k62735_ (vector-ref _table62709_ _probe62728_)))
                (if (let ((__tmp64157 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62735_ __tmp64157))
                    _default62707_
                    (if (let ((__tmp64156 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62735_ __tmp64156))
                        (let ((__tmp64155
                               (let ((_next-probe62738_
                                      (fx+ _start62721_
                                           _i62730_
                                           (fx* _i62730_ _i62730_))))
                                 (fxmodulo _next-probe62738_ _size62715_)))
                              (__tmp64154 (fx+ _i62730_ '1))
                              (__tmp64153
                               (let ((_$e62741_ _deleted62732_))
                                 (if _$e62741_ _$e62741_ _probe62728_))))
                          (declare (not safe))
                          (_loop62725_ __tmp64155 __tmp64154 __tmp64153))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62706_ _k62735_))
                            (vector-ref _table62709_ (fx+ _probe62728_ '1))
                            (let ((__tmp64152
                                   (let ((_next-probe62744_
                                          (fx+ _start62721_
                                               _i62730_
                                               (fx* _i62730_ _i62730_))))
                                     (fxmodulo _next-probe62744_ _size62715_)))
                                  (__tmp64151 (fx+ _i62730_ '1)))
                              (declare (not safe))
                              (_loop62725_
                               __tmp64152
                               __tmp64151
                               _deleted62732_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab62701_ _key62702_ _value62703_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62701_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62701_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62701_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab62701_
           _key62702_
           _value62703_))))
    (define __class-specializer-table-set!
      (lambda (_tab62656_ _key62657_ _value62658_)
        (let ((_table62661_
               (let () (declare (not safe)) (&raw-table-table _tab62656_)))
              (_seed62662_
               (let () (declare (not safe)) (&raw-table-seed _tab62656_))))
          (let* ((_h62664_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62657_))
                         _seed62662_))
                 (_size62667_ (vector-length _table62661_))
                 (_entries62670_ (fxquotient _size62667_ '2))
                 (_start62673_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62664_ _entries62670_)
                   '1)))
            (let _loop62677_ ((_probe62680_ _start62673_)
                              (_i62682_ '1)
                              (_deleted62684_ '#f))
              (let ((_k62687_ (vector-ref _table62661_ _probe62680_)))
                (if (let ((__tmp64167 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62687_ __tmp64167))
                    (if _deleted62684_
                        (begin
                          (vector-set! _table62661_ _deleted62684_ _key62657_)
                          (vector-set!
                           _table62661_
                           (fx+ _deleted62684_ '1)
                           _value62658_)
                          ((lambda ()
                             (let ((__tmp64166
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62656_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62656_
                                __tmp64166)))))
                        (begin
                          (vector-set! _table62661_ _probe62680_ _key62657_)
                          (vector-set!
                           _table62661_
                           (fx+ _probe62680_ '1)
                           _value62658_)
                          ((lambda ()
                             (let ((__tmp64164
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62656_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62656_ __tmp64164))
                             (let ((__tmp64165
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62656_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62656_
                                __tmp64165))))))
                    (if (let ((__tmp64163 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62687_ __tmp64163))
                        (let ((__tmp64162
                               (let ((_next-probe62692_
                                      (fx+ _start62673_
                                           _i62682_
                                           (fx* _i62682_ _i62682_))))
                                 (fxmodulo _next-probe62692_ _size62667_)))
                              (__tmp64161 (fx+ _i62682_ '1))
                              (__tmp64160
                               (let ((_$e62695_ _deleted62684_))
                                 (if _$e62695_ _$e62695_ _probe62680_))))
                          (declare (not safe))
                          (_loop62677_ __tmp64162 __tmp64161 __tmp64160))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62657_ _k62687_))
                            (begin
                              (vector-set!
                               _table62661_
                               _probe62680_
                               _key62657_)
                              (vector-set!
                               _table62661_
                               (fx+ _probe62680_ '1)
                               _value62658_))
                            (let ((__tmp64159
                                   (let ((_next-probe62698_
                                          (fx+ _start62673_
                                               _i62682_
                                               (fx* _i62682_ _i62682_))))
                                     (fxmodulo _next-probe62698_ _size62667_)))
                                  (__tmp64158 (fx+ _i62682_ '1)))
                              (declare (not safe))
                              (_loop62677_
                               __tmp64159
                               __tmp64158
                               _deleted62684_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab62651_
               _key62652_
               _class-specializer-table-update!62653_
               _default62654_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62651_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62651_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62651_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab62651_
           _key62652_
           _class-specializer-table-update!62653_
           _default62654_))))
    (define __class-specializer-table-update!
      (lambda (_tab62605_
               _key62606_
               _class-specializer-table-update!62607_
               _default62608_)
        (let ((_table62611_
               (let () (declare (not safe)) (&raw-table-table _tab62605_)))
              (_seed62612_
               (let () (declare (not safe)) (&raw-table-seed _tab62605_))))
          (let* ((_h62614_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62606_))
                         _seed62612_))
                 (_size62617_ (vector-length _table62611_))
                 (_entries62620_ (fxquotient _size62617_ '2))
                 (_start62623_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62614_ _entries62620_)
                   '1)))
            (let _loop62627_ ((_probe62630_ _start62623_)
                              (_i62632_ '1)
                              (_deleted62634_ '#f))
              (let ((_k62637_ (vector-ref _table62611_ _probe62630_)))
                (if (let ((__tmp64177 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62637_ __tmp64177))
                    (if _deleted62634_
                        (begin
                          (vector-set! _table62611_ _deleted62634_ _key62606_)
                          (vector-set!
                           _table62611_
                           (fx+ _deleted62634_ '1)
                           (_class-specializer-table-update!62607_
                            _default62608_))
                          ((lambda ()
                             (let ((__tmp64176
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62605_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62605_
                                __tmp64176)))))
                        (begin
                          (vector-set! _table62611_ _probe62630_ _key62606_)
                          (vector-set!
                           _table62611_
                           (fx+ _probe62630_ '1)
                           (_class-specializer-table-update!62607_
                            _default62608_))
                          ((lambda ()
                             (let ((__tmp64174
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62605_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62605_ __tmp64174))
                             (let ((__tmp64175
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62605_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62605_
                                __tmp64175))))))
                    (if (let ((__tmp64173 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62637_ __tmp64173))
                        (let ((__tmp64172
                               (let ((_next-probe62642_
                                      (fx+ _start62623_
                                           _i62632_
                                           (fx* _i62632_ _i62632_))))
                                 (fxmodulo _next-probe62642_ _size62617_)))
                              (__tmp64171 (fx+ _i62632_ '1))
                              (__tmp64170
                               (let ((_$e62645_ _deleted62634_))
                                 (if _$e62645_ _$e62645_ _probe62630_))))
                          (declare (not safe))
                          (_loop62627_ __tmp64172 __tmp64171 __tmp64170))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62606_ _k62637_))
                            (begin
                              (vector-set!
                               _table62611_
                               _probe62630_
                               _key62606_)
                              (vector-set!
                               _table62611_
                               (fx+ _probe62630_ '1)
                               (_class-specializer-table-update!62607_
                                (vector-ref
                                 _table62611_
                                 (fx+ _probe62630_ '1)))))
                            (let ((__tmp64169
                                   (let ((_next-probe62648_
                                          (fx+ _start62623_
                                               _i62632_
                                               (fx* _i62632_ _i62632_))))
                                     (fxmodulo _next-probe62648_ _size62617_)))
                                  (__tmp64168 (fx+ _i62632_ '1)))
                              (declare (not safe))
                              (_loop62627_
                               __tmp64169
                               __tmp64168
                               _deleted62634_)))))))))))
    (define class-specializer-trable-delete!
      (lambda (_tab62564_ _key62566_)
        (let ((_table62569_
               (let () (declare (not safe)) (&raw-table-table _tab62564_)))
              (_seed62571_
               (let () (declare (not safe)) (&raw-table-seed _tab62564_))))
          (let* ((_h62574_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62566_))
                         _seed62571_))
                 (_size62577_ (vector-length _table62569_))
                 (_entries62580_ (fxquotient _size62577_ '2))
                 (_start62583_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62574_ _entries62580_)
                   '1)))
            (let _loop62587_ ((_probe62590_ _start62583_) (_i62592_ '1))
              (let ((_k62595_ (vector-ref _table62569_ _probe62590_)))
                (if (let ((__tmp64184 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62595_ __tmp64184))
                    '#!void
                    (if (let ((__tmp64183 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62595_ __tmp64183))
                        (let ((__tmp64182
                               (let ((_next-probe62598_
                                      (fx+ _start62583_
                                           _i62592_
                                           (fx* _i62592_ _i62592_))))
                                 (fxmodulo _next-probe62598_ _size62577_)))
                              (__tmp64181 (fx+ _i62592_ '1)))
                          (declare (not safe))
                          (_loop62587_ __tmp64182 __tmp64181))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62566_ _k62595_))
                            (begin
                              (vector-set!
                               _table62569_
                               _probe62590_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62569_
                               (fx+ _probe62590_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64180
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62564_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62564_
                                    __tmp64180)))))
                            (let ((__tmp64179
                                   (let ((_next-probe62602_
                                          (fx+ _start62583_
                                               _i62592_
                                               (fx* _i62592_ _i62592_))))
                                     (fxmodulo _next-probe62602_ _size62577_)))
                                  (__tmp64178 (fx+ _i62592_ '1)))
                              (declare (not safe))
                              (_loop62587_ __tmp64179 __tmp64178)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62557_)
        (let ((_$e62559_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62557_))))
          (if _$e62559_
              _$e62559_
              (let ((_method-table62562_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62557_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62557_ _method-table62562_))
                _method-table62562_)))))
    (define __lookup-class-specializer
      (lambda (_klass62547_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62551_ ()
            (if (let ((__tmp64185
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64185 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62551_))))))
        (let ((_method-table62555_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62547_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62555_)))
    (define __bind-class-specializer!
      (lambda (_klass62538_ _method-table62539_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62543_ ()
            (if (let ((__tmp64186
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64186 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62543_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62538_
           _method-table62539_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62523_ _method-table62524_ _method62525_ _proc62526_)
        (let ((_$e62528_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62524_ _method62525_ '#f))))
          (if _$e62528_
              _$e62528_
              (let ((_$e62531_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62526_))))
                (if _$e62531_
                    ((lambda (_specialize62534_)
                       (let ((_specialized-proc62536_
                              (_specialize62534_
                               _klass62523_
                               _method-table62524_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62524_
                          _method62525_
                          _specialized-proc62536_)))
                     _$e62531_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62524_
                       _method62525_
                       _proc62526_))))))))
    (define __specialize-class
      (lambda (_klass62450_)
        (if (let ((__tmp64192
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62450_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64192))
            (if (let () (declare (not safe)) (##type? _klass62450_))
                (let ((_method-table62452_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62454_ ((_xklass62456_ _klass62450_))
                    (if _xklass62456_
                        (begin
                          (let ((_xmethod-table6245762459_
                                 (let ((__tmp64189
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62456_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64189
                                    '#f))))
                            (if _xmethod-table6245762459_
                                (let* ((_xmethod-table62462_
                                        _xmethod-table6245762459_)
                                       (__tmp64190
                                        (lambda (_g6246362466_ _g6246462468_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62450_
                                             _method-table62452_
                                             _g6246362466_
                                             _g6246462468_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62462_
                                   __tmp64190))
                                '#f))
                          (let ((__tmp64191
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62456_))))
                            (declare (not safe))
                            (_loop62454_ __tmp64191)))
                        '#!void))
                  _method-table62452_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62450_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62450_))
                (let ((__method64023
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62450_ 'specialize-class))))
                  (if __method64023
                      (__method64023 _klass62450_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62450_
                               'specialize-class))))
                (if (let ((__tmp64188
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62450_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64188))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62450_))
                    (let ((_method-table62471_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62473_ ((_rest62475_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62450_))))
                        (let* ((_rest6247662484_ _rest62475_)
                               (_else6247862492_
                                (lambda () _method-table62471_))
                               (_K6248062511_
                                (lambda (_rest62495_ _xklass62496_)
                                  (let ((_xmethod-table6249762499_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62496_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6249762499_
                                        (let* ((_xmethod-table62502_
                                                _xmethod-table6249762499_)
                                               (__tmp64187
                                                (lambda (_g6250362506_
                                                         _g6250462508_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62450_
                                                     _method-table62471_
                                                     _g6250362506_
                                                     _g6250462508_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62502_
                                           __tmp64187))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62473_ _rest62495_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6247662484_))
                              (let ((_hd6248162514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6247662484_)))
                                    (_tl6248262516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6247662484_))))
                                (let* ((_xklass62519_ _hd6248162514_)
                                       (_rest62521_ _tl6248262516_))
                                  (declare (not safe))
                                  (_K6248062511_ _rest62521_ _xklass62519_)))
                              (let ()
                                (declare (not safe))
                                (_else6247862492_)))))))))))
    (define seal-class!
      (lambda (_klass62446_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62446_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62446_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62446_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62446_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62446_))
                      (let ((__method64024
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62446_ 'seal-class!))))
                        (if __method64024
                            (__method64024 _klass62446_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62446_
                                     'seal-class!))))
                      (if (let ((__tmp64193
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62446_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64193))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62446_))
                          (let ((_method-table62448_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62446_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62446_
                             _method-table62448_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62446_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62395_ _obj62396_ _id62397_)
        (let ((_klass62399_ (object-type _obj62396_))
              (_type-id62400_
               (let () (declare (not safe)) (##type-id _subklass62395_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62399_ 'gerbil#class::t))
              (let _lp62402_ ((_rest62404_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62399_))))
                (let* ((_rest6240562413_ _rest62404_)
                       (_else6240762421_ (lambda () '#f))
                       (_K6240962427_
                        (lambda (_rest62424_ _klass62425_)
                          (if (let ((__tmp64196
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62425_))))
                                (declare (not safe))
                                (eq? _type-id62400_ __tmp64196))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62424_
                                 _obj62396_
                                 _id62397_))
                              (let ()
                                (declare (not safe))
                                (_lp62402_ _rest62424_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6240562413_))
                      (let ((_hd6241062430_
                             (let ()
                               (declare (not safe))
                               (##car _rest6240562413_)))
                            (_tl6241162432_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6240562413_))))
                        (let* ((_klass62435_ _hd6241062430_)
                               (_rest62437_ _tl6241162432_))
                          (declare (not safe))
                          (_K6240962427_ _rest62437_ _klass62435_)))
                      (let () (declare (not safe)) (_else6240762421_)))))
              (if (let () (declare (not safe)) (##type? _klass62399_))
                  (let _lp62439_ ((_klass62441_ _klass62399_))
                    (if (let ((__tmp64195
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62441_))))
                          (declare (not safe))
                          (eq? _type-id62400_ __tmp64195))
                        (let ((__tmp64194
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62441_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64194
                           _obj62396_
                           _id62397_))
                        (let ((_$e62443_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62441_))))
                          (if _$e62443_
                              (let ()
                                (declare (not safe))
                                (_lp62439_ _$e62443_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62385_ _obj62386_ _id62387_ . _args62388_)
        (let ((_$e62390_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62385_ _obj62386_ _id62387_))))
          (if _$e62390_
              ((lambda (_methodf62393_)
                 (apply _methodf62393_ _obj62386_ _args62388_))
               _$e62390_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62386_
                       'method:
                       _id62387_))))))
    (define write-style (lambda (_we62383_) (macro-writeenv-style _we62383_)))
    (define write-object
      (lambda (_we62375_ _obj62376_)
        (let ((_$e62378_
               (let () (declare (not safe)) (method-ref _obj62376_ ':wr))))
          (if _$e62378_
              ((lambda (_method62381_) (_method62381_ _obj62376_ _we62375_))
               _$e62378_)
              (let ()
                (declare (not safe))
                (##default-wr _we62375_ _obj62376_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
