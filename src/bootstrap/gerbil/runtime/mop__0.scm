(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709994212)
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
      (let* ((_slots64706_
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
             (_slot-vector64708_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64706_))))
             (_slot-table64715_
              (let ((_slot-table64710_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64712_ _field64713_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64710_
                      _slot64712_
                      _field64713_))
                   (let ((__tmp64856 (symbol->keyword _slot64712_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64710_
                      __tmp64856
                      _field64713_)))
                 _slots64706_
                 (let ((__tmp64857 (length _slots64706_)))
                   (declare (not safe))
                   (iota__1 __tmp64857 '1)))
                _slot-table64710_))
             (_flags64717_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64723_
              (list->vector
               (apply append
                      (map (lambda (_g6471864720_) (list _g6471864720_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64706_ '5))))))
             (_properties64725_
              (let ((__tmp64860
                     (let ((__tmp64861
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64706_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64861)))
                    (__tmp64858
                     (let ((__tmp64859
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64859 '()))))
                (declare (not safe))
                (cons __tmp64860 __tmp64858)))
             (_t64727_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64717_
                 ##type-type
                 _fields64723_
                 '()
                 _slot-vector64708_
                 _slot-table64715_
                 _properties64725_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64727_ _t64727_))
        _t64727_))
    (define class-type?
      (lambda (_obj64704_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64704_ class::t.id))))
    (define class-type=?
      (lambda (_x64701_ _y64702_)
        (let ((__tmp64863 (##structure-ref _x64701_ '1 class::t '#f))
              (__tmp64862 (##structure-ref _y64702_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64863 __tmp64862))))
    (define type-opaque?
      (lambda (_type64699_)
        (let ((__tmp64864
               (let ((__tmp64865
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64699_))))
                 (declare (not safe))
                 (##fxand __tmp64865 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64864 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64697_)
        (let ((__tmp64866
               (let ((__tmp64867
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64697_))))
                 (declare (not safe))
                 (##fxand __tmp64867 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64866 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64695_)
        (let ((__tmp64868
               (let ((__tmp64869
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64695_))))
                 (declare (not safe))
                 (##fxand __tmp64869 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64868 '0))))
    (define class-type-struct?
      (lambda (_klass64693_)
        (let ((__tmp64870
               (let ((__tmp64871
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64693_))))
                 (declare (not safe))
                 (##fxand __tmp64871 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64870 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64691_)
        (let ((__tmp64872
               (let ((__tmp64873
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64691_))))
                 (declare (not safe))
                 (##fxand __tmp64873 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64872 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64689_)
        (let ((__tmp64874
               (let ((__tmp64875
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64689_))))
                 (declare (not safe))
                 (##fxand __tmp64875 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64874 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64655_)
        (map (lambda (_e6465664658_)
               (let* ((_g6466064667_ _e6465664658_)
                      (_E6466264671_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6466064667_))))
                      (_K6466364677_
                       (lambda (_val64674_ _key64675_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64675_ 'direct-supers:))
                             (let ((__tmp64876 (map class-type-id _val64674_)))
                               (declare (not safe))
                               (cons _key64675_ __tmp64876))
                             (let ()
                               (declare (not safe))
                               (cons _key64675_ _val64674_))))))
                 (if (let () (declare (not safe)) (##pair? _g6466064667_))
                     (let ((_hd6466464680_
                            (let ()
                              (declare (not safe))
                              (##car _g6466064667_)))
                           (_tl6466564682_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6466064667_))))
                       (let* ((_key64685_ _hd6466464680_)
                              (_val64687_ _tl6466564682_))
                         (declare (not safe))
                         (_K6466364677_ _val64687_ _key64685_)))
                     (let () (declare (not safe)) (_E6466264671_)))))
             _properties64655_)))
    (define make-class-type-descriptor
      (lambda (_type-id64554_
               _type-name64555_
               _type-super64556_
               _precedence-list64557_
               _slot-vector64558_
               _properties64559_
               _constructor64560_
               _slot-table64561_
               _methods64562_)
        (letrec ((_make-props!64564_
                  (lambda (_key64624_)
                    (letrec* ((_ht64626_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64627_
                               (lambda (_ht64648_ _slots64649_)
                                 (for-each
                                  (lambda (_g6465064652_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64648_
                                       _g6465064652_
                                       '#t)))
                                  _slots64649_)))
                              (_put-alist!64628_
                               (lambda (_ht64637_ _key64638_ _alist64639_)
                                 (let ((_$e64641_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64638_
                                           _alist64639_))))
                                   (if _$e64641_
                                       ((lambda (_g6464364645_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64627_
                                             _ht64637_
                                             _g6464364645_)))
                                        _$e64641_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64628_
                         _ht64626_
                         _key64624_
                         _properties64559_))
                      (for-each
                       (lambda (_mixin64630_)
                         (let ((_alist64632_
                                (##structure-ref
                                 _mixin64630_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64632_))
                                   (let ((__tmp64878
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64624_
                                             _alist64632_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64878)))
                               (let ((__tmp64877
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64630_))))
                                 (declare (not safe))
                                 (_put-slots!64627_ _ht64626_ __tmp64877))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64628_
                                  _ht64626_
                                  _key64624_
                                  _alist64632_)))))
                       _precedence-list64557_)
                      _ht64626_))))
          (let* ((_transparent?64566_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64559_)))
                 (_all-slots-printable?64571_
                  (let ((_$e64568_ _transparent?64566_))
                    (if _$e64568_
                        _$e64568_
                        (let ((__tmp64879
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64559_))))
                          (declare (not safe))
                          (eq? '#t __tmp64879)))))
                 (_printable64573_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64571_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64564_ 'print:))
                      '#f))
                 (_all-slots-equalable?64578_
                  (let ((_$e64575_ _transparent?64566_))
                    (if _$e64575_
                        _$e64575_
                        (let ((__tmp64880
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64559_))))
                          (declare (not safe))
                          (eq? '#t __tmp64880)))))
                 (_equalable64580_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64578_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64564_ 'equal:))
                      '#f))
                 (_first-new-field64582_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64556_
                         'gerbil#class::t))
                      (let ((__tmp64881
                             (##structure-ref
                              _type-super64556_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64881))
                      '1))
                 (_field-info-length64584_
                  (let ((__tmp64882
                         (let ((__tmp64883
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64558_))))
                           (declare (not safe))
                           (##fx- __tmp64883 _first-new-field64582_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64882)))
                 (_field-info64586_ (make-vector _field-info-length64584_ '#f))
                 (_struct?64588_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64559_)))
                 (_final?64590_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64559_)))
                 (_metaclass64598_
                  (let ((_metaclass6459164593_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64559_))))
                    (if _metaclass6459164593_
                        (let ((_metaclass64596_ _metaclass6459164593_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64596_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64554_
                                       'metaclass:
                                       _metaclass64596_)))
                          _metaclass64596_)
                        '#f)))
                 (_opaque?64603_
                  (let ((_$e64600_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64578_))))
                    (if _$e64600_
                        _$e64600_
                        (if _type-super64556_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64556_))
                            '#f))))
                 (_type-flags64605_
                  (let ((__tmp64887 (if _final?64590_ '0 type-flag-extensible))
                        (__tmp64886 (if _opaque?64603_ type-flag-opaque '0))
                        (__tmp64885
                         (if _struct?64588_ class-type-flag-struct '0))
                        (__tmp64884
                         (if _metaclass64598_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64887
                             __tmp64886
                             __tmp64885
                             __tmp64884))))
            (let _loop64608_ ((_i64610_ _first-new-field64582_) (_j64611_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64611_ _field-info-length64584_))
                  (let* ((_slot64613_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64558_ _i64610_)))
                         (_flags64621_
                          (if _transparent?64566_
                              '0
                              (let ((__tmp64889
                                     (if (or _all-slots-printable?64571_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64573_
                                                _slot64613_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64888
                                     (if (or _all-slots-equalable?64578_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64580_
                                                _slot64613_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64889 __tmp64888)))))
                    (vector-set! _field-info64586_ _j64611_ _slot64613_)
                    (vector-set!
                     _field-info64586_
                     (let () (declare (not safe)) (##fx+ _j64611_ '1))
                     _flags64621_)
                    (let ((__tmp64891
                           (let () (declare (not safe)) (##fx+ _i64610_ '1)))
                          (__tmp64890
                           (let () (declare (not safe)) (##fx+ _j64611_ '3))))
                      (declare (not safe))
                      (_loop64608_ __tmp64891 __tmp64890)))
                  '#!void))
            (if _metaclass64598_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64598_
                   _type-id64554_
                   _type-name64555_
                   _type-flags64605_
                   _type-super64556_
                   _field-info64586_
                   _precedence-list64557_
                   _slot-vector64558_
                   _slot-table64561_
                   _properties64559_
                   _constructor64560_
                   _methods64562_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64554_
                   _type-name64555_
                   _type-flags64605_
                   _type-super64556_
                   _field-info64586_
                   _precedence-list64557_
                   _slot-vector64558_
                   _slot-table64561_
                   _properties64559_
                   _constructor64560_
                   _methods64562_)))))))
    (define class-type-id
      (lambda (_klass64552_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64552_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64550_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64550_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64547_ _val64548_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64547_ _val64548_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64542_ _val64544_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64542_
           _val64544_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64540_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64540_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64538_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64538_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64535_ _val64536_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64535_ _val64536_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64530_ _val64532_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64530_
           _val64532_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64528_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64528_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64526_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64526_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64523_ _val64524_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64523_ _val64524_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64518_ _val64520_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64518_
           _val64520_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64516_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64516_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64514_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64514_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64511_ _val64512_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64511_ _val64512_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64506_ _val64508_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64506_
           _val64508_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64504_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64504_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64502_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64502_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64499_ _val64500_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64499_ _val64500_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64494_ _val64496_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64494_
           _val64496_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64492_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64492_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64490_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64490_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64487_ _val64488_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64487_
           _val64488_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64482_ _val64484_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64482_
           _val64484_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64480_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64480_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64478_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64478_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64475_ _val64476_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64475_
           _val64476_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64470_ _val64472_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64470_
           _val64472_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64468_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64468_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64466_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64466_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64463_ _val64464_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64463_ _val64464_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64458_ _val64460_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64458_
           _val64460_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64456_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64456_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64454_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64454_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64451_ _val64452_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64451_ _val64452_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64446_ _val64448_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64446_
           _val64448_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64444_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64444_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64442_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64442_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64439_ _val64440_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64439_
           _val64440_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64434_ _val64436_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64434_
           _val64436_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64432_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64432_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64430_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64430_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64427_ _val64428_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64427_ _val64428_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64422_ _val64424_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64422_
           _val64424_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64420_)
        (cdr (vector->list (##structure-ref _klass64420_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64418_)
        (let ((__tmp64892
               (let ((__tmp64893
                      (##structure-ref _klass64418_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64893))))
          (declare (not safe))
          (##fx- __tmp64892 '1))))
    (define class-type-seal!
      (lambda (_klass64416_)
        (let ((__tmp64894
               (let ((__tmp64895
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64416_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64895))))
          (declare (not safe))
          (##structure-set!
           _klass64416_
           __tmp64894
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64414_)
        (let ((__tmp64896
               (let ((__tmp64897
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64414_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64897))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64414_
           __tmp64896
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64405_ _maybe-super-struct64406_)
        (let ((_maybe-super-struct-id64408_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64406_))))
          (let _lp64410_ ((_super-struct64412_ _maybe-sub-struct64405_))
            (if (let () (declare (not safe)) (not _super-struct64412_))
                '#f
                (if (let ((__tmp64899
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64412_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64408_ __tmp64899))
                    '#t
                    (let ((__tmp64898
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64412_))))
                      (declare (not safe))
                      (_lp64410_ __tmp64898))))))))
    (define base-struct/1
      (lambda (_klass64403_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64403_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64403_))
                _klass64403_
                (let () (declare (not safe)) (##type-super _klass64403_)))
            (if (let () (declare (not safe)) (not _klass64403_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64403_))))))
    (define base-struct/2
      (lambda (_klass164391_ _klass264392_)
        (let ((_s164394_
               (let () (declare (not safe)) (base-struct/1 _klass164391_)))
              (_s264395_
               (let () (declare (not safe)) (base-struct/1 _klass264392_))))
          (if (or (let () (declare (not safe)) (not _s164394_))
                  (and _s264395_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164394_ _s264395_))))
              _s264395_
              (if (or (let () (declare (not safe)) (not _s264395_))
                      (and _s164394_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264395_ _s164394_))))
                  _s164394_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164391_
                           _klass264392_
                           _s164394_
                           _s264395_)))))))
    (define base-struct/list
      (lambda (_all-supers64275_)
        (let* ((_all-supers6427664301_ _all-supers64275_)
               (_E6428164305_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6427664301_)))))
          (let ((_K6429964388_ (lambda () '#f))
                (_K6429664374_
                 (lambda (_x64372_)
                   (let () (declare (not safe)) (base-struct/1 _x64372_))))
                (_K6429164351_
                 (lambda (_y64348_ _x64349_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64349_ _y64348_))))
                (_K6428264312_
                 (lambda (_y64309_ _x64310_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64310_ _y64309_)))))
            (let* ((___match6485064851_
                    (lambda (_hd6428364315_ _tl6428464317_)
                      (let ((_x64320_ _hd6428364315_))
                        (letrec ((_splice-rest6428664322_
                                  (lambda (_rest6429064329_ _y64331_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6429064329_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6428264312_ _y64331_ _x64320_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6428164305_)))))
                                 (_splice-try6428864324_
                                  (lambda (_hd6428964333_
                                           _rest6429064335_
                                           _y6428564336_)
                                    (let ((_y64339_ _hd6428964333_))
                                      (let ((__tmp64901
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6429064335_)))
                                            (__tmp64900
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64339_ _y6428564336_))))
                                        (declare (not safe))
                                        (_splice-loop6428764326_
                                         __tmp64901
                                         __tmp64900)))))
                                 (_splice-loop6428764326_
                                  (lambda (_rest6429064341_ _y6428564342_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6429064341_))
                                        (let ((__tmp64903
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6429064341_))))
                                          (declare (not safe))
                                          (_splice-try6428864324_
                                           __tmp64903
                                           _rest6429064341_
                                           _y6428564342_))
                                        (let ((__tmp64902
                                               (reverse _y6428564342_)))
                                          (declare (not safe))
                                          (_splice-rest6428664322_
                                           _rest6429064341_
                                           __tmp64902))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6428764326_ _tl6428464317_ '()))))))
                   (_try-match6427864384_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6427664301_))
                          (let ((_tl6429864379_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6427664301_)))
                                (_hd6429764377_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6427664301_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6429864379_))
                                (let ((_x64382_ _hd6429764377_))
                                  (declare (not safe))
                                  (base-struct/1 _x64382_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6429864379_))
                                    (let ((_tl6429564363_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6429864379_)))
                                          (_hd6429464361_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6429864379_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6429564363_))
                                          (let ((_x64359_ _hd6429764377_)
                                                (_y64366_ _hd6429464361_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6429164351_
                                               _y64366_
                                               _x64359_)))
                                          (___match6485064851_
                                           _hd6429764377_
                                           _tl6429864379_)))
                                    (___match6485064851_
                                     _hd6429764377_
                                     _tl6429864379_))))
                          (let () (declare (not safe)) (_E6428164305_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6427664301_))
                  (let () (declare (not safe)) (_K6429964388_))
                  (let () (declare (not safe)) (_try-match6427864384_))))))))
    (define base-struct
      (lambda _all-supers64273_
        (let () (declare (not safe)) (base-struct/list _all-supers64273_))))
    (define find-super-constructor
      (lambda (_super64225_)
        (let _lp64227_ ((_rest64229_ _super64225_) (_constructor64230_ '#f))
          (let* ((_rest6423164239_ _rest64229_)
                 (_else6423364247_ (lambda () _constructor64230_))
                 (_K6423564261_
                  (lambda (_rest64250_ _hd64251_)
                    (let ((_$e64253_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd64251_
                              '10
                              class::t
                              '#f))))
                      (if _$e64253_
                          ((lambda (_xconstructor64256_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor64230_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor64230_
                                            _xconstructor64256_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp64227_ _rest64250_ _xconstructor64256_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor64230_
                                          _xconstructor64256_))))
                           _$e64253_)
                          (let ()
                            (declare (not safe))
                            (_lp64227_ _rest64250_ _constructor64230_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6423164239_))
                (let ((_hd6423664264_
                       (let () (declare (not safe)) (##car _rest6423164239_)))
                      (_tl6423764266_
                       (let () (declare (not safe)) (##cdr _rest6423164239_))))
                  (let* ((_hd64269_ _hd6423664264_)
                         (_rest64271_ _tl6423764266_))
                    (declare (not safe))
                    (_K6423564261_ _rest64271_ _hd64269_)))
                (let () (declare (not safe)) (_else6423364247_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list64201_ _direct-slots64202_)
        (let* ((_next-slot64204_ '1)
               (_slot-table64206_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots64208_ '(__class))
               (_process-slot64212_
                (lambda (_slot64210_)
                  (if (let () (declare (not safe)) (symbol? _slot64210_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot64210_)))
                  (if (let ((__tmp64905
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table64206_
                                _slot64210_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64905 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64206_
                           _slot64210_
                           _next-slot64204_))
                        (let ((__tmp64904 (symbol->keyword _slot64210_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64206_
                           __tmp64904
                           _next-slot64204_))
                        (set! _r-slots64208_
                              (let ()
                                (declare (not safe))
                                (cons _slot64210_ _r-slots64208_)))
                        (set! _next-slot64204_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot64204_ '1))))
                      '#!void)))
               (_process-slots64218_
                (lambda (_g6421364215_)
                  (for-each _process-slot64212_ _g6421364215_))))
          (for-each
           (lambda (_mixin64221_)
             (let ((__tmp64906
                    (let ((__tmp64907
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin64221_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64907 '()))))
               (declare (not safe))
               (_process-slots64218_ __tmp64906)))
           (reverse _class-precedence-list64201_))
          (let ()
            (declare (not safe))
            (_process-slots64218_ _direct-slots64202_))
          (let ((_slot-vector64223_ (list->vector (reverse _r-slots64208_))))
            (values _slot-vector64223_ _slot-table64206_)))))
    (define make-class-type
      (lambda (_id64163_
               _name64164_
               _direct-supers64165_
               _direct-slots64166_
               _properties64167_
               _constructor64168_)
        (let ((_$e64173_
               (let ((__tmp64908
                      (lambda (_$obj64170_)
                        (let ((__tmp64909
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj64170_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64909)))))
                 (declare (not safe))
                 (find __tmp64908 _direct-supers64165_))))
          (if _$e64173_
              ((lambda (_g6417564177_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6417564177_)))
               _$e64173_)
              (let ((_$e64180_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers64165_))))
                (if _$e64180_
                    ((lambda (_g6418264184_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6418264184_)))
                     _$e64180_)
                    '#!void))))
        (let ((_g64910_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers64165_))))
          (begin
            (let ((_g64911_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64910_) (##vector-length _g64910_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64911_ 2)))
                  (error "Context expects 2 values" _g64911_)))
            (let ((_precedence-list64187_
                   (let () (declare (not safe)) (##vector-ref _g64910_ 0)))
                  (_struct-super64188_
                   (let () (declare (not safe)) (##vector-ref _g64910_ 1))))
              (let ((_g64912_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list64187_
                        _direct-slots64166_))))
                (begin
                  (let ((_g64913_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64912_)
                               (##vector-length _g64912_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64913_ 2)))
                        (error "Context expects 2 values" _g64913_)))
                  (let ((_slot-vector64190_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64912_ 0)))
                        (_slot-table64191_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64912_ 1))))
                    (let* ((_properties64193_
                            (let ((__tmp64916
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots64166_)))
                                  (__tmp64914
                                   (let ((__tmp64915
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers64165_))))
                                     (declare (not safe))
                                     (cons __tmp64915 _properties64167_))))
                              (declare (not safe))
                              (cons __tmp64916 __tmp64914)))
                           (_constructor*64198_
                            (let ((_$e64195_ _constructor64168_))
                              (if _$e64195_
                                  _$e64195_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers64165_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id64163_
                         _name64164_
                         _struct-super64188_
                         _precedence-list64187_
                         _slot-vector64190_
                         _properties64193_
                         _constructor*64198_
                         _slot-table64191_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass64161_)
        (let ((__tmp64917
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64161_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass64161_ __tmp64917))))
    (define compute-precedence-list
      (lambda (_direct-supers64159_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers64159_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass64143_)
        (let ((_tid64145_
               (let () (declare (not safe)) (##type-id _klass64143_))))
          (if (let () (declare (not safe)) (class-type-final? _klass64143_))
              (lambda (_g6414664148_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6414664148_ _tid64145_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass64143_))
                  (lambda (_g6415064152_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6415064152_ _tid64145_)))
                  (lambda (_g6415464156_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass64143_ _g6415464156_))))))))
    (define if-class-slot-field
      (lambda (_klass64132_
               _slot64133_
               _if-final64134_
               _if-struct64135_
               _if-struct-field64136_
               _if-class-slot64137_)
        (let ((_field64139_
               (let ((__tmp64918
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass64132_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64918 _slot64133_ '#f))))
          (if (let () (declare (not safe)) (not _field64139_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass64132_
                       'slot:
                       _slot64133_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass64132_))
                  (_if-final64134_ _klass64132_ _slot64133_ _field64139_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass64132_))
                      (_if-struct64135_ _klass64132_ _slot64133_ _field64139_)
                      (if (let ((_strukt64141_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass64132_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt64141_
                                    'gerbil#class::t))
                                 (let ((__tmp64919
                                        (let ((__tmp64920
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt64141_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64920))))
                                   (declare (not safe))
                                   (##fx< _field64139_ __tmp64919))))
                          (_if-struct-field64136_
                           _klass64132_
                           _slot64133_
                           _field64139_)
                          (_if-class-slot64137_
                           _klass64132_
                           _slot64133_
                           _field64139_))))))))
    (define make-class-slot-accessor
      (lambda (_klass64129_ _slot64130_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64129_
           _slot64130_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass64126_ _slot64127_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64126_
           _slot64127_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass64123_ _slot64124_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64123_
           _slot64124_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass64120_ _slot64121_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass64120_
           _slot64121_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object64104_ _class64105_ _slot64106_)
        (apply error
               '"not an instance"
               'object:
               _object64104_
               'class:
               _class64105_
               (if _slot64106_
                   (let ((__tmp64921
                          (let ()
                            (declare (not safe))
                            (cons _slot64106_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64921))
                   '()))))
    (define not-an-instance__0
      (lambda (_object64111_ _class64112_)
        (let ((_slot64114_ '#f))
          (declare (not safe))
          (not-an-instance__% _object64111_ _class64112_ _slot64114_))))
    (define not-an-instance
      (lambda _g64923_
        (let ((_g64922_ (let () (declare (not safe)) (##length _g64923_))))
          (cond ((let () (declare (not safe)) (##fx= _g64922_ 2))
                 (apply (lambda (_object64111_ _class64112_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object64111_ _class64112_)))
                        _g64923_))
                ((let () (declare (not safe)) (##fx= _g64922_ 3))
                 (apply (lambda (_object64116_ _class64117_ _slot64118_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object64116_
                             _class64117_
                             _slot64118_)))
                        _g64923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64923_))))))
    (define make-final-slot-accessor
      (lambda (_klass64097_ _slot64098_ _field64099_)
        (lambda (_obj64101_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj64101_
             _field64099_
             _klass64097_
             _slot64098_)))))
    (define make-final-slot-mutator
      (lambda (_klass64090_ _slot64091_ _field64092_)
        (lambda (_obj64094_ _val64095_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj64094_
             _val64095_
             _field64092_
             _klass64090_
             _slot64091_)))))
    (define make-struct-slot-accessor
      (lambda (_klass64084_ _slot64085_ _field64086_)
        (lambda (_obj64088_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj64088_
             _field64086_
             _klass64084_
             _slot64085_)))))
    (define make-struct-slot-mutator
      (lambda (_klass64077_ _slot64078_ _field64079_)
        (lambda (_obj64081_ _val64082_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj64081_
             _val64082_
             _field64079_
             _klass64077_
             _slot64078_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass64071_ _slot64072_ _field64073_)
        (lambda (_obj64075_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj64075_
             _field64073_
             _klass64071_
             _slot64072_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass64064_ _slot64065_ _field64066_)
        (lambda (_obj64068_ _val64069_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj64068_
             _val64069_
             _field64066_
             _klass64064_
             _slot64065_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass64058_ _slot64059_ _field64060_)
        (lambda (_obj64062_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64058_ _obj64062_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64062_ _field64060_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64062_ _klass64058_ _slot64059_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64051_ _slot64052_ _field64053_)
        (lambda (_obj64055_ _val64056_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64051_ _obj64055_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64055_ _field64053_ _val64056_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64055_ _klass64051_ _slot64052_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64045_ _slot64046_ _field64047_)
        (lambda (_obj64049_)
          (if (let ((__tmp64924
                     (let () (declare (not safe)) (##type-id _klass64045_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64049_ __tmp64924))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64049_ _field64047_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64045_ _obj64049_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64049_ _slot64046_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64049_
                     _klass64045_
                     _slot64046_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64038_ _slot64039_ _field64040_)
        (lambda (_obj64042_ _val64043_)
          (if (let ((__tmp64925
                     (let () (declare (not safe)) (##type-id _klass64038_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64042_ __tmp64925))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64042_ _field64040_ _val64043_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64038_ _obj64042_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64042_ _slot64039_ _val64043_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64042_
                     _klass64038_
                     _slot64039_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64032_ _slot64033_ _field64034_)
        (lambda (_obj64036_)
          (if (let ((__tmp64926
                     (let () (declare (not safe)) (##type-id _klass64032_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64036_ __tmp64926))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64036_ _field64034_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64036_ _slot64033_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64025_ _slot64026_ _field64027_)
        (lambda (_obj64029_ _val64030_)
          (if (let ((__tmp64927
                     (let () (declare (not safe)) (##type-id _klass64025_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64029_ __tmp64927))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64029_ _field64027_ _val64030_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64029_ _slot64026_ _val64030_))))))
    (define class-slot-offset
      (lambda (_klass64022_ _slot64023_)
        (let ((__tmp64928
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64022_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64928 _slot64023_ '#f))))
    (define class-slot-ref
      (lambda (_klass64016_ _obj64017_ _slot64018_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64016_ _obj64017_))
            (let ((_off64020_
                   (let ((__tmp64929 (object-type _obj64017_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64929 _slot64018_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64017_
               _off64020_
               _klass64016_
               _slot64018_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64017_ _klass64016_)))))
    (define class-slot-set!
      (lambda (_klass64009_ _obj64010_ _slot64011_ _val64012_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64009_ _obj64010_))
            (let ((_off64014_
                   (let ((__tmp64930 (object-type _obj64010_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64930 _slot64011_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64010_
               _val64012_
               _off64014_
               _klass64009_
               _slot64011_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64010_ _klass64009_)))))
    (define unchecked-field-ref
      (lambda (_obj64006_ _off64007_)
        (let ((__tmp64931
               (let () (declare (not safe)) (##structure-type _obj64006_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64006_ _off64007_ __tmp64931 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64002_ _off64003_ _val64004_)
        (let ((__tmp64932
               (let () (declare (not safe)) (##structure-type _obj64002_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64002_
           _val64004_
           _off64003_
           __tmp64932
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63999_ _slot64000_)
        (let ((__tmp64933
               (let ((__tmp64934
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63999_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64934 _slot64000_))))
          (declare (not safe))
          (unchecked-field-ref _obj63999_ __tmp64933))))
    (define unchecked-slot-set!
      (lambda (_obj63995_ _slot63996_ _val63997_)
        (let ((__tmp64935
               (let ((__tmp64936
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63995_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64936 _slot63996_))))
          (declare (not safe))
          (unchecked-field-set! _obj63995_ __tmp64935 _val63997_))))
    (define slot-ref__%
      (lambda (_obj63971_ _slot63972_ _E63973_)
        (if (object? _obj63971_)
            (let* ((_klass63975_ (object-type _obj63971_))
                   (_$e63978_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63975_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63975_ _slot63972_))
                        '#f)))
              (if _$e63978_
                  ((lambda (_off63981_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63971_ _off63981_)))
                   _$e63978_)
                  (_E63973_ _obj63971_ _slot63972_)))
            (_E63973_ _obj63971_ _slot63972_))))
    (define slot-ref__0
      (lambda (_obj63986_ _slot63987_)
        (let ((_E63989_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63986_ _slot63987_ _E63989_))))
    (define slot-ref
      (lambda _g64938_
        (let ((_g64937_ (let () (declare (not safe)) (##length _g64938_))))
          (cond ((let () (declare (not safe)) (##fx= _g64937_ 2))
                 (apply (lambda (_obj63986_ _slot63987_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63986_ _slot63987_)))
                        _g64938_))
                ((let () (declare (not safe)) (##fx= _g64937_ 3))
                 (apply (lambda (_obj63991_ _slot63992_ _E63993_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63991_ _slot63992_ _E63993_)))
                        _g64938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64938_))))))
    (define slot-set!__%
      (lambda (_obj63943_ _slot63944_ _val63945_ _E63946_)
        (if (object? _obj63943_)
            (let* ((_klass63948_ (object-type _obj63943_))
                   (_$e63951_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63948_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63948_ _slot63944_))
                        '#f)))
              (if _$e63951_
                  ((lambda (_off63954_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63943_
                        _off63954_
                        _val63945_)))
                   _$e63951_)
                  (_E63946_ _obj63943_ _slot63944_)))
            (_E63946_ _obj63943_ _slot63944_))))
    (define slot-set!__0
      (lambda (_obj63959_ _slot63960_ _val63961_)
        (let ((_E63963_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63959_ _slot63960_ _val63961_ _E63963_))))
    (define slot-set!
      (lambda _g64940_
        (let ((_g64939_ (let () (declare (not safe)) (##length _g64940_))))
          (cond ((let () (declare (not safe)) (##fx= _g64939_ 3))
                 (apply (lambda (_obj63959_ _slot63960_ _val63961_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63959_ _slot63960_ _val63961_)))
                        _g64940_))
                ((let () (declare (not safe)) (##fx= _g64939_ 4))
                 (apply (lambda (_obj63965_ _slot63966_ _val63967_ _E63968_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63965_
                             _slot63966_
                             _val63967_
                             _E63968_)))
                        _g64940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64940_))))))
    (define __slot-error
      (lambda (_obj63939_ _slot63940_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63939_ 'slot: _slot63940_))))
    (define subclass?
      (lambda (_maybe-sub-class63929_ _maybe-super-class63930_)
        (let* ((_maybe-super-class-id63932_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63930_)))
               (_$e63934_
                (let ((__tmp64941
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63929_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63932_ __tmp64941))))
          (if _$e63934_
              _$e63934_
              (let ((__tmp64943
                     (lambda (_super-class63937_)
                       (let ((__tmp64944
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63937_))))
                         (declare (not safe))
                         (eq? __tmp64944 _maybe-super-class-id63932_))))
                    (__tmp64942
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63929_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64943 __tmp64942))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63926_ _obj63927_)
        (let ((__tmp64945
               (let () (declare (not safe)) (##type-id _klass63926_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63927_ __tmp64945))))
    (define struct-instance?
      (lambda (_klass63923_ _obj63924_)
        (let ((__tmp64946
               (let () (declare (not safe)) (##type-id _klass63923_))))
          (declare (not safe))
          (##structure-instance-of? _obj63924_ __tmp64946))))
    (define class-instance?
      (lambda (_klass63918_ _obj63919_)
        (if (object? _obj63919_)
            (let ((_type63921_ (object-type _obj63919_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63921_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63921_ _klass63918_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63913_ _k63914_)
        (let ((_obj63916_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63913_ _k63914_))))
          (let () (declare (not safe)) (object-fill! _obj63916_ '#f))
          _obj63916_)))
    (define object-fill!
      (lambda (_obj63906_ _fill63907_)
        (let _loop63909_ ((_i63911_
                           (let ((__tmp64948
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63906_))))
                             (declare (not safe))
                             (##fx- __tmp64948 '1))))
          (if (let () (declare (not safe)) (##fx> _i63911_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63906_
                   _fill63907_
                   _i63911_
                   '#f
                   '#f))
                (let ((__tmp64947
                       (let () (declare (not safe)) (##fx- _i63911_ '1))))
                  (declare (not safe))
                  (_loop63909_ __tmp64947)))
              _obj63906_))))
    (define new-instance
      (lambda (_klass63904_)
        (let ((__obj64852
               (let ((__tmp64949
                      (let ((__tmp64950
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63904_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64950))))
                 (declare (not safe))
                 (##make-structure _klass63904_ __tmp64949))))
          (let () (declare (not safe)) (object-fill! __obj64852 '#f))
          __obj64852)))
    (define make-instance
      (lambda (_klass63894_ . _args63895_)
        (let* ((_obj63897_
                (let () (declare (not safe)) (new-instance _klass63894_)))
               (_$e63899_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63894_ '10 class::t '#f))))
          (if _$e63899_
              ((lambda (_kons-id63902_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63894_
                    _kons-id63902_
                    _obj63897_
                    _args63895_)))
               _$e63899_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63894_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63894_
                     _obj63897_
                     _args63895_))
                  (if (let ((__tmp64955
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63894_))))
                        (declare (not safe))
                        (not __tmp64955))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63894_
                         _obj63897_
                         _args63895_))
                      (if (let ((__tmp64953
                                 (let ((__tmp64954
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63897_))))
                                   (declare (not safe))
                                   (##fx- __tmp64954 '1)))
                                (__tmp64952 (length _args63895_)))
                            (declare (not safe))
                            (##fx= __tmp64953 __tmp64952))
                          (apply ##structure _klass63894_ _args63895_)
                          (let ((__tmp64951
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63894_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63894_
                                   'slots:
                                   __tmp64951
                                   'args:
                                   _args63895_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63891_ . _args63892_)
        (if (let ((__tmp64957 (length _args63892_))
                  (__tmp64956
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63891_))))
              (declare (not safe))
              (##fx< __tmp64957 __tmp64956))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63891_ _args63892_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63891_
                     'args:
                     _args63892_)))))
    (define __struct-instance-init!
      (lambda (_obj63850_ _args63851_)
        (let _lp63853_ ((_k63855_ '1) (_rest63856_ _args63851_))
          (let* ((_rest6385763865_ _rest63856_)
                 (_else6385963873_ (lambda () _obj63850_))
                 (_K6386163879_
                  (lambda (_rest63876_ _hd63877_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63850_ _k63855_ _hd63877_))
                    (let ((__tmp64958
                           (let () (declare (not safe)) (##fx+ _k63855_ '1))))
                      (declare (not safe))
                      (_lp63853_ __tmp64958 _rest63876_)))))
            (if (let () (declare (not safe)) (##pair? _rest6385763865_))
                (let ((_hd6386263882_
                       (let () (declare (not safe)) (##car _rest6385763865_)))
                      (_tl6386363884_
                       (let () (declare (not safe)) (##cdr _rest6385763865_))))
                  (let* ((_hd63887_ _hd6386263882_)
                         (_rest63889_ _tl6386363884_))
                    (declare (not safe))
                    (_K6386163879_ _rest63889_ _hd63887_)))
                (let () (declare (not safe)) (_else6385963873_)))))))
    (define class-instance-init!
      (lambda (_obj63847_ . _args63848_)
        (let ((__tmp64959 (object-type _obj63847_)))
          (declare (not safe))
          (__class-instance-init! __tmp64959 _obj63847_ _args63848_))))
    (define __class-instance-init!
      (lambda (_klass63791_ _obj63792_ _args63793_)
        (let _lp63795_ ((_rest63797_ _args63793_))
          (let* ((_rest6379863808_ _rest63797_)
                 (_else6380063816_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63797_))
                        _obj63792_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63791_
                                 'rest:
                                 _rest63797_)))))
                 (_K6380263828_
                  (lambda (_rest63819_ _val63820_ _key63821_)
                    (let ((_$e63823_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63791_ _key63821_))))
                      (if _$e63823_
                          ((lambda (_off63826_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63792_
                                _off63826_
                                _val63820_))
                             (let ()
                               (declare (not safe))
                               (_lp63795_ _rest63819_)))
                           _$e63823_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63791_
                                   'slot:
                                   _key63821_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6379863808_))
                (let ((_hd6380363831_
                       (let () (declare (not safe)) (##car _rest6379863808_)))
                      (_tl6380463833_
                       (let () (declare (not safe)) (##cdr _rest6379863808_))))
                  (let ((_key63836_ _hd6380363831_))
                    (if (let () (declare (not safe)) (##pair? _tl6380463833_))
                        (let ((_hd6380563838_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6380463833_)))
                              (_tl6380663840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6380463833_))))
                          (let* ((_val63843_ _hd6380563838_)
                                 (_rest63845_ _tl6380663840_))
                            (declare (not safe))
                            (_K6380263828_ _rest63845_ _val63843_ _key63836_)))
                        (let () (declare (not safe)) (_else6380063816_)))))
                (let () (declare (not safe)) (_else6380063816_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63787_ _obj63788_ _args63789_)
        (apply call-method
               _klass63787_
               'instance-init!
               _obj63788_
               _args63789_)))
    (define constructor-init!
      (lambda (_klass63782_ _kons-id63783_ _obj63784_ . _args63785_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63782_
           _kons-id63783_
           _obj63784_
           _args63785_))))
    (define __constructor-init!
      (lambda (_klass63772_ _kons-id63773_ _obj63774_ _args63775_)
        (let ((_$e63777_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63772_ _obj63774_ _kons-id63773_))))
          (if _$e63777_
              ((lambda (_kons63780_)
                 (apply _kons63780_ _obj63774_ _args63775_)
                 _obj63774_)
               _$e63777_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63772_
                       'method:
                       _kons-id63773_))))))
    (define struct-copy
      (lambda (_struct63770_)
        (if (let () (declare (not safe)) (##structure? _struct63770_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63770_)))
        (let () (declare (not safe)) (##structure-copy _struct63770_))))
    (define struct->list
      (lambda (_obj63768_)
        (if (object? _obj63768_)
            (let () (declare (not safe)) (##vector->list _obj63768_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63768_)))))
    (define class->list
      (lambda (_obj63755_)
        (if (object? _obj63755_)
            (let ((_klass63757_ (object-type _obj63755_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63757_ 'gerbil#class::t))
                  (let ((_slot-vector63759_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63757_
                            '7
                            class::t
                            '#f))))
                    (let _loop63761_ ((_index63763_
                                       (let ((__tmp64965
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63759_))))
                                         (declare (not safe))
                                         (##fx- __tmp64965 '1)))
                                      (_plist63764_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63763_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63757_ _plist63764_))
                          (let ((_slot63766_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63759_
                                    _index63763_))))
                            (let ((__tmp64964
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63763_ '1)))
                                  (__tmp64960
                                   (let ((__tmp64963
                                          (symbol->keyword _slot63766_))
                                         (__tmp64961
                                          (let ((__tmp64962
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63755_
                                                    _index63763_))))
                                            (declare (not safe))
                                            (cons __tmp64962 _plist63764_))))
                                     (declare (not safe))
                                     (cons __tmp64963 __tmp64961))))
                              (declare (not safe))
                              (_loop63761_ __tmp64964 __tmp64960))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63755_
                           'class:
                           _klass63757_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63755_)))))
    (define call-method
      (lambda (_obj63746_ _id63747_ . _args63748_)
        (let ((_$e63750_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63746_ _id63747_))))
          (if _$e63750_
              ((lambda (_method63753_)
                 (apply _method63753_ _obj63746_ _args63748_))
               _$e63750_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63746_
                       'method:
                       _id63747_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63743_ _id63744_)
        (if (object? _obj63743_)
            (let ((__tmp64966 (object-type _obj63743_)))
              (declare (not safe))
              (find-method __tmp64966 _obj63743_ _id63744_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63737_ _id63738_)
        (let ((_$e63740_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63737_ _id63738_))))
          (if _$e63740_
              _$e63740_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63737_
                       'method:
                       _id63738_))))))
    (define bound-method-ref
      (lambda (_obj63727_ _id63728_)
        (let ((_$e63730_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63727_ _id63728_))))
          (if _$e63730_
              ((lambda (_method63733_)
                 (lambda _args63735_
                   (apply _method63733_ _obj63727_ _args63735_)))
               _$e63730_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63720_ _id63721_)
        (let ((_method63723_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63720_ _id63721_))))
          (lambda _args63725_ (apply _method63723_ _obj63720_ _args63725_)))))
    (define find-method
      (lambda (_klass63716_ _obj63717_ _id63718_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63716_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63716_ _obj63717_ _id63718_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63716_ _obj63717_ _id63718_)))))
    (define __find-method
      (lambda (_klass63709_ _obj63710_ _id63711_)
        (let ((_$e63713_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63709_ _obj63710_ _id63711_))))
          (if _$e63713_
              _$e63713_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63709_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63709_ _obj63710_ _id63711_)))))))
    (define class-find-method
      (lambda (_klass63705_ _obj63706_ _id63707_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63705_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63705_ _obj63706_ _id63707_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63697_ _obj63698_ _id63699_)
        (let ((__tmp64967
               (lambda (_g6370063702_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6370063702_ _obj63698_ _id63699_)))))
          (declare (not safe))
          (ormap1 __tmp64967 _mixins63697_))))
    (define builtin-find-method
      (lambda (_klass63690_ _obj63691_ _id63692_)
        (if (let () (declare (not safe)) (##type? _klass63690_))
            (let ((_$e63694_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63690_ _obj63691_ _id63692_))))
              (if _$e63694_
                  _$e63694_
                  (let ((__tmp64968
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63690_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64968 _obj63691_ _id63692_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63667_ _obj63668_ _id63669_)
        (letrec ((_metaclass-resolve-method63671_
                  (lambda ()
                    (let ((__method64853
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63667_ 'direct-method-ref))))
                      (if __method64853
                          (__method64853 _klass63667_ _obj63668_ _id63669_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63667_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63672_
                  (lambda ()
                    (let ((_method63687_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63671_))))
                      (let ((__tmp64970
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63667_
                                '11
                                class::t
                                '#f)))
                            (__tmp64969 (if _method63687_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64970 _id63669_ __tmp64969))
                      _method63687_))))
          (let ((_$e63674_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63667_ '11 class::t '#f))))
            (if _$e63674_
                ((lambda (_ht63677_)
                   (let ((_method63679_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63677_ _id63669_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63679_))
                         _method63679_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63667_))
                             (let ((_$e63681_ _method63679_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63681_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63671_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63681_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63672_)))))
                             '#f))))
                 _$e63674_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63667_))
                    (let ((_tab63684_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63667_
                         _tab63684_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63672_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63663_ _obj63664_ _id63665_)
        (let ((__tmp64971 (##structure-ref _klass63663_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64971 _obj63664_ _id63665_))))
    (define builtin-method-ref
      (lambda (_klass63654_ _obj63655_ _id63656_)
        (let ((_$e63658_
               (let ((__tmp64972
                      (let () (declare (not safe)) (##type-id _klass63654_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64972 '#f))))
          (if _$e63658_
              ((lambda (_mtab63661_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63661_ _id63656_ '#f)))
               _$e63658_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63620_ _id63621_ _proc63622_ _rebind?63623_)
        (letrec ((_bind!63625_
                  (lambda (_ht63638_)
                    (if (and (let () (declare (not safe)) (not _rebind?63623_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63638_ _id63621_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63620_
                                 'method:
                                 _id63621_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63638_
                           _id63621_
                           _proc63622_))))))
          (if (let () (declare (not safe)) (procedure? _proc63622_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63622_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63620_ 'gerbil#class::t))
              (let ((_ht63627_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63620_
                        '11
                        class::t
                        '#f))))
                (if _ht63627_
                    (let () (declare (not safe)) (_bind!63625_ _ht63627_))
                    (let ((_ht63629_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63620_
                         _ht63629_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63625_ _ht63629_)))))
              (if (let () (declare (not safe)) (##type? _klass63620_))
                  (let ((_ht63636_
                         (let ((_$e63631_
                                (let ((__tmp64973
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63620_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64973
                                   '#f))))
                           (if _$e63631_
                               _$e63631_
                               (let ((_ht63634_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64974
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63620_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64974
                                    _ht63634_))
                                 _ht63634_)))))
                    (declare (not safe))
                    (_bind!63625_ _ht63636_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63620_)))))))
    (define bind-method!__0
      (lambda (_klass63643_ _id63644_ _proc63645_)
        (let ((_rebind?63647_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63643_
           _id63644_
           _proc63645_
           _rebind?63647_))))
    (define bind-method!
      (lambda _g64976_
        (let ((_g64975_ (let () (declare (not safe)) (##length _g64976_))))
          (cond ((let () (declare (not safe)) (##fx= _g64975_ 3))
                 (apply (lambda (_klass63643_ _id63644_ _proc63645_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63643_
                             _id63644_
                             _proc63645_)))
                        _g64976_))
                ((let () (declare (not safe)) (##fx= _g64975_ 4))
                 (apply (lambda (_klass63649_
                                 _id63650_
                                 _proc63651_
                                 _rebind?63652_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63649_
                             _id63650_
                             _proc63651_
                             _rebind?63652_)))
                        _g64976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64976_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63600_ _seed63602_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63600_
           procedure-hash
           eq?
           _seed63602_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63608_ '#f) (_seed63610_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63608_ _seed63610_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63612_)
        (let ((_seed63614_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63612_ _seed63614_))))
    (define make-method-specializer-table
      (lambda _g64978_
        (let ((_g64977_ (let () (declare (not safe)) (##length _g64978_))))
          (cond ((let () (declare (not safe)) (##fx= _g64977_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64978_))
                ((let () (declare (not safe)) (##fx= _g64977_ 1))
                 (apply (lambda (_size-hint63612_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63612_)))
                        _g64978_))
                ((let () (declare (not safe)) (##fx= _g64977_ 2))
                 (apply (lambda (_size-hint63616_ _seed63617_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63616_
                             _seed63617_)))
                        _g64978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64978_))))))
    (define method-specializer-table-ref
      (lambda (_tab63557_ _key63558_ _default63559_)
        (let ((_table63561_
               (let () (declare (not safe)) (&raw-table-table _tab63557_)))
              (_seed63562_
               (let () (declare (not safe)) (&raw-table-seed _tab63557_))))
          (let* ((_h63564_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63558_))
                         _seed63562_))
                 (_size63567_ (vector-length _table63561_))
                 (_entries63570_ (fxquotient _size63567_ '2))
                 (_start63573_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63564_ _entries63570_)
                   '1)))
            (let _loop63577_ ((_probe63580_ _start63573_)
                              (_i63582_ '1)
                              (_deleted63584_ '#f))
              (let ((_k63587_ (vector-ref _table63561_ _probe63580_)))
                (if (let ((__tmp64985 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63587_ __tmp64985))
                    _default63559_
                    (if (let ((__tmp64984 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63587_ __tmp64984))
                        (let ((__tmp64983
                               (let ((_next-probe63590_
                                      (fx+ _start63573_
                                           _i63582_
                                           (fx* _i63582_ _i63582_))))
                                 (fxmodulo _next-probe63590_ _size63567_)))
                              (__tmp64982 (fx+ _i63582_ '1))
                              (__tmp64981
                               (let ((_$e63593_ _deleted63584_))
                                 (if _$e63593_ _$e63593_ _probe63580_))))
                          (declare (not safe))
                          (_loop63577_ __tmp64983 __tmp64982 __tmp64981))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63558_ _k63587_))
                            (vector-ref _table63561_ (fx+ _probe63580_ '1))
                            (let ((__tmp64980
                                   (let ((_next-probe63596_
                                          (fx+ _start63573_
                                               _i63582_
                                               (fx* _i63582_ _i63582_))))
                                     (fxmodulo _next-probe63596_ _size63567_)))
                                  (__tmp64979 (fx+ _i63582_ '1)))
                              (declare (not safe))
                              (_loop63577_
                               __tmp64980
                               __tmp64979
                               _deleted63584_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63553_ _key63554_ _value63555_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63553_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63553_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63553_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63553_
           _key63554_
           _value63555_))))
    (define __method-specializer-table-set!
      (lambda (_tab63508_ _key63509_ _value63510_)
        (let ((_table63513_
               (let () (declare (not safe)) (&raw-table-table _tab63508_)))
              (_seed63514_
               (let () (declare (not safe)) (&raw-table-seed _tab63508_))))
          (let* ((_h63516_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63509_))
                         _seed63514_))
                 (_size63519_ (vector-length _table63513_))
                 (_entries63522_ (fxquotient _size63519_ '2))
                 (_start63525_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63516_ _entries63522_)
                   '1)))
            (let _loop63529_ ((_probe63532_ _start63525_)
                              (_i63534_ '1)
                              (_deleted63536_ '#f))
              (let ((_k63539_ (vector-ref _table63513_ _probe63532_)))
                (if (let ((__tmp64995 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63539_ __tmp64995))
                    (if _deleted63536_
                        (begin
                          (vector-set! _table63513_ _deleted63536_ _key63509_)
                          (vector-set!
                           _table63513_
                           (fx+ _deleted63536_ '1)
                           _value63510_)
                          ((lambda ()
                             (let ((__tmp64994
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63508_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63508_
                                __tmp64994)))))
                        (begin
                          (vector-set! _table63513_ _probe63532_ _key63509_)
                          (vector-set!
                           _table63513_
                           (fx+ _probe63532_ '1)
                           _value63510_)
                          ((lambda ()
                             (let ((__tmp64992
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63508_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63508_ __tmp64992))
                             (let ((__tmp64993
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63508_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63508_
                                __tmp64993))))))
                    (if (let ((__tmp64991 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63539_ __tmp64991))
                        (let ((__tmp64990
                               (let ((_next-probe63544_
                                      (fx+ _start63525_
                                           _i63534_
                                           (fx* _i63534_ _i63534_))))
                                 (fxmodulo _next-probe63544_ _size63519_)))
                              (__tmp64989 (fx+ _i63534_ '1))
                              (__tmp64988
                               (let ((_$e63547_ _deleted63536_))
                                 (if _$e63547_ _$e63547_ _probe63532_))))
                          (declare (not safe))
                          (_loop63529_ __tmp64990 __tmp64989 __tmp64988))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63509_ _k63539_))
                            (begin
                              (vector-set!
                               _table63513_
                               _probe63532_
                               _key63509_)
                              (vector-set!
                               _table63513_
                               (fx+ _probe63532_ '1)
                               _value63510_))
                            (let ((__tmp64987
                                   (let ((_next-probe63550_
                                          (fx+ _start63525_
                                               _i63534_
                                               (fx* _i63534_ _i63534_))))
                                     (fxmodulo _next-probe63550_ _size63519_)))
                                  (__tmp64986 (fx+ _i63534_ '1)))
                              (declare (not safe))
                              (_loop63529_
                               __tmp64987
                               __tmp64986
                               _deleted63536_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63503_
               _key63504_
               _method-specializer-table-update!63505_
               _default63506_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63503_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63503_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63503_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63503_
           _key63504_
           _method-specializer-table-update!63505_
           _default63506_))))
    (define __method-specializer-table-update!
      (lambda (_tab63457_
               _key63458_
               _method-specializer-table-update!63459_
               _default63460_)
        (let ((_table63463_
               (let () (declare (not safe)) (&raw-table-table _tab63457_)))
              (_seed63464_
               (let () (declare (not safe)) (&raw-table-seed _tab63457_))))
          (let* ((_h63466_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63458_))
                         _seed63464_))
                 (_size63469_ (vector-length _table63463_))
                 (_entries63472_ (fxquotient _size63469_ '2))
                 (_start63475_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63466_ _entries63472_)
                   '1)))
            (let _loop63479_ ((_probe63482_ _start63475_)
                              (_i63484_ '1)
                              (_deleted63486_ '#f))
              (let ((_k63489_ (vector-ref _table63463_ _probe63482_)))
                (if (let ((__tmp65005 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63489_ __tmp65005))
                    (if _deleted63486_
                        (begin
                          (vector-set! _table63463_ _deleted63486_ _key63458_)
                          (vector-set!
                           _table63463_
                           (fx+ _deleted63486_ '1)
                           (_method-specializer-table-update!63459_
                            _default63460_))
                          ((lambda ()
                             (let ((__tmp65004
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63457_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63457_
                                __tmp65004)))))
                        (begin
                          (vector-set! _table63463_ _probe63482_ _key63458_)
                          (vector-set!
                           _table63463_
                           (fx+ _probe63482_ '1)
                           (_method-specializer-table-update!63459_
                            _default63460_))
                          ((lambda ()
                             (let ((__tmp65002
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63457_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63457_ __tmp65002))
                             (let ((__tmp65003
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63457_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63457_
                                __tmp65003))))))
                    (if (let ((__tmp65001 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63489_ __tmp65001))
                        (let ((__tmp65000
                               (let ((_next-probe63494_
                                      (fx+ _start63475_
                                           _i63484_
                                           (fx* _i63484_ _i63484_))))
                                 (fxmodulo _next-probe63494_ _size63469_)))
                              (__tmp64999 (fx+ _i63484_ '1))
                              (__tmp64998
                               (let ((_$e63497_ _deleted63486_))
                                 (if _$e63497_ _$e63497_ _probe63482_))))
                          (declare (not safe))
                          (_loop63479_ __tmp65000 __tmp64999 __tmp64998))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63458_ _k63489_))
                            (begin
                              (vector-set!
                               _table63463_
                               _probe63482_
                               _key63458_)
                              (vector-set!
                               _table63463_
                               (fx+ _probe63482_ '1)
                               (_method-specializer-table-update!63459_
                                (vector-ref
                                 _table63463_
                                 (fx+ _probe63482_ '1)))))
                            (let ((__tmp64997
                                   (let ((_next-probe63500_
                                          (fx+ _start63475_
                                               _i63484_
                                               (fx* _i63484_ _i63484_))))
                                     (fxmodulo _next-probe63500_ _size63469_)))
                                  (__tmp64996 (fx+ _i63484_ '1)))
                              (declare (not safe))
                              (_loop63479_
                               __tmp64997
                               __tmp64996
                               _deleted63486_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63416_ _key63418_)
        (let ((_table63421_
               (let () (declare (not safe)) (&raw-table-table _tab63416_)))
              (_seed63423_
               (let () (declare (not safe)) (&raw-table-seed _tab63416_))))
          (let* ((_h63426_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63418_))
                         _seed63423_))
                 (_size63429_ (vector-length _table63421_))
                 (_entries63432_ (fxquotient _size63429_ '2))
                 (_start63435_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63426_ _entries63432_)
                   '1)))
            (let _loop63439_ ((_probe63442_ _start63435_) (_i63444_ '1))
              (let ((_k63447_ (vector-ref _table63421_ _probe63442_)))
                (if (let ((__tmp65012 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63447_ __tmp65012))
                    '#!void
                    (if (let ((__tmp65011 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63447_ __tmp65011))
                        (let ((__tmp65010
                               (let ((_next-probe63450_
                                      (fx+ _start63435_
                                           _i63444_
                                           (fx* _i63444_ _i63444_))))
                                 (fxmodulo _next-probe63450_ _size63429_)))
                              (__tmp65009 (fx+ _i63444_ '1)))
                          (declare (not safe))
                          (_loop63439_ __tmp65010 __tmp65009))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63418_ _k63447_))
                            (begin
                              (vector-set!
                               _table63421_
                               _probe63442_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63421_
                               (fx+ _probe63442_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65008
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63416_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63416_
                                    __tmp65008)))))
                            (let ((__tmp65007
                                   (let ((_next-probe63454_
                                          (fx+ _start63435_
                                               _i63444_
                                               (fx* _i63444_ _i63444_))))
                                     (fxmodulo _next-probe63454_ _size63429_)))
                                  (__tmp65006 (fx+ _i63444_ '1)))
                              (declare (not safe))
                              (_loop63439_ __tmp65007 __tmp65006)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63407_ _specializer63408_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63412_ ()
            (if (let ((__tmp65013
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65013 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63412_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63407_
           _specializer63408_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63397_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63401_ ()
            (if (let ((__tmp65014
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65014 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63401_))))))
        (let ((_specializer63405_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63397_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63405_)))
    (define __class-specializer-hash-key
      (lambda (_klass63395_)
        (let ((__tmp65015
               (let () (declare (not safe)) (##type-id _klass63395_))))
          (declare (not safe))
          (symbolic-hash __tmp65015))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63376_ _seed63378_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63376_
           __class-specializer-hash-key
           eq?
           _seed63378_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63384_ '#f) (_seed63386_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63384_ _seed63386_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63388_)
        (let ((_seed63390_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63388_ _seed63390_))))
    (define make-class-specializer-table
      (lambda _g65017_
        (let ((_g65016_ (let () (declare (not safe)) (##length _g65017_))))
          (cond ((let () (declare (not safe)) (##fx= _g65016_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g65017_))
                ((let () (declare (not safe)) (##fx= _g65016_ 1))
                 (apply (lambda (_size-hint63388_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63388_)))
                        _g65017_))
                ((let () (declare (not safe)) (##fx= _g65016_ 2))
                 (apply (lambda (_size-hint63392_ _seed63393_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63392_
                             _seed63393_)))
                        _g65017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g65017_))))))
    (define class-specializer-table-ref
      (lambda (_tab63333_ _key63334_ _default63335_)
        (let ((_table63337_
               (let () (declare (not safe)) (&raw-table-table _tab63333_)))
              (_seed63338_
               (let () (declare (not safe)) (&raw-table-seed _tab63333_))))
          (let* ((_h63340_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63334_))
                         _seed63338_))
                 (_size63343_ (vector-length _table63337_))
                 (_entries63346_ (fxquotient _size63343_ '2))
                 (_start63349_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63340_ _entries63346_)
                   '1)))
            (let _loop63353_ ((_probe63356_ _start63349_)
                              (_i63358_ '1)
                              (_deleted63360_ '#f))
              (let ((_k63363_ (vector-ref _table63337_ _probe63356_)))
                (if (let ((__tmp65024 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63363_ __tmp65024))
                    _default63335_
                    (if (let ((__tmp65023 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63363_ __tmp65023))
                        (let ((__tmp65022
                               (let ((_next-probe63366_
                                      (fx+ _start63349_
                                           _i63358_
                                           (fx* _i63358_ _i63358_))))
                                 (fxmodulo _next-probe63366_ _size63343_)))
                              (__tmp65021 (fx+ _i63358_ '1))
                              (__tmp65020
                               (let ((_$e63369_ _deleted63360_))
                                 (if _$e63369_ _$e63369_ _probe63356_))))
                          (declare (not safe))
                          (_loop63353_ __tmp65022 __tmp65021 __tmp65020))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63334_ _k63363_))
                            (vector-ref _table63337_ (fx+ _probe63356_ '1))
                            (let ((__tmp65019
                                   (let ((_next-probe63372_
                                          (fx+ _start63349_
                                               _i63358_
                                               (fx* _i63358_ _i63358_))))
                                     (fxmodulo _next-probe63372_ _size63343_)))
                                  (__tmp65018 (fx+ _i63358_ '1)))
                              (declare (not safe))
                              (_loop63353_
                               __tmp65019
                               __tmp65018
                               _deleted63360_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63329_ _key63330_ _value63331_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63329_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63329_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63329_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63329_
           _key63330_
           _value63331_))))
    (define __class-specializer-table-set!
      (lambda (_tab63284_ _key63285_ _value63286_)
        (let ((_table63289_
               (let () (declare (not safe)) (&raw-table-table _tab63284_)))
              (_seed63290_
               (let () (declare (not safe)) (&raw-table-seed _tab63284_))))
          (let* ((_h63292_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63285_))
                         _seed63290_))
                 (_size63295_ (vector-length _table63289_))
                 (_entries63298_ (fxquotient _size63295_ '2))
                 (_start63301_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63292_ _entries63298_)
                   '1)))
            (let _loop63305_ ((_probe63308_ _start63301_)
                              (_i63310_ '1)
                              (_deleted63312_ '#f))
              (let ((_k63315_ (vector-ref _table63289_ _probe63308_)))
                (if (let ((__tmp65034 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63315_ __tmp65034))
                    (if _deleted63312_
                        (begin
                          (vector-set! _table63289_ _deleted63312_ _key63285_)
                          (vector-set!
                           _table63289_
                           (fx+ _deleted63312_ '1)
                           _value63286_)
                          ((lambda ()
                             (let ((__tmp65033
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63284_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63284_
                                __tmp65033)))))
                        (begin
                          (vector-set! _table63289_ _probe63308_ _key63285_)
                          (vector-set!
                           _table63289_
                           (fx+ _probe63308_ '1)
                           _value63286_)
                          ((lambda ()
                             (let ((__tmp65031
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63284_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63284_ __tmp65031))
                             (let ((__tmp65032
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63284_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63284_
                                __tmp65032))))))
                    (if (let ((__tmp65030 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63315_ __tmp65030))
                        (let ((__tmp65029
                               (let ((_next-probe63320_
                                      (fx+ _start63301_
                                           _i63310_
                                           (fx* _i63310_ _i63310_))))
                                 (fxmodulo _next-probe63320_ _size63295_)))
                              (__tmp65028 (fx+ _i63310_ '1))
                              (__tmp65027
                               (let ((_$e63323_ _deleted63312_))
                                 (if _$e63323_ _$e63323_ _probe63308_))))
                          (declare (not safe))
                          (_loop63305_ __tmp65029 __tmp65028 __tmp65027))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63285_ _k63315_))
                            (begin
                              (vector-set!
                               _table63289_
                               _probe63308_
                               _key63285_)
                              (vector-set!
                               _table63289_
                               (fx+ _probe63308_ '1)
                               _value63286_))
                            (let ((__tmp65026
                                   (let ((_next-probe63326_
                                          (fx+ _start63301_
                                               _i63310_
                                               (fx* _i63310_ _i63310_))))
                                     (fxmodulo _next-probe63326_ _size63295_)))
                                  (__tmp65025 (fx+ _i63310_ '1)))
                              (declare (not safe))
                              (_loop63305_
                               __tmp65026
                               __tmp65025
                               _deleted63312_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63279_
               _key63280_
               _class-specializer-table-update!63281_
               _default63282_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63279_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63279_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63279_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63279_
           _key63280_
           _class-specializer-table-update!63281_
           _default63282_))))
    (define __class-specializer-table-update!
      (lambda (_tab63233_
               _key63234_
               _class-specializer-table-update!63235_
               _default63236_)
        (let ((_table63239_
               (let () (declare (not safe)) (&raw-table-table _tab63233_)))
              (_seed63240_
               (let () (declare (not safe)) (&raw-table-seed _tab63233_))))
          (let* ((_h63242_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63234_))
                         _seed63240_))
                 (_size63245_ (vector-length _table63239_))
                 (_entries63248_ (fxquotient _size63245_ '2))
                 (_start63251_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63242_ _entries63248_)
                   '1)))
            (let _loop63255_ ((_probe63258_ _start63251_)
                              (_i63260_ '1)
                              (_deleted63262_ '#f))
              (let ((_k63265_ (vector-ref _table63239_ _probe63258_)))
                (if (let ((__tmp65044 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63265_ __tmp65044))
                    (if _deleted63262_
                        (begin
                          (vector-set! _table63239_ _deleted63262_ _key63234_)
                          (vector-set!
                           _table63239_
                           (fx+ _deleted63262_ '1)
                           (_class-specializer-table-update!63235_
                            _default63236_))
                          ((lambda ()
                             (let ((__tmp65043
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63233_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63233_
                                __tmp65043)))))
                        (begin
                          (vector-set! _table63239_ _probe63258_ _key63234_)
                          (vector-set!
                           _table63239_
                           (fx+ _probe63258_ '1)
                           (_class-specializer-table-update!63235_
                            _default63236_))
                          ((lambda ()
                             (let ((__tmp65041
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63233_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63233_ __tmp65041))
                             (let ((__tmp65042
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63233_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63233_
                                __tmp65042))))))
                    (if (let ((__tmp65040 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63265_ __tmp65040))
                        (let ((__tmp65039
                               (let ((_next-probe63270_
                                      (fx+ _start63251_
                                           _i63260_
                                           (fx* _i63260_ _i63260_))))
                                 (fxmodulo _next-probe63270_ _size63245_)))
                              (__tmp65038 (fx+ _i63260_ '1))
                              (__tmp65037
                               (let ((_$e63273_ _deleted63262_))
                                 (if _$e63273_ _$e63273_ _probe63258_))))
                          (declare (not safe))
                          (_loop63255_ __tmp65039 __tmp65038 __tmp65037))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63234_ _k63265_))
                            (begin
                              (vector-set!
                               _table63239_
                               _probe63258_
                               _key63234_)
                              (vector-set!
                               _table63239_
                               (fx+ _probe63258_ '1)
                               (_class-specializer-table-update!63235_
                                (vector-ref
                                 _table63239_
                                 (fx+ _probe63258_ '1)))))
                            (let ((__tmp65036
                                   (let ((_next-probe63276_
                                          (fx+ _start63251_
                                               _i63260_
                                               (fx* _i63260_ _i63260_))))
                                     (fxmodulo _next-probe63276_ _size63245_)))
                                  (__tmp65035 (fx+ _i63260_ '1)))
                              (declare (not safe))
                              (_loop63255_
                               __tmp65036
                               __tmp65035
                               _deleted63262_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab63192_ _key63194_)
        (let ((_table63197_
               (let () (declare (not safe)) (&raw-table-table _tab63192_)))
              (_seed63199_
               (let () (declare (not safe)) (&raw-table-seed _tab63192_))))
          (let* ((_h63202_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63194_))
                         _seed63199_))
                 (_size63205_ (vector-length _table63197_))
                 (_entries63208_ (fxquotient _size63205_ '2))
                 (_start63211_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63202_ _entries63208_)
                   '1)))
            (let _loop63215_ ((_probe63218_ _start63211_) (_i63220_ '1))
              (let ((_k63223_ (vector-ref _table63197_ _probe63218_)))
                (if (let ((__tmp65051 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63223_ __tmp65051))
                    '#!void
                    (if (let ((__tmp65050 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63223_ __tmp65050))
                        (let ((__tmp65049
                               (let ((_next-probe63226_
                                      (fx+ _start63211_
                                           _i63220_
                                           (fx* _i63220_ _i63220_))))
                                 (fxmodulo _next-probe63226_ _size63205_)))
                              (__tmp65048 (fx+ _i63220_ '1)))
                          (declare (not safe))
                          (_loop63215_ __tmp65049 __tmp65048))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63194_ _k63223_))
                            (begin
                              (vector-set!
                               _table63197_
                               _probe63218_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63197_
                               (fx+ _probe63218_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65047
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63192_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63192_
                                    __tmp65047)))))
                            (let ((__tmp65046
                                   (let ((_next-probe63230_
                                          (fx+ _start63211_
                                               _i63220_
                                               (fx* _i63220_ _i63220_))))
                                     (fxmodulo _next-probe63230_ _size63205_)))
                                  (__tmp65045 (fx+ _i63220_ '1)))
                              (declare (not safe))
                              (_loop63215_ __tmp65046 __tmp65045)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass63185_)
        (let ((_$e63187_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass63185_))))
          (if _$e63187_
              _$e63187_
              (let ((_method-table63190_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass63185_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass63185_ _method-table63190_))
                _method-table63190_)))))
    (define __lookup-class-specializer
      (lambda (_klass63175_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63179_ ()
            (if (let ((__tmp65052
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65052 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63179_))))))
        (let ((_method-table63183_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass63175_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table63183_)))
    (define __bind-class-specializer!
      (lambda (_klass63166_ _method-table63167_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63171_ ()
            (if (let ((__tmp65053
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65053 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63171_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass63166_
           _method-table63167_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass63151_ _method-table63152_ _method63153_ _proc63154_)
        (let ((_$e63156_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table63152_ _method63153_ '#f))))
          (if _$e63156_
              _$e63156_
              (let ((_$e63159_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc63154_))))
                (if _$e63159_
                    ((lambda (_specialize63162_)
                       (let ((_specialized-proc63164_
                              (_specialize63162_
                               _klass63151_
                               _method-table63152_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table63152_
                          _method63153_
                          _specialized-proc63164_)))
                     _$e63159_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table63152_
                       _method63153_
                       _proc63154_))))))))
    (define __specialize-class
      (lambda (_klass63078_)
        (if (let ((__tmp65059
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass63078_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp65059))
            (if (let () (declare (not safe)) (##type? _klass63078_))
                (let ((_method-table63080_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop63082_ ((_xklass63084_ _klass63078_))
                    (if _xklass63084_
                        (begin
                          (let ((_xmethod-table6308563087_
                                 (let ((__tmp65056
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass63084_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp65056
                                    '#f))))
                            (if _xmethod-table6308563087_
                                (let* ((_xmethod-table63090_
                                        _xmethod-table6308563087_)
                                       (__tmp65057
                                        (lambda (_g6309163094_ _g6309263096_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass63078_
                                             _method-table63080_
                                             _g6309163094_
                                             _g6309263096_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table63090_
                                   __tmp65057))
                                '#f))
                          (let ((__tmp65058
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass63084_))))
                            (declare (not safe))
                            (_loop63082_ __tmp65058)))
                        '#!void))
                  _method-table63080_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass63078_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass63078_))
                (let ((__method64854
                       (let ()
                         (declare (not safe))
                         (method-ref _klass63078_ 'specialize-class))))
                  (if __method64854
                      (__method64854 _klass63078_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass63078_
                               'specialize-class))))
                (if (let ((__tmp65055
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass63078_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp65055))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass63078_))
                    (let ((_method-table63099_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop63101_ ((_rest63103_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass63078_))))
                        (let* ((_rest6310463112_ _rest63103_)
                               (_else6310663120_
                                (lambda () _method-table63099_))
                               (_K6310863139_
                                (lambda (_rest63123_ _xklass63124_)
                                  (let ((_xmethod-table6312563127_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass63124_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6312563127_
                                        (let* ((_xmethod-table63130_
                                                _xmethod-table6312563127_)
                                               (__tmp65054
                                                (lambda (_g6313163134_
                                                         _g6313263136_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass63078_
                                                     _method-table63099_
                                                     _g6313163134_
                                                     _g6313263136_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table63130_
                                           __tmp65054))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop63101_ _rest63123_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6310463112_))
                              (let ((_hd6310963142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6310463112_)))
                                    (_tl6311063144_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6310463112_))))
                                (let* ((_xklass63147_ _hd6310963142_)
                                       (_rest63149_ _tl6311063144_))
                                  (declare (not safe))
                                  (_K6310863139_ _rest63149_ _xklass63147_)))
                              (let ()
                                (declare (not safe))
                                (_else6310663120_)))))))))))
    (define seal-class!
      (lambda (_klass63074_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63074_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass63074_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass63074_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass63074_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass63074_))
                      (let ((__method64855
                             (let ()
                               (declare (not safe))
                               (method-ref _klass63074_ 'seal-class!))))
                        (if __method64855
                            (__method64855 _klass63074_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass63074_
                                     'seal-class!))))
                      (if (let ((__tmp65060
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass63074_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp65060))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass63074_))
                          (let ((_method-table63076_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass63074_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass63074_
                             _method-table63076_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass63074_))))
            '#!void)))
    (define next-method
      (lambda (_subklass63023_ _obj63024_ _id63025_)
        (let ((_klass63027_ (object-type _obj63024_))
              (_type-id63028_
               (let () (declare (not safe)) (##type-id _subklass63023_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63027_ 'gerbil#class::t))
              (let _lp63030_ ((_rest63032_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass63027_))))
                (let* ((_rest6303363041_ _rest63032_)
                       (_else6303563049_ (lambda () '#f))
                       (_K6303763055_
                        (lambda (_rest63052_ _klass63053_)
                          (if (let ((__tmp65063
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass63053_))))
                                (declare (not safe))
                                (eq? _type-id63028_ __tmp65063))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest63052_
                                 _obj63024_
                                 _id63025_))
                              (let ()
                                (declare (not safe))
                                (_lp63030_ _rest63052_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6303363041_))
                      (let ((_hd6303863058_
                             (let ()
                               (declare (not safe))
                               (##car _rest6303363041_)))
                            (_tl6303963060_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6303363041_))))
                        (let* ((_klass63063_ _hd6303863058_)
                               (_rest63065_ _tl6303963060_))
                          (declare (not safe))
                          (_K6303763055_ _rest63065_ _klass63063_)))
                      (let () (declare (not safe)) (_else6303563049_)))))
              (if (let () (declare (not safe)) (##type? _klass63027_))
                  (let _lp63067_ ((_klass63069_ _klass63027_))
                    (if (let ((__tmp65062
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass63069_))))
                          (declare (not safe))
                          (eq? _type-id63028_ __tmp65062))
                        (let ((__tmp65061
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass63069_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp65061
                           _obj63024_
                           _id63025_))
                        (let ((_$e63071_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass63069_))))
                          (if _$e63071_
                              (let ()
                                (declare (not safe))
                                (_lp63067_ _$e63071_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass63013_ _obj63014_ _id63015_ . _args63016_)
        (let ((_$e63018_
               (let ()
                 (declare (not safe))
                 (next-method _subklass63013_ _obj63014_ _id63015_))))
          (if _$e63018_
              ((lambda (_methodf63021_)
                 (apply _methodf63021_ _obj63014_ _args63016_))
               _$e63018_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj63014_
                       'method:
                       _id63015_))))))
    (define write-style (lambda (_we63011_) (macro-writeenv-style _we63011_)))
    (define write-object
      (lambda (_we63003_ _obj63004_)
        (let ((_$e63006_
               (let () (declare (not safe)) (method-ref _obj63004_ ':wr))))
          (if _$e63006_
              ((lambda (_method63009_) (_method63009_ _obj63004_ _we63003_))
               _$e63006_)
              (let ()
                (declare (not safe))
                (##default-wr _we63003_ _obj63004_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
