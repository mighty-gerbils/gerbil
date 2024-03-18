(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710781148)
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
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags65728_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65729_ '((direct-slots:) (system: . #t)))
            (_slot-table65730_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           t::t.id
           't
           _flags65728_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table65730_
           _properties65729_
           '#f
           '#f))))
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots65704_
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
             (_slot-vector65706_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots65704_))))
             (_slot-table65713_
              (let ((_slot-table65708_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot65710_ _field65711_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65708_
                      _slot65710_
                      _field65711_))
                   (let ((__tmp65858 (symbol->keyword _slot65710_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65708_
                      __tmp65858
                      _field65711_)))
                 _slots65704_
                 (iota (length _slots65704_) '1))
                _slot-table65708_))
             (_flags65715_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields65721_
              (list->vector
               (apply append
                      (map (lambda (_g6571665718_) (list _g6571665718_ '5 '#f))
                           (drop _slots65704_ '5)))))
             (_properties65723_
              (let ((__tmp65861
                     (let ((__tmp65862
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots65704_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp65862)))
                    (__tmp65859
                     (let ((__tmp65860
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp65860 '()))))
                (declare (not safe))
                (cons __tmp65861 __tmp65859)))
             (_t65725_
              (let ((__tmp65863 (let () (declare (not safe)) (cons t::t '()))))
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags65715_
                 ##type-type
                 _fields65721_
                 __tmp65863
                 _slot-vector65706_
                 _slot-table65713_
                 _properties65723_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t65725_ _t65725_))
        _t65725_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t.id 'gerbil#object::t)
    (define object::t
      (let ((_flags65700_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65701_ '((direct-slots:) (system: . #t)))
            (_slot-table65702_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp65864 (let () (declare (not safe)) (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           'object
           _flags65700_
           '#f
           '#()
           __tmp65864
           '#(#f)
           _slot-table65702_
           _properties65701_
           '#f
           '#f))))
    (define class-type?
      (lambda (_obj65698_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj65698_ class::t.id))))
    (define class-type=?
      (lambda (_x65695_ _y65696_)
        (let ((__tmp65866 (##structure-ref _x65695_ '1 class::t '#f))
              (__tmp65865 (##structure-ref _y65696_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp65866 __tmp65865))))
    (define type-opaque?
      (lambda (_type65693_)
        (let ((__tmp65867
               (let ((__tmp65868
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65693_))))
                 (declare (not safe))
                 (##fxand __tmp65868 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp65867 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type65691_)
        (let ((__tmp65869
               (let ((__tmp65870
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65691_))))
                 (declare (not safe))
                 (##fxand __tmp65870 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65869 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type65689_)
        (let ((__tmp65871
               (let ((__tmp65872
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65689_))))
                 (declare (not safe))
                 (##fxand __tmp65872 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65871 '0))))
    (define class-type-struct?
      (lambda (_klass65687_)
        (let ((__tmp65873
               (let ((__tmp65874
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65687_))))
                 (declare (not safe))
                 (##fxand __tmp65874 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp65873 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass65685_)
        (let ((__tmp65875
               (let ((__tmp65876
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65685_))))
                 (declare (not safe))
                 (##fxand __tmp65876 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp65875 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass65683_)
        (let ((__tmp65877
               (let ((__tmp65878
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65683_))))
                 (declare (not safe))
                 (##fxand __tmp65878 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp65877 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass65681_)
        (let ((__tmp65879
               (let ((__tmp65880
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65681_))))
                 (declare (not safe))
                 (##fxand __tmp65880 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp65879 class-type-flag-system))))
    (define properties-form
      (lambda (_properties65647_)
        (map (lambda (_e6564865650_)
               (let* ((_g6565265659_ _e6564865650_)
                      (_E6565465663_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6565265659_))))
                      (_K6565565669_
                       (lambda (_val65666_ _key65667_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key65667_ 'direct-supers:))
                             (let ((__tmp65881 (map class-type-id _val65666_)))
                               (declare (not safe))
                               (cons _key65667_ __tmp65881))
                             (let ()
                               (declare (not safe))
                               (cons _key65667_ _val65666_))))))
                 (if (let () (declare (not safe)) (##pair? _g6565265659_))
                     (let ((_hd6565665672_
                            (let ()
                              (declare (not safe))
                              (##car _g6565265659_)))
                           (_tl6565765674_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6565265659_))))
                       (let* ((_key65677_ _hd6565665672_)
                              (_val65679_ _tl6565765674_))
                         (declare (not safe))
                         (_K6565565669_ _val65679_ _key65677_)))
                     (let () (declare (not safe)) (_E6565465663_)))))
             _properties65647_)))
    (define make-class-type-descriptor
      (lambda (_type-id65537_
               _type-name65538_
               _type-super65539_
               _precedence-list65540_
               _slot-vector65541_
               _properties65542_
               _constructor65543_
               _slot-table65544_
               _methods65545_)
        (letrec ((_make-props!65547_
                  (lambda (_key65616_)
                    (letrec* ((_ht65618_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!65619_
                               (lambda (_ht65640_ _slots65641_)
                                 (for-each
                                  (lambda (_g6564265644_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht65640_
                                       _g6564265644_
                                       '#t)))
                                  _slots65641_)))
                              (_put-alist!65620_
                               (lambda (_ht65629_ _key65630_ _alist65631_)
                                 (let ((_$e65633_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key65630_
                                           _alist65631_))))
                                   (if _$e65633_
                                       ((lambda (_g6563565637_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!65619_
                                             _ht65629_
                                             _g6563565637_)))
                                        _$e65633_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!65620_
                         _ht65618_
                         _key65616_
                         _properties65542_))
                      (for-each
                       (lambda (_mixin65622_)
                         (let ((_alist65624_
                                (##structure-ref
                                 _mixin65622_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist65624_))
                                   (let ((__tmp65883
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key65616_
                                             _alist65624_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp65883)))
                               (let ((__tmp65882
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin65622_))))
                                 (declare (not safe))
                                 (_put-slots!65619_ _ht65618_ __tmp65882))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!65620_
                                  _ht65618_
                                  _key65616_
                                  _alist65624_)))))
                       _precedence-list65540_)
                      _ht65618_))))
          (let* ((_transparent?65549_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties65542_)))
                 (_all-slots-printable?65554_
                  (let ((_$e65551_ _transparent?65549_))
                    (if _$e65551_
                        _$e65551_
                        (let ((__tmp65884
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties65542_))))
                          (declare (not safe))
                          (eq? '#t __tmp65884)))))
                 (_printable65556_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?65554_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65547_ 'print:))
                      '#f))
                 (_all-slots-equalable?65561_
                  (let ((_$e65558_ _transparent?65549_))
                    (if _$e65558_
                        _$e65558_
                        (let ((__tmp65885
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties65542_))))
                          (declare (not safe))
                          (eq? '#t __tmp65885)))))
                 (_equalable65563_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?65561_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65547_ 'equal:))
                      '#f))
                 (_first-new-field65565_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super65539_
                         'gerbil#class::t))
                      (let ((__tmp65886
                             (##structure-ref
                              _type-super65539_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp65886))
                      '1))
                 (_field-info-length65567_
                  (let ((__tmp65887
                         (let ((__tmp65888
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector65541_))))
                           (declare (not safe))
                           (##fx- __tmp65888 _first-new-field65565_))))
                    (declare (not safe))
                    (##fx* '3 __tmp65887)))
                 (_field-info65569_ (make-vector _field-info-length65567_ '#f))
                 (_struct?65571_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties65542_)))
                 (_final?65573_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties65542_)))
                 (_metaclass65581_
                  (let ((_metaclass6557465576_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties65542_))))
                    (if _metaclass6557465576_
                        (let ((_metaclass65579_ _metaclass6557465576_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass65579_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id65537_
                                       'metaclass:
                                       _metaclass65579_)))
                          _metaclass65579_)
                        '#f)))
                 (_system?65583_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties65542_)))
                 (_opaque?65588_
                  (let ((_$e65585_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?65561_))))
                    (if _$e65585_
                        _$e65585_
                        (if _type-super65539_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super65539_))
                            '#f))))
                 (_type-flags65590_
                  (let ((__tmp65893 (if _final?65573_ '0 type-flag-extensible))
                        (__tmp65892 (if _opaque?65588_ type-flag-opaque '0))
                        (__tmp65891
                         (if _struct?65571_ class-type-flag-struct '0))
                        (__tmp65890
                         (if _metaclass65581_ class-type-flag-metaclass '0))
                        (__tmp65889
                         (if _system?65583_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp65893
                             __tmp65892
                             __tmp65891
                             __tmp65890
                             __tmp65889)))
                 (_precedence-list65597_
                  (let ((_$e65592_ (memq t::t _precedence-list65540_)))
                    (if _$e65592_
                        ((lambda (_tail65595_)
                           (if (let ((__tmp65894 (cdr _tail65595_)))
                                 (declare (not safe))
                                 (null? __tmp65894))
                               _precedence-list65540_
                               (let ()
                                 (declare (not safe))
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _precedence-list65540_))))
                         _$e65592_)
                        (append _precedence-list65540_
                                (let ()
                                  (declare (not safe))
                                  (cons t::t '())))))))
            (let _loop65600_ ((_i65602_ _first-new-field65565_) (_j65603_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j65603_ _field-info-length65567_))
                  (let* ((_slot65605_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector65541_ _i65602_)))
                         (_flags65613_
                          (if _transparent?65549_
                              '0
                              (let ((__tmp65896
                                     (if (or _all-slots-printable?65554_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable65556_
                                                _slot65605_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp65895
                                     (if (or _all-slots-equalable?65561_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable65563_
                                                _slot65605_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp65896 __tmp65895)))))
                    (vector-set! _field-info65569_ _j65603_ _slot65605_)
                    (vector-set!
                     _field-info65569_
                     (let () (declare (not safe)) (##fx+ _j65603_ '1))
                     _flags65613_)
                    (let ((__tmp65898
                           (let () (declare (not safe)) (##fx+ _i65602_ '1)))
                          (__tmp65897
                           (let () (declare (not safe)) (##fx+ _j65603_ '3))))
                      (declare (not safe))
                      (_loop65600_ __tmp65898 __tmp65897)))
                  '#!void))
            (if _metaclass65581_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass65581_
                   _type-id65537_
                   _type-name65538_
                   _type-flags65590_
                   _type-super65539_
                   _field-info65569_
                   _precedence-list65597_
                   _slot-vector65541_
                   _slot-table65544_
                   _properties65542_
                   _constructor65543_
                   _methods65545_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id65537_
                   _type-name65538_
                   _type-flags65590_
                   _type-super65539_
                   _field-info65569_
                   _precedence-list65597_
                   _slot-vector65541_
                   _slot-table65544_
                   _properties65542_
                   _constructor65543_
                   _methods65545_)))))))
    (define class-type-id
      (lambda (_klass65535_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65535_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass65533_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65533_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass65530_ _val65531_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65530_ _val65531_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass65525_ _val65527_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65525_
           _val65527_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass65523_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65523_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass65521_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65521_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass65518_ _val65519_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65518_ _val65519_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass65513_ _val65515_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65513_
           _val65515_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass65511_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65511_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass65509_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65509_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass65506_ _val65507_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65506_ _val65507_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass65501_ _val65503_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65501_
           _val65503_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass65499_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65499_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass65497_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65497_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass65494_ _val65495_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65494_ _val65495_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass65489_ _val65491_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65489_
           _val65491_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass65487_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65487_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass65485_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65485_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass65482_ _val65483_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65482_ _val65483_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass65477_ _val65479_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65477_
           _val65479_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass65475_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65475_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass65473_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass65473_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass65470_ _val65471_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65470_
           _val65471_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass65465_ _val65467_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65465_
           _val65467_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass65463_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65463_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass65461_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65461_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass65458_ _val65459_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65458_
           _val65459_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass65453_ _val65455_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65453_
           _val65455_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass65451_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65451_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass65449_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65449_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass65446_ _val65447_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65446_ _val65447_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass65441_ _val65443_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65441_
           _val65443_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass65439_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65439_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass65437_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65437_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass65434_ _val65435_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65434_ _val65435_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass65429_ _val65431_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65429_
           _val65431_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass65427_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65427_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass65425_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65425_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass65422_ _val65423_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65422_
           _val65423_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass65417_ _val65419_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65417_
           _val65419_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass65415_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65415_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass65413_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65413_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass65410_ _val65411_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65410_ _val65411_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass65405_ _val65407_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65405_
           _val65407_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass65403_)
        (cdr (vector->list (##structure-ref _klass65403_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass65401_)
        (let ((__tmp65899
               (let ((__tmp65900
                      (##structure-ref _klass65401_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp65900))))
          (declare (not safe))
          (##fx- __tmp65899 '1))))
    (define class-type-seal!
      (lambda (_klass65399_)
        (let ((__tmp65901
               (let ((__tmp65902
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65399_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65902))))
          (declare (not safe))
          (##structure-set!
           _klass65399_
           __tmp65901
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass65397_)
        (let ((__tmp65903
               (let ((__tmp65904
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65397_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65904))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65397_
           __tmp65903
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct65388_ _maybe-super-struct65389_)
        (let ((_maybe-super-struct-id65391_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct65389_))))
          (let _lp65393_ ((_super-struct65395_ _maybe-sub-struct65388_))
            (if (let () (declare (not safe)) (not _super-struct65395_))
                '#f
                (if (let ((__tmp65906
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct65395_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id65391_ __tmp65906))
                    '#t
                    (let ((__tmp65905
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct65395_))))
                      (declare (not safe))
                      (_lp65393_ __tmp65905))))))))
    (define base-struct/1
      (lambda (_klass65386_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass65386_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass65386_))
                _klass65386_
                (let () (declare (not safe)) (##type-super _klass65386_)))
            (if (let () (declare (not safe)) (not _klass65386_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass65386_))))))
    (define base-struct/2
      (lambda (_klass165374_ _klass265375_)
        (let ((_s165377_
               (let () (declare (not safe)) (base-struct/1 _klass165374_)))
              (_s265378_
               (let () (declare (not safe)) (base-struct/1 _klass265375_))))
          (if (or (let () (declare (not safe)) (not _s165377_))
                  (and _s265378_
                       (let ()
                         (declare (not safe))
                         (substruct? _s165377_ _s265378_))))
              _s265378_
              (if (or (let () (declare (not safe)) (not _s265378_))
                      (and _s165377_
                           (let ()
                             (declare (not safe))
                             (substruct? _s265378_ _s165377_))))
                  _s165377_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass165374_
                           _klass265375_
                           _s165377_
                           _s265378_)))))))
    (define base-struct/list
      (lambda (_all-supers65258_)
        (let* ((_all-supers6525965284_ _all-supers65258_)
               (_E6526465288_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6525965284_)))))
          (let ((_K6528265371_ (lambda () '#f))
                (_K6527965357_
                 (lambda (_x65355_)
                   (let () (declare (not safe)) (base-struct/1 _x65355_))))
                (_K6527465334_
                 (lambda (_y65331_ _x65332_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x65332_ _y65331_))))
                (_K6526565295_
                 (lambda (_y65292_ _x65293_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x65293_ _y65292_)))))
            (let* ((___match6585265853_
                    (lambda (_hd6526665298_ _tl6526765300_)
                      (let ((_x65303_ _hd6526665298_))
                        (letrec ((_splice-rest6526965305_
                                  (lambda (_rest6527365312_ _y65314_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6527365312_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6526565295_ _y65314_ _x65303_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6526465288_)))))
                                 (_splice-try6527165307_
                                  (lambda (_hd6527265316_
                                           _rest6527365318_
                                           _y6526865319_)
                                    (let ((_y65322_ _hd6527265316_))
                                      (let ((__tmp65908
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6527365318_)))
                                            (__tmp65907
                                             (let ()
                                               (declare (not safe))
                                               (cons _y65322_ _y6526865319_))))
                                        (declare (not safe))
                                        (_splice-loop6527065309_
                                         __tmp65908
                                         __tmp65907)))))
                                 (_splice-loop6527065309_
                                  (lambda (_rest6527365324_ _y6526865325_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6527365324_))
                                        (let ((__tmp65910
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6527365324_))))
                                          (declare (not safe))
                                          (_splice-try6527165307_
                                           __tmp65910
                                           _rest6527365324_
                                           _y6526865325_))
                                        (let ((__tmp65909
                                               (reverse _y6526865325_)))
                                          (declare (not safe))
                                          (_splice-rest6526965305_
                                           _rest6527365324_
                                           __tmp65909))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6527065309_ _tl6526765300_ '()))))))
                   (_try-match6526165367_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6525965284_))
                          (let ((_tl6528165362_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6525965284_)))
                                (_hd6528065360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6525965284_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6528165362_))
                                (let ((_x65365_ _hd6528065360_))
                                  (declare (not safe))
                                  (base-struct/1 _x65365_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6528165362_))
                                    (let ((_tl6527865346_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6528165362_)))
                                          (_hd6527765344_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6528165362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6527865346_))
                                          (let ((_x65342_ _hd6528065360_)
                                                (_y65349_ _hd6527765344_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6527465334_
                                               _y65349_
                                               _x65342_)))
                                          (___match6585265853_
                                           _hd6528065360_
                                           _tl6528165362_)))
                                    (___match6585265853_
                                     _hd6528065360_
                                     _tl6528165362_))))
                          (let () (declare (not safe)) (_E6526465288_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6525965284_))
                  (let () (declare (not safe)) (_K6528265371_))
                  (let () (declare (not safe)) (_try-match6526165367_))))))))
    (define base-struct
      (lambda _all-supers65256_
        (let () (declare (not safe)) (base-struct/list _all-supers65256_))))
    (define find-super-constructor
      (lambda (_super65208_)
        (let _lp65210_ ((_rest65212_ _super65208_) (_constructor65213_ '#f))
          (let* ((_rest6521465222_ _rest65212_)
                 (_else6521665230_ (lambda () _constructor65213_))
                 (_K6521865244_
                  (lambda (_rest65233_ _hd65234_)
                    (let ((_$e65236_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd65234_
                              '10
                              class::t
                              '#f))))
                      (if _$e65236_
                          ((lambda (_xconstructor65239_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor65213_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor65213_
                                            _xconstructor65239_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp65210_ _rest65233_ _xconstructor65239_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor65213_
                                          _xconstructor65239_))))
                           _$e65236_)
                          (let ()
                            (declare (not safe))
                            (_lp65210_ _rest65233_ _constructor65213_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6521465222_))
                (let ((_hd6521965247_
                       (let () (declare (not safe)) (##car _rest6521465222_)))
                      (_tl6522065249_
                       (let () (declare (not safe)) (##cdr _rest6521465222_))))
                  (let* ((_hd65252_ _hd6521965247_)
                         (_rest65254_ _tl6522065249_))
                    (declare (not safe))
                    (_K6521865244_ _rest65254_ _hd65252_)))
                (let () (declare (not safe)) (_else6521665230_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list65184_ _direct-slots65185_)
        (let* ((_next-slot65187_ '1)
               (_slot-table65189_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots65191_ '(__class))
               (_process-slot65195_
                (lambda (_slot65193_)
                  (if (let () (declare (not safe)) (symbol? _slot65193_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot65193_)))
                  (if (let ((__tmp65912
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table65189_
                                _slot65193_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp65912 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65189_
                           _slot65193_
                           _next-slot65187_))
                        (let ((__tmp65911 (symbol->keyword _slot65193_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65189_
                           __tmp65911
                           _next-slot65187_))
                        (set! _r-slots65191_
                              (let ()
                                (declare (not safe))
                                (cons _slot65193_ _r-slots65191_)))
                        (set! _next-slot65187_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot65187_ '1))))
                      '#!void)))
               (_process-slots65201_
                (lambda (_g6519665198_)
                  (for-each _process-slot65195_ _g6519665198_))))
          (for-each
           (lambda (_mixin65204_)
             (let ((__tmp65913
                    (let ((__tmp65914
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin65204_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp65914 '()))))
               (declare (not safe))
               (_process-slots65201_ __tmp65913)))
           (reverse _class-precedence-list65184_))
          (let ()
            (declare (not safe))
            (_process-slots65201_ _direct-slots65185_))
          (let ((_slot-vector65206_ (list->vector (reverse _r-slots65191_))))
            (values _slot-vector65206_ _slot-table65189_)))))
    (define make-class-type
      (lambda (_id65103_
               _name65104_
               _direct-supers65105_
               _direct-slots65106_
               _properties65107_
               _constructor65108_)
        (let ((_$e65113_
               (let ((__tmp65915
                      (lambda (_$obj65110_)
                        (let ((__tmp65916
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj65110_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp65916)))))
                 (declare (not safe))
                 (find __tmp65915 _direct-supers65105_))))
          (if _$e65113_
              ((lambda (_g6511565117_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6511565117_)))
               _$e65113_)
              (let ((_$e65120_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers65105_))))
                (if _$e65120_
                    ((lambda (_g6512265124_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6512265124_)))
                     _$e65120_)
                    '#!void))))
        (let ((_g65917_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers65105_))))
          (begin
            (let ((_g65918_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g65917_) (##vector-length _g65917_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g65918_ 2)))
                  (error "Context expects 2 values" _g65918_)))
            (let ((_precedence-list65127_
                   (let () (declare (not safe)) (##vector-ref _g65917_ 0)))
                  (_struct-super65128_
                   (let () (declare (not safe)) (##vector-ref _g65917_ 1))))
              (let ((_g65919_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list65127_
                        _direct-slots65106_))))
                (begin
                  (let ((_g65920_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g65919_)
                               (##vector-length _g65919_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g65920_ 2)))
                        (error "Context expects 2 values" _g65920_)))
                  (let ((_slot-vector65130_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65919_ 0)))
                        (_slot-table65131_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65919_ 1))))
                    (let* ((_properties65133_
                            (let ((__tmp65923
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots65106_)))
                                  (__tmp65921
                                   (let ((__tmp65922
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers65105_))))
                                     (declare (not safe))
                                     (cons __tmp65922 _properties65107_))))
                              (declare (not safe))
                              (cons __tmp65923 __tmp65921)))
                           (_constructor*65138_
                            (let ((_$e65135_ _constructor65108_))
                              (if _$e65135_
                                  _$e65135_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers65105_)))))
                           (_precedence-list65181_
                            (if (or (let ()
                                      (declare (not safe))
                                      (assgetq__0 'system: _properties65133_))
                                    (memq object::t _precedence-list65127_))
                                _precedence-list65127_
                                (let _loop65143_ ((_tail65145_
                                                   _precedence-list65127_)
                                                  (_head65146_ '()))
                                  (let* ((_tail6514765155_ _tail65145_)
                                         (_else6514965163_
                                          (lambda ()
                                            (let ((__tmp65924
                                                   (let ((__tmp65925
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons t::t '()))))
                                                     (declare (not safe))
                                                     (cons object::t
                                                           __tmp65925))))
                                              (declare (not safe))
                                              (foldl1 cons
                                                      __tmp65924
                                                      _head65146_))))
                                         (_K6515165169_
                                          (lambda (_rest65166_ _hd65167_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? _hd65167_ t::t))
                                                (let ((__tmp65927
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons object::t
                                                               _tail65145_))))
                                                  (declare (not safe))
                                                  (foldl1 cons
                                                          __tmp65927
                                                          _head65146_))
                                                (let ((__tmp65926
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd65167_
                                                               _head65146_))))
                                                  (declare (not safe))
                                                  (_loop65143_
                                                   _rest65166_
                                                   __tmp65926))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tail6514765155_))
                                        (let ((_hd6515265172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tail6514765155_)))
                                              (_tl6515365174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tail6514765155_))))
                                          (let* ((_hd65177_ _hd6515265172_)
                                                 (_rest65179_ _tl6515365174_))
                                            (declare (not safe))
                                            (_K6515165169_
                                             _rest65179_
                                             _hd65177_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else6514965163_))))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id65103_
                         _name65104_
                         _struct-super65128_
                         _precedence-list65181_
                         _slot-vector65130_
                         _properties65133_
                         _constructor*65138_
                         _slot-table65131_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass65101_)
        (let ((__tmp65928
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass65101_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass65101_ __tmp65928))))
    (define compute-precedence-list
      (lambda (_direct-supers65099_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers65099_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass65083_)
        (let ((_tid65085_
               (let () (declare (not safe)) (##type-id _klass65083_))))
          (if (let () (declare (not safe)) (class-type-final? _klass65083_))
              (lambda (_g6508665088_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6508665088_ _tid65085_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass65083_))
                  (lambda (_g6509065092_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6509065092_ _tid65085_)))
                  (lambda (_g6509465096_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass65083_ _g6509465096_))))))))
    (define if-class-slot-field
      (lambda (_klass65072_
               _slot65073_
               _if-final65074_
               _if-struct65075_
               _if-struct-field65076_
               _if-class-slot65077_)
        (let ((_field65079_
               (let ((__tmp65929
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass65072_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp65929 _slot65073_ '#f))))
          (if (let () (declare (not safe)) (not _field65079_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass65072_
                       'slot:
                       _slot65073_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass65072_))
                  (_if-final65074_ _klass65072_ _slot65073_ _field65079_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass65072_))
                      (_if-struct65075_ _klass65072_ _slot65073_ _field65079_)
                      (if (let ((_strukt65081_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass65072_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt65081_
                                    'gerbil#class::t))
                                 (let ((__tmp65930
                                        (let ((__tmp65931
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt65081_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp65931))))
                                   (declare (not safe))
                                   (##fx< _field65079_ __tmp65930))))
                          (_if-struct-field65076_
                           _klass65072_
                           _slot65073_
                           _field65079_)
                          (_if-class-slot65077_
                           _klass65072_
                           _slot65073_
                           _field65079_))))))))
    (define make-class-slot-accessor
      (lambda (_klass65069_ _slot65070_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65069_
           _slot65070_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass65066_ _slot65067_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65066_
           _slot65067_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass65063_ _slot65064_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65063_
           _slot65064_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass65060_ _slot65061_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65060_
           _slot65061_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object65044_ _class65045_ _slot65046_)
        (apply error
               '"not an instance"
               'object:
               _object65044_
               'class:
               _class65045_
               (if _slot65046_
                   (let ((__tmp65932
                          (let ()
                            (declare (not safe))
                            (cons _slot65046_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp65932))
                   '()))))
    (define not-an-instance__0
      (lambda (_object65051_ _class65052_)
        (let ((_slot65054_ '#f))
          (declare (not safe))
          (not-an-instance__% _object65051_ _class65052_ _slot65054_))))
    (define not-an-instance
      (lambda _g65934_
        (let ((_g65933_ (let () (declare (not safe)) (##length _g65934_))))
          (cond ((let () (declare (not safe)) (##fx= _g65933_ 2))
                 (apply (lambda (_object65051_ _class65052_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object65051_ _class65052_)))
                        _g65934_))
                ((let () (declare (not safe)) (##fx= _g65933_ 3))
                 (apply (lambda (_object65056_ _class65057_ _slot65058_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object65056_
                             _class65057_
                             _slot65058_)))
                        _g65934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g65934_))))))
    (define make-final-slot-accessor
      (lambda (_klass65037_ _slot65038_ _field65039_)
        (lambda (_obj65041_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj65041_
             _field65039_
             _klass65037_
             _slot65038_)))))
    (define make-final-slot-mutator
      (lambda (_klass65030_ _slot65031_ _field65032_)
        (lambda (_obj65034_ _val65035_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj65034_
             _val65035_
             _field65032_
             _klass65030_
             _slot65031_)))))
    (define make-struct-slot-accessor
      (lambda (_klass65024_ _slot65025_ _field65026_)
        (lambda (_obj65028_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj65028_
             _field65026_
             _klass65024_
             _slot65025_)))))
    (define make-struct-slot-mutator
      (lambda (_klass65017_ _slot65018_ _field65019_)
        (lambda (_obj65021_ _val65022_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj65021_
             _val65022_
             _field65019_
             _klass65017_
             _slot65018_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass65011_ _slot65012_ _field65013_)
        (lambda (_obj65015_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj65015_
             _field65013_
             _klass65011_
             _slot65012_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass65004_ _slot65005_ _field65006_)
        (lambda (_obj65008_ _val65009_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj65008_
             _val65009_
             _field65006_
             _klass65004_
             _slot65005_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass64998_ _slot64999_ _field65000_)
        (lambda (_obj65002_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64998_ _obj65002_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj65002_ _field65000_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj65002_ _klass64998_ _slot64999_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64991_ _slot64992_ _field64993_)
        (lambda (_obj64995_ _val64996_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64991_ _obj64995_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64995_ _field64993_ _val64996_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64995_ _klass64991_ _slot64992_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64985_ _slot64986_ _field64987_)
        (lambda (_obj64989_)
          (if (let ((__tmp65935
                     (let () (declare (not safe)) (##type-id _klass64985_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64989_ __tmp65935))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64989_ _field64987_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64985_ _obj64989_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64989_ _slot64986_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64989_
                     _klass64985_
                     _slot64986_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64978_ _slot64979_ _field64980_)
        (lambda (_obj64982_ _val64983_)
          (if (let ((__tmp65936
                     (let () (declare (not safe)) (##type-id _klass64978_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64982_ __tmp65936))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64982_ _field64980_ _val64983_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64978_ _obj64982_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64982_ _slot64979_ _val64983_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64982_
                     _klass64978_
                     _slot64979_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64972_ _slot64973_ _field64974_)
        (lambda (_obj64976_)
          (if (let ((__tmp65937
                     (let () (declare (not safe)) (##type-id _klass64972_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64976_ __tmp65937))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64976_ _field64974_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64976_ _slot64973_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64965_ _slot64966_ _field64967_)
        (lambda (_obj64969_ _val64970_)
          (if (let ((__tmp65938
                     (let () (declare (not safe)) (##type-id _klass64965_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64969_ __tmp65938))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64969_ _field64967_ _val64970_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64969_ _slot64966_ _val64970_))))))
    (define class-slot-offset
      (lambda (_klass64962_ _slot64963_)
        (let ((__tmp65939
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64962_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp65939 _slot64963_ '#f))))
    (define class-slot-ref
      (lambda (_klass64956_ _obj64957_ _slot64958_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64956_ _obj64957_))
            (let ((_off64960_
                   (let ((__tmp65940 (object-type _obj64957_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65940 _slot64958_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64957_
               _off64960_
               _klass64956_
               _slot64958_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64957_ _klass64956_)))))
    (define class-slot-set!
      (lambda (_klass64949_ _obj64950_ _slot64951_ _val64952_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64949_ _obj64950_))
            (let ((_off64954_
                   (let ((__tmp65941 (object-type _obj64950_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65941 _slot64951_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64950_
               _val64952_
               _off64954_
               _klass64949_
               _slot64951_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64950_ _klass64949_)))))
    (define unchecked-field-ref
      (lambda (_obj64946_ _off64947_)
        (let ((__tmp65942
               (let () (declare (not safe)) (##structure-type _obj64946_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64946_ _off64947_ __tmp65942 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64942_ _off64943_ _val64944_)
        (let ((__tmp65943
               (let () (declare (not safe)) (##structure-type _obj64942_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64942_
           _val64944_
           _off64943_
           __tmp65943
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj64939_ _slot64940_)
        (let ((__tmp65944
               (let ((__tmp65945
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64939_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65945 _slot64940_))))
          (declare (not safe))
          (unchecked-field-ref _obj64939_ __tmp65944))))
    (define unchecked-slot-set!
      (lambda (_obj64935_ _slot64936_ _val64937_)
        (let ((__tmp65946
               (let ((__tmp65947
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64935_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65947 _slot64936_))))
          (declare (not safe))
          (unchecked-field-set! _obj64935_ __tmp65946 _val64937_))))
    (define slot-ref__%
      (lambda (_obj64911_ _slot64912_ _E64913_)
        (if (object? _obj64911_)
            (let* ((_klass64915_ (object-type _obj64911_))
                   (_$e64918_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64915_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64915_ _slot64912_))
                        '#f)))
              (if _$e64918_
                  ((lambda (_off64921_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj64911_ _off64921_)))
                   _$e64918_)
                  (_E64913_ _obj64911_ _slot64912_)))
            (_E64913_ _obj64911_ _slot64912_))))
    (define slot-ref__0
      (lambda (_obj64926_ _slot64927_)
        (let ((_E64929_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj64926_ _slot64927_ _E64929_))))
    (define slot-ref
      (lambda _g65949_
        (let ((_g65948_ (let () (declare (not safe)) (##length _g65949_))))
          (cond ((let () (declare (not safe)) (##fx= _g65948_ 2))
                 (apply (lambda (_obj64926_ _slot64927_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj64926_ _slot64927_)))
                        _g65949_))
                ((let () (declare (not safe)) (##fx= _g65948_ 3))
                 (apply (lambda (_obj64931_ _slot64932_ _E64933_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj64931_ _slot64932_ _E64933_)))
                        _g65949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g65949_))))))
    (define slot-set!__%
      (lambda (_obj64883_ _slot64884_ _val64885_ _E64886_)
        (if (object? _obj64883_)
            (let* ((_klass64888_ (object-type _obj64883_))
                   (_$e64891_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64888_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64888_ _slot64884_))
                        '#f)))
              (if _$e64891_
                  ((lambda (_off64894_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj64883_
                        _off64894_
                        _val64885_)))
                   _$e64891_)
                  (_E64886_ _obj64883_ _slot64884_)))
            (_E64886_ _obj64883_ _slot64884_))))
    (define slot-set!__0
      (lambda (_obj64899_ _slot64900_ _val64901_)
        (let ((_E64903_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj64899_ _slot64900_ _val64901_ _E64903_))))
    (define slot-set!
      (lambda _g65951_
        (let ((_g65950_ (let () (declare (not safe)) (##length _g65951_))))
          (cond ((let () (declare (not safe)) (##fx= _g65950_ 3))
                 (apply (lambda (_obj64899_ _slot64900_ _val64901_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj64899_ _slot64900_ _val64901_)))
                        _g65951_))
                ((let () (declare (not safe)) (##fx= _g65950_ 4))
                 (apply (lambda (_obj64905_ _slot64906_ _val64907_ _E64908_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj64905_
                             _slot64906_
                             _val64907_
                             _E64908_)))
                        _g65951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g65951_))))))
    (define __slot-error
      (lambda (_obj64879_ _slot64880_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj64879_ 'slot: _slot64880_))))
    (define subclass?
      (lambda (_maybe-sub-class64869_ _maybe-super-class64870_)
        (let* ((_maybe-super-class-id64872_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class64870_)))
               (_$e64874_
                (let ((__tmp65952
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class64869_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id64872_ __tmp65952))))
          (if _$e64874_
              _$e64874_
              (let ((__tmp65954
                     (lambda (_super-class64877_)
                       (let ((__tmp65955
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class64877_))))
                         (declare (not safe))
                         (eq? __tmp65955 _maybe-super-class-id64872_))))
                    (__tmp65953
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class64869_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp65954 __tmp65953))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass64866_ _obj64867_)
        (let ((__tmp65956
               (let () (declare (not safe)) (##type-id _klass64866_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj64867_ __tmp65956))))
    (define struct-instance?
      (lambda (_klass64863_ _obj64864_)
        (let ((__tmp65957
               (let () (declare (not safe)) (##type-id _klass64863_))))
          (declare (not safe))
          (##structure-instance-of? _obj64864_ __tmp65957))))
    (define class-instance?
      (lambda (_klass64858_ _obj64859_)
        (if (object? _obj64859_)
            (let ((_type64861_ (object-type _obj64859_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type64861_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type64861_ _klass64858_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass64853_ _k64854_)
        (if (let () (declare (not safe)) (class-type-system? _klass64853_))
            (let ()
              (declare (not safe))
              (error '"cannot instantiate system class" 'class: _klass64853_))
            (let ((_obj64856_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass64853_ _k64854_))))
              (let () (declare (not safe)) (object-fill! _obj64856_ '#f))
              _obj64856_))))
    (define object-fill!
      (lambda (_obj64846_ _fill64847_)
        (let _loop64849_ ((_i64851_
                           (let ((__tmp65959
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj64846_))))
                             (declare (not safe))
                             (##fx- __tmp65959 '1))))
          (if (let () (declare (not safe)) (##fx> _i64851_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj64846_
                   _fill64847_
                   _i64851_
                   '#f
                   '#f))
                (let ((__tmp65958
                       (let () (declare (not safe)) (##fx- _i64851_ '1))))
                  (declare (not safe))
                  (_loop64849_ __tmp65958)))
              _obj64846_))))
    (define new-instance
      (lambda (_klass64844_)
        (let ((__obj65854
               (let ((__tmp65960
                      (let ((__tmp65961
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64844_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp65961))))
                 (declare (not safe))
                 (##make-structure _klass64844_ __tmp65960))))
          (let () (declare (not safe)) (object-fill! __obj65854 '#f))
          __obj65854)))
    (define make-instance
      (lambda (_klass64834_ . _args64835_)
        (let* ((_obj64837_
                (let () (declare (not safe)) (new-instance _klass64834_)))
               (_$e64839_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64834_ '10 class::t '#f))))
          (if _$e64839_
              ((lambda (_kons-id64842_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass64834_
                    _kons-id64842_
                    _obj64837_
                    _args64835_)))
               _$e64839_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass64834_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass64834_
                     _obj64837_
                     _args64835_))
                  (if (let ((__tmp65966
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass64834_))))
                        (declare (not safe))
                        (not __tmp65966))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass64834_
                         _obj64837_
                         _args64835_))
                      (if (let ((__tmp65964
                                 (let ((__tmp65965
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj64837_))))
                                   (declare (not safe))
                                   (##fx- __tmp65965 '1)))
                                (__tmp65963 (length _args64835_)))
                            (declare (not safe))
                            (##fx= __tmp65964 __tmp65963))
                          (apply ##structure _klass64834_ _args64835_)
                          (let ((__tmp65962
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass64834_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass64834_
                                   'slots:
                                   __tmp65962
                                   'args:
                                   _args64835_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj64831_ . _args64832_)
        (if (let ((__tmp65968 (length _args64832_))
                  (__tmp65967
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj64831_))))
              (declare (not safe))
              (##fx< __tmp65968 __tmp65967))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj64831_ _args64832_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj64831_
                     'args:
                     _args64832_)))))
    (define __struct-instance-init!
      (lambda (_obj64790_ _args64791_)
        (let _lp64793_ ((_k64795_ '1) (_rest64796_ _args64791_))
          (let* ((_rest6479764805_ _rest64796_)
                 (_else6479964813_ (lambda () _obj64790_))
                 (_K6480164819_
                  (lambda (_rest64816_ _hd64817_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj64790_ _k64795_ _hd64817_))
                    (let ((__tmp65969
                           (let () (declare (not safe)) (##fx+ _k64795_ '1))))
                      (declare (not safe))
                      (_lp64793_ __tmp65969 _rest64816_)))))
            (if (let () (declare (not safe)) (##pair? _rest6479764805_))
                (let ((_hd6480264822_
                       (let () (declare (not safe)) (##car _rest6479764805_)))
                      (_tl6480364824_
                       (let () (declare (not safe)) (##cdr _rest6479764805_))))
                  (let* ((_hd64827_ _hd6480264822_)
                         (_rest64829_ _tl6480364824_))
                    (declare (not safe))
                    (_K6480164819_ _rest64829_ _hd64827_)))
                (let () (declare (not safe)) (_else6479964813_)))))))
    (define class-instance-init!
      (lambda (_obj64787_ . _args64788_)
        (let ((__tmp65970 (object-type _obj64787_)))
          (declare (not safe))
          (__class-instance-init! __tmp65970 _obj64787_ _args64788_))))
    (define __class-instance-init!
      (lambda (_klass64731_ _obj64732_ _args64733_)
        (let _lp64735_ ((_rest64737_ _args64733_))
          (let* ((_rest6473864748_ _rest64737_)
                 (_else6474064756_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest64737_))
                        _obj64732_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass64731_
                                 'rest:
                                 _rest64737_)))))
                 (_K6474264768_
                  (lambda (_rest64759_ _val64760_ _key64761_)
                    (let ((_$e64763_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass64731_ _key64761_))))
                      (if _$e64763_
                          ((lambda (_off64766_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj64732_
                                _off64766_
                                _val64760_))
                             (let ()
                               (declare (not safe))
                               (_lp64735_ _rest64759_)))
                           _$e64763_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass64731_
                                   'slot:
                                   _key64761_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6473864748_))
                (let ((_hd6474364771_
                       (let () (declare (not safe)) (##car _rest6473864748_)))
                      (_tl6474464773_
                       (let () (declare (not safe)) (##cdr _rest6473864748_))))
                  (let ((_key64776_ _hd6474364771_))
                    (if (let () (declare (not safe)) (##pair? _tl6474464773_))
                        (let ((_hd6474564778_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6474464773_)))
                              (_tl6474664780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6474464773_))))
                          (let* ((_val64783_ _hd6474564778_)
                                 (_rest64785_ _tl6474664780_))
                            (declare (not safe))
                            (_K6474264768_ _rest64785_ _val64783_ _key64776_)))
                        (let () (declare (not safe)) (_else6474064756_)))))
                (let () (declare (not safe)) (_else6474064756_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass64727_ _obj64728_ _args64729_)
        (apply call-method
               _klass64727_
               'instance-init!
               _obj64728_
               _args64729_)))
    (define constructor-init!
      (lambda (_klass64722_ _kons-id64723_ _obj64724_ . _args64725_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass64722_
           _kons-id64723_
           _obj64724_
           _args64725_))))
    (define __constructor-init!
      (lambda (_klass64712_ _kons-id64713_ _obj64714_ _args64715_)
        (let ((_$e64717_
               (let ()
                 (declare (not safe))
                 (__find-method _klass64712_ _obj64714_ _kons-id64713_))))
          (if _$e64717_
              ((lambda (_kons64720_)
                 (apply _kons64720_ _obj64714_ _args64715_)
                 _obj64714_)
               _$e64717_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass64712_
                       'method:
                       _kons-id64713_))))))
    (define struct-copy
      (lambda (_struct64710_)
        (if (let () (declare (not safe)) (##structure? _struct64710_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct64710_)))
        (let () (declare (not safe)) (##structure-copy _struct64710_))))
    (define struct->list
      (lambda (_obj64708_)
        (if (object? _obj64708_)
            (let () (declare (not safe)) (##vector->list _obj64708_))
            (let ()
              (declare (not safe))
              (error '"not a structure" _obj64708_)))))
    (define class->list
      (lambda (_obj64695_)
        (if (object? _obj64695_)
            (let ((_klass64697_ (object-type _obj64695_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass64697_ 'gerbil#class::t))
                  (let ((_slot-vector64699_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass64697_
                            '7
                            class::t
                            '#f))))
                    (let _loop64701_ ((_index64703_
                                       (let ((__tmp65976
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector64699_))))
                                         (declare (not safe))
                                         (##fx- __tmp65976 '1)))
                                      (_plist64704_ '()))
                      (if (let () (declare (not safe)) (##fx< _index64703_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass64697_ _plist64704_))
                          (let ((_slot64706_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector64699_
                                    _index64703_))))
                            (let ((__tmp65975
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index64703_ '1)))
                                  (__tmp65971
                                   (let ((__tmp65974
                                          (symbol->keyword _slot64706_))
                                         (__tmp65972
                                          (let ((__tmp65973
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj64695_
                                                    _index64703_))))
                                            (declare (not safe))
                                            (cons __tmp65973 _plist64704_))))
                                     (declare (not safe))
                                     (cons __tmp65974 __tmp65972))))
                              (declare (not safe))
                              (_loop64701_ __tmp65975 __tmp65971))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj64695_
                           'class:
                           _klass64697_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj64695_)))))
    (define call-method
      (lambda (_obj64686_ _id64687_ . _args64688_)
        (let ((_$e64690_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64686_ _id64687_))))
          (if _$e64690_
              ((lambda (_method64693_)
                 (apply _method64693_ _obj64686_ _args64688_))
               _$e64690_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj64686_
                       'method:
                       _id64687_))))))
    (define method-ref
      (lambda (_obj64683_ _id64684_)
        (let ((__tmp65977 (let () (declare (not safe)) (class-of _obj64683_))))
          (declare (not safe))
          (find-method __tmp65977 _obj64683_ _id64684_))))
    (define checked-method-ref
      (lambda (_obj64677_ _id64678_)
        (let ((_$e64680_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64677_ _id64678_))))
          (if _$e64680_
              _$e64680_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj64677_
                       'method:
                       _id64678_))))))
    (define bound-method-ref
      (lambda (_obj64667_ _id64668_)
        (let ((_$e64670_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64667_ _id64668_))))
          (if _$e64670_
              ((lambda (_method64673_)
                 (lambda _args64675_
                   (apply _method64673_ _obj64667_ _args64675_)))
               _$e64670_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj64660_ _id64661_)
        (let ((_method64663_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj64660_ _id64661_))))
          (lambda _args64665_ (apply _method64663_ _obj64660_ _args64665_)))))
    (define find-method
      (lambda (_klass64656_ _obj64657_ _id64658_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64656_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass64656_ _obj64657_ _id64658_))
            (if (let () (declare (not safe)) (##type? _klass64656_))
                (let ((__tmp65978
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64656_))))
                  (declare (not safe))
                  (__find-method __tmp65978 _obj64657_ _id64658_))
                (let ()
                  (declare (not safe))
                  (error '"bad class; must be a class-type or builtin type"
                         'class:
                         _klass64656_
                         'method:
                         _id64658_))))))
    (define __find-method
      (lambda (_klass64649_ _obj64650_ _id64651_)
        (let ((_$e64653_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass64649_ _obj64650_ _id64651_))))
          (if _$e64653_
              _$e64653_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass64649_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass64649_ _obj64650_ _id64651_)))))))
    (define mixin-find-method
      (lambda (_mixins64641_ _obj64642_ _id64643_)
        (let ((__tmp65979
               (lambda (_g6464464646_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6464464646_ _obj64642_ _id64643_)))))
          (declare (not safe))
          (ormap1 __tmp65979 _mixins64641_))))
    (define direct-method-ref
      (lambda (_klass64618_ _obj64619_ _id64620_)
        (letrec ((_metaclass-resolve-method64622_
                  (lambda ()
                    (let ((__method65855
                           (let ()
                             (declare (not safe))
                             (method-ref _klass64618_ 'direct-method-ref))))
                      (if __method65855
                          (__method65855 _klass64618_ _obj64619_ _id64620_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass64618_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!64623_
                  (lambda ()
                    (let ((_method64638_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method64622_))))
                      (let ((__tmp65981
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64618_
                                '11
                                class::t
                                '#f)))
                            (__tmp65980 (if _method64638_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp65981 _id64620_ __tmp65980))
                      _method64638_))))
          (let ((_$e64625_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass64618_ '11 class::t '#f))))
            (if _$e64625_
                ((lambda (_ht64628_)
                   (let ((_method64630_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht64628_ _id64620_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method64630_))
                         _method64630_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass64618_))
                             (let ((_$e64632_ _method64630_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e64632_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method64622_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e64632_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!64623_)))))
                             '#f))))
                 _$e64625_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass64618_))
                    (let ((_tab64635_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64618_
                         _tab64635_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!64623_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass64614_ _obj64615_ _id64616_)
        (let ((__tmp65982 (##structure-ref _klass64614_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp65982 _obj64615_ _id64616_))))
    (define bind-method!__%
      (lambda (_klass64587_ _id64588_ _proc64589_ _rebind?64590_)
        (letrec ((_bind!64592_
                  (lambda (_ht64598_)
                    (if (and (let () (declare (not safe)) (not _rebind?64590_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht64598_ _id64588_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass64587_
                                 'method:
                                 _id64588_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht64598_
                           _id64588_
                           _proc64589_))))))
          (if (let () (declare (not safe)) (procedure? _proc64589_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc64589_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass64587_ 'gerbil#class::t))
              (let ((_ht64594_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass64587_
                        '11
                        class::t
                        '#f))))
                (if _ht64594_
                    (let () (declare (not safe)) (_bind!64592_ _ht64594_))
                    (let ((_ht64596_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64587_
                         _ht64596_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!64592_ _ht64596_)))))
              (if (let () (declare (not safe)) (##type? _klass64587_))
                  (let ((__tmp65983
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass64587_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp65983
                     _id64588_
                     _proc64589_
                     _rebind?64590_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass64587_)))))))
    (define bind-method!__0
      (lambda (_klass64603_ _id64604_ _proc64605_)
        (let ((_rebind?64607_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass64603_
           _id64604_
           _proc64605_
           _rebind?64607_))))
    (define bind-method!
      (lambda _g65985_
        (let ((_g65984_ (let () (declare (not safe)) (##length _g65985_))))
          (cond ((let () (declare (not safe)) (##fx= _g65984_ 3))
                 (apply (lambda (_klass64603_ _id64604_ _proc64605_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass64603_
                             _id64604_
                             _proc64605_)))
                        _g65985_))
                ((let () (declare (not safe)) (##fx= _g65984_ 4))
                 (apply (lambda (_klass64609_
                                 _id64610_
                                 _proc64611_
                                 _rebind?64612_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass64609_
                             _id64610_
                             _proc64611_
                             _rebind?64612_)))
                        _g65985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g65985_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint64567_ _seed64569_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64567_
           procedure-hash
           eq?
           _seed64569_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint64575_ '#f) (_seed64577_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64575_ _seed64577_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint64579_)
        (let ((_seed64581_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64579_ _seed64581_))))
    (define make-method-specializer-table
      (lambda _g65987_
        (let ((_g65986_ (let () (declare (not safe)) (##length _g65987_))))
          (cond ((let () (declare (not safe)) (##fx= _g65986_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g65987_))
                ((let () (declare (not safe)) (##fx= _g65986_ 1))
                 (apply (lambda (_size-hint64579_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint64579_)))
                        _g65987_))
                ((let () (declare (not safe)) (##fx= _g65986_ 2))
                 (apply (lambda (_size-hint64583_ _seed64584_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint64583_
                             _seed64584_)))
                        _g65987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g65987_))))))
    (define method-specializer-table-ref
      (lambda (_tab64524_ _key64525_ _default64526_)
        (let ((_table64528_
               (let () (declare (not safe)) (&raw-table-table _tab64524_)))
              (_seed64529_
               (let () (declare (not safe)) (&raw-table-seed _tab64524_))))
          (let* ((_h64531_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64525_))
                         _seed64529_))
                 (_size64534_ (vector-length _table64528_))
                 (_entries64537_ (fxquotient _size64534_ '2))
                 (_start64540_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64531_ _entries64537_)
                   '1)))
            (let _loop64544_ ((_probe64547_ _start64540_)
                              (_i64549_ '1)
                              (_deleted64551_ '#f))
              (let ((_k64554_ (vector-ref _table64528_ _probe64547_)))
                (if (let ((__tmp65994 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64554_ __tmp65994))
                    _default64526_
                    (if (let ((__tmp65993 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64554_ __tmp65993))
                        (let ((__tmp65992
                               (let ((_next-probe64557_
                                      (fx+ _start64540_
                                           _i64549_
                                           (fx* _i64549_ _i64549_))))
                                 (fxmodulo _next-probe64557_ _size64534_)))
                              (__tmp65991 (fx+ _i64549_ '1))
                              (__tmp65990
                               (let ((_$e64560_ _deleted64551_))
                                 (if _$e64560_ _$e64560_ _probe64547_))))
                          (declare (not safe))
                          (_loop64544_ __tmp65992 __tmp65991 __tmp65990))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64525_ _k64554_))
                            (vector-ref _table64528_ (fx+ _probe64547_ '1))
                            (let ((__tmp65989
                                   (let ((_next-probe64563_
                                          (fx+ _start64540_
                                               _i64549_
                                               (fx* _i64549_ _i64549_))))
                                     (fxmodulo _next-probe64563_ _size64534_)))
                                  (__tmp65988 (fx+ _i64549_ '1)))
                              (declare (not safe))
                              (_loop64544_
                               __tmp65989
                               __tmp65988
                               _deleted64551_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab64520_ _key64521_ _value64522_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64520_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64520_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64520_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab64520_
           _key64521_
           _value64522_))))
    (define __method-specializer-table-set!
      (lambda (_tab64475_ _key64476_ _value64477_)
        (let ((_table64480_
               (let () (declare (not safe)) (&raw-table-table _tab64475_)))
              (_seed64481_
               (let () (declare (not safe)) (&raw-table-seed _tab64475_))))
          (let* ((_h64483_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64476_))
                         _seed64481_))
                 (_size64486_ (vector-length _table64480_))
                 (_entries64489_ (fxquotient _size64486_ '2))
                 (_start64492_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64483_ _entries64489_)
                   '1)))
            (let _loop64496_ ((_probe64499_ _start64492_)
                              (_i64501_ '1)
                              (_deleted64503_ '#f))
              (let ((_k64506_ (vector-ref _table64480_ _probe64499_)))
                (if (let ((__tmp66004 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64506_ __tmp66004))
                    (if _deleted64503_
                        (begin
                          (vector-set! _table64480_ _deleted64503_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _deleted64503_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp66003
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp66003)))))
                        (begin
                          (vector-set! _table64480_ _probe64499_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _probe64499_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp66001
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64475_ __tmp66001))
                             (let ((__tmp66002
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp66002))))))
                    (if (let ((__tmp66000 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64506_ __tmp66000))
                        (let ((__tmp65999
                               (let ((_next-probe64511_
                                      (fx+ _start64492_
                                           _i64501_
                                           (fx* _i64501_ _i64501_))))
                                 (fxmodulo _next-probe64511_ _size64486_)))
                              (__tmp65998 (fx+ _i64501_ '1))
                              (__tmp65997
                               (let ((_$e64514_ _deleted64503_))
                                 (if _$e64514_ _$e64514_ _probe64499_))))
                          (declare (not safe))
                          (_loop64496_ __tmp65999 __tmp65998 __tmp65997))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64476_ _k64506_))
                            (begin
                              (vector-set!
                               _table64480_
                               _probe64499_
                               _key64476_)
                              (vector-set!
                               _table64480_
                               (fx+ _probe64499_ '1)
                               _value64477_))
                            (let ((__tmp65996
                                   (let ((_next-probe64517_
                                          (fx+ _start64492_
                                               _i64501_
                                               (fx* _i64501_ _i64501_))))
                                     (fxmodulo _next-probe64517_ _size64486_)))
                                  (__tmp65995 (fx+ _i64501_ '1)))
                              (declare (not safe))
                              (_loop64496_
                               __tmp65996
                               __tmp65995
                               _deleted64503_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab64470_
               _key64471_
               _method-specializer-table-update!64472_
               _default64473_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64470_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64470_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64470_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab64470_
           _key64471_
           _method-specializer-table-update!64472_
           _default64473_))))
    (define __method-specializer-table-update!
      (lambda (_tab64424_
               _key64425_
               _method-specializer-table-update!64426_
               _default64427_)
        (let ((_table64430_
               (let () (declare (not safe)) (&raw-table-table _tab64424_)))
              (_seed64431_
               (let () (declare (not safe)) (&raw-table-seed _tab64424_))))
          (let* ((_h64433_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64425_))
                         _seed64431_))
                 (_size64436_ (vector-length _table64430_))
                 (_entries64439_ (fxquotient _size64436_ '2))
                 (_start64442_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64433_ _entries64439_)
                   '1)))
            (let _loop64446_ ((_probe64449_ _start64442_)
                              (_i64451_ '1)
                              (_deleted64453_ '#f))
              (let ((_k64456_ (vector-ref _table64430_ _probe64449_)))
                (if (let ((__tmp66014 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64456_ __tmp66014))
                    (if _deleted64453_
                        (begin
                          (vector-set! _table64430_ _deleted64453_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _deleted64453_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp66013
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp66013)))))
                        (begin
                          (vector-set! _table64430_ _probe64449_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _probe64449_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp66011
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64424_ __tmp66011))
                             (let ((__tmp66012
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp66012))))))
                    (if (let ((__tmp66010 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64456_ __tmp66010))
                        (let ((__tmp66009
                               (let ((_next-probe64461_
                                      (fx+ _start64442_
                                           _i64451_
                                           (fx* _i64451_ _i64451_))))
                                 (fxmodulo _next-probe64461_ _size64436_)))
                              (__tmp66008 (fx+ _i64451_ '1))
                              (__tmp66007
                               (let ((_$e64464_ _deleted64453_))
                                 (if _$e64464_ _$e64464_ _probe64449_))))
                          (declare (not safe))
                          (_loop64446_ __tmp66009 __tmp66008 __tmp66007))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64425_ _k64456_))
                            (begin
                              (vector-set!
                               _table64430_
                               _probe64449_
                               _key64425_)
                              (vector-set!
                               _table64430_
                               (fx+ _probe64449_ '1)
                               (_method-specializer-table-update!64426_
                                (vector-ref
                                 _table64430_
                                 (fx+ _probe64449_ '1)))))
                            (let ((__tmp66006
                                   (let ((_next-probe64467_
                                          (fx+ _start64442_
                                               _i64451_
                                               (fx* _i64451_ _i64451_))))
                                     (fxmodulo _next-probe64467_ _size64436_)))
                                  (__tmp66005 (fx+ _i64451_ '1)))
                              (declare (not safe))
                              (_loop64446_
                               __tmp66006
                               __tmp66005
                               _deleted64453_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab64383_ _key64385_)
        (let ((_table64388_
               (let () (declare (not safe)) (&raw-table-table _tab64383_)))
              (_seed64390_
               (let () (declare (not safe)) (&raw-table-seed _tab64383_))))
          (let* ((_h64393_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64385_))
                         _seed64390_))
                 (_size64396_ (vector-length _table64388_))
                 (_entries64399_ (fxquotient _size64396_ '2))
                 (_start64402_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64393_ _entries64399_)
                   '1)))
            (let _loop64406_ ((_probe64409_ _start64402_) (_i64411_ '1))
              (let ((_k64414_ (vector-ref _table64388_ _probe64409_)))
                (if (let ((__tmp66021 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64414_ __tmp66021))
                    '#!void
                    (if (let ((__tmp66020 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64414_ __tmp66020))
                        (let ((__tmp66019
                               (let ((_next-probe64417_
                                      (fx+ _start64402_
                                           _i64411_
                                           (fx* _i64411_ _i64411_))))
                                 (fxmodulo _next-probe64417_ _size64396_)))
                              (__tmp66018 (fx+ _i64411_ '1)))
                          (declare (not safe))
                          (_loop64406_ __tmp66019 __tmp66018))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64385_ _k64414_))
                            (begin
                              (vector-set!
                               _table64388_
                               _probe64409_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64388_
                               (fx+ _probe64409_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66017
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64383_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64383_
                                    __tmp66017)))))
                            (let ((__tmp66016
                                   (let ((_next-probe64421_
                                          (fx+ _start64402_
                                               _i64411_
                                               (fx* _i64411_ _i64411_))))
                                     (fxmodulo _next-probe64421_ _size64396_)))
                                  (__tmp66015 (fx+ _i64411_ '1)))
                              (declare (not safe))
                              (_loop64406_ __tmp66016 __tmp66015)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc64374_ _specializer64375_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64379_ ()
            (if (let ((__tmp66022
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66022 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64379_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc64374_
           _specializer64375_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc64364_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64368_ ()
            (if (let ((__tmp66023
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66023 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64368_))))))
        (let ((_specializer64372_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc64364_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer64372_)))
    (define __class-specializer-hash-key
      (lambda (_klass64362_)
        (let ((__tmp66024
               (let () (declare (not safe)) (##type-id _klass64362_))))
          (declare (not safe))
          (symbolic-hash __tmp66024))))
    (define make-class-specializer-table__%
      (lambda (_size-hint64343_ _seed64345_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64343_
           __class-specializer-hash-key
           eq?
           _seed64345_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint64351_ '#f) (_seed64353_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64351_ _seed64353_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint64355_)
        (let ((_seed64357_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64355_ _seed64357_))))
    (define make-class-specializer-table
      (lambda _g66026_
        (let ((_g66025_ (let () (declare (not safe)) (##length _g66026_))))
          (cond ((let () (declare (not safe)) (##fx= _g66025_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g66026_))
                ((let () (declare (not safe)) (##fx= _g66025_ 1))
                 (apply (lambda (_size-hint64355_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint64355_)))
                        _g66026_))
                ((let () (declare (not safe)) (##fx= _g66025_ 2))
                 (apply (lambda (_size-hint64359_ _seed64360_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint64359_
                             _seed64360_)))
                        _g66026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g66026_))))))
    (define class-specializer-table-ref
      (lambda (_tab64300_ _key64301_ _default64302_)
        (let ((_table64304_
               (let () (declare (not safe)) (&raw-table-table _tab64300_)))
              (_seed64305_
               (let () (declare (not safe)) (&raw-table-seed _tab64300_))))
          (let* ((_h64307_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64301_))
                         _seed64305_))
                 (_size64310_ (vector-length _table64304_))
                 (_entries64313_ (fxquotient _size64310_ '2))
                 (_start64316_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64307_ _entries64313_)
                   '1)))
            (let _loop64320_ ((_probe64323_ _start64316_)
                              (_i64325_ '1)
                              (_deleted64327_ '#f))
              (let ((_k64330_ (vector-ref _table64304_ _probe64323_)))
                (if (let ((__tmp66033 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64330_ __tmp66033))
                    _default64302_
                    (if (let ((__tmp66032 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64330_ __tmp66032))
                        (let ((__tmp66031
                               (let ((_next-probe64333_
                                      (fx+ _start64316_
                                           _i64325_
                                           (fx* _i64325_ _i64325_))))
                                 (fxmodulo _next-probe64333_ _size64310_)))
                              (__tmp66030 (fx+ _i64325_ '1))
                              (__tmp66029
                               (let ((_$e64336_ _deleted64327_))
                                 (if _$e64336_ _$e64336_ _probe64323_))))
                          (declare (not safe))
                          (_loop64320_ __tmp66031 __tmp66030 __tmp66029))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64301_ _k64330_))
                            (vector-ref _table64304_ (fx+ _probe64323_ '1))
                            (let ((__tmp66028
                                   (let ((_next-probe64339_
                                          (fx+ _start64316_
                                               _i64325_
                                               (fx* _i64325_ _i64325_))))
                                     (fxmodulo _next-probe64339_ _size64310_)))
                                  (__tmp66027 (fx+ _i64325_ '1)))
                              (declare (not safe))
                              (_loop64320_
                               __tmp66028
                               __tmp66027
                               _deleted64327_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab64296_ _key64297_ _value64298_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64296_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64296_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64296_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab64296_
           _key64297_
           _value64298_))))
    (define __class-specializer-table-set!
      (lambda (_tab64251_ _key64252_ _value64253_)
        (let ((_table64256_
               (let () (declare (not safe)) (&raw-table-table _tab64251_)))
              (_seed64257_
               (let () (declare (not safe)) (&raw-table-seed _tab64251_))))
          (let* ((_h64259_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64252_))
                         _seed64257_))
                 (_size64262_ (vector-length _table64256_))
                 (_entries64265_ (fxquotient _size64262_ '2))
                 (_start64268_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64259_ _entries64265_)
                   '1)))
            (let _loop64272_ ((_probe64275_ _start64268_)
                              (_i64277_ '1)
                              (_deleted64279_ '#f))
              (let ((_k64282_ (vector-ref _table64256_ _probe64275_)))
                (if (let ((__tmp66043 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64282_ __tmp66043))
                    (if _deleted64279_
                        (begin
                          (vector-set! _table64256_ _deleted64279_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _deleted64279_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp66042
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp66042)))))
                        (begin
                          (vector-set! _table64256_ _probe64275_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _probe64275_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp66040
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64251_ __tmp66040))
                             (let ((__tmp66041
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp66041))))))
                    (if (let ((__tmp66039 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64282_ __tmp66039))
                        (let ((__tmp66038
                               (let ((_next-probe64287_
                                      (fx+ _start64268_
                                           _i64277_
                                           (fx* _i64277_ _i64277_))))
                                 (fxmodulo _next-probe64287_ _size64262_)))
                              (__tmp66037 (fx+ _i64277_ '1))
                              (__tmp66036
                               (let ((_$e64290_ _deleted64279_))
                                 (if _$e64290_ _$e64290_ _probe64275_))))
                          (declare (not safe))
                          (_loop64272_ __tmp66038 __tmp66037 __tmp66036))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64252_ _k64282_))
                            (begin
                              (vector-set!
                               _table64256_
                               _probe64275_
                               _key64252_)
                              (vector-set!
                               _table64256_
                               (fx+ _probe64275_ '1)
                               _value64253_))
                            (let ((__tmp66035
                                   (let ((_next-probe64293_
                                          (fx+ _start64268_
                                               _i64277_
                                               (fx* _i64277_ _i64277_))))
                                     (fxmodulo _next-probe64293_ _size64262_)))
                                  (__tmp66034 (fx+ _i64277_ '1)))
                              (declare (not safe))
                              (_loop64272_
                               __tmp66035
                               __tmp66034
                               _deleted64279_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab64246_
               _key64247_
               _class-specializer-table-update!64248_
               _default64249_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64246_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64246_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64246_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab64246_
           _key64247_
           _class-specializer-table-update!64248_
           _default64249_))))
    (define __class-specializer-table-update!
      (lambda (_tab64200_
               _key64201_
               _class-specializer-table-update!64202_
               _default64203_)
        (let ((_table64206_
               (let () (declare (not safe)) (&raw-table-table _tab64200_)))
              (_seed64207_
               (let () (declare (not safe)) (&raw-table-seed _tab64200_))))
          (let* ((_h64209_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64201_))
                         _seed64207_))
                 (_size64212_ (vector-length _table64206_))
                 (_entries64215_ (fxquotient _size64212_ '2))
                 (_start64218_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64209_ _entries64215_)
                   '1)))
            (let _loop64222_ ((_probe64225_ _start64218_)
                              (_i64227_ '1)
                              (_deleted64229_ '#f))
              (let ((_k64232_ (vector-ref _table64206_ _probe64225_)))
                (if (let ((__tmp66053 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64232_ __tmp66053))
                    (if _deleted64229_
                        (begin
                          (vector-set! _table64206_ _deleted64229_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _deleted64229_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66052
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66052)))))
                        (begin
                          (vector-set! _table64206_ _probe64225_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _probe64225_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66050
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64200_ __tmp66050))
                             (let ((__tmp66051
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66051))))))
                    (if (let ((__tmp66049 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64232_ __tmp66049))
                        (let ((__tmp66048
                               (let ((_next-probe64237_
                                      (fx+ _start64218_
                                           _i64227_
                                           (fx* _i64227_ _i64227_))))
                                 (fxmodulo _next-probe64237_ _size64212_)))
                              (__tmp66047 (fx+ _i64227_ '1))
                              (__tmp66046
                               (let ((_$e64240_ _deleted64229_))
                                 (if _$e64240_ _$e64240_ _probe64225_))))
                          (declare (not safe))
                          (_loop64222_ __tmp66048 __tmp66047 __tmp66046))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64201_ _k64232_))
                            (begin
                              (vector-set!
                               _table64206_
                               _probe64225_
                               _key64201_)
                              (vector-set!
                               _table64206_
                               (fx+ _probe64225_ '1)
                               (_class-specializer-table-update!64202_
                                (vector-ref
                                 _table64206_
                                 (fx+ _probe64225_ '1)))))
                            (let ((__tmp66045
                                   (let ((_next-probe64243_
                                          (fx+ _start64218_
                                               _i64227_
                                               (fx* _i64227_ _i64227_))))
                                     (fxmodulo _next-probe64243_ _size64212_)))
                                  (__tmp66044 (fx+ _i64227_ '1)))
                              (declare (not safe))
                              (_loop64222_
                               __tmp66045
                               __tmp66044
                               _deleted64229_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab64159_ _key64161_)
        (let ((_table64164_
               (let () (declare (not safe)) (&raw-table-table _tab64159_)))
              (_seed64166_
               (let () (declare (not safe)) (&raw-table-seed _tab64159_))))
          (let* ((_h64169_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64161_))
                         _seed64166_))
                 (_size64172_ (vector-length _table64164_))
                 (_entries64175_ (fxquotient _size64172_ '2))
                 (_start64178_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64169_ _entries64175_)
                   '1)))
            (let _loop64182_ ((_probe64185_ _start64178_) (_i64187_ '1))
              (let ((_k64190_ (vector-ref _table64164_ _probe64185_)))
                (if (let ((__tmp66060 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64190_ __tmp66060))
                    '#!void
                    (if (let ((__tmp66059 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64190_ __tmp66059))
                        (let ((__tmp66058
                               (let ((_next-probe64193_
                                      (fx+ _start64178_
                                           _i64187_
                                           (fx* _i64187_ _i64187_))))
                                 (fxmodulo _next-probe64193_ _size64172_)))
                              (__tmp66057 (fx+ _i64187_ '1)))
                          (declare (not safe))
                          (_loop64182_ __tmp66058 __tmp66057))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64161_ _k64190_))
                            (begin
                              (vector-set!
                               _table64164_
                               _probe64185_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64164_
                               (fx+ _probe64185_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66056
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64159_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64159_
                                    __tmp66056)))))
                            (let ((__tmp66055
                                   (let ((_next-probe64197_
                                          (fx+ _start64178_
                                               _i64187_
                                               (fx* _i64187_ _i64187_))))
                                     (fxmodulo _next-probe64197_ _size64172_)))
                                  (__tmp66054 (fx+ _i64187_ '1)))
                              (declare (not safe))
                              (_loop64182_ __tmp66055 __tmp66054)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass64152_)
        (let ((_$e64154_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass64152_))))
          (if _$e64154_
              _$e64154_
              (let ((_method-table64157_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass64152_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass64152_ _method-table64157_))
                _method-table64157_)))))
    (define __lookup-class-specializer
      (lambda (_klass64142_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64146_ ()
            (if (let ((__tmp66061
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66061 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64146_))))))
        (let ((_method-table64150_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass64142_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table64150_)))
    (define __bind-class-specializer!
      (lambda (_klass64133_ _method-table64134_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64138_ ()
            (if (let ((__tmp66062
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66062 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64138_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass64133_
           _method-table64134_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass64118_ _method-table64119_ _method64120_ _proc64121_)
        (let ((_$e64123_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table64119_ _method64120_ '#f))))
          (if _$e64123_
              _$e64123_
              (let ((_$e64126_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc64121_))))
                (if _$e64126_
                    ((lambda (_specialize64129_)
                       (let ((_specialized-proc64131_
                              (_specialize64129_
                               _klass64118_
                               _method-table64119_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table64119_
                          _method64120_
                          _specialized-proc64131_)))
                     _$e64126_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table64119_
                       _method64120_
                       _proc64121_))))))))
    (define __specialize-class
      (lambda (_klass64064_)
        (if (let ((__tmp66066
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass64064_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp66066))
            (if (let () (declare (not safe)) (##type? _klass64064_))
                (let ((__tmp66065
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64064_))))
                  (declare (not safe))
                  (__specialize-class __tmp66065))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass64064_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass64064_))
                (let ((__method65856
                       (let ()
                         (declare (not safe))
                         (method-ref _klass64064_ 'specialize-class))))
                  (if __method65856
                      (__method65856 _klass64064_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass64064_
                               'specialize-class))))
                (if (let ((__tmp66064
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass64064_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp66064))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass64064_))
                    (let ((_method-table64066_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop64068_ ((_rest64070_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass64064_))))
                        (let* ((_rest6407164079_ _rest64070_)
                               (_else6407364087_
                                (lambda () _method-table64066_))
                               (_K6407564106_
                                (lambda (_rest64090_ _xklass64091_)
                                  (let ((_xmethod-table6409264094_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass64091_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6409264094_
                                        (let* ((_xmethod-table64097_
                                                _xmethod-table6409264094_)
                                               (__tmp66063
                                                (lambda (_g6409864101_
                                                         _g6409964103_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass64064_
                                                     _method-table64066_
                                                     _g6409864101_
                                                     _g6409964103_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table64097_
                                           __tmp66063))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop64068_ _rest64090_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6407164079_))
                              (let ((_hd6407664109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6407164079_)))
                                    (_tl6407764111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6407164079_))))
                                (let* ((_xklass64114_ _hd6407664109_)
                                       (_rest64116_ _tl6407764111_))
                                  (declare (not safe))
                                  (_K6407564106_ _rest64116_ _xklass64114_)))
                              (let ()
                                (declare (not safe))
                                (_else6407364087_)))))))))))
    (define seal-class!
      (lambda (_klass64060_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64060_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass64060_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass64060_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass64060_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass64060_))
                      (let ((__method65857
                             (let ()
                               (declare (not safe))
                               (method-ref _klass64060_ 'seal-class!))))
                        (if __method65857
                            (__method65857 _klass64060_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass64060_
                                     'seal-class!))))
                      (if (let ((__tmp66067
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass64060_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp66067))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass64060_))
                          (let ((_method-table64062_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass64060_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass64060_
                             _method-table64062_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass64060_))))
            '#!void)))
    (define next-method
      (lambda (_subklass64015_ _obj64016_ _id64017_)
        (letrec ((_find-next-method64019_
                  (lambda (_klass64021_)
                    (let _lp64023_ ((_rest64025_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass64021_))))
                      (let* ((_rest6402664034_ _rest64025_)
                             (_else6402864042_ (lambda () '#f))
                             (_K6403064048_
                              (lambda (_rest64045_ _klass64046_)
                                (if (let ((__tmp66069
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass64015_)))
                                          (__tmp66068
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass64046_))))
                                      (declare (not safe))
                                      (eq? __tmp66069 __tmp66068))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest64045_
                                       _obj64016_
                                       _id64017_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64023_ _rest64045_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6402664034_))
                            (let ((_hd6403164051_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6402664034_)))
                                  (_tl6403264053_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6402664034_))))
                              (let* ((_klass64056_ _hd6403164051_)
                                     (_rest64058_ _tl6403264053_))
                                (declare (not safe))
                                (_K6403064048_ _rest64058_ _klass64056_)))
                            (let ()
                              (declare (not safe))
                              (_else6402864042_))))))))
          (let ((__tmp66070
                 (let () (declare (not safe)) (class-of _obj64016_))))
            (declare (not safe))
            (_find-next-method64019_ __tmp66070)))))
    (define call-next-method
      (lambda (_subklass64005_ _obj64006_ _id64007_ . _args64008_)
        (let ((_$e64010_
               (let ()
                 (declare (not safe))
                 (next-method _subklass64005_ _obj64006_ _id64007_))))
          (if _$e64010_
              ((lambda (_methodf64013_)
                 (apply _methodf64013_ _obj64006_ _args64008_))
               _$e64010_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj64006_
                       'method:
                       _id64007_))))))
    (define write-style (lambda (_we64003_) (macro-writeenv-style _we64003_)))
    (define write-object
      (lambda (_we63995_ _obj63996_)
        (let ((_$e63998_
               (let () (declare (not safe)) (method-ref _obj63996_ ':wr))))
          (if _$e63998_
              ((lambda (_method64001_) (_method64001_ _obj63996_ _we63995_))
               _$e63998_)
              (let ()
                (declare (not safe))
                (##default-wr _we63995_ _obj63996_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type63914_)
        (letrec ((_shadow-type-id63916_
                  (lambda (_type63993_)
                    (let ((__tmp66071
                           (let ()
                             (declare (not safe))
                             (##type-name _type63993_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp66071 '"::t"))))
                 (_shadow-type-name63917_
                  (lambda (_type63991_)
                    (let () (declare (not safe)) (##type-name _type63991_))))
                 (_make-shadow-class63918_
                  (lambda (_type63983_ _precedence-list63984_)
                    (let* ((_super63986_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list63984_))
                                (let ((__tmp66072
                                       (car _precedence-list63984_)))
                                  (declare (not safe))
                                  (cons __tmp66072 '()))
                                '()))
                           (_klass63988_
                            (let ((__tmp66080
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id63916_ _type63983_)))
                                  (__tmp66079
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type63983_)))
                                  (__tmp66073
                                   (let ((__tmp66078
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp66074
                                          (let ((__tmp66077
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp66075
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type63983_))
                                                     '()
                                                     (let ((__tmp66076
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp66076 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp66077 __tmp66075))))
                                     (declare (not safe))
                                     (cons __tmp66078 __tmp66074))))
                              (declare (not safe))
                              (make-class-type
                               __tmp66080
                               __tmp66079
                               _super63986_
                               '()
                               __tmp66073
                               '#f))))
                      (let ((__tmp66081
                             (let ()
                               (declare (not safe))
                               (##type-id _type63983_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp66081
                         _klass63988_))
                      _klass63988_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again63922_ ()
              (if (let ((__tmp66082
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp66082 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again63922_))))))
          (let ((_$e63926_
                 (let ((__tmp66083
                        (let () (declare (not safe)) (##type-id _type63914_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp66083 '#f))))
            (if _$e63926_
                ((lambda (_klass63929_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass63929_)
                 _$e63926_)
                (let _loop63931_ ((_super63933_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type63914_)))
                                  (_hierarchy63934_ '()))
                  (if (let () (declare (not safe)) (not _super63933_))
                      (let _loop63936_ ((_rest63938_ _hierarchy63934_)
                                        (_precedence-list63939_ '()))
                        (let* ((_rest6394063948_ _rest63938_)
                               (_else6394263958_
                                (lambda ()
                                  (let ((_klass63956_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class63918_
                                            _type63914_
                                            _precedence-list63939_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass63956_)))
                               (_K6394463971_
                                (lambda (_rest63961_ _type63962_)
                                  (let ((_$e63964_
                                         (let ((__tmp66086
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type63962_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp66086
                                            '#f))))
                                    (if _$e63964_
                                        ((lambda (_klass63967_)
                                           (let ((__tmp66088
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass63967_
                                                          _precedence-list63939_))))
                                             (declare (not safe))
                                             (_loop63936_
                                              _rest63961_
                                              __tmp66088)))
                                         _$e63964_)
                                        (let* ((_klass63969_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class63918_
                                                   _type63962_
                                                   _precedence-list63939_)))
                                               (__tmp66087
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass63969_
                                                        _precedence-list63939_))))
                                          (declare (not safe))
                                          (_loop63936_
                                           _rest63961_
                                           __tmp66087)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6394063948_))
                              (let ((_hd6394563974_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6394063948_)))
                                    (_tl6394663976_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6394063948_))))
                                (let* ((_type63979_ _hd6394563974_)
                                       (_rest63981_ _tl6394663976_))
                                  (declare (not safe))
                                  (_K6394463971_ _rest63981_ _type63979_)))
                              (let ()
                                (declare (not safe))
                                (_else6394263958_)))))
                      (let ((__tmp66085
                             (let ()
                               (declare (not safe))
                               (##type-super _super63933_)))
                            (__tmp66084
                             (let ()
                               (declare (not safe))
                               (cons _super63933_ _hierarchy63934_))))
                        (declare (not safe))
                        (_loop63931_ __tmp66085 __tmp66084)))))))))
    (define class-of
      (lambda (_obj63902_)
        (declare (not interrupts-enabled))
        (let ((_t63905_ (let () (declare (not safe)) (##type _obj63902_))))
          (if (fx= _t63905_ (macro-type-subtyped))
              (let ((_st63907_
                     (let () (declare (not safe)) (##subtype _obj63902_))))
                (if (fx= _st63907_ (macro-subtype-structure))
                    (let ((_klass63909_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj63902_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass63909_
                             'gerbil#class::t))
                          _klass63909_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass63909_))))
                    (if (fx= _st63907_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj63902_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e63911_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st63907_))))
                          (if _$e63911_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e63911_))
                              (let ()
                                (declare (not safe))
                                (error '"unknown class"
                                       'subtype:
                                       _st63907_
                                       'object:
                                       _obj63902_)))))))
              (if (fx= _t63905_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t63905_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj63902_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj63902_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj63902_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj63902_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj63902_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj63902_ '#!eof))
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
      (lambda (_id63897_)
        (let ((_$e63899_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id63897_ '#f))))
          (if _$e63899_
              _$e63899_
              (let ()
                (declare (not safe))
                (error '"unknown system class" _id63897_))))))
    (define __make-system-class
      (lambda (_id63892_ _super63893_)
        (let ((_klass63895_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id63892_
                  _id63892_
                  _super63893_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id63892_ _klass63895_))
          _klass63895_)))))
