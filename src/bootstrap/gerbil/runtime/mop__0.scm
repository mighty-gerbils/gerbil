(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710694201)
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
      (let* ((_slots62697_
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
             (_slot-vector62699_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots62697_))))
             (_slot-table62706_
              (let ((_slot-table62701_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot62703_ _field62704_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table62701_
                      _slot62703_
                      _field62704_))
                   (let ((__tmp62847 (symbol->keyword _slot62703_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table62701_
                      __tmp62847
                      _field62704_)))
                 _slots62697_
                 (iota (length _slots62697_) '1))
                _slot-table62701_))
             (_flags62708_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields62714_
              (list->vector
               (apply append
                      (map (lambda (_g6270962711_) (list _g6270962711_ '5 '#f))
                           (drop _slots62697_ '5)))))
             (_properties62716_
              (let ((__tmp62850
                     (let ((__tmp62851
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots62697_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp62851)))
                    (__tmp62848
                     (let ((__tmp62849
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp62849 '()))))
                (declare (not safe))
                (cons __tmp62850 __tmp62848)))
             (_t62718_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags62708_
                 ##type-type
                 _fields62714_
                 '()
                 _slot-vector62699_
                 _slot-table62706_
                 _properties62716_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t62718_ _t62718_))
        _t62718_))
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags62693_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties62694_ '((direct-slots:) (system: . #t)))
            (_slot-table62695_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           't
           _flags62693_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table62695_
           _properties62694_
           '#f
           '#f))))
    (let ((__tmp62852 (let () (declare (not safe)) (cons t::t '()))))
      (declare (not safe))
      (##unchecked-structure-set! class::t __tmp62852 '6 '#f '#f))
    (define class-type?
      (lambda (_obj62691_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj62691_ class::t.id))))
    (define class-type=?
      (lambda (_x62688_ _y62689_)
        (let ((__tmp62854 (##structure-ref _x62688_ '1 class::t '#f))
              (__tmp62853 (##structure-ref _y62689_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp62854 __tmp62853))))
    (define type-opaque?
      (lambda (_type62686_)
        (let ((__tmp62855
               (let ((__tmp62856
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62686_))))
                 (declare (not safe))
                 (##fxand __tmp62856 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp62855 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type62684_)
        (let ((__tmp62857
               (let ((__tmp62858
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62684_))))
                 (declare (not safe))
                 (##fxand __tmp62858 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp62857 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type62682_)
        (let ((__tmp62859
               (let ((__tmp62860
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62682_))))
                 (declare (not safe))
                 (##fxand __tmp62860 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp62859 '0))))
    (define class-type-struct?
      (lambda (_klass62680_)
        (let ((__tmp62861
               (let ((__tmp62862
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62680_))))
                 (declare (not safe))
                 (##fxand __tmp62862 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp62861 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass62678_)
        (let ((__tmp62863
               (let ((__tmp62864
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62678_))))
                 (declare (not safe))
                 (##fxand __tmp62864 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp62863 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass62676_)
        (let ((__tmp62865
               (let ((__tmp62866
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62676_))))
                 (declare (not safe))
                 (##fxand __tmp62866 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp62865 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass62674_)
        (let ((__tmp62867
               (let ((__tmp62868
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62674_))))
                 (declare (not safe))
                 (##fxand __tmp62868 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp62867 class-type-flag-system))))
    (define properties-form
      (lambda (_properties62640_)
        (map (lambda (_e6264162643_)
               (let* ((_g6264562652_ _e6264162643_)
                      (_E6264762656_
                       (lambda () (error '"No clause matching" _g6264562652_)))
                      (_K6264862662_
                       (lambda (_val62659_ _key62660_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key62660_ 'direct-supers:))
                             (let ((__tmp62869 (map class-type-id _val62659_)))
                               (declare (not safe))
                               (cons _key62660_ __tmp62869))
                             (let ()
                               (declare (not safe))
                               (cons _key62660_ _val62659_))))))
                 (if (let () (declare (not safe)) (##pair? _g6264562652_))
                     (let ((_hd6264962665_
                            (let ()
                              (declare (not safe))
                              (##car _g6264562652_)))
                           (_tl6265062667_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6264562652_))))
                       (let* ((_key62670_ _hd6264962665_)
                              (_val62672_ _tl6265062667_))
                         (declare (not safe))
                         (_K6264862662_ _val62672_ _key62670_)))
                     (let () (declare (not safe)) (_E6264762656_)))))
             _properties62640_)))
    (define make-class-type-descriptor
      (lambda (_type-id62535_
               _type-name62536_
               _type-super62537_
               _precedence-list62538_
               _slot-vector62539_
               _properties62540_
               _constructor62541_
               _slot-table62542_
               _methods62543_)
        (letrec ((_make-props!62545_
                  (lambda (_key62609_)
                    (letrec* ((_ht62611_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!62612_
                               (lambda (_ht62633_ _slots62634_)
                                 (for-each
                                  (lambda (_g6263562637_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht62633_
                                       _g6263562637_
                                       '#t)))
                                  _slots62634_)))
                              (_put-alist!62613_
                               (lambda (_ht62622_ _key62623_ _alist62624_)
                                 (let ((_$e62626_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key62623_
                                           _alist62624_))))
                                   (if _$e62626_
                                       ((lambda (_g6262862630_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!62612_
                                             _ht62622_
                                             _g6262862630_)))
                                        _$e62626_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!62613_
                         _ht62611_
                         _key62609_
                         _properties62540_))
                      (for-each
                       (lambda (_mixin62615_)
                         (let ((_alist62617_
                                (##structure-ref
                                 _mixin62615_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist62617_))
                                   (let ((__tmp62870
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key62609_
                                             _alist62617_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp62870)))
                               (let ((__tmp62871
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin62615_))))
                                 (declare (not safe))
                                 (_put-slots!62612_ _ht62611_ __tmp62871))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!62613_
                                  _ht62611_
                                  _key62609_
                                  _alist62617_)))))
                       _precedence-list62538_)
                      _ht62611_))))
          (let* ((_transparent?62547_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties62540_)))
                 (_all-slots-printable?62552_
                  (let ((_$e62549_ _transparent?62547_))
                    (if _$e62549_
                        _$e62549_
                        (let ((__tmp62872
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties62540_))))
                          (declare (not safe))
                          (eq? '#t __tmp62872)))))
                 (_printable62554_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?62552_))
                      (let ()
                        (declare (not safe))
                        (_make-props!62545_ 'print:))
                      '#f))
                 (_all-slots-equalable?62559_
                  (let ((_$e62556_ _transparent?62547_))
                    (if _$e62556_
                        _$e62556_
                        (let ((__tmp62873
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties62540_))))
                          (declare (not safe))
                          (eq? '#t __tmp62873)))))
                 (_equalable62561_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?62559_))
                      (let ()
                        (declare (not safe))
                        (_make-props!62545_ 'equal:))
                      '#f))
                 (_first-new-field62563_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super62537_
                         'gerbil#class::t))
                      (let ((__tmp62874
                             (##structure-ref
                              _type-super62537_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp62874))
                      '1))
                 (_field-info-length62565_
                  (let ((__tmp62875
                         (let ((__tmp62876
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector62539_))))
                           (declare (not safe))
                           (##fx- __tmp62876 _first-new-field62563_))))
                    (declare (not safe))
                    (##fx* '3 __tmp62875)))
                 (_field-info62567_ (make-vector _field-info-length62565_ '#f))
                 (_struct?62569_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties62540_)))
                 (_final?62571_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties62540_)))
                 (_metaclass62579_
                  (let ((_metaclass6257262574_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties62540_))))
                    (if _metaclass6257262574_
                        (let ((_metaclass62577_ _metaclass6257262574_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass62577_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id62535_
                                     'metaclass:
                                     _metaclass62577_))
                          _metaclass62577_)
                        '#f)))
                 (_system?62581_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties62540_)))
                 (_opaque?62586_
                  (let ((_$e62583_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?62559_))))
                    (if _$e62583_
                        _$e62583_
                        (if _type-super62537_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super62537_))
                            '#f))))
                 (_type-flags62588_
                  (let ((__tmp62881 (if _final?62571_ '0 type-flag-extensible))
                        (__tmp62880 (if _opaque?62586_ type-flag-opaque '0))
                        (__tmp62879
                         (if _struct?62569_ class-type-flag-struct '0))
                        (__tmp62878
                         (if _metaclass62579_ class-type-flag-metaclass '0))
                        (__tmp62877
                         (if _system?62581_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp62881
                             __tmp62880
                             __tmp62879
                             __tmp62878
                             __tmp62877)))
                 (_precedence-list62590_
                  (if (memq t::t _precedence-list62538_)
                      (begin
                        (if (let ((__tmp62882 (last _precedence-list62538_)))
                              (declare (not safe))
                              (eq? __tmp62882 t::t))
                            '#!void
                            (error '"BUG: t::t is not last in the precedence list"))
                        _precedence-list62538_)
                      (append _precedence-list62538_
                              (let () (declare (not safe)) (cons t::t '()))))))
            (let _loop62593_ ((_i62595_ _first-new-field62563_) (_j62596_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j62596_ _field-info-length62565_))
                  (let* ((_slot62598_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector62539_ _i62595_)))
                         (_flags62606_
                          (if _transparent?62547_
                              '0
                              (let ((__tmp62884
                                     (if (or _all-slots-printable?62552_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable62554_
                                                _slot62598_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp62883
                                     (if (or _all-slots-equalable?62559_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable62561_
                                                _slot62598_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp62884 __tmp62883)))))
                    (vector-set! _field-info62567_ _j62596_ _slot62598_)
                    (vector-set!
                     _field-info62567_
                     (let () (declare (not safe)) (##fx+ _j62596_ '1))
                     _flags62606_)
                    (let ((__tmp62886
                           (let () (declare (not safe)) (##fx+ _i62595_ '1)))
                          (__tmp62885
                           (let () (declare (not safe)) (##fx+ _j62596_ '3))))
                      (declare (not safe))
                      (_loop62593_ __tmp62886 __tmp62885)))
                  '#!void))
            (if _metaclass62579_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass62579_
                   _type-id62535_
                   _type-name62536_
                   _type-flags62588_
                   _type-super62537_
                   _field-info62567_
                   _precedence-list62590_
                   _slot-vector62539_
                   _slot-table62542_
                   _properties62540_
                   _constructor62541_
                   _methods62543_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id62535_
                   _type-name62536_
                   _type-flags62588_
                   _type-super62537_
                   _field-info62567_
                   _precedence-list62590_
                   _slot-vector62539_
                   _slot-table62542_
                   _properties62540_
                   _constructor62541_
                   _methods62543_)))))))
    (define class-type-id
      (lambda (_klass62533_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62533_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass62531_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62531_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass62528_ _val62529_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62528_ _val62529_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass62523_ _val62525_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62523_
           _val62525_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass62521_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62521_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass62519_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62519_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass62516_ _val62517_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62516_ _val62517_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass62511_ _val62513_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62511_
           _val62513_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass62509_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62509_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass62507_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62507_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass62504_ _val62505_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62504_ _val62505_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass62499_ _val62501_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62499_
           _val62501_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass62497_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62497_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass62495_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62495_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass62492_ _val62493_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62492_ _val62493_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass62487_ _val62489_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62487_
           _val62489_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass62485_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62485_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass62483_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62483_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass62480_ _val62481_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62480_ _val62481_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass62475_ _val62477_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62475_
           _val62477_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass62473_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62473_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass62471_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass62471_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass62468_ _val62469_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62468_
           _val62469_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass62463_ _val62465_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62463_
           _val62465_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass62461_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62461_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass62459_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62459_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass62456_ _val62457_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62456_
           _val62457_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass62451_ _val62453_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62451_
           _val62453_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass62449_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62449_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass62447_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62447_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass62444_ _val62445_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62444_ _val62445_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass62439_ _val62441_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62439_
           _val62441_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass62437_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62437_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass62435_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62435_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass62432_ _val62433_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62432_ _val62433_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass62427_ _val62429_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62427_
           _val62429_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass62425_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62425_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass62423_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62423_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass62420_ _val62421_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62420_
           _val62421_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass62415_ _val62417_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62415_
           _val62417_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass62413_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62413_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass62411_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62411_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass62408_ _val62409_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62408_ _val62409_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass62403_ _val62405_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62403_
           _val62405_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass62401_)
        (cdr (vector->list (##structure-ref _klass62401_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass62399_)
        (let ((__tmp62887
               (let ((__tmp62888
                      (##structure-ref _klass62399_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp62888))))
          (declare (not safe))
          (##fx- __tmp62887 '1))))
    (define class-type-seal!
      (lambda (_klass62397_)
        (let ((__tmp62889
               (let ((__tmp62890
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62397_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp62890))))
          (declare (not safe))
          (##structure-set!
           _klass62397_
           __tmp62889
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass62395_)
        (let ((__tmp62891
               (let ((__tmp62892
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62395_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp62892))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62395_
           __tmp62891
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct62386_ _maybe-super-struct62387_)
        (let ((_maybe-super-struct-id62389_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct62387_))))
          (let _lp62391_ ((_super-struct62393_ _maybe-sub-struct62386_))
            (if (let () (declare (not safe)) (not _super-struct62393_))
                '#f
                (if (let ((__tmp62893
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct62393_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id62389_ __tmp62893))
                    '#t
                    (let ((__tmp62894
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct62393_))))
                      (declare (not safe))
                      (_lp62391_ __tmp62894))))))))
    (define base-struct/1
      (lambda (_klass62384_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62384_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass62384_))
                _klass62384_
                (let () (declare (not safe)) (##type-super _klass62384_)))
            (if (let () (declare (not safe)) (not _klass62384_))
                '#f
                (error '"not a class or false" _klass62384_)))))
    (define base-struct/2
      (lambda (_klass162372_ _klass262373_)
        (let ((_s162375_
               (let () (declare (not safe)) (base-struct/1 _klass162372_)))
              (_s262376_
               (let () (declare (not safe)) (base-struct/1 _klass262373_))))
          (if (or (let () (declare (not safe)) (not _s162375_))
                  (and _s262376_
                       (let ()
                         (declare (not safe))
                         (substruct? _s162375_ _s262376_))))
              _s262376_
              (if (or (let () (declare (not safe)) (not _s262376_))
                      (and _s162375_
                           (let ()
                             (declare (not safe))
                             (substruct? _s262376_ _s162375_))))
                  _s162375_
                  (error '"bad mixin: incompatible struct bases"
                         _klass162372_
                         _klass262373_
                         _s162375_
                         _s262376_))))))
    (define base-struct/list
      (lambda (_all-supers62256_)
        (let* ((_all-supers6225762282_ _all-supers62256_)
               (_E6226262286_
                (lambda ()
                  (error '"No clause matching" _all-supers6225762282_))))
          (let ((_K6228062369_ (lambda () '#f))
                (_K6227762355_
                 (lambda (_x62353_)
                   (let () (declare (not safe)) (base-struct/1 _x62353_))))
                (_K6227262332_
                 (lambda (_y62329_ _x62330_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x62330_ _y62329_))))
                (_K6226362293_
                 (lambda (_y62290_ _x62291_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x62291_ _y62290_)))))
            (let* ((___match6284162842_
                    (lambda (_hd6226462296_ _tl6226562298_)
                      (let ((_x62301_ _hd6226462296_))
                        (letrec ((_splice-rest6226762303_
                                  (lambda (_rest6227162310_ _y62312_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6227162310_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6226362293_ _y62312_ _x62301_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6226262286_)))))
                                 (_splice-try6226962305_
                                  (lambda (_hd6227062314_
                                           _rest6227162316_
                                           _y6226662317_)
                                    (let ((_y62320_ _hd6227062314_))
                                      (let ((__tmp62896
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6227162316_)))
                                            (__tmp62895
                                             (let ()
                                               (declare (not safe))
                                               (cons _y62320_ _y6226662317_))))
                                        (declare (not safe))
                                        (_splice-loop6226862307_
                                         __tmp62896
                                         __tmp62895)))))
                                 (_splice-loop6226862307_
                                  (lambda (_rest6227162322_ _y6226662323_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6227162322_))
                                        (let ((__tmp62897
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6227162322_))))
                                          (declare (not safe))
                                          (_splice-try6226962305_
                                           __tmp62897
                                           _rest6227162322_
                                           _y6226662323_))
                                        (let ((__tmp62898
                                               (reverse _y6226662323_)))
                                          (declare (not safe))
                                          (_splice-rest6226762303_
                                           _rest6227162322_
                                           __tmp62898))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6226862307_ _tl6226562298_ '()))))))
                   (_try-match6225962365_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6225762282_))
                          (let ((_tl6227962360_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6225762282_)))
                                (_hd6227862358_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6225762282_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6227962360_))
                                (let ((_x62363_ _hd6227862358_))
                                  (declare (not safe))
                                  (base-struct/1 _x62363_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6227962360_))
                                    (let ((_tl6227662344_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6227962360_)))
                                          (_hd6227562342_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6227962360_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6227662344_))
                                          (let ((_x62340_ _hd6227862358_)
                                                (_y62347_ _hd6227562342_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6227262332_
                                               _y62347_
                                               _x62340_)))
                                          (___match6284162842_
                                           _hd6227862358_
                                           _tl6227962360_)))
                                    (___match6284162842_
                                     _hd6227862358_
                                     _tl6227962360_))))
                          (let () (declare (not safe)) (_E6226262286_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6225762282_))
                  (let () (declare (not safe)) (_K6228062369_))
                  (let () (declare (not safe)) (_try-match6225962365_))))))))
    (define base-struct
      (lambda _all-supers62254_
        (let () (declare (not safe)) (base-struct/list _all-supers62254_))))
    (define find-super-constructor
      (lambda (_super62206_)
        (let _lp62208_ ((_rest62210_ _super62206_) (_constructor62211_ '#f))
          (let* ((_rest6221262220_ _rest62210_)
                 (_else6221462228_ (lambda () _constructor62211_))
                 (_K6221662242_
                  (lambda (_rest62231_ _hd62232_)
                    (let ((_$e62234_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd62232_
                              '10
                              class::t
                              '#f))))
                      (if _$e62234_
                          ((lambda (_xconstructor62237_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor62211_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor62211_
                                            _xconstructor62237_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp62208_ _rest62231_ _xconstructor62237_))
                                 (error '"conflicting implicit constructors"
                                        _constructor62211_
                                        _xconstructor62237_)))
                           _$e62234_)
                          (let ()
                            (declare (not safe))
                            (_lp62208_ _rest62231_ _constructor62211_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6221262220_))
                (let ((_hd6221762245_
                       (let () (declare (not safe)) (##car _rest6221262220_)))
                      (_tl6221862247_
                       (let () (declare (not safe)) (##cdr _rest6221262220_))))
                  (let* ((_hd62250_ _hd6221762245_)
                         (_rest62252_ _tl6221862247_))
                    (declare (not safe))
                    (_K6221662242_ _rest62252_ _hd62250_)))
                (let () (declare (not safe)) (_else6221462228_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list62182_ _direct-slots62183_)
        (let* ((_next-slot62185_ '1)
               (_slot-table62187_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots62189_ '(__class))
               (_process-slot62193_
                (lambda (_slot62191_)
                  (if (let () (declare (not safe)) (symbol? _slot62191_))
                      '#!void
                      (error '"invalid slot name" _slot62191_))
                  (if (let ((__tmp62899
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table62187_
                                _slot62191_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp62899 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62187_
                           _slot62191_
                           _next-slot62185_))
                        (let ((__tmp62900 (symbol->keyword _slot62191_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62187_
                           __tmp62900
                           _next-slot62185_))
                        (set! _r-slots62189_
                              (let ()
                                (declare (not safe))
                                (cons _slot62191_ _r-slots62189_)))
                        (set! _next-slot62185_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot62185_ '1))))
                      '#!void)))
               (_process-slots62199_
                (lambda (_g6219462196_)
                  (for-each _process-slot62193_ _g6219462196_))))
          (for-each
           (lambda (_mixin62202_)
             (let ((__tmp62901
                    (let ((__tmp62902
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin62202_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp62902 '()))))
               (declare (not safe))
               (_process-slots62199_ __tmp62901)))
           (reverse _class-precedence-list62182_))
          (let ()
            (declare (not safe))
            (_process-slots62199_ _direct-slots62183_))
          (let ((_slot-vector62204_ (list->vector (reverse _r-slots62189_))))
            (values _slot-vector62204_ _slot-table62187_)))))
    (define make-class-type
      (lambda (_id62144_
               _name62145_
               _direct-supers62146_
               _direct-slots62147_
               _properties62148_
               _constructor62149_)
        (let ((_$e62154_
               (let ((__tmp62903
                      (lambda (_$obj62151_)
                        (let ((__tmp62904
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj62151_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp62904)))))
                 (declare (not safe))
                 (find __tmp62903 _direct-supers62146_))))
          (if _$e62154_
              ((lambda (_g6215662158_)
                 (error '"Illegal super class; not a class descriptor"
                        _g6215662158_))
               _$e62154_)
              (let ((_$e62161_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers62146_))))
                (if _$e62161_
                    ((lambda (_g6216362165_)
                       (error '"Cannot extend final class" _g6216362165_))
                     _$e62161_)
                    '#!void))))
        (let ((_g62905_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers62146_))))
          (begin
            (let ((_g62906_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g62905_) (##vector-length _g62905_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g62906_ 2)))
                  (error "Context expects 2 values" _g62906_)))
            (let ((_precedence-list62168_
                   (let () (declare (not safe)) (##vector-ref _g62905_ 0)))
                  (_struct-super62169_
                   (let () (declare (not safe)) (##vector-ref _g62905_ 1))))
              (let ((_g62907_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list62168_
                        _direct-slots62147_))))
                (begin
                  (let ((_g62908_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g62907_)
                               (##vector-length _g62907_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g62908_ 2)))
                        (error "Context expects 2 values" _g62908_)))
                  (let ((_slot-vector62171_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g62907_ 0)))
                        (_slot-table62172_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g62907_ 1))))
                    (let* ((_properties62174_
                            (let ((__tmp62911
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots62147_)))
                                  (__tmp62909
                                   (let ((__tmp62910
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers62146_))))
                                     (declare (not safe))
                                     (cons __tmp62910 _properties62148_))))
                              (declare (not safe))
                              (cons __tmp62911 __tmp62909)))
                           (_constructor*62179_
                            (let ((_$e62176_ _constructor62149_))
                              (if _$e62176_
                                  _$e62176_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers62146_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id62144_
                         _name62145_
                         _struct-super62169_
                         _precedence-list62168_
                         _slot-vector62171_
                         _properties62174_
                         _constructor*62179_
                         _slot-table62172_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass62142_)
        (let ((__tmp62912
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62142_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass62142_ __tmp62912))))
    (define compute-precedence-list
      (lambda (_direct-supers62140_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers62140_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass62124_)
        (let ((_tid62126_
               (let () (declare (not safe)) (##type-id _klass62124_))))
          (if (let () (declare (not safe)) (class-type-final? _klass62124_))
              (lambda (_g6212762129_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6212762129_ _tid62126_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass62124_))
                  (lambda (_g6213162133_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6213162133_ _tid62126_)))
                  (lambda (_g6213562137_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass62124_ _g6213562137_))))))))
    (define if-class-slot-field
      (lambda (_klass62113_
               _slot62114_
               _if-final62115_
               _if-struct62116_
               _if-struct-field62117_
               _if-class-slot62118_)
        (let ((_field62120_
               (let ((__tmp62913
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass62113_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp62913 _slot62114_ '#f))))
          (if (let () (declare (not safe)) (not _field62120_))
              (error '"unknown slot" 'class: _klass62113_ 'slot: _slot62114_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass62113_))
                  (_if-final62115_ _klass62113_ _slot62114_ _field62120_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass62113_))
                      (_if-struct62116_ _klass62113_ _slot62114_ _field62120_)
                      (if (let ((_strukt62122_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass62113_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt62122_
                                    'gerbil#class::t))
                                 (let ((__tmp62914
                                        (let ((__tmp62915
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt62122_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp62915))))
                                   (declare (not safe))
                                   (##fx< _field62120_ __tmp62914))))
                          (_if-struct-field62117_
                           _klass62113_
                           _slot62114_
                           _field62120_)
                          (_if-class-slot62118_
                           _klass62113_
                           _slot62114_
                           _field62120_))))))))
    (define make-class-slot-accessor
      (lambda (_klass62110_ _slot62111_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62110_
           _slot62111_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass62107_ _slot62108_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62107_
           _slot62108_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass62104_ _slot62105_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62104_
           _slot62105_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass62101_ _slot62102_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62101_
           _slot62102_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object62085_ _class62086_ _slot62087_)
        (apply error
               '"not an instance"
               'object:
               _object62085_
               'class:
               _class62086_
               (if _slot62087_
                   (let ((__tmp62916
                          (let ()
                            (declare (not safe))
                            (cons _slot62087_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp62916))
                   '()))))
    (define not-an-instance__0
      (lambda (_object62092_ _class62093_)
        (let ((_slot62095_ '#f))
          (declare (not safe))
          (not-an-instance__% _object62092_ _class62093_ _slot62095_))))
    (define not-an-instance
      (lambda _g62918_
        (let ((_g62917_ (let () (declare (not safe)) (##length _g62918_))))
          (cond ((let () (declare (not safe)) (##fx= _g62917_ 2))
                 (apply (lambda (_object62092_ _class62093_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object62092_ _class62093_)))
                        _g62918_))
                ((let () (declare (not safe)) (##fx= _g62917_ 3))
                 (apply (lambda (_object62097_ _class62098_ _slot62099_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object62097_
                             _class62098_
                             _slot62099_)))
                        _g62918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g62918_))))))
    (define make-final-slot-accessor
      (lambda (_klass62078_ _slot62079_ _field62080_)
        (lambda (_obj62082_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj62082_
             _field62080_
             _klass62078_
             _slot62079_)))))
    (define make-final-slot-mutator
      (lambda (_klass62071_ _slot62072_ _field62073_)
        (lambda (_obj62075_ _val62076_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj62075_
             _val62076_
             _field62073_
             _klass62071_
             _slot62072_)))))
    (define make-struct-slot-accessor
      (lambda (_klass62065_ _slot62066_ _field62067_)
        (lambda (_obj62069_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj62069_
             _field62067_
             _klass62065_
             _slot62066_)))))
    (define make-struct-slot-mutator
      (lambda (_klass62058_ _slot62059_ _field62060_)
        (lambda (_obj62062_ _val62063_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj62062_
             _val62063_
             _field62060_
             _klass62058_
             _slot62059_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass62052_ _slot62053_ _field62054_)
        (lambda (_obj62056_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj62056_
             _field62054_
             _klass62052_
             _slot62053_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass62045_ _slot62046_ _field62047_)
        (lambda (_obj62049_ _val62050_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj62049_
             _val62050_
             _field62047_
             _klass62045_
             _slot62046_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass62039_ _slot62040_ _field62041_)
        (lambda (_obj62043_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62039_ _obj62043_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62043_ _field62041_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62043_ _klass62039_ _slot62040_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass62032_ _slot62033_ _field62034_)
        (lambda (_obj62036_ _val62037_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62032_ _obj62036_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62036_ _field62034_ _val62037_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62036_ _klass62032_ _slot62033_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass62026_ _slot62027_ _field62028_)
        (lambda (_obj62030_)
          (if (let ((__tmp62919
                     (let () (declare (not safe)) (##type-id _klass62026_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62030_ __tmp62919))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62030_ _field62028_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62026_ _obj62030_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj62030_ _slot62027_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62030_
                     _klass62026_
                     _slot62027_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass62019_ _slot62020_ _field62021_)
        (lambda (_obj62023_ _val62024_)
          (if (let ((__tmp62920
                     (let () (declare (not safe)) (##type-id _klass62019_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62023_ __tmp62920))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62023_ _field62021_ _val62024_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62019_ _obj62023_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj62023_ _slot62020_ _val62024_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62023_
                     _klass62019_
                     _slot62020_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass62013_ _slot62014_ _field62015_)
        (lambda (_obj62017_)
          (if (let ((__tmp62921
                     (let () (declare (not safe)) (##type-id _klass62013_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62017_ __tmp62921))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62017_ _field62015_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62017_ _slot62014_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass62006_ _slot62007_ _field62008_)
        (lambda (_obj62010_ _val62011_)
          (if (let ((__tmp62922
                     (let () (declare (not safe)) (##type-id _klass62006_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62010_ __tmp62922))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62010_ _field62008_ _val62011_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj62010_ _slot62007_ _val62011_))))))
    (define class-slot-offset
      (lambda (_klass62003_ _slot62004_)
        (let ((__tmp62923
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62003_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp62923 _slot62004_ '#f))))
    (define class-slot-ref
      (lambda (_klass61997_ _obj61998_ _slot61999_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass61997_ _obj61998_))
            (let ((_off62001_
                   (let ((__tmp62924 (object-type _obj61998_)))
                     (declare (not safe))
                     (class-slot-offset __tmp62924 _slot61999_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj61998_
               _off62001_
               _klass61997_
               _slot61999_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj61998_ _klass61997_)))))
    (define class-slot-set!
      (lambda (_klass61990_ _obj61991_ _slot61992_ _val61993_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass61990_ _obj61991_))
            (let ((_off61995_
                   (let ((__tmp62925 (object-type _obj61991_)))
                     (declare (not safe))
                     (class-slot-offset __tmp62925 _slot61992_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj61991_
               _val61993_
               _off61995_
               _klass61990_
               _slot61992_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj61991_ _klass61990_)))))
    (define unchecked-field-ref
      (lambda (_obj61987_ _off61988_)
        (let ((__tmp62926
               (let () (declare (not safe)) (##structure-type _obj61987_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj61987_ _off61988_ __tmp62926 '#f))))
    (define unchecked-field-set!
      (lambda (_obj61983_ _off61984_ _val61985_)
        (let ((__tmp62927
               (let () (declare (not safe)) (##structure-type _obj61983_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj61983_
           _val61985_
           _off61984_
           __tmp62927
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj61980_ _slot61981_)
        (let ((__tmp62928
               (let ((__tmp62929
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj61980_))))
                 (declare (not safe))
                 (class-slot-offset __tmp62929 _slot61981_))))
          (declare (not safe))
          (unchecked-field-ref _obj61980_ __tmp62928))))
    (define unchecked-slot-set!
      (lambda (_obj61976_ _slot61977_ _val61978_)
        (let ((__tmp62930
               (let ((__tmp62931
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj61976_))))
                 (declare (not safe))
                 (class-slot-offset __tmp62931 _slot61977_))))
          (declare (not safe))
          (unchecked-field-set! _obj61976_ __tmp62930 _val61978_))))
    (define slot-ref__%
      (lambda (_obj61952_ _slot61953_ _E61954_)
        (if (object? _obj61952_)
            (let* ((_klass61956_ (object-type _obj61952_))
                   (_$e61959_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass61956_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass61956_ _slot61953_))
                        '#f)))
              (if _$e61959_
                  ((lambda (_off61962_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj61952_ _off61962_)))
                   _$e61959_)
                  (_E61954_ _obj61952_ _slot61953_)))
            (_E61954_ _obj61952_ _slot61953_))))
    (define slot-ref__0
      (lambda (_obj61967_ _slot61968_)
        (let ((_E61970_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj61967_ _slot61968_ _E61970_))))
    (define slot-ref
      (lambda _g62933_
        (let ((_g62932_ (let () (declare (not safe)) (##length _g62933_))))
          (cond ((let () (declare (not safe)) (##fx= _g62932_ 2))
                 (apply (lambda (_obj61967_ _slot61968_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj61967_ _slot61968_)))
                        _g62933_))
                ((let () (declare (not safe)) (##fx= _g62932_ 3))
                 (apply (lambda (_obj61972_ _slot61973_ _E61974_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj61972_ _slot61973_ _E61974_)))
                        _g62933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g62933_))))))
    (define slot-set!__%
      (lambda (_obj61924_ _slot61925_ _val61926_ _E61927_)
        (if (object? _obj61924_)
            (let* ((_klass61929_ (object-type _obj61924_))
                   (_$e61932_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass61929_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass61929_ _slot61925_))
                        '#f)))
              (if _$e61932_
                  ((lambda (_off61935_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj61924_
                        _off61935_
                        _val61926_)))
                   _$e61932_)
                  (_E61927_ _obj61924_ _slot61925_)))
            (_E61927_ _obj61924_ _slot61925_))))
    (define slot-set!__0
      (lambda (_obj61940_ _slot61941_ _val61942_)
        (let ((_E61944_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj61940_ _slot61941_ _val61942_ _E61944_))))
    (define slot-set!
      (lambda _g62935_
        (let ((_g62934_ (let () (declare (not safe)) (##length _g62935_))))
          (cond ((let () (declare (not safe)) (##fx= _g62934_ 3))
                 (apply (lambda (_obj61940_ _slot61941_ _val61942_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj61940_ _slot61941_ _val61942_)))
                        _g62935_))
                ((let () (declare (not safe)) (##fx= _g62934_ 4))
                 (apply (lambda (_obj61946_ _slot61947_ _val61948_ _E61949_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj61946_
                             _slot61947_
                             _val61948_
                             _E61949_)))
                        _g62935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g62935_))))))
    (define __slot-error
      (lambda (_obj61920_ _slot61921_)
        (error '"Cannot find slot" 'object: _obj61920_ 'slot: _slot61921_)))
    (define subclass?
      (lambda (_maybe-sub-class61910_ _maybe-super-class61911_)
        (let* ((_maybe-super-class-id61913_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class61911_)))
               (_$e61915_
                (let ((__tmp62936
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class61910_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id61913_ __tmp62936))))
          (if _$e61915_
              _$e61915_
              (let ((__tmp62938
                     (lambda (_super-class61918_)
                       (let ((__tmp62939
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class61918_))))
                         (declare (not safe))
                         (eq? __tmp62939 _maybe-super-class-id61913_))))
                    (__tmp62937
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class61910_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp62938 __tmp62937))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass61907_ _obj61908_)
        (let ((__tmp62940
               (let () (declare (not safe)) (##type-id _klass61907_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj61908_ __tmp62940))))
    (define struct-instance?
      (lambda (_klass61904_ _obj61905_)
        (let ((__tmp62941
               (let () (declare (not safe)) (##type-id _klass61904_))))
          (declare (not safe))
          (##structure-instance-of? _obj61905_ __tmp62941))))
    (define class-instance?
      (lambda (_klass61899_ _obj61900_)
        (if (object? _obj61900_)
            (let ((_type61902_ (object-type _obj61900_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type61902_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type61902_ _klass61899_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass61894_ _k61895_)
        (if (let () (declare (not safe)) (class-type-system? _klass61894_))
            (error '"cannot instantiate system class" 'class: _klass61894_)
            (let ((_obj61897_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass61894_ _k61895_))))
              (let () (declare (not safe)) (object-fill! _obj61897_ '#f))
              _obj61897_))))
    (define object-fill!
      (lambda (_obj61887_ _fill61888_)
        (let _loop61890_ ((_i61892_
                           (let ((__tmp62943
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj61887_))))
                             (declare (not safe))
                             (##fx- __tmp62943 '1))))
          (if (let () (declare (not safe)) (##fx> _i61892_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj61887_
                   _fill61888_
                   _i61892_
                   '#f
                   '#f))
                (let ((__tmp62942
                       (let () (declare (not safe)) (##fx- _i61892_ '1))))
                  (declare (not safe))
                  (_loop61890_ __tmp62942)))
              _obj61887_))))
    (define new-instance
      (lambda (_klass61885_)
        (let ((__obj62843
               (let ((__tmp62944
                      (let ((__tmp62945
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass61885_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp62945))))
                 (declare (not safe))
                 (##make-structure _klass61885_ __tmp62944))))
          (let () (declare (not safe)) (object-fill! __obj62843 '#f))
          __obj62843)))
    (define make-instance
      (lambda (_klass61875_ . _args61876_)
        (let* ((_obj61878_
                (let () (declare (not safe)) (new-instance _klass61875_)))
               (_$e61880_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass61875_ '10 class::t '#f))))
          (if _$e61880_
              ((lambda (_kons-id61883_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass61875_
                    _kons-id61883_
                    _obj61878_
                    _args61876_)))
               _$e61880_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass61875_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass61875_
                     _obj61878_
                     _args61876_))
                  (if (let ((__tmp62946
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass61875_))))
                        (declare (not safe))
                        (not __tmp62946))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass61875_
                         _obj61878_
                         _args61876_))
                      (if (let ((__tmp62948
                                 (let ((__tmp62949
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj61878_))))
                                   (declare (not safe))
                                   (##fx- __tmp62949 '1)))
                                (__tmp62947 (length _args61876_)))
                            (declare (not safe))
                            (##fx= __tmp62948 __tmp62947))
                          (apply ##structure _klass61875_ _args61876_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass61875_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass61875_))
                                 'args:
                                 _args61876_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj61872_ . _args61873_)
        (if (let ((__tmp62951 (length _args61873_))
                  (__tmp62950
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj61872_))))
              (declare (not safe))
              (##fx< __tmp62951 __tmp62950))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj61872_ _args61873_))
            (error '"too many arguments for struct"
                   'object:
                   _obj61872_
                   'args:
                   _args61873_))))
    (define __struct-instance-init!
      (lambda (_obj61831_ _args61832_)
        (let _lp61834_ ((_k61836_ '1) (_rest61837_ _args61832_))
          (let* ((_rest6183861846_ _rest61837_)
                 (_else6184061854_ (lambda () _obj61831_))
                 (_K6184261860_
                  (lambda (_rest61857_ _hd61858_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj61831_ _k61836_ _hd61858_))
                    (let ((__tmp62952
                           (let () (declare (not safe)) (##fx+ _k61836_ '1))))
                      (declare (not safe))
                      (_lp61834_ __tmp62952 _rest61857_)))))
            (if (let () (declare (not safe)) (##pair? _rest6183861846_))
                (let ((_hd6184361863_
                       (let () (declare (not safe)) (##car _rest6183861846_)))
                      (_tl6184461865_
                       (let () (declare (not safe)) (##cdr _rest6183861846_))))
                  (let* ((_hd61868_ _hd6184361863_)
                         (_rest61870_ _tl6184461865_))
                    (declare (not safe))
                    (_K6184261860_ _rest61870_ _hd61868_)))
                (let () (declare (not safe)) (_else6184061854_)))))))
    (define class-instance-init!
      (lambda (_obj61828_ . _args61829_)
        (let ((__tmp62953 (object-type _obj61828_)))
          (declare (not safe))
          (__class-instance-init! __tmp62953 _obj61828_ _args61829_))))
    (define __class-instance-init!
      (lambda (_klass61772_ _obj61773_ _args61774_)
        (let _lp61776_ ((_rest61778_ _args61774_))
          (let* ((_rest6177961789_ _rest61778_)
                 (_else6178161797_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest61778_))
                        _obj61773_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass61772_
                               'rest:
                               _rest61778_))))
                 (_K6178361809_
                  (lambda (_rest61800_ _val61801_ _key61802_)
                    (let ((_$e61804_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass61772_ _key61802_))))
                      (if _$e61804_
                          ((lambda (_off61807_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj61773_
                                _off61807_
                                _val61801_))
                             (let ()
                               (declare (not safe))
                               (_lp61776_ _rest61800_)))
                           _$e61804_)
                          (error '"unknown slot"
                                 'class:
                                 _klass61772_
                                 'slot:
                                 _key61802_))))))
            (if (let () (declare (not safe)) (##pair? _rest6177961789_))
                (let ((_hd6178461812_
                       (let () (declare (not safe)) (##car _rest6177961789_)))
                      (_tl6178561814_
                       (let () (declare (not safe)) (##cdr _rest6177961789_))))
                  (let ((_key61817_ _hd6178461812_))
                    (if (let () (declare (not safe)) (##pair? _tl6178561814_))
                        (let ((_hd6178661819_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6178561814_)))
                              (_tl6178761821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6178561814_))))
                          (let* ((_val61824_ _hd6178661819_)
                                 (_rest61826_ _tl6178761821_))
                            (declare (not safe))
                            (_K6178361809_ _rest61826_ _val61824_ _key61817_)))
                        (let () (declare (not safe)) (_else6178161797_)))))
                (let () (declare (not safe)) (_else6178161797_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass61768_ _obj61769_ _args61770_)
        (apply call-method
               _klass61768_
               'instance-init!
               _obj61769_
               _args61770_)))
    (define constructor-init!
      (lambda (_klass61763_ _kons-id61764_ _obj61765_ . _args61766_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass61763_
           _kons-id61764_
           _obj61765_
           _args61766_))))
    (define __constructor-init!
      (lambda (_klass61753_ _kons-id61754_ _obj61755_ _args61756_)
        (let ((_$e61758_
               (let ()
                 (declare (not safe))
                 (__find-method _klass61753_ _obj61755_ _kons-id61754_))))
          (if _$e61758_
              ((lambda (_kons61761_)
                 (apply _kons61761_ _obj61755_ _args61756_)
                 _obj61755_)
               _$e61758_)
              (error '"missing constructor"
                     'class:
                     _klass61753_
                     'method:
                     _kons-id61754_)))))
    (define struct-copy
      (lambda (_struct61751_)
        (if (let () (declare (not safe)) (##structure? _struct61751_))
            '#!void
            (error '"not a structure" _struct61751_))
        (let () (declare (not safe)) (##structure-copy _struct61751_))))
    (define struct->list
      (lambda (_obj61749_)
        (if (object? _obj61749_)
            (let () (declare (not safe)) (##vector->list _obj61749_))
            (error '"not a structure" _obj61749_))))
    (define class->list
      (lambda (_obj61736_)
        (if (object? _obj61736_)
            (let ((_klass61738_ (object-type _obj61736_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass61738_ 'gerbil#class::t))
                  (let ((_slot-vector61740_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass61738_
                            '7
                            class::t
                            '#f))))
                    (let _loop61742_ ((_index61744_
                                       (let ((__tmp62959
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector61740_))))
                                         (declare (not safe))
                                         (##fx- __tmp62959 '1)))
                                      (_plist61745_ '()))
                      (if (let () (declare (not safe)) (##fx< _index61744_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass61738_ _plist61745_))
                          (let ((_slot61747_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector61740_
                                    _index61744_))))
                            (let ((__tmp62958
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index61744_ '1)))
                                  (__tmp62954
                                   (let ((__tmp62957
                                          (symbol->keyword _slot61747_))
                                         (__tmp62955
                                          (let ((__tmp62956
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj61736_
                                                    _index61744_))))
                                            (declare (not safe))
                                            (cons __tmp62956 _plist61745_))))
                                     (declare (not safe))
                                     (cons __tmp62957 __tmp62955))))
                              (declare (not safe))
                              (_loop61742_ __tmp62958 __tmp62954))))))
                  (error '"not a class type"
                         'object:
                         _obj61736_
                         'class:
                         _klass61738_)))
            (error '"not an object" _obj61736_))))
    (define call-method
      (lambda (_obj61727_ _id61728_ . _args61729_)
        (let ((_$e61731_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61727_ _id61728_))))
          (if _$e61731_
              ((lambda (_method61734_)
                 (apply _method61734_ _obj61727_ _args61729_))
               _$e61731_)
              (error '"cannot find method"
                     'object:
                     _obj61727_
                     'method:
                     _id61728_)))))
    (define method-ref
      (lambda (_obj61724_ _id61725_)
        (let ((__tmp62960 (let () (declare (not safe)) (class-of _obj61724_))))
          (declare (not safe))
          (find-method __tmp62960 _obj61724_ _id61725_))))
    (define checked-method-ref
      (lambda (_obj61718_ _id61719_)
        (let ((_$e61721_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61718_ _id61719_))))
          (if _$e61721_
              _$e61721_
              (error '"missing method"
                     'object:
                     _obj61718_
                     'method:
                     _id61719_)))))
    (define bound-method-ref
      (lambda (_obj61708_ _id61709_)
        (let ((_$e61711_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61708_ _id61709_))))
          (if _$e61711_
              ((lambda (_method61714_)
                 (lambda _args61716_
                   (apply _method61714_ _obj61708_ _args61716_)))
               _$e61711_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj61701_ _id61702_)
        (let ((_method61704_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj61701_ _id61702_))))
          (lambda _args61706_ (apply _method61704_ _obj61701_ _args61706_)))))
    (define find-method
      (lambda (_klass61697_ _obj61698_ _id61699_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass61697_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass61697_ _obj61698_ _id61699_))
            (if (let () (declare (not safe)) (##type? _klass61697_))
                (let ((__tmp62961
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass61697_))))
                  (declare (not safe))
                  (__find-method __tmp62961 _obj61698_ _id61699_))
                (error '"bad class; must be a class-type or builtin type"
                       'class:
                       _klass61697_
                       'method:
                       _id61699_)))))
    (define __find-method
      (lambda (_klass61690_ _obj61691_ _id61692_)
        (let ((_$e61694_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass61690_ _obj61691_ _id61692_))))
          (if _$e61694_
              _$e61694_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass61690_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass61690_ _obj61691_ _id61692_)))))))
    (define mixin-find-method
      (lambda (_mixins61682_ _obj61683_ _id61684_)
        (let ((__tmp62962
               (lambda (_g6168561687_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6168561687_ _obj61683_ _id61684_)))))
          (declare (not safe))
          (ormap1 __tmp62962 _mixins61682_))))
    (define direct-method-ref
      (lambda (_klass61659_ _obj61660_ _id61661_)
        (letrec ((_metaclass-resolve-method61663_
                  (lambda ()
                    (let ((__method62844
                           (let ()
                             (declare (not safe))
                             (method-ref _klass61659_ 'direct-method-ref))))
                      (if __method62844
                          (__method62844 _klass61659_ _obj61660_ _id61661_)
                          (error '"Missing method"
                                 _klass61659_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!61664_
                  (lambda ()
                    (let ((_method61679_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method61663_))))
                      (let ((__tmp62964
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass61659_
                                '11
                                class::t
                                '#f)))
                            (__tmp62963 (if _method61679_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp62964 _id61661_ __tmp62963))
                      _method61679_))))
          (let ((_$e61666_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass61659_ '11 class::t '#f))))
            (if _$e61666_
                ((lambda (_ht61669_)
                   (let ((_method61671_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht61669_ _id61661_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method61671_))
                         _method61671_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass61659_))
                             (let ((_$e61673_ _method61671_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e61673_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method61663_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e61673_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!61664_)))))
                             '#f))))
                 _$e61666_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass61659_))
                    (let ((_tab61676_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass61659_
                         _tab61676_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!61664_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass61655_ _obj61656_ _id61657_)
        (let ((__tmp62965 (##structure-ref _klass61655_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp62965 _obj61656_ _id61657_))))
    (define bind-method!__%
      (lambda (_klass61628_ _id61629_ _proc61630_ _rebind?61631_)
        (letrec ((_bind!61633_
                  (lambda (_ht61639_)
                    (if (and (let () (declare (not safe)) (not _rebind?61631_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht61639_ _id61629_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass61628_
                               'method:
                               _id61629_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht61639_
                           _id61629_
                           _proc61630_))))))
          (if (let () (declare (not safe)) (procedure? _proc61630_))
              '#!void
              (error '"bad method; expected procedure" _proc61630_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass61628_ 'gerbil#class::t))
              (let ((_ht61635_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass61628_
                        '11
                        class::t
                        '#f))))
                (if _ht61635_
                    (let () (declare (not safe)) (_bind!61633_ _ht61635_))
                    (let ((_ht61637_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass61628_
                         _ht61637_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!61633_ _ht61637_)))))
              (if (let () (declare (not safe)) (##type? _klass61628_))
                  (let ((__tmp62966
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass61628_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp62966
                     _id61629_
                     _proc61630_
                     _rebind?61631_))
                  (error '"bad class; expected class or builtin type"
                         _klass61628_))))))
    (define bind-method!__0
      (lambda (_klass61644_ _id61645_ _proc61646_)
        (let ((_rebind?61648_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass61644_
           _id61645_
           _proc61646_
           _rebind?61648_))))
    (define bind-method!
      (lambda _g62968_
        (let ((_g62967_ (let () (declare (not safe)) (##length _g62968_))))
          (cond ((let () (declare (not safe)) (##fx= _g62967_ 3))
                 (apply (lambda (_klass61644_ _id61645_ _proc61646_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass61644_
                             _id61645_
                             _proc61646_)))
                        _g62968_))
                ((let () (declare (not safe)) (##fx= _g62967_ 4))
                 (apply (lambda (_klass61650_
                                 _id61651_
                                 _proc61652_
                                 _rebind?61653_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass61650_
                             _id61651_
                             _proc61652_
                             _rebind?61653_)))
                        _g62968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g62968_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint61608_ _seed61610_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint61608_
           procedure-hash
           eq?
           _seed61610_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint61616_ '#f) (_seed61618_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint61616_ _seed61618_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint61620_)
        (let ((_seed61622_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint61620_ _seed61622_))))
    (define make-method-specializer-table
      (lambda _g62970_
        (let ((_g62969_ (let () (declare (not safe)) (##length _g62970_))))
          (cond ((let () (declare (not safe)) (##fx= _g62969_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g62970_))
                ((let () (declare (not safe)) (##fx= _g62969_ 1))
                 (apply (lambda (_size-hint61620_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint61620_)))
                        _g62970_))
                ((let () (declare (not safe)) (##fx= _g62969_ 2))
                 (apply (lambda (_size-hint61624_ _seed61625_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint61624_
                             _seed61625_)))
                        _g62970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g62970_))))))
    (define method-specializer-table-ref
      (lambda (_tab61565_ _key61566_ _default61567_)
        (let ((_table61569_
               (let () (declare (not safe)) (&raw-table-table _tab61565_)))
              (_seed61570_
               (let () (declare (not safe)) (&raw-table-seed _tab61565_))))
          (let* ((_h61572_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61566_))
                         _seed61570_))
                 (_size61575_ (vector-length _table61569_))
                 (_entries61578_ (fxquotient _size61575_ '2))
                 (_start61581_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61572_ _entries61578_)
                   '1)))
            (let _loop61585_ ((_probe61588_ _start61581_)
                              (_i61590_ '1)
                              (_deleted61592_ '#f))
              (let ((_k61595_ (vector-ref _table61569_ _probe61588_)))
                (if (let ((__tmp62971 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61595_ __tmp62971))
                    _default61567_
                    (if (let ((__tmp62972 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61595_ __tmp62972))
                        (let ((__tmp62975
                               (let ((_next-probe61598_
                                      (fx+ _start61581_
                                           _i61590_
                                           (fx* _i61590_ _i61590_))))
                                 (fxmodulo _next-probe61598_ _size61575_)))
                              (__tmp62974 (fx+ _i61590_ '1))
                              (__tmp62973
                               (let ((_$e61601_ _deleted61592_))
                                 (if _$e61601_ _$e61601_ _probe61588_))))
                          (declare (not safe))
                          (_loop61585_ __tmp62975 __tmp62974 __tmp62973))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61566_ _k61595_))
                            (vector-ref _table61569_ (fx+ _probe61588_ '1))
                            (let ((__tmp62977
                                   (let ((_next-probe61604_
                                          (fx+ _start61581_
                                               _i61590_
                                               (fx* _i61590_ _i61590_))))
                                     (fxmodulo _next-probe61604_ _size61575_)))
                                  (__tmp62976 (fx+ _i61590_ '1)))
                              (declare (not safe))
                              (_loop61585_
                               __tmp62977
                               __tmp62976
                               _deleted61592_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab61561_ _key61562_ _value61563_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61561_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61561_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61561_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab61561_
           _key61562_
           _value61563_))))
    (define __method-specializer-table-set!
      (lambda (_tab61516_ _key61517_ _value61518_)
        (let ((_table61521_
               (let () (declare (not safe)) (&raw-table-table _tab61516_)))
              (_seed61522_
               (let () (declare (not safe)) (&raw-table-seed _tab61516_))))
          (let* ((_h61524_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61517_))
                         _seed61522_))
                 (_size61527_ (vector-length _table61521_))
                 (_entries61530_ (fxquotient _size61527_ '2))
                 (_start61533_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61524_ _entries61530_)
                   '1)))
            (let _loop61537_ ((_probe61540_ _start61533_)
                              (_i61542_ '1)
                              (_deleted61544_ '#f))
              (let ((_k61547_ (vector-ref _table61521_ _probe61540_)))
                (if (let ((__tmp62978 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61547_ __tmp62978))
                    (if _deleted61544_
                        (begin
                          (vector-set! _table61521_ _deleted61544_ _key61517_)
                          (vector-set!
                           _table61521_
                           (fx+ _deleted61544_ '1)
                           _value61518_)
                          ((lambda ()
                             (let ((__tmp62979
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61516_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61516_
                                __tmp62979)))))
                        (begin
                          (vector-set! _table61521_ _probe61540_ _key61517_)
                          (vector-set!
                           _table61521_
                           (fx+ _probe61540_ '1)
                           _value61518_)
                          ((lambda ()
                             (let ((__tmp62980
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61516_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61516_ __tmp62980))
                             (let ((__tmp62981
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61516_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61516_
                                __tmp62981))))))
                    (if (let ((__tmp62982 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61547_ __tmp62982))
                        (let ((__tmp62985
                               (let ((_next-probe61552_
                                      (fx+ _start61533_
                                           _i61542_
                                           (fx* _i61542_ _i61542_))))
                                 (fxmodulo _next-probe61552_ _size61527_)))
                              (__tmp62984 (fx+ _i61542_ '1))
                              (__tmp62983
                               (let ((_$e61555_ _deleted61544_))
                                 (if _$e61555_ _$e61555_ _probe61540_))))
                          (declare (not safe))
                          (_loop61537_ __tmp62985 __tmp62984 __tmp62983))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61517_ _k61547_))
                            (begin
                              (vector-set!
                               _table61521_
                               _probe61540_
                               _key61517_)
                              (vector-set!
                               _table61521_
                               (fx+ _probe61540_ '1)
                               _value61518_))
                            (let ((__tmp62987
                                   (let ((_next-probe61558_
                                          (fx+ _start61533_
                                               _i61542_
                                               (fx* _i61542_ _i61542_))))
                                     (fxmodulo _next-probe61558_ _size61527_)))
                                  (__tmp62986 (fx+ _i61542_ '1)))
                              (declare (not safe))
                              (_loop61537_
                               __tmp62987
                               __tmp62986
                               _deleted61544_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab61511_
               _key61512_
               _method-specializer-table-update!61513_
               _default61514_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61511_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61511_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61511_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab61511_
           _key61512_
           _method-specializer-table-update!61513_
           _default61514_))))
    (define __method-specializer-table-update!
      (lambda (_tab61465_
               _key61466_
               _method-specializer-table-update!61467_
               _default61468_)
        (let ((_table61471_
               (let () (declare (not safe)) (&raw-table-table _tab61465_)))
              (_seed61472_
               (let () (declare (not safe)) (&raw-table-seed _tab61465_))))
          (let* ((_h61474_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61466_))
                         _seed61472_))
                 (_size61477_ (vector-length _table61471_))
                 (_entries61480_ (fxquotient _size61477_ '2))
                 (_start61483_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61474_ _entries61480_)
                   '1)))
            (let _loop61487_ ((_probe61490_ _start61483_)
                              (_i61492_ '1)
                              (_deleted61494_ '#f))
              (let ((_k61497_ (vector-ref _table61471_ _probe61490_)))
                (if (let ((__tmp62988 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61497_ __tmp62988))
                    (if _deleted61494_
                        (begin
                          (vector-set! _table61471_ _deleted61494_ _key61466_)
                          (vector-set!
                           _table61471_
                           (fx+ _deleted61494_ '1)
                           (_method-specializer-table-update!61467_
                            _default61468_))
                          ((lambda ()
                             (let ((__tmp62989
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61465_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61465_
                                __tmp62989)))))
                        (begin
                          (vector-set! _table61471_ _probe61490_ _key61466_)
                          (vector-set!
                           _table61471_
                           (fx+ _probe61490_ '1)
                           (_method-specializer-table-update!61467_
                            _default61468_))
                          ((lambda ()
                             (let ((__tmp62990
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61465_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61465_ __tmp62990))
                             (let ((__tmp62991
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61465_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61465_
                                __tmp62991))))))
                    (if (let ((__tmp62992 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61497_ __tmp62992))
                        (let ((__tmp62995
                               (let ((_next-probe61502_
                                      (fx+ _start61483_
                                           _i61492_
                                           (fx* _i61492_ _i61492_))))
                                 (fxmodulo _next-probe61502_ _size61477_)))
                              (__tmp62994 (fx+ _i61492_ '1))
                              (__tmp62993
                               (let ((_$e61505_ _deleted61494_))
                                 (if _$e61505_ _$e61505_ _probe61490_))))
                          (declare (not safe))
                          (_loop61487_ __tmp62995 __tmp62994 __tmp62993))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61466_ _k61497_))
                            (begin
                              (vector-set!
                               _table61471_
                               _probe61490_
                               _key61466_)
                              (vector-set!
                               _table61471_
                               (fx+ _probe61490_ '1)
                               (_method-specializer-table-update!61467_
                                (vector-ref
                                 _table61471_
                                 (fx+ _probe61490_ '1)))))
                            (let ((__tmp62997
                                   (let ((_next-probe61508_
                                          (fx+ _start61483_
                                               _i61492_
                                               (fx* _i61492_ _i61492_))))
                                     (fxmodulo _next-probe61508_ _size61477_)))
                                  (__tmp62996 (fx+ _i61492_ '1)))
                              (declare (not safe))
                              (_loop61487_
                               __tmp62997
                               __tmp62996
                               _deleted61494_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab61424_ _key61426_)
        (let ((_table61429_
               (let () (declare (not safe)) (&raw-table-table _tab61424_)))
              (_seed61431_
               (let () (declare (not safe)) (&raw-table-seed _tab61424_))))
          (let* ((_h61434_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61426_))
                         _seed61431_))
                 (_size61437_ (vector-length _table61429_))
                 (_entries61440_ (fxquotient _size61437_ '2))
                 (_start61443_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61434_ _entries61440_)
                   '1)))
            (let _loop61447_ ((_probe61450_ _start61443_) (_i61452_ '1))
              (let ((_k61455_ (vector-ref _table61429_ _probe61450_)))
                (if (let ((__tmp62998 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61455_ __tmp62998))
                    '#!void
                    (if (let ((__tmp62999 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61455_ __tmp62999))
                        (let ((__tmp63001
                               (let ((_next-probe61458_
                                      (fx+ _start61443_
                                           _i61452_
                                           (fx* _i61452_ _i61452_))))
                                 (fxmodulo _next-probe61458_ _size61437_)))
                              (__tmp63000 (fx+ _i61452_ '1)))
                          (declare (not safe))
                          (_loop61447_ __tmp63001 __tmp63000))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61426_ _k61455_))
                            (begin
                              (vector-set!
                               _table61429_
                               _probe61450_
                               (macro-deleted-obj))
                              (vector-set!
                               _table61429_
                               (fx+ _probe61450_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp63002
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab61424_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab61424_
                                    __tmp63002)))))
                            (let ((__tmp63004
                                   (let ((_next-probe61462_
                                          (fx+ _start61443_
                                               _i61452_
                                               (fx* _i61452_ _i61452_))))
                                     (fxmodulo _next-probe61462_ _size61437_)))
                                  (__tmp63003 (fx+ _i61452_ '1)))
                              (declare (not safe))
                              (_loop61447_ __tmp63004 __tmp63003)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc61415_ _specializer61416_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61420_ ()
            (if (let ((__tmp63005
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63005 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61420_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc61415_
           _specializer61416_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc61405_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61409_ ()
            (if (let ((__tmp63006
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63006 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61409_))))))
        (let ((_specializer61413_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc61405_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer61413_)))
    (define __class-specializer-hash-key
      (lambda (_klass61403_)
        (let ((__tmp63007
               (let () (declare (not safe)) (##type-id _klass61403_))))
          (declare (not safe))
          (symbolic-hash __tmp63007))))
    (define make-class-specializer-table__%
      (lambda (_size-hint61384_ _seed61386_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint61384_
           __class-specializer-hash-key
           eq?
           _seed61386_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint61392_ '#f) (_seed61394_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint61392_ _seed61394_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint61396_)
        (let ((_seed61398_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint61396_ _seed61398_))))
    (define make-class-specializer-table
      (lambda _g63009_
        (let ((_g63008_ (let () (declare (not safe)) (##length _g63009_))))
          (cond ((let () (declare (not safe)) (##fx= _g63008_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g63009_))
                ((let () (declare (not safe)) (##fx= _g63008_ 1))
                 (apply (lambda (_size-hint61396_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint61396_)))
                        _g63009_))
                ((let () (declare (not safe)) (##fx= _g63008_ 2))
                 (apply (lambda (_size-hint61400_ _seed61401_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint61400_
                             _seed61401_)))
                        _g63009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g63009_))))))
    (define class-specializer-table-ref
      (lambda (_tab61341_ _key61342_ _default61343_)
        (let ((_table61345_
               (let () (declare (not safe)) (&raw-table-table _tab61341_)))
              (_seed61346_
               (let () (declare (not safe)) (&raw-table-seed _tab61341_))))
          (let* ((_h61348_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61342_))
                         _seed61346_))
                 (_size61351_ (vector-length _table61345_))
                 (_entries61354_ (fxquotient _size61351_ '2))
                 (_start61357_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61348_ _entries61354_)
                   '1)))
            (let _loop61361_ ((_probe61364_ _start61357_)
                              (_i61366_ '1)
                              (_deleted61368_ '#f))
              (let ((_k61371_ (vector-ref _table61345_ _probe61364_)))
                (if (let ((__tmp63010 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61371_ __tmp63010))
                    _default61343_
                    (if (let ((__tmp63011 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61371_ __tmp63011))
                        (let ((__tmp63014
                               (let ((_next-probe61374_
                                      (fx+ _start61357_
                                           _i61366_
                                           (fx* _i61366_ _i61366_))))
                                 (fxmodulo _next-probe61374_ _size61351_)))
                              (__tmp63013 (fx+ _i61366_ '1))
                              (__tmp63012
                               (let ((_$e61377_ _deleted61368_))
                                 (if _$e61377_ _$e61377_ _probe61364_))))
                          (declare (not safe))
                          (_loop61361_ __tmp63014 __tmp63013 __tmp63012))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61342_ _k61371_))
                            (vector-ref _table61345_ (fx+ _probe61364_ '1))
                            (let ((__tmp63016
                                   (let ((_next-probe61380_
                                          (fx+ _start61357_
                                               _i61366_
                                               (fx* _i61366_ _i61366_))))
                                     (fxmodulo _next-probe61380_ _size61351_)))
                                  (__tmp63015 (fx+ _i61366_ '1)))
                              (declare (not safe))
                              (_loop61361_
                               __tmp63016
                               __tmp63015
                               _deleted61368_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab61337_ _key61338_ _value61339_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61337_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61337_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61337_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab61337_
           _key61338_
           _value61339_))))
    (define __class-specializer-table-set!
      (lambda (_tab61292_ _key61293_ _value61294_)
        (let ((_table61297_
               (let () (declare (not safe)) (&raw-table-table _tab61292_)))
              (_seed61298_
               (let () (declare (not safe)) (&raw-table-seed _tab61292_))))
          (let* ((_h61300_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61293_))
                         _seed61298_))
                 (_size61303_ (vector-length _table61297_))
                 (_entries61306_ (fxquotient _size61303_ '2))
                 (_start61309_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61300_ _entries61306_)
                   '1)))
            (let _loop61313_ ((_probe61316_ _start61309_)
                              (_i61318_ '1)
                              (_deleted61320_ '#f))
              (let ((_k61323_ (vector-ref _table61297_ _probe61316_)))
                (if (let ((__tmp63017 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61323_ __tmp63017))
                    (if _deleted61320_
                        (begin
                          (vector-set! _table61297_ _deleted61320_ _key61293_)
                          (vector-set!
                           _table61297_
                           (fx+ _deleted61320_ '1)
                           _value61294_)
                          ((lambda ()
                             (let ((__tmp63018
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61292_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61292_
                                __tmp63018)))))
                        (begin
                          (vector-set! _table61297_ _probe61316_ _key61293_)
                          (vector-set!
                           _table61297_
                           (fx+ _probe61316_ '1)
                           _value61294_)
                          ((lambda ()
                             (let ((__tmp63019
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61292_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61292_ __tmp63019))
                             (let ((__tmp63020
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61292_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61292_
                                __tmp63020))))))
                    (if (let ((__tmp63021 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61323_ __tmp63021))
                        (let ((__tmp63024
                               (let ((_next-probe61328_
                                      (fx+ _start61309_
                                           _i61318_
                                           (fx* _i61318_ _i61318_))))
                                 (fxmodulo _next-probe61328_ _size61303_)))
                              (__tmp63023 (fx+ _i61318_ '1))
                              (__tmp63022
                               (let ((_$e61331_ _deleted61320_))
                                 (if _$e61331_ _$e61331_ _probe61316_))))
                          (declare (not safe))
                          (_loop61313_ __tmp63024 __tmp63023 __tmp63022))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61293_ _k61323_))
                            (begin
                              (vector-set!
                               _table61297_
                               _probe61316_
                               _key61293_)
                              (vector-set!
                               _table61297_
                               (fx+ _probe61316_ '1)
                               _value61294_))
                            (let ((__tmp63026
                                   (let ((_next-probe61334_
                                          (fx+ _start61309_
                                               _i61318_
                                               (fx* _i61318_ _i61318_))))
                                     (fxmodulo _next-probe61334_ _size61303_)))
                                  (__tmp63025 (fx+ _i61318_ '1)))
                              (declare (not safe))
                              (_loop61313_
                               __tmp63026
                               __tmp63025
                               _deleted61320_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab61287_
               _key61288_
               _class-specializer-table-update!61289_
               _default61290_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61287_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61287_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61287_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab61287_
           _key61288_
           _class-specializer-table-update!61289_
           _default61290_))))
    (define __class-specializer-table-update!
      (lambda (_tab61241_
               _key61242_
               _class-specializer-table-update!61243_
               _default61244_)
        (let ((_table61247_
               (let () (declare (not safe)) (&raw-table-table _tab61241_)))
              (_seed61248_
               (let () (declare (not safe)) (&raw-table-seed _tab61241_))))
          (let* ((_h61250_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61242_))
                         _seed61248_))
                 (_size61253_ (vector-length _table61247_))
                 (_entries61256_ (fxquotient _size61253_ '2))
                 (_start61259_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61250_ _entries61256_)
                   '1)))
            (let _loop61263_ ((_probe61266_ _start61259_)
                              (_i61268_ '1)
                              (_deleted61270_ '#f))
              (let ((_k61273_ (vector-ref _table61247_ _probe61266_)))
                (if (let ((__tmp63027 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61273_ __tmp63027))
                    (if _deleted61270_
                        (begin
                          (vector-set! _table61247_ _deleted61270_ _key61242_)
                          (vector-set!
                           _table61247_
                           (fx+ _deleted61270_ '1)
                           (_class-specializer-table-update!61243_
                            _default61244_))
                          ((lambda ()
                             (let ((__tmp63028
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61241_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61241_
                                __tmp63028)))))
                        (begin
                          (vector-set! _table61247_ _probe61266_ _key61242_)
                          (vector-set!
                           _table61247_
                           (fx+ _probe61266_ '1)
                           (_class-specializer-table-update!61243_
                            _default61244_))
                          ((lambda ()
                             (let ((__tmp63029
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61241_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61241_ __tmp63029))
                             (let ((__tmp63030
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61241_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61241_
                                __tmp63030))))))
                    (if (let ((__tmp63031 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61273_ __tmp63031))
                        (let ((__tmp63034
                               (let ((_next-probe61278_
                                      (fx+ _start61259_
                                           _i61268_
                                           (fx* _i61268_ _i61268_))))
                                 (fxmodulo _next-probe61278_ _size61253_)))
                              (__tmp63033 (fx+ _i61268_ '1))
                              (__tmp63032
                               (let ((_$e61281_ _deleted61270_))
                                 (if _$e61281_ _$e61281_ _probe61266_))))
                          (declare (not safe))
                          (_loop61263_ __tmp63034 __tmp63033 __tmp63032))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61242_ _k61273_))
                            (begin
                              (vector-set!
                               _table61247_
                               _probe61266_
                               _key61242_)
                              (vector-set!
                               _table61247_
                               (fx+ _probe61266_ '1)
                               (_class-specializer-table-update!61243_
                                (vector-ref
                                 _table61247_
                                 (fx+ _probe61266_ '1)))))
                            (let ((__tmp63036
                                   (let ((_next-probe61284_
                                          (fx+ _start61259_
                                               _i61268_
                                               (fx* _i61268_ _i61268_))))
                                     (fxmodulo _next-probe61284_ _size61253_)))
                                  (__tmp63035 (fx+ _i61268_ '1)))
                              (declare (not safe))
                              (_loop61263_
                               __tmp63036
                               __tmp63035
                               _deleted61270_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab61200_ _key61202_)
        (let ((_table61205_
               (let () (declare (not safe)) (&raw-table-table _tab61200_)))
              (_seed61207_
               (let () (declare (not safe)) (&raw-table-seed _tab61200_))))
          (let* ((_h61210_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61202_))
                         _seed61207_))
                 (_size61213_ (vector-length _table61205_))
                 (_entries61216_ (fxquotient _size61213_ '2))
                 (_start61219_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61210_ _entries61216_)
                   '1)))
            (let _loop61223_ ((_probe61226_ _start61219_) (_i61228_ '1))
              (let ((_k61231_ (vector-ref _table61205_ _probe61226_)))
                (if (let ((__tmp63037 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61231_ __tmp63037))
                    '#!void
                    (if (let ((__tmp63038 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61231_ __tmp63038))
                        (let ((__tmp63040
                               (let ((_next-probe61234_
                                      (fx+ _start61219_
                                           _i61228_
                                           (fx* _i61228_ _i61228_))))
                                 (fxmodulo _next-probe61234_ _size61213_)))
                              (__tmp63039 (fx+ _i61228_ '1)))
                          (declare (not safe))
                          (_loop61223_ __tmp63040 __tmp63039))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61202_ _k61231_))
                            (begin
                              (vector-set!
                               _table61205_
                               _probe61226_
                               (macro-deleted-obj))
                              (vector-set!
                               _table61205_
                               (fx+ _probe61226_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp63041
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab61200_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab61200_
                                    __tmp63041)))))
                            (let ((__tmp63043
                                   (let ((_next-probe61238_
                                          (fx+ _start61219_
                                               _i61228_
                                               (fx* _i61228_ _i61228_))))
                                     (fxmodulo _next-probe61238_ _size61213_)))
                                  (__tmp63042 (fx+ _i61228_ '1)))
                              (declare (not safe))
                              (_loop61223_ __tmp63043 __tmp63042)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass61193_)
        (let ((_$e61195_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass61193_))))
          (if _$e61195_
              _$e61195_
              (let ((_method-table61198_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass61193_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass61193_ _method-table61198_))
                _method-table61198_)))))
    (define __lookup-class-specializer
      (lambda (_klass61183_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61187_ ()
            (if (let ((__tmp63044
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63044 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61187_))))))
        (let ((_method-table61191_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass61183_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table61191_)))
    (define __bind-class-specializer!
      (lambda (_klass61174_ _method-table61175_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61179_ ()
            (if (let ((__tmp63045
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63045 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61179_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass61174_
           _method-table61175_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass61159_ _method-table61160_ _method61161_ _proc61162_)
        (let ((_$e61164_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table61160_ _method61161_ '#f))))
          (if _$e61164_
              _$e61164_
              (let ((_$e61167_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc61162_))))
                (if _$e61167_
                    ((lambda (_specialize61170_)
                       (let ((_specialized-proc61172_
                              (_specialize61170_
                               _klass61159_
                               _method-table61160_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table61160_
                          _method61161_
                          _specialized-proc61172_)))
                     _$e61167_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table61160_
                       _method61161_
                       _proc61162_))))))))
    (define __specialize-class
      (lambda (_klass61105_)
        (if (let ((__tmp63046
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass61105_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp63046))
            (if (let () (declare (not safe)) (##type? _klass61105_))
                (let ((__tmp63047
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass61105_))))
                  (declare (not safe))
                  (__specialize-class __tmp63047))
                (error '"bad class; cannot specialize" _klass61105_))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass61105_))
                (let ((__method62845
                       (let ()
                         (declare (not safe))
                         (method-ref _klass61105_ 'specialize-class))))
                  (if __method62845
                      (__method62845 _klass61105_)
                      (error '"Missing method"
                             _klass61105_
                             'specialize-class)))
                (if (let ((__tmp63048
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass61105_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp63048))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _klass61105_)
                    (let ((_method-table61107_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop61109_ ((_rest61111_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass61105_))))
                        (let* ((_rest6111261120_ _rest61111_)
                               (_else6111461128_
                                (lambda () _method-table61107_))
                               (_K6111661147_
                                (lambda (_rest61131_ _xklass61132_)
                                  (let ((_xmethod-table6113361135_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass61132_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6113361135_
                                        (let* ((_xmethod-table61138_
                                                _xmethod-table6113361135_)
                                               (__tmp63049
                                                (lambda (_g6113961142_
                                                         _g6114061144_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass61105_
                                                     _method-table61107_
                                                     _g6113961142_
                                                     _g6114061144_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table61138_
                                           __tmp63049))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop61109_ _rest61131_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6111261120_))
                              (let ((_hd6111761150_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6111261120_)))
                                    (_tl6111861152_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6111261120_))))
                                (let* ((_xklass61155_ _hd6111761150_)
                                       (_rest61157_ _tl6111861152_))
                                  (declare (not safe))
                                  (_K6111661147_ _rest61157_ _xklass61155_)))
                              (let ()
                                (declare (not safe))
                                (_else6111461128_)))))))))))
    (define seal-class!
      (lambda (_klass61101_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass61101_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass61101_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass61101_))
                      '#!void
                      (error '"cannot seal non-final class" _klass61101_))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass61101_))
                      (let ((__method62846
                             (let ()
                               (declare (not safe))
                               (method-ref _klass61101_ 'seal-class!))))
                        (if __method62846
                            (__method62846 _klass61101_)
                            (error '"Missing method"
                                   _klass61101_
                                   'seal-class!)))
                      (if (let ((__tmp63050
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass61101_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp63050))
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _klass61101_)
                          (let ((_method-table61103_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass61101_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass61101_
                             _method-table61103_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass61101_))))
            '#!void)))
    (define next-method
      (lambda (_subklass61056_ _obj61057_ _id61058_)
        (letrec ((_find-next-method61060_
                  (lambda (_klass61062_)
                    (let _lp61064_ ((_rest61066_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass61062_))))
                      (let* ((_rest6106761075_ _rest61066_)
                             (_else6106961083_ (lambda () '#f))
                             (_K6107161089_
                              (lambda (_rest61086_ _klass61087_)
                                (if (let ((__tmp63052
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass61056_)))
                                          (__tmp63051
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass61087_))))
                                      (declare (not safe))
                                      (eq? __tmp63052 __tmp63051))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest61086_
                                       _obj61057_
                                       _id61058_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61064_ _rest61086_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6106761075_))
                            (let ((_hd6107261092_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6106761075_)))
                                  (_tl6107361094_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6106761075_))))
                              (let* ((_klass61097_ _hd6107261092_)
                                     (_rest61099_ _tl6107361094_))
                                (declare (not safe))
                                (_K6107161089_ _rest61099_ _klass61097_)))
                            (let ()
                              (declare (not safe))
                              (_else6106961083_))))))))
          (let ((__tmp63053
                 (let () (declare (not safe)) (class-of _obj61057_))))
            (declare (not safe))
            (_find-next-method61060_ __tmp63053)))))
    (define call-next-method
      (lambda (_subklass61046_ _obj61047_ _id61048_ . _args61049_)
        (let ((_$e61051_
               (let ()
                 (declare (not safe))
                 (next-method _subklass61046_ _obj61047_ _id61048_))))
          (if _$e61051_
              ((lambda (_methodf61054_)
                 (apply _methodf61054_ _obj61047_ _args61049_))
               _$e61051_)
              (error '"cannot find next method"
                     'object:
                     _obj61047_
                     'method:
                     _id61048_)))))
    (define write-style (lambda (_we61044_) (macro-writeenv-style _we61044_)))
    (define write-object
      (lambda (_we61036_ _obj61037_)
        (let ((_$e61039_
               (let () (declare (not safe)) (method-ref _obj61037_ ':wr))))
          (if _$e61039_
              ((lambda (_method61042_) (_method61042_ _obj61037_ _we61036_))
               _$e61039_)
              (let ()
                (declare (not safe))
                (##default-wr _we61036_ _obj61037_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type60955_)
        (letrec ((_shadow-type-id60957_
                  (lambda (_type61034_)
                    (let ((__tmp63054
                           (let ()
                             (declare (not safe))
                             (##type-name _type61034_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp63054 '"::t"))))
                 (_shadow-type-name60958_
                  (lambda (_type61032_)
                    (let () (declare (not safe)) (##type-name _type61032_))))
                 (_make-shadow-class60959_
                  (lambda (_type61024_ _precedence-list61025_)
                    (let* ((_super61027_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list61025_))
                                (let ((__tmp63055
                                       (car _precedence-list61025_)))
                                  (declare (not safe))
                                  (cons __tmp63055 '()))
                                '()))
                           (_klass61029_
                            (let ((__tmp63063
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id60957_ _type61024_)))
                                  (__tmp63062
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type61024_)))
                                  (__tmp63056
                                   (let ((__tmp63061
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp63057
                                          (let ((__tmp63060
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp63058
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type61024_))
                                                     '()
                                                     (let ((__tmp63059
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp63059 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp63060 __tmp63058))))
                                     (declare (not safe))
                                     (cons __tmp63061 __tmp63057))))
                              (declare (not safe))
                              (make-class-type
                               __tmp63063
                               __tmp63062
                               _super61027_
                               '()
                               __tmp63056
                               '#f))))
                      (let ((__tmp63064
                             (let ()
                               (declare (not safe))
                               (##type-id _type61024_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp63064
                         _klass61029_))
                      _klass61029_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again60963_ ()
              (if (let ((__tmp63065
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp63065 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again60963_))))))
          (let ((_$e60967_
                 (let ((__tmp63066
                        (let () (declare (not safe)) (##type-id _type60955_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp63066 '#f))))
            (if _$e60967_
                ((lambda (_klass60970_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass60970_)
                 _$e60967_)
                (let _loop60972_ ((_super60974_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type60955_)))
                                  (_hierarchy60975_ '()))
                  (if (let () (declare (not safe)) (not _super60974_))
                      (let _loop60977_ ((_rest60979_ _hierarchy60975_)
                                        (_precedence-list60980_ '()))
                        (let* ((_rest6098160989_ _rest60979_)
                               (_else6098360999_
                                (lambda ()
                                  (let ((_klass60997_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class60959_
                                            _type60955_
                                            _precedence-list60980_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass60997_)))
                               (_K6098561012_
                                (lambda (_rest61002_ _type61003_)
                                  (let ((_$e61005_
                                         (let ((__tmp63067
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type61003_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp63067
                                            '#f))))
                                    (if _$e61005_
                                        ((lambda (_klass61008_)
                                           (let ((__tmp63068
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass61008_
                                                          _precedence-list60980_))))
                                             (declare (not safe))
                                             (_loop60977_
                                              _rest61002_
                                              __tmp63068)))
                                         _$e61005_)
                                        (let* ((_klass61010_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class60959_
                                                   _type61003_
                                                   _precedence-list60980_)))
                                               (__tmp63069
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass61010_
                                                        _precedence-list60980_))))
                                          (declare (not safe))
                                          (_loop60977_
                                           _rest61002_
                                           __tmp63069)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6098160989_))
                              (let ((_hd6098661015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6098160989_)))
                                    (_tl6098761017_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6098160989_))))
                                (let* ((_type61020_ _hd6098661015_)
                                       (_rest61022_ _tl6098761017_))
                                  (declare (not safe))
                                  (_K6098561012_ _rest61022_ _type61020_)))
                              (let ()
                                (declare (not safe))
                                (_else6098360999_)))))
                      (let ((__tmp63071
                             (let ()
                               (declare (not safe))
                               (##type-super _super60974_)))
                            (__tmp63070
                             (let ()
                               (declare (not safe))
                               (cons _super60974_ _hierarchy60975_))))
                        (declare (not safe))
                        (_loop60972_ __tmp63071 __tmp63070)))))))))
    (define class-of
      (lambda (_obj60943_)
        (declare (not interrupts-enabled))
        (let ((_t60946_ (let () (declare (not safe)) (##type _obj60943_))))
          (if (fx= _t60946_ (macro-type-subtyped))
              (let ((_st60948_
                     (let () (declare (not safe)) (##subtype _obj60943_))))
                (if (fx= _st60948_ (macro-subtype-structure))
                    (let ((_klass60950_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj60943_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass60950_
                             'gerbil#class::t))
                          _klass60950_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass60950_))))
                    (if (fx= _st60948_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj60943_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e60952_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st60948_))))
                          (if _$e60952_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e60952_))
                              (error '"unknown class"
                                     'subtype:
                                     _st60948_
                                     'object:
                                     _obj60943_))))))
              (if (fx= _t60946_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t60946_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj60943_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj60943_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj60943_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj60943_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj60943_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj60943_ '#!eof))
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
      (lambda (_id60938_)
        (let ((_$e60940_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id60938_ '#f))))
          (if _$e60940_ _$e60940_ (error '"unknown system class" _id60938_)))))
    (define __make-system-class
      (lambda (_id60933_ _super60934_)
        (let ((_klass60936_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id60933_
                  _id60933_
                  _super60934_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id60933_ _klass60936_))
          _klass60936_)))))
