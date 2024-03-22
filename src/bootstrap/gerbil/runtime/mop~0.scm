(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1711108654)
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
      (let ((_flags65734_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65735_ '((direct-slots:) (system: . #t)))
            (_slot-table65736_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           t::t.id
           't
           _flags65734_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table65736_
           _properties65735_
           '#f
           '#f))))
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots65710_
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
             (_slot-vector65712_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots65710_))))
             (_slot-table65719_
              (let ((_slot-table65714_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot65716_ _field65717_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65714_
                      _slot65716_
                      _field65717_))
                   (let ((__tmp65864 (symbol->keyword _slot65716_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65714_
                      __tmp65864
                      _field65717_)))
                 _slots65710_
                 (iota (length _slots65710_) '1))
                _slot-table65714_))
             (_flags65721_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields65727_
              (list->vector
               (apply append
                      (map (lambda (_g6572265724_) (list _g6572265724_ '5 '#f))
                           (drop _slots65710_ '5)))))
             (_properties65729_
              (let ((__tmp65867
                     (let ((__tmp65868
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots65710_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp65868)))
                    (__tmp65865
                     (let ((__tmp65866
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp65866 '()))))
                (declare (not safe))
                (cons __tmp65867 __tmp65865)))
             (_t65731_
              (let ((__tmp65869 (let () (declare (not safe)) (cons t::t '()))))
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags65721_
                 ##type-type
                 _fields65727_
                 __tmp65869
                 _slot-vector65712_
                 _slot-table65719_
                 _properties65729_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t65731_ _t65731_))
        _t65731_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t.id 'gerbil#object::t)
    (define object::t
      (let ((_flags65706_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65707_ '((direct-slots:) (system: . #t)))
            (_slot-table65708_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp65870 (let () (declare (not safe)) (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           'object
           _flags65706_
           '#f
           '#()
           __tmp65870
           '#(#f)
           _slot-table65708_
           _properties65707_
           '#f
           '#f))))
    (define class-type?
      (lambda (_obj65704_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj65704_ class::t.id))))
    (define class-type=?
      (lambda (_x65701_ _y65702_)
        (let ((__tmp65872 (##structure-ref _x65701_ '1 class::t '#f))
              (__tmp65871 (##structure-ref _y65702_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp65872 __tmp65871))))
    (define type-opaque?
      (lambda (_type65699_)
        (let ((__tmp65873
               (let ((__tmp65874
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65699_))))
                 (declare (not safe))
                 (##fxand __tmp65874 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp65873 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type65697_)
        (let ((__tmp65875
               (let ((__tmp65876
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65697_))))
                 (declare (not safe))
                 (##fxand __tmp65876 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65875 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type65695_)
        (let ((__tmp65877
               (let ((__tmp65878
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65695_))))
                 (declare (not safe))
                 (##fxand __tmp65878 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65877 '0))))
    (define class-type-struct?
      (lambda (_klass65693_)
        (let ((__tmp65879
               (let ((__tmp65880
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65693_))))
                 (declare (not safe))
                 (##fxand __tmp65880 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp65879 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass65691_)
        (let ((__tmp65881
               (let ((__tmp65882
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65691_))))
                 (declare (not safe))
                 (##fxand __tmp65882 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp65881 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass65689_)
        (let ((__tmp65883
               (let ((__tmp65884
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65689_))))
                 (declare (not safe))
                 (##fxand __tmp65884 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp65883 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass65687_)
        (let ((__tmp65885
               (let ((__tmp65886
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65687_))))
                 (declare (not safe))
                 (##fxand __tmp65886 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp65885 class-type-flag-system))))
    (define properties-form
      (lambda (_properties65653_)
        (map (lambda (_e6565465656_)
               (let* ((_g6565865665_ _e6565465656_)
                      (_E6566065669_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6565865665_))))
                      (_K6566165675_
                       (lambda (_val65672_ _key65673_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key65673_ 'direct-supers:))
                             (let ((__tmp65887 (map class-type-id _val65672_)))
                               (declare (not safe))
                               (cons _key65673_ __tmp65887))
                             (let ()
                               (declare (not safe))
                               (cons _key65673_ _val65672_))))))
                 (if (let () (declare (not safe)) (##pair? _g6565865665_))
                     (let ((_hd6566265678_
                            (let ()
                              (declare (not safe))
                              (##car _g6565865665_)))
                           (_tl6566365680_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6565865665_))))
                       (let* ((_key65683_ _hd6566265678_)
                              (_val65685_ _tl6566365680_))
                         (declare (not safe))
                         (_K6566165675_ _val65685_ _key65683_)))
                     (let () (declare (not safe)) (_E6566065669_)))))
             _properties65653_)))
    (define make-class-type-descriptor
      (lambda (_type-id65543_
               _type-name65544_
               _type-super65545_
               _precedence-list65546_
               _slot-vector65547_
               _properties65548_
               _constructor65549_
               _slot-table65550_
               _methods65551_)
        (letrec ((_make-props!65553_
                  (lambda (_key65622_)
                    (letrec* ((_ht65624_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!65625_
                               (lambda (_ht65646_ _slots65647_)
                                 (for-each
                                  (lambda (_g6564865650_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht65646_
                                       _g6564865650_
                                       '#t)))
                                  _slots65647_)))
                              (_put-alist!65626_
                               (lambda (_ht65635_ _key65636_ _alist65637_)
                                 (let ((_$e65639_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key65636_
                                           _alist65637_))))
                                   (if _$e65639_
                                       ((lambda (_g6564165643_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!65625_
                                             _ht65635_
                                             _g6564165643_)))
                                        _$e65639_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!65626_
                         _ht65624_
                         _key65622_
                         _properties65548_))
                      (for-each
                       (lambda (_mixin65628_)
                         (let ((_alist65630_
                                (##structure-ref
                                 _mixin65628_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist65630_))
                                   (let ((__tmp65889
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key65622_
                                             _alist65630_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp65889)))
                               (let ((__tmp65888
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin65628_))))
                                 (declare (not safe))
                                 (_put-slots!65625_ _ht65624_ __tmp65888))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!65626_
                                  _ht65624_
                                  _key65622_
                                  _alist65630_)))))
                       _precedence-list65546_)
                      _ht65624_))))
          (let* ((_transparent?65555_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties65548_)))
                 (_all-slots-printable?65560_
                  (let ((_$e65557_ _transparent?65555_))
                    (if _$e65557_
                        _$e65557_
                        (let ((__tmp65890
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties65548_))))
                          (declare (not safe))
                          (eq? '#t __tmp65890)))))
                 (_printable65562_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?65560_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65553_ 'print:))
                      '#f))
                 (_all-slots-equalable?65567_
                  (let ((_$e65564_ _transparent?65555_))
                    (if _$e65564_
                        _$e65564_
                        (let ((__tmp65891
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties65548_))))
                          (declare (not safe))
                          (eq? '#t __tmp65891)))))
                 (_equalable65569_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?65567_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65553_ 'equal:))
                      '#f))
                 (_first-new-field65571_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super65545_
                         'gerbil#class::t))
                      (let ((__tmp65892
                             (##structure-ref
                              _type-super65545_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp65892))
                      '1))
                 (_field-info-length65573_
                  (let ((__tmp65893
                         (let ((__tmp65894
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector65547_))))
                           (declare (not safe))
                           (##fx- __tmp65894 _first-new-field65571_))))
                    (declare (not safe))
                    (##fx* '3 __tmp65893)))
                 (_field-info65575_ (make-vector _field-info-length65573_ '#f))
                 (_struct?65577_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties65548_)))
                 (_final?65579_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties65548_)))
                 (_metaclass65587_
                  (let ((_metaclass6558065582_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties65548_))))
                    (if _metaclass6558065582_
                        (let ((_metaclass65585_ _metaclass6558065582_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass65585_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id65543_
                                       'metaclass:
                                       _metaclass65585_)))
                          _metaclass65585_)
                        '#f)))
                 (_system?65589_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties65548_)))
                 (_opaque?65594_
                  (let ((_$e65591_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?65567_))))
                    (if _$e65591_
                        _$e65591_
                        (if _type-super65545_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super65545_))
                            '#f))))
                 (_type-flags65596_
                  (let ((__tmp65899 (if _final?65579_ '0 type-flag-extensible))
                        (__tmp65898 (if _opaque?65594_ type-flag-opaque '0))
                        (__tmp65897
                         (if _struct?65577_ class-type-flag-struct '0))
                        (__tmp65896
                         (if _metaclass65587_ class-type-flag-metaclass '0))
                        (__tmp65895
                         (if _system?65589_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp65899
                             __tmp65898
                             __tmp65897
                             __tmp65896
                             __tmp65895)))
                 (_precedence-list65603_
                  (let ((_$e65598_ (memq t::t _precedence-list65546_)))
                    (if _$e65598_
                        ((lambda (_tail65601_)
                           (if (let ((__tmp65900 (cdr _tail65601_)))
                                 (declare (not safe))
                                 (null? __tmp65900))
                               _precedence-list65546_
                               (let ()
                                 (declare (not safe))
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _precedence-list65546_))))
                         _$e65598_)
                        (append _precedence-list65546_
                                (let ()
                                  (declare (not safe))
                                  (cons t::t '())))))))
            (let _loop65606_ ((_i65608_ _first-new-field65571_) (_j65609_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j65609_ _field-info-length65573_))
                  (let* ((_slot65611_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector65547_ _i65608_)))
                         (_flags65619_
                          (if _transparent?65555_
                              '0
                              (let ((__tmp65902
                                     (if (or _all-slots-printable?65560_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable65562_
                                                _slot65611_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp65901
                                     (if (or _all-slots-equalable?65567_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable65569_
                                                _slot65611_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp65902 __tmp65901)))))
                    (vector-set! _field-info65575_ _j65609_ _slot65611_)
                    (vector-set!
                     _field-info65575_
                     (let () (declare (not safe)) (##fx+ _j65609_ '1))
                     _flags65619_)
                    (let ((__tmp65904
                           (let () (declare (not safe)) (##fx+ _i65608_ '1)))
                          (__tmp65903
                           (let () (declare (not safe)) (##fx+ _j65609_ '3))))
                      (declare (not safe))
                      (_loop65606_ __tmp65904 __tmp65903)))
                  '#!void))
            (if _metaclass65587_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass65587_
                   _type-id65543_
                   _type-name65544_
                   _type-flags65596_
                   _type-super65545_
                   _field-info65575_
                   _precedence-list65603_
                   _slot-vector65547_
                   _slot-table65550_
                   _properties65548_
                   _constructor65549_
                   _methods65551_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id65543_
                   _type-name65544_
                   _type-flags65596_
                   _type-super65545_
                   _field-info65575_
                   _precedence-list65603_
                   _slot-vector65547_
                   _slot-table65550_
                   _properties65548_
                   _constructor65549_
                   _methods65551_)))))))
    (define class-type-id
      (lambda (_klass65541_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65541_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass65539_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65539_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass65536_ _val65537_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65536_ _val65537_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass65531_ _val65533_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65531_
           _val65533_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass65529_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65529_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass65527_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65527_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass65524_ _val65525_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65524_ _val65525_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass65519_ _val65521_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65519_
           _val65521_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass65517_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65517_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass65515_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65515_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass65512_ _val65513_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65512_ _val65513_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass65507_ _val65509_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65507_
           _val65509_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass65505_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65505_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass65503_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65503_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass65500_ _val65501_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65500_ _val65501_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass65495_ _val65497_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65495_
           _val65497_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass65493_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65493_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass65491_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65491_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass65488_ _val65489_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65488_ _val65489_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass65483_ _val65485_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65483_
           _val65485_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass65481_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65481_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass65479_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass65479_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass65476_ _val65477_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65476_
           _val65477_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass65471_ _val65473_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65471_
           _val65473_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass65469_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65469_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass65467_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65467_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass65464_ _val65465_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65464_
           _val65465_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass65459_ _val65461_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65459_
           _val65461_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass65457_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65457_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass65455_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65455_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass65452_ _val65453_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65452_ _val65453_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass65447_ _val65449_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65447_
           _val65449_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass65445_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65445_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass65443_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65443_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass65440_ _val65441_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65440_ _val65441_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass65435_ _val65437_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65435_
           _val65437_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass65433_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65433_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass65431_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65431_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass65428_ _val65429_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65428_
           _val65429_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass65423_ _val65425_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65423_
           _val65425_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass65421_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65421_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass65419_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65419_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass65416_ _val65417_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65416_ _val65417_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass65411_ _val65413_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65411_
           _val65413_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass65409_)
        (cdr (vector->list (##structure-ref _klass65409_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass65407_)
        (let ((__tmp65905
               (let ((__tmp65906
                      (##structure-ref _klass65407_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp65906))))
          (declare (not safe))
          (##fx- __tmp65905 '1))))
    (define class-type-seal!
      (lambda (_klass65405_)
        (let ((__tmp65907
               (let ((__tmp65908
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65405_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65908))))
          (declare (not safe))
          (##structure-set!
           _klass65405_
           __tmp65907
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass65403_)
        (let ((__tmp65909
               (let ((__tmp65910
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65403_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65910))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65403_
           __tmp65909
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct65394_ _maybe-super-struct65395_)
        (let ((_maybe-super-struct-id65397_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct65395_))))
          (let _lp65399_ ((_super-struct65401_ _maybe-sub-struct65394_))
            (if (let () (declare (not safe)) (not _super-struct65401_))
                '#f
                (if (let ((__tmp65912
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct65401_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id65397_ __tmp65912))
                    '#t
                    (let ((__tmp65911
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct65401_))))
                      (declare (not safe))
                      (_lp65399_ __tmp65911))))))))
    (define base-struct/1
      (lambda (_klass65392_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass65392_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass65392_))
                _klass65392_
                (let () (declare (not safe)) (##type-super _klass65392_)))
            (if (let () (declare (not safe)) (not _klass65392_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass65392_))))))
    (define base-struct/2
      (lambda (_klass165380_ _klass265381_)
        (let ((_s165383_
               (let () (declare (not safe)) (base-struct/1 _klass165380_)))
              (_s265384_
               (let () (declare (not safe)) (base-struct/1 _klass265381_))))
          (if (or (let () (declare (not safe)) (not _s165383_))
                  (and _s265384_
                       (let ()
                         (declare (not safe))
                         (substruct? _s165383_ _s265384_))))
              _s265384_
              (if (or (let () (declare (not safe)) (not _s265384_))
                      (and _s165383_
                           (let ()
                             (declare (not safe))
                             (substruct? _s265384_ _s165383_))))
                  _s165383_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass165380_
                           _klass265381_
                           _s165383_
                           _s265384_)))))))
    (define base-struct/list
      (lambda (_all-supers65264_)
        (let* ((_all-supers6526565290_ _all-supers65264_)
               (_E6527065294_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6526565290_)))))
          (let ((_K6528865377_ (lambda () '#f))
                (_K6528565363_
                 (lambda (_x65361_)
                   (let () (declare (not safe)) (base-struct/1 _x65361_))))
                (_K6528065340_
                 (lambda (_y65337_ _x65338_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x65338_ _y65337_))))
                (_K6527165301_
                 (lambda (_y65298_ _x65299_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x65299_ _y65298_)))))
            (let* ((___match6585865859_
                    (lambda (_hd6527265304_ _tl6527365306_)
                      (let ((_x65309_ _hd6527265304_))
                        (letrec ((_splice-rest6527565311_
                                  (lambda (_rest6527965318_ _y65320_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6527965318_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6527165301_ _y65320_ _x65309_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6527065294_)))))
                                 (_splice-try6527765313_
                                  (lambda (_hd6527865322_
                                           _rest6527965324_
                                           _y6527465325_)
                                    (let ((_y65328_ _hd6527865322_))
                                      (let ((__tmp65914
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6527965324_)))
                                            (__tmp65913
                                             (let ()
                                               (declare (not safe))
                                               (cons _y65328_ _y6527465325_))))
                                        (declare (not safe))
                                        (_splice-loop6527665315_
                                         __tmp65914
                                         __tmp65913)))))
                                 (_splice-loop6527665315_
                                  (lambda (_rest6527965330_ _y6527465331_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6527965330_))
                                        (let ((__tmp65916
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6527965330_))))
                                          (declare (not safe))
                                          (_splice-try6527765313_
                                           __tmp65916
                                           _rest6527965330_
                                           _y6527465331_))
                                        (let ((__tmp65915
                                               (reverse _y6527465331_)))
                                          (declare (not safe))
                                          (_splice-rest6527565311_
                                           _rest6527965330_
                                           __tmp65915))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6527665315_ _tl6527365306_ '()))))))
                   (_try-match6526765373_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6526565290_))
                          (let ((_tl6528765368_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6526565290_)))
                                (_hd6528665366_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6526565290_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6528765368_))
                                (let ((_x65371_ _hd6528665366_))
                                  (declare (not safe))
                                  (base-struct/1 _x65371_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6528765368_))
                                    (let ((_tl6528465352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6528765368_)))
                                          (_hd6528365350_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6528765368_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6528465352_))
                                          (let ((_x65348_ _hd6528665366_)
                                                (_y65355_ _hd6528365350_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6528065340_
                                               _y65355_
                                               _x65348_)))
                                          (___match6585865859_
                                           _hd6528665366_
                                           _tl6528765368_)))
                                    (___match6585865859_
                                     _hd6528665366_
                                     _tl6528765368_))))
                          (let () (declare (not safe)) (_E6527065294_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6526565290_))
                  (let () (declare (not safe)) (_K6528865377_))
                  (let () (declare (not safe)) (_try-match6526765373_))))))))
    (define base-struct
      (lambda _all-supers65262_
        (let () (declare (not safe)) (base-struct/list _all-supers65262_))))
    (define find-super-constructor
      (lambda (_super65214_)
        (let _lp65216_ ((_rest65218_ _super65214_) (_constructor65219_ '#f))
          (let* ((_rest6522065228_ _rest65218_)
                 (_else6522265236_ (lambda () _constructor65219_))
                 (_K6522465250_
                  (lambda (_rest65239_ _hd65240_)
                    (let ((_$e65242_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd65240_
                              '10
                              class::t
                              '#f))))
                      (if _$e65242_
                          ((lambda (_xconstructor65245_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor65219_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor65219_
                                            _xconstructor65245_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp65216_ _rest65239_ _xconstructor65245_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor65219_
                                          _xconstructor65245_))))
                           _$e65242_)
                          (let ()
                            (declare (not safe))
                            (_lp65216_ _rest65239_ _constructor65219_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6522065228_))
                (let ((_hd6522565253_
                       (let () (declare (not safe)) (##car _rest6522065228_)))
                      (_tl6522665255_
                       (let () (declare (not safe)) (##cdr _rest6522065228_))))
                  (let* ((_hd65258_ _hd6522565253_)
                         (_rest65260_ _tl6522665255_))
                    (declare (not safe))
                    (_K6522465250_ _rest65260_ _hd65258_)))
                (let () (declare (not safe)) (_else6522265236_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list65190_ _direct-slots65191_)
        (let* ((_next-slot65193_ '1)
               (_slot-table65195_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots65197_ '(__class))
               (_process-slot65201_
                (lambda (_slot65199_)
                  (if (let () (declare (not safe)) (symbol? _slot65199_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot65199_)))
                  (if (let ((__tmp65918
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table65195_
                                _slot65199_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp65918 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65195_
                           _slot65199_
                           _next-slot65193_))
                        (let ((__tmp65917 (symbol->keyword _slot65199_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65195_
                           __tmp65917
                           _next-slot65193_))
                        (set! _r-slots65197_
                              (let ()
                                (declare (not safe))
                                (cons _slot65199_ _r-slots65197_)))
                        (set! _next-slot65193_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot65193_ '1))))
                      '#!void)))
               (_process-slots65207_
                (lambda (_g6520265204_)
                  (for-each _process-slot65201_ _g6520265204_))))
          (for-each
           (lambda (_mixin65210_)
             (let ((__tmp65919
                    (let ((__tmp65920
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin65210_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp65920 '()))))
               (declare (not safe))
               (_process-slots65207_ __tmp65919)))
           (reverse _class-precedence-list65190_))
          (let ()
            (declare (not safe))
            (_process-slots65207_ _direct-slots65191_))
          (let ((_slot-vector65212_ (list->vector (reverse _r-slots65197_))))
            (values _slot-vector65212_ _slot-table65195_)))))
    (define make-class-type
      (lambda (_id65109_
               _name65110_
               _direct-supers65111_
               _direct-slots65112_
               _properties65113_
               _constructor65114_)
        (let ((_$e65119_
               (let ((__tmp65921
                      (lambda (_$obj65116_)
                        (let ((__tmp65922
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj65116_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp65922)))))
                 (declare (not safe))
                 (find __tmp65921 _direct-supers65111_))))
          (if _$e65119_
              ((lambda (_g6512165123_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6512165123_)))
               _$e65119_)
              (let ((_$e65126_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers65111_))))
                (if _$e65126_
                    ((lambda (_g6512865130_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6512865130_)))
                     _$e65126_)
                    '#!void))))
        (let ((_g65923_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers65111_))))
          (begin
            (let ((_g65924_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g65923_) (##vector-length _g65923_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g65924_ 2)))
                  (error "Context expects 2 values" _g65924_)))
            (let ((_precedence-list65133_
                   (let () (declare (not safe)) (##vector-ref _g65923_ 0)))
                  (_struct-super65134_
                   (let () (declare (not safe)) (##vector-ref _g65923_ 1))))
              (let ((_g65925_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list65133_
                        _direct-slots65112_))))
                (begin
                  (let ((_g65926_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g65925_)
                               (##vector-length _g65925_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g65926_ 2)))
                        (error "Context expects 2 values" _g65926_)))
                  (let ((_slot-vector65136_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65925_ 0)))
                        (_slot-table65137_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65925_ 1))))
                    (let* ((_properties65139_
                            (let ((__tmp65929
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots65112_)))
                                  (__tmp65927
                                   (let ((__tmp65928
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers65111_))))
                                     (declare (not safe))
                                     (cons __tmp65928 _properties65113_))))
                              (declare (not safe))
                              (cons __tmp65929 __tmp65927)))
                           (_constructor*65144_
                            (let ((_$e65141_ _constructor65114_))
                              (if _$e65141_
                                  _$e65141_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers65111_)))))
                           (_precedence-list65187_
                            (if (or (let ()
                                      (declare (not safe))
                                      (assgetq__0 'system: _properties65139_))
                                    (memq object::t _precedence-list65133_))
                                _precedence-list65133_
                                (let _loop65149_ ((_tail65151_
                                                   _precedence-list65133_)
                                                  (_head65152_ '()))
                                  (let* ((_tail6515365161_ _tail65151_)
                                         (_else6515565169_
                                          (lambda ()
                                            (let ((__tmp65930
                                                   (let ((__tmp65931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons t::t '()))))
                                                     (declare (not safe))
                                                     (cons object::t
                                                           __tmp65931))))
                                              (declare (not safe))
                                              (foldl1 cons
                                                      __tmp65930
                                                      _head65152_))))
                                         (_K6515765175_
                                          (lambda (_rest65172_ _hd65173_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? _hd65173_ t::t))
                                                (let ((__tmp65933
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons object::t
                                                               _tail65151_))))
                                                  (declare (not safe))
                                                  (foldl1 cons
                                                          __tmp65933
                                                          _head65152_))
                                                (let ((__tmp65932
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd65173_
                                                               _head65152_))))
                                                  (declare (not safe))
                                                  (_loop65149_
                                                   _rest65172_
                                                   __tmp65932))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tail6515365161_))
                                        (let ((_hd6515865178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tail6515365161_)))
                                              (_tl6515965180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tail6515365161_))))
                                          (let* ((_hd65183_ _hd6515865178_)
                                                 (_rest65185_ _tl6515965180_))
                                            (declare (not safe))
                                            (_K6515765175_
                                             _rest65185_
                                             _hd65183_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else6515565169_))))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id65109_
                         _name65110_
                         _struct-super65134_
                         _precedence-list65187_
                         _slot-vector65136_
                         _properties65139_
                         _constructor*65144_
                         _slot-table65137_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass65107_)
        (let ((__tmp65934
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass65107_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass65107_ __tmp65934))))
    (define compute-precedence-list
      (lambda (_direct-supers65105_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers65105_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass65089_)
        (let ((_tid65091_
               (let () (declare (not safe)) (##type-id _klass65089_))))
          (if (let () (declare (not safe)) (class-type-final? _klass65089_))
              (lambda (_g6509265094_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6509265094_ _tid65091_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass65089_))
                  (lambda (_g6509665098_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6509665098_ _tid65091_)))
                  (lambda (_g6510065102_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass65089_ _g6510065102_))))))))
    (define if-class-slot-field
      (lambda (_klass65078_
               _slot65079_
               _if-final65080_
               _if-struct65081_
               _if-struct-field65082_
               _if-class-slot65083_)
        (let ((_field65085_
               (let ((__tmp65935
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass65078_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp65935 _slot65079_ '#f))))
          (if (let () (declare (not safe)) (not _field65085_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass65078_
                       'slot:
                       _slot65079_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass65078_))
                  (_if-final65080_ _klass65078_ _slot65079_ _field65085_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass65078_))
                      (_if-struct65081_ _klass65078_ _slot65079_ _field65085_)
                      (if (let ((_strukt65087_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass65078_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt65087_
                                    'gerbil#class::t))
                                 (let ((__tmp65936
                                        (let ((__tmp65937
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt65087_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp65937))))
                                   (declare (not safe))
                                   (##fx< _field65085_ __tmp65936))))
                          (_if-struct-field65082_
                           _klass65078_
                           _slot65079_
                           _field65085_)
                          (_if-class-slot65083_
                           _klass65078_
                           _slot65079_
                           _field65085_))))))))
    (define make-class-slot-accessor
      (lambda (_klass65075_ _slot65076_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65075_
           _slot65076_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass65072_ _slot65073_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65072_
           _slot65073_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass65069_ _slot65070_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65069_
           _slot65070_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass65066_ _slot65067_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65066_
           _slot65067_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object65050_ _class65051_ _slot65052_)
        (apply error
               '"not an instance"
               'object:
               _object65050_
               'class:
               _class65051_
               (if _slot65052_
                   (let ((__tmp65938
                          (let ()
                            (declare (not safe))
                            (cons _slot65052_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp65938))
                   '()))))
    (define not-an-instance__0
      (lambda (_object65057_ _class65058_)
        (let ((_slot65060_ '#f))
          (declare (not safe))
          (not-an-instance__% _object65057_ _class65058_ _slot65060_))))
    (define not-an-instance
      (lambda _g65940_
        (let ((_g65939_ (let () (declare (not safe)) (##length _g65940_))))
          (cond ((let () (declare (not safe)) (##fx= _g65939_ 2))
                 (apply (lambda (_object65057_ _class65058_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object65057_ _class65058_)))
                        _g65940_))
                ((let () (declare (not safe)) (##fx= _g65939_ 3))
                 (apply (lambda (_object65062_ _class65063_ _slot65064_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object65062_
                             _class65063_
                             _slot65064_)))
                        _g65940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g65940_))))))
    (define make-final-slot-accessor
      (lambda (_klass65043_ _slot65044_ _field65045_)
        (lambda (_obj65047_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj65047_
             _field65045_
             _klass65043_
             _slot65044_)))))
    (define make-final-slot-mutator
      (lambda (_klass65036_ _slot65037_ _field65038_)
        (lambda (_obj65040_ _val65041_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj65040_
             _val65041_
             _field65038_
             _klass65036_
             _slot65037_)))))
    (define make-struct-slot-accessor
      (lambda (_klass65030_ _slot65031_ _field65032_)
        (lambda (_obj65034_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj65034_
             _field65032_
             _klass65030_
             _slot65031_)))))
    (define make-struct-slot-mutator
      (lambda (_klass65023_ _slot65024_ _field65025_)
        (lambda (_obj65027_ _val65028_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj65027_
             _val65028_
             _field65025_
             _klass65023_
             _slot65024_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass65017_ _slot65018_ _field65019_)
        (lambda (_obj65021_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj65021_
             _field65019_
             _klass65017_
             _slot65018_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass65010_ _slot65011_ _field65012_)
        (lambda (_obj65014_ _val65015_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj65014_
             _val65015_
             _field65012_
             _klass65010_
             _slot65011_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass65004_ _slot65005_ _field65006_)
        (lambda (_obj65008_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass65004_ _obj65008_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj65008_ _field65006_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj65008_ _klass65004_ _slot65005_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64997_ _slot64998_ _field64999_)
        (lambda (_obj65001_ _val65002_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64997_ _obj65001_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj65001_ _field64999_ _val65002_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj65001_ _klass64997_ _slot64998_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64991_ _slot64992_ _field64993_)
        (lambda (_obj64995_)
          (if (let ((__tmp65941
                     (let () (declare (not safe)) (##type-id _klass64991_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64995_ __tmp65941))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64995_ _field64993_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64991_ _obj64995_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64995_ _slot64992_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64995_
                     _klass64991_
                     _slot64992_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64984_ _slot64985_ _field64986_)
        (lambda (_obj64988_ _val64989_)
          (if (let ((__tmp65942
                     (let () (declare (not safe)) (##type-id _klass64984_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64988_ __tmp65942))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64988_ _field64986_ _val64989_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64984_ _obj64988_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64988_ _slot64985_ _val64989_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64988_
                     _klass64984_
                     _slot64985_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64978_ _slot64979_ _field64980_)
        (lambda (_obj64982_)
          (if (let ((__tmp65943
                     (let () (declare (not safe)) (##type-id _klass64978_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64982_ __tmp65943))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64982_ _field64980_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64982_ _slot64979_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64971_ _slot64972_ _field64973_)
        (lambda (_obj64975_ _val64976_)
          (if (let ((__tmp65944
                     (let () (declare (not safe)) (##type-id _klass64971_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64975_ __tmp65944))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64975_ _field64973_ _val64976_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64975_ _slot64972_ _val64976_))))))
    (define class-slot-offset
      (lambda (_klass64968_ _slot64969_)
        (if (let () (declare (not safe)) (symbolic? _slot64969_))
            (let ((__tmp65945
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _klass64968_
                      '8
                      class::t
                      '#f))))
              (declare (not safe))
              (symbolic-table-ref __tmp65945 _slot64969_ '#f))
            (let ()
              (declare (not safe))
              (error '"slot must be a symbol or keyword" _slot64969_)))))
    (define class-slot-ref
      (lambda (_klass64962_ _obj64963_ _slot64964_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64962_ _obj64963_))
            (let ((_off64966_
                   (let ((__tmp65946
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj64963_))))
                     (declare (not safe))
                     (class-slot-offset __tmp65946 _slot64964_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64963_
               _off64966_
               _klass64962_
               _slot64964_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64963_ _klass64962_)))))
    (define class-slot-set!
      (lambda (_klass64955_ _obj64956_ _slot64957_ _val64958_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64955_ _obj64956_))
            (let ((_off64960_
                   (let ((__tmp65947
                          (let ()
                            (declare (not safe))
                            (##structure-type _obj64956_))))
                     (declare (not safe))
                     (class-slot-offset __tmp65947 _slot64957_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64956_
               _val64958_
               _off64960_
               _klass64955_
               _slot64957_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64956_ _klass64955_)))))
    (define unchecked-field-ref
      (lambda (_obj64952_ _off64953_)
        (let ((__tmp65948
               (let () (declare (not safe)) (##structure-type _obj64952_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64952_ _off64953_ __tmp65948 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64948_ _off64949_ _val64950_)
        (let ((__tmp65949
               (let () (declare (not safe)) (##structure-type _obj64948_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64948_
           _val64950_
           _off64949_
           __tmp65949
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj64945_ _slot64946_)
        (let ((__tmp65950
               (let ((__tmp65951
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64945_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65951 _slot64946_))))
          (declare (not safe))
          (unchecked-field-ref _obj64945_ __tmp65950))))
    (define unchecked-slot-set!
      (lambda (_obj64941_ _slot64942_ _val64943_)
        (let ((__tmp65952
               (let ((__tmp65953
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64941_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65953 _slot64942_))))
          (declare (not safe))
          (unchecked-field-set! _obj64941_ __tmp65952 _val64943_))))
    (define slot-ref__%
      (lambda (_obj64917_ _slot64918_ _E64919_)
        (let* ((_klass64921_
                (let () (declare (not safe)) (class-of _obj64917_)))
               (_$e64924_
                (let ()
                  (declare (not safe))
                  (class-slot-offset _klass64921_ _slot64918_))))
          (if _$e64924_
              ((lambda (_off64927_)
                 (let ()
                   (declare (not safe))
                   (unchecked-field-ref _obj64917_ _off64927_)))
               _$e64924_)
              (_E64919_ _obj64917_ _slot64918_)))))
    (define slot-ref__0
      (lambda (_obj64932_ _slot64933_)
        (let ((_E64935_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj64932_ _slot64933_ _E64935_))))
    (define slot-ref
      (lambda _g65955_
        (let ((_g65954_ (let () (declare (not safe)) (##length _g65955_))))
          (cond ((let () (declare (not safe)) (##fx= _g65954_ 2))
                 (apply (lambda (_obj64932_ _slot64933_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj64932_ _slot64933_)))
                        _g65955_))
                ((let () (declare (not safe)) (##fx= _g65954_ 3))
                 (apply (lambda (_obj64937_ _slot64938_ _E64939_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj64937_ _slot64938_ _E64939_)))
                        _g65955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g65955_))))))
    (define slot-set!__%
      (lambda (_obj64889_ _slot64890_ _val64891_ _E64892_)
        (let* ((_klass64894_
                (let () (declare (not safe)) (class-of _obj64889_)))
               (_$e64897_
                (let ()
                  (declare (not safe))
                  (class-slot-offset _klass64894_ _slot64890_))))
          (if _$e64897_
              ((lambda (_off64900_)
                 (let ()
                   (declare (not safe))
                   (unchecked-field-set! _obj64889_ _off64900_ _val64891_)))
               _$e64897_)
              (_E64892_ _obj64889_ _slot64890_)))))
    (define slot-set!__0
      (lambda (_obj64905_ _slot64906_ _val64907_)
        (let ((_E64909_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj64905_ _slot64906_ _val64907_ _E64909_))))
    (define slot-set!
      (lambda _g65957_
        (let ((_g65956_ (let () (declare (not safe)) (##length _g65957_))))
          (cond ((let () (declare (not safe)) (##fx= _g65956_ 3))
                 (apply (lambda (_obj64905_ _slot64906_ _val64907_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj64905_ _slot64906_ _val64907_)))
                        _g65957_))
                ((let () (declare (not safe)) (##fx= _g65956_ 4))
                 (apply (lambda (_obj64911_ _slot64912_ _val64913_ _E64914_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj64911_
                             _slot64912_
                             _val64913_
                             _E64914_)))
                        _g65957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g65957_))))))
    (define __slot-error
      (lambda (_obj64885_ _slot64886_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj64885_ 'slot: _slot64886_))))
    (define subclass?
      (lambda (_maybe-sub-class64875_ _maybe-super-class64876_)
        (let* ((_maybe-super-class-id64878_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class64876_)))
               (_$e64880_
                (let ((__tmp65958
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class64875_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id64878_ __tmp65958))))
          (if _$e64880_
              _$e64880_
              (let ((__tmp65960
                     (lambda (_super-class64883_)
                       (let ((__tmp65961
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class64883_))))
                         (declare (not safe))
                         (eq? __tmp65961 _maybe-super-class-id64878_))))
                    (__tmp65959
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class64875_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp65960 __tmp65959))))))
    (define object?
      (lambda (_o64873_)
        (if (let () (declare (not safe)) (##structure? _o64873_))
            (let ((__tmp65962
                   (let () (declare (not safe)) (##structure-type _o64873_))))
              (declare (not safe))
              (##structure-instance-of? __tmp65962 'gerbil#class::t))
            '#f)))
    (define object-type
      (lambda (_o64869_)
        (if (let () (declare (not safe)) (##structure? _o64869_))
            (let ((_klass64871_
                   (let () (declare (not safe)) (##structure-type _o64869_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass64871_ 'gerbil#class::t))
                  _klass64871_
                  (let ()
                    (declare (not safe))
                    (error '"not an object" _o64869_ _klass64871_))))
            (let () (declare (not safe)) (error '"not an object" _o64869_)))))
    (define direct-instance?
      (lambda (_klass64866_ _obj64867_)
        (let ((__tmp65963
               (let () (declare (not safe)) (##type-id _klass64866_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj64867_ __tmp65963))))
    (define struct-instance?
      (lambda (_klass64863_ _obj64864_)
        (let ((__tmp65964
               (let () (declare (not safe)) (##type-id _klass64863_))))
          (declare (not safe))
          (##structure-instance-of? _obj64864_ __tmp65964))))
    (define class-instance?
      (lambda (_klass64858_ _obj64859_)
        (let ((_type64861_
               (let () (declare (not safe)) (class-of _obj64859_))))
          (declare (not safe))
          (subclass? _type64861_ _klass64858_))))
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
                           (let ((__tmp65966
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj64846_))))
                             (declare (not safe))
                             (##fx- __tmp65966 '1))))
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
                (let ((__tmp65965
                       (let () (declare (not safe)) (##fx- _i64851_ '1))))
                  (declare (not safe))
                  (_loop64849_ __tmp65965)))
              _obj64846_))))
    (define new-instance
      (lambda (_klass64844_)
        (let ((__obj65860
               (let ((__tmp65967
                      (let ((__tmp65968
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64844_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp65968))))
                 (declare (not safe))
                 (##make-structure _klass64844_ __tmp65967))))
          (let () (declare (not safe)) (object-fill! __obj65860 '#f))
          __obj65860)))
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
                  (if (let ((__tmp65973
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass64834_))))
                        (declare (not safe))
                        (not __tmp65973))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass64834_
                         _obj64837_
                         _args64835_))
                      (if (let ((__tmp65971
                                 (let ((__tmp65972
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj64837_))))
                                   (declare (not safe))
                                   (##fx- __tmp65972 '1)))
                                (__tmp65970 (length _args64835_)))
                            (declare (not safe))
                            (##fx= __tmp65971 __tmp65970))
                          (apply ##structure _klass64834_ _args64835_)
                          (let ((__tmp65969
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass64834_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass64834_
                                   'slots:
                                   __tmp65969
                                   'args:
                                   _args64835_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj64831_ . _args64832_)
        (if (let ((__tmp65975 (length _args64832_))
                  (__tmp65974
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj64831_))))
              (declare (not safe))
              (##fx< __tmp65975 __tmp65974))
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
                    (let ((__tmp65976
                           (let () (declare (not safe)) (##fx+ _k64795_ '1))))
                      (declare (not safe))
                      (_lp64793_ __tmp65976 _rest64816_)))))
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
        (let ((__tmp65977
               (let () (declare (not safe)) (##structure-type _obj64787_))))
          (declare (not safe))
          (__class-instance-init! __tmp65977 _obj64787_ _args64788_))))
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
        (if (let () (declare (not safe)) (##structure? _obj64708_))
            (let () (declare (not safe)) (##vector->list _obj64708_))
            (let ()
              (declare (not safe))
              (error '"not a structure" _obj64708_)))))
    (define class->list
      (lambda (_obj64695_)
        (if (let () (declare (not safe)) (object? _obj64695_))
            (let ((_klass64697_
                   (let ()
                     (declare (not safe))
                     (##structure-type _obj64695_))))
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
                                       (let ((__tmp65983
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector64699_))))
                                         (declare (not safe))
                                         (##fx- __tmp65983 '1)))
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
                            (let ((__tmp65982
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index64703_ '1)))
                                  (__tmp65978
                                   (let ((__tmp65981
                                          (symbol->keyword _slot64706_))
                                         (__tmp65979
                                          (let ((__tmp65980
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj64695_
                                                    _index64703_))))
                                            (declare (not safe))
                                            (cons __tmp65980 _plist64704_))))
                                     (declare (not safe))
                                     (cons __tmp65981 __tmp65979))))
                              (declare (not safe))
                              (_loop64701_ __tmp65982 __tmp65978))))))
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
        (let ((__tmp65984 (let () (declare (not safe)) (class-of _obj64683_))))
          (declare (not safe))
          (find-method __tmp65984 _obj64683_ _id64684_))))
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
        (if (let ((__tmp65986
                   (let () (declare (not safe)) (symbol? _id64658_))))
              (declare (not safe))
              (not __tmp65986))
            (let ()
              (declare (not safe))
              (error '"method id must be a symbol" 'method: _id64658_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _klass64656_ 'gerbil#class::t))
                (let ()
                  (declare (not safe))
                  (__find-method _klass64656_ _obj64657_ _id64658_))
                (if (let () (declare (not safe)) (##type? _klass64656_))
                    (let ((__tmp65985
                           (let ()
                             (declare (not safe))
                             (__shadow-class _klass64656_))))
                      (declare (not safe))
                      (__find-method __tmp65985 _obj64657_ _id64658_))
                    (let ()
                      (declare (not safe))
                      (error '"bad class; must be a class-type or builtin type"
                             'class:
                             _klass64656_
                             'method:
                             _id64658_)))))))
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
        (let ((__tmp65987
               (lambda (_g6464464646_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6464464646_ _obj64642_ _id64643_)))))
          (declare (not safe))
          (ormap1 __tmp65987 _mixins64641_))))
    (define direct-method-ref
      (lambda (_klass64618_ _obj64619_ _id64620_)
        (letrec ((_metaclass-resolve-method64622_
                  (lambda ()
                    (let ((__method65861
                           (let ()
                             (declare (not safe))
                             (method-ref _klass64618_ 'direct-method-ref))))
                      (if __method65861
                          (__method65861 _klass64618_ _obj64619_ _id64620_)
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
                      (let ((__tmp65989
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64618_
                                '11
                                class::t
                                '#f)))
                            (__tmp65988 (if _method64638_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp65989 _id64620_ __tmp65988))
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
        (let ((__tmp65990 (##structure-ref _klass64614_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp65990 _obj64615_ _id64616_))))
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
                        (begin
                          (let ()
                            (declare (not safe))
                            (symbolic-table-set!
                             _ht64598_
                             _id64588_
                             _proc64589_))
                          '#!void)))))
          (if (let () (declare (not safe)) (procedure? _proc64589_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc64589_)))
          (if (let () (declare (not safe)) (symbol? _id64588_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method id; expected symbol" _id64588_)))
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
                  (let ((__tmp65991
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass64587_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp65991
                     _id64588_
                     _proc64589_
                     _rebind?64590_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass64587_)))))))
    (define bind-method!__0
      (lambda (_klass64603_ _id64604_ _proc64605_)
        (let ((_rebind?64607_ '#f))
          (declare (not safe))
          (bind-method!__%
           _klass64603_
           _id64604_
           _proc64605_
           _rebind?64607_))))
    (define bind-method!
      (lambda _g65993_
        (let ((_g65992_ (let () (declare (not safe)) (##length _g65993_))))
          (cond ((let () (declare (not safe)) (##fx= _g65992_ 3))
                 (apply (lambda (_klass64603_ _id64604_ _proc64605_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass64603_
                             _id64604_
                             _proc64605_)))
                        _g65993_))
                ((let () (declare (not safe)) (##fx= _g65992_ 4))
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
                        _g65993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g65993_))))))
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
      (lambda _g65995_
        (let ((_g65994_ (let () (declare (not safe)) (##length _g65995_))))
          (cond ((let () (declare (not safe)) (##fx= _g65994_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g65995_))
                ((let () (declare (not safe)) (##fx= _g65994_ 1))
                 (apply (lambda (_size-hint64579_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint64579_)))
                        _g65995_))
                ((let () (declare (not safe)) (##fx= _g65994_ 2))
                 (apply (lambda (_size-hint64583_ _seed64584_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint64583_
                             _seed64584_)))
                        _g65995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g65995_))))))
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
                (if (let ((__tmp66002 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64554_ __tmp66002))
                    _default64526_
                    (if (let ((__tmp66001 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64554_ __tmp66001))
                        (let ((__tmp66000
                               (let ((_next-probe64557_
                                      (fx+ _start64540_
                                           _i64549_
                                           (fx* _i64549_ _i64549_))))
                                 (fxmodulo _next-probe64557_ _size64534_)))
                              (__tmp65999 (fx+ _i64549_ '1))
                              (__tmp65998
                               (let ((_$e64560_ _deleted64551_))
                                 (if _$e64560_ _$e64560_ _probe64547_))))
                          (declare (not safe))
                          (_loop64544_ __tmp66000 __tmp65999 __tmp65998))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64525_ _k64554_))
                            (vector-ref _table64528_ (fx+ _probe64547_ '1))
                            (let ((__tmp65997
                                   (let ((_next-probe64563_
                                          (fx+ _start64540_
                                               _i64549_
                                               (fx* _i64549_ _i64549_))))
                                     (fxmodulo _next-probe64563_ _size64534_)))
                                  (__tmp65996 (fx+ _i64549_ '1)))
                              (declare (not safe))
                              (_loop64544_
                               __tmp65997
                               __tmp65996
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
                (if (let ((__tmp66012 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64506_ __tmp66012))
                    (if _deleted64503_
                        (begin
                          (vector-set! _table64480_ _deleted64503_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _deleted64503_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp66011
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp66011)))))
                        (begin
                          (vector-set! _table64480_ _probe64499_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _probe64499_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp66009
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64475_ __tmp66009))
                             (let ((__tmp66010
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp66010))))))
                    (if (let ((__tmp66008 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64506_ __tmp66008))
                        (let ((__tmp66007
                               (let ((_next-probe64511_
                                      (fx+ _start64492_
                                           _i64501_
                                           (fx* _i64501_ _i64501_))))
                                 (fxmodulo _next-probe64511_ _size64486_)))
                              (__tmp66006 (fx+ _i64501_ '1))
                              (__tmp66005
                               (let ((_$e64514_ _deleted64503_))
                                 (if _$e64514_ _$e64514_ _probe64499_))))
                          (declare (not safe))
                          (_loop64496_ __tmp66007 __tmp66006 __tmp66005))
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
                            (let ((__tmp66004
                                   (let ((_next-probe64517_
                                          (fx+ _start64492_
                                               _i64501_
                                               (fx* _i64501_ _i64501_))))
                                     (fxmodulo _next-probe64517_ _size64486_)))
                                  (__tmp66003 (fx+ _i64501_ '1)))
                              (declare (not safe))
                              (_loop64496_
                               __tmp66004
                               __tmp66003
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
                (if (let ((__tmp66022 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64456_ __tmp66022))
                    (if _deleted64453_
                        (begin
                          (vector-set! _table64430_ _deleted64453_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _deleted64453_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp66021
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp66021)))))
                        (begin
                          (vector-set! _table64430_ _probe64449_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _probe64449_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp66019
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64424_ __tmp66019))
                             (let ((__tmp66020
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp66020))))))
                    (if (let ((__tmp66018 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64456_ __tmp66018))
                        (let ((__tmp66017
                               (let ((_next-probe64461_
                                      (fx+ _start64442_
                                           _i64451_
                                           (fx* _i64451_ _i64451_))))
                                 (fxmodulo _next-probe64461_ _size64436_)))
                              (__tmp66016 (fx+ _i64451_ '1))
                              (__tmp66015
                               (let ((_$e64464_ _deleted64453_))
                                 (if _$e64464_ _$e64464_ _probe64449_))))
                          (declare (not safe))
                          (_loop64446_ __tmp66017 __tmp66016 __tmp66015))
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
                            (let ((__tmp66014
                                   (let ((_next-probe64467_
                                          (fx+ _start64442_
                                               _i64451_
                                               (fx* _i64451_ _i64451_))))
                                     (fxmodulo _next-probe64467_ _size64436_)))
                                  (__tmp66013 (fx+ _i64451_ '1)))
                              (declare (not safe))
                              (_loop64446_
                               __tmp66014
                               __tmp66013
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
                (if (let ((__tmp66029 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64414_ __tmp66029))
                    '#!void
                    (if (let ((__tmp66028 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64414_ __tmp66028))
                        (let ((__tmp66027
                               (let ((_next-probe64417_
                                      (fx+ _start64402_
                                           _i64411_
                                           (fx* _i64411_ _i64411_))))
                                 (fxmodulo _next-probe64417_ _size64396_)))
                              (__tmp66026 (fx+ _i64411_ '1)))
                          (declare (not safe))
                          (_loop64406_ __tmp66027 __tmp66026))
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
                                 (let ((__tmp66025
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64383_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64383_
                                    __tmp66025)))))
                            (let ((__tmp66024
                                   (let ((_next-probe64421_
                                          (fx+ _start64402_
                                               _i64411_
                                               (fx* _i64411_ _i64411_))))
                                     (fxmodulo _next-probe64421_ _size64396_)))
                                  (__tmp66023 (fx+ _i64411_ '1)))
                              (declare (not safe))
                              (_loop64406_ __tmp66024 __tmp66023)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc64374_ _specializer64375_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64379_ ()
            (if (let ((__tmp66030
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66030 '0))
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
            (if (let ((__tmp66031
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66031 '0))
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
        (let ((__tmp66032
               (let () (declare (not safe)) (##type-id _klass64362_))))
          (declare (not safe))
          (symbolic-hash __tmp66032))))
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
      (lambda _g66034_
        (let ((_g66033_ (let () (declare (not safe)) (##length _g66034_))))
          (cond ((let () (declare (not safe)) (##fx= _g66033_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g66034_))
                ((let () (declare (not safe)) (##fx= _g66033_ 1))
                 (apply (lambda (_size-hint64355_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint64355_)))
                        _g66034_))
                ((let () (declare (not safe)) (##fx= _g66033_ 2))
                 (apply (lambda (_size-hint64359_ _seed64360_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint64359_
                             _seed64360_)))
                        _g66034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g66034_))))))
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
                (if (let ((__tmp66041 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64330_ __tmp66041))
                    _default64302_
                    (if (let ((__tmp66040 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64330_ __tmp66040))
                        (let ((__tmp66039
                               (let ((_next-probe64333_
                                      (fx+ _start64316_
                                           _i64325_
                                           (fx* _i64325_ _i64325_))))
                                 (fxmodulo _next-probe64333_ _size64310_)))
                              (__tmp66038 (fx+ _i64325_ '1))
                              (__tmp66037
                               (let ((_$e64336_ _deleted64327_))
                                 (if _$e64336_ _$e64336_ _probe64323_))))
                          (declare (not safe))
                          (_loop64320_ __tmp66039 __tmp66038 __tmp66037))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64301_ _k64330_))
                            (vector-ref _table64304_ (fx+ _probe64323_ '1))
                            (let ((__tmp66036
                                   (let ((_next-probe64339_
                                          (fx+ _start64316_
                                               _i64325_
                                               (fx* _i64325_ _i64325_))))
                                     (fxmodulo _next-probe64339_ _size64310_)))
                                  (__tmp66035 (fx+ _i64325_ '1)))
                              (declare (not safe))
                              (_loop64320_
                               __tmp66036
                               __tmp66035
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
                (if (let ((__tmp66051 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64282_ __tmp66051))
                    (if _deleted64279_
                        (begin
                          (vector-set! _table64256_ _deleted64279_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _deleted64279_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp66050
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp66050)))))
                        (begin
                          (vector-set! _table64256_ _probe64275_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _probe64275_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp66048
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64251_ __tmp66048))
                             (let ((__tmp66049
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp66049))))))
                    (if (let ((__tmp66047 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64282_ __tmp66047))
                        (let ((__tmp66046
                               (let ((_next-probe64287_
                                      (fx+ _start64268_
                                           _i64277_
                                           (fx* _i64277_ _i64277_))))
                                 (fxmodulo _next-probe64287_ _size64262_)))
                              (__tmp66045 (fx+ _i64277_ '1))
                              (__tmp66044
                               (let ((_$e64290_ _deleted64279_))
                                 (if _$e64290_ _$e64290_ _probe64275_))))
                          (declare (not safe))
                          (_loop64272_ __tmp66046 __tmp66045 __tmp66044))
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
                            (let ((__tmp66043
                                   (let ((_next-probe64293_
                                          (fx+ _start64268_
                                               _i64277_
                                               (fx* _i64277_ _i64277_))))
                                     (fxmodulo _next-probe64293_ _size64262_)))
                                  (__tmp66042 (fx+ _i64277_ '1)))
                              (declare (not safe))
                              (_loop64272_
                               __tmp66043
                               __tmp66042
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
                (if (let ((__tmp66061 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64232_ __tmp66061))
                    (if _deleted64229_
                        (begin
                          (vector-set! _table64206_ _deleted64229_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _deleted64229_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66060
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66060)))))
                        (begin
                          (vector-set! _table64206_ _probe64225_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _probe64225_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66058
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64200_ __tmp66058))
                             (let ((__tmp66059
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66059))))))
                    (if (let ((__tmp66057 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64232_ __tmp66057))
                        (let ((__tmp66056
                               (let ((_next-probe64237_
                                      (fx+ _start64218_
                                           _i64227_
                                           (fx* _i64227_ _i64227_))))
                                 (fxmodulo _next-probe64237_ _size64212_)))
                              (__tmp66055 (fx+ _i64227_ '1))
                              (__tmp66054
                               (let ((_$e64240_ _deleted64229_))
                                 (if _$e64240_ _$e64240_ _probe64225_))))
                          (declare (not safe))
                          (_loop64222_ __tmp66056 __tmp66055 __tmp66054))
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
                            (let ((__tmp66053
                                   (let ((_next-probe64243_
                                          (fx+ _start64218_
                                               _i64227_
                                               (fx* _i64227_ _i64227_))))
                                     (fxmodulo _next-probe64243_ _size64212_)))
                                  (__tmp66052 (fx+ _i64227_ '1)))
                              (declare (not safe))
                              (_loop64222_
                               __tmp66053
                               __tmp66052
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
                (if (let ((__tmp66068 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64190_ __tmp66068))
                    '#!void
                    (if (let ((__tmp66067 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64190_ __tmp66067))
                        (let ((__tmp66066
                               (let ((_next-probe64193_
                                      (fx+ _start64178_
                                           _i64187_
                                           (fx* _i64187_ _i64187_))))
                                 (fxmodulo _next-probe64193_ _size64172_)))
                              (__tmp66065 (fx+ _i64187_ '1)))
                          (declare (not safe))
                          (_loop64182_ __tmp66066 __tmp66065))
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
                                 (let ((__tmp66064
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64159_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64159_
                                    __tmp66064)))))
                            (let ((__tmp66063
                                   (let ((_next-probe64197_
                                          (fx+ _start64178_
                                               _i64187_
                                               (fx* _i64187_ _i64187_))))
                                     (fxmodulo _next-probe64197_ _size64172_)))
                                  (__tmp66062 (fx+ _i64187_ '1)))
                              (declare (not safe))
                              (_loop64182_ __tmp66063 __tmp66062)))))))))))
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
            (if (let ((__tmp66069
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66069 '0))
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
            (if (let ((__tmp66070
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66070 '0))
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
        (if (let ((__tmp66074
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass64064_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp66074))
            (if (let () (declare (not safe)) (##type? _klass64064_))
                (let ((__tmp66073
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64064_))))
                  (declare (not safe))
                  (__specialize-class __tmp66073))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass64064_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass64064_))
                (let ((__method65862
                       (let ()
                         (declare (not safe))
                         (method-ref _klass64064_ 'specialize-class))))
                  (if __method65862
                      (__method65862 _klass64064_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass64064_
                               'specialize-class))))
                (if (let ((__tmp66072
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass64064_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp66072))
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
                                               (__tmp66071
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
                                           __tmp66071))
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
                      (let ((__method65863
                             (let ()
                               (declare (not safe))
                               (method-ref _klass64060_ 'seal-class!))))
                        (if __method65863
                            (__method65863 _klass64060_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass64060_
                                     'seal-class!))))
                      (if (let ((__tmp66075
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass64060_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp66075))
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
                                (if (let ((__tmp66077
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass64015_)))
                                          (__tmp66076
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass64046_))))
                                      (declare (not safe))
                                      (eq? __tmp66077 __tmp66076))
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
          (let ((__tmp66078
                 (let () (declare (not safe)) (class-of _obj64016_))))
            (declare (not safe))
            (_find-next-method64019_ __tmp66078)))))
    (define call-next-method
      (lambda (_subklass64005_ _obj64006_ _id64007_ . _args64008_)
        (if (let ((__tmp66080
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _subklass64005_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp66080))
            (let ()
              (declare (not safe))
              (error '"bad class; expected class type" _subklass64005_))
            (if (let ((__tmp66079
                       (let () (declare (not safe)) (symbol? _id64007_))))
                  (declare (not safe))
                  (not __tmp66079))
                (let ()
                  (declare (not safe))
                  (error '"bad method id; expected symbol" _id64007_))
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
                               _id64007_))))))))
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
                    (let ((__tmp66081
                           (let ()
                             (declare (not safe))
                             (##type-name _type63993_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp66081 '"::t"))))
                 (_shadow-type-name63917_
                  (lambda (_type63991_)
                    (let () (declare (not safe)) (##type-name _type63991_))))
                 (_make-shadow-class63918_
                  (lambda (_type63983_ _precedence-list63984_)
                    (let* ((_super63986_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list63984_))
                                (let ((__tmp66082
                                       (car _precedence-list63984_)))
                                  (declare (not safe))
                                  (cons __tmp66082 '()))
                                '()))
                           (_klass63988_
                            (let ((__tmp66090
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id63916_ _type63983_)))
                                  (__tmp66089
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type63983_)))
                                  (__tmp66083
                                   (let ((__tmp66088
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp66084
                                          (let ((__tmp66087
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp66085
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type63983_))
                                                     '()
                                                     (let ((__tmp66086
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp66086 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp66087 __tmp66085))))
                                     (declare (not safe))
                                     (cons __tmp66088 __tmp66084))))
                              (declare (not safe))
                              (make-class-type
                               __tmp66090
                               __tmp66089
                               _super63986_
                               '()
                               __tmp66083
                               '#f))))
                      (let ((__tmp66091
                             (let ()
                               (declare (not safe))
                               (##type-id _type63983_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp66091
                         _klass63988_))
                      _klass63988_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again63922_ ()
              (if (let ((__tmp66092
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp66092 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again63922_))))))
          (let ((_$e63926_
                 (let ((__tmp66093
                        (let () (declare (not safe)) (##type-id _type63914_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp66093 '#f))))
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
                                         (let ((__tmp66096
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type63962_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp66096
                                            '#f))))
                                    (if _$e63964_
                                        ((lambda (_klass63967_)
                                           (let ((__tmp66098
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass63967_
                                                          _precedence-list63939_))))
                                             (declare (not safe))
                                             (_loop63936_
                                              _rest63961_
                                              __tmp66098)))
                                         _$e63964_)
                                        (let* ((_klass63969_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class63918_
                                                   _type63962_
                                                   _precedence-list63939_)))
                                               (__tmp66097
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass63969_
                                                        _precedence-list63939_))))
                                          (declare (not safe))
                                          (_loop63936_
                                           _rest63961_
                                           __tmp66097)))))))
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
                      (let ((__tmp66095
                             (let ()
                               (declare (not safe))
                               (##type-super _super63933_)))
                            (__tmp66094
                             (let ()
                               (declare (not safe))
                               (cons _super63933_ _hierarchy63934_))))
                        (declare (not safe))
                        (_loop63931_ __tmp66095 __tmp66094)))))))))
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
