(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710617600)
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
      (let* ((_slots62657_
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
             (_slot-vector62659_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots62657_))))
             (_slot-table62666_
              (let ((_slot-table62661_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot62663_ _field62664_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table62661_
                      _slot62663_
                      _field62664_))
                   (let ((__tmp62807 (symbol->keyword _slot62663_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table62661_
                      __tmp62807
                      _field62664_)))
                 _slots62657_
                 (iota (length _slots62657_) '1))
                _slot-table62661_))
             (_flags62668_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields62674_
              (list->vector
               (apply append
                      (map (lambda (_g6266962671_) (list _g6266962671_ '5 '#f))
                           (drop _slots62657_ '5)))))
             (_properties62676_
              (let ((__tmp62810
                     (let ((__tmp62811
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots62657_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp62811)))
                    (__tmp62808
                     (let ((__tmp62809
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp62809 '()))))
                (declare (not safe))
                (cons __tmp62810 __tmp62808)))
             (_t62678_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags62668_
                 ##type-type
                 _fields62674_
                 '()
                 _slot-vector62659_
                 _slot-table62666_
                 _properties62676_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t62678_ _t62678_))
        _t62678_))
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags62653_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties62654_ '((direct-slots:) (system: . #t)))
            (_slot-table62655_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           't
           _flags62653_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table62655_
           _properties62654_
           '#f
           '#f))))
    (let ((__tmp62812 (let () (declare (not safe)) (cons t::t '()))))
      (declare (not safe))
      (##unchecked-structure-set! class::t __tmp62812 '6 '#f '#f))
    (define class-type?
      (lambda (_obj62651_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj62651_ class::t.id))))
    (define class-type=?
      (lambda (_x62648_ _y62649_)
        (let ((__tmp62814 (##structure-ref _x62648_ '1 class::t '#f))
              (__tmp62813 (##structure-ref _y62649_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp62814 __tmp62813))))
    (define type-opaque?
      (lambda (_type62646_)
        (let ((__tmp62815
               (let ((__tmp62816
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62646_))))
                 (declare (not safe))
                 (##fxand __tmp62816 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp62815 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type62644_)
        (let ((__tmp62817
               (let ((__tmp62818
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62644_))))
                 (declare (not safe))
                 (##fxand __tmp62818 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp62817 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type62642_)
        (let ((__tmp62819
               (let ((__tmp62820
                      (let ()
                        (declare (not safe))
                        (##type-flags _type62642_))))
                 (declare (not safe))
                 (##fxand __tmp62820 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp62819 '0))))
    (define class-type-struct?
      (lambda (_klass62640_)
        (let ((__tmp62821
               (let ((__tmp62822
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62640_))))
                 (declare (not safe))
                 (##fxand __tmp62822 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp62821 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass62638_)
        (let ((__tmp62823
               (let ((__tmp62824
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62638_))))
                 (declare (not safe))
                 (##fxand __tmp62824 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp62823 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass62636_)
        (let ((__tmp62825
               (let ((__tmp62826
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62636_))))
                 (declare (not safe))
                 (##fxand __tmp62826 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp62825 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass62634_)
        (let ((__tmp62827
               (let ((__tmp62828
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62634_))))
                 (declare (not safe))
                 (##fxand __tmp62828 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp62827 class-type-flag-system))))
    (define properties-form
      (lambda (_properties62600_)
        (map (lambda (_e6260162603_)
               (let* ((_g6260562612_ _e6260162603_)
                      (_E6260762616_
                       (lambda () (error '"No clause matching" _g6260562612_)))
                      (_K6260862622_
                       (lambda (_val62619_ _key62620_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key62620_ 'direct-supers:))
                             (let ((__tmp62829 (map class-type-id _val62619_)))
                               (declare (not safe))
                               (cons _key62620_ __tmp62829))
                             (let ()
                               (declare (not safe))
                               (cons _key62620_ _val62619_))))))
                 (if (let () (declare (not safe)) (##pair? _g6260562612_))
                     (let ((_hd6260962625_
                            (let ()
                              (declare (not safe))
                              (##car _g6260562612_)))
                           (_tl6261062627_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6260562612_))))
                       (let* ((_key62630_ _hd6260962625_)
                              (_val62632_ _tl6261062627_))
                         (declare (not safe))
                         (_K6260862622_ _val62632_ _key62630_)))
                     (let () (declare (not safe)) (_E6260762616_)))))
             _properties62600_)))
    (define make-class-type-descriptor
      (lambda (_type-id62495_
               _type-name62496_
               _type-super62497_
               _precedence-list62498_
               _slot-vector62499_
               _properties62500_
               _constructor62501_
               _slot-table62502_
               _methods62503_)
        (letrec ((_make-props!62505_
                  (lambda (_key62569_)
                    (letrec* ((_ht62571_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!62572_
                               (lambda (_ht62593_ _slots62594_)
                                 (for-each
                                  (lambda (_g6259562597_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht62593_
                                       _g6259562597_
                                       '#t)))
                                  _slots62594_)))
                              (_put-alist!62573_
                               (lambda (_ht62582_ _key62583_ _alist62584_)
                                 (let ((_$e62586_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key62583_
                                           _alist62584_))))
                                   (if _$e62586_
                                       ((lambda (_g6258862590_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!62572_
                                             _ht62582_
                                             _g6258862590_)))
                                        _$e62586_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!62573_
                         _ht62571_
                         _key62569_
                         _properties62500_))
                      (for-each
                       (lambda (_mixin62575_)
                         (let ((_alist62577_
                                (##structure-ref
                                 _mixin62575_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist62577_))
                                   (let ((__tmp62830
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key62569_
                                             _alist62577_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp62830)))
                               (let ((__tmp62831
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin62575_))))
                                 (declare (not safe))
                                 (_put-slots!62572_ _ht62571_ __tmp62831))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!62573_
                                  _ht62571_
                                  _key62569_
                                  _alist62577_)))))
                       _precedence-list62498_)
                      _ht62571_))))
          (let* ((_transparent?62507_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties62500_)))
                 (_all-slots-printable?62512_
                  (let ((_$e62509_ _transparent?62507_))
                    (if _$e62509_
                        _$e62509_
                        (let ((__tmp62832
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties62500_))))
                          (declare (not safe))
                          (eq? '#t __tmp62832)))))
                 (_printable62514_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?62512_))
                      (let ()
                        (declare (not safe))
                        (_make-props!62505_ 'print:))
                      '#f))
                 (_all-slots-equalable?62519_
                  (let ((_$e62516_ _transparent?62507_))
                    (if _$e62516_
                        _$e62516_
                        (let ((__tmp62833
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties62500_))))
                          (declare (not safe))
                          (eq? '#t __tmp62833)))))
                 (_equalable62521_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?62519_))
                      (let ()
                        (declare (not safe))
                        (_make-props!62505_ 'equal:))
                      '#f))
                 (_first-new-field62523_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super62497_
                         'gerbil#class::t))
                      (let ((__tmp62834
                             (##structure-ref
                              _type-super62497_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp62834))
                      '1))
                 (_field-info-length62525_
                  (let ((__tmp62835
                         (let ((__tmp62836
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector62499_))))
                           (declare (not safe))
                           (##fx- __tmp62836 _first-new-field62523_))))
                    (declare (not safe))
                    (##fx* '3 __tmp62835)))
                 (_field-info62527_ (make-vector _field-info-length62525_ '#f))
                 (_struct?62529_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties62500_)))
                 (_final?62531_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties62500_)))
                 (_metaclass62539_
                  (let ((_metaclass6253262534_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties62500_))))
                    (if _metaclass6253262534_
                        (let ((_metaclass62537_ _metaclass6253262534_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass62537_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id62495_
                                     'metaclass:
                                     _metaclass62537_))
                          _metaclass62537_)
                        '#f)))
                 (_system?62541_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties62500_)))
                 (_opaque?62546_
                  (let ((_$e62543_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?62519_))))
                    (if _$e62543_
                        _$e62543_
                        (if _type-super62497_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super62497_))
                            '#f))))
                 (_type-flags62548_
                  (let ((__tmp62841 (if _final?62531_ '0 type-flag-extensible))
                        (__tmp62840 (if _opaque?62546_ type-flag-opaque '0))
                        (__tmp62839
                         (if _struct?62529_ class-type-flag-struct '0))
                        (__tmp62838
                         (if _metaclass62539_ class-type-flag-metaclass '0))
                        (__tmp62837
                         (if _system?62541_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp62841
                             __tmp62840
                             __tmp62839
                             __tmp62838
                             __tmp62837)))
                 (_precedence-list62550_
                  (if (memq t::t _precedence-list62498_)
                      (begin
                        (if (let ((__tmp62842 (last _precedence-list62498_)))
                              (declare (not safe))
                              (eq? __tmp62842 t::t))
                            '#!void
                            (error '"BUG: t::t is not last in the precedence list"))
                        _precedence-list62498_)
                      (let ()
                        (declare (not safe))
                        (append1! _precedence-list62498_ t::t)))))
            (let _loop62553_ ((_i62555_ _first-new-field62523_) (_j62556_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j62556_ _field-info-length62525_))
                  (let* ((_slot62558_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector62499_ _i62555_)))
                         (_flags62566_
                          (if _transparent?62507_
                              '0
                              (let ((__tmp62844
                                     (if (or _all-slots-printable?62512_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable62514_
                                                _slot62558_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp62843
                                     (if (or _all-slots-equalable?62519_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable62521_
                                                _slot62558_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp62844 __tmp62843)))))
                    (vector-set! _field-info62527_ _j62556_ _slot62558_)
                    (vector-set!
                     _field-info62527_
                     (let () (declare (not safe)) (##fx+ _j62556_ '1))
                     _flags62566_)
                    (let ((__tmp62846
                           (let () (declare (not safe)) (##fx+ _i62555_ '1)))
                          (__tmp62845
                           (let () (declare (not safe)) (##fx+ _j62556_ '3))))
                      (declare (not safe))
                      (_loop62553_ __tmp62846 __tmp62845)))
                  '#!void))
            (if _metaclass62539_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass62539_
                   _type-id62495_
                   _type-name62496_
                   _type-flags62548_
                   _type-super62497_
                   _field-info62527_
                   _precedence-list62550_
                   _slot-vector62499_
                   _slot-table62502_
                   _properties62500_
                   _constructor62501_
                   _methods62503_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id62495_
                   _type-name62496_
                   _type-flags62548_
                   _type-super62497_
                   _field-info62527_
                   _precedence-list62550_
                   _slot-vector62499_
                   _slot-table62502_
                   _properties62500_
                   _constructor62501_
                   _methods62503_)))))))
    (define class-type-id
      (lambda (_klass62493_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62493_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass62491_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62491_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass62488_ _val62489_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62488_ _val62489_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass62483_ _val62485_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62483_
           _val62485_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass62481_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62481_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass62479_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62479_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass62476_ _val62477_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62476_ _val62477_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass62471_ _val62473_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62471_
           _val62473_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass62469_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62469_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass62467_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62467_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass62464_ _val62465_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62464_ _val62465_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass62459_ _val62461_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62459_
           _val62461_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass62457_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62457_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass62455_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62455_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass62452_ _val62453_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62452_ _val62453_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass62447_ _val62449_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62447_
           _val62449_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass62445_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62445_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass62443_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62443_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass62440_ _val62441_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62440_ _val62441_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass62435_ _val62437_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62435_
           _val62437_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass62433_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62433_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass62431_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass62431_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass62428_ _val62429_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62428_
           _val62429_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass62423_ _val62425_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62423_
           _val62425_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass62421_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62421_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass62419_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62419_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass62416_ _val62417_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62416_
           _val62417_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass62411_ _val62413_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62411_
           _val62413_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass62409_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62409_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass62407_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62407_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass62404_ _val62405_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62404_ _val62405_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass62399_ _val62401_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62399_
           _val62401_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass62397_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62397_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass62395_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62395_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass62392_ _val62393_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62392_ _val62393_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass62387_ _val62389_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62387_
           _val62389_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass62385_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62385_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass62383_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62383_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass62380_ _val62381_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass62380_
           _val62381_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass62375_ _val62377_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62375_
           _val62377_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass62373_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass62373_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass62371_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass62371_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass62368_ _val62369_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass62368_ _val62369_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass62363_ _val62365_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62363_
           _val62365_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass62361_)
        (cdr (vector->list (##structure-ref _klass62361_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass62359_)
        (let ((__tmp62847
               (let ((__tmp62848
                      (##structure-ref _klass62359_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp62848))))
          (declare (not safe))
          (##fx- __tmp62847 '1))))
    (define class-type-seal!
      (lambda (_klass62357_)
        (let ((__tmp62849
               (let ((__tmp62850
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62357_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp62850))))
          (declare (not safe))
          (##structure-set!
           _klass62357_
           __tmp62849
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass62355_)
        (let ((__tmp62851
               (let ((__tmp62852
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass62355_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp62852))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass62355_
           __tmp62851
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct62346_ _maybe-super-struct62347_)
        (let ((_maybe-super-struct-id62349_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct62347_))))
          (let _lp62351_ ((_super-struct62353_ _maybe-sub-struct62346_))
            (if (let () (declare (not safe)) (not _super-struct62353_))
                '#f
                (if (let ((__tmp62853
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct62353_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id62349_ __tmp62853))
                    '#t
                    (let ((__tmp62854
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct62353_))))
                      (declare (not safe))
                      (_lp62351_ __tmp62854))))))))
    (define base-struct/1
      (lambda (_klass62344_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62344_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass62344_))
                _klass62344_
                (let () (declare (not safe)) (##type-super _klass62344_)))
            (if (let () (declare (not safe)) (not _klass62344_))
                '#f
                (error '"not a class or false" _klass62344_)))))
    (define base-struct/2
      (lambda (_klass162332_ _klass262333_)
        (let ((_s162335_
               (let () (declare (not safe)) (base-struct/1 _klass162332_)))
              (_s262336_
               (let () (declare (not safe)) (base-struct/1 _klass262333_))))
          (if (or (let () (declare (not safe)) (not _s162335_))
                  (and _s262336_
                       (let ()
                         (declare (not safe))
                         (substruct? _s162335_ _s262336_))))
              _s262336_
              (if (or (let () (declare (not safe)) (not _s262336_))
                      (and _s162335_
                           (let ()
                             (declare (not safe))
                             (substruct? _s262336_ _s162335_))))
                  _s162335_
                  (error '"bad mixin: incompatible struct bases"
                         _klass162332_
                         _klass262333_
                         _s162335_
                         _s262336_))))))
    (define base-struct/list
      (lambda (_all-supers62216_)
        (let* ((_all-supers6221762242_ _all-supers62216_)
               (_E6222262246_
                (lambda ()
                  (error '"No clause matching" _all-supers6221762242_))))
          (let ((_K6224062329_ (lambda () '#f))
                (_K6223762315_
                 (lambda (_x62313_)
                   (let () (declare (not safe)) (base-struct/1 _x62313_))))
                (_K6223262292_
                 (lambda (_y62289_ _x62290_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x62290_ _y62289_))))
                (_K6222362253_
                 (lambda (_y62250_ _x62251_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x62251_ _y62250_)))))
            (let* ((___match6280162802_
                    (lambda (_hd6222462256_ _tl6222562258_)
                      (let ((_x62261_ _hd6222462256_))
                        (letrec ((_splice-rest6222762263_
                                  (lambda (_rest6223162270_ _y62272_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6223162270_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6222362253_ _y62272_ _x62261_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6222262246_)))))
                                 (_splice-try6222962265_
                                  (lambda (_hd6223062274_
                                           _rest6223162276_
                                           _y6222662277_)
                                    (let ((_y62280_ _hd6223062274_))
                                      (let ((__tmp62856
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6223162276_)))
                                            (__tmp62855
                                             (let ()
                                               (declare (not safe))
                                               (cons _y62280_ _y6222662277_))))
                                        (declare (not safe))
                                        (_splice-loop6222862267_
                                         __tmp62856
                                         __tmp62855)))))
                                 (_splice-loop6222862267_
                                  (lambda (_rest6223162282_ _y6222662283_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6223162282_))
                                        (let ((__tmp62857
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6223162282_))))
                                          (declare (not safe))
                                          (_splice-try6222962265_
                                           __tmp62857
                                           _rest6223162282_
                                           _y6222662283_))
                                        (let ((__tmp62858
                                               (reverse _y6222662283_)))
                                          (declare (not safe))
                                          (_splice-rest6222762263_
                                           _rest6223162282_
                                           __tmp62858))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6222862267_ _tl6222562258_ '()))))))
                   (_try-match6221962325_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6221762242_))
                          (let ((_tl6223962320_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6221762242_)))
                                (_hd6223862318_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6221762242_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6223962320_))
                                (let ((_x62323_ _hd6223862318_))
                                  (declare (not safe))
                                  (base-struct/1 _x62323_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6223962320_))
                                    (let ((_tl6223662304_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6223962320_)))
                                          (_hd6223562302_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6223962320_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6223662304_))
                                          (let ((_x62300_ _hd6223862318_)
                                                (_y62307_ _hd6223562302_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6223262292_
                                               _y62307_
                                               _x62300_)))
                                          (___match6280162802_
                                           _hd6223862318_
                                           _tl6223962320_)))
                                    (___match6280162802_
                                     _hd6223862318_
                                     _tl6223962320_))))
                          (let () (declare (not safe)) (_E6222262246_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6221762242_))
                  (let () (declare (not safe)) (_K6224062329_))
                  (let () (declare (not safe)) (_try-match6221962325_))))))))
    (define base-struct
      (lambda _all-supers62214_
        (let () (declare (not safe)) (base-struct/list _all-supers62214_))))
    (define find-super-constructor
      (lambda (_super62166_)
        (let _lp62168_ ((_rest62170_ _super62166_) (_constructor62171_ '#f))
          (let* ((_rest6217262180_ _rest62170_)
                 (_else6217462188_ (lambda () _constructor62171_))
                 (_K6217662202_
                  (lambda (_rest62191_ _hd62192_)
                    (let ((_$e62194_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd62192_
                              '10
                              class::t
                              '#f))))
                      (if _$e62194_
                          ((lambda (_xconstructor62197_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor62171_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor62171_
                                            _xconstructor62197_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp62168_ _rest62191_ _xconstructor62197_))
                                 (error '"conflicting implicit constructors"
                                        _constructor62171_
                                        _xconstructor62197_)))
                           _$e62194_)
                          (let ()
                            (declare (not safe))
                            (_lp62168_ _rest62191_ _constructor62171_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6217262180_))
                (let ((_hd6217762205_
                       (let () (declare (not safe)) (##car _rest6217262180_)))
                      (_tl6217862207_
                       (let () (declare (not safe)) (##cdr _rest6217262180_))))
                  (let* ((_hd62210_ _hd6217762205_)
                         (_rest62212_ _tl6217862207_))
                    (declare (not safe))
                    (_K6217662202_ _rest62212_ _hd62210_)))
                (let () (declare (not safe)) (_else6217462188_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list62142_ _direct-slots62143_)
        (let* ((_next-slot62145_ '1)
               (_slot-table62147_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots62149_ '(__class))
               (_process-slot62153_
                (lambda (_slot62151_)
                  (if (let () (declare (not safe)) (symbol? _slot62151_))
                      '#!void
                      (error '"invalid slot name" _slot62151_))
                  (if (let ((__tmp62859
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table62147_
                                _slot62151_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp62859 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62147_
                           _slot62151_
                           _next-slot62145_))
                        (let ((__tmp62860 (symbol->keyword _slot62151_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table62147_
                           __tmp62860
                           _next-slot62145_))
                        (set! _r-slots62149_
                              (let ()
                                (declare (not safe))
                                (cons _slot62151_ _r-slots62149_)))
                        (set! _next-slot62145_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot62145_ '1))))
                      '#!void)))
               (_process-slots62159_
                (lambda (_g6215462156_)
                  (for-each _process-slot62153_ _g6215462156_))))
          (for-each
           (lambda (_mixin62162_)
             (let ((__tmp62861
                    (let ((__tmp62862
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin62162_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp62862 '()))))
               (declare (not safe))
               (_process-slots62159_ __tmp62861)))
           (reverse _class-precedence-list62142_))
          (let ()
            (declare (not safe))
            (_process-slots62159_ _direct-slots62143_))
          (let ((_slot-vector62164_ (list->vector (reverse _r-slots62149_))))
            (values _slot-vector62164_ _slot-table62147_)))))
    (define make-class-type
      (lambda (_id62104_
               _name62105_
               _direct-supers62106_
               _direct-slots62107_
               _properties62108_
               _constructor62109_)
        (let ((_$e62114_
               (let ((__tmp62863
                      (lambda (_$obj62111_)
                        (let ((__tmp62864
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj62111_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp62864)))))
                 (declare (not safe))
                 (find __tmp62863 _direct-supers62106_))))
          (if _$e62114_
              ((lambda (_g6211662118_)
                 (error '"Illegal super class; not a class descriptor"
                        _g6211662118_))
               _$e62114_)
              (let ((_$e62121_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers62106_))))
                (if _$e62121_
                    ((lambda (_g6212362125_)
                       (error '"Cannot extend final class" _g6212362125_))
                     _$e62121_)
                    '#!void))))
        (let ((_g62865_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers62106_))))
          (begin
            (let ((_g62866_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g62865_) (##vector-length _g62865_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g62866_ 2)))
                  (error "Context expects 2 values" _g62866_)))
            (let ((_precedence-list62128_
                   (let () (declare (not safe)) (##vector-ref _g62865_ 0)))
                  (_struct-super62129_
                   (let () (declare (not safe)) (##vector-ref _g62865_ 1))))
              (let ((_g62867_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list62128_
                        _direct-slots62107_))))
                (begin
                  (let ((_g62868_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g62867_)
                               (##vector-length _g62867_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g62868_ 2)))
                        (error "Context expects 2 values" _g62868_)))
                  (let ((_slot-vector62131_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g62867_ 0)))
                        (_slot-table62132_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g62867_ 1))))
                    (let* ((_properties62134_
                            (let ((__tmp62871
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots62107_)))
                                  (__tmp62869
                                   (let ((__tmp62870
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers62106_))))
                                     (declare (not safe))
                                     (cons __tmp62870 _properties62108_))))
                              (declare (not safe))
                              (cons __tmp62871 __tmp62869)))
                           (_constructor*62139_
                            (let ((_$e62136_ _constructor62109_))
                              (if _$e62136_
                                  _$e62136_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers62106_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id62104_
                         _name62105_
                         _struct-super62129_
                         _precedence-list62128_
                         _slot-vector62131_
                         _properties62134_
                         _constructor*62139_
                         _slot-table62132_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass62102_)
        (let ((__tmp62872
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62102_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass62102_ __tmp62872))))
    (define compute-precedence-list
      (lambda (_direct-supers62100_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers62100_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass62084_)
        (let ((_tid62086_
               (let () (declare (not safe)) (##type-id _klass62084_))))
          (if (let () (declare (not safe)) (class-type-final? _klass62084_))
              (lambda (_g6208762089_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6208762089_ _tid62086_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass62084_))
                  (lambda (_g6209162093_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6209162093_ _tid62086_)))
                  (lambda (_g6209562097_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass62084_ _g6209562097_))))))))
    (define if-class-slot-field
      (lambda (_klass62073_
               _slot62074_
               _if-final62075_
               _if-struct62076_
               _if-struct-field62077_
               _if-class-slot62078_)
        (let ((_field62080_
               (let ((__tmp62873
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass62073_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp62873 _slot62074_ '#f))))
          (if (let () (declare (not safe)) (not _field62080_))
              (error '"unknown slot" 'class: _klass62073_ 'slot: _slot62074_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass62073_))
                  (_if-final62075_ _klass62073_ _slot62074_ _field62080_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass62073_))
                      (_if-struct62076_ _klass62073_ _slot62074_ _field62080_)
                      (if (let ((_strukt62082_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass62073_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt62082_
                                    'gerbil#class::t))
                                 (let ((__tmp62874
                                        (let ((__tmp62875
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt62082_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp62875))))
                                   (declare (not safe))
                                   (##fx< _field62080_ __tmp62874))))
                          (_if-struct-field62077_
                           _klass62073_
                           _slot62074_
                           _field62080_)
                          (_if-class-slot62078_
                           _klass62073_
                           _slot62074_
                           _field62080_))))))))
    (define make-class-slot-accessor
      (lambda (_klass62070_ _slot62071_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62070_
           _slot62071_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass62067_ _slot62068_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62067_
           _slot62068_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass62064_ _slot62065_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62064_
           _slot62065_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass62061_ _slot62062_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62061_
           _slot62062_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object62045_ _class62046_ _slot62047_)
        (apply error
               '"not an instance"
               'object:
               _object62045_
               'class:
               _class62046_
               (if _slot62047_
                   (let ((__tmp62876
                          (let ()
                            (declare (not safe))
                            (cons _slot62047_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp62876))
                   '()))))
    (define not-an-instance__0
      (lambda (_object62052_ _class62053_)
        (let ((_slot62055_ '#f))
          (declare (not safe))
          (not-an-instance__% _object62052_ _class62053_ _slot62055_))))
    (define not-an-instance
      (lambda _g62878_
        (let ((_g62877_ (let () (declare (not safe)) (##length _g62878_))))
          (cond ((let () (declare (not safe)) (##fx= _g62877_ 2))
                 (apply (lambda (_object62052_ _class62053_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object62052_ _class62053_)))
                        _g62878_))
                ((let () (declare (not safe)) (##fx= _g62877_ 3))
                 (apply (lambda (_object62057_ _class62058_ _slot62059_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object62057_
                             _class62058_
                             _slot62059_)))
                        _g62878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g62878_))))))
    (define make-final-slot-accessor
      (lambda (_klass62038_ _slot62039_ _field62040_)
        (lambda (_obj62042_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj62042_
             _field62040_
             _klass62038_
             _slot62039_)))))
    (define make-final-slot-mutator
      (lambda (_klass62031_ _slot62032_ _field62033_)
        (lambda (_obj62035_ _val62036_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj62035_
             _val62036_
             _field62033_
             _klass62031_
             _slot62032_)))))
    (define make-struct-slot-accessor
      (lambda (_klass62025_ _slot62026_ _field62027_)
        (lambda (_obj62029_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj62029_
             _field62027_
             _klass62025_
             _slot62026_)))))
    (define make-struct-slot-mutator
      (lambda (_klass62018_ _slot62019_ _field62020_)
        (lambda (_obj62022_ _val62023_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj62022_
             _val62023_
             _field62020_
             _klass62018_
             _slot62019_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass62012_ _slot62013_ _field62014_)
        (lambda (_obj62016_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj62016_
             _field62014_
             _klass62012_
             _slot62013_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass62005_ _slot62006_ _field62007_)
        (lambda (_obj62009_ _val62010_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj62009_
             _val62010_
             _field62007_
             _klass62005_
             _slot62006_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass61999_ _slot62000_ _field62001_)
        (lambda (_obj62003_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass61999_ _obj62003_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62003_ _field62001_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62003_ _klass61999_ _slot62000_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass61992_ _slot61993_ _field61994_)
        (lambda (_obj61996_ _val61997_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass61992_ _obj61996_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj61996_ _field61994_ _val61997_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj61996_ _klass61992_ _slot61993_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass61986_ _slot61987_ _field61988_)
        (lambda (_obj61990_)
          (if (let ((__tmp62879
                     (let () (declare (not safe)) (##type-id _klass61986_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj61990_ __tmp62879))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj61990_ _field61988_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass61986_ _obj61990_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj61990_ _slot61987_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj61990_
                     _klass61986_
                     _slot61987_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass61979_ _slot61980_ _field61981_)
        (lambda (_obj61983_ _val61984_)
          (if (let ((__tmp62880
                     (let () (declare (not safe)) (##type-id _klass61979_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj61983_ __tmp62880))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj61983_ _field61981_ _val61984_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass61979_ _obj61983_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj61983_ _slot61980_ _val61984_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj61983_
                     _klass61979_
                     _slot61980_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass61973_ _slot61974_ _field61975_)
        (lambda (_obj61977_)
          (if (let ((__tmp62881
                     (let () (declare (not safe)) (##type-id _klass61973_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj61977_ __tmp62881))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj61977_ _field61975_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj61977_ _slot61974_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass61966_ _slot61967_ _field61968_)
        (lambda (_obj61970_ _val61971_)
          (if (let ((__tmp62882
                     (let () (declare (not safe)) (##type-id _klass61966_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj61970_ __tmp62882))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj61970_ _field61968_ _val61971_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj61970_ _slot61967_ _val61971_))))))
    (define class-slot-offset
      (lambda (_klass61963_ _slot61964_)
        (let ((__tmp62883
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass61963_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp62883 _slot61964_ '#f))))
    (define class-slot-ref
      (lambda (_klass61957_ _obj61958_ _slot61959_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass61957_ _obj61958_))
            (let ((_off61961_
                   (let ((__tmp62884 (object-type _obj61958_)))
                     (declare (not safe))
                     (class-slot-offset __tmp62884 _slot61959_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj61958_
               _off61961_
               _klass61957_
               _slot61959_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj61958_ _klass61957_)))))
    (define class-slot-set!
      (lambda (_klass61950_ _obj61951_ _slot61952_ _val61953_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass61950_ _obj61951_))
            (let ((_off61955_
                   (let ((__tmp62885 (object-type _obj61951_)))
                     (declare (not safe))
                     (class-slot-offset __tmp62885 _slot61952_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj61951_
               _val61953_
               _off61955_
               _klass61950_
               _slot61952_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj61951_ _klass61950_)))))
    (define unchecked-field-ref
      (lambda (_obj61947_ _off61948_)
        (let ((__tmp62886
               (let () (declare (not safe)) (##structure-type _obj61947_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj61947_ _off61948_ __tmp62886 '#f))))
    (define unchecked-field-set!
      (lambda (_obj61943_ _off61944_ _val61945_)
        (let ((__tmp62887
               (let () (declare (not safe)) (##structure-type _obj61943_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj61943_
           _val61945_
           _off61944_
           __tmp62887
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj61940_ _slot61941_)
        (let ((__tmp62888
               (let ((__tmp62889
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj61940_))))
                 (declare (not safe))
                 (class-slot-offset __tmp62889 _slot61941_))))
          (declare (not safe))
          (unchecked-field-ref _obj61940_ __tmp62888))))
    (define unchecked-slot-set!
      (lambda (_obj61936_ _slot61937_ _val61938_)
        (let ((__tmp62890
               (let ((__tmp62891
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj61936_))))
                 (declare (not safe))
                 (class-slot-offset __tmp62891 _slot61937_))))
          (declare (not safe))
          (unchecked-field-set! _obj61936_ __tmp62890 _val61938_))))
    (define slot-ref__%
      (lambda (_obj61912_ _slot61913_ _E61914_)
        (if (object? _obj61912_)
            (let* ((_klass61916_ (object-type _obj61912_))
                   (_$e61919_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass61916_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass61916_ _slot61913_))
                        '#f)))
              (if _$e61919_
                  ((lambda (_off61922_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj61912_ _off61922_)))
                   _$e61919_)
                  (_E61914_ _obj61912_ _slot61913_)))
            (_E61914_ _obj61912_ _slot61913_))))
    (define slot-ref__0
      (lambda (_obj61927_ _slot61928_)
        (let ((_E61930_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj61927_ _slot61928_ _E61930_))))
    (define slot-ref
      (lambda _g62893_
        (let ((_g62892_ (let () (declare (not safe)) (##length _g62893_))))
          (cond ((let () (declare (not safe)) (##fx= _g62892_ 2))
                 (apply (lambda (_obj61927_ _slot61928_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj61927_ _slot61928_)))
                        _g62893_))
                ((let () (declare (not safe)) (##fx= _g62892_ 3))
                 (apply (lambda (_obj61932_ _slot61933_ _E61934_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj61932_ _slot61933_ _E61934_)))
                        _g62893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g62893_))))))
    (define slot-set!__%
      (lambda (_obj61884_ _slot61885_ _val61886_ _E61887_)
        (if (object? _obj61884_)
            (let* ((_klass61889_ (object-type _obj61884_))
                   (_$e61892_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass61889_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass61889_ _slot61885_))
                        '#f)))
              (if _$e61892_
                  ((lambda (_off61895_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj61884_
                        _off61895_
                        _val61886_)))
                   _$e61892_)
                  (_E61887_ _obj61884_ _slot61885_)))
            (_E61887_ _obj61884_ _slot61885_))))
    (define slot-set!__0
      (lambda (_obj61900_ _slot61901_ _val61902_)
        (let ((_E61904_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj61900_ _slot61901_ _val61902_ _E61904_))))
    (define slot-set!
      (lambda _g62895_
        (let ((_g62894_ (let () (declare (not safe)) (##length _g62895_))))
          (cond ((let () (declare (not safe)) (##fx= _g62894_ 3))
                 (apply (lambda (_obj61900_ _slot61901_ _val61902_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj61900_ _slot61901_ _val61902_)))
                        _g62895_))
                ((let () (declare (not safe)) (##fx= _g62894_ 4))
                 (apply (lambda (_obj61906_ _slot61907_ _val61908_ _E61909_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj61906_
                             _slot61907_
                             _val61908_
                             _E61909_)))
                        _g62895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g62895_))))))
    (define __slot-error
      (lambda (_obj61880_ _slot61881_)
        (error '"Cannot find slot" 'object: _obj61880_ 'slot: _slot61881_)))
    (define subclass?
      (lambda (_maybe-sub-class61870_ _maybe-super-class61871_)
        (let* ((_maybe-super-class-id61873_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class61871_)))
               (_$e61875_
                (let ((__tmp62896
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class61870_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id61873_ __tmp62896))))
          (if _$e61875_
              _$e61875_
              (let ((__tmp62898
                     (lambda (_super-class61878_)
                       (let ((__tmp62899
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class61878_))))
                         (declare (not safe))
                         (eq? __tmp62899 _maybe-super-class-id61873_))))
                    (__tmp62897
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class61870_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp62898 __tmp62897))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass61867_ _obj61868_)
        (let ((__tmp62900
               (let () (declare (not safe)) (##type-id _klass61867_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj61868_ __tmp62900))))
    (define struct-instance?
      (lambda (_klass61864_ _obj61865_)
        (let ((__tmp62901
               (let () (declare (not safe)) (##type-id _klass61864_))))
          (declare (not safe))
          (##structure-instance-of? _obj61865_ __tmp62901))))
    (define class-instance?
      (lambda (_klass61859_ _obj61860_)
        (if (object? _obj61860_)
            (let ((_type61862_ (object-type _obj61860_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type61862_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type61862_ _klass61859_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass61854_ _k61855_)
        (if (let () (declare (not safe)) (class-type-system? _klass61854_))
            (error '"cannot instantiate system class" 'class: _klass61854_)
            (let ((_obj61857_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass61854_ _k61855_))))
              (let () (declare (not safe)) (object-fill! _obj61857_ '#f))
              _obj61857_))))
    (define object-fill!
      (lambda (_obj61847_ _fill61848_)
        (let _loop61850_ ((_i61852_
                           (let ((__tmp62903
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj61847_))))
                             (declare (not safe))
                             (##fx- __tmp62903 '1))))
          (if (let () (declare (not safe)) (##fx> _i61852_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj61847_
                   _fill61848_
                   _i61852_
                   '#f
                   '#f))
                (let ((__tmp62902
                       (let () (declare (not safe)) (##fx- _i61852_ '1))))
                  (declare (not safe))
                  (_loop61850_ __tmp62902)))
              _obj61847_))))
    (define new-instance
      (lambda (_klass61845_)
        (let ((__obj62803
               (let ((__tmp62904
                      (let ((__tmp62905
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass61845_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp62905))))
                 (declare (not safe))
                 (##make-structure _klass61845_ __tmp62904))))
          (let () (declare (not safe)) (object-fill! __obj62803 '#f))
          __obj62803)))
    (define make-instance
      (lambda (_klass61835_ . _args61836_)
        (let* ((_obj61838_
                (let () (declare (not safe)) (new-instance _klass61835_)))
               (_$e61840_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass61835_ '10 class::t '#f))))
          (if _$e61840_
              ((lambda (_kons-id61843_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass61835_
                    _kons-id61843_
                    _obj61838_
                    _args61836_)))
               _$e61840_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass61835_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass61835_
                     _obj61838_
                     _args61836_))
                  (if (let ((__tmp62906
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass61835_))))
                        (declare (not safe))
                        (not __tmp62906))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass61835_
                         _obj61838_
                         _args61836_))
                      (if (let ((__tmp62908
                                 (let ((__tmp62909
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj61838_))))
                                   (declare (not safe))
                                   (##fx- __tmp62909 '1)))
                                (__tmp62907 (length _args61836_)))
                            (declare (not safe))
                            (##fx= __tmp62908 __tmp62907))
                          (apply ##structure _klass61835_ _args61836_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass61835_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass61835_))
                                 'args:
                                 _args61836_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj61832_ . _args61833_)
        (if (let ((__tmp62911 (length _args61833_))
                  (__tmp62910
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj61832_))))
              (declare (not safe))
              (##fx< __tmp62911 __tmp62910))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj61832_ _args61833_))
            (error '"too many arguments for struct"
                   'object:
                   _obj61832_
                   'args:
                   _args61833_))))
    (define __struct-instance-init!
      (lambda (_obj61791_ _args61792_)
        (let _lp61794_ ((_k61796_ '1) (_rest61797_ _args61792_))
          (let* ((_rest6179861806_ _rest61797_)
                 (_else6180061814_ (lambda () _obj61791_))
                 (_K6180261820_
                  (lambda (_rest61817_ _hd61818_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj61791_ _k61796_ _hd61818_))
                    (let ((__tmp62912
                           (let () (declare (not safe)) (##fx+ _k61796_ '1))))
                      (declare (not safe))
                      (_lp61794_ __tmp62912 _rest61817_)))))
            (if (let () (declare (not safe)) (##pair? _rest6179861806_))
                (let ((_hd6180361823_
                       (let () (declare (not safe)) (##car _rest6179861806_)))
                      (_tl6180461825_
                       (let () (declare (not safe)) (##cdr _rest6179861806_))))
                  (let* ((_hd61828_ _hd6180361823_)
                         (_rest61830_ _tl6180461825_))
                    (declare (not safe))
                    (_K6180261820_ _rest61830_ _hd61828_)))
                (let () (declare (not safe)) (_else6180061814_)))))))
    (define class-instance-init!
      (lambda (_obj61788_ . _args61789_)
        (let ((__tmp62913 (object-type _obj61788_)))
          (declare (not safe))
          (__class-instance-init! __tmp62913 _obj61788_ _args61789_))))
    (define __class-instance-init!
      (lambda (_klass61732_ _obj61733_ _args61734_)
        (let _lp61736_ ((_rest61738_ _args61734_))
          (let* ((_rest6173961749_ _rest61738_)
                 (_else6174161757_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest61738_))
                        _obj61733_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass61732_
                               'rest:
                               _rest61738_))))
                 (_K6174361769_
                  (lambda (_rest61760_ _val61761_ _key61762_)
                    (let ((_$e61764_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass61732_ _key61762_))))
                      (if _$e61764_
                          ((lambda (_off61767_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj61733_
                                _off61767_
                                _val61761_))
                             (let ()
                               (declare (not safe))
                               (_lp61736_ _rest61760_)))
                           _$e61764_)
                          (error '"unknown slot"
                                 'class:
                                 _klass61732_
                                 'slot:
                                 _key61762_))))))
            (if (let () (declare (not safe)) (##pair? _rest6173961749_))
                (let ((_hd6174461772_
                       (let () (declare (not safe)) (##car _rest6173961749_)))
                      (_tl6174561774_
                       (let () (declare (not safe)) (##cdr _rest6173961749_))))
                  (let ((_key61777_ _hd6174461772_))
                    (if (let () (declare (not safe)) (##pair? _tl6174561774_))
                        (let ((_hd6174661779_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6174561774_)))
                              (_tl6174761781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6174561774_))))
                          (let* ((_val61784_ _hd6174661779_)
                                 (_rest61786_ _tl6174761781_))
                            (declare (not safe))
                            (_K6174361769_ _rest61786_ _val61784_ _key61777_)))
                        (let () (declare (not safe)) (_else6174161757_)))))
                (let () (declare (not safe)) (_else6174161757_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass61728_ _obj61729_ _args61730_)
        (apply call-method
               _klass61728_
               'instance-init!
               _obj61729_
               _args61730_)))
    (define constructor-init!
      (lambda (_klass61723_ _kons-id61724_ _obj61725_ . _args61726_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass61723_
           _kons-id61724_
           _obj61725_
           _args61726_))))
    (define __constructor-init!
      (lambda (_klass61713_ _kons-id61714_ _obj61715_ _args61716_)
        (let ((_$e61718_
               (let ()
                 (declare (not safe))
                 (__find-method _klass61713_ _obj61715_ _kons-id61714_))))
          (if _$e61718_
              ((lambda (_kons61721_)
                 (apply _kons61721_ _obj61715_ _args61716_)
                 _obj61715_)
               _$e61718_)
              (error '"missing constructor"
                     'class:
                     _klass61713_
                     'method:
                     _kons-id61714_)))))
    (define struct-copy
      (lambda (_struct61711_)
        (if (let () (declare (not safe)) (##structure? _struct61711_))
            '#!void
            (error '"not a structure" _struct61711_))
        (let () (declare (not safe)) (##structure-copy _struct61711_))))
    (define struct->list
      (lambda (_obj61709_)
        (if (object? _obj61709_)
            (let () (declare (not safe)) (##vector->list _obj61709_))
            (error '"not a structure" _obj61709_))))
    (define class->list
      (lambda (_obj61696_)
        (if (object? _obj61696_)
            (let ((_klass61698_ (object-type _obj61696_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass61698_ 'gerbil#class::t))
                  (let ((_slot-vector61700_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass61698_
                            '7
                            class::t
                            '#f))))
                    (let _loop61702_ ((_index61704_
                                       (let ((__tmp62919
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector61700_))))
                                         (declare (not safe))
                                         (##fx- __tmp62919 '1)))
                                      (_plist61705_ '()))
                      (if (let () (declare (not safe)) (##fx< _index61704_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass61698_ _plist61705_))
                          (let ((_slot61707_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector61700_
                                    _index61704_))))
                            (let ((__tmp62918
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index61704_ '1)))
                                  (__tmp62914
                                   (let ((__tmp62917
                                          (symbol->keyword _slot61707_))
                                         (__tmp62915
                                          (let ((__tmp62916
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj61696_
                                                    _index61704_))))
                                            (declare (not safe))
                                            (cons __tmp62916 _plist61705_))))
                                     (declare (not safe))
                                     (cons __tmp62917 __tmp62915))))
                              (declare (not safe))
                              (_loop61702_ __tmp62918 __tmp62914))))))
                  (error '"not a class type"
                         'object:
                         _obj61696_
                         'class:
                         _klass61698_)))
            (error '"not an object" _obj61696_))))
    (define call-method
      (lambda (_obj61687_ _id61688_ . _args61689_)
        (let ((_$e61691_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61687_ _id61688_))))
          (if _$e61691_
              ((lambda (_method61694_)
                 (apply _method61694_ _obj61687_ _args61689_))
               _$e61691_)
              (error '"cannot find method"
                     'object:
                     _obj61687_
                     'method:
                     _id61688_)))))
    (define method-ref
      (lambda (_obj61684_ _id61685_)
        (let ((__tmp62920 (let () (declare (not safe)) (class-of _obj61684_))))
          (declare (not safe))
          (find-method __tmp62920 _obj61684_ _id61685_))))
    (define checked-method-ref
      (lambda (_obj61678_ _id61679_)
        (let ((_$e61681_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61678_ _id61679_))))
          (if _$e61681_
              _$e61681_
              (error '"missing method"
                     'object:
                     _obj61678_
                     'method:
                     _id61679_)))))
    (define bound-method-ref
      (lambda (_obj61668_ _id61669_)
        (let ((_$e61671_
               (let ()
                 (declare (not safe))
                 (method-ref _obj61668_ _id61669_))))
          (if _$e61671_
              ((lambda (_method61674_)
                 (lambda _args61676_
                   (apply _method61674_ _obj61668_ _args61676_)))
               _$e61671_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj61661_ _id61662_)
        (let ((_method61664_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj61661_ _id61662_))))
          (lambda _args61666_ (apply _method61664_ _obj61661_ _args61666_)))))
    (define find-method
      (lambda (_klass61657_ _obj61658_ _id61659_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass61657_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass61657_ _obj61658_ _id61659_))
            (if (let () (declare (not safe)) (##type? _klass61657_))
                (let ((__tmp62921
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass61657_))))
                  (declare (not safe))
                  (__find-method __tmp62921 _obj61658_ _id61659_))
                (error '"bad class; must be a class-type or builtin type"
                       'class:
                       _klass61657_
                       'method:
                       _id61659_)))))
    (define __find-method
      (lambda (_klass61650_ _obj61651_ _id61652_)
        (let ((_$e61654_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass61650_ _obj61651_ _id61652_))))
          (if _$e61654_
              _$e61654_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass61650_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass61650_ _obj61651_ _id61652_)))))))
    (define mixin-find-method
      (lambda (_mixins61642_ _obj61643_ _id61644_)
        (let ((__tmp62922
               (lambda (_g6164561647_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6164561647_ _obj61643_ _id61644_)))))
          (declare (not safe))
          (ormap1 __tmp62922 _mixins61642_))))
    (define direct-method-ref
      (lambda (_klass61619_ _obj61620_ _id61621_)
        (letrec ((_metaclass-resolve-method61623_
                  (lambda ()
                    (let ((__method62804
                           (let ()
                             (declare (not safe))
                             (method-ref _klass61619_ 'direct-method-ref))))
                      (if __method62804
                          (__method62804 _klass61619_ _obj61620_ _id61621_)
                          (error '"Missing method"
                                 _klass61619_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!61624_
                  (lambda ()
                    (let ((_method61639_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method61623_))))
                      (let ((__tmp62924
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass61619_
                                '11
                                class::t
                                '#f)))
                            (__tmp62923 (if _method61639_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp62924 _id61621_ __tmp62923))
                      _method61639_))))
          (let ((_$e61626_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass61619_ '11 class::t '#f))))
            (if _$e61626_
                ((lambda (_ht61629_)
                   (let ((_method61631_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht61629_ _id61621_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method61631_))
                         _method61631_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass61619_))
                             (let ((_$e61633_ _method61631_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e61633_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method61623_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e61633_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!61624_)))))
                             '#f))))
                 _$e61626_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass61619_))
                    (let ((_tab61636_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass61619_
                         _tab61636_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!61624_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass61615_ _obj61616_ _id61617_)
        (let ((__tmp62925 (##structure-ref _klass61615_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp62925 _obj61616_ _id61617_))))
    (define bind-method!__%
      (lambda (_klass61588_ _id61589_ _proc61590_ _rebind?61591_)
        (letrec ((_bind!61593_
                  (lambda (_ht61599_)
                    (if (and (let () (declare (not safe)) (not _rebind?61591_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht61599_ _id61589_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass61588_
                               'method:
                               _id61589_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht61599_
                           _id61589_
                           _proc61590_))))))
          (if (let () (declare (not safe)) (procedure? _proc61590_))
              '#!void
              (error '"bad method; expected procedure" _proc61590_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass61588_ 'gerbil#class::t))
              (let ((_ht61595_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass61588_
                        '11
                        class::t
                        '#f))))
                (if _ht61595_
                    (let () (declare (not safe)) (_bind!61593_ _ht61595_))
                    (let ((_ht61597_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass61588_
                         _ht61597_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!61593_ _ht61597_)))))
              (if (let () (declare (not safe)) (##type? _klass61588_))
                  (let ((__tmp62926
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass61588_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp62926
                     _id61589_
                     _proc61590_
                     _rebind?61591_))
                  (error '"bad class; expected class or builtin type"
                         _klass61588_))))))
    (define bind-method!__0
      (lambda (_klass61604_ _id61605_ _proc61606_)
        (let ((_rebind?61608_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass61604_
           _id61605_
           _proc61606_
           _rebind?61608_))))
    (define bind-method!
      (lambda _g62928_
        (let ((_g62927_ (let () (declare (not safe)) (##length _g62928_))))
          (cond ((let () (declare (not safe)) (##fx= _g62927_ 3))
                 (apply (lambda (_klass61604_ _id61605_ _proc61606_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass61604_
                             _id61605_
                             _proc61606_)))
                        _g62928_))
                ((let () (declare (not safe)) (##fx= _g62927_ 4))
                 (apply (lambda (_klass61610_
                                 _id61611_
                                 _proc61612_
                                 _rebind?61613_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass61610_
                             _id61611_
                             _proc61612_
                             _rebind?61613_)))
                        _g62928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g62928_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint61568_ _seed61570_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint61568_
           procedure-hash
           eq?
           _seed61570_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint61576_ '#f) (_seed61578_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint61576_ _seed61578_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint61580_)
        (let ((_seed61582_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint61580_ _seed61582_))))
    (define make-method-specializer-table
      (lambda _g62930_
        (let ((_g62929_ (let () (declare (not safe)) (##length _g62930_))))
          (cond ((let () (declare (not safe)) (##fx= _g62929_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g62930_))
                ((let () (declare (not safe)) (##fx= _g62929_ 1))
                 (apply (lambda (_size-hint61580_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint61580_)))
                        _g62930_))
                ((let () (declare (not safe)) (##fx= _g62929_ 2))
                 (apply (lambda (_size-hint61584_ _seed61585_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint61584_
                             _seed61585_)))
                        _g62930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g62930_))))))
    (define method-specializer-table-ref
      (lambda (_tab61525_ _key61526_ _default61527_)
        (let ((_table61529_
               (let () (declare (not safe)) (&raw-table-table _tab61525_)))
              (_seed61530_
               (let () (declare (not safe)) (&raw-table-seed _tab61525_))))
          (let* ((_h61532_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61526_))
                         _seed61530_))
                 (_size61535_ (vector-length _table61529_))
                 (_entries61538_ (fxquotient _size61535_ '2))
                 (_start61541_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61532_ _entries61538_)
                   '1)))
            (let _loop61545_ ((_probe61548_ _start61541_)
                              (_i61550_ '1)
                              (_deleted61552_ '#f))
              (let ((_k61555_ (vector-ref _table61529_ _probe61548_)))
                (if (let ((__tmp62931 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61555_ __tmp62931))
                    _default61527_
                    (if (let ((__tmp62932 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61555_ __tmp62932))
                        (let ((__tmp62935
                               (let ((_next-probe61558_
                                      (fx+ _start61541_
                                           _i61550_
                                           (fx* _i61550_ _i61550_))))
                                 (fxmodulo _next-probe61558_ _size61535_)))
                              (__tmp62934 (fx+ _i61550_ '1))
                              (__tmp62933
                               (let ((_$e61561_ _deleted61552_))
                                 (if _$e61561_ _$e61561_ _probe61548_))))
                          (declare (not safe))
                          (_loop61545_ __tmp62935 __tmp62934 __tmp62933))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61526_ _k61555_))
                            (vector-ref _table61529_ (fx+ _probe61548_ '1))
                            (let ((__tmp62937
                                   (let ((_next-probe61564_
                                          (fx+ _start61541_
                                               _i61550_
                                               (fx* _i61550_ _i61550_))))
                                     (fxmodulo _next-probe61564_ _size61535_)))
                                  (__tmp62936 (fx+ _i61550_ '1)))
                              (declare (not safe))
                              (_loop61545_
                               __tmp62937
                               __tmp62936
                               _deleted61552_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab61521_ _key61522_ _value61523_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61521_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61521_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61521_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab61521_
           _key61522_
           _value61523_))))
    (define __method-specializer-table-set!
      (lambda (_tab61476_ _key61477_ _value61478_)
        (let ((_table61481_
               (let () (declare (not safe)) (&raw-table-table _tab61476_)))
              (_seed61482_
               (let () (declare (not safe)) (&raw-table-seed _tab61476_))))
          (let* ((_h61484_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61477_))
                         _seed61482_))
                 (_size61487_ (vector-length _table61481_))
                 (_entries61490_ (fxquotient _size61487_ '2))
                 (_start61493_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61484_ _entries61490_)
                   '1)))
            (let _loop61497_ ((_probe61500_ _start61493_)
                              (_i61502_ '1)
                              (_deleted61504_ '#f))
              (let ((_k61507_ (vector-ref _table61481_ _probe61500_)))
                (if (let ((__tmp62938 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61507_ __tmp62938))
                    (if _deleted61504_
                        (begin
                          (vector-set! _table61481_ _deleted61504_ _key61477_)
                          (vector-set!
                           _table61481_
                           (fx+ _deleted61504_ '1)
                           _value61478_)
                          ((lambda ()
                             (let ((__tmp62939
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61476_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61476_
                                __tmp62939)))))
                        (begin
                          (vector-set! _table61481_ _probe61500_ _key61477_)
                          (vector-set!
                           _table61481_
                           (fx+ _probe61500_ '1)
                           _value61478_)
                          ((lambda ()
                             (let ((__tmp62940
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61476_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61476_ __tmp62940))
                             (let ((__tmp62941
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61476_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61476_
                                __tmp62941))))))
                    (if (let ((__tmp62942 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61507_ __tmp62942))
                        (let ((__tmp62945
                               (let ((_next-probe61512_
                                      (fx+ _start61493_
                                           _i61502_
                                           (fx* _i61502_ _i61502_))))
                                 (fxmodulo _next-probe61512_ _size61487_)))
                              (__tmp62944 (fx+ _i61502_ '1))
                              (__tmp62943
                               (let ((_$e61515_ _deleted61504_))
                                 (if _$e61515_ _$e61515_ _probe61500_))))
                          (declare (not safe))
                          (_loop61497_ __tmp62945 __tmp62944 __tmp62943))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61477_ _k61507_))
                            (begin
                              (vector-set!
                               _table61481_
                               _probe61500_
                               _key61477_)
                              (vector-set!
                               _table61481_
                               (fx+ _probe61500_ '1)
                               _value61478_))
                            (let ((__tmp62947
                                   (let ((_next-probe61518_
                                          (fx+ _start61493_
                                               _i61502_
                                               (fx* _i61502_ _i61502_))))
                                     (fxmodulo _next-probe61518_ _size61487_)))
                                  (__tmp62946 (fx+ _i61502_ '1)))
                              (declare (not safe))
                              (_loop61497_
                               __tmp62947
                               __tmp62946
                               _deleted61504_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab61471_
               _key61472_
               _method-specializer-table-update!61473_
               _default61474_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61471_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61471_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61471_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab61471_
           _key61472_
           _method-specializer-table-update!61473_
           _default61474_))))
    (define __method-specializer-table-update!
      (lambda (_tab61425_
               _key61426_
               _method-specializer-table-update!61427_
               _default61428_)
        (let ((_table61431_
               (let () (declare (not safe)) (&raw-table-table _tab61425_)))
              (_seed61432_
               (let () (declare (not safe)) (&raw-table-seed _tab61425_))))
          (let* ((_h61434_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61426_))
                         _seed61432_))
                 (_size61437_ (vector-length _table61431_))
                 (_entries61440_ (fxquotient _size61437_ '2))
                 (_start61443_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61434_ _entries61440_)
                   '1)))
            (let _loop61447_ ((_probe61450_ _start61443_)
                              (_i61452_ '1)
                              (_deleted61454_ '#f))
              (let ((_k61457_ (vector-ref _table61431_ _probe61450_)))
                (if (let ((__tmp62948 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61457_ __tmp62948))
                    (if _deleted61454_
                        (begin
                          (vector-set! _table61431_ _deleted61454_ _key61426_)
                          (vector-set!
                           _table61431_
                           (fx+ _deleted61454_ '1)
                           (_method-specializer-table-update!61427_
                            _default61428_))
                          ((lambda ()
                             (let ((__tmp62949
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61425_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61425_
                                __tmp62949)))))
                        (begin
                          (vector-set! _table61431_ _probe61450_ _key61426_)
                          (vector-set!
                           _table61431_
                           (fx+ _probe61450_ '1)
                           (_method-specializer-table-update!61427_
                            _default61428_))
                          ((lambda ()
                             (let ((__tmp62950
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61425_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61425_ __tmp62950))
                             (let ((__tmp62951
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61425_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61425_
                                __tmp62951))))))
                    (if (let ((__tmp62952 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61457_ __tmp62952))
                        (let ((__tmp62955
                               (let ((_next-probe61462_
                                      (fx+ _start61443_
                                           _i61452_
                                           (fx* _i61452_ _i61452_))))
                                 (fxmodulo _next-probe61462_ _size61437_)))
                              (__tmp62954 (fx+ _i61452_ '1))
                              (__tmp62953
                               (let ((_$e61465_ _deleted61454_))
                                 (if _$e61465_ _$e61465_ _probe61450_))))
                          (declare (not safe))
                          (_loop61447_ __tmp62955 __tmp62954 __tmp62953))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61426_ _k61457_))
                            (begin
                              (vector-set!
                               _table61431_
                               _probe61450_
                               _key61426_)
                              (vector-set!
                               _table61431_
                               (fx+ _probe61450_ '1)
                               (_method-specializer-table-update!61427_
                                (vector-ref
                                 _table61431_
                                 (fx+ _probe61450_ '1)))))
                            (let ((__tmp62957
                                   (let ((_next-probe61468_
                                          (fx+ _start61443_
                                               _i61452_
                                               (fx* _i61452_ _i61452_))))
                                     (fxmodulo _next-probe61468_ _size61437_)))
                                  (__tmp62956 (fx+ _i61452_ '1)))
                              (declare (not safe))
                              (_loop61447_
                               __tmp62957
                               __tmp62956
                               _deleted61454_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab61384_ _key61386_)
        (let ((_table61389_
               (let () (declare (not safe)) (&raw-table-table _tab61384_)))
              (_seed61391_
               (let () (declare (not safe)) (&raw-table-seed _tab61384_))))
          (let* ((_h61394_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key61386_))
                         _seed61391_))
                 (_size61397_ (vector-length _table61389_))
                 (_entries61400_ (fxquotient _size61397_ '2))
                 (_start61403_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61394_ _entries61400_)
                   '1)))
            (let _loop61407_ ((_probe61410_ _start61403_) (_i61412_ '1))
              (let ((_k61415_ (vector-ref _table61389_ _probe61410_)))
                (if (let ((__tmp62958 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61415_ __tmp62958))
                    '#!void
                    (if (let ((__tmp62959 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61415_ __tmp62959))
                        (let ((__tmp62961
                               (let ((_next-probe61418_
                                      (fx+ _start61403_
                                           _i61412_
                                           (fx* _i61412_ _i61412_))))
                                 (fxmodulo _next-probe61418_ _size61397_)))
                              (__tmp62960 (fx+ _i61412_ '1)))
                          (declare (not safe))
                          (_loop61407_ __tmp62961 __tmp62960))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61386_ _k61415_))
                            (begin
                              (vector-set!
                               _table61389_
                               _probe61410_
                               (macro-deleted-obj))
                              (vector-set!
                               _table61389_
                               (fx+ _probe61410_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp62962
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab61384_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab61384_
                                    __tmp62962)))))
                            (let ((__tmp62964
                                   (let ((_next-probe61422_
                                          (fx+ _start61403_
                                               _i61412_
                                               (fx* _i61412_ _i61412_))))
                                     (fxmodulo _next-probe61422_ _size61397_)))
                                  (__tmp62963 (fx+ _i61412_ '1)))
                              (declare (not safe))
                              (_loop61407_ __tmp62964 __tmp62963)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc61375_ _specializer61376_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61380_ ()
            (if (let ((__tmp62965
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp62965 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61380_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc61375_
           _specializer61376_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc61365_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61369_ ()
            (if (let ((__tmp62966
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp62966 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61369_))))))
        (let ((_specializer61373_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc61365_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer61373_)))
    (define __class-specializer-hash-key
      (lambda (_klass61363_)
        (let ((__tmp62967
               (let () (declare (not safe)) (##type-id _klass61363_))))
          (declare (not safe))
          (symbolic-hash __tmp62967))))
    (define make-class-specializer-table__%
      (lambda (_size-hint61344_ _seed61346_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint61344_
           __class-specializer-hash-key
           eq?
           _seed61346_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint61352_ '#f) (_seed61354_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint61352_ _seed61354_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint61356_)
        (let ((_seed61358_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint61356_ _seed61358_))))
    (define make-class-specializer-table
      (lambda _g62969_
        (let ((_g62968_ (let () (declare (not safe)) (##length _g62969_))))
          (cond ((let () (declare (not safe)) (##fx= _g62968_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g62969_))
                ((let () (declare (not safe)) (##fx= _g62968_ 1))
                 (apply (lambda (_size-hint61356_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint61356_)))
                        _g62969_))
                ((let () (declare (not safe)) (##fx= _g62968_ 2))
                 (apply (lambda (_size-hint61360_ _seed61361_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint61360_
                             _seed61361_)))
                        _g62969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g62969_))))))
    (define class-specializer-table-ref
      (lambda (_tab61301_ _key61302_ _default61303_)
        (let ((_table61305_
               (let () (declare (not safe)) (&raw-table-table _tab61301_)))
              (_seed61306_
               (let () (declare (not safe)) (&raw-table-seed _tab61301_))))
          (let* ((_h61308_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61302_))
                         _seed61306_))
                 (_size61311_ (vector-length _table61305_))
                 (_entries61314_ (fxquotient _size61311_ '2))
                 (_start61317_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61308_ _entries61314_)
                   '1)))
            (let _loop61321_ ((_probe61324_ _start61317_)
                              (_i61326_ '1)
                              (_deleted61328_ '#f))
              (let ((_k61331_ (vector-ref _table61305_ _probe61324_)))
                (if (let ((__tmp62970 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61331_ __tmp62970))
                    _default61303_
                    (if (let ((__tmp62971 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61331_ __tmp62971))
                        (let ((__tmp62974
                               (let ((_next-probe61334_
                                      (fx+ _start61317_
                                           _i61326_
                                           (fx* _i61326_ _i61326_))))
                                 (fxmodulo _next-probe61334_ _size61311_)))
                              (__tmp62973 (fx+ _i61326_ '1))
                              (__tmp62972
                               (let ((_$e61337_ _deleted61328_))
                                 (if _$e61337_ _$e61337_ _probe61324_))))
                          (declare (not safe))
                          (_loop61321_ __tmp62974 __tmp62973 __tmp62972))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61302_ _k61331_))
                            (vector-ref _table61305_ (fx+ _probe61324_ '1))
                            (let ((__tmp62976
                                   (let ((_next-probe61340_
                                          (fx+ _start61317_
                                               _i61326_
                                               (fx* _i61326_ _i61326_))))
                                     (fxmodulo _next-probe61340_ _size61311_)))
                                  (__tmp62975 (fx+ _i61326_ '1)))
                              (declare (not safe))
                              (_loop61321_
                               __tmp62976
                               __tmp62975
                               _deleted61328_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab61297_ _key61298_ _value61299_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61297_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61297_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61297_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab61297_
           _key61298_
           _value61299_))))
    (define __class-specializer-table-set!
      (lambda (_tab61252_ _key61253_ _value61254_)
        (let ((_table61257_
               (let () (declare (not safe)) (&raw-table-table _tab61252_)))
              (_seed61258_
               (let () (declare (not safe)) (&raw-table-seed _tab61252_))))
          (let* ((_h61260_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61253_))
                         _seed61258_))
                 (_size61263_ (vector-length _table61257_))
                 (_entries61266_ (fxquotient _size61263_ '2))
                 (_start61269_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61260_ _entries61266_)
                   '1)))
            (let _loop61273_ ((_probe61276_ _start61269_)
                              (_i61278_ '1)
                              (_deleted61280_ '#f))
              (let ((_k61283_ (vector-ref _table61257_ _probe61276_)))
                (if (let ((__tmp62977 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61283_ __tmp62977))
                    (if _deleted61280_
                        (begin
                          (vector-set! _table61257_ _deleted61280_ _key61253_)
                          (vector-set!
                           _table61257_
                           (fx+ _deleted61280_ '1)
                           _value61254_)
                          ((lambda ()
                             (let ((__tmp62978
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61252_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61252_
                                __tmp62978)))))
                        (begin
                          (vector-set! _table61257_ _probe61276_ _key61253_)
                          (vector-set!
                           _table61257_
                           (fx+ _probe61276_ '1)
                           _value61254_)
                          ((lambda ()
                             (let ((__tmp62979
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61252_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61252_ __tmp62979))
                             (let ((__tmp62980
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61252_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61252_
                                __tmp62980))))))
                    (if (let ((__tmp62981 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61283_ __tmp62981))
                        (let ((__tmp62984
                               (let ((_next-probe61288_
                                      (fx+ _start61269_
                                           _i61278_
                                           (fx* _i61278_ _i61278_))))
                                 (fxmodulo _next-probe61288_ _size61263_)))
                              (__tmp62983 (fx+ _i61278_ '1))
                              (__tmp62982
                               (let ((_$e61291_ _deleted61280_))
                                 (if _$e61291_ _$e61291_ _probe61276_))))
                          (declare (not safe))
                          (_loop61273_ __tmp62984 __tmp62983 __tmp62982))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61253_ _k61283_))
                            (begin
                              (vector-set!
                               _table61257_
                               _probe61276_
                               _key61253_)
                              (vector-set!
                               _table61257_
                               (fx+ _probe61276_ '1)
                               _value61254_))
                            (let ((__tmp62986
                                   (let ((_next-probe61294_
                                          (fx+ _start61269_
                                               _i61278_
                                               (fx* _i61278_ _i61278_))))
                                     (fxmodulo _next-probe61294_ _size61263_)))
                                  (__tmp62985 (fx+ _i61278_ '1)))
                              (declare (not safe))
                              (_loop61273_
                               __tmp62986
                               __tmp62985
                               _deleted61280_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab61247_
               _key61248_
               _class-specializer-table-update!61249_
               _default61250_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab61247_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab61247_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab61247_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab61247_
           _key61248_
           _class-specializer-table-update!61249_
           _default61250_))))
    (define __class-specializer-table-update!
      (lambda (_tab61201_
               _key61202_
               _class-specializer-table-update!61203_
               _default61204_)
        (let ((_table61207_
               (let () (declare (not safe)) (&raw-table-table _tab61201_)))
              (_seed61208_
               (let () (declare (not safe)) (&raw-table-seed _tab61201_))))
          (let* ((_h61210_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61202_))
                         _seed61208_))
                 (_size61213_ (vector-length _table61207_))
                 (_entries61216_ (fxquotient _size61213_ '2))
                 (_start61219_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61210_ _entries61216_)
                   '1)))
            (let _loop61223_ ((_probe61226_ _start61219_)
                              (_i61228_ '1)
                              (_deleted61230_ '#f))
              (let ((_k61233_ (vector-ref _table61207_ _probe61226_)))
                (if (let ((__tmp62987 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61233_ __tmp62987))
                    (if _deleted61230_
                        (begin
                          (vector-set! _table61207_ _deleted61230_ _key61202_)
                          (vector-set!
                           _table61207_
                           (fx+ _deleted61230_ '1)
                           (_class-specializer-table-update!61203_
                            _default61204_))
                          ((lambda ()
                             (let ((__tmp62988
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61201_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61201_
                                __tmp62988)))))
                        (begin
                          (vector-set! _table61207_ _probe61226_ _key61202_)
                          (vector-set!
                           _table61207_
                           (fx+ _probe61226_ '1)
                           (_class-specializer-table-update!61203_
                            _default61204_))
                          ((lambda ()
                             (let ((__tmp62989
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab61201_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab61201_ __tmp62989))
                             (let ((__tmp62990
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab61201_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab61201_
                                __tmp62990))))))
                    (if (let ((__tmp62991 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61233_ __tmp62991))
                        (let ((__tmp62994
                               (let ((_next-probe61238_
                                      (fx+ _start61219_
                                           _i61228_
                                           (fx* _i61228_ _i61228_))))
                                 (fxmodulo _next-probe61238_ _size61213_)))
                              (__tmp62993 (fx+ _i61228_ '1))
                              (__tmp62992
                               (let ((_$e61241_ _deleted61230_))
                                 (if _$e61241_ _$e61241_ _probe61226_))))
                          (declare (not safe))
                          (_loop61223_ __tmp62994 __tmp62993 __tmp62992))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61202_ _k61233_))
                            (begin
                              (vector-set!
                               _table61207_
                               _probe61226_
                               _key61202_)
                              (vector-set!
                               _table61207_
                               (fx+ _probe61226_ '1)
                               (_class-specializer-table-update!61203_
                                (vector-ref
                                 _table61207_
                                 (fx+ _probe61226_ '1)))))
                            (let ((__tmp62996
                                   (let ((_next-probe61244_
                                          (fx+ _start61219_
                                               _i61228_
                                               (fx* _i61228_ _i61228_))))
                                     (fxmodulo _next-probe61244_ _size61213_)))
                                  (__tmp62995 (fx+ _i61228_ '1)))
                              (declare (not safe))
                              (_loop61223_
                               __tmp62996
                               __tmp62995
                               _deleted61230_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab61160_ _key61162_)
        (let ((_table61165_
               (let () (declare (not safe)) (&raw-table-table _tab61160_)))
              (_seed61167_
               (let () (declare (not safe)) (&raw-table-seed _tab61160_))))
          (let* ((_h61170_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key61162_))
                         _seed61167_))
                 (_size61173_ (vector-length _table61165_))
                 (_entries61176_ (fxquotient _size61173_ '2))
                 (_start61179_
                  (fxarithmetic-shift-left
                   (fxmodulo _h61170_ _entries61176_)
                   '1)))
            (let _loop61183_ ((_probe61186_ _start61179_) (_i61188_ '1))
              (let ((_k61191_ (vector-ref _table61165_ _probe61186_)))
                (if (let ((__tmp62997 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k61191_ __tmp62997))
                    '#!void
                    (if (let ((__tmp62998 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k61191_ __tmp62998))
                        (let ((__tmp63000
                               (let ((_next-probe61194_
                                      (fx+ _start61179_
                                           _i61188_
                                           (fx* _i61188_ _i61188_))))
                                 (fxmodulo _next-probe61194_ _size61173_)))
                              (__tmp62999 (fx+ _i61188_ '1)))
                          (declare (not safe))
                          (_loop61183_ __tmp63000 __tmp62999))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key61162_ _k61191_))
                            (begin
                              (vector-set!
                               _table61165_
                               _probe61186_
                               (macro-deleted-obj))
                              (vector-set!
                               _table61165_
                               (fx+ _probe61186_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp63001
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab61160_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab61160_
                                    __tmp63001)))))
                            (let ((__tmp63003
                                   (let ((_next-probe61198_
                                          (fx+ _start61179_
                                               _i61188_
                                               (fx* _i61188_ _i61188_))))
                                     (fxmodulo _next-probe61198_ _size61173_)))
                                  (__tmp63002 (fx+ _i61188_ '1)))
                              (declare (not safe))
                              (_loop61183_ __tmp63003 __tmp63002)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass61153_)
        (let ((_$e61155_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass61153_))))
          (if _$e61155_
              _$e61155_
              (let ((_method-table61158_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass61153_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass61153_ _method-table61158_))
                _method-table61158_)))))
    (define __lookup-class-specializer
      (lambda (_klass61143_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61147_ ()
            (if (let ((__tmp63004
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63004 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61147_))))))
        (let ((_method-table61151_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass61143_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table61151_)))
    (define __bind-class-specializer!
      (lambda (_klass61134_ _method-table61135_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again61139_ ()
            (if (let ((__tmp63005
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp63005 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again61139_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass61134_
           _method-table61135_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass61119_ _method-table61120_ _method61121_ _proc61122_)
        (let ((_$e61124_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table61120_ _method61121_ '#f))))
          (if _$e61124_
              _$e61124_
              (let ((_$e61127_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc61122_))))
                (if _$e61127_
                    ((lambda (_specialize61130_)
                       (let ((_specialized-proc61132_
                              (_specialize61130_
                               _klass61119_
                               _method-table61120_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table61120_
                          _method61121_
                          _specialized-proc61132_)))
                     _$e61127_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table61120_
                       _method61121_
                       _proc61122_))))))))
    (define __specialize-class
      (lambda (_klass61065_)
        (if (let ((__tmp63006
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass61065_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp63006))
            (if (let () (declare (not safe)) (##type? _klass61065_))
                (let ((__tmp63007
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass61065_))))
                  (declare (not safe))
                  (__specialize-class __tmp63007))
                (error '"bad class; cannot specialize" _klass61065_))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass61065_))
                (let ((__method62805
                       (let ()
                         (declare (not safe))
                         (method-ref _klass61065_ 'specialize-class))))
                  (if __method62805
                      (__method62805 _klass61065_)
                      (error '"Missing method"
                             _klass61065_
                             'specialize-class)))
                (if (let ((__tmp63008
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass61065_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp63008))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _klass61065_)
                    (let ((_method-table61067_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop61069_ ((_rest61071_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass61065_))))
                        (let* ((_rest6107261080_ _rest61071_)
                               (_else6107461088_
                                (lambda () _method-table61067_))
                               (_K6107661107_
                                (lambda (_rest61091_ _xklass61092_)
                                  (let ((_xmethod-table6109361095_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass61092_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6109361095_
                                        (let* ((_xmethod-table61098_
                                                _xmethod-table6109361095_)
                                               (__tmp63009
                                                (lambda (_g6109961102_
                                                         _g6110061104_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass61065_
                                                     _method-table61067_
                                                     _g6109961102_
                                                     _g6110061104_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table61098_
                                           __tmp63009))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop61069_ _rest61091_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6107261080_))
                              (let ((_hd6107761110_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6107261080_)))
                                    (_tl6107861112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6107261080_))))
                                (let* ((_xklass61115_ _hd6107761110_)
                                       (_rest61117_ _tl6107861112_))
                                  (declare (not safe))
                                  (_K6107661107_ _rest61117_ _xklass61115_)))
                              (let ()
                                (declare (not safe))
                                (_else6107461088_)))))))))))
    (define seal-class!
      (lambda (_klass61061_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass61061_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass61061_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass61061_))
                      '#!void
                      (error '"cannot seal non-final class" _klass61061_))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass61061_))
                      (let ((__method62806
                             (let ()
                               (declare (not safe))
                               (method-ref _klass61061_ 'seal-class!))))
                        (if __method62806
                            (__method62806 _klass61061_)
                            (error '"Missing method"
                                   _klass61061_
                                   'seal-class!)))
                      (if (let ((__tmp63010
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass61061_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp63010))
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _klass61061_)
                          (let ((_method-table61063_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass61061_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass61061_
                             _method-table61063_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass61061_))))
            '#!void)))
    (define next-method
      (lambda (_subklass61016_ _obj61017_ _id61018_)
        (letrec ((_find-next-method61020_
                  (lambda (_klass61022_)
                    (let _lp61024_ ((_rest61026_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass61022_))))
                      (let* ((_rest6102761035_ _rest61026_)
                             (_else6102961043_ (lambda () '#f))
                             (_K6103161049_
                              (lambda (_rest61046_ _klass61047_)
                                (if (let ((__tmp63012
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass61016_)))
                                          (__tmp63011
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass61047_))))
                                      (declare (not safe))
                                      (eq? __tmp63012 __tmp63011))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest61046_
                                       _obj61017_
                                       _id61018_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61024_ _rest61046_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6102761035_))
                            (let ((_hd6103261052_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6102761035_)))
                                  (_tl6103361054_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6102761035_))))
                              (let* ((_klass61057_ _hd6103261052_)
                                     (_rest61059_ _tl6103361054_))
                                (declare (not safe))
                                (_K6103161049_ _rest61059_ _klass61057_)))
                            (let ()
                              (declare (not safe))
                              (_else6102961043_))))))))
          (let ((__tmp63013
                 (let () (declare (not safe)) (class-of _obj61017_))))
            (declare (not safe))
            (_find-next-method61020_ __tmp63013)))))
    (define call-next-method
      (lambda (_subklass61006_ _obj61007_ _id61008_ . _args61009_)
        (let ((_$e61011_
               (let ()
                 (declare (not safe))
                 (next-method _subklass61006_ _obj61007_ _id61008_))))
          (if _$e61011_
              ((lambda (_methodf61014_)
                 (apply _methodf61014_ _obj61007_ _args61009_))
               _$e61011_)
              (error '"cannot find next method"
                     'object:
                     _obj61007_
                     'method:
                     _id61008_)))))
    (define write-style (lambda (_we61004_) (macro-writeenv-style _we61004_)))
    (define write-object
      (lambda (_we60996_ _obj60997_)
        (let ((_$e60999_
               (let () (declare (not safe)) (method-ref _obj60997_ ':wr))))
          (if _$e60999_
              ((lambda (_method61002_) (_method61002_ _obj60997_ _we60996_))
               _$e60999_)
              (let ()
                (declare (not safe))
                (##default-wr _we60996_ _obj60997_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type60915_)
        (letrec ((_shadow-type-id60917_
                  (lambda (_type60994_)
                    (let ((__tmp63014
                           (let ()
                             (declare (not safe))
                             (##type-name _type60994_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp63014 '"::t"))))
                 (_shadow-type-name60918_
                  (lambda (_type60992_)
                    (let () (declare (not safe)) (##type-name _type60992_))))
                 (_make-shadow-class60919_
                  (lambda (_type60984_ _precedence-list60985_)
                    (let* ((_super60987_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list60985_))
                                (let ((__tmp63015
                                       (car _precedence-list60985_)))
                                  (declare (not safe))
                                  (cons __tmp63015 '()))
                                '()))
                           (_klass60989_
                            (let ((__tmp63023
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id60917_ _type60984_)))
                                  (__tmp63022
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type60984_)))
                                  (__tmp63016
                                   (let ((__tmp63021
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp63017
                                          (let ((__tmp63020
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp63018
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type60984_))
                                                     '()
                                                     (let ((__tmp63019
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp63019 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp63020 __tmp63018))))
                                     (declare (not safe))
                                     (cons __tmp63021 __tmp63017))))
                              (declare (not safe))
                              (make-class-type
                               __tmp63023
                               __tmp63022
                               _super60987_
                               '()
                               __tmp63016
                               '#f))))
                      (let ((__tmp63024
                             (let ()
                               (declare (not safe))
                               (##type-id _type60984_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp63024
                         _klass60989_))
                      _klass60989_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again60923_ ()
              (if (let ((__tmp63025
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp63025 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again60923_))))))
          (let ((_$e60927_
                 (let ((__tmp63026
                        (let () (declare (not safe)) (##type-id _type60915_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp63026 '#f))))
            (if _$e60927_
                ((lambda (_klass60930_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass60930_)
                 _$e60927_)
                (let _loop60932_ ((_super60934_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type60915_)))
                                  (_hierarchy60935_ '()))
                  (if (let () (declare (not safe)) (not _super60934_))
                      (let _loop60937_ ((_rest60939_ _hierarchy60935_)
                                        (_precedence-list60940_ '()))
                        (let* ((_rest6094160949_ _rest60939_)
                               (_else6094360959_
                                (lambda ()
                                  (let ((_klass60957_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class60919_
                                            _type60915_
                                            _precedence-list60940_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass60957_)))
                               (_K6094560972_
                                (lambda (_rest60962_ _type60963_)
                                  (let ((_$e60965_
                                         (let ((__tmp63027
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type60963_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp63027
                                            '#f))))
                                    (if _$e60965_
                                        ((lambda (_klass60968_)
                                           (let ((__tmp63028
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass60968_
                                                          _precedence-list60940_))))
                                             (declare (not safe))
                                             (_loop60937_
                                              _rest60962_
                                              __tmp63028)))
                                         _$e60965_)
                                        (let* ((_klass60970_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class60919_
                                                   _type60963_
                                                   _precedence-list60940_)))
                                               (__tmp63029
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass60970_
                                                        _precedence-list60940_))))
                                          (declare (not safe))
                                          (_loop60937_
                                           _rest60962_
                                           __tmp63029)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6094160949_))
                              (let ((_hd6094660975_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6094160949_)))
                                    (_tl6094760977_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6094160949_))))
                                (let* ((_type60980_ _hd6094660975_)
                                       (_rest60982_ _tl6094760977_))
                                  (declare (not safe))
                                  (_K6094560972_ _rest60982_ _type60980_)))
                              (let ()
                                (declare (not safe))
                                (_else6094360959_)))))
                      (let ((__tmp63031
                             (let ()
                               (declare (not safe))
                               (##type-super _super60934_)))
                            (__tmp63030
                             (let ()
                               (declare (not safe))
                               (cons _super60934_ _hierarchy60935_))))
                        (declare (not safe))
                        (_loop60932_ __tmp63031 __tmp63030)))))))))
    (define class-of
      (lambda (_obj60903_)
        (declare (not interrupts-enabled))
        (let ((_t60906_ (let () (declare (not safe)) (##type _obj60903_))))
          (if (fx= _t60906_ (macro-type-mem1))
              (let ((_st60908_
                     (let () (declare (not safe)) (##subtype _obj60903_))))
                (if (fx= _st60908_ (macro-subtype-structure))
                    (let ((_klass60910_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj60903_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass60910_
                             'gerbil#class::t))
                          _klass60910_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass60910_))))
                    (if (fx= _st60908_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj60903_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e60912_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st60908_))))
                          (if _$e60912_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e60912_))
                              (error '"unknown class"
                                     'subtype:
                                     _st60908_
                                     'object:
                                     _obj60903_))))))
              (if (fx= _t60906_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t60906_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj60903_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj60903_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj60903_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj60903_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj60903_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj60903_ '#!eof))
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
      (lambda (_id60898_)
        (let ((_$e60900_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id60898_ '#f))))
          (if _$e60900_ _$e60900_ (error '"unknown system class" _id60898_)))))
    (define __make-system-class
      (lambda (_id60893_ _super60894_)
        (let ((_klass60896_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id60893_
                  _id60893_
                  _super60894_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id60893_ _klass60896_))
          _klass60896_)))))
